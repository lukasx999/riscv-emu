#include <thread>
#include <chrono>
#include <cstdlib>
#include <cstring>

#include "machine.hh"
#include "fmt.hh"

int Machine::run() {
    while (true) {
        Word pc = m_cpu.get_pc();
        log("{:#x}", pc);

        m_cpu.execute(Decoder::decode(fetch()));

        Word new_pc = m_cpu.get_pc();

        bool did_jump = pc != new_pc;
        if (!did_jump)
            m_cpu.next_instruction();

        if (m_cpu.should_exit()) {
            int status = m_cpu.get_exit_status();
            log("Guest exited with status {}", status);
            return status;
        }

    }
}

BinaryInstruction Machine::fetch() const {
    // TODO: refactor to pointer
    return m_memory.get<BinaryInstruction>(m_cpu.get_pc());
}

void Machine::init() {
    size_t stack = m_memory.get_stack_base_address();
    m_cpu.m_registers.set(Register::Sp, stack);
    m_cpu.m_registers.set(Register::Fp, stack);
    log("Stack Pointer placed at {:#x}", stack);

    void* program_break = m_memory.get_initial_program_break();
    m_cpu.set_program_break(program_break);
    log("Program Break placed at {}", program_break);
}
