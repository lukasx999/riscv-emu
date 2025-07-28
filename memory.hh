#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>

class Memory {
    // TODO: size load segments dynamically and stack statically
    static constexpr size_t m_memory_size = 4096*100;
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

    // TODO: check out-of-bounds access
    template <>
    [[nodiscard]] char get<char>(size_t address) const {
        return m_memory[address];
    }

};
