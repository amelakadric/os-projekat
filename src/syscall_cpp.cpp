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
    return 0;
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
