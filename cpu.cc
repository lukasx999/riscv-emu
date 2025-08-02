#include <cassert>
#include <cmath>
#include <cstdlib>
#include <print>
#include <functional>
#include <stdexcept>

#include <unistd.h>

#include "util.hh"
#include "cpu.hh"

void Executor::operator()(const InstructionR& inst) {
    Word rs1 = m_cpu.m_registers.get(inst.rs1);
    Word rs2 = m_cpu.m_registers.get(inst.rs2);

    auto set_rd = [&](Word value) {
        m_cpu.m_registers.set(inst.rd, value);
    };

    switch (inst.type) {
        using enum InstructionR::Type;

        case Add:
            set_rd(rs1 + rs2);
            break;

        case Sub:
            set_rd(rs1 - rs2);
            break;

        case Xor:
            set_rd(rs1 ^ rs2);
            break;

        case Or:
            set_rd(rs1 | rs2);
            break;

        case And:
            set_rd(rs1 & rs2);
            break;

        case Sll:
            set_rd(rs1 << rs2);
            break;

        case Srl:
            set_rd(rs1 >> rs2);
            break;

        case Sra:
            set_rd(sign_extend(rs1 >> rs2, sizeof(Word)*8));
            break;

        case Slt:
            set_rd(static_cast<SignedWord>(rs1) <
                   static_cast<SignedWord>(rs2) ? 1 : 0);
            break;

        case Sltu:
            set_rd(rs1 < rs2 ? 1 : 0);
            break;

    }
}

void Executor::operator()(const InstructionI& inst) {

    Word rs1 = m_cpu.m_registers.get(inst.rs1);
    Word imm = sign_extend(inst.imm, imm_encoding_size);

    auto set_rd = [&](Word value) {
        m_cpu.m_registers.set(inst.rd, value);
    };

    switch (inst.type) {
        using enum InstructionI::Type;

        case Addi: {
            set_rd(rs1 + imm);
        } break;

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
            uint8_t operand = extract_bits(imm, 0, 5);
            set_rd(sign_extend(rs1 >> operand, sizeof(Word)*8-operand));
        } break;

        case Slti:
            set_rd(static_cast<SignedWord>(rs1) <
                   static_cast<SignedWord>(imm) ? 1 : 0);
            break;

        case Sltiu:
            set_rd(rs1 < imm ? 1 : 0);
            break;

        case Lb:
            set_rd(sign_extend(extract_bits(m_cpu.m_memory.get(rs1 + imm), 0, 8), 8));
            break;

        case Lh:
            set_rd(sign_extend(extract_bits(m_cpu.m_memory.get(rs1 + imm), 0, 16), 16));
            break;

        case Lw:
            set_rd(sign_extend(extract_bits(m_cpu.m_memory.get(rs1 + imm), 0, 32), 32));
            break;

        case Lbu:
            set_rd(extract_bits(m_cpu.m_memory.get(rs1 + imm), 0, 8));
            break;

        case Lhu:
            set_rd(extract_bits(m_cpu.m_memory.get(rs1 + imm), 0, 16));
            break;

        case Jalr:
            set_rd(m_cpu.m_pc + sizeof(BinaryInstruction));
            m_cpu.m_pc = rs1 + imm;
            break;

        case Ecall:
            forward_syscall();
            break;

        case Ebreak:
            asm volatile ("int3");
            break;
    }
}

void Executor::operator()(const InstructionS& inst) {
    Word rs1 = m_cpu.m_registers.get(inst.rs1);
    Word rs2 = m_cpu.m_registers.get(inst.rs2);
    uint16_t imm = inst.imm;

    switch (inst.type) {
        using enum InstructionS::Type;

        case Sb:
            m_cpu.m_memory.set<uint8_t>(rs1+imm, extract_bits(rs2, 0, 8));
            break;

        case Sh:
            m_cpu.m_memory.set<uint16_t>(rs1+imm, extract_bits(rs2, 0, 16));
            break;

        case Sw:
            m_cpu.m_memory.set<uint32_t>(rs1+imm, extract_bits(rs2, 0, 32));
            break;

    }

}

void Executor::operator()(const InstructionB& inst) {

    auto rs1 = m_cpu.m_registers.get(inst.rs1);
    auto rs2 = m_cpu.m_registers.get(inst.rs2);
    uint32_t imm = inst.imm;

    switch (inst.type) {
        using enum InstructionB::Type;

        case Beq:
            if (rs1 == rs2)
                m_cpu.m_pc += imm;
            break;

        case Bne:
            if (rs1 != rs2)
                m_cpu.m_pc += imm;
            break;

        case Blt:
            if (static_cast<SignedWord>(rs1) < static_cast<SignedWord>(rs2))
                m_cpu.m_pc += imm;
            break;

        case Bge:
            if (static_cast<SignedWord>(rs1) >= static_cast<SignedWord>(rs2))
                m_cpu.m_pc += imm;
            break;

        case Bltu:
            if (rs1 < rs2)
                m_cpu.m_pc += imm;
            break;

        case Bgeu:
            if (rs1 >= rs2)
                m_cpu.m_pc += imm;
            break;

    }

}

void Executor::operator()(const InstructionU& inst) {

    uint32_t imm = inst.imm;

    auto set_rd = [&](Word value) {
        m_cpu.m_registers.set(inst.rd, value);
    };

    switch (inst.type) {
        using enum InstructionU::Type;

        case Lui:
            set_rd(imm << 12);
            break;

        case Auipc:
            set_rd(m_cpu.m_pc + (imm << 12));
            break;

    }
}

void Executor::operator()(const InstructionJ& inst) {
    uint32_t imm = sign_extend(inst.imm, 20);

    auto set_rd = [&](Word value) {
        m_cpu.m_registers.set(inst.rd, value);
    };

    switch (inst.type) {
        using enum InstructionJ::Type;

        case Jal:
            set_rd(m_cpu.m_pc + sizeof(BinaryInstruction));
            m_cpu.m_pc += imm;
            break;
    }

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
            log("Guest exited with status {}", status);
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
