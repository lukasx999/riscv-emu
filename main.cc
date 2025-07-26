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

    void run() {

        auto raw_inst = fetch();
        Instruction inst = m_cpu.decode(raw_inst);
        m_cpu.execute(inst);
        m_cpu.m_pc += sizeof(Word);

        std::println("{}", m_cpu.m_registers.get(Register::T2));
    }

    [[nodiscard]] uint32_t fetch() const {
        return m_memory.get<uint32_t>(m_cpu.m_pc);
    }

    void test() {

        // addi t2,t0,45
        auto inst_addi = m_cpu.decode(0x02d28393);
        assert(std::holds_alternative<InstructionI>(inst_addi));
        auto addi = std::get<InstructionI>(inst_addi);
        assert(addi.m_imm == 45);
        assert(addi.m_type == InstructionI::Type::Addi);
        assert(addi.m_rd == Register::T2);
        assert(addi.m_rs1 == Register::T0);

        // xori s2,s11,2000
        auto inst_xori = m_cpu.decode(0x7d0dc913);
        assert(std::holds_alternative<InstructionI>(inst_xori));
        auto xori = std::get<InstructionI>(inst_xori);
        assert(xori.m_imm == 2000);
        assert(xori.m_type == InstructionI::Type::Xori);
        assert(xori.m_rd == Register::S2);
        assert(xori.m_rs1 == Register::S11);

    }

    void load_binary(const ElfExecutable& exec) {

        // TODO: virtual memory + memory protection

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
    machine.run();

    return EXIT_SUCCESS;
}
