#pragma once

#include "cpu.hh"
#include "elf.hh"
#include "memory.hh"

class Machine {
    Memory m_memory;
    CPU m_cpu{m_memory};

public:
    Machine() = default;

    void run();
    [[nodiscard]] BinaryInstruction fetch() const;
    void load_binary(const ElfExecutable &exec);
};
