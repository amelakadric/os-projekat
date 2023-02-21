//#include "../lib/hw.h"
//#include "../lib/console.h"
//#include "../h/MemoryAllocator.hpp"
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"
#include "../test/printing.hpp"

void userMain();

bool ffinishedA = false;
bool ffinishedB = false;
bool ffinishedC = false;
thread_t threads[3];




void workerBodyA(void* arg) {


//    join(threads[1]);
//    __putc('Q');
    for (uint64 i = 0; i < 2; i++) {

        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running)); printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
//            thread_dispatch();
        }
    }
    printString("A finished!\n");
    ffinishedA = true;
}

void workerBodyB(void* arg) {

    for (uint64 i = 0; i < 2; i++) {
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
//            thread_dispatch();
        }
    }
    printString("B finished!\n");
    ffinishedB = true;
}

void workerBodyC(void* arg) {
    TCB::running->kill(threads[0]);

    for (uint64 i = 0; i < 2; i++) {
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
//            thread_dispatch();
        }
    }
    printString("C finished!\n");
    ffinishedC = true;
}


int main() {
    MemoryAllocator::initMemoryAllocator();


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    TCB::running= TCB::createThread(nullptr, nullptr);


    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");

    while (!(ffinishedB && ffinishedC)) {
        thread_dispatch();
    }


//    userMain();

    return 0;

}


