#ifndef _syscall_cpp
#define _syscall_cpp
#include "../lib/console.h"
//#include "riscv.hpp"
//#include "TCB.hpp"
#include "syscall_c.h"


void* operator new (size_t n);
void operator delete (void* p);

class Thread {
    using Body = void (*)(void*);
public:
    Thread(void (*body)(void*), void* arg) {
        myHandle = new TCB(body, arg, DEFAULT_TIME_SLICE);
//        int a =new TCB(&myHandle, body, arg);
//        a++;
    }

    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);
//    static  void myWrapper();

protected:
    Thread ();
    virtual void run ();
private:
    thread_t myHandle;

};


class Semaphore {
public:
    Semaphore (unsigned init = 1){

    }
    virtual ~Semaphore();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
};


class Console {
public:
    static char getc ();
    static void putc (char c);
};

#endif