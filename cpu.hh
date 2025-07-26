#pragma once

#include <cassert>
#include <cstdlib>
#include <bit>
#include <print>
#include <cstring>
#include <stdexcept>
#include <utility>
#include <array>
#include <variant>

#include "main.hh"
#include "decoder.hh"
#include "register.hh"

// TODO: proper error handling
// TODO: decoder class
// TODO: unit testing






class CPU {

    struct InstructionVisitor {
        CPU& m_cpu;

        void operator()(const InstructionI& inst) {
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

        void operator()(const InstructionR& inst) {
            switch (inst.m_type) {
                using enum InstructionR::Type;
                default: throw std::runtime_error("unimplemented");
            }
        }

        void operator()(const InstructionU& inst) {
            switch (inst.m_type) {
                using enum InstructionU::Type;

                case Auipc: {
                    auto value = m_cpu.m_pc + (inst.m_imm << 12);
                    m_cpu.m_registers.set(inst.m_rd, value);
                } break;

                default: throw std::runtime_error("unimplemented");
            }
        }

    private:
        void forward_syscall() const {
            enum Syscall { Exit=93 };

            auto syscall_nr = m_cpu.m_registers.get(Register::A7);
            switch (syscall_nr) {
                case Syscall::Exit:
                    auto status = m_cpu.m_registers.get(Register::A0);
                    exit(status);
                    break;
            }
        }

    };

public:
    uint64_t m_pc;
    Registers m_registers;
    Decoder m_decoder;

    CPU() = default;

    void execute(Instruction instruction) {
        std::visit(InstructionVisitor(*this), instruction);
    }

    [[nodiscard]] Instruction decode(BinaryInstruction instruction) const {
        return m_decoder.decode(instruction);
    }

};
