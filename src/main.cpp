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

Ksemaphore* semA;


void workerBodyA(void* arg) {

//    join(TCB::running);

    for (uint64 i = 0; i < 5; i++) {

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

    join(TCB::running);

    for (uint64 i = 0; i < 5; i++) {
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

    for (uint64 i = 0; i < 5; i++) {
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

    TCB::running= TCB::createThread(nullptr, nullptr);

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t threads[3];
    thread_create(&threads[0], workerBodyA, nullptr);
    printString("ThreadA created\n");

    thread_create(&threads[1], workerBodyB, nullptr);
    printString("ThreadB created\n");

    thread_create(&threads[2], workerBodyC, nullptr);
    printString("ThreadC created\n");

    while (!Scheduler::isEmpty()) {
        thread_dispatch();
    }

    TCB::semWaitAllThreads->signal();
    while (!(ffinishedA && ffinishedB && ffinishedC)) {
        thread_dispatch();
    }

//    userMain();

    return 0;

}


