//
// Created by os on 8/17/22.
//

#ifndef PROJECT_BASE_MEMORYALLOCATOR_H
#define PROJECT_BASE_MEMORYALLOCATOR_H


class MemoryAllocator {

    MemoryAllocator* instance = new MemoryAllocator();

    MemoryAllocator();

    MemoryAllocator* getInstance();

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_H
