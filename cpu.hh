#pragma once

#include <cassert>

#include "decoder.hh"
#include "register.hh"

struct InstructionVisitor {
    class CPU& m_cpu;
    void operator()(const InstructionI& inst);
    void operator()(const InstructionU& inst);

private:
    void forward_syscall() const;

};

class CPU {
public:
    uint64_t m_pc;
    Registers m_registers;
    Decoder m_decoder;
    InstructionVisitor m_vis;

    CPU() : m_vis(*this) { }

    void execute(Instruction instruction) {
        std::visit(m_vis, instruction);
    }

};
