#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <iterator>
#include <vector>
#include <fstream>

#include "elf.hh"

// https://refspecs.linuxfoundation.org/elf/elf.pdf

void ElfExecutable::parse() {

    m_elf_header = *reinterpret_cast<Elf64_Ehdr*>(m_bytes.data());
    m_entry_point = m_elf_header.e_entry;

    load_program_headers();
    load_section_headers();

    load_symbol_table();
    load_symbol_string_table();

    load_loadable_segments();
    verify_elf_integrity();
}

std::optional<Elf64_Sym> ElfExecutable::locate_symbol(std::string_view name) const {

    auto symbol = std::ranges::find_if(m_symbol_table, [&](const Elf64_Sym& symbol) {
        return m_symbol_string_table + symbol.st_name == name;
    });

    if (symbol == m_symbol_table.end())
        return {};

    return *symbol;
}

void ElfExecutable::load_symbol_table() {

    auto symtab_sect = std::ranges::find_if(m_section_headers, [](const Elf64_Shdr& hdr) {
        return hdr.sh_type == SHT_SYMTAB;
    });

    if (symtab_sect == m_section_headers.end())
        throw ElfExcecutableException("binary does not contain a symbol table");

    auto sect = *symtab_sect;

    size_t entries = sect.sh_size / sizeof(Elf64_Sym);
    m_symbol_table.resize(entries);

    for (size_t i=0; i < entries; ++i) {
        auto src = m_bytes.data() + sect.sh_offset + i * sizeof(Elf64_Sym);
        m_symbol_table[i] = *reinterpret_cast<Elf64_Sym*>(src);
    }

}

void ElfExecutable::load_symbol_string_table() {
    auto strtab_sect = std::ranges::find_if(m_section_headers, [](const Elf64_Shdr& hdr) {
        return hdr.sh_type == SHT_STRTAB;
    });

    if (strtab_sect == m_section_headers.end())
        throw ElfExcecutableException("binary does not contain a symbol string table");

    m_symbol_string_table = &m_bytes[strtab_sect->sh_offset];
}

void ElfExecutable::load_loadable_segments() {
    for (auto& hdr : m_program_headers) {
        if (hdr.p_type != PT_LOAD) continue;
        auto offset = hdr.p_offset;
        auto size = hdr.p_memsz;
        LoadSegment seg({ m_bytes.begin()+offset, size }, hdr.p_vaddr, hdr.p_flags);
        m_loadable_segments.push_back(seg);
    }
}

void ElfExecutable::load_section_headers() {
    auto entries = m_elf_header.e_shnum;
    auto offset = m_elf_header.e_shoff;

    m_section_headers.resize(entries);

    for (size_t i=0; i < entries; ++i) {
        auto src = m_bytes.data() + offset + i*sizeof(Elf64_Shdr);
        m_section_headers[i] = *reinterpret_cast<Elf64_Shdr*>(src);
    }
}

void ElfExecutable::load_program_headers() {
    auto entries = m_elf_header.e_phnum;
    auto offset = m_elf_header.e_phoff;

    m_program_headers.resize(entries);

    for (size_t i=0; i < entries; ++i) {
        auto src = m_bytes.data() + offset + i*sizeof(Elf64_Phdr);
        m_program_headers[i] = *reinterpret_cast<Elf64_Phdr*>(src);
    }
}

std::vector<char> ElfExecutable::load_file_binary(const fs::path& path) {

    if (!fs::exists(path))
        throw ElfExcecutableException("file does not exist");

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
        m_elf_header.e_shentsize != sizeof(Elf64_Shdr) ||
        m_elf_header.e_phoff == 0)
        throw ElfExcecutableException("internal elf error");
}
