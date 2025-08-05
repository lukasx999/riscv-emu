#include <fstream>
#include <filesystem>
#include <optional>
#include <iterator>

#include <boost/process.hpp>
#include <boost/asio.hpp>

#include "util.hh"

namespace fs = std::filesystem;
namespace asio = boost::asio;
namespace proc = boost::process;

auto encode_instruction(std::string instruction)
-> std::optional<std::vector<BinaryInstruction>> {

    asio::io_context ctx;
    asio::writable_pipe pipe(ctx);

    auto tmp_path = fs::temp_directory_path();
    auto path = tmp_path / global_data.program_name;
    fs::create_directory(path);
    auto obj_path = path / "obj.o";
    auto bin_path = path / "bin";

    proc::process assembler(
        ctx,
        global_data.assembler_path,
        {"-o", obj_path.c_str()},
        proc::process_stdio(pipe, nullptr, nullptr)
    );

    asio::write(pipe, asio::buffer(std::move(instruction) + "\n"));
    pipe.close();
    assembler.wait();
    if (assembler.exit_code() != 0) return {};

    proc::process objcopy(
        ctx,
        global_data.objcopy_path,
        {"-O", "binary", "-j", ".text", obj_path.c_str(), bin_path.c_str()}
    );

    objcopy.wait();
    assert(objcopy.exit_code() == 0);

    std::ifstream bin(bin_path, std::ios::binary);

    std::vector<BinaryInstruction> instructions;
    std::vector raw_instructions(std::istreambuf_iterator(bin), {});
    assert(raw_instructions.size() % sizeof(BinaryInstruction) == 0);

    for (auto&& byte=raw_instructions.begin();
                byte != raw_instructions.end();
                byte+=sizeof(BinaryInstruction)) {
        instructions.push_back(*reinterpret_cast<BinaryInstruction*>(&*byte));
    }

    return instructions;
}

uint64_t extract_bits(uint64_t value, int start, int size) {
    uint64_t mask = 0;
    for (auto i = 0; i < size; ++i)
        mask |= 1ul << i;

    return (value >> start) & mask;
}

uint64_t set_bits(uint64_t value, int start, int size, bool bit) {
    uint64_t mask = 0;
    for (auto i = 0; i < size; ++i)
        mask |= uint64_t(1) << (i + start);

    if (bit)
        return value | mask;
    else
        return value & ~mask;
}

uint64_t sign_extend(uint64_t value, int size_bits) {
    bool sign = extract_bits(value, size_bits - 1, 1);
    return set_bits(value, size_bits, sizeof(uint64_t) * 8 - size_bits, sign);
}
