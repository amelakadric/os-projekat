#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    blocked.addLast(TCB::running);
    TCB::running=Scheduler::get();

}

void Ksemaphore::unblock() {
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
}

int Ksemaphore::wait() {
    if(--val<0){
        block();
        return 0;
    }
    return -1;
}

int Ksemaphore::signal() {
    if(++val<=0) {
        unblock();
        return 0;
    }
    return -1;
}





