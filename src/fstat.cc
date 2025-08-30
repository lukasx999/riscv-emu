// the reason this method is defined in a single file, is to not bloat other files
// with the headers/namespaces/macros in this file
#include <print>

#include "util.hh"
#include "cpu.hh"
#include "syscalls.hh"

#include <unistd.h>

// has to be included before sys/stat.h
namespace linux_generic {
#include <asm-generic/stat.h>
}

#include <sys/stat.h>

// access struct stat members from asm-generic/stat.h will be expanded, we dont want that
#undef st_atime
#undef st_ctime
#undef st_mtime

void SyscallWrappers::fstat(int fd, Word statbuf_addr) {

    struct stat statbuf{};
    set_ret(::fstat(fd, &statbuf));

    // NOTE: linux struct stat definitions differ for x86-64 and riscv
    // riscv linux uses the generic struct stat definition, while x86 uses a specilized one

    // write the result of fstat() to the host definition of struct stat,
    // translate it to the riscv one, then write it to the guest's memory
    linux_generic::stat rv_statbuf{};

    rv_statbuf.st_dev = statbuf.st_dev;
    rv_statbuf.st_ino = statbuf.st_ino;
    rv_statbuf.st_nlink = statbuf.st_nlink;
    rv_statbuf.st_mode = statbuf.st_mode;
    rv_statbuf.st_uid = statbuf.st_uid;
    rv_statbuf.st_gid = statbuf.st_gid;
    rv_statbuf.st_rdev = statbuf.st_rdev;
    rv_statbuf.st_size = statbuf.st_size;
    rv_statbuf.st_blksize = statbuf.st_blksize;
    rv_statbuf.st_blocks = statbuf.st_blocks;
    rv_statbuf.st_atime = statbuf.st_atim.tv_sec;
    rv_statbuf.st_mtime = statbuf.st_mtim.tv_sec;
    rv_statbuf.st_ctime = statbuf.st_ctim.tv_sec;
    rv_statbuf.st_atime_nsec = statbuf.st_atim.tv_nsec;
    rv_statbuf.st_mtime_nsec = statbuf.st_mtim.tv_nsec;
    rv_statbuf.st_ctime_nsec = statbuf.st_ctim.tv_nsec;

    m_cpu.m_memory.set<linux_generic::stat>(statbuf_addr, rv_statbuf);
}
