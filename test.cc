#include <catch2/catch_test_macros.hpp>

#include "decoder.hh"
#include "cpu.hh"
#include "memory.hh"

TEST_CASE("cpu") {

    Memory memory;
    CPU cpu(memory);

    cpu.m_registers.set(Register::A1, 5);
    InstructionI inst { InstructionI::Type::Addi, Register::A0, Register::A1, 3 };
    cpu.execute(inst);
    REQUIRE(cpu.m_registers.get(Register::A0) == 8);

}

TEST_CASE("decoder") {

    SECTION("addi") {
        // addi t2,t0,45
        auto inst = Decoder::decode(0x02d28393);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto addi = std::get<InstructionI>(inst);
        REQUIRE(addi.m_imm == 45);
        REQUIRE(addi.m_type == InstructionI::Type::Addi);
        REQUIRE(addi.m_rd == Register::T2);
        REQUIRE(addi.m_rs1 == Register::T0);
    }

    SECTION("xori") {
        // xori s2,s11,2000
        auto inst = Decoder::decode(0x7d0dc913);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto xori = std::get<InstructionI>(inst);
        REQUIRE(xori.m_imm == 2000);
        REQUIRE(xori.m_type == InstructionI::Type::Xori);
        REQUIRE(xori.m_rd == Register::S2);
        REQUIRE(xori.m_rs1 == Register::S11);
    }

    SECTION("ori") {
        // ori s0,s1,167
        auto inst = Decoder::decode(0x0a74e413);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto xori = std::get<InstructionI>(inst);
        REQUIRE(xori.m_imm == 167);
        REQUIRE(xori.m_type == InstructionI::Type::Ori);
        REQUIRE(xori.m_rd == Register::S0);
        REQUIRE(xori.m_rs1 == Register::S1);
    }

    SECTION("andi") {
        // andi t2,a2,1000
        auto inst = Decoder::decode(0x3e867393);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto xori = std::get<InstructionI>(inst);
        REQUIRE(xori.m_imm == 1000);
        REQUIRE(xori.m_type == InstructionI::Type::Andi);
        REQUIRE(xori.m_rd == Register::T2);
        REQUIRE(xori.m_rs1 == Register::A2);
    }

}
