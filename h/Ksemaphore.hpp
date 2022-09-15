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
    Ksemaphore(unsigned short init =1):val(init){}

    void wait();
    void signal();
    int value() const {return val;}

protected:
    void block();
    void unblock();

    friend class Riscv;
private:
    int val;
    List<TCB> blocked;
};

#endif //PROJECT_BASE_KSEMAPHORE_HPP
