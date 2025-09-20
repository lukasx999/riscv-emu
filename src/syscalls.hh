#pragma once

#include <unistd.h>
#include <sys/mman.h>

#include "util.hh"
#include "cpu.hh"

#define SYSCALL_NODISCARD [[nodiscard("return value of syscall should be forwarded to target system")]]

namespace syscalls {

SYSCALL_NODISCARD int fstat(CPU& cpu, int fd, Word statbuf_addr);

SYSCALL_NODISCARD inline int write(int fd, Word buf, size_t len) {
    return ::write(fd, reinterpret_cast<const char*>(buf), len);
}

SYSCALL_NODISCARD inline int close(int fd) {
    switch (fd) {
        // dont close host fd's, as the emulator still needs to log stuff
        // TODO: maybe there's a better way of handling this, so that the guest has its own set of fd's
        case STDOUT_FILENO:
        case STDIN_FILENO:
        case STDERR_FILENO:
            return 0;
            break;

        default:
            return ::close(fd);
            break;
    }
}

// TODO: doesnt quite work yet, probably needs page alignment
SYSCALL_NODISCARD inline int brk(CPU& cpu, Word new_brk) {

    // TODO: should brk() return the current program break when new_brk == 0?
    // it only seems to do this when running with strace

    std::println("new brk: {:#x}", new_brk);

    auto new_addr = reinterpret_cast<void*>(new_brk);
    auto old_addr = cpu.get_program_break();

    if (new_addr > old_addr) {
        // grow the heap

        ptrdiff_t size = static_cast<char*>(new_addr) - static_cast<char*>(old_addr);

        auto ret = ::mmap(
            old_addr,
            size,
            PROT_WRITE | PROT_READ,
            MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
            -1,
            0
        );

        if (ret == MAP_FAILED) {
            errno = ENOMEM;
            return -1;
        }

        cpu.set_program_break(new_addr);
        return 0;

    } else if (new_addr < old_addr) {
        // shrink the heap

        // ptrdiff_t size = static_cast<char*>(old_addr) - static_cast<char*>(new_addr);
        // int err = ::munmap(new_addr, size);
        //
        // if (err == -1) {
        //     errno = ENOMEM;
        //     return -1;
        // }

        return 0;

    } else if (new_addr == old_addr) {
        // do nothing
        return 0;

    } else {
        throw std::runtime_error("unreachable");
    }

}

} // namespace syscalls
