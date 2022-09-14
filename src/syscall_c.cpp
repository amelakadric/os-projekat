#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    __asm__ volatile("mv a1, %0"::"r"(size));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");
    void* a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    return a0;
}

int mem_free (void* r){
    __asm__ volatile("mv a2, %0"::"r"(r));
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    return a0;
}

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    __asm__ volatile("mv a3, %0"::"r"(arg));
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));

    return a0;
}

int thread_exit(){
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    return a0;
}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");

}

char getc(){
    return __getc();
}
void putc(char c){
    __putc(c);
}