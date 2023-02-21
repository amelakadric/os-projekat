//
// Created by os on 8/27/22.
//

#include "../h/scheduler.hpp"

List<TCB> Scheduler::readyThreadQueue;

TCB *Scheduler::get()
{
    return readyThreadQueue.removeFirst();
}

void Scheduler::put(TCB *tcb)
{
    readyThreadQueue.addLast(tcb);
}

Scheduler *Scheduler::getInstance() {
    return this->instance;
}

void *Scheduler::operator new(size_t n) {
    return MemoryAllocator::malloc(n);
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}

bool Scheduler::isEmpty() {
    bool a=true;
    if(readyThreadQueue.peekFirst())a=false;
    return a;
}

bool Scheduler::oneLeft() {
    bool a=false;
    TCB* t= Scheduler::get();
    if(isEmpty())a=true;
    Scheduler::put(t);
    return a;
}



