#pragma once

#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "main.hh"
#include "elf.hh"

class Memory {
    // TODO: size load segments dynamically and stack statically
    static constexpr size_t m_memory_size = 4096*100;
    std::vector<char> m_memory;

public:
    std::span<LoadSegment> m_segments; // TODO: make private

    Memory() : m_memory(m_memory_size) { }

    [[nodiscard]] size_t translate_address(size_t address) const {
        size_t base = m_segments.front().m_virt_addr;
        size_t addr = 0;

        for (auto& segm : m_segments) {
            auto virt = segm.m_virt_addr - base;
            if (address > virt) {
                addr = virt;
            }
        }

        log("address translation: {}", addr);
        return addr;
    }

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
