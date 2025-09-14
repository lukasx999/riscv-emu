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

        init_bss(exec);

    }

    // TODO: move to memory.cc
    void init_bss(const ElfExecutable& exec) {

        auto bss_sections = exec.get_bss_sections();

        for (auto& section : bss_sections) {
            auto addr = section.sh_addr;
            auto size = section.sh_size;

            for (size_t i=addr; i < addr + size; ++i) {
                m_memory.set<char>(i, 0);
            }

            std::println("bss section initialized at: {:#x} ({} bytes)", addr, size);

        }
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
