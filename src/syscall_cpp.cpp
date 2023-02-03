#include "../h/syscall_cpp.hpp"

void *operator new(size_t n)
{
    return __mem_alloc(n);
}

void *operator new[](size_t n)
{
    return __mem_alloc(n);
}

void operator delete(void *p)
{
    __mem_free(p);
}

void operator delete[](void *p)
{
    __mem_free(p);
}


//Thread::Thread (void (*body)(void*), void* arg) {
//    int a =thread_create(&myHandle, body, arg);
//    a++;
//}

int Thread::start (){
//    int a = thread_create(&myHandle, myWrapper, nullptr);
//    return a;
//    Scheduler::put(myHandle);
//    TCB::yield();
    return 0;
}
void Thread::dispatch (){
    thread_dispatch();
}

Thread::Thread() {
//    myHandle=new TCB(nullptr, nullptr, DEFAULT_TIME_SLICE);
}

Thread::~Thread() {

}

void Thread::run() {

}

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {
//    sem_close(myHandle);
}

int Semaphore::wait() {
    return sem_wait(myHandle);
}

int Semaphore::signal() {
    return sem_signal(myHandle);
}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return __getc();
}

void Console::putc(char c) {
    __putc(c);
}
