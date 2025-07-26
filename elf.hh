#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <print>
#include <iterator>
#include <variant>
#include <vector>
#include <fstream>
#include <elf.h>

namespace fs = std::filesystem;

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
    ElfExecutable(const fs::path& path) : m_bytes(load_file_binary(path)) {

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

    [[nodiscard]] auto get_loadable_segments() const {
        return m_loadable_segments;
    }

    [[nodiscard]] auto get_entry_point() const {
        return m_entry_point;
    }

private:
    [[nodiscard]]
    static std::vector<char> load_file_binary(const fs::path& path) {
        std::ifstream stream(path, std::ios::binary);
        return { std::istreambuf_iterator(stream), {} };
    }

    void verify_elf_integrity() const {
        assert(m_elf_header.e_ehsize == sizeof m_elf_header);
        assert(m_elf_header.e_machine == EM_RISCV);
        assert(m_elf_header.e_type == ET_EXEC);
        assert(m_elf_header.e_ident[EI_MAG0] == 0x7f);
        assert(m_elf_header.e_ident[EI_MAG1] == 'E');
        assert(m_elf_header.e_ident[EI_MAG2] == 'L');
        assert(m_elf_header.e_ident[EI_MAG3] == 'F');
        assert(m_elf_header.e_ident[EI_CLASS] == ELFCLASS64);
        assert(m_elf_header.e_ident[EI_DATA] == ELFDATA2LSB);
        assert(m_elf_header.e_phentsize == sizeof(Elf64_Phdr));
        assert(m_elf_header.e_phoff != 0); // must have program header table
    }

};
