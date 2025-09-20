#pragma once

#include <cassert>
#include <print>
#include <filesystem>
#include <vector>
#include <optional>
#include <cstdio>

#include <elf.h>

#include "util.hh"

namespace fs = std::filesystem;

struct ElfExcecutableException : std::runtime_error {
    explicit ElfExcecutableException(const char* msg) : std::runtime_error(msg) { }
};

struct LoadSegment {
    size_t file_offset;
    size_t length;
    Elf64_Addr virt_addr;
    Elf64_Word flags; // RWX
};

class ElfExecutable {
    FILE* m_file;
    std::vector<char> m_file_bytes;

    Elf64_Ehdr m_elf_header;
    std::vector<Elf64_Phdr> m_program_headers;
    std::vector<Elf64_Shdr> m_section_headers;
    std::vector<LoadSegment> m_loadable_segments;
    std::vector<Elf64_Sym> m_symbol_table;
    const char* m_symbol_string_table;

public:
    explicit ElfExecutable(const fs::path& path)
        : m_file(fopen_thunk(path.c_str()))
        , m_file_bytes(read_entire_file(path))
    {
        parse();
        log("Parsed ELF binary ({} bytes)", m_file_bytes.size());
    }


    [[nodiscard]] int get_fd() const {
        return fileno(m_file);
    }

    [[nodiscard]] Elf64_Half get_type() const {
        return m_elf_header.e_type;
    }

    [[nodiscard]] auto get_load_segments() const -> std::span<const LoadSegment> {
        return m_loadable_segments;
    }

    [[nodiscard]] auto get_entry_point() const {
        return m_elf_header.e_entry;
    }

    [[nodiscard]] auto locate_symbol(std::string_view name) const -> std::optional<Elf64_Sym>;

private:
    void load_symbol_string_table();
    void load_symbol_table();
    void load_loadable_segments();
    void load_section_headers();
    void load_program_headers();
    void parse();
    [[nodiscard]] std::vector<char> read_entire_file(const fs::path& path);
    void verify_elf_integrity() const;

    [[nodiscard]] static FILE* fopen_thunk(const char* path) {
        auto file = fopen(path, "rb");
        if (file == NULL)
            throw ElfExcecutableException("failed to open file");

        return file;
    }

};
