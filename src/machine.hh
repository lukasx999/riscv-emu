#pragma once

#include "cpu.hh"
#include "elf.hh"
#include "memory.hh"

class Machine {
    size_t m_program_offset = 0;

public:
    Memory m_memory;
    CPU m_cpu{m_memory};

    Machine(const ElfExecutable& exec) : m_memory(exec.get_load_segments()) {
        set_elf_entrypoint(exec);
        init();
    }

    Machine() {
        init();
    }

    void run();

private:
    [[nodiscard]] BinaryInstruction fetch() const;
    void set_elf_entrypoint(const ElfExecutable& exec);
    void init();

};
