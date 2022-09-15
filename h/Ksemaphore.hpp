//
// Created by os on 9/14/22.
//

#ifndef PROJECT_BASE_KSEMAPHORE_HPP
#define PROJECT_BASE_KSEMAPHORE_HPP
#include "scheduler.hpp"
#include "TCB.hpp"
#include "../lib/hw.h"

typedef Ksemaphore* sem_t;

class Ksemaphore{
public:
    Ksemaphore(unsigned init =1):val(init){}

    int wait();
    int signal();
    int value() const {return val;}
    static Ksemaphore* createSemaphore(unsigned init=1);

protected:
    void block();
    void unblock();

    friend class Riscv;
private:
    int val;
    List<TCB> blocked;
};

#endif //PROJECT_BASE_KSEMAPHORE_HPP
