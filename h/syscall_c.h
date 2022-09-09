#include "../lib/mem.h"
#include "../h/tcb.hpp"
#include "tcb.hpp"

void* mem_alloc(size_t size){
    __asm__ volatile("mv a1, %0"::"r"(size));
    __asm__ volatile("li a0, 0x01");
    __asm__ volatile("ecall");
}

int mem_free (void*){
    //ovaj argument??
    __asm__ volatile("li a0, 0x02");
    __asm__ volatile("ecall");
}

int thread_create (
        thread_t* handle,
        void(*start_routine)(void*),
        void* arg
){
    __asm__ volatile("mv a3, %0"::"r"(arg));
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    __asm__ volatile("mv a1, %0"::"r"(handle));
    __asm__ volatile("li a0, 0x11");
    __asm__ volatile("ecall");

}

int thread_exit(){
    __asm__ volatile("li a0, 0x12");
    __asm__ volatile("ecall");

}

void thread_dispatch(){
    __asm__ volatile("li a0, 0x13");
    __asm__ volatile("ecall");

}

//class _sem;
//typedef _sem* sem_t;
//
//int sem_open (
//        sem_t* handle,
//        unsigned init
//        );
//
//int sem_close (sem_t handle);
//
//int sem_wait (sem_t id);
//
//int sem_signal(sem_t id);

typedef unsigned long time_t;
int time_sleep(time_t);

//const int EOF = -1;
//char getc();
//void putc(char);