//
// Created by os on 8/27/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP
#include "list.hpp"

class TCB;

class Scheduler {
private:
    static List<TCB> readyThreadQueue;
    Scheduler* instance =new Scheduler();
    Scheduler(){}
public:
    static TCB *get();

    static void put(TCB *tcb);
    Scheduler* getInstance();

};

#endif //PROJECT_BASE_SCHEDULER_HPP
