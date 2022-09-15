#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

typedef TCB* thread_t;


class TCB
{

public:
    using Body = void (*)(void*);
     TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}
    void* getArg() {return this->arg;}


    static TCB *createThread(Body body, void* arg);

    static void yield();

    static TCB *running;

    TCB(Body body, void* arg, uint64 timeSlice) :
            body(body),
            arg(arg),
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    {
//        if (body != nullptr) { Scheduler::put(this); }
    }

private:

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    void* arg;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    bool finished;

    friend class Riscv;
    friend class Ksemaphore;


    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static int exitThread();


    static uint64 timeSliceCounter;

//    static uint64 constexpr STACK_SIZE = 1024;
//    static uint64 constexpr TIME_SLICE = 2;
};






#endif //PROJECT_BASE_TCB_HPP
