
#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"


class MemoryAllocator {
private:


    struct FreeBlockHeader {
        FreeBlockHeader *next= nullptr;
        FreeBlockHeader *prev= nullptr;
        size_t size;
    };
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }


    inline static size_t allocSize(size_t size) {
        return size + sizeof(size_t );
    }





public:
    static void initMemoryAllocator();
    static void *malloc(size_t size);

    static int free(void* p);

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
