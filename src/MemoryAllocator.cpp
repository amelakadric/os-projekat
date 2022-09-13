#include "../h/MemoryAllocator.hpp"


char* MemoryAllocator::freeMemHead = (char *)HEAP_START_ADDR;

MemoryAllocator::BlockHeader* MemoryAllocator::top= nullptr;

MemoryAllocator::BlockHeader* MemoryAllocator::heapStart = nullptr;

MemoryAllocator* MemoryAllocator::instance= nullptr;

MemoryAllocator *MemoryAllocator::getInstance() {
    if (MemoryAllocator::instance == nullptr){
        instance = (MemoryAllocator*)HEAP_START_ADDR;
        freeMemHead=freeMemHead+sizeof(MemoryAllocator);
    }
    return MemoryAllocator::instance;
}

MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    size= allocSize(size);
    if((freeMemHead+size)>((char*)HEAP_END_ADDR-1)){
        return nullptr;
    }
    BlockHeader* blockStart=(BlockHeader*)freeMemHead;

        freeMemHead+=size;

    return blockStart;

}

MemoryAllocator::BlockHeader* MemoryAllocator::firstfit(size_t size){
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


MemoryAllocator::BlockHeader* MemoryAllocator::findBlock(BlockHeader* p){
    BlockHeader *block;

    for(block=heapStart; block!= nullptr; block=block->next){
        if(block==p){
            return block;
        }
    }
    return nullptr;
}


void* MemoryAllocator::malloc(size_t size){
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

int MemoryAllocator::free(void* p){
    BlockHeader* block = findBlock((BlockHeader*)p);
    if (block!= nullptr){
        block->free= true;
        return 0;
    }
    return 1;
}


