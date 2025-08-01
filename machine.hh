#pragma once

#include "cpu.hh"
#include "elf.hh"
#include "memory.hh"

class Machine {
    Memory m_memory;
    CPU m_cpu{m_memory};

public:
    Machine(const ElfExecutable& exec)
    : m_memory(exec.get_load_segments())
    {
        load_binary(exec);
    }

    Machine() = default;

    void run();

private:
    [[nodiscard]] BinaryInstruction fetch() const;
    void load_binary(const ElfExecutable& exec);

};
