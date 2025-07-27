#pragma once

#include <cassert>
#include <format>
#include <stdexcept>
#include <variant>

#include "main.hh"
#include "register.hh"


static constexpr int opcode_encoding_size = 7;
static constexpr int register_encoding_size = 5;
static constexpr int funct3_encoding_size = 3;
static constexpr int funct7_encoding_size = 7;
static constexpr int imm_encoding_size = 12;
static constexpr int imm_large_encoding_size = 20;

struct InstructionI {
    enum class Type {
        // Arithmetic Immediate
        Addi, Xori, Ori, Andi, Slli, Srli, Srai, Slti, Sltiu,
        // Load
        Lb, Lh, Lw, Lbu, Lhu,
        // Jump
        Jalr,
        // Environment
        Ecall, Ebreak,
    } m_type;
    Register m_rd;
    Register m_rs1;
    int16_t m_imm;
};

struct [[gnu::packed]] RawInstructionI {
    // TODO: use global constants
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int imm    : imm_encoding_size;
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

struct InstructionR {
    enum class Type {
        Add, Sub, Xor, Or, And, Sll, Srl, Sra, Slt, Sltu
    } m_type;
    Register m_rd;
    Register m_rs1;
    Register m_rs2;
};

struct [[gnu::packed]] RawInstructionR {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int funct3 : funct3_encoding_size;
    unsigned int rs1    : register_encoding_size;
    unsigned int rs2    : register_encoding_size;
    unsigned int funct7 : funct7_encoding_size;
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

struct InstructionU {
    enum class Type {
        Lui, Auipc,
    } m_type;
    Register m_rd;
    uint32_t m_imm;
};

struct [[gnu::packed]] RawInstructionU {
    unsigned int opcode : opcode_encoding_size;
    unsigned int rd     : register_encoding_size;
    unsigned int imm    : imm_large_encoding_size;
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

enum class InstructionFormat {
    RType, IType, SType, BType, UType, JType,
};

struct DecodingException : std::runtime_error {
    explicit DecodingException(const char* msg)
    : std::runtime_error(msg)
    { }
};

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
