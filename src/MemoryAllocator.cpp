#include "../h/MemoryAllocator.hpp"


MemoryAllocator::FreeBlockHeader* MemoryAllocator::freeBlockHead = nullptr;
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
        }
        else if(freeBlock->size==sizeInBlocks){
            if(freeBlock->prev)
                freeBlock->prev->next=freeBlock->next;
            if(freeBlock->next)
                freeBlock->next->prev=freeBlock->prev;
            (*(size_t*)freeBlock)=sizeInBlocks;
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}

int MemoryAllocator::free(void* p){
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    char* block=(char*)p-sizeof(size_t);
    if(block== nullptr)return 1;
    size_t size = *(size_t*)block;
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
            tail->next=newFreeBlock;
            newFreeBlock->prev=tail;
            newFreeBlock->next= nullptr;
            tail=newFreeBlock;
            break;
        }
    }
    if(freeBlockHead==nullptr){
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
            newFreeBlock->prev->size += newFreeBlock->size;
            newFreeBlock->prev->next = newFreeBlock->next;
            if (newFreeBlock->next) {
                newFreeBlock->next->prev = newFreeBlock->prev;
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
            newFreeBlock->size += newFreeBlock->next->size;
            if (newFreeBlock->next->next) {
                FreeBlockHeader* nextBlock=newFreeBlock->next;
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
}

void MemoryAllocator::initMemoryAllocator() {
    heapStartAddr=(char*)HEAP_START_ADDR;
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    freeBlockHead->size=size;
    tail=freeBlockHead;
    freeBlockHead->next= nullptr;
    freeBlockHead->prev= nullptr;
}

