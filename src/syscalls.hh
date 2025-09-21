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

SYSCALL_NODISCARD inline Word brk(CPU& cpu, Word new_brk) {

    // TODO: create a util.hh wrapper for aligning to the NEXT page boundary
    auto new_addr = reinterpret_cast<void*>(align_to_page_size(new_brk)+getpagesize());
    auto old_addr = reinterpret_cast<void*>(align_to_page_size(reinterpret_cast<size_t>(cpu.get_program_break()))+getpagesize());

    // brk() syscall differs from the libc wrapper, in that it returns
    // the current program break when calling it with NULL
    // `man 2 brk` documents the libc wrapper, not the raw syscall!
    if (new_brk == 0)
        return reinterpret_cast<Word>(old_addr);

    if (new_addr > old_addr) {
        // grow the heap

        ptrdiff_t size = static_cast<char*>(new_addr) - static_cast<char*>(old_addr);

        // TODO: handle mmap() failure
        [[gnu::unused]] void* unused_ret = mmap(
            old_addr,
            size,
            PROT_WRITE | PROT_READ,
            MAP_ANONYMOUS | MAP_FIXED_NOREPLACE | MAP_PRIVATE,
            -1,
            0
        );

        cpu.set_program_break(new_addr);

    } else if (new_addr < old_addr) {
        // TODO:
        // shrink the heap

        // ptrdiff_t size = static_cast<char*>(old_addr) - static_cast<char*>(new_addr);
        // int err = ::munmap(new_addr, size);
        //
        // if (err == -1) {
        //     errno = ENOMEM;
        //     return -1;
        // }

    }

    return new_brk;
}

} // namespace syscalls
