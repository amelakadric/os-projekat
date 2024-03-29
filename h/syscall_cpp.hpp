#ifndef _syscall_cpp
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    using Body = void (*)(void*);
public:
    Thread(void (*body)(void*), void* arg);

    virtual ~Thread ();
    int start ();
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    }

};


class Semaphore {
public:
    Semaphore (unsigned init = 1);
    virtual ~Semaphore();
    int wait ();
    int signal ();
private:
    sem_t myHandle;
};



class Console {
public:
    static char getc ();
    static void putc (char c);
};

void* operator new (size_t n);
void operator delete (void* p);

#endif