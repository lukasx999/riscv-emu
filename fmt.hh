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
                case Addi:   return STRINGIFY(Addi);
                case Xori:   return STRINGIFY(Xori);
                case Ori:    return STRINGIFY(Ori);
                case Andi:   return STRINGIFY(Andi);
                case Slli:   return STRINGIFY(Slli);
                case Srli:   return STRINGIFY(Srli);
                case Srai:   return STRINGIFY(Srai);
                case Slti:   return STRINGIFY(Slti);
                case Sltiu:  return STRINGIFY(Sltiu);
                case Lb:     return STRINGIFY(Lb);
                case Lh:     return STRINGIFY(Lh);
                case Lw:     return STRINGIFY(Lw);
                case Lbu:    return STRINGIFY(Lbu);
                case Lhu:    return STRINGIFY(Lhu);
                case Jalr:   return STRINGIFY(Jalr);
                case Ecall:  return STRINGIFY(Ecall);
                case Ebreak: return STRINGIFY(Ebreak);
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
                case Add:  return STRINGIFY(Add);
                case Sub:  return STRINGIFY(Sub);
                case Xor:  return STRINGIFY(Xor);
                case Or:   return STRINGIFY(Or);
                case And:  return STRINGIFY(And);
                case Sll:  return STRINGIFY(Sll);
                case Srl:  return STRINGIFY(Srl);
                case Sra:  return STRINGIFY(Sra);
                case Slt:  return STRINGIFY(Slt);
                case Sltu: return STRINGIFY(Sltu);
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
                case Lui:   return STRINGIFY(Lui);
                case Auipc: return STRINGIFY(Auipc);
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
struct std::formatter<InstructionS::Type> : std::formatter<std::string> {
    auto format(const InstructionS::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionS::Type;
                case Sb: return STRINGIFY(Sb);
                case Sh: return STRINGIFY(Sh);
                case Sw: return STRINGIFY(Sw);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionS> : std::formatter<std::string> {
    auto format(const InstructionS& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rs1: {}, rs2: {}, imm: {} }}",
                               inst.m_type, inst.m_rs1, inst.m_rs2, inst.m_imm);
        return std::formatter<std::string>::format(fmt, ctx);
    }
};

template <>
struct std::formatter<InstructionB::Type> : std::formatter<std::string> {
    auto format(const InstructionB::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionB::Type;
                case Beq:  return STRINGIFY(Beq);
                case Bne:  return STRINGIFY(Bne);
                case Blt:  return STRINGIFY(Blt);
                case Bge:  return STRINGIFY(Bge);
                case Bltu: return STRINGIFY(Bltu);
                case Bgeu: return STRINGIFY(Bgeu);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionB> : std::formatter<std::string> {
    auto format(const InstructionB& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rs1: {}, rs2: {}, imm: {} }}",
                               inst.m_type, inst.m_rs1, inst.m_rs2, inst.m_imm);
        return std::formatter<std::string>::format(fmt, ctx);
    }
};

template <>
struct std::formatter<InstructionJ::Type> : std::formatter<std::string> {
    auto format(const InstructionJ::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionJ::Type;
                case Jal:  return STRINGIFY(Jal);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionJ> : std::formatter<std::string> {
    auto format(const InstructionJ& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rd: {}, imm: {} }}",
                               inst.m_type, inst.m_rd, inst.m_imm);
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
