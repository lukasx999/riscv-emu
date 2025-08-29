#pragma once

#include <print>
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

namespace fs = std::filesystem;

struct GDBException : std::runtime_error {
    explicit GDBException(const char* msg) : std::runtime_error(msg) { }
};

class GDBServer {
    static constexpr auto m_socket_name = "gdbserver.sock";
    int m_sock_fd = -1;

public:
    GDBServer() {
        auto socket_path = get_socket_path();

        if (fs::exists(socket_path))
            fs::remove(socket_path);

        m_sock_fd = create_socket(socket_path.c_str());
    }

    [[nodiscard]] fs::path get_socket_path() const {
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

    void send_but_better(int fd, std::string msg) {
        int err = send(fd, msg.c_str(), msg.size(), 0);
        assert(err != -1);
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
        send_but_better(fd, packet);
    }

    void handle_packet(std::vector<std::string> fields, int other_fd) {

        auto cmd = fields.front();

        if (cmd == "qSupported") {
            send_response(other_fd, { "PacketSize=2001f", });

        } else if (cmd == "vCont?") {
            send_response(other_fd, { "vCont", "c", "s", "t", });

        } else if (cmd == "qfThreadInfo") {
            send_response(other_fd, { "m 1" });

        } else if (cmd == "qTStatus") {
            send_response(other_fd, { "T0", "tnotrun:0" });

        } else if (cmd == "qTfV") {
            // TODO: what the hell are trace variables, and are they mandatory?
            send_response(other_fd, { "1:0:1:41" });

        } else if (cmd == "qTsV") {
            send_response(other_fd, { "l" });

        } else if (cmd == "qsThreadInfo") {
            send_response(other_fd, { "l" });

        } else if (cmd[0] == 'H') {
            send_response(other_fd, { "OK" });

        } else if (cmd == "qC") {
            send_response(other_fd, { "QC 1" });

        } else if (cmd == "qOffsets") {
            send_response(other_fd, { "TextSeg=000" });

        } else if (cmd == "qAttached") {
            send_response(other_fd, { "0" });

        } else if (cmd == "?") {
            // send_response(other_fd, { "S 11" }); // sigstop
            // send_response(other_fd, {});
            // "$T0506:0*,;07:f0e1f*"7f0* ;10:400bfef7ff7f0* ;thread:p4272.4272;core:d;#ad"
            // send_response(other_fd, { R"(T0506:0*,;07:f0e1f*"7f0* ;10:400bfef7ff7f0* ;thread:p4272.4272;core:d;)" });
            // TODO:
            send_response(other_fd, { "S 05" });

        } else if (cmd == "vMustReplyEmpty") {
            send_response(other_fd, {});

        } else {
            send_response(other_fd, {});
        }

    }

    [[nodiscard]] Checksum receive_and_parse_checksum(int other_fd) {
        std::array<char, 2> checksum_raw;
        int err = recv(other_fd, checksum_raw.data(), checksum_raw.size(), 0);
        assert(err != -1);

        auto checksum_str = std::format("{}{}", checksum_raw[0], checksum_raw[1]);
        Checksum checksum;
        // base 16, because rsp sends checksum as hex without a prefix
        std::from_chars(checksum_str.data(), checksum_str.data()+checksum_str.size(), checksum, 16);

        return checksum;
    }

    void send_ack(int fd) {
        log("sent ACK");
        send_but_better(fd, "+");
    }

    void send_nack(int fd) {
        log("sent NACK");
        send_but_better(fd, "-");
    }

    void read_incoming_packets(int other_fd) {

        bool inside_packet_data = false;
        std::string data_buf;

        while (true) {
            char c = '\0';
            int data_received = recv(other_fd, &c, 1, 0);
            if (data_received == -1)
                throw GDBException(strerror(errno));

            if (data_received == 0) break;

            if (c == '$') {
                inside_packet_data = true;

            } else if (c == '#') {
                inside_packet_data = false;

                auto fields = get_packet_fields(data_buf);
                log("received: {}", fields);

                auto checksum = receive_and_parse_checksum(other_fd);
                if (calculate_checksum(data_buf) == checksum)
                    send_ack(other_fd);
                else
                    send_nack(other_fd);

                handle_packet(std::move(fields), other_fd);

                data_buf.clear();

            } else if (inside_packet_data) {
                data_buf.push_back(c);

            } else if (c == '+') {
                log("received ACK");

            } else if (c == '-') {
                log("received NACK");

            } else {
                throw GDBException(std::format("invalid data: {}", c).c_str());
            }

        }
    }

    [[nodiscard]] static int create_socket(const char* socket_path) {

        int sock_fd = socket(AF_UNIX, SOCK_STREAM, 0);
        if (sock_fd == -1)
            throw GDBException(strerror(errno));

        struct sockaddr_un addr {
            .sun_family = AF_UNIX,
            .sun_path = {},
        };

        strncpy(addr.sun_path, socket_path, sizeof(addr.sun_path)-1);

        int err = bind(sock_fd, reinterpret_cast<struct sockaddr*>(&addr),
                       sizeof(struct sockaddr_un));

        if (err == -1)
            throw GDBException(strerror(errno));

        return sock_fd;
    }
};
