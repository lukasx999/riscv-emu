#pragma once

#include <filesystem>
#include <vector>
#include <numeric>
#include <array>
#include <cassert>

#include <unistd.h>
#include <fcntl.h>
#include <sys/socket.h>
#include <sys/un.h>
#include <sys/types.h>

#include "util.hh"
#include "machine.hh"

namespace fs = std::filesystem;

struct GDBException : std::runtime_error {
    explicit GDBException(const char* msg) : std::runtime_error(msg) { }
};

class GDBServer {
    static constexpr auto m_socket_name = "gdbserver.sock";
    int m_sock_fd = -1;
    Machine& m_machine;
    // enum class SocketType { Tcp, Unix } m_type;

public:
    GDBServer(Machine& machine) : m_machine(machine) {
        auto socket_path = get_socket_path();

        if (fs::exists(socket_path))
            fs::remove(socket_path);

        // m_sock_fd = create_socket(socket_path.c_str());
        m_sock_fd = create_socket_tcp(1234);
    }

    [[nodiscard]] static constexpr fs::path get_socket_path() {
        // TODO: util.hh get_temp_dir() unify temp dir creation
        auto tmp_dir = fs::temp_directory_path();
        auto path = tmp_dir / global_data.program_name;
        fs::create_directory(path);
        auto socket_path = path / m_socket_name;
        return socket_path;
    }

    void listen() {

        int err = ::listen(m_sock_fd, 1);
        if (err == -1)
            throw GDBException(strerror(errno));

        int other_fd = accept(m_sock_fd, nullptr, nullptr);
        if (other_fd == -1)
            throw GDBException(strerror(errno));

        read_incoming_packets(other_fd);
    }

private:
    using Checksum = uint8_t;

    static void send_wrapper(int fd, std::string msg) {
        int err = send(fd, msg.c_str(), msg.size(), 0);
        if (err == -1)
            throw GDBException("failed to write to socket");
    }

    [[nodiscard]] static constexpr bool is_field_delim(char c) {
        return c == ':' || c == ';' || c == ',';
    }

    [[nodiscard]] static constexpr
    Checksum calculate_checksum(std::string_view packet) {
        return std::accumulate(packet.begin(), packet.end(), 0) % 256;
    }

    [[nodiscard]]
    auto get_packet_fields(std::string_view packet) -> std::vector<std::string> {

        std::vector<std::string> fields;

        std::string current_field;
        for (char c : packet) {

            if (is_field_delim(c)) {
                fields.push_back(current_field);
                current_field.clear();
            } else {
                current_field.push_back(c);
            }

        }
        fields.push_back(std::move(current_field));

        return fields;
    }

    void send_response(int fd, std::vector<std::string> fields) {
        log("response: {}", fields);

        std::string final;
        for (auto& str : fields) {
            final += str;
            final.push_back(';');
        }

        if (!fields.empty()) {
            assert(final.back() == ';');
            final.pop_back();
        }

        auto checksum = calculate_checksum(final);
        auto packet = std::format("${}#{:02x}", final, checksum);
        send_wrapper(fd, packet);
    }

    [[nodiscard]] static constexpr std::string encode_number(uint64_t value) {

        auto encoded_value = std::format("{:x}", value);
        bool is_odd = encoded_value.size() % 2 != 0;

        // each byte must be encoded in two hex digits
        if (is_odd)
            encoded_value.insert(encoded_value.begin(), '0');

        return encoded_value;
    }

    [[nodiscard]] static constexpr uint8_t parse_hex_digits(char a, char b) {
        auto checksum_str = std::format("{}{}", a, b);
        uint8_t value;
        std::from_chars(checksum_str.data(), checksum_str.data()+checksum_str.size(), value, 16);
        return value;
    }

    [[nodiscard]] Checksum receive_and_parse_checksum(int other_fd) const {
        std::array<char, 2> checksum_raw;
        int err = recv(other_fd, checksum_raw.data(), checksum_raw.size(), 0);
        assert(err != -1);

        return parse_hex_digits(checksum_raw[0], checksum_raw[1]);
    }

    static void send_ack(int fd) {
        log("sent ACK");
        send_wrapper(fd, "+");
    }

    static void send_nack(int fd) {
        log("sent NACK");
        send_wrapper(fd, "-");
    }

    void handle_packet(std::vector<std::string> fields, int other_fd);
    void read_incoming_packets(int other_fd);
    static void bind_socket(int sock_fd, const struct sockaddr* addr);
    [[nodiscard]] static int create_socket_unix(const char* socket_path);
    [[nodiscard]] static int create_socket_tcp(uint16_t port);

};
