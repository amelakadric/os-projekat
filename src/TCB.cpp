
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
//    TCB* tcb = (TCB*)__mem_alloc(sizeof (TCB));
//    tcb->body=body;
//    tcb->arg=arg;
//    tcb->stack= (body!=nullptr? (uint64*) __mem_alloc(DEFAULT_STACK_SIZE) : nullptr);
//    tcb->context={(uint64) &threadWrapper,
//                     tcb->stack != nullptr ? (uint64) &tcb->stack[DEFAULT_STACK_SIZE] : 0
//                    };
//    tcb->timeSlice=DEFAULT_TIME_SLICE;
//    tcb->finished=false;
    return new TCB(body, arg, DEFAULT_TIME_SLICE);
}

void TCB::yield()
{
    Riscv::pushRegisters();

    TCB::dispatch();

    Riscv::popRegisters();

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
    running->body(running->arg);
    running->setFinished(true);
    TCB::yield();
}

int TCB::exitThread() {
    running->setFinished(true);
    TCB *old = running;
    running = Scheduler::get();
    timeSliceCounter=0;
    TCB::contextSwitch(&old->context, &running->context);
    if (running== nullptr)return -1;
    return 0;
}
