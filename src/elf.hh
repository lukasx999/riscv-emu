#pragma once

#include <cassert>
#include <print>
#include <filesystem>
#include <vector>

#include <elf.h>

#include "util.hh"

namespace fs = std::filesystem;

struct ElfExcecutableException : std::runtime_error {
    explicit ElfExcecutableException(const char* msg) : std::runtime_error(msg) { }
};

struct LoadSegment {
    std::span<char> bytes;
    Elf64_Addr virt_addr;
    Elf64_Word flags;
};

// TODO: destroy after loading (or just mmap read only)

/*
    TODO: find signature symbols and dump memory to file for riscof tests
    begin_signature
    end_signature
*/
class ElfExecutable {
    std::vector<char> m_bytes;
    Elf64_Ehdr m_elf_header;
    Elf64_Addr m_entry_point;
    std::vector<Elf64_Phdr> m_program_headers;
    std::vector<Elf64_Shdr> m_section_headers;
    std::vector<LoadSegment> m_loadable_segments;

public:
    explicit ElfExecutable(const fs::path& path)
    : m_bytes(load_file_binary(path)) {
        parse();
        log("Parsed ELF binary ({} bytes)", m_bytes.size());
    }

    [[nodiscard]] auto get_load_segments() const -> std::span<const LoadSegment> {
        return m_loadable_segments;
    }

    [[nodiscard]] auto get_entry_point() const {
        return m_entry_point;
    }

private:
    void load_loadable_segments();
    void load_section_headers();
    void load_program_headers();
    void parse();
    [[nodiscard]] static std::vector<char> load_file_binary(const fs::path& path);
    void verify_elf_integrity() const;
};
