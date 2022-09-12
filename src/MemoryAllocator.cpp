#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::freeMemHead = const_cast<void *>(HEAP_START_ADDR);

MemoryAllocator::BlockHeader* MemoryAllocator::top= nullptr;

MemoryAllocator::BlockHeader* MemoryAllocator::heapStart = nullptr;

MemoryAllocator *MemoryAllocator::getInstance() {
    return this->instance;
}



