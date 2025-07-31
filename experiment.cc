#include <fstream>
#include <print>
#include <bit>

#include <boost/process.hpp>
#include <boost/asio.hpp>

namespace asio = boost::asio;
namespace proc = boost::process;

[[nodiscard]] static
uint32_t encode_instruction(std::string instruction) {
    asio::io_context ctx;
    asio::writable_pipe pipe(ctx);

    proc::process assembler(
        ctx,
        "/usr/bin/riscv64-linux-gnu-as",
        {"-o", "test.o"},
        proc::process_stdio(pipe, {}, {})
    );

    asio::write(pipe, asio::buffer(instruction+"\n"));
    pipe.close();
    assembler.wait();

    proc::process objcopy(
        ctx,
        "/usr/bin/riscv64-elf-objcopy",
        {"-O", "binary", "-j", ".text", "test.o", "bin"}
    );

    objcopy.wait();

    std::ifstream bin("bin", std::ios::binary);
    std::array<char, 4> buf;
    bin.read(buf.data(), 4);

    uint32_t inst = *reinterpret_cast<uint32_t*>(buf.data());
    std::println("{:#x}", inst);
    return inst;
}

int main() {
    encode_instruction("li t0, 45");

}
