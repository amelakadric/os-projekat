//
// Created by os on 8/17/22.
//

#include "../h/MemoryAllocator.h"


MemoryAllocator *MemoryAllocator::getInstance() {
    return this->instance;
}

MemoryAllocator::MemoryAllocator() {
}


