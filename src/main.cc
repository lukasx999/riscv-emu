#include <cassert>
#include <cstdlib>
#include <cstdio>

#include <readline/readline.h>
#include <argparse/argparse.hpp>

#include "elf.hh"
#include "machine.hh"
#include "repl.hh"

namespace {

struct Options {
    std::string filename;
};

[[nodiscard]] Options parse_args(int argc, char **argv) {
    Options opts;

    argparse::ArgumentParser program(global_data.program_name);

    program
        .add_argument("filename")
        .help("specify the filename of the binary to be run, or `:repl` for an interactive session")
        .store_into(opts.filename);

    program
        .add_argument("--assembler")
        .help("specify the path of the assembler")
        .store_into(global_data.assembler_path);

    program
        .add_argument("--objcopy")
        .help("specify the path of objcopy")
        .store_into(global_data.objcopy_path);

    program
        .add_argument("-v", "--verbose")
        .help("show logging information")
        .flag()
        .store_into(global_data.enable_logging);

    try {
        program.parse_args(argc, argv);

    } catch (const std::exception& e) {
        std::println(stderr, "Argument parsing failure: {}", e.what());
        std::println(stderr, "{}", program.usage());
        exit(EXIT_FAILURE);
    }

    return opts;
}

}

int main(int argc, char** argv) try {
    // TODO: collect statistics of running program (reads/writes/register usage)
    // TODO: create library interface for embedding into other programs?

    auto opts = parse_args(argc, argv);

    // TODO: fix absolute addresses in programs as supposed to ones relative to program offset

    if (opts.filename == ":repl") {
        Machine machine;
        REPL repl(machine);
        repl.run();

    } else {
        // TODO: destroy after loading (or just mmap read only)
        ElfExecutable elf(opts.filename);
        Machine machine(elf);
        machine.run();

    }

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
