//
// Created by os on 8/27/22.
//

#ifndef PROJECT_BASE_SCHEDULER_HPP
#define PROJECT_BASE_SCHEDULER_HPP

class TCB;

class Scheduler {
private:
    static List<TCB> readyThreadQueue;

public:
    static TCB *get();

    static void put(TCB *ccb);

};

#endif //PROJECT_BASE_SCHEDULER_HPP
