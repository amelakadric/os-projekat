#ifndef _syscall_cpp
#define _syscall_cpp
#include "syscall_c.h"
//#include "../lib/mem.h"
#include "riscv.hpp"


void* operator new (size_t n);
void operator delete (void* p);


class Thread {
public:
    Thread (void (*body)(void*), void* arg);
//        thread_create(&myHandle, body, arg);

    virtual ~Thread ();
    int start ();

//        if (myHandle->getBody()!= nullptr) { Scheduler::put(myHandle); return 0;}
//        return 1;
//    }
    static void dispatch ();
//        thread_dispatch();
//    }
    static int sleep (time_t);
//        return 0;}
protected:
    Thread ();
    virtual void run ();
private:
    thread_t* myHandle;
};


//class Semaphore {
//public:
//    Semaphore (unsigned init = 1);
//    virtual ~Semaphore ();
//    int wait ();
//    int signal ();
//private:
//    sem_t myHandle;
//};
//
//
//class PeriodicThread : public Thread {
//protected:
//    PeriodicThread (time_t period);
//    virtual void periodicActivation () {}
//};
//
//
//class Console {
//public:
//    static char getc ();
//    static void putc (char);
//};

void *operator new(size_t n)
{
    return mem_alloc(n);
}

void *operator new[](size_t n)
{
    return mem_alloc(n);
}

void operator delete(void *p)
{
mem_free(p);
}

void operator delete[](void *p)
{
mem_free(p);
}

#endif