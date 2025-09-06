#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>

#include "elf.hh"
#include "util.hh"

struct MemoryException : std::runtime_error {
    explicit MemoryException(const char* msg) : std::runtime_error(msg) { }
};

class Memory {
    const size_t m_stack_size = 4096;
    void* m_stack_addr = nullptr;
    const std::span<const LoadSegment> m_segments;
    std::vector<void*> m_mapped_segments;

public:
    Memory(std::span<const LoadSegment> segments, size_t stack_size)
        : m_stack_size(stack_size)
        , m_segments(segments)
    {
        load_binary();
        map_stack();
    }

    explicit Memory(size_t stack_size)
        : m_stack_size(stack_size)
    {
        map_stack();
    }

    ~Memory();

    [[nodiscard]] size_t get_stack_address() const {
        return reinterpret_cast<size_t>(m_stack_addr);
    }

    // NOTE: dont return by reference as binding a reference or accessing memory
    // from an unaligned address is UB
    // same goes for set()
    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        return *static_cast<T*>(reinterpret_cast<void*>(address));
    }

    template <typename T=char>
    void set(size_t address, const T& value) {
        std::memcpy(reinterpret_cast<void*>(address), &value, sizeof(T));
    }

private:
    [[nodiscard]] static int elf_prot_to_mman_prot(int prot);
    void map_stack();
    void load_binary();

};
