//

#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    __asm__ volatile ("csrw sepc, ra");
    __asm__ volatile ("sret");
}

void Riscv::handleSupervisorTrap()
{
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    {
        // interrupt: no; cause code: environment call from U-mode(8) or S-mode(9)
        uint64 sepc = r_sepc() + 4;
        uint64 sstatus = r_sstatus();

        uint64 a0 = r_a0();
        if (a0 == 0x0000000000000001UL){
            //mem_alloc(size_t size-a1)
//            size_t a1;
//            void *a;
//            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
//
//            MemoryAllocator* memAlloc= MemoryAllocator::getInstance();
//            a=memAlloc->malloc(a1);
//            __asm__ volatile("mv a0, %0"::"r"(a));
        }
        else if (a0 == 0x0000000000000002UL){
            //mem_free
//            void* a2;
//            uint64 a;
//            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
//
//            MemoryAllocator* memAlloc= MemoryAllocator::getInstance();
//            a=memAlloc->free(a2);
//            __asm__ volatile("mv a0, %0"::"r"(a));


        }
        else if (a0 == 0x0000000000000011UL){
//            //thread_create(&myhandle-a1, body-a2, arg-a3, stek??)

            Body a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));

            //arg
            void* a3;
            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));

            TCB* tcb;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
            tcb = TCB::createThread(a2, a3);
            uint64 a= (tcb!= nullptr)?0: -1;
            __asm__ volatile("mv a0, %0"::"r"(a));


        }
        else if (a0 == 0x0000000000000012UL){
            //thread_exit
            uint64 a;

            a=TCB::exitThread();

            __asm__ volatile("mv a0, %0"::"r"(a));
        }
        else if (a0 == 0x0000000000000013UL){
            //thread_dispatch()
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
        }
        else if (a0 == 0x0000000000000021UL) {
            //sem_open a1-handle a2-init

            unsigned a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));

            Ksemaphore** sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
            *sem = new Ksemaphore(a2);

            uint64 a= (sem!= nullptr)?0: -1;
            __asm__ volatile("mv a0, %0"::"r"(a));

        }
        else if (a0 == 0x0000000000000022UL) {
            //sem_close a1-handle
            uint64 a;
            Ksemaphore* sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));


            if(sem->blocked.peekFirst()== nullptr){
                a=0;

            }else{
                while(sem->blocked.peekFirst()== nullptr){
                    sem->signal();
                }
                a=-1;
            }
            __asm__ volatile("mv a0, %0"::"r"(a));


        }
        else if (a0 == 0x0000000000000023UL) {
            //sem_wait a1-id

            uint64 a;
            Ksemaphore* sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
            a=sem->wait();

            __asm__ volatile("mv a0, %0"::"r"(a));

        }
        else if (a0 == 0x0000000000000024UL) {
            //sem_signal a1-id

            uint64 a;
            Ksemaphore* sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
            a=sem->signal();

            __asm__ volatile("mv a0, %0"::"r"(a));
        }

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
        TCB::timeSliceCounter++;
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
        {
            uint64 sepc = r_sepc();
            uint64 sstatus = r_sstatus();
            TCB::timeSliceCounter = 0;
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    } else
    {
        // unexpected trap cause
    }
}