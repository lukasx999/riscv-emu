#include <cstdlib>
#include <cstring>

#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        BinaryInstruction raw_inst = fetch();
        Instruction inst = m_cpu.m_decoder.decode(raw_inst);
        log("{}", inst);
        m_cpu.execute(inst);
        m_cpu.m_pc += sizeof(BinaryInstruction);
        std::println("T4: {}", m_cpu.m_registers.get(Register::T4));
        std::println("T5: {}", m_cpu.m_registers.get(Register::T5));
    }
}

BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.m_pc);
}

void Machine::load_binary(const ElfExecutable& exec) {
    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses, in ascending order, so we can take the address
    // of the first one as an offset

    auto segments = exec.get_load_segments();
    size_t program_offset = segments.front().m_virt_addr;

    m_cpu.m_pc = exec.get_entry_point() - program_offset;
    size_t stack = m_memory.get_stack_address();
    m_cpu.m_registers.set(Register::Sp, stack);
    m_cpu.m_registers.set(Register::Fp, stack);
}
