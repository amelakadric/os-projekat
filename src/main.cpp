#include "../lib/hw.h"
#include "../lib/console.h"
//#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

void userMain();

int main() {

    TCB::running= TCB::createThread(nullptr, nullptr);

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    userMain();

    return 0;

}