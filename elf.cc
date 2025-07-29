#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <iterator>
#include <vector>
#include <fstream>

#include "elf.hh"

// http://www.skyfree.org/linux/references/ELF_Format.pdf

void ElfExecutable::parse() {

    m_elf_header = *std::bit_cast<Elf64_Ehdr*>(m_bytes.data());

    m_entry_point = m_elf_header.e_entry;

    auto prog_hdr_entries = m_elf_header.e_phnum;
    auto prog_hdr_offset = m_elf_header.e_phoff;

    m_program_headers.resize(prog_hdr_entries);

    for (size_t i=0; i < prog_hdr_entries; ++i) {
        auto src = m_bytes.data() + prog_hdr_offset + i*sizeof(Elf64_Phdr);
        m_program_headers[i] = *std::bit_cast<Elf64_Phdr*>(src);
    }

    for (auto& hdr : m_program_headers) {
        if (hdr.p_type != PT_LOAD) continue;
        auto offset = hdr.p_offset;
        auto size = hdr.p_memsz;
        LoadSegment seg({ m_bytes.begin()+offset, size }, hdr.p_vaddr, hdr.p_flags);
        m_loadable_segments.push_back(seg);
    }

    verify_elf_integrity();
}

std::vector<char> ElfExecutable::load_file_binary(const fs::path& path) {

    auto type = fs::status(path).type();
    if (type != fs::file_type::regular)
        throw ElfExcecutableException("invalid file type");

    std::ifstream stream(path, std::ios::binary);
    if (!stream)
        throw ElfExcecutableException("failed to open file");

    return { std::istreambuf_iterator(stream), {} };
}

void ElfExecutable::verify_elf_integrity() const {

    if (m_elf_header.e_ident[EI_MAG0] != ELFMAG0 ||
        m_elf_header.e_ident[EI_MAG1] != ELFMAG1 ||
        m_elf_header.e_ident[EI_MAG2] != ELFMAG2 ||
        m_elf_header.e_ident[EI_MAG3] != ELFMAG3)
        throw ElfExcecutableException("invalid file format, must be elf");

    if (m_elf_header.e_machine != EM_RISCV)
        throw ElfExcecutableException("invalid architecture, must be riscv (duh)");

    if (m_elf_header.e_type != ET_EXEC && m_elf_header.e_type != ET_DYN)
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
