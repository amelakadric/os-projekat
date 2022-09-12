
#ifndef PROJECT_BASE_MEMORYALLOCATOR_HPP
#define PROJECT_BASE_MEMORYALLOCATOR_HPP

#include "../lib/mem.h"


class MemoryAllocator {
private:

    MemoryAllocator *instance;

    struct BlockHeader {
        BlockHeader *next= nullptr;
        size_t size;
        bool free;
    };
    static void *freeMemHead;
    static BlockHeader *top;
    static BlockHeader *heapStart;

    inline size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }

    inline size_t allocSize(size_t size) {
        return size + sizeof(BlockHeader);
    }


    BlockHeader* allocInHeap(size_t size){
        size= allocSize(size);
        if((&freeMemHead+size)>(&HEAP_END_ADDR-1)){
            return nullptr;
        }
        BlockHeader* blockStart=(BlockHeader*)freeMemHead;

//        freeMemHead+=size;

        return blockStart;
    }



    BlockHeader* firstfit(size_t size){
        BlockHeader* block =(BlockHeader*)freeMemHead;

        while(block!= nullptr){
            if(!block->free || block->size < size){
                block=block->next;
                continue;
            }
            return block;
        }
        return nullptr;
    }

    BlockHeader* findBlock(BlockHeader* p){
        BlockHeader *block, *prev;

        for(block=heapStart; block!= nullptr; prev=block, block=block->next){
            if(block==p){
                prev->next= nullptr;
                return block;
            }
        }
        return nullptr;
    }



public:
    MemoryAllocator* getInstance();

    void *malloc(size_t size){
        size= align(size);

        if (BlockHeader* block = firstfit(size)){
            return block;
        }

        BlockHeader* block = allocInHeap(size);
        block->size=size;
        block->free= false;

        if(heapStart== nullptr){
            heapStart = block;
        }
        if(top != nullptr){
            top->next=block;
        }
        top=block;

        return block;
    }

    int free(void* p){
        BlockHeader* block = findBlock((BlockHeader*)p);
        if (block!= nullptr){
            block->free= true;
            return 0;
        }
        return 1;
    }

};


#endif //PROJECT_BASE_MEMORYALLOCATOR_HPP
