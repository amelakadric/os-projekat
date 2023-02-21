#ifndef PROJECT_BASE_KSEMAPHORE_HPP
#define PROJECT_BASE_KSEMAPHORE_HPP
#include "scheduler.hpp"
#include "TCB.hpp"
#include "../lib/hw.h"

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}

public:

    int wait();

    int signal();
    int value() const {return val;}
    static Ksemaphore* createSemaphore(unsigned init=1);
    int closeSemaphore();
    bool semEmpty(){
        if(blocked.getNum())return false;
        return true;
    }

protected:
    void block();
    void unblock();

    static void* operator new (size_t n);
    static void operator delete (void* p);

    friend class Riscv;
private:
    int val;
    List<TCB> blocked;
};

#endif //PROJECT_BASE_KSEMAPHORE_HPP
