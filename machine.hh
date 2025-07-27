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

    void run() {
        while (true) {
            BinaryInstruction raw_inst = fetch();
            Instruction inst = m_cpu.m_decoder.decode(raw_inst);
            m_cpu.execute(inst);
            m_cpu.m_pc += sizeof(BinaryInstruction);
            std::println("{}", inst);
        }
    }

    [[nodiscard]] BinaryInstruction fetch() const {
        return *std::bit_cast<BinaryInstruction*>(m_cpu.m_pc);
    }

    void load_binary(const ElfExecutable& exec) {

        auto segments = exec.get_loadable_segments();

        for (auto& segment : segments) {
            std::println("Segment Address: {}", segment.m_virt_addr);
            std::println("Segment Size: {}", segment.m_span.size());
            load_segment(segment);
        }

        std::println("{} Segment(s) loaded", segments.size());
        std::println("Entrypoint: {}", exec.get_entry_point());

        m_cpu.m_pc = exec.get_entry_point();
        auto stack_begin = std::bit_cast<Word>(m_stack->data());
        m_cpu.m_registers.set(Register::Sp, stack_begin);
        m_cpu.m_registers.set(Register::Fp, stack_begin);

    }

private:
    void load_segment(const LoadableSegment& segment) {

        auto* virt = std::bit_cast<void*>(segment.m_virt_addr);
        size_t size = segment.m_span.size();

        // TODO: get rid of MAP_FIXED (somehow)
        void* mem = mmap(virt, size, PROT_WRITE,
                         MAP_FIXED | MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);

        assert(mem != MAP_FAILED);
        assert(mem == virt);

        // TODO: map actual portion of the binary into memory
        std::memcpy(mem, segment.m_span.data(), size);

        // elf.h and sys/mman.h r/w/x flags have the same values
        mprotect(mem, size, segment.m_flags);

    }

};
