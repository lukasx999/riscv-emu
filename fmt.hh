#pragma once

#include <format>

#include "decoder.hh"

// "use" the value by casting to void, so language servers will
// rename the argument of the macro
#define STRINGIFY(value) (static_cast<void>(value), #value)

template <>
struct std::formatter<InstructionI::Type> : std::formatter<std::string> {
    auto format(const InstructionI::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionI::Type;
                case Addi:   return "Addi";
                case Xori:   return "Xori";
                case Ori:    return "Ori";
                case Andi:   return "Andi";
                case Slli:   return "Slli";
                case Srli:   return "Srli";
                case Srai:   return "Srai";
                case Slti:   return "Slti";
                case Sltiu:  return "Sltiu";
                case Lb:     return "Lb";
                case Lh:     return "Lh";
                case Lw:     return "Lw";
                case Lbu:    return "Lbu";
                case Lhu:    return "Lhu";
                case Jalr:   return "Jalr";
                case Ecall:  return "Ecall";
                case Ebreak: return "Ebreak";
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionI> : std::formatter<std::string> {
    auto format(const InstructionI& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rd: {}, rs1: {}, imm: {} }}",
                               inst.m_type, inst.m_rd, inst.m_rs1, inst.m_imm);
        return std::formatter<std::string>::format(fmt, ctx);
    }
};

template <>
struct std::formatter<InstructionR::Type> : std::formatter<std::string> {
    auto format(const InstructionR::Type& type, std::format_context& ctx) const {

        auto str = [&] {
            switch (type) {
                using enum InstructionR::Type;
                case Add:  return "Add";
                case Sub:  return "Sub";
                case Xor:  return "Xor";
                case Or:   return "Or";
                case And:  return "And";
                case Sll:  return "Sll";
                case Srl:  return "Srl";
                case Sra:  return "Sra";
                case Slt:  return "Slt";
                case Sltu: return "Sltu";
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionR> : std::formatter<std::string> {
    auto format(const InstructionR& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rd: {}, rs1: {}, rs2: {} }}",
                               inst.m_type, inst.m_rd, inst.m_rs1, inst.m_rs2);
        return std::formatter<std::string>::format(fmt, ctx);
    }
};

template <>
struct std::formatter<InstructionU::Type> : std::formatter<std::string> {
    auto format(const InstructionU::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionU::Type;
                case Lui: return "Lui";
                case Auipc: return "Auipc";
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionU> : std::formatter<std::string> {
    auto format(const InstructionU& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rd: {}, imm: {} }}", inst.m_type,
                               inst.m_rd, inst.m_imm);
        return std::formatter<std::string>::format(fmt, ctx);
    }
};

template <>
struct std::formatter<Instruction> : std::formatter<std::string> {
    auto format(const Instruction& inst, std::format_context& ctx) const {

        std::string fmt = std::visit([](const auto& inst) {
            return std::format("{}", inst);
        }, inst);

        return std::formatter<std::string>::format(fmt, ctx);
    }
};
