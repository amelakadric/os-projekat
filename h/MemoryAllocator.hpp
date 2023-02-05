
#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/hw.h"


class MemoryAllocator {
private:

//    static MemoryAllocator *instance;

    struct FreeBlockHeader {
        FreeBlockHeader *next= nullptr;
        FreeBlockHeader *prev= nullptr;
        size_t size;
//        bool free=true;
    };
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }


    inline size_t allocSize(size_t size) {
        return size + sizeof(FreeBlockHeader)+sizeof(int*);
    }


    static FreeBlockHeader* findBlock(FreeBlockHeader* p);



public:
    static void initMemoryAllocator();
    void *malloc(size_t size);

    int free(void* p);

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
