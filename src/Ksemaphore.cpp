//#include "../h/Ksemaphore.hpp"
//
//void Ksemaphore::block() {
//    if(setjmp(TCB::running->context)==0){
//        blocked.addLast(TCB::running);
//        TCB::running=Scheduler::get();
//        longjmp(TCB::running->context, 1);
//    }else return;
//
//}
//
//void Ksemaphore::unblock() {
//    TCB *t = blocked.removeFirst();
//    Scheduler::put(t);
//}
//
//void Ksemaphore::wait() {
//    lock();
//    if(--val<0)block();
//    unlock();
//}
//
//void Ksemaphore::signal() {
//    lock();
//    if(++val<=0) unblock();
//    unlock();
//}
//
//
//
//
//
