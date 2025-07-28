#pragma once

#include <cassert>

#include "decoder.hh"
#include "register.hh"
#include "memory.hh"

struct InstructionVisitor {
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
    InstructionVisitor m_visitor;

    CPU(Memory& memory)
        : m_memory(memory)
        , m_visitor(*this)
    { }

    void execute(const Instruction& instruction) {
        std::visit(m_visitor, instruction);
    }

};
