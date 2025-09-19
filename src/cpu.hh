#pragma once

#include <cassert>
#include <optional>

#include "decoder.hh"
#include "register.hh"
#include "memory.hh"
#include "fmt.hh"

class CPU {
    // TODO: change m_pc to be a BinaryInstruction*
    Word m_pc = 0x0;
    bool m_should_exit = false;
    int m_exit_status = 0;
    void* m_program_break = nullptr;

    friend class Executor;

public:
    RegisterFile m_registers;
    Memory& m_memory;

    explicit CPU(Memory& memory) : m_memory(memory) { }

    [[nodiscard]] Word get_pc() const {
        return m_pc;
    }

    void set_pc(Word pc) {
        m_pc = pc;
    }

    [[nodiscard]] void* get_program_break() const {
        return m_program_break;
    }

    void set_program_break(void* program_break) {
        m_program_break = program_break;
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
