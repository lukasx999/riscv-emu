#include <cassert>
#include <cstdlib>
#include <cstdio>
#include <fstream>

#include <argparse/argparse.hpp>

#include "elf.hh"
#include "machine.hh"
#include "repl.hh"
#include "gdb.hh"

namespace {

struct Options {
    std::string filename;
    std::string signature_path;
    bool enable_gdb_server;
};

[[nodiscard]] Options parse_args(int argc, char** argv) {
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
        .add_argument("--gdb")
        .help("start a gdb rsp server")
        .store_into(opts.enable_gdb_server);

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

    using SignatureValue = uint32_t;

    std::ofstream file(filename);

    for (size_t i=begin->st_value; i < end->st_value; i+=sizeof(SignatureValue)) {
        auto value = mem.get<SignatureValue>(i);
        std::println(file, "{:08x}", value);
    }

}

int run_file(const Options& opts) {

    ElfExecutable elf(opts.filename);
    Machine machine(elf);

    if (opts.enable_gdb_server) {
        GDBServer gdb_server(machine);
        auto socket_path = gdb_server.get_socket_path().string();
        std::println("GDB server listening on {0}, attach with `target remote {0}`", socket_path);
        gdb_server.listen();
    }

    // TODO: when running as gdb server, patch first instruction with ebreak
    int status = machine.run();

    if (!opts.signature_path.empty())
        dump_signature(elf, machine.m_memory, opts.signature_path);

    return status;
}

void run_repl([[maybe_unused]] const Options& opts) {

#ifndef FEATURE_REPL
    std::println(stderr, "emulator was not compiled with REPL support");
    exit(EXIT_FAILURE);
#else
    if (!opts.signature_path.empty()) {
        std::println(stderr, "cannot generate signature in REPL mode");
        exit(EXIT_FAILURE);
    }

    if (opts.enable_gdb_server) {
        std::println(stderr, "cannot start gdb server in REPL mode");
        exit(EXIT_FAILURE);
    }

    Machine machine;
    REPL repl(machine);
    repl.run();
#endif // FEATURE_REPL
}

} // namespace

int main(int argc, char** argv) try {
    // TODO: collect statistics of running program (reads/writes/register usage)
    // TODO: create library interface for embedding into other programs?
    // TODO: RVMODEL_IO_ASSERT_GPR_EQ for testing
    // TODO: handle sbrk()
    // TODO: integrate riscof tests into github ci
    // TODO: gdb rsp protocol
    // TODO: tests for gdb rsp

    auto opts = parse_args(argc, argv);

    if (opts.filename == ":repl") {
        run_repl(opts);
    } else {
        return run_file(opts);
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
