#include <thread>
#include <chrono>
#include <cstdlib>
#include <cstring>

#include "machine.hh"
#include "fmt.hh"

#if 0

int Machine::run() {
    while (true) {
        auto pc = m_cpu.get_pc();
        log("{}: {:#x}", m_instruction_counter, pc);

        m_cpu.execute(Decoder::decode(fetch()));

        auto new_pc = m_cpu.get_pc();

        bool did_jump = pc != new_pc;
        if (!did_jump)
            m_cpu.next_instruction();

        m_instruction_counter++;

        if (m_cpu.should_exit()) {
            int status = m_cpu.get_exit_status();
            log("Guest exited with status {}", status);
            return status;
        }


    }
}

#else

int Machine::run() {
    while (true) {
        auto pc = m_cpu.get_pc();
        log("{}: {:#x}", m_instruction_counter, pc);

        try {
            m_cpu.execute(Decoder::decode(fetch()));
        } catch (...) {
            return 0;
        }

        auto new_pc = m_cpu.get_pc();

        bool did_jump = pc != new_pc;
        if (!did_jump)
            m_cpu.next_instruction();

        m_instruction_counter++;

        if (m_cpu.should_exit()) {
            int status = m_cpu.get_exit_status();
            log("Guest exited with status {}", status);
            return status;
        }


    }
}

#endif

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
