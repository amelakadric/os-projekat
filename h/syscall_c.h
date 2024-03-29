#include "../lib/mem.h"
#include "../lib/console.h"
#include "TCB.hpp"
#include "Ksemaphore.hpp"


void* mem_alloc(size_t size);

int mem_free (void* r);

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg);

int thread_exit();

void thread_dispatch();

int thread_start(thread_t* handle);

int thread_create2 (thread_t* handle, void(*start_routine)(void*), void* arg);

int getThreadId(thread_t t);

void join(thread_t t);

int sem_open (
        sem_t* handle,
        unsigned init
        );

int sem_close (sem_t handle);

int sem_wait (sem_t id);

int sem_signal(sem_t id);

typedef unsigned long time_t;
int time_sleep(time_t);

char getc();
void putc(char c);