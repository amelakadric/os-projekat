
#include "../h/TCB.hpp"
#include "../h/riscv.hpp"

TCB *TCB::running = nullptr;
Ksemaphore* TCB::semWaitAllThreads = Ksemaphore::createSemaphore(0);

uint64 TCB::timeSliceCounter = 0;

uint64 TCB::threadId=0;

TCB *TCB::createThread(Body body, void* arg)
{
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    t->sem = Ksemaphore::createSemaphore(0);

    if (body != nullptr) {
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    Scheduler::put(tcb);
}

TCB *TCB::createThreadWithoutPuttingInScheduler(Body body, void* arg)
{
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
        return t;
}

void TCB::yield()
{
    Riscv::pushRegisters();
    TCB::dispatch();
    Riscv::popRegisters();
}
void TCB::yieldWithoutScheduler()
{
    Riscv::pushRegisters();
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
//    TCB *old = running;
//    if(old!= nullptr) {
//        if (!old->isFinished()) { Scheduler::put(old); }
//    }
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    if (!old->isFinished()) { Scheduler::put(old); }
    running = Scheduler::get();

    TCB::contextSwitch(&old->context, &running->context);
}


void TCB::threadWrapper(){
    Riscv::popSppSpie();
    running->body(running->arg);
    running->setFinished(true);
//    while(!running->sem->semEmpty()) {
//        running->sem->signal();
//    }
//    TCB::yield();
//    TCB::dispatch();
    __asm__ volatile ("li a0, 0x13");
    __asm__ volatile ("ecall");

}

int TCB::exitThread() {
    running->setFinished(true);
    dispatch();
//    TCB *old = running;
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}


void TCB::dispatchWithoutScheduler(){
    TCB *old = running;
    running = Scheduler::get();
    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::join() {
    sem->wait();
}

void TCB::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;

}

void *TCB::operator new(size_t n) {
    return MemoryAllocator::malloc(sizeof (TCB));

}

void TCB::kill(TCB* t) {
    TCB* tmp;
    while((tmp=Scheduler::get())!=t){
        Scheduler::put(tmp);
    }
    tmp->setFinished(true);


}


