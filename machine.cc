#include <cstdlib>
#include <cstring>
#include <print>
#include <vector>

#include "machine.hh"
#include "fmt.hh"

void Machine::run() {
    while (true) {
        BinaryInstruction raw_inst = fetch();
        Instruction inst = m_cpu.m_decoder.decode(raw_inst);
        m_cpu.execute(inst);
        m_cpu.m_pc += sizeof(BinaryInstruction);
        std::println("{}", inst);
    }
}

[[nodiscard]] BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.m_pc);
}

void Machine::load_binary(const ElfExecutable& exec) {

    auto segments = exec.get_loadable_segments();

    // TODO: if binary is PIC, load it anywhere, if not:
    // either load emu (pic) and binary (non-pic) at the same time
    // or load emu at higher address so there are no address conflicts

    // just remove offset 0x40000 from no-pie binaries in the cpu

    size_t program_offset = segments.front().m_virt_addr;
    m_memory.set_offset(program_offset);

    size_t offset = 0;
    for (auto& segment : segments) {

        std::println("Segment Address: {:x}", segment.m_virt_addr);
        std::println("Segment Size: {:x}", segment.m_span.size());

        size_t size = segment.m_span.size();
        size_t addr = segment.m_virt_addr - program_offset;
        std::memcpy(m_memory.get_data()+addr, segment.m_span.data(), size);
        offset += size;
    }

    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses


    std::println("{} Segment(s) loaded", segments.size());
    std::println("Binary loaded at {:x}", program_offset);
    std::println("Entrypoint: {:x}", exec.get_entry_point());

    m_cpu.m_pc = exec.get_entry_point() - program_offset;
    m_cpu.m_registers.set(Register::Sp, offset);
    m_cpu.m_registers.set(Register::Fp, offset);
}
