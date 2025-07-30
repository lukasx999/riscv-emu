#pragma once

#include <cassert>
#include <optional>

#include "decoder.hh"
#include "register.hh"
#include "memory.hh"

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
public:
    Word m_pc;
    RegisterFile m_registers;
    Decoder m_decoder;
    Memory& m_memory;
    Executor m_executor;

    CPU(Memory& memory)
        : m_memory(memory)
        , m_executor(*this)
    { }

    void execute(const Instruction& instruction) {
        std::visit(m_executor, instruction);
    }

};
