#include <cassert>
#include <cstdlib>

#include <argparse/argparse.hpp>

#include "elf.hh"
#include "machine.hh"
#include "machine.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/
// http://www.ee.ic.ac.uk/pcheung/teaching/eie2-iac/Lecture%206%20-%20RISC-V%20Instruction%20Set%20Overview%20(notes).pdf

// Building crosscompiler for rv64i
// https://github.com/riscv-collab/riscv-gnu-toolchain
// ./configure --prefix=/home/lukas/opt/riscv64 --with-arch=rv64i --with-abi=lp64
// make -j$(nproc)

struct Options {
    std::string filename;
};

[[nodiscard]] static Options parse_args(int argc, char **argv) {
    Options opts;

    argparse::ArgumentParser program("riscv-emu");

    program
        .add_argument("filename")
        .help("specify the filename of the binary to be run")
        .store_into(opts.filename);

    program
        .add_argument("-v", "--verbose")
        .help("show logging information")
        .flag()
        .store_into(enable_logging);

    try {
        program.parse_args(argc, argv);

    } catch (const std::exception& e) {
        std::println(stderr, "Argument parsing failure: {}", e.what());
        std::println(stderr, "{}", program.usage());
        exit(EXIT_FAILURE);
    }

    return opts;
}

int main(int argc, char **argv) try {

    auto opts = parse_args(argc, argv);

    // TODO: destroy after loading (or just mmap read only)
    ElfExecutable elf(opts.filename);
    Machine machine(elf);
    machine.run();
    return EXIT_SUCCESS;

} catch (const ElfExcecutableException& e) {
    std::println(stderr, "Failed to parse binary: {}", e.what());
    return EXIT_FAILURE;

} catch (const DecodingException& e) {
    std::println(stderr, "Failed to decode instruction: {}", e.what());
    return EXIT_FAILURE;

} catch (const MemoryException& e) {
    std::println(stderr, "Memory failure: {}", e.what());
    return EXIT_FAILURE;

}
