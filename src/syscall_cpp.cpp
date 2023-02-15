#include "../h/syscall_cpp.hpp"

void *operator new(size_t n)
{
    return MemoryAllocator::malloc(n);
//    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return MemoryAllocator::malloc(n);
//   return mem_alloc(n);
}

void operator delete(void *p)
{
    MemoryAllocator::free(p);
//    mem_free(p);
}

void operator delete[](void *p)
{
    MemoryAllocator::free(p);
//    mem_free(p);
}

int Thread::start (){
    thread_start(&myHandle);
    return 0;
}
void Thread::dispatch (){
    thread_dispatch();
}

Thread::Thread(void (*body)(void*), void* arg) {
    thread_create2(&myHandle, body, arg);
}
Thread::Thread() {
    thread_create2(&myHandle, myWrapper, this);
}

Thread::~Thread()=default;

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    sem_close(myHandle);
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
