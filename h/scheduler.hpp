#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP
#include "list.hpp"
#include "MemoryAllocator.hpp"

class TCB;
class Ksemaphore;

class Scheduler {

public:
    static void* operator new (size_t n);
    static void operator delete (void* p);

private:
    static List<TCB> readyThreadQueue;
    Scheduler* instance = (Scheduler*)new Scheduler;
    Scheduler(){}


//    void* operator new(size_t size){
////        MemoryAllocator* mem=MemoryAllocator::getInstance();
////        return mem->malloc(size);
//        return __mem_alloc(size);
//    }
//    void* operator new[](size_t size){
////        MemoryAllocator* mem=MemoryAllocator::getInstance();
////        return mem->malloc(size);
//        return __mem_alloc(size);
//    }
//
//    void operator delete(void *p)
//    {
////        MemoryAllocator* mem=MemoryAllocator::getInstance();
////        mem->free(p);
//        __mem_free(p);
//    }
//
//    void operator delete[](void *p)
//    {
//        MemoryAllocator* mem=MemoryAllocator::getInstance();
//        mem->free(p);
//        __mem_free(p);
//    }



public:
    static TCB *get();

    static void put(TCB *tcb);
    Scheduler* getInstance();

};

#endif //PROJECT_BASE_SCHEDULER_HPP
