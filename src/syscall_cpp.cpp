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
    int a = thread_create(&myHandle, myHandle->getBody(), myHandle->getArg());
    return a;
}
void Thread::dispatch (){
    thread_dispatch();
}

Thread::Thread() {

}

Thread::~Thread() {

}

void Thread::run() {

}

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {

}

int Semaphore::wait() {
    return 0;
}

int Semaphore::signal() {
    return 0;
}

PeriodicThread::PeriodicThread(time_t period) {

}

char Console::getc() {
    return __getc();
}

void Console::putc(char c) {
    __putc(c);
}
