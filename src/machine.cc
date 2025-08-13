#include <thread>
#include <chrono>
#include <cstdlib>
#include <cstring>

#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        auto pc = m_cpu.get_pc();
        // log("{}: {:#x}", m_instruction_counter, pc);
        auto instr = Decoder::decode(fetch());

        // std::chrono::duration<float> dur(0.5);
        // std::this_thread::sleep_for(dur);

        m_cpu.execute(instr);
        auto new_pc = m_cpu.get_pc();

        bool did_jump = pc != new_pc;
        if (!did_jump)
            m_cpu.next_instruction();

        // std::println("GP: {:#x}", m_cpu.m_registers.get(Register::Gp));

        m_instruction_counter++;

        if (m_cpu.should_exit()) break;
    }
}

BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.get_pc());
}

void Machine::set_elf_entrypoint(const ElfExecutable& exec) {
    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses, in ascending order, so we can take the address
    // of the first one as an offset

    m_cpu.set_pc(exec.get_entry_point());
    log("Beginning execution at {:#x}", m_cpu.get_pc());

}

void Machine::init() {
    size_t stack = m_memory.get_stack_end_address();
    m_cpu.m_registers.set(Register::Sp, stack);
    m_cpu.m_registers.set(Register::Fp, stack);
    log("Stack Pointer placed at {:#x}", stack);
}
