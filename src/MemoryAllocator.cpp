#include "../h/MemoryAllocator.hpp"


MemoryAllocator::FreeBlockHeader* MemoryAllocator::freeBlockHead = nullptr;

MemoryAllocator::FreeBlockHeader* MemoryAllocator::findBlock(FreeBlockHeader* p){
    FreeBlockHeader *block;

    for(block=freeBlockHead; block != nullptr; block=block->next){
        if(block==p){
            return block;
        }
    }
    return nullptr;
}

void* MemoryAllocator::malloc(size_t size){
    size= align(size);
    size= allocSize(size);
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
        if(freeBlock->size >size){
            freeBlock->size-=size;
            *(int*)((char*)freeBlock+size)=size;
            return (void*)((int*)((char*)freeBlock+size)+sizeof(int*));
        }
        else if(freeBlock->size==size){
            freeBlock->prev->next=freeBlock->next;
            freeBlock->next->prev=freeBlock->prev;
            *(int*)(char*)freeBlock=size;
            return (void*)((int*)(char*)freeBlock+sizeof(int*));
        }

    }
    return nullptr;

}

int MemoryAllocator::free(void* p){
    if(p== nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_END_ADDR )return 1;
    char* block=(char*)p-sizeof(int*);
    if(block== nullptr)return 1;
    size_t size = *(int*)block;
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
            tail=newFreeBlock;
        }
    }
    //mergeovanje nazad
    if((char*)newFreeBlock->prev+newFreeBlock->prev->size==(char*)newFreeBlock){
        newFreeBlock->prev->size+=newFreeBlock->size;
        newFreeBlock->prev->next=newFreeBlock->next;
        newFreeBlock->next->prev=newFreeBlock->prev;
        newFreeBlock=newFreeBlock->prev;
    }
    //mergovanje napred
    if((char*)newFreeBlock+newFreeBlock->size==(char*)newFreeBlock->next ){
        newFreeBlock->size+=newFreeBlock->next->size;
        newFreeBlock->next->next->prev=newFreeBlock;
        newFreeBlock->next=newFreeBlock->next->next;
    }
    return 0;
}

void MemoryAllocator::initMemoryAllocator() {
    freeBlockHead->size=align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR);
    freeBlockHead=(FreeBlockHeader*)(char *)HEAP_START_ADDR;
}



