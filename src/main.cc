#include <cassert>
#include <cstdlib>
#include <cstdio>
#include <fstream>

#include <readline/readline.h>
#include <argparse/argparse.hpp>

#include "elf.hh"
#include "machine.hh"
#include "repl.hh"

namespace {

struct Options {
    std::string filename;
    std::string signature_path;
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
        .add_argument("--signature")
        .help("specify the filename of the signature to be generated")
        .store_into(opts.signature_path);

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

void dump_signature(const ElfExecutable& elf, Memory& mem, fs::path filename) {
    static constexpr const char* symbol_name_sig_begin = "begin_signature";
    static constexpr const char* symbol_name_sig_end = "end_signature";

    auto begin = elf.locate_symbol(symbol_name_sig_begin);
    if (!begin) {
        std::println(stderr, "could not find symbol `{}`", symbol_name_sig_begin);
        exit(EXIT_FAILURE);
    }

    auto end = elf.locate_symbol(symbol_name_sig_end);
    if (!end) {
        std::println(stderr, "could not find symbol `{}`", symbol_name_sig_end);
        exit(EXIT_FAILURE);
    }

    size_t size = end->st_value - begin->st_value;

    std::ofstream file(filename);
    for (size_t i=0; i < size/sizeof(i); i++) {
        auto value = mem.get<uint32_t>(begin->st_value + i*sizeof(uint32_t));
        std::println(file, "{:x}", value);
    }

}

}

int main(int argc, char** argv) try {
    // TODO: collect statistics of running program (reads/writes/register usage)
    // TODO: create library interface for embedding into other programs?

    auto opts = parse_args(argc, argv);

    if (opts.filename == ":repl") {
        if (!opts.signature_path.empty()) {
            std::println(stderr, "cannot generate signature in REPL mode");
            return EXIT_FAILURE;
        }

        Machine machine;
        REPL repl(machine);
        repl.run();

    } else {
        ElfExecutable elf(opts.filename);
        Machine machine(elf);
        machine.run();

        if (!opts.signature_path.empty())
            dump_signature(elf, machine.m_memory, opts.signature_path);

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
