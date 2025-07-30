#pragma once

#include <cassert>
#include <print>
#include <filesystem>
#include <vector>

#include <elf.h>

#include "util.hh"

namespace fs = std::filesystem;

struct ElfExcecutableException : std::runtime_error {
    explicit ElfExcecutableException(const char* msg)
    : std::runtime_error(msg)
    { }
};

struct LoadSegment {
    std::span<char> m_span;
    Elf64_Addr m_virt_addr;
    Elf64_Word m_flags;
};

class ElfExecutable {
    std::vector<char> m_bytes;
    Elf64_Ehdr m_elf_header;
    std::vector<Elf64_Phdr> m_program_headers;
    std::vector<LoadSegment> m_loadable_segments;
    Elf64_Addr m_entry_point;

public:
    explicit ElfExecutable(const fs::path& path)
    : m_bytes(load_file_binary(path))
    {
        parse();
        log("Parsed ELF binary ({} bytes)", m_bytes.size());
    }

    [[nodiscard]] std::span<const LoadSegment> get_load_segments() const {
        return m_loadable_segments;
    }

    [[nodiscard]] auto get_entry_point() const {
        return m_entry_point;
    }

private:
    void parse();
    [[nodiscard]] static std::vector<char> load_file_binary(const fs::path& path);
    void verify_elf_integrity() const;
};
