//#include "../lib/hw.h"
//#include "../lib/console.h"
//#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

int main() {
    MemoryAllocator::initMemoryAllocator();

    TCB::running= TCB::createThread(nullptr, nullptr);

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();

    return 0;

}


