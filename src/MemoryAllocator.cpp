#include "../h/MemoryAllocator.hpp"


void* MemoryAllocator::freeMemHead = const_cast<void *>(HEAP_START_ADDR);

MemoryAllocator::BlockHeader* MemoryAllocator::top= nullptr;

MemoryAllocator::BlockHeader* MemoryAllocator::heapStart = nullptr;

MemoryAllocator *MemoryAllocator::getInstance() {
    if (instance == nullptr){
        instance = new MemoryAllocator();
    }
    return instance;
}


MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    size= allocSize(size);
    if((&freeMemHead+size)>(&HEAP_END_ADDR-1)){
        return nullptr;
    }
    BlockHeader* blockStart=(BlockHeader*)freeMemHead;

//        freeMemHead+=size;

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
    BlockHeader *block, *prev;

    for(block=heapStart; block!= nullptr; prev=block, block=block->next){
        if(block==p){
            prev->next= nullptr;
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


