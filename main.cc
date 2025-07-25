#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <print>
#include <iterator>
#include <vector>
#include <fstream>

#include <elf.h>

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


using Register = uint64_t;
using RegisterID = uint8_t;
using RawInstruction = uint64_t;

struct InstructionIType {
    RegisterID m_rd;
    RegisterID m_rs1;
    uint64_t m_imm;
};

class CPU {
public:
    Register m_pc;
    const Register m_x0 = 0, &m_zero = m_x0;
    Register m_x1, &m_ra = m_x1;
    Register m_x2, &m_sp = m_x2;
    Register m_x3, &m_gp = m_x3;
    Register m_x4, &m_tp = m_x4;
    Register m_x5, &m_t0 = m_x5;
    Register m_x6, &m_t1 = m_x6;
    Register m_x7, &m_t2 = m_x7;
    Register m_x8, &m_s0 = m_x8, &m_fp = m_x8;
    Register m_x9, &m_s1 = m_x9;
    Register m_x10, &m_a0 = m_x10;
    Register m_x11, &m_a1 = m_x11;
    Register m_x12, &m_a2 = m_x12;
    Register m_x13, &m_a3 = m_x13;
    Register m_x14, &m_a4 = m_x14;
    Register m_x15, &m_a5 = m_x15;
    Register m_x16, &m_a6 = m_x16;
    Register m_x17, &m_a7 = m_x17;
    Register m_x18, &m_s2 = m_x18;
    Register m_x19, &m_s3 = m_x19;
    Register m_x20, &m_s4 = m_x20;
    Register m_x21, &m_s5 = m_x21;
    Register m_x22, &m_s6 = m_x22;
    Register m_x23, &m_s7 = m_x23;
    Register m_x24, &m_s8 = m_x24;
    Register m_x25, &m_s9 = m_x25;
    Register m_x26, &m_s10 = m_x26;
    Register m_x27, &m_s11 = m_x27;
    Register m_x28, &m_t3 = m_x28;
    Register m_x29, &m_t4 = m_x29;
    Register m_x30, &m_t5 = m_x30;
    Register m_x31, &m_t6 = m_x31;

    CPU() = default;

    void decode(RawInstruction instruction) {
    }

};

class Machine {
    static constexpr size_t m_memory_size = 4096;
    std::vector<char> m_memory;
    CPU m_cpu;

public:
    Machine() : m_memory(m_memory_size) { }

    void loop() {
        auto instruction = fetch();
        m_cpu.decode(instruction);
        m_cpu.m_pc += sizeof(RawInstruction);
    }

    [[nodiscard]] RawInstruction fetch() const {
        return *std::bit_cast<const uint32_t*>(&m_memory[m_cpu.m_pc]);
    }

    void test() {
        m_cpu.decode(0x02d00513);
    }

    void load_binary(const ElfExecutable& exec) {

        auto segments = exec.get_loadable_segments();
        size_t offset = 0;
        for (auto& segment : segments) {
            std::memcpy(m_memory.data()+offset, segment.m_span.data(), segment.m_span.size());
            offset += segment.m_span.size();
        }

        std::println("{} Segment(s) loaded", segments.size());

        auto entry = exec.get_entry_point() - segments.front().m_virt_addr;
        m_cpu.m_pc = entry;
        m_cpu.m_sp = offset;
        m_cpu.m_fp = offset;

    }

};

int main() {

    ElfExecutable elf("./probe/a.out");

    Machine machine;
    machine.load_binary(elf);
    machine.test();

    return EXIT_SUCCESS;
}
