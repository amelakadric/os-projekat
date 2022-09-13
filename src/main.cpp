#include "../lib/hw.h"
#include "../lib/console.h"
#include "../h/MemoryAllocator.hpp"

int main() {

    int n = 10;
    __putc('?');
    char* niz = (char*)MemoryAllocator::getInstance()->malloc(1);
    if(niz == nullptr) {
        __putc('?');
    }

    for(int i = 0; i < n; i++) {
        niz[i] = 'k';
    }

    for(int i = 0; i < n; i++) {
        __putc(niz[i]);
        __putc(' ');
    }

    int status = MemoryAllocator::getInstance()->free(niz);;
    if(status != 0) {
        __putc('?');
    }

    return 0;

}