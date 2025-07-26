#include <cassert>
#include <cstdlib>
#include <stdexcept>

#include "cpu.hh"

void InstructionVisitor::operator()(const InstructionI& inst) {
    switch (inst.m_type) {
        using enum InstructionI::Type;

        case Addi: {
            auto value = m_cpu.m_registers.get(inst.m_rs1);
            m_cpu.m_registers.set(inst.m_rd, value + inst.m_imm);
        } break;

        case Ecall:
            forward_syscall();
            break;

        default:
            throw std::runtime_error(std::format("unimplemented: {}", inst.m_type));
    }
}

void InstructionVisitor::operator()(const InstructionU& inst) {
    switch (inst.m_type) {
        using enum InstructionU::Type;

        case Auipc: {
            auto value = m_cpu.m_pc + (inst.m_imm << 12);
            m_cpu.m_registers.set(inst.m_rd, value);
        } break;

        default: throw std::runtime_error("unimplemented");
    }
}

void InstructionVisitor::forward_syscall() const {
    enum Syscall { Exit=93 };

    auto syscall_nr = m_cpu.m_registers.get(Register::A7);
    switch (syscall_nr) {
        case Syscall::Exit:
            auto status = m_cpu.m_registers.get(Register::A0);
            exit(status);
            break;
    }
}
