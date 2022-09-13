
#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"


class MemoryAllocator {
private:

    static MemoryAllocator *instance;

    struct BlockHeader {
        BlockHeader *next= nullptr;
        size_t size;
        bool free=true;
    };
    static char *heapStart;
    static BlockHeader *top;
    static BlockHeader *blockHead;

    inline size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }

    inline size_t allocSize(size_t size) {
        return size + sizeof(BlockHeader);
    }


    BlockHeader* allocInHeap(size_t size);



    BlockHeader* firstfit(size_t size);

    BlockHeader* findBlock(BlockHeader* p);



public:
    static MemoryAllocator* getInstance();

    void *malloc(size_t size);

    int free(void* p);

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
