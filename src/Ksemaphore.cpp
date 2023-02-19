#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    TCB* tr=TCB::running;
    blocked.addLast(tr);
}

void Ksemaphore::unblock() {
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
}

int Ksemaphore::wait() {
    if(--val<0){
        block();
        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 1;
}

int Ksemaphore::signal() {
    if(++val<=0) {
        unblock();
        return 0;
    }
    return 1;
}

Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    TCB* tcb;
    while((tcb=blocked.removeFirst())!= nullptr){
//        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    }

    return 0;
}
void Ksemaphore::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}

void *Ksemaphore::operator new(size_t n) {
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
}






