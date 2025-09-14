#pragma once

#include "cpu.hh"
#include "elf.hh"
#include "memory.hh"

class Machine {
public:
    Memory m_memory;
    CPU m_cpu{m_memory};

    Machine(const ElfExecutable& exec, size_t stack_size)
    : m_memory(exec.get_load_segments(), stack_size)
    {
        set_elf_entrypoint(exec);
        init();
    }

    explicit Machine(size_t stack_size)
    : m_memory(stack_size)
    {
        init();
    }

    int run();

private:
    [[nodiscard]] BinaryInstruction fetch() const;
    void set_elf_entrypoint(const ElfExecutable& exec);
    void init();

};
