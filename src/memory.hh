#pragma once

#include <algorithm>
#include <cassert>
#include <cstdlib>
#include <cstring>
#include <vector>
#include <bit>

#include "elf.hh"

struct MemoryException : std::runtime_error {
    explicit MemoryException(const char* msg) : std::runtime_error(msg) { }
};

class Memory {
    const size_t m_stack_size;
    void* m_stack_addr = nullptr;
    std::vector<std::pair<void*, size_t>> m_mapped_segments;

public:
    Memory(const ElfExecutable& elf, size_t stack_size)
        : m_stack_size(stack_size)
    {
        map_stack();
        load_binary(elf);
    }

    explicit Memory(size_t stack_size)
        : m_stack_size(stack_size)
    {
        map_stack();
    }

    ~Memory();

    [[nodiscard]] size_t get_stack_base_address() const {
        // actually returns the address of the top of the stack, because the
        // stack pointer gets more negative as the stack grows
        return reinterpret_cast<size_t>(m_stack_addr) + m_stack_size;
    }

    template <typename T=char>
    [[nodiscard]] T get(size_t address) const {
        return *reinterpret_cast<T*>(address);
    }

    template <typename T=char>
    void set(size_t address, const T& value) {
        *reinterpret_cast<T*>(address) = value;
    }

private:
    [[nodiscard]] static int elf_prot_to_mman_prot(int prot);
    void map_stack();
    void load_binary(const ElfExecutable& elf);

};
