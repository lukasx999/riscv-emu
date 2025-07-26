#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <print>
#include <iterator>
#include <vector>
#include <fstream>
#include <elf.h>

namespace fs = std::filesystem;

struct ElfExcecutableException : std::runtime_error {
    explicit ElfExcecutableException(const char* msg)
    : std::runtime_error(msg)
    { }
};

struct LoadableSegment {
    std::span<char> m_span;
    Elf64_Addr m_virt_addr;
};

class ElfExecutable {
    std::vector<char> m_bytes;
    Elf64_Ehdr m_elf_header;
    std::vector<Elf64_Phdr> m_program_headers;
    std::vector<LoadableSegment> m_loadable_segments;
    Elf64_Addr m_entry_point;

public:
    explicit ElfExecutable(const fs::path& path)
    : m_bytes(load_file_binary(path))
    {
        parse();
    }

    [[nodiscard]] auto get_loadable_segments() const {
        return m_loadable_segments;
    }

    [[nodiscard]] auto get_entry_point() const {
        return m_entry_point;
    }

private:
    void parse() {
        std::memcpy(&m_elf_header, m_bytes.data(), sizeof(Elf64_Ehdr));

        m_entry_point = m_elf_header.e_entry;

        auto prog_hdr_entries = m_elf_header.e_phnum;
        auto prog_hdr_offset = m_elf_header.e_phoff;

        m_program_headers.resize(prog_hdr_entries);

        for (size_t i=0; i < prog_hdr_entries; ++i) {
            auto src = m_bytes.data() + prog_hdr_offset + i*sizeof(Elf64_Phdr);
            std::memcpy(&m_program_headers[i], src, sizeof(Elf64_Phdr));
        }

        for (auto& hdr : m_program_headers) {
            if (hdr.p_type != PT_LOAD) continue;
            auto offset = hdr.p_offset;
            auto size = hdr.p_memsz;
            LoadableSegment seg({ m_bytes.begin()+offset, size }, hdr.p_vaddr);
            m_loadable_segments.push_back(seg);
        }

        verify_elf_integrity();
    }

    [[nodiscard]]
    static std::vector<char> load_file_binary(const fs::path& path) {

        auto type = fs::status(path).type();
        if (type != fs::file_type::regular)
            throw ElfExcecutableException("invalid file type");

        std::ifstream stream(path, std::ios::binary);
        if (!stream)
            throw ElfExcecutableException("failed to open file");

        return { std::istreambuf_iterator(stream), {} };
    }

    void verify_elf_integrity() const {

        if (m_elf_header.e_ident[EI_MAG0] != ELFMAG0 ||
            m_elf_header.e_ident[EI_MAG1] != ELFMAG1 ||
            m_elf_header.e_ident[EI_MAG2] != ELFMAG2 ||
            m_elf_header.e_ident[EI_MAG3] != ELFMAG3)
            throw ElfExcecutableException("invalid file format, must be elf");

        if (m_elf_header.e_machine != EM_RISCV)
            throw ElfExcecutableException("invalid architecture, must be riscv (duh)");

        if (m_elf_header.e_type != ET_EXEC)
            throw ElfExcecutableException("invalid binary type, must be executable");

        if (m_elf_header.e_ident[EI_CLASS] != ELFCLASS64)
            throw ElfExcecutableException("only 64-bit binaries are supported");

        if (m_elf_header.e_ident[EI_DATA] != ELFDATA2LSB)
            throw ElfExcecutableException("only little endian is supported");

        if (m_elf_header.e_ehsize != sizeof(Elf64_Ehdr) ||
            m_elf_header.e_phentsize != sizeof(Elf64_Phdr) ||
            m_elf_header.e_phoff == 0)
            throw ElfExcecutableException("internal elf error");

    }

};
