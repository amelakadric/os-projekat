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

    userMain(); // puca u dispatch kad se menja kontekst scause 5, ne znam je li scheduler::get=null? za cpp api niti

    return 0;

}


