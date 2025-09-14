#pragma once

#include "cpu.hh"
#include "elf.hh"
#include "memory.hh"

class Machine {
public:
    Memory m_memory;
    CPU m_cpu{m_memory};

    Machine(const ElfExecutable& exec, size_t stack_size)
    : m_memory(exec, stack_size)
    {

        m_cpu.set_pc(exec.get_entry_point());
        log("Beginning execution at {:#x}", m_cpu.get_pc());

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
    void init();

};
