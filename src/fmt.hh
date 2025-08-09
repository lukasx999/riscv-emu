#pragma once

#include <format>
#include <string>

#include "decoder.hh"
#include "register.hh"

#define COLOR_RED "\033[1;31m"
#define COLOR_BLUE "\033[1;34m"
#define COLOR_MAGENTA "\033[1;35m"
#define COLOR_END "\033[0m"

#define COLOR_IMM COLOR_BLUE
#define COLOR_TYPE COLOR_RED
#define COLOR_RD COLOR_MAGENTA
#define COLOR_RS1 COLOR_MAGENTA
#define COLOR_RS2 COLOR_MAGENTA

// "use" the value by casting to void, so language servers will
// rename the argument of the macro
#define STRINGIFY(value) (static_cast<void>(value), #value)

template <>
struct std::formatter<Register> : std::formatter<std::string> {

    auto format(const Register& reg, std::format_context& ctx) const {
        auto str = [&] {
            switch (reg) {
                using enum Register;
                case Zero: return STRINGIFY(Zero);
                case Ra:   return STRINGIFY(Ra);
                case Sp:   return STRINGIFY(Sp);
                case Gp:   return STRINGIFY(Gp);
                case Tp:   return STRINGIFY(Tp);
                case T0:   return STRINGIFY(T0);
                case T1:   return STRINGIFY(T1);
                case T2:   return STRINGIFY(T2);
                case Fp:   return STRINGIFY(Fp);
                case S1:   return STRINGIFY(S1);
                case A0:   return STRINGIFY(A0);
                case A1:   return STRINGIFY(A1);
                case A2:   return STRINGIFY(A2);
                case A3:   return STRINGIFY(A3);
                case A4:   return STRINGIFY(A4);
                case A5:   return STRINGIFY(A5);
                case A6:   return STRINGIFY(A6);
                case A7:   return STRINGIFY(A7);
                case S2:   return STRINGIFY(S2);
                case S3:   return STRINGIFY(S3);
                case S4:   return STRINGIFY(S4);
                case S5:   return STRINGIFY(S5);
                case S6:   return STRINGIFY(S6);
                case S7:   return STRINGIFY(S7);
                case S8:   return STRINGIFY(S8);
                case S9:   return STRINGIFY(S9);
                case S10:  return STRINGIFY(S10);
                case S11:  return STRINGIFY(S11);
                case T3:   return STRINGIFY(T3);
                case T4:   return STRINGIFY(T4);
                case T5:   return STRINGIFY(T5);
                case T6:   return STRINGIFY(T6);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionI::Type> : std::formatter<std::string> {
    auto format(const InstructionI::Type& type, std::format_context& ctx) const {
        auto str = [&] {
            switch (type) {
                using enum InstructionI::Type;
                case Addi:   return STRINGIFY(Addi);
                case Addiw:  return STRINGIFY(Addiw);
                case Xori:   return STRINGIFY(Xori);
                case Ori:    return STRINGIFY(Ori);
                case Andi:   return STRINGIFY(Andi);
                case Slli:   return STRINGIFY(Slli);
                case Slliw:  return STRINGIFY(Slliw);
                case Srli:   return STRINGIFY(Srli);
                case Srai:   return STRINGIFY(Srai);
                case Slti:   return STRINGIFY(Slti);
                case Sltiu:  return STRINGIFY(Sltiu);
                case Lb:     return STRINGIFY(Lb);
                case Lh:     return STRINGIFY(Lh);
                case Lw:     return STRINGIFY(Lw);
                case Ld:     return STRINGIFY(Ld);
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
        // TODO:
        // auto fmt = std::format("{{ type: " COLOR_TYPE "{}" COLOR_END ", rd: " COLOR_RD "{}" COLOR_END ", rs1: " COLOR_RS1 "{}" COLOR_END ", imm: " COLOR_IMM "{}" COLOR_END " }}",
        //                        inst.type, inst.rd, inst.rs1, inst.imm);
        auto fmt = std::format("{{ type: {}, rd: {}, rs1: {}, imm: {} }}",
                               inst.type, inst.rd, inst.rs1, inst.imm);
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
                case Sllw: return STRINGIFY(Sllw);
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
                               inst.type, inst.rd, inst.rs1, inst.rs2);
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
        auto fmt = std::format("{{ type: {}, rd: {}, imm: {} }}", inst.type,
                               inst.rd, inst.imm);
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
                case Sd: return STRINGIFY(Sd);
            };
        }();
        return std::formatter<std::string>::format(std::format("{}", str), ctx);
    }
};

template <>
struct std::formatter<InstructionS> : std::formatter<std::string> {
    auto format(const InstructionS& inst, std::format_context& ctx) const {
        auto fmt = std::format("{{ type: {}, rs1: {}, rs2: {}, imm: {} }}",
                               inst.type, inst.rs1, inst.rs2, inst.imm);
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
                               inst.type, inst.rs1, inst.rs2, inst.imm);
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
                               inst.type, inst.rd, inst.imm);
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

