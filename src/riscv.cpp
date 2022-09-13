//

#include "../h/riscv.hpp"
//#include "../h/TCB.hpp"
//#include "../lib/console.h"
//#include "../h/MemoryAllocator.hpp"

using Body = void (*)();

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
//        TCB::timeSliceCounter = 0;
//        TCB::dispatch();
//        w_sstatus(sstatus);
//        w_sepc(sepc);

        uint64 a0 = r_a0();
        if (a0 == 0x0000000000000001UL){
            //mem_alloc(size_t size-a1)
            size_t a1;
            void *a;
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));

            MemoryAllocator* memAlloc= MemoryAllocator::getInstance();
            a=memAlloc->malloc(a1);
            __asm__ volatile("mv a0, %0"::"r"(a));
        }
        else if (a0 == 0x0000000000000002UL){
            //mem_free
            void* a2;
            uint64 a;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));

            MemoryAllocator* memAlloc= MemoryAllocator::getInstance();
            a=memAlloc->free(a2);
            __asm__ volatile("mv a0, %0"::"r"(a));


        }
        else if (a0 == 0x0000000000000011UL){
//            //thread_create(&myhandle-a3, body-a4, arg-a5, stek??)
//
//
//            Body a4;
//            __asm__ volatile ("mv %[a4], a4" : [a4] "=r"(a4));
//
//            void* a5;
//            __asm__ volatile ("mv %[a5], a5" : [a5] "=r"(a5));
//
//            TCB *a3;
//            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));
//            a3->body=a4;
//            a3->arg=a5;
//            a3->stack=(a3->body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr);
//            a3->context.ra=(uint64) &a3->threadWrapper;
//            a3->context.sp=a3->stack != nullptr ? (uint64) &a3->stack[DEFAULT_STACK_SIZE] : 0;
//            a3->timeSlice=DEFAULT_TIME_SLICE;
//            a3->finished=false;

        }
        else if (a0 == 0x0000000000000012UL){
            //thread_exit

        }
        else if (a0 == 0x0000000000000013UL){
            //thread_dispatch()
//            TCB::dispatch();
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