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
        log("{}", inst);
    }
}

[[nodiscard]] BinaryInstruction Machine::fetch() const {
    return m_memory.get<BinaryInstruction>(m_cpu.m_pc);
}

void Machine::load_binary(const ElfExecutable& exec) {

    // load segments in elf binaries are guaranteed to have ordered
    // virtual addresses, in ascending order, so we can take the address
    // of the first one as an offset

    auto segments = exec.get_loadable_segments();

    size_t program_offset = segments.front().m_virt_addr;

    size_t offset = 0;
    for (auto& segment : segments) {

        log("Segment Address: {:x}", segment.m_virt_addr);
        log("Segment Size: {:x}", segment.m_span.size());

        size_t size = segment.m_span.size();
        size_t addr = segment.m_virt_addr - program_offset;
        std::memcpy(m_memory.get_data()+addr, segment.m_span.data(), size);
        offset += size;
    }

    log("{} Segment(s) loaded", segments.size());
    log("Binary loaded at {:x}", program_offset);
    log("Entrypoint: {:x}", exec.get_entry_point());

    m_cpu.m_pc = exec.get_entry_point() - program_offset;
    m_cpu.m_registers.set(Register::Sp, offset);
    m_cpu.m_registers.set(Register::Fp, offset);
}
