#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <print>
#include <variant>
#include <vector>
#include <sys/mman.h>

#include "cpu.hh"
#include "elf.hh"

class Memory {
    static constexpr size_t m_memory_size = 4096;
    std::vector<char> m_memory;

public:
    Memory() : m_memory(m_memory_size) { }

    [[nodiscard]] char* get_data() {
        return m_memory.data();
    }

    void set_byte(size_t address, char byte) {
        m_memory[address] = byte;
    }

    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        return *std::bit_cast<T*>(&m_memory[address]);
    }

    template <>
    [[nodiscard]] char get<char>(size_t address) const {
        return m_memory[address];
    }

};

class Machine {
    std::unique_ptr<std::array<char, 4096>> m_stack;
    // Memory m_memory; // TODO:
    CPU m_cpu;

public:
    Machine() : m_stack(std::make_unique<std::array<char, 4096>>()) { }

    void run();
    [[nodiscard]] BinaryInstruction fetch() const;
    void load_binary(const ElfExecutable &exec);

  private:
    void load_segment(const LoadableSegment &segment);
};
