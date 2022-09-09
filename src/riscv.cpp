//

#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

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
        TCB::timeSliceCounter = 0;
        TCB::dispatch();
        w_sstatus(sstatus);
        w_sepc(sepc);

        uint64 a0 = r_a0();
        if (a0 == 0x0000000000000001UL){
            //mem_alloc
        }
        else if (a0 == 0x0000000000000002UL){
            //mem_free
        }
        else if (a0 == 0x0000000000000011UL){
            //thread_create(&myhandle a1, body a2, arg a3, stek??)


            Body a2;
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));

            uint64 a3;
            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));

//            TCB a1;
//            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
//            a1 = TCB( a2, DEFAULT_TIME_SLICE);

        }
        else if (a0 == 0x0000000000000012UL){
            //thread_exit

        }
        else if (a0 == 0x0000000000000013UL){
            //thread_dispatch()
            TCB::dispatch();
        }


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