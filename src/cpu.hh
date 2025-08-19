#pragma once

#include <cassert>
#include <optional>

#include "decoder.hh"
#include "register.hh"
#include "memory.hh"
#include "fmt.hh"

class CPU {
    Word m_pc = 0x0;
    bool m_should_exit = false;
    int m_exit_status = 0;

    friend struct Executor;

public:
    RegisterFile m_registers;
    Memory& m_memory;

    CPU(Memory& memory) : m_memory(memory) { }

    [[nodiscard]] Word get_pc() const {
        return m_pc;
    }

    void set_pc(Word pc) {
        m_pc = pc;
    }

    [[nodiscard]] bool should_exit() const {
        return m_should_exit;
    }

    [[nodiscard]] int get_exit_status() const {
        return m_exit_status;
    }

    void execute(const Instruction& instruction);

    void execute(BinaryInstruction instruction) {
        execute(Decoder::decode(instruction));
    }

    void next_instruction() {
        m_pc += sizeof(BinaryInstruction);
    }

};
