#ifndef PROJECT_BASE_TCB_HPP
#define PROJECT_BASE_TCB_HPP

#include "../lib/hw.h"
#include "scheduler.hpp"

typedef TCB* thread_t;


class TCB
{
//private:
//    void* operator new(size_t size){
//        MemoryAllocator* mem=MemoryAllocator::getInstance();
//        return mem->malloc(size);
//    }
//    void* operator new[](size_t size){
//        MemoryAllocator* mem=MemoryAllocator::getInstance();
//        return mem->malloc(size);
//    }
//
//    void operator delete(void *p)
//    {
//        MemoryAllocator* mem=MemoryAllocator::getInstance();
//        mem->free(p);
//    }
//
//    void operator delete[](void *p)
//    {
//        MemoryAllocator* mem=MemoryAllocator::getInstance();
//        mem->free(p);
//    }
public:
    using Body = void (*)(void*);

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}


    static TCB *createThread(Body body, void* arg);

    static void yield();

    static TCB *running;

private:
//    TCB(Body body, uint64 timeSlice) :
//            body(body),
//            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
//            context({(uint64) &threadWrapper,
//                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
//                    }),
//            timeSlice(timeSlice),
//            finished(false)
//    {
//        if (body != nullptr) { Scheduler::put(this); }
//    }

    struct Context
    {
        uint64 ra;
        uint64 sp;
    };

    Body body;
    uint64 *stack;
    Context context;
    uint64 timeSlice;
    void* arg;
    bool finished;

    friend class Riscv;


    static void threadWrapper();

    static void contextSwitch(Context *oldContext, Context *runningContext);

    static void dispatch();

    static int exitThread();


    static uint64 timeSliceCounter;

//    static uint64 constexpr STACK_SIZE = 1024;
//    static uint64 constexpr TIME_SLICE = 2;
};






#endif //PROJECT_BASE_TCB_HPP
