#include <cassert>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <print>
#include <variant>
#include <vector>

#include "cpu.hh"
#include "elf.hh"

// https://www.cs.sfu.ca/~ashriram/Courses/CS295/assets/notebooks/RISCV/RISCV_CARD.pdf
// https://projectf.io/posts/riscv-cheat-sheet/
// https://jborza.com/post/2021-05-11-riscv-linux-syscalls/

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
        while (true) {
            auto raw_inst = fetch();
            Instruction inst = m_cpu.decode(raw_inst);
            m_cpu.execute(inst);
            std::println("{}", std::get<InstructionI>(inst));
            m_cpu.m_pc += sizeof(BinaryInstruction);
        }
        // std::println("{}", m_cpu.m_registers.get(Register::T3));
    }

    [[nodiscard]] BinaryInstruction fetch() const {
        return m_memory.get<BinaryInstruction>(m_cpu.m_pc);
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
            std::memcpy(m_memory.get_data()+offset, segment.m_span.data(),
                        segment.m_span.size());
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
