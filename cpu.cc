#include <cassert>
#include <cstdlib>
#include <print>
#include <stdexcept>

#include <unistd.h>

#include "cpu.hh"
#include "fmt.hh"

void InstructionVisitor::operator()(const InstructionR& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

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

void InstructionVisitor::operator()(const InstructionS& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void InstructionVisitor::operator()(const InstructionB& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
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

void InstructionVisitor::operator()(const InstructionJ& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void InstructionVisitor::forward_syscall() const {
    enum Syscall { Exit=93, Write=64 };

    auto syscall_nr = m_cpu.m_registers.get(Register::A7);
    switch (syscall_nr) {
        case Syscall::Exit: {
            int status = m_cpu.m_registers.get(Register::A0);
            exit(status);
        } break;

        case Syscall::Write: {
            int fd = m_cpu.m_registers.get(Register::A0);
            size_t buf = m_cpu.m_registers.get(Register::A1);
            size_t len = m_cpu.m_registers.get(Register::A2);
            write(fd, m_cpu.m_memory.get_data() + buf, len);
        } break;
    }
}
