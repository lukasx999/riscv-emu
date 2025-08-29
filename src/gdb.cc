#include "gdb.hh"

#include <csignal>
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
#include "machine.hh"

void GDBServer::handle_packet(std::vector<std::string> fields, int other_fd) {

    auto cmd = fields.front();

    // TODO: StringSwitch
    if (cmd == "qSupported") {
        auto value = encode_number(4096*2);
        send_response(other_fd, { std::format("PacketSize={}", value), });

    } else if (cmd == "g") {
        auto registers = m_machine.m_cpu.m_registers.get_all();

        std::string value;
        for (auto& reg : registers) {
            value += encode_number(reg);
        }

        // TODO:
        // send_response(other_fd, { value });
        send_response(other_fd, { "0000000000000000000000000000000000000000000000000000000000000000" });

    } else if (cmd[0] == 'p') {
        auto n = parse_hex_digits(cmd[1], cmd[2]);

        auto value = n == 32
            ? m_machine.m_cpu.get_pc()
            : m_machine.m_cpu.m_registers.get(static_cast<Register>(n));

        send_response(other_fd, { encode_number(value) });

    } else if (cmd == "vCont?") {
        send_response(other_fd, { "vCont", "c", "s", "t", });

    } else if (cmd == "qfThreadInfo") {
        send_response(other_fd, { "m1" });

    } else if (cmd == "qSymbol") {
        send_response(other_fd, { "OK" });

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
        send_response(other_fd, { "TextSeg=0" });

    } else if (cmd == "qAttached") {
        send_response(other_fd, { "0" });

    } else if (cmd == "?") {
        send_response(other_fd, { std::format("S{}", encode_number(SIGTRAP)) });

    } else if (cmd == "k") {
        exit(EXIT_SUCCESS);

    } else if (cmd == "vMustReplyEmpty") {
        send_response(other_fd, {});

    } else {
        send_response(other_fd, {});
    }

}

void GDBServer::read_incoming_packets(int other_fd) {

    bool inside_packet_data = false;
    std::string data_buf;

    while (true) {
        char c = '\0';
        int data_received = recv(other_fd, &c, 1, 0);

        if (errno == ECONNRESET || data_received == 0)
            break;

        if (data_received == -1)
            throw GDBException(strerror(errno));

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

        } else if (c == '+') {
            log("received ACK");

        } else if (c == '-') {
            log("received NACK");

        } else if (inside_packet_data) {
            data_buf.push_back(c);

        } else {
            throw GDBException(std::format("invalid data: {}", c).c_str());
        }

    }
}

int GDBServer::create_socket(const char* socket_path) {

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
