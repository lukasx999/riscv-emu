#include <cassert>
#include <cstdlib>

#include <argparse/argparse.hpp>

#include "elf.hh"
#include "machine.hh"
#include "machine.hh"

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

[[nodiscard]] static
uint32_t encode_instruction(std::string_view instruction) {
}

int main(int argc, char** argv) try {
    // TODO: collect statistics of running program (reads/writes/register usage)

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
