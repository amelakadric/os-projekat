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
            size_t a7;
            void *a;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));

            a=MemoryAllocator::malloc(a7);
            __asm__ volatile("mv a0, %0"::"r"(a));
        }
        else if (a0 == 0x0000000000000002UL){
            //mem_free
            void* a7;
            uint64 a;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));

            a=MemoryAllocator::free(a7);
            __asm__ volatile("mv a0, %0"::"r"(a));


        }
        else if (a0 == 0x0000000000000011UL){
//            //thread_create(&myhandle-a1, body-a2, arg-a3)

            TCB** tcb;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
            Body a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
            //arg
            void* a7;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));

            *tcb = TCB::createThread(a2, a7);
            a0=(tcb!= nullptr)?0 : -1;

            __asm__ volatile("mv a0, %0"::"r"(a0));

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

        else if (a0 == 0x0000000000000014UL){
            //thread_start()
            TCB** tcb;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
            Scheduler::put(*tcb);
        }
        else if (a0 == 0x0000000000000015UL){
            //thread_create2() bez stavljanja u scheduler
            TCB** tcb;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
            Body a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
            //arg
            void* a7;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));

            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
            a0=(tcb!= nullptr)?0 : -1;

            __asm__ volatile("mv a0, %0"::"r"(a0));
        }
        else if (a0 == 0x0000000000000021UL) {
            //sem_open a1-handle a2-init

            unsigned a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));

            Ksemaphore** sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
            *sem = Ksemaphore::createSemaphore(a2);

            uint64 a= (sem!= nullptr)?0: -1;
            __asm__ volatile("mv a0, %0"::"r"(a));

        }
        else if (a0 == 0x0000000000000022UL) {
            //sem_close a1-handle

            uint64 a;
            Ksemaphore* sem;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));

            a=0;
            if(sem== nullptr){
                a=1;
            }
            else{
                sem->closeSemaphore();
            }
            __asm__ volatile("mv a0, %0"::"r"(a));

        }
        else if (a0 == 0x0000000000000023UL) {
            //sem_wait a1-id

            int a;
            Ksemaphore* a7;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));

            if(a7!= nullptr){
                a = a7->wait();
            }
            else{
                a=-1;
            }


            __asm__ volatile("mv a0, %0"::"r"(a));

        }
        else if (a0 == 0x0000000000000024UL) {
            //sem_signal a1-id

            uint64 a;
            Ksemaphore* sem;
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(sem));
            if(sem!= nullptr) {
                a = sem->signal();
            }else {
                a=1;
            }

            __asm__ volatile("mv a0, %0"::"r"(a));
        }
        else if (a0 == 0x0000000000000016UL){
            uint64 a;
            TCB* t;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
            a= t->getId();

            __asm__ volatile("mv a0, %0"::"r"(a));

        }

//        TCB::dispatch();

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    {
        // interrupt: yes; cause code: supervisor software interrupt (CLINT; machine timer interrupt)
//        TCB::timeSliceCounter++;
//        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
//        {
//            uint64 sepc = r_sepc();
//            uint64 sstatus = r_sstatus();
//            TCB::timeSliceCounter = 0;
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    }else
    {
        // unexpected trap cause
    }
}