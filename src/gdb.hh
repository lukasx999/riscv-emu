#pragma once

#include <filesystem>
#include <netinet/in.h>
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
protected:
    static constexpr auto m_socket_name = "gdbserver.sock";
    Machine& m_machine;
    int m_sock_fd;

    GDBServer(Machine& machine, int sock_fd)
        : m_machine(machine)
        , m_sock_fd(sock_fd)
    { }

public:
    GDBServer() = delete;

    [[nodiscard]] static constexpr fs::path get_socket_path() {
        auto path = get_temp_dir_path();
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

protected:
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

    static void send_ack(int fd) {
        log("sent ACK");
        send_wrapper(fd, "+");
    }

    static void send_nack(int fd) {
        log("sent NACK");
        send_wrapper(fd, "-");
    }

    [[nodiscard]] static uint8_t parse_hex_digits(char a, char b);
    [[nodiscard]] auto get_packet_fields(std::string_view packet) -> std::vector<std::string>;
    void send_response(int fd, std::vector<std::string> fields);
    [[nodiscard]] static std::string encode_number(uint64_t value);
    [[nodiscard]] Checksum receive_and_parse_checksum(int other_fd) const;
    void handle_packet(std::vector<std::string> fields, int other_fd);
    void read_incoming_packets(int other_fd);
    static void bind_socket(int sock_fd, const struct sockaddr* addr);

};

class GDBServerTcp : public GDBServer {
public:
    GDBServerTcp(Machine& machine, uint16_t port)
    : GDBServer(machine, create_socket_tcp(port))
    { }

private:
    [[nodiscard]] static int create_socket_tcp(uint16_t port);
};

class GDBServerUnix : public GDBServer {
public:
    explicit GDBServerUnix(Machine& machine)
    : GDBServer(machine, prepare_socket_file())
    { }

private:
    int prepare_socket_file() {
        auto socket_path = get_socket_path();

        if (fs::exists(socket_path))
            fs::remove(socket_path);

        return create_socket_unix(socket_path.c_str());
    }

    [[nodiscard]] static int create_socket_unix(const char* socket_path);

};
