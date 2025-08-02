#pragma once

#include <cassert>
#include <optional>

#include "decoder.hh"
#include "register.hh"
#include "memory.hh"
#include "fmt.hh"

struct Executor {
    class CPU& m_cpu;
    void operator()(const InstructionR& inst);
    void operator()(const InstructionI& inst);
    void operator()(const InstructionS& inst);
    void operator()(const InstructionB& inst);
    void operator()(const InstructionU& inst);
    void operator()(const InstructionJ& inst);

private:
    void forward_syscall() const;

};

class CPU {
    Word m_pc;
    Executor m_executor;

public:
    RegisterFile m_registers;
    Memory& m_memory;

    friend Executor;

    CPU(Memory& memory)
        : m_executor(*this)
        , m_memory(memory)
    { }

    [[nodiscard]] Word get_pc() const {
        return m_pc;
    }

    void set_pc(Word pc) {
        m_pc = pc;
    }

    void execute(const Instruction& instruction) {
        log("Running: {}", instruction);
        std::visit(m_executor, instruction);
    }

    void execute(BinaryInstruction instruction) {
        execute(Decoder::decode(instruction));
    }

    void next_instruction() {
        m_pc += sizeof(BinaryInstruction);
    }

};
