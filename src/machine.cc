#include <cstdlib>
#include <cstring>

#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        log("{}: {:#x}", m_instruction_counter, m_cpu.get_pc() + m_program_offset);
        m_cpu.execute(fetch());
        m_cpu.next_instruction();
        m_instruction_counter++;
    }
}

BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.get_pc());
}

void Machine::set_elf_entrypoint(const ElfExecutable& exec) {
    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses, in ascending order, so we can take the address
    // of the first one as an offset

    auto segments = exec.get_load_segments();
    m_program_offset = segments.front().virt_addr;

    m_cpu.set_pc(exec.get_entry_point() - m_program_offset);
    log("Program Offset: {:#x}", m_program_offset);
    log("Beginning execution at {:#x}", m_cpu.get_pc());

}

void Machine::init() {
    size_t stack = m_memory.get_stack_end_address();
    m_cpu.m_registers.set(Register::Sp, stack);
    m_cpu.m_registers.set(Register::Fp, stack);
}
