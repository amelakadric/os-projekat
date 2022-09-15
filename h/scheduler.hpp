//
// Created by os on 8/27/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP
#include "list.hpp"
//#include "TCB.hpp"
//#include "syscall_cpp.hpp"

class TCB;
class Ksemaphore;

class Scheduler {
private:
    static List<TCB> readyThreadQueue;
    Scheduler* instance = new Scheduler;
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
////        MemoryAllocator* mem=MemoryAllocator::getInstance();
////        mem->free(p);
//        __mem_free(p);
//    }



public:
    static TCB *get();

    static void put(TCB *tcb);
    Scheduler* getInstance();

};

#endif //PROJECT_BASE_SCHEDULER_HPP
