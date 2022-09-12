
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    return new TCB();
}

void TCB::yield()
{
    __asm__ volatile ("ecall");
    //ovde se kupi  vrednost iz a0
}

void TCB::dispatch()
{
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    Riscv::popSppSpie();
    running->body();
    running->setFinished(true);
    TCB::yield();
}
