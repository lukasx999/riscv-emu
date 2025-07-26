#pragma once

#include <cassert>
#include <format>
#include <stdexcept>
#include <variant>

#include "main.hh"
#include "register.hh"



struct InstructionI {
    enum class Type {
        // Arithmetic Immediate
        Addi, Xori, Ori, Andi, Slli, Srli, Srai, Slti, Sltiu,
        // Load
        Lb, Lh, Lw, Lbu, Lhu,
        // Environment
        Ecall, Ebreak,
    } m_type;
    Register m_rd;
    Register m_rs1;
    int16_t m_imm;
};

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

struct [[gnu::packed]] RawInstructionI {
    // TODO: use global constants
    unsigned int opcode : 7;
    unsigned int rd     : 5;
    unsigned int funct3 : 3;
    unsigned int rs1    : 5;
    unsigned int imm    : 12;
};

struct InstructionR {
    enum class Type {
    } m_type;
    Register m_rd;
    Register m_rs1;
    Register m_rs2;
};

struct InstructionU {
    enum class Type {
        // Upper
        Lui, Auipc,
    } m_type;
    Register m_rd;
    uint32_t m_imm;
};

struct [[gnu::packed]] RawInstructionU {
    unsigned int opcode : 7;
    unsigned int rd     : 5;
    unsigned int imm    : 20;
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

using Instruction = std::variant<InstructionI, InstructionU>;

template <>
struct std::formatter<Instruction> : std::formatter<std::string> {
    auto format(const Instruction& inst, std::format_context& ctx) const {

        std::string fmt = std::visit([](const auto& inst) {
            return std::format("{}", inst);
        }, inst);

        return std::formatter<std::string>::format(fmt, ctx);
    }
};





enum class InstructionFormat { RType, IType, SType, BType, UType, JType };

class Decoder {
public:
    Decoder() = default;

    [[nodiscard]] static Instruction decode(BinaryInstruction instruction);

private:
    [[nodiscard]] static InstructionFormat decode_format(BinaryInstruction inst);
    [[nodiscard]] static Instruction decode_itype(BinaryInstruction inst);
    [[nodiscard]] static Instruction decode_utype(BinaryInstruction inst);
    [[nodiscard]] static InstructionU::Type parse_utype(RawInstructionU inst);
    [[nodiscard]] static InstructionI::Type parse_itype(RawInstructionI inst);

    // `start` begins at 0
    [[nodiscard]] static constexpr uint64_t extract_bits(uint64_t value, int start, int size);

};
