#include "../h/MemoryAllocator.hpp"


char* MemoryAllocator::heapStart = (char *)HEAP_START_ADDR;

MemoryAllocator::BlockHeader* MemoryAllocator::top= nullptr;

MemoryAllocator::BlockHeader* MemoryAllocator::blockHead = nullptr;

MemoryAllocator* MemoryAllocator::instance= nullptr;

MemoryAllocator *MemoryAllocator::getInstance() {
    if (MemoryAllocator::instance == nullptr){
        instance = (MemoryAllocator*)HEAP_START_ADDR;
        heapStart= heapStart + sizeof(MemoryAllocator);
    }
    return MemoryAllocator::instance;
}

MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    size_t sizeB= allocSize(size);
    if((heapStart + sizeB) > ((char*)HEAP_END_ADDR - 1)){
        return nullptr;
    }
    BlockHeader* blockStart=(BlockHeader*)heapStart;
    blockStart->free=false;
    blockStart->size=size;


    heapStart+=size;

    return blockStart;

}

MemoryAllocator::BlockHeader* MemoryAllocator::firstfit(size_t size){
    BlockHeader* block =blockHead;

    while(block!= nullptr){
        if(!block->free || block->size < size){
            block=block->next;
            continue;
        }
        block->free= false;
        return block;
    }
    return nullptr;
}


MemoryAllocator::BlockHeader* MemoryAllocator::findBlock(BlockHeader* p){
    BlockHeader *block;

    for(block=blockHead; block != nullptr; block=block->next){
        if(block==p){
            return block;
        }
    }
    return nullptr;
}


void* MemoryAllocator::malloc(size_t size){
    size= align(size);

    if (BlockHeader* block = firstfit(size)){
        if (blockHead == nullptr)blockHead=block;
        return block;
    }
    BlockHeader* block = allocInHeap(size);
//    block->size=size;
//    block->free= false;

    if(blockHead == nullptr){
        blockHead = block;
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




