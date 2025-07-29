#include <cassert>
#include <cmath>
#include <cstdlib>
#include <print>
#include <stdexcept>

#include <unistd.h>

#include "cpu.hh"
#include "fmt.hh"

void Executor::operator()(const InstructionR& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void Executor::operator()(const InstructionI& inst) {

    Word rs1 = m_cpu.m_registers.get(inst.m_rs1);
    uint16_t imm = inst.m_imm;

    auto set_rd = [&](Word value) {
        m_cpu.m_registers.set(inst.m_rd, value);
    };

    switch (inst.m_type) {
        using enum InstructionI::Type;

        case Addi:
            set_rd(rs1 + imm);
            break;

        case Xori:
            set_rd(rs1 ^ imm);
            break;

        case Ori:
            set_rd(rs1 | imm);
            break;

        case Andi:
            set_rd(rs1 & imm);
            break;

        case Slli:
            set_rd(rs1 << extract_bits(imm, 0, 5));
            break;

        case Srli:
            set_rd(rs1 >> extract_bits(imm, 0, 5));
            break;

        case Srai: {
            // sign-extension
            uint8_t n = extract_bits(imm, 0, 5);
            set_rd(set_bits(rs1 >> n, sizeof(Word)-n, n, std::signbit(rs1)));
        } break;

        case Slti:
            set_rd(rs1 < imm ? 1 : 0);
            break;

        case Sltiu:
            // TODO: zero-extension
            set_rd(rs1 < imm ? 1 : 0);
            break;

        case Ecall:
            forward_syscall();
            break;

        default:
            throw std::runtime_error(std::format("unimplemented: {}", inst.m_type));
    }
}

void Executor::operator()(const InstructionS& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void Executor::operator()(const InstructionB& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void Executor::operator()(const InstructionU& inst) {
    switch (inst.m_type) {
        using enum InstructionU::Type;

        case Auipc: {
            auto value = m_cpu.m_pc + (inst.m_imm << 12);
            m_cpu.m_registers.set(inst.m_rd, value);
        } break;

        default: throw std::runtime_error("unimplemented");
    }
}

void Executor::operator()(const InstructionJ& inst) {
    (void) inst;
    throw std::runtime_error("unimplemented");
}

void Executor::forward_syscall() const {
    enum Syscall {
        Exit=93, Write=64
    };

    auto syscall_nr = m_cpu.m_registers.get(Register::A7);
    Word arg0       = m_cpu.m_registers.get(Register::A0);
    Word arg1       = m_cpu.m_registers.get(Register::A1);
    Word arg2       = m_cpu.m_registers.get(Register::A2);

    switch (syscall_nr) {
        case Syscall::Exit: {
            int status = arg0;
            exit(status);
        } break;

        case Syscall::Write: {
            int    fd   = arg0;
            size_t buf  = arg1;
            size_t len  = arg2;
            write(fd, &m_cpu.m_memory.get(buf), len);
        } break;
    }
}
