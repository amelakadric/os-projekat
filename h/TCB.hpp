#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"
#include "MemoryAllocator.hpp"

typedef TCB* thread_t;


class TCB
{

    static void threadWrapper();
public:
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}
    void* getArg() {return this->arg;}
    uint64 getId() {return this->id;}

    static void* operator new (size_t n);
    static void operator delete (void* p);


    static TCB *createThread(Body body, void* arg);

    static TCB* createThreadWithoutPuttingInScheduler(Body body, void* arg);

    static void putInScheduler(TCB* tcb);

    static void yield();

    static void yieldWithoutScheduler();

    static TCB *running;
    static Ksemaphore* semWaitAllThreads;


    //    body(body),
//            arg(arg),
//            stack(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr),
//    context({(uint64) &threadWrapper,
//                stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
        arg=argg;
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
        context.ra = (uint64) &threadWrapper;
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
        timeSlice=timeSlicee;
        finished= false;
        id=threadId++;
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
    uint64 id;

    friend class Riscv;
    friend class Ksemaphore;





    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static void dispatchWithoutScheduler();

    static int exitThread();

    void join();


    static uint64 timeSliceCounter;
    static uint64 threadId;

//    static uint64 constexpr STACK_SIZE = 1024;
//    static uint64 constexpr TIME_SLICE = 2;
};






#endif //PROJECT_BASE_TCB_HPP
