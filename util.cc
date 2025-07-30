#include "util.hh"

bool enable_logging = false;

uint64_t extract_bits(uint64_t value, int start, int size) {
    uint64_t mask = 0;
    for (auto i = 0; i < size; ++i)
        mask |= 1ul << i;

    return (value >> start) & mask;
}

uint64_t set_bits(uint64_t value, int start, int size, bool bit) {
    uint64_t mask = 0;
    for (auto i = 0; i < size; ++i)
        mask |= 1ul << (i + start);

    if (bit)
        return value | mask;
    else
        return value & ~mask;
}

uint64_t sign_extend(uint64_t value, int size_bits) {
    bool sign = extract_bits(value, size_bits - 1, 1);
    return set_bits(value, size_bits, sizeof(uint64_t) * 8 - size_bits, sign);
}
