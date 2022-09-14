#include "../lib/hw.h"
#include "../lib/console.h"
//#include "../h/MemoryAllocator.hpp"
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

int main() {

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);

    return 0;

}