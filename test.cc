#include <catch2/catch_test_macros.hpp>

#include "decoder.hh"
#include "cpu.hh"
#include "memory.hh"
#include "main.hh"

TEST_CASE("cpu") {

    // TODO:
    // Memory memory;
    // CPU cpu(memory);
    //
    // SECTION("addi") {
    //     cpu.m_registers.set(Register::A1, 5);
    //     InstructionI inst { InstructionI::Type::Addi, Register::A0, Register::A1, 3 };
    //     cpu.execute(inst);
    //     REQUIRE(cpu.m_registers.get(Register::A0) == 8);
    // }
    //
    // SECTION("Xori") {
    //     cpu.m_registers.set(Register::A1, 5);
    //     InstructionI inst { InstructionI::Type::Xori, Register::A0, Register::A1, 3 };
    //     cpu.execute(inst);
    //     REQUIRE(cpu.m_registers.get(Register::A0) == 6);
    // }

}

TEST_CASE("utils") {

    SECTION("extract_bits") {
        REQUIRE(extract_bits(0b0000111000, 3, 3) == 0b111);
        REQUIRE(extract_bits(0b1, 0, 1) == 0b1);
        REQUIRE(extract_bits(0b100000, 5, 1) == 0b1);
    }

    SECTION("set_bits") {
        REQUIRE(set_bits(0b0, 0, 1, true) == 0b1);
        REQUIRE(set_bits(0b000, 0, 3, true) == 0b111);
        REQUIRE(set_bits(0b001, 1, 2, true) == 0b111);
        REQUIRE(set_bits(0b0001111, 2, 5, true) == 0b1111111);
        REQUIRE(set_bits(0b1, 0, 1, false) == 0b0);
        REQUIRE(set_bits(0b110, 1, 2, false) == 0b000);
        REQUIRE(set_bits(0b111100, 3, 3, false) == 0b000100);
    }

}

TEST_CASE("decoder") {

    SECTION("addi") {
        // addi t2,t0,45
        auto inst = Decoder::decode(0x02d28393);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto i = std::get<InstructionI>(inst);
        REQUIRE(i.m_imm == 45);
        REQUIRE(i.m_type == InstructionI::Type::Addi);
        REQUIRE(i.m_rd == Register::T2);
        REQUIRE(i.m_rs1 == Register::T0);
    }

    SECTION("xori") {
        // xori s2,s11,2000
        auto inst = Decoder::decode(0x7d0dc913);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto i = std::get<InstructionI>(inst);
        REQUIRE(i.m_imm == 2000);
        REQUIRE(i.m_type == InstructionI::Type::Xori);
        REQUIRE(i.m_rd == Register::S2);
        REQUIRE(i.m_rs1 == Register::S11);
    }

    SECTION("ori") {
        // ori s0,s1,167
        auto inst = Decoder::decode(0x0a74e413);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto i = std::get<InstructionI>(inst);
        REQUIRE(i.m_imm == 167);
        REQUIRE(i.m_type == InstructionI::Type::Ori);
        REQUIRE(i.m_rd == Register::S0);
        REQUIRE(i.m_rs1 == Register::S1);
    }

    SECTION("andi") {
        // andi t2,a2,1000
        auto inst = Decoder::decode(0x3e867393);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto i = std::get<InstructionI>(inst);
        REQUIRE(i.m_imm == 1000);
        REQUIRE(i.m_type == InstructionI::Type::Andi);
        REQUIRE(i.m_rd == Register::T2);
        REQUIRE(i.m_rs1 == Register::A2);
    }

    SECTION("srli") {
        // srli t4,t1,0x2
        auto inst = Decoder::decode(0x00235e93);
        REQUIRE(std::holds_alternative<InstructionI>(inst));
        auto i = std::get<InstructionI>(inst);
        REQUIRE(i.m_imm == 2);
        REQUIRE(i.m_type == InstructionI::Type::Srli);
        REQUIRE(i.m_rd == Register::T4);
        REQUIRE(i.m_rs1 == Register::T1);
    }

    // SECTION("srai") {
    //     // srai t5,t1,0x2
    //     auto inst = Decoder::decode(0x40235f13);
    //     REQUIRE(std::holds_alternative<InstructionI>(inst));
    //     auto i = std::get<InstructionI>(inst);
    //     REQUIRE(i.m_imm == 2);
    //     REQUIRE(i.m_type == InstructionI::Type::Srai);
    //     REQUIRE(i.m_rd == Register::T5);
    //     REQUIRE(i.m_rs1 == Register::T1);
    // }

}
