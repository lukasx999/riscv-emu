#include <bitset>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <print>
#include <iterator>
#include <utility>
#include <variant>
#include <vector>
#include <fstream>

#include <elf.h>

#include "cpu.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/

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
            m_loadable_segments.push_back({{ m_bytes.begin()+offset, size }, hdr.p_vaddr});
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



class Memory {
    static constexpr size_t m_memory_size = 4096;
    std::vector<char> m_memory;

public:
    Memory() : m_memory(m_memory_size) { }

    [[nodiscard]] char* get_data() {
        return m_memory.data();
    }

    void set_byte(size_t address, char byte) {
        m_memory[address] = byte;
    }

    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        return *std::bit_cast<T*>(&m_memory[address]);
    }

    template <>
    [[nodiscard]] char get<char>(size_t address) const {
        return m_memory[address];
    }

};

class Machine {
    Memory m_memory;
    CPU m_cpu;

public:
    Machine() = default;

    void loop() {
        auto instruction = fetch();
        m_cpu.decode(instruction);
        m_cpu.m_pc += sizeof(Word);
    }

    [[nodiscard]] Word fetch() const {
        return m_memory.get(m_cpu.m_pc);
    }

    void test() {
        auto inst = m_cpu.decode(0x02d28393);
        // std::println("inst: {}", inst);
    }

    void load_binary(const ElfExecutable& exec) {

        auto segments = exec.get_loadable_segments();
        size_t offset = 0;
        for (auto& segment : segments) {
            std::memcpy(m_memory.get_data()+offset, segment.m_span.data(), segment.m_span.size());
            offset += segment.m_span.size();
        }

        std::println("{} Segment(s) loaded", segments.size());

        auto entry = exec.get_entry_point() - segments.front().m_virt_addr;
        m_cpu.m_pc = entry;
        m_cpu.m_registers.set(Register::Sp, offset);
        m_cpu.m_registers.set(Register::Fp, offset);

    }

};

int main() {

    ElfExecutable elf("./probe/a.out");

    Machine machine;
    machine.load_binary(elf);
    machine.test();

    return EXIT_SUCCESS;
}
