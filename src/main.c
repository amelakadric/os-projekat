#include "../lib/console.h"

extern int add(int x, int y);

void main(){
    __putc('O');
    __putc('S');
    __putc('1');
    __putc('\n');
    __putc('\n');

    int result = add(1, 2);
    __putc('0'+result);

//    printf("Result: %x", result);


    while(1){
        char character = __getc();
        __putc(character + 30);
    }
}