
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	79813103          	ld	sp,1944(sp) # 80007798 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	465030ef          	jal	ra,80003c80 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04b13c23          	sd	a1,88(sp)
    80001024:	06c13023          	sd	a2,96(sp)
    80001028:	06d13423          	sd	a3,104(sp)
    8000102c:	06e13823          	sd	a4,112(sp)
    80001030:	06f13c23          	sd	a5,120(sp)
    80001034:	09013023          	sd	a6,128(sp)
    80001038:	09113423          	sd	a7,136(sp)
    8000103c:	09213823          	sd	s2,144(sp)
    80001040:	09313c23          	sd	s3,152(sp)
    80001044:	0b413023          	sd	s4,160(sp)
    80001048:	0b513423          	sd	s5,168(sp)
    8000104c:	0b613823          	sd	s6,176(sp)
    80001050:	0b713c23          	sd	s7,184(sp)
    80001054:	0d813023          	sd	s8,192(sp)
    80001058:	0d913423          	sd	s9,200(sp)
    8000105c:	0da13823          	sd	s10,208(sp)
    80001060:	0db13c23          	sd	s11,216(sp)
    80001064:	0fc13023          	sd	t3,224(sp)
    80001068:	0fd13423          	sd	t4,232(sp)
    8000106c:	0fe13823          	sd	t5,240(sp)
    80001070:	0ff13c23          	sd	t6,248(sp)
    ret
    80001074:	00008067          	ret

0000000080001078 <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001078:	01813183          	ld	gp,24(sp)
    8000107c:	02013203          	ld	tp,32(sp)
    80001080:	02813283          	ld	t0,40(sp)
    80001084:	03013303          	ld	t1,48(sp)
    80001088:	03813383          	ld	t2,56(sp)
    8000108c:	04013403          	ld	s0,64(sp)
    80001090:	04813483          	ld	s1,72(sp)
    80001094:	05813583          	ld	a1,88(sp)
    80001098:	06013603          	ld	a2,96(sp)
    8000109c:	06813683          	ld	a3,104(sp)
    800010a0:	07013703          	ld	a4,112(sp)
    800010a4:	07813783          	ld	a5,120(sp)
    800010a8:	08013803          	ld	a6,128(sp)
    800010ac:	08813883          	ld	a7,136(sp)
    800010b0:	09013903          	ld	s2,144(sp)
    800010b4:	09813983          	ld	s3,152(sp)
    800010b8:	0a013a03          	ld	s4,160(sp)
    800010bc:	0a813a83          	ld	s5,168(sp)
    800010c0:	0b013b03          	ld	s6,176(sp)
    800010c4:	0b813b83          	ld	s7,184(sp)
    800010c8:	0c013c03          	ld	s8,192(sp)
    800010cc:	0c813c83          	ld	s9,200(sp)
    800010d0:	0d013d03          	ld	s10,208(sp)
    800010d4:	0d813d83          	ld	s11,216(sp)
    800010d8:	0e013e03          	ld	t3,224(sp)
    800010dc:	0e813e83          	ld	t4,232(sp)
    800010e0:	0f013f03          	ld	t5,240(sp)
    800010e4:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010e8:	10010113          	addi	sp,sp,256
    ret
    800010ec:	00008067          	ret

00000000800010f0 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    800010f0:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    800010f4:	00013023          	sd	zero,0(sp)
    800010f8:	00113423          	sd	ra,8(sp)
    800010fc:	00213823          	sd	sp,16(sp)
    80001100:	00313c23          	sd	gp,24(sp)
    80001104:	02413023          	sd	tp,32(sp)
    80001108:	02513423          	sd	t0,40(sp)
    8000110c:	02613823          	sd	t1,48(sp)
    80001110:	02713c23          	sd	t2,56(sp)
    80001114:	04813023          	sd	s0,64(sp)
    80001118:	04913423          	sd	s1,72(sp)
    8000111c:	04b13c23          	sd	a1,88(sp)
    80001120:	06c13023          	sd	a2,96(sp)
    80001124:	06d13423          	sd	a3,104(sp)
    80001128:	06e13823          	sd	a4,112(sp)
    8000112c:	06f13c23          	sd	a5,120(sp)
    80001130:	09013023          	sd	a6,128(sp)
    80001134:	09113423          	sd	a7,136(sp)
    80001138:	09213823          	sd	s2,144(sp)
    8000113c:	09313c23          	sd	s3,152(sp)
    80001140:	0b413023          	sd	s4,160(sp)
    80001144:	0b513423          	sd	s5,168(sp)
    80001148:	0b613823          	sd	s6,176(sp)
    8000114c:	0b713c23          	sd	s7,184(sp)
    80001150:	0d813023          	sd	s8,192(sp)
    80001154:	0d913423          	sd	s9,200(sp)
    80001158:	0da13823          	sd	s10,208(sp)
    8000115c:	0db13c23          	sd	s11,216(sp)
    80001160:	0fc13023          	sd	t3,224(sp)
    80001164:	0fd13423          	sd	t4,232(sp)
    80001168:	0fe13823          	sd	t5,240(sp)
    8000116c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001170:	6a8010ef          	jal	ra,80002818 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001174:	00013003          	ld	zero,0(sp)
    80001178:	00813083          	ld	ra,8(sp)
    8000117c:	01013103          	ld	sp,16(sp)
    80001180:	01813183          	ld	gp,24(sp)
    80001184:	02013203          	ld	tp,32(sp)
    80001188:	02813283          	ld	t0,40(sp)
    8000118c:	03013303          	ld	t1,48(sp)
    80001190:	03813383          	ld	t2,56(sp)
    80001194:	04013403          	ld	s0,64(sp)
    80001198:	04813483          	ld	s1,72(sp)
    8000119c:	05813583          	ld	a1,88(sp)
    800011a0:	06013603          	ld	a2,96(sp)
    800011a4:	06813683          	ld	a3,104(sp)
    800011a8:	07013703          	ld	a4,112(sp)
    800011ac:	07813783          	ld	a5,120(sp)
    800011b0:	08013803          	ld	a6,128(sp)
    800011b4:	08813883          	ld	a7,136(sp)
    800011b8:	09013903          	ld	s2,144(sp)
    800011bc:	09813983          	ld	s3,152(sp)
    800011c0:	0a013a03          	ld	s4,160(sp)
    800011c4:	0a813a83          	ld	s5,168(sp)
    800011c8:	0b013b03          	ld	s6,176(sp)
    800011cc:	0b813b83          	ld	s7,184(sp)
    800011d0:	0c013c03          	ld	s8,192(sp)
    800011d4:	0c813c83          	ld	s9,200(sp)
    800011d8:	0d013d03          	ld	s10,208(sp)
    800011dc:	0d813d83          	ld	s11,216(sp)
    800011e0:	0e013e03          	ld	t3,224(sp)
    800011e4:	0e813e83          	ld	t4,232(sp)
    800011e8:	0f013f03          	ld	t5,240(sp)
    800011ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800011f0:	10010113          	addi	sp,sp,256

    sret
    800011f4:	10200073          	sret
	...

0000000080001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001200:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001204:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001208:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000120c:	0085b103          	ld	sp,8(a1)

    80001210:	00008067          	ret

0000000080001214 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001214:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001218:	00b29a63          	bne	t0,a1,8000122c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000121c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001220:	fe029ae3          	bnez	t0,80001214 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001224:	00000513          	li	a0,0
    jr ra                  # Return.
    80001228:	00008067          	ret

000000008000122c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000122c:	00100513          	li	a0,1
    80001230:	00008067          	ret

0000000080001234 <_Z9mem_allocm>:
#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    80001234:	ff010113          	addi	sp,sp,-16
    80001238:	00813423          	sd	s0,8(sp)
    8000123c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(size));
    80001240:	00050893          	mv	a7,a0
    __asm__ volatile("li a0, 0x01");
    80001244:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001248:	00000073          	ecall
    void* a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    8000124c:	00050513          	mv	a0,a0
    return a0;
}
    80001250:	00813403          	ld	s0,8(sp)
    80001254:	01010113          	addi	sp,sp,16
    80001258:	00008067          	ret

000000008000125c <_Z8mem_freePv>:

int mem_free (void* r){
    8000125c:	ff010113          	addi	sp,sp,-16
    80001260:	00813423          	sd	s0,8(sp)
    80001264:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(r));
    80001268:	00050893          	mv	a7,a0
    __asm__ volatile("li a0, 0x02");
    8000126c:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001270:	00000073          	ecall

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001274:	00050513          	mv	a0,a0
    return a0;
}
    80001278:	0005051b          	sext.w	a0,a0
    8000127c:	00813403          	ld	s0,8(sp)
    80001280:	01010113          	addi	sp,sp,16
    80001284:	00008067          	ret

0000000080001288 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    80001288:	ff010113          	addi	sp,sp,-16
    8000128c:	00813423          	sd	s0,8(sp)
    80001290:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(arg));
    80001294:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    80001298:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000129c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012a0:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012a4:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800012a8:	00050513          	mv	a0,a0
    return a0;
}
    800012ac:	0005051b          	sext.w	a0,a0
    800012b0:	00813403          	ld	s0,8(sp)
    800012b4:	01010113          	addi	sp,sp,16
    800012b8:	00008067          	ret

00000000800012bc <_Z11thread_exitv>:

int thread_exit(){
    800012bc:	ff010113          	addi	sp,sp,-16
    800012c0:	00813423          	sd	s0,8(sp)
    800012c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800012c8:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    800012cc:	00000073          	ecall

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800012d0:	00050513          	mv	a0,a0
    return a0;
}
    800012d4:	0005051b          	sext.w	a0,a0
    800012d8:	00813403          	ld	s0,8(sp)
    800012dc:	01010113          	addi	sp,sp,16
    800012e0:	00008067          	ret

00000000800012e4 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012e4:	ff010113          	addi	sp,sp,-16
    800012e8:	00813423          	sd	s0,8(sp)
    800012ec:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    800012f0:	01300513          	li	a0,19
     __asm__ volatile("ecall");
    800012f4:	00000073          	ecall

}
    800012f8:	00813403          	ld	s0,8(sp)
    800012fc:	01010113          	addi	sp,sp,16
    80001300:	00008067          	ret

0000000080001304 <_Z12thread_startPP3TCB>:

int thread_start(thread_t* handle){
    80001304:	ff010113          	addi	sp,sp,-16
    80001308:	00813423          	sd	s0,8(sp)
    8000130c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001310:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x14");
    80001314:	01400513          	li	a0,20
    __asm__ volatile("ecall");
    80001318:	00000073          	ecall
    return 0;
}
    8000131c:	00000513          	li	a0,0
    80001320:	00813403          	ld	s0,8(sp)
    80001324:	01010113          	addi	sp,sp,16
    80001328:	00008067          	ret

000000008000132c <_Z14thread_create2PP3TCBPFvPvES2_>:

int thread_create2 (thread_t* handle, void(*start_routine)(void*), void* arg){
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(arg));
    80001338:	00060893          	mv	a7,a2
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    8000133c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001340:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    80001344:	01500513          	li	a0,21
    __asm__ volatile("ecall");
    80001348:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    8000134c:	00050513          	mv	a0,a0
    return a0;
}
    80001350:	0005051b          	sext.w	a0,a0
    80001354:	00813403          	ld	s0,8(sp)
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <_Z8sem_openPP10Ksemaphorej>:


int sem_open (sem_t* handle,unsigned init){
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(init));
    8000136c:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001370:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001374:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    80001378:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    8000137c:	00050513          	mv	a0,a0
    return a0;

}
    80001380:	0005051b          	sext.w	a0,a0
    80001384:	00813403          	ld	s0,8(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_Z9sem_closeP10Ksemaphore>:

int sem_close (sem_t handle){
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00813423          	sd	s0,8(sp)
    80001398:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handle));
    8000139c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    800013a0:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    800013a4:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800013a8:	00050513          	mv	a0,a0

    return a0;
}
    800013ac:	0005051b          	sext.w	a0,a0
    800013b0:	00813403          	ld	s0,8(sp)
    800013b4:	01010113          	addi	sp,sp,16
    800013b8:	00008067          	ret

00000000800013bc <_Z8sem_waitP10Ksemaphore>:

int sem_wait (sem_t id){
    800013bc:	ff010113          	addi	sp,sp,-16
    800013c0:	00813423          	sd	s0,8(sp)
    800013c4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(id));
    800013c8:	00050893          	mv	a7,a0
    __asm__ volatile("li a0, 0x23");
    800013cc:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    800013d0:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800013d4:	00050513          	mv	a0,a0

    return a0;

}
    800013d8:	0005051b          	sext.w	a0,a0
    800013dc:	00813403          	ld	s0,8(sp)
    800013e0:	01010113          	addi	sp,sp,16
    800013e4:	00008067          	ret

00000000800013e8 <_Z10sem_signalP10Ksemaphore>:

int sem_signal(sem_t id){
    800013e8:	ff010113          	addi	sp,sp,-16
    800013ec:	00813423          	sd	s0,8(sp)
    800013f0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a7, %0"::"r"(id));
    800013f4:	00050893          	mv	a7,a0
    __asm__ volatile("li a0, 0x24");
    800013f8:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    800013fc:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001400:	00050513          	mv	a0,a0

    return a0;
}
    80001404:	0005051b          	sext.w	a0,a0
    80001408:	00813403          	ld	s0,8(sp)
    8000140c:	01010113          	addi	sp,sp,16
    80001410:	00008067          	ret

0000000080001414 <_Z4getcv>:

char getc(){
    80001414:	ff010113          	addi	sp,sp,-16
    80001418:	00113423          	sd	ra,8(sp)
    8000141c:	00813023          	sd	s0,0(sp)
    80001420:	01010413          	addi	s0,sp,16
    return __getc();
    80001424:	00005097          	auipc	ra,0x5
    80001428:	954080e7          	jalr	-1708(ra) # 80005d78 <__getc>
}
    8000142c:	00813083          	ld	ra,8(sp)
    80001430:	00013403          	ld	s0,0(sp)
    80001434:	01010113          	addi	sp,sp,16
    80001438:	00008067          	ret

000000008000143c <_Z4putcc>:
void putc(char c){
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00113423          	sd	ra,8(sp)
    80001444:	00813023          	sd	s0,0(sp)
    80001448:	01010413          	addi	s0,sp,16
    __putc(c);
    8000144c:	00005097          	auipc	ra,0x5
    80001450:	8f0080e7          	jalr	-1808(ra) # 80005d3c <__putc>
}
    80001454:	00813083          	ld	ra,8(sp)
    80001458:	00013403          	ld	s0,0(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_Z11getThreadIdP3TCB>:

int getThreadId(thread_t t) {
    80001464:	fe010113          	addi	sp,sp,-32
    80001468:	00113c23          	sd	ra,24(sp)
    8000146c:	00813823          	sd	s0,16(sp)
    80001470:	00913423          	sd	s1,8(sp)
    80001474:	02010413          	addi	s0,sp,32
    __asm__ volatile("mv a1, %0"::"r"(t));
    80001478:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000147c:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80001480:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001484:	00050493          	mv	s1,a0
    thread_dispatch();
    80001488:	00000097          	auipc	ra,0x0
    8000148c:	e5c080e7          	jalr	-420(ra) # 800012e4 <_Z15thread_dispatchv>
    return a0;
}
    80001490:	0004851b          	sext.w	a0,s1
    80001494:	01813083          	ld	ra,24(sp)
    80001498:	01013403          	ld	s0,16(sp)
    8000149c:	00813483          	ld	s1,8(sp)
    800014a0:	02010113          	addi	sp,sp,32
    800014a4:	00008067          	ret

00000000800014a8 <_ZN10Ksemaphore5blockEv>:
#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    800014a8:	fe010113          	addi	sp,sp,-32
    800014ac:	00113c23          	sd	ra,24(sp)
    800014b0:	00813823          	sd	s0,16(sp)
    800014b4:	00913423          	sd	s1,8(sp)
    800014b8:	01213023          	sd	s2,0(sp)
    800014bc:	02010413          	addi	s0,sp,32
    800014c0:	00050493          	mv	s1,a0
    TCB* tr=TCB::running;
    800014c4:	00006797          	auipc	a5,0x6
    800014c8:	2dc7b783          	ld	a5,732(a5) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014cc:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800014d0:	01000513          	li	a0,16
    800014d4:	00001097          	auipc	ra,0x1
    800014d8:	1d8080e7          	jalr	472(ra) # 800026ac <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800014dc:	01253023          	sd	s2,0(a0)
    800014e0:	00053423          	sd	zero,8(a0)
        if (tail)
    800014e4:	0104b783          	ld	a5,16(s1)
    800014e8:	02078263          	beqz	a5,8000150c <_ZN10Ksemaphore5blockEv+0x64>
        {
            tail->next = elem;
    800014ec:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014f0:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(tr);
}
    800014f4:	01813083          	ld	ra,24(sp)
    800014f8:	01013403          	ld	s0,16(sp)
    800014fc:	00813483          	ld	s1,8(sp)
    80001500:	00013903          	ld	s2,0(sp)
    80001504:	02010113          	addi	sp,sp,32
    80001508:	00008067          	ret
        } else
        {
            head = tail = elem;
    8000150c:	00a4b823          	sd	a0,16(s1)
    80001510:	00a4b423          	sd	a0,8(s1)
    80001514:	fe1ff06f          	j	800014f4 <_ZN10Ksemaphore5blockEv+0x4c>

0000000080001518 <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00113423          	sd	ra,8(sp)
    80001520:	00813023          	sd	s0,0(sp)
    80001524:	01010413          	addi	s0,sp,16
    80001528:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000152c:	00853503          	ld	a0,8(a0)
    80001530:	00050a63          	beqz	a0,80001544 <_ZN10Ksemaphore7unblockEv+0x2c>

        Elem *elem = head;
        head = head->next;
    80001534:	00853703          	ld	a4,8(a0)
    80001538:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    8000153c:	02070063          	beqz	a4,8000155c <_ZN10Ksemaphore7unblockEv+0x44>

        T *ret = elem->data;
    80001540:	00053503          	ld	a0,0(a0)
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    80001544:	00002097          	auipc	ra,0x2
    80001548:	9e0080e7          	jalr	-1568(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
}
    8000154c:	00813083          	ld	ra,8(sp)
    80001550:	00013403          	ld	s0,0(sp)
    80001554:	01010113          	addi	sp,sp,16
    80001558:	00008067          	ret
        if (!head) { tail = 0; }
    8000155c:	0007b823          	sd	zero,16(a5)
    80001560:	fe1ff06f          	j	80001540 <_ZN10Ksemaphore7unblockEv+0x28>

0000000080001564 <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    80001564:	00052783          	lw	a5,0(a0)
    80001568:	fff7879b          	addiw	a5,a5,-1
    8000156c:	00f52023          	sw	a5,0(a0)
    80001570:	02079713          	slli	a4,a5,0x20
    80001574:	00074663          	bltz	a4,80001580 <_ZN10Ksemaphore4waitEv+0x1c>
        block();
        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 1;
    80001578:	00100513          	li	a0,1
}
    8000157c:	00008067          	ret
int Ksemaphore::wait() {
    80001580:	ff010113          	addi	sp,sp,-16
    80001584:	00113423          	sd	ra,8(sp)
    80001588:	00813023          	sd	s0,0(sp)
    8000158c:	01010413          	addi	s0,sp,16
        block();
    80001590:	00000097          	auipc	ra,0x0
    80001594:	f18080e7          	jalr	-232(ra) # 800014a8 <_ZN10Ksemaphore5blockEv>
        TCB::dispatchWithoutScheduler();
    80001598:	00001097          	auipc	ra,0x1
    8000159c:	65c080e7          	jalr	1628(ra) # 80002bf4 <_ZN3TCB24dispatchWithoutSchedulerEv>
        return 0;
    800015a0:	00000513          	li	a0,0
}
    800015a4:	00813083          	ld	ra,8(sp)
    800015a8:	00013403          	ld	s0,0(sp)
    800015ac:	01010113          	addi	sp,sp,16
    800015b0:	00008067          	ret

00000000800015b4 <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    800015b4:	00052783          	lw	a5,0(a0)
    800015b8:	0017879b          	addiw	a5,a5,1
    800015bc:	0007871b          	sext.w	a4,a5
    800015c0:	00f52023          	sw	a5,0(a0)
    800015c4:	00e05663          	blez	a4,800015d0 <_ZN10Ksemaphore6signalEv+0x1c>
        unblock();
        return 0;
    }
    return 1;
    800015c8:	00100513          	li	a0,1
}
    800015cc:	00008067          	ret
int Ksemaphore::signal() {
    800015d0:	ff010113          	addi	sp,sp,-16
    800015d4:	00113423          	sd	ra,8(sp)
    800015d8:	00813023          	sd	s0,0(sp)
    800015dc:	01010413          	addi	s0,sp,16
        unblock();
    800015e0:	00000097          	auipc	ra,0x0
    800015e4:	f38080e7          	jalr	-200(ra) # 80001518 <_ZN10Ksemaphore7unblockEv>
        return 0;
    800015e8:	00000513          	li	a0,0
}
    800015ec:	00813083          	ld	ra,8(sp)
    800015f0:	00013403          	ld	s0,0(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    800015fc:	fe010113          	addi	sp,sp,-32
    80001600:	00113c23          	sd	ra,24(sp)
    80001604:	00813823          	sd	s0,16(sp)
    80001608:	00913423          	sd	s1,8(sp)
    8000160c:	02010413          	addi	s0,sp,32
    80001610:	00050493          	mv	s1,a0
    80001614:	0180006f          	j	8000162c <_ZN10Ksemaphore14closeSemaphoreEv+0x30>
    80001618:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    8000161c:	0007b503          	ld	a0,0(a5)
    TCB* tcb;
    while((tcb=blocked.removeFirst())!= nullptr){
    80001620:	02050263          	beqz	a0,80001644 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
//        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    80001624:	00002097          	auipc	ra,0x2
    80001628:	900080e7          	jalr	-1792(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    8000162c:	0084b783          	ld	a5,8(s1)
    80001630:	00078a63          	beqz	a5,80001644 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
        head = head->next;
    80001634:	0087b703          	ld	a4,8(a5)
    80001638:	00e4b423          	sd	a4,8(s1)
        if (!head) { tail = 0; }
    8000163c:	fe0710e3          	bnez	a4,8000161c <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    80001640:	fd9ff06f          	j	80001618 <_ZN10Ksemaphore14closeSemaphoreEv+0x1c>
    }

    return 0;
}
    80001644:	00000513          	li	a0,0
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	02010113          	addi	sp,sp,32
    80001658:	00008067          	ret

000000008000165c <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    8000165c:	ff010113          	addi	sp,sp,-16
    80001660:	00113423          	sd	ra,8(sp)
    80001664:	00813023          	sd	s0,0(sp)
    80001668:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000166c:	00002097          	auipc	ra,0x2
    80001670:	a60080e7          	jalr	-1440(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001674:	00813083          	ld	ra,8(sp)
    80001678:	00013403          	ld	s0,0(sp)
    8000167c:	01010113          	addi	sp,sp,16
    80001680:	00008067          	ret

0000000080001684 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00113423          	sd	ra,8(sp)
    8000168c:	00813023          	sd	s0,0(sp)
    80001690:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    80001694:	01800513          	li	a0,24
    80001698:	00002097          	auipc	ra,0x2
    8000169c:	998080e7          	jalr	-1640(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
}
    800016a0:	00813083          	ld	ra,8(sp)
    800016a4:	00013403          	ld	s0,0(sp)
    800016a8:	01010113          	addi	sp,sp,16
    800016ac:	00008067          	ret

00000000800016b0 <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	02010413          	addi	s0,sp,32
    800016c4:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    800016c8:	01800513          	li	a0,24
    800016cc:	00000097          	auipc	ra,0x0
    800016d0:	fb8080e7          	jalr	-72(ra) # 80001684 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    800016d4:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016d8:	00053423          	sd	zero,8(a0)
    800016dc:	00053823          	sd	zero,16(a0)
}
    800016e0:	01813083          	ld	ra,24(sp)
    800016e4:	01013403          	ld	s0,16(sp)
    800016e8:	00813483          	ld	s1,8(sp)
    800016ec:	02010113          	addi	sp,sp,32
    800016f0:	00008067          	ret

00000000800016f4 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    800016f4:	fe010113          	addi	sp,sp,-32
    800016f8:	00113c23          	sd	ra,24(sp)
    800016fc:	00813823          	sd	s0,16(sp)
    80001700:	00913423          	sd	s1,8(sp)
    80001704:	01213023          	sd	s2,0(sp)
    80001708:	02010413          	addi	s0,sp,32
    8000170c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001710:	00100793          	li	a5,1
    80001714:	02a7f863          	bgeu	a5,a0,80001744 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001718:	00a00793          	li	a5,10
    8000171c:	02f577b3          	remu	a5,a0,a5
    80001720:	02078e63          	beqz	a5,8000175c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001724:	fff48513          	addi	a0,s1,-1
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	fcc080e7          	jalr	-52(ra) # 800016f4 <_Z9fibonaccim>
    80001730:	00050913          	mv	s2,a0
    80001734:	ffe48513          	addi	a0,s1,-2
    80001738:	00000097          	auipc	ra,0x0
    8000173c:	fbc080e7          	jalr	-68(ra) # 800016f4 <_Z9fibonaccim>
    80001740:	00a90533          	add	a0,s2,a0
}
    80001744:	01813083          	ld	ra,24(sp)
    80001748:	01013403          	ld	s0,16(sp)
    8000174c:	00813483          	ld	s1,8(sp)
    80001750:	00013903          	ld	s2,0(sp)
    80001754:	02010113          	addi	sp,sp,32
    80001758:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	b88080e7          	jalr	-1144(ra) # 800012e4 <_Z15thread_dispatchv>
    80001764:	fc1ff06f          	j	80001724 <_Z9fibonaccim+0x30>

0000000080001768 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001768:	fe010113          	addi	sp,sp,-32
    8000176c:	00113c23          	sd	ra,24(sp)
    80001770:	00813823          	sd	s0,16(sp)
    80001774:	00913423          	sd	s1,8(sp)
    80001778:	01213023          	sd	s2,0(sp)
    8000177c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    80001780:	00000913          	li	s2,0
    80001784:	0380006f          	j	800017bc <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001788:	00000097          	auipc	ra,0x0
    8000178c:	b5c080e7          	jalr	-1188(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001790:	00148493          	addi	s1,s1,1
    80001794:	000027b7          	lui	a5,0x2
    80001798:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000179c:	0097ee63          	bltu	a5,s1,800017b8 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800017a0:	00000713          	li	a4,0
    800017a4:	000077b7          	lui	a5,0x7
    800017a8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800017ac:	fce7eee3          	bltu	a5,a4,80001788 <_ZN7WorkerA11workerBodyAEPv+0x20>
    800017b0:	00170713          	addi	a4,a4,1
    800017b4:	ff1ff06f          	j	800017a4 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800017b8:	00190913          	addi	s2,s2,1
    800017bc:	00900793          	li	a5,9
    800017c0:	0527e063          	bltu	a5,s2,80001800 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800017c4:	00005517          	auipc	a0,0x5
    800017c8:	85c50513          	addi	a0,a0,-1956 # 80006020 <CONSOLE_STATUS+0x10>
    800017cc:	00002097          	auipc	ra,0x2
    800017d0:	af0080e7          	jalr	-1296(ra) # 800032bc <_Z11printStringPKc>
    800017d4:	00000613          	li	a2,0
    800017d8:	00a00593          	li	a1,10
    800017dc:	0009051b          	sext.w	a0,s2
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	c74080e7          	jalr	-908(ra) # 80003454 <_Z8printIntiii>
    800017e8:	00005517          	auipc	a0,0x5
    800017ec:	a7050513          	addi	a0,a0,-1424 # 80006258 <CONSOLE_STATUS+0x248>
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	acc080e7          	jalr	-1332(ra) # 800032bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800017f8:	00000493          	li	s1,0
    800017fc:	f99ff06f          	j	80001794 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001800:	00005517          	auipc	a0,0x5
    80001804:	82850513          	addi	a0,a0,-2008 # 80006028 <CONSOLE_STATUS+0x18>
    80001808:	00002097          	auipc	ra,0x2
    8000180c:	ab4080e7          	jalr	-1356(ra) # 800032bc <_Z11printStringPKc>
    finishedA = true;
    80001810:	00100793          	li	a5,1
    80001814:	00006717          	auipc	a4,0x6
    80001818:	fef70623          	sb	a5,-20(a4) # 80007800 <finishedA>
}
    8000181c:	01813083          	ld	ra,24(sp)
    80001820:	01013403          	ld	s0,16(sp)
    80001824:	00813483          	ld	s1,8(sp)
    80001828:	00013903          	ld	s2,0(sp)
    8000182c:	02010113          	addi	sp,sp,32
    80001830:	00008067          	ret

0000000080001834 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001834:	fe010113          	addi	sp,sp,-32
    80001838:	00113c23          	sd	ra,24(sp)
    8000183c:	00813823          	sd	s0,16(sp)
    80001840:	00913423          	sd	s1,8(sp)
    80001844:	01213023          	sd	s2,0(sp)
    80001848:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    8000184c:	00000913          	li	s2,0
    80001850:	0380006f          	j	80001888 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001854:	00000097          	auipc	ra,0x0
    80001858:	a90080e7          	jalr	-1392(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000185c:	00148493          	addi	s1,s1,1
    80001860:	000027b7          	lui	a5,0x2
    80001864:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001868:	0097ee63          	bltu	a5,s1,80001884 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000186c:	00000713          	li	a4,0
    80001870:	000077b7          	lui	a5,0x7
    80001874:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001878:	fce7eee3          	bltu	a5,a4,80001854 <_ZN7WorkerB11workerBodyBEPv+0x20>
    8000187c:	00170713          	addi	a4,a4,1
    80001880:	ff1ff06f          	j	80001870 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001884:	00190913          	addi	s2,s2,1
    80001888:	00f00793          	li	a5,15
    8000188c:	0527e063          	bltu	a5,s2,800018cc <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80001890:	00004517          	auipc	a0,0x4
    80001894:	7a850513          	addi	a0,a0,1960 # 80006038 <CONSOLE_STATUS+0x28>
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	a24080e7          	jalr	-1500(ra) # 800032bc <_Z11printStringPKc>
    800018a0:	00000613          	li	a2,0
    800018a4:	00a00593          	li	a1,10
    800018a8:	0009051b          	sext.w	a0,s2
    800018ac:	00002097          	auipc	ra,0x2
    800018b0:	ba8080e7          	jalr	-1112(ra) # 80003454 <_Z8printIntiii>
    800018b4:	00005517          	auipc	a0,0x5
    800018b8:	9a450513          	addi	a0,a0,-1628 # 80006258 <CONSOLE_STATUS+0x248>
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	a00080e7          	jalr	-1536(ra) # 800032bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800018c4:	00000493          	li	s1,0
    800018c8:	f99ff06f          	j	80001860 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800018cc:	00004517          	auipc	a0,0x4
    800018d0:	77450513          	addi	a0,a0,1908 # 80006040 <CONSOLE_STATUS+0x30>
    800018d4:	00002097          	auipc	ra,0x2
    800018d8:	9e8080e7          	jalr	-1560(ra) # 800032bc <_Z11printStringPKc>
    finishedB = true;
    800018dc:	00100793          	li	a5,1
    800018e0:	00006717          	auipc	a4,0x6
    800018e4:	f2f700a3          	sb	a5,-223(a4) # 80007801 <finishedB>
    thread_dispatch();
    800018e8:	00000097          	auipc	ra,0x0
    800018ec:	9fc080e7          	jalr	-1540(ra) # 800012e4 <_Z15thread_dispatchv>
}
    800018f0:	01813083          	ld	ra,24(sp)
    800018f4:	01013403          	ld	s0,16(sp)
    800018f8:	00813483          	ld	s1,8(sp)
    800018fc:	00013903          	ld	s2,0(sp)
    80001900:	02010113          	addi	sp,sp,32
    80001904:	00008067          	ret

0000000080001908 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    80001908:	fe010113          	addi	sp,sp,-32
    8000190c:	00113c23          	sd	ra,24(sp)
    80001910:	00813823          	sd	s0,16(sp)
    80001914:	00913423          	sd	s1,8(sp)
    80001918:	01213023          	sd	s2,0(sp)
    8000191c:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001920:	00000493          	li	s1,0
    80001924:	0400006f          	j	80001964 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001928:	00004517          	auipc	a0,0x4
    8000192c:	72850513          	addi	a0,a0,1832 # 80006050 <CONSOLE_STATUS+0x40>
    80001930:	00002097          	auipc	ra,0x2
    80001934:	98c080e7          	jalr	-1652(ra) # 800032bc <_Z11printStringPKc>
    80001938:	00000613          	li	a2,0
    8000193c:	00a00593          	li	a1,10
    80001940:	00048513          	mv	a0,s1
    80001944:	00002097          	auipc	ra,0x2
    80001948:	b10080e7          	jalr	-1264(ra) # 80003454 <_Z8printIntiii>
    8000194c:	00005517          	auipc	a0,0x5
    80001950:	90c50513          	addi	a0,a0,-1780 # 80006258 <CONSOLE_STATUS+0x248>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	968080e7          	jalr	-1688(ra) # 800032bc <_Z11printStringPKc>
    for (; i < 3; i++) {
    8000195c:	0014849b          	addiw	s1,s1,1
    80001960:	0ff4f493          	andi	s1,s1,255
    80001964:	00200793          	li	a5,2
    80001968:	fc97f0e3          	bgeu	a5,s1,80001928 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    8000196c:	00004517          	auipc	a0,0x4
    80001970:	6ec50513          	addi	a0,a0,1772 # 80006058 <CONSOLE_STATUS+0x48>
    80001974:	00002097          	auipc	ra,0x2
    80001978:	948080e7          	jalr	-1720(ra) # 800032bc <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000197c:	00700313          	li	t1,7
    thread_dispatch();
    80001980:	00000097          	auipc	ra,0x0
    80001984:	964080e7          	jalr	-1692(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001988:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000198c:	00004517          	auipc	a0,0x4
    80001990:	6dc50513          	addi	a0,a0,1756 # 80006068 <CONSOLE_STATUS+0x58>
    80001994:	00002097          	auipc	ra,0x2
    80001998:	928080e7          	jalr	-1752(ra) # 800032bc <_Z11printStringPKc>
    8000199c:	00000613          	li	a2,0
    800019a0:	00a00593          	li	a1,10
    800019a4:	0009051b          	sext.w	a0,s2
    800019a8:	00002097          	auipc	ra,0x2
    800019ac:	aac080e7          	jalr	-1364(ra) # 80003454 <_Z8printIntiii>
    800019b0:	00005517          	auipc	a0,0x5
    800019b4:	8a850513          	addi	a0,a0,-1880 # 80006258 <CONSOLE_STATUS+0x248>
    800019b8:	00002097          	auipc	ra,0x2
    800019bc:	904080e7          	jalr	-1788(ra) # 800032bc <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800019c0:	00c00513          	li	a0,12
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	d30080e7          	jalr	-720(ra) # 800016f4 <_Z9fibonaccim>
    800019cc:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800019d0:	00004517          	auipc	a0,0x4
    800019d4:	6a050513          	addi	a0,a0,1696 # 80006070 <CONSOLE_STATUS+0x60>
    800019d8:	00002097          	auipc	ra,0x2
    800019dc:	8e4080e7          	jalr	-1820(ra) # 800032bc <_Z11printStringPKc>
    800019e0:	00000613          	li	a2,0
    800019e4:	00a00593          	li	a1,10
    800019e8:	0009051b          	sext.w	a0,s2
    800019ec:	00002097          	auipc	ra,0x2
    800019f0:	a68080e7          	jalr	-1432(ra) # 80003454 <_Z8printIntiii>
    800019f4:	00005517          	auipc	a0,0x5
    800019f8:	86450513          	addi	a0,a0,-1948 # 80006258 <CONSOLE_STATUS+0x248>
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	8c0080e7          	jalr	-1856(ra) # 800032bc <_Z11printStringPKc>
    80001a04:	0400006f          	j	80001a44 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001a08:	00004517          	auipc	a0,0x4
    80001a0c:	64850513          	addi	a0,a0,1608 # 80006050 <CONSOLE_STATUS+0x40>
    80001a10:	00002097          	auipc	ra,0x2
    80001a14:	8ac080e7          	jalr	-1876(ra) # 800032bc <_Z11printStringPKc>
    80001a18:	00000613          	li	a2,0
    80001a1c:	00a00593          	li	a1,10
    80001a20:	00048513          	mv	a0,s1
    80001a24:	00002097          	auipc	ra,0x2
    80001a28:	a30080e7          	jalr	-1488(ra) # 80003454 <_Z8printIntiii>
    80001a2c:	00005517          	auipc	a0,0x5
    80001a30:	82c50513          	addi	a0,a0,-2004 # 80006258 <CONSOLE_STATUS+0x248>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	888080e7          	jalr	-1912(ra) # 800032bc <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001a3c:	0014849b          	addiw	s1,s1,1
    80001a40:	0ff4f493          	andi	s1,s1,255
    80001a44:	00500793          	li	a5,5
    80001a48:	fc97f0e3          	bgeu	a5,s1,80001a08 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80001a4c:	00004517          	auipc	a0,0x4
    80001a50:	5dc50513          	addi	a0,a0,1500 # 80006028 <CONSOLE_STATUS+0x18>
    80001a54:	00002097          	auipc	ra,0x2
    80001a58:	868080e7          	jalr	-1944(ra) # 800032bc <_Z11printStringPKc>
    finishedC = true;
    80001a5c:	00100793          	li	a5,1
    80001a60:	00006717          	auipc	a4,0x6
    80001a64:	daf70123          	sb	a5,-606(a4) # 80007802 <finishedC>
    thread_dispatch();
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	87c080e7          	jalr	-1924(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001a70:	01813083          	ld	ra,24(sp)
    80001a74:	01013403          	ld	s0,16(sp)
    80001a78:	00813483          	ld	s1,8(sp)
    80001a7c:	00013903          	ld	s2,0(sp)
    80001a80:	02010113          	addi	sp,sp,32
    80001a84:	00008067          	ret

0000000080001a88 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80001a88:	fe010113          	addi	sp,sp,-32
    80001a8c:	00113c23          	sd	ra,24(sp)
    80001a90:	00813823          	sd	s0,16(sp)
    80001a94:	00913423          	sd	s1,8(sp)
    80001a98:	01213023          	sd	s2,0(sp)
    80001a9c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001aa0:	00a00493          	li	s1,10
    80001aa4:	0400006f          	j	80001ae4 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001aa8:	00004517          	auipc	a0,0x4
    80001aac:	5d850513          	addi	a0,a0,1496 # 80006080 <CONSOLE_STATUS+0x70>
    80001ab0:	00002097          	auipc	ra,0x2
    80001ab4:	80c080e7          	jalr	-2036(ra) # 800032bc <_Z11printStringPKc>
    80001ab8:	00000613          	li	a2,0
    80001abc:	00a00593          	li	a1,10
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00002097          	auipc	ra,0x2
    80001ac8:	990080e7          	jalr	-1648(ra) # 80003454 <_Z8printIntiii>
    80001acc:	00004517          	auipc	a0,0x4
    80001ad0:	78c50513          	addi	a0,a0,1932 # 80006258 <CONSOLE_STATUS+0x248>
    80001ad4:	00001097          	auipc	ra,0x1
    80001ad8:	7e8080e7          	jalr	2024(ra) # 800032bc <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001adc:	0014849b          	addiw	s1,s1,1
    80001ae0:	0ff4f493          	andi	s1,s1,255
    80001ae4:	00c00793          	li	a5,12
    80001ae8:	fc97f0e3          	bgeu	a5,s1,80001aa8 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001aec:	00004517          	auipc	a0,0x4
    80001af0:	59c50513          	addi	a0,a0,1436 # 80006088 <CONSOLE_STATUS+0x78>
    80001af4:	00001097          	auipc	ra,0x1
    80001af8:	7c8080e7          	jalr	1992(ra) # 800032bc <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001afc:	00500313          	li	t1,5
    thread_dispatch();
    80001b00:	fffff097          	auipc	ra,0xfffff
    80001b04:	7e4080e7          	jalr	2020(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001b08:	01000513          	li	a0,16
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	be8080e7          	jalr	-1048(ra) # 800016f4 <_Z9fibonaccim>
    80001b14:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001b18:	00004517          	auipc	a0,0x4
    80001b1c:	58050513          	addi	a0,a0,1408 # 80006098 <CONSOLE_STATUS+0x88>
    80001b20:	00001097          	auipc	ra,0x1
    80001b24:	79c080e7          	jalr	1948(ra) # 800032bc <_Z11printStringPKc>
    80001b28:	00000613          	li	a2,0
    80001b2c:	00a00593          	li	a1,10
    80001b30:	0009051b          	sext.w	a0,s2
    80001b34:	00002097          	auipc	ra,0x2
    80001b38:	920080e7          	jalr	-1760(ra) # 80003454 <_Z8printIntiii>
    80001b3c:	00004517          	auipc	a0,0x4
    80001b40:	71c50513          	addi	a0,a0,1820 # 80006258 <CONSOLE_STATUS+0x248>
    80001b44:	00001097          	auipc	ra,0x1
    80001b48:	778080e7          	jalr	1912(ra) # 800032bc <_Z11printStringPKc>
    80001b4c:	0400006f          	j	80001b8c <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001b50:	00004517          	auipc	a0,0x4
    80001b54:	53050513          	addi	a0,a0,1328 # 80006080 <CONSOLE_STATUS+0x70>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	764080e7          	jalr	1892(ra) # 800032bc <_Z11printStringPKc>
    80001b60:	00000613          	li	a2,0
    80001b64:	00a00593          	li	a1,10
    80001b68:	00048513          	mv	a0,s1
    80001b6c:	00002097          	auipc	ra,0x2
    80001b70:	8e8080e7          	jalr	-1816(ra) # 80003454 <_Z8printIntiii>
    80001b74:	00004517          	auipc	a0,0x4
    80001b78:	6e450513          	addi	a0,a0,1764 # 80006258 <CONSOLE_STATUS+0x248>
    80001b7c:	00001097          	auipc	ra,0x1
    80001b80:	740080e7          	jalr	1856(ra) # 800032bc <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001b84:	0014849b          	addiw	s1,s1,1
    80001b88:	0ff4f493          	andi	s1,s1,255
    80001b8c:	00f00793          	li	a5,15
    80001b90:	fc97f0e3          	bgeu	a5,s1,80001b50 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80001b94:	00004517          	auipc	a0,0x4
    80001b98:	51450513          	addi	a0,a0,1300 # 800060a8 <CONSOLE_STATUS+0x98>
    80001b9c:	00001097          	auipc	ra,0x1
    80001ba0:	720080e7          	jalr	1824(ra) # 800032bc <_Z11printStringPKc>
    finishedD = true;
    80001ba4:	00100793          	li	a5,1
    80001ba8:	00006717          	auipc	a4,0x6
    80001bac:	c4f70da3          	sb	a5,-933(a4) # 80007803 <finishedD>
    thread_dispatch();
    80001bb0:	fffff097          	auipc	ra,0xfffff
    80001bb4:	734080e7          	jalr	1844(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001bb8:	01813083          	ld	ra,24(sp)
    80001bbc:	01013403          	ld	s0,16(sp)
    80001bc0:	00813483          	ld	s1,8(sp)
    80001bc4:	00013903          	ld	s2,0(sp)
    80001bc8:	02010113          	addi	sp,sp,32
    80001bcc:	00008067          	ret

0000000080001bd0 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001bd0:	fc010113          	addi	sp,sp,-64
    80001bd4:	02113c23          	sd	ra,56(sp)
    80001bd8:	02813823          	sd	s0,48(sp)
    80001bdc:	02913423          	sd	s1,40(sp)
    80001be0:	03213023          	sd	s2,32(sp)
    80001be4:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001be8:	01000513          	li	a0,16
    80001bec:	00001097          	auipc	ra,0x1
    80001bf0:	ac0080e7          	jalr	-1344(ra) # 800026ac <_Znwm>
    80001bf4:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001bf8:	00001097          	auipc	ra,0x1
    80001bfc:	974080e7          	jalr	-1676(ra) # 8000256c <_ZN6ThreadC1Ev>
    80001c00:	00006797          	auipc	a5,0x6
    80001c04:	a8078793          	addi	a5,a5,-1408 # 80007680 <_ZTV7WorkerA+0x10>
    80001c08:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001c0c:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001c10:	00004517          	auipc	a0,0x4
    80001c14:	4a850513          	addi	a0,a0,1192 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001c18:	00001097          	auipc	ra,0x1
    80001c1c:	6a4080e7          	jalr	1700(ra) # 800032bc <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001c20:	01000513          	li	a0,16
    80001c24:	00001097          	auipc	ra,0x1
    80001c28:	a88080e7          	jalr	-1400(ra) # 800026ac <_Znwm>
    80001c2c:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	93c080e7          	jalr	-1732(ra) # 8000256c <_ZN6ThreadC1Ev>
    80001c38:	00006797          	auipc	a5,0x6
    80001c3c:	a7078793          	addi	a5,a5,-1424 # 800076a8 <_ZTV7WorkerB+0x10>
    80001c40:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001c44:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001c48:	00004517          	auipc	a0,0x4
    80001c4c:	48850513          	addi	a0,a0,1160 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001c50:	00001097          	auipc	ra,0x1
    80001c54:	66c080e7          	jalr	1644(ra) # 800032bc <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001c58:	01000513          	li	a0,16
    80001c5c:	00001097          	auipc	ra,0x1
    80001c60:	a50080e7          	jalr	-1456(ra) # 800026ac <_Znwm>
    80001c64:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80001c68:	00001097          	auipc	ra,0x1
    80001c6c:	904080e7          	jalr	-1788(ra) # 8000256c <_ZN6ThreadC1Ev>
    80001c70:	00006797          	auipc	a5,0x6
    80001c74:	a6078793          	addi	a5,a5,-1440 # 800076d0 <_ZTV7WorkerC+0x10>
    80001c78:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001c7c:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001c80:	00004517          	auipc	a0,0x4
    80001c84:	46850513          	addi	a0,a0,1128 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001c88:	00001097          	auipc	ra,0x1
    80001c8c:	634080e7          	jalr	1588(ra) # 800032bc <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001c90:	01000513          	li	a0,16
    80001c94:	00001097          	auipc	ra,0x1
    80001c98:	a18080e7          	jalr	-1512(ra) # 800026ac <_Znwm>
    80001c9c:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001ca0:	00001097          	auipc	ra,0x1
    80001ca4:	8cc080e7          	jalr	-1844(ra) # 8000256c <_ZN6ThreadC1Ev>
    80001ca8:	00006797          	auipc	a5,0x6
    80001cac:	a5078793          	addi	a5,a5,-1456 # 800076f8 <_ZTV7WorkerD+0x10>
    80001cb0:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001cb4:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80001cb8:	00004517          	auipc	a0,0x4
    80001cbc:	44850513          	addi	a0,a0,1096 # 80006100 <CONSOLE_STATUS+0xf0>
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	5fc080e7          	jalr	1532(ra) # 800032bc <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001cc8:	00000493          	li	s1,0
    80001ccc:	00300793          	li	a5,3
    80001cd0:	0297c663          	blt	a5,s1,80001cfc <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001cd4:	00349793          	slli	a5,s1,0x3
    80001cd8:	fe040713          	addi	a4,s0,-32
    80001cdc:	00f707b3          	add	a5,a4,a5
    80001ce0:	fe07b503          	ld	a0,-32(a5)
    80001ce4:	00000097          	auipc	ra,0x0
    80001ce8:	7f8080e7          	jalr	2040(ra) # 800024dc <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001cec:	0014849b          	addiw	s1,s1,1
    80001cf0:	fddff06f          	j	80001ccc <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001cf4:	00001097          	auipc	ra,0x1
    80001cf8:	818080e7          	jalr	-2024(ra) # 8000250c <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001cfc:	00006797          	auipc	a5,0x6
    80001d00:	b047c783          	lbu	a5,-1276(a5) # 80007800 <finishedA>
    80001d04:	fe0788e3          	beqz	a5,80001cf4 <_Z20Threads_CPP_API_testv+0x124>
    80001d08:	00006797          	auipc	a5,0x6
    80001d0c:	af97c783          	lbu	a5,-1287(a5) # 80007801 <finishedB>
    80001d10:	fe0782e3          	beqz	a5,80001cf4 <_Z20Threads_CPP_API_testv+0x124>
    80001d14:	00006797          	auipc	a5,0x6
    80001d18:	aee7c783          	lbu	a5,-1298(a5) # 80007802 <finishedC>
    80001d1c:	fc078ce3          	beqz	a5,80001cf4 <_Z20Threads_CPP_API_testv+0x124>
    80001d20:	00006797          	auipc	a5,0x6
    80001d24:	ae37c783          	lbu	a5,-1309(a5) # 80007803 <finishedD>
    80001d28:	fc0786e3          	beqz	a5,80001cf4 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001d2c:	fc040493          	addi	s1,s0,-64
    80001d30:	0080006f          	j	80001d38 <_Z20Threads_CPP_API_testv+0x168>
    80001d34:	00848493          	addi	s1,s1,8
    80001d38:	fe040793          	addi	a5,s0,-32
    80001d3c:	08f48663          	beq	s1,a5,80001dc8 <_Z20Threads_CPP_API_testv+0x1f8>
    80001d40:	0004b503          	ld	a0,0(s1)
    80001d44:	fe0508e3          	beqz	a0,80001d34 <_Z20Threads_CPP_API_testv+0x164>
    80001d48:	00053783          	ld	a5,0(a0)
    80001d4c:	0087b783          	ld	a5,8(a5)
    80001d50:	000780e7          	jalr	a5
    80001d54:	fe1ff06f          	j	80001d34 <_Z20Threads_CPP_API_testv+0x164>
    80001d58:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001d5c:	00048513          	mv	a0,s1
    80001d60:	00001097          	auipc	ra,0x1
    80001d64:	99c080e7          	jalr	-1636(ra) # 800026fc <_ZdlPv>
    80001d68:	00090513          	mv	a0,s2
    80001d6c:	00007097          	auipc	ra,0x7
    80001d70:	bac080e7          	jalr	-1108(ra) # 80008918 <_Unwind_Resume>
    80001d74:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001d78:	00048513          	mv	a0,s1
    80001d7c:	00001097          	auipc	ra,0x1
    80001d80:	980080e7          	jalr	-1664(ra) # 800026fc <_ZdlPv>
    80001d84:	00090513          	mv	a0,s2
    80001d88:	00007097          	auipc	ra,0x7
    80001d8c:	b90080e7          	jalr	-1136(ra) # 80008918 <_Unwind_Resume>
    80001d90:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001d94:	00048513          	mv	a0,s1
    80001d98:	00001097          	auipc	ra,0x1
    80001d9c:	964080e7          	jalr	-1692(ra) # 800026fc <_ZdlPv>
    80001da0:	00090513          	mv	a0,s2
    80001da4:	00007097          	auipc	ra,0x7
    80001da8:	b74080e7          	jalr	-1164(ra) # 80008918 <_Unwind_Resume>
    80001dac:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001db0:	00048513          	mv	a0,s1
    80001db4:	00001097          	auipc	ra,0x1
    80001db8:	948080e7          	jalr	-1720(ra) # 800026fc <_ZdlPv>
    80001dbc:	00090513          	mv	a0,s2
    80001dc0:	00007097          	auipc	ra,0x7
    80001dc4:	b58080e7          	jalr	-1192(ra) # 80008918 <_Unwind_Resume>
}
    80001dc8:	03813083          	ld	ra,56(sp)
    80001dcc:	03013403          	ld	s0,48(sp)
    80001dd0:	02813483          	ld	s1,40(sp)
    80001dd4:	02013903          	ld	s2,32(sp)
    80001dd8:	04010113          	addi	sp,sp,64
    80001ddc:	00008067          	ret

0000000080001de0 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001de0:	ff010113          	addi	sp,sp,-16
    80001de4:	00113423          	sd	ra,8(sp)
    80001de8:	00813023          	sd	s0,0(sp)
    80001dec:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001df0:	00000097          	auipc	ra,0x0
    80001df4:	de0080e7          	jalr	-544(ra) # 80001bd0 <_Z20Threads_CPP_API_testv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001df8:	00813083          	ld	ra,8(sp)
    80001dfc:	00013403          	ld	s0,0(sp)
    80001e00:	01010113          	addi	sp,sp,16
    80001e04:	00008067          	ret

0000000080001e08 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001e08:	ff010113          	addi	sp,sp,-16
    80001e0c:	00113423          	sd	ra,8(sp)
    80001e10:	00813023          	sd	s0,0(sp)
    80001e14:	01010413          	addi	s0,sp,16
    80001e18:	00006797          	auipc	a5,0x6
    80001e1c:	86878793          	addi	a5,a5,-1944 # 80007680 <_ZTV7WorkerA+0x10>
    80001e20:	00f53023          	sd	a5,0(a0)
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	668080e7          	jalr	1640(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001e2c:	00813083          	ld	ra,8(sp)
    80001e30:	00013403          	ld	s0,0(sp)
    80001e34:	01010113          	addi	sp,sp,16
    80001e38:	00008067          	ret

0000000080001e3c <_ZN7WorkerAD0Ev>:
    80001e3c:	fe010113          	addi	sp,sp,-32
    80001e40:	00113c23          	sd	ra,24(sp)
    80001e44:	00813823          	sd	s0,16(sp)
    80001e48:	00913423          	sd	s1,8(sp)
    80001e4c:	02010413          	addi	s0,sp,32
    80001e50:	00050493          	mv	s1,a0
    80001e54:	00006797          	auipc	a5,0x6
    80001e58:	82c78793          	addi	a5,a5,-2004 # 80007680 <_ZTV7WorkerA+0x10>
    80001e5c:	00f53023          	sd	a5,0(a0)
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	62c080e7          	jalr	1580(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001e68:	00048513          	mv	a0,s1
    80001e6c:	00001097          	auipc	ra,0x1
    80001e70:	890080e7          	jalr	-1904(ra) # 800026fc <_ZdlPv>
    80001e74:	01813083          	ld	ra,24(sp)
    80001e78:	01013403          	ld	s0,16(sp)
    80001e7c:	00813483          	ld	s1,8(sp)
    80001e80:	02010113          	addi	sp,sp,32
    80001e84:	00008067          	ret

0000000080001e88 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001e88:	ff010113          	addi	sp,sp,-16
    80001e8c:	00113423          	sd	ra,8(sp)
    80001e90:	00813023          	sd	s0,0(sp)
    80001e94:	01010413          	addi	s0,sp,16
    80001e98:	00006797          	auipc	a5,0x6
    80001e9c:	81078793          	addi	a5,a5,-2032 # 800076a8 <_ZTV7WorkerB+0x10>
    80001ea0:	00f53023          	sd	a5,0(a0)
    80001ea4:	00000097          	auipc	ra,0x0
    80001ea8:	5e8080e7          	jalr	1512(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001eac:	00813083          	ld	ra,8(sp)
    80001eb0:	00013403          	ld	s0,0(sp)
    80001eb4:	01010113          	addi	sp,sp,16
    80001eb8:	00008067          	ret

0000000080001ebc <_ZN7WorkerBD0Ev>:
    80001ebc:	fe010113          	addi	sp,sp,-32
    80001ec0:	00113c23          	sd	ra,24(sp)
    80001ec4:	00813823          	sd	s0,16(sp)
    80001ec8:	00913423          	sd	s1,8(sp)
    80001ecc:	02010413          	addi	s0,sp,32
    80001ed0:	00050493          	mv	s1,a0
    80001ed4:	00005797          	auipc	a5,0x5
    80001ed8:	7d478793          	addi	a5,a5,2004 # 800076a8 <_ZTV7WorkerB+0x10>
    80001edc:	00f53023          	sd	a5,0(a0)
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	5ac080e7          	jalr	1452(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001ee8:	00048513          	mv	a0,s1
    80001eec:	00001097          	auipc	ra,0x1
    80001ef0:	810080e7          	jalr	-2032(ra) # 800026fc <_ZdlPv>
    80001ef4:	01813083          	ld	ra,24(sp)
    80001ef8:	01013403          	ld	s0,16(sp)
    80001efc:	00813483          	ld	s1,8(sp)
    80001f00:	02010113          	addi	sp,sp,32
    80001f04:	00008067          	ret

0000000080001f08 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001f08:	ff010113          	addi	sp,sp,-16
    80001f0c:	00113423          	sd	ra,8(sp)
    80001f10:	00813023          	sd	s0,0(sp)
    80001f14:	01010413          	addi	s0,sp,16
    80001f18:	00005797          	auipc	a5,0x5
    80001f1c:	7b878793          	addi	a5,a5,1976 # 800076d0 <_ZTV7WorkerC+0x10>
    80001f20:	00f53023          	sd	a5,0(a0)
    80001f24:	00000097          	auipc	ra,0x0
    80001f28:	568080e7          	jalr	1384(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001f2c:	00813083          	ld	ra,8(sp)
    80001f30:	00013403          	ld	s0,0(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_ZN7WorkerCD0Ev>:
    80001f3c:	fe010113          	addi	sp,sp,-32
    80001f40:	00113c23          	sd	ra,24(sp)
    80001f44:	00813823          	sd	s0,16(sp)
    80001f48:	00913423          	sd	s1,8(sp)
    80001f4c:	02010413          	addi	s0,sp,32
    80001f50:	00050493          	mv	s1,a0
    80001f54:	00005797          	auipc	a5,0x5
    80001f58:	77c78793          	addi	a5,a5,1916 # 800076d0 <_ZTV7WorkerC+0x10>
    80001f5c:	00f53023          	sd	a5,0(a0)
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	52c080e7          	jalr	1324(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001f68:	00048513          	mv	a0,s1
    80001f6c:	00000097          	auipc	ra,0x0
    80001f70:	790080e7          	jalr	1936(ra) # 800026fc <_ZdlPv>
    80001f74:	01813083          	ld	ra,24(sp)
    80001f78:	01013403          	ld	s0,16(sp)
    80001f7c:	00813483          	ld	s1,8(sp)
    80001f80:	02010113          	addi	sp,sp,32
    80001f84:	00008067          	ret

0000000080001f88 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001f88:	ff010113          	addi	sp,sp,-16
    80001f8c:	00113423          	sd	ra,8(sp)
    80001f90:	00813023          	sd	s0,0(sp)
    80001f94:	01010413          	addi	s0,sp,16
    80001f98:	00005797          	auipc	a5,0x5
    80001f9c:	76078793          	addi	a5,a5,1888 # 800076f8 <_ZTV7WorkerD+0x10>
    80001fa0:	00f53023          	sd	a5,0(a0)
    80001fa4:	00000097          	auipc	ra,0x0
    80001fa8:	4e8080e7          	jalr	1256(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001fac:	00813083          	ld	ra,8(sp)
    80001fb0:	00013403          	ld	s0,0(sp)
    80001fb4:	01010113          	addi	sp,sp,16
    80001fb8:	00008067          	ret

0000000080001fbc <_ZN7WorkerDD0Ev>:
    80001fbc:	fe010113          	addi	sp,sp,-32
    80001fc0:	00113c23          	sd	ra,24(sp)
    80001fc4:	00813823          	sd	s0,16(sp)
    80001fc8:	00913423          	sd	s1,8(sp)
    80001fcc:	02010413          	addi	s0,sp,32
    80001fd0:	00050493          	mv	s1,a0
    80001fd4:	00005797          	auipc	a5,0x5
    80001fd8:	72478793          	addi	a5,a5,1828 # 800076f8 <_ZTV7WorkerD+0x10>
    80001fdc:	00f53023          	sd	a5,0(a0)
    80001fe0:	00000097          	auipc	ra,0x0
    80001fe4:	4ac080e7          	jalr	1196(ra) # 8000248c <_ZN6ThreadD1Ev>
    80001fe8:	00048513          	mv	a0,s1
    80001fec:	00000097          	auipc	ra,0x0
    80001ff0:	710080e7          	jalr	1808(ra) # 800026fc <_ZdlPv>
    80001ff4:	01813083          	ld	ra,24(sp)
    80001ff8:	01013403          	ld	s0,16(sp)
    80001ffc:	00813483          	ld	s1,8(sp)
    80002000:	02010113          	addi	sp,sp,32
    80002004:	00008067          	ret

0000000080002008 <_ZN7WorkerA3runEv>:
    void run() override {
    80002008:	ff010113          	addi	sp,sp,-16
    8000200c:	00113423          	sd	ra,8(sp)
    80002010:	00813023          	sd	s0,0(sp)
    80002014:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80002018:	00000593          	li	a1,0
    8000201c:	fffff097          	auipc	ra,0xfffff
    80002020:	74c080e7          	jalr	1868(ra) # 80001768 <_ZN7WorkerA11workerBodyAEPv>
    }
    80002024:	00813083          	ld	ra,8(sp)
    80002028:	00013403          	ld	s0,0(sp)
    8000202c:	01010113          	addi	sp,sp,16
    80002030:	00008067          	ret

0000000080002034 <_ZN7WorkerB3runEv>:
    void run() override {
    80002034:	ff010113          	addi	sp,sp,-16
    80002038:	00113423          	sd	ra,8(sp)
    8000203c:	00813023          	sd	s0,0(sp)
    80002040:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002044:	00000593          	li	a1,0
    80002048:	fffff097          	auipc	ra,0xfffff
    8000204c:	7ec080e7          	jalr	2028(ra) # 80001834 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002050:	00813083          	ld	ra,8(sp)
    80002054:	00013403          	ld	s0,0(sp)
    80002058:	01010113          	addi	sp,sp,16
    8000205c:	00008067          	ret

0000000080002060 <_ZN7WorkerC3runEv>:
    void run() override {
    80002060:	ff010113          	addi	sp,sp,-16
    80002064:	00113423          	sd	ra,8(sp)
    80002068:	00813023          	sd	s0,0(sp)
    8000206c:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002070:	00000593          	li	a1,0
    80002074:	00000097          	auipc	ra,0x0
    80002078:	894080e7          	jalr	-1900(ra) # 80001908 <_ZN7WorkerC11workerBodyCEPv>
    }
    8000207c:	00813083          	ld	ra,8(sp)
    80002080:	00013403          	ld	s0,0(sp)
    80002084:	01010113          	addi	sp,sp,16
    80002088:	00008067          	ret

000000008000208c <_ZN7WorkerD3runEv>:
    void run() override {
    8000208c:	ff010113          	addi	sp,sp,-16
    80002090:	00113423          	sd	ra,8(sp)
    80002094:	00813023          	sd	s0,0(sp)
    80002098:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    8000209c:	00000593          	li	a1,0
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	9e8080e7          	jalr	-1560(ra) # 80001a88 <_ZN7WorkerD11workerBodyDEPv>
    }
    800020a8:	00813083          	ld	ra,8(sp)
    800020ac:	00013403          	ld	s0,0(sp)
    800020b0:	01010113          	addi	sp,sp,16
    800020b4:	00008067          	ret

00000000800020b8 <_Z11workerBodyAPv>:
bool ffinishedA = false;
bool ffinishedB = false;
bool ffinishedC = false;


void workerBodyA(void* arg) {
    800020b8:	fe010113          	addi	sp,sp,-32
    800020bc:	00113c23          	sd	ra,24(sp)
    800020c0:	00813823          	sd	s0,16(sp)
    800020c4:	00913423          	sd	s1,8(sp)
    800020c8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800020cc:	00000493          	li	s1,0
    800020d0:	0300006f          	j	80002100 <_Z11workerBodyAPv+0x48>
        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    800020d4:	00168693          	addi	a3,a3,1
    800020d8:	000027b7          	lui	a5,0x2
    800020dc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800020e0:	00d7ee63          	bltu	a5,a3,800020fc <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800020e4:	00000713          	li	a4,0
    800020e8:	000077b7          	lui	a5,0x7
    800020ec:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800020f0:	fee7e2e3          	bltu	a5,a4,800020d4 <_Z11workerBodyAPv+0x1c>
    800020f4:	00170713          	addi	a4,a4,1
    800020f8:	ff1ff06f          	j	800020e8 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 10; i++) {
    800020fc:	00148493          	addi	s1,s1,1
    80002100:	00900793          	li	a5,9
    80002104:	0697ea63          	bltu	a5,s1,80002178 <_Z11workerBodyAPv+0xc0>
        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    80002108:	00004517          	auipc	a0,0x4
    8000210c:	f1850513          	addi	a0,a0,-232 # 80006020 <CONSOLE_STATUS+0x10>
    80002110:	00001097          	auipc	ra,0x1
    80002114:	1ac080e7          	jalr	428(ra) # 800032bc <_Z11printStringPKc>
    80002118:	00000613          	li	a2,0
    8000211c:	00a00593          	li	a1,10
    80002120:	0004851b          	sext.w	a0,s1
    80002124:	00001097          	auipc	ra,0x1
    80002128:	330080e7          	jalr	816(ra) # 80003454 <_Z8printIntiii>
    8000212c:	00004517          	auipc	a0,0x4
    80002130:	12c50513          	addi	a0,a0,300 # 80006258 <CONSOLE_STATUS+0x248>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	188080e7          	jalr	392(ra) # 800032bc <_Z11printStringPKc>
    8000213c:	00005797          	auipc	a5,0x5
    80002140:	6647b783          	ld	a5,1636(a5) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002144:	0007b503          	ld	a0,0(a5)
    80002148:	fffff097          	auipc	ra,0xfffff
    8000214c:	31c080e7          	jalr	796(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002150:	00000613          	li	a2,0
    80002154:	00a00593          	li	a1,10
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	2fc080e7          	jalr	764(ra) # 80003454 <_Z8printIntiii>
    80002160:	00004517          	auipc	a0,0x4
    80002164:	fb850513          	addi	a0,a0,-72 # 80006118 <CONSOLE_STATUS+0x108>
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	154080e7          	jalr	340(ra) # 800032bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002170:	00000693          	li	a3,0
    80002174:	f65ff06f          	j	800020d8 <_Z11workerBodyAPv+0x20>
//            thread_dispatch();
        }
    }
    printString("A finished!\n");
    80002178:	00004517          	auipc	a0,0x4
    8000217c:	eb050513          	addi	a0,a0,-336 # 80006028 <CONSOLE_STATUS+0x18>
    80002180:	00001097          	auipc	ra,0x1
    80002184:	13c080e7          	jalr	316(ra) # 800032bc <_Z11printStringPKc>
    ffinishedA = true;
    80002188:	00100793          	li	a5,1
    8000218c:	00005717          	auipc	a4,0x5
    80002190:	66f70c23          	sb	a5,1656(a4) # 80007804 <ffinishedA>
}
    80002194:	01813083          	ld	ra,24(sp)
    80002198:	01013403          	ld	s0,16(sp)
    8000219c:	00813483          	ld	s1,8(sp)
    800021a0:	02010113          	addi	sp,sp,32
    800021a4:	00008067          	ret

00000000800021a8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800021a8:	fe010113          	addi	sp,sp,-32
    800021ac:	00113c23          	sd	ra,24(sp)
    800021b0:	00813823          	sd	s0,16(sp)
    800021b4:	00913423          	sd	s1,8(sp)
    800021b8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800021bc:	00000493          	li	s1,0
    800021c0:	0300006f          	j	800021f0 <_Z11workerBodyBPv+0x48>
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    800021c4:	00168693          	addi	a3,a3,1
    800021c8:	000027b7          	lui	a5,0x2
    800021cc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800021d0:	00d7ee63          	bltu	a5,a3,800021ec <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800021d4:	00000713          	li	a4,0
    800021d8:	000077b7          	lui	a5,0x7
    800021dc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800021e0:	fee7e2e3          	bltu	a5,a4,800021c4 <_Z11workerBodyBPv+0x1c>
    800021e4:	00170713          	addi	a4,a4,1
    800021e8:	ff1ff06f          	j	800021d8 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 10; i++) {
    800021ec:	00148493          	addi	s1,s1,1
    800021f0:	00900793          	li	a5,9
    800021f4:	0697ea63          	bltu	a5,s1,80002268 <_Z11workerBodyBPv+0xc0>
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    800021f8:	00004517          	auipc	a0,0x4
    800021fc:	e4050513          	addi	a0,a0,-448 # 80006038 <CONSOLE_STATUS+0x28>
    80002200:	00001097          	auipc	ra,0x1
    80002204:	0bc080e7          	jalr	188(ra) # 800032bc <_Z11printStringPKc>
    80002208:	00000613          	li	a2,0
    8000220c:	00a00593          	li	a1,10
    80002210:	0004851b          	sext.w	a0,s1
    80002214:	00001097          	auipc	ra,0x1
    80002218:	240080e7          	jalr	576(ra) # 80003454 <_Z8printIntiii>
    8000221c:	00004517          	auipc	a0,0x4
    80002220:	03c50513          	addi	a0,a0,60 # 80006258 <CONSOLE_STATUS+0x248>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	098080e7          	jalr	152(ra) # 800032bc <_Z11printStringPKc>
    8000222c:	00005797          	auipc	a5,0x5
    80002230:	5747b783          	ld	a5,1396(a5) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002234:	0007b503          	ld	a0,0(a5)
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	22c080e7          	jalr	556(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002240:	00000613          	li	a2,0
    80002244:	00a00593          	li	a1,10
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	20c080e7          	jalr	524(ra) # 80003454 <_Z8printIntiii>
    80002250:	00004517          	auipc	a0,0x4
    80002254:	ec850513          	addi	a0,a0,-312 # 80006118 <CONSOLE_STATUS+0x108>
    80002258:	00001097          	auipc	ra,0x1
    8000225c:	064080e7          	jalr	100(ra) # 800032bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002260:	00000693          	li	a3,0
    80002264:	f65ff06f          	j	800021c8 <_Z11workerBodyBPv+0x20>
//            thread_dispatch();
        }
    }
    printString("B finished!\n");
    80002268:	00004517          	auipc	a0,0x4
    8000226c:	dd850513          	addi	a0,a0,-552 # 80006040 <CONSOLE_STATUS+0x30>
    80002270:	00001097          	auipc	ra,0x1
    80002274:	04c080e7          	jalr	76(ra) # 800032bc <_Z11printStringPKc>
    ffinishedB = true;
    80002278:	00100793          	li	a5,1
    8000227c:	00005717          	auipc	a4,0x5
    80002280:	58f704a3          	sb	a5,1417(a4) # 80007805 <ffinishedB>
}
    80002284:	01813083          	ld	ra,24(sp)
    80002288:	01013403          	ld	s0,16(sp)
    8000228c:	00813483          	ld	s1,8(sp)
    80002290:	02010113          	addi	sp,sp,32
    80002294:	00008067          	ret

0000000080002298 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80002298:	fe010113          	addi	sp,sp,-32
    8000229c:	00113c23          	sd	ra,24(sp)
    800022a0:	00813823          	sd	s0,16(sp)
    800022a4:	00913423          	sd	s1,8(sp)
    800022a8:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 10; i++) {
    800022ac:	00000493          	li	s1,0
    800022b0:	0300006f          	j	800022e0 <_Z11workerBodyCPv+0x48>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    800022b4:	00168693          	addi	a3,a3,1
    800022b8:	000027b7          	lui	a5,0x2
    800022bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800022c0:	00d7ee63          	bltu	a5,a3,800022dc <_Z11workerBodyCPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800022c4:	00000713          	li	a4,0
    800022c8:	000077b7          	lui	a5,0x7
    800022cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800022d0:	fee7e2e3          	bltu	a5,a4,800022b4 <_Z11workerBodyCPv+0x1c>
    800022d4:	00170713          	addi	a4,a4,1
    800022d8:	ff1ff06f          	j	800022c8 <_Z11workerBodyCPv+0x30>
    for (uint64 i = 0; i < 10; i++) {
    800022dc:	00148493          	addi	s1,s1,1
    800022e0:	00900793          	li	a5,9
    800022e4:	0697ea63          	bltu	a5,s1,80002358 <_Z11workerBodyCPv+0xc0>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    800022e8:	00004517          	auipc	a0,0x4
    800022ec:	d6850513          	addi	a0,a0,-664 # 80006050 <CONSOLE_STATUS+0x40>
    800022f0:	00001097          	auipc	ra,0x1
    800022f4:	fcc080e7          	jalr	-52(ra) # 800032bc <_Z11printStringPKc>
    800022f8:	00000613          	li	a2,0
    800022fc:	00a00593          	li	a1,10
    80002300:	0004851b          	sext.w	a0,s1
    80002304:	00001097          	auipc	ra,0x1
    80002308:	150080e7          	jalr	336(ra) # 80003454 <_Z8printIntiii>
    8000230c:	00004517          	auipc	a0,0x4
    80002310:	f4c50513          	addi	a0,a0,-180 # 80006258 <CONSOLE_STATUS+0x248>
    80002314:	00001097          	auipc	ra,0x1
    80002318:	fa8080e7          	jalr	-88(ra) # 800032bc <_Z11printStringPKc>
    8000231c:	00005797          	auipc	a5,0x5
    80002320:	4847b783          	ld	a5,1156(a5) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002324:	0007b503          	ld	a0,0(a5)
    80002328:	fffff097          	auipc	ra,0xfffff
    8000232c:	13c080e7          	jalr	316(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002330:	00000613          	li	a2,0
    80002334:	00a00593          	li	a1,10
    80002338:	00001097          	auipc	ra,0x1
    8000233c:	11c080e7          	jalr	284(ra) # 80003454 <_Z8printIntiii>
    80002340:	00004517          	auipc	a0,0x4
    80002344:	dd850513          	addi	a0,a0,-552 # 80006118 <CONSOLE_STATUS+0x108>
    80002348:	00001097          	auipc	ra,0x1
    8000234c:	f74080e7          	jalr	-140(ra) # 800032bc <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002350:	00000693          	li	a3,0
    80002354:	f65ff06f          	j	800022b8 <_Z11workerBodyCPv+0x20>
//            thread_dispatch();
        }
    }
    printString("C finished!\n");
    80002358:	00004517          	auipc	a0,0x4
    8000235c:	dc850513          	addi	a0,a0,-568 # 80006120 <CONSOLE_STATUS+0x110>
    80002360:	00001097          	auipc	ra,0x1
    80002364:	f5c080e7          	jalr	-164(ra) # 800032bc <_Z11printStringPKc>
    ffinishedC = true;
    80002368:	00100793          	li	a5,1
    8000236c:	00005717          	auipc	a4,0x5
    80002370:	48f70d23          	sb	a5,1178(a4) # 80007806 <ffinishedC>
}
    80002374:	01813083          	ld	ra,24(sp)
    80002378:	01013403          	ld	s0,16(sp)
    8000237c:	00813483          	ld	s1,8(sp)
    80002380:	02010113          	addi	sp,sp,32
    80002384:	00008067          	ret

0000000080002388 <main>:


int main() {
    80002388:	fd010113          	addi	sp,sp,-48
    8000238c:	02113423          	sd	ra,40(sp)
    80002390:	02813023          	sd	s0,32(sp)
    80002394:	03010413          	addi	s0,sp,48
    MemoryAllocator::initMemoryAllocator();
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	ec4080e7          	jalr	-316(ra) # 8000325c <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    800023a0:	00000593          	li	a1,0
    800023a4:	00000513          	li	a0,0
    800023a8:	00001097          	auipc	ra,0x1
    800023ac:	930080e7          	jalr	-1744(ra) # 80002cd8 <_ZN3TCB12createThreadEPFvPvES0_>
    800023b0:	00005797          	auipc	a5,0x5
    800023b4:	3f07b783          	ld	a5,1008(a5) # 800077a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800023b8:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800023bc:	00005797          	auipc	a5,0x5
    800023c0:	3cc7b783          	ld	a5,972(a5) # 80007788 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800023c4:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800023c8:	00200793          	li	a5,2
    800023cc:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t threads[3];
    thread_create(&threads[0], workerBodyA, nullptr);
    800023d0:	00000613          	li	a2,0
    800023d4:	00000597          	auipc	a1,0x0
    800023d8:	ce458593          	addi	a1,a1,-796 # 800020b8 <_Z11workerBodyAPv>
    800023dc:	fd840513          	addi	a0,s0,-40
    800023e0:	fffff097          	auipc	ra,0xfffff
    800023e4:	ea8080e7          	jalr	-344(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    800023e8:	00004517          	auipc	a0,0x4
    800023ec:	cd050513          	addi	a0,a0,-816 # 800060b8 <CONSOLE_STATUS+0xa8>
    800023f0:	00001097          	auipc	ra,0x1
    800023f4:	ecc080e7          	jalr	-308(ra) # 800032bc <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800023f8:	00000613          	li	a2,0
    800023fc:	00000597          	auipc	a1,0x0
    80002400:	dac58593          	addi	a1,a1,-596 # 800021a8 <_Z11workerBodyBPv>
    80002404:	fe040513          	addi	a0,s0,-32
    80002408:	fffff097          	auipc	ra,0xfffff
    8000240c:	e80080e7          	jalr	-384(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002410:	00004517          	auipc	a0,0x4
    80002414:	cc050513          	addi	a0,a0,-832 # 800060d0 <CONSOLE_STATUS+0xc0>
    80002418:	00001097          	auipc	ra,0x1
    8000241c:	ea4080e7          	jalr	-348(ra) # 800032bc <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002420:	00000613          	li	a2,0
    80002424:	00000597          	auipc	a1,0x0
    80002428:	e7458593          	addi	a1,a1,-396 # 80002298 <_Z11workerBodyCPv>
    8000242c:	fe840513          	addi	a0,s0,-24
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	e58080e7          	jalr	-424(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002438:	00004517          	auipc	a0,0x4
    8000243c:	cb050513          	addi	a0,a0,-848 # 800060e8 <CONSOLE_STATUS+0xd8>
    80002440:	00001097          	auipc	ra,0x1
    80002444:	e7c080e7          	jalr	-388(ra) # 800032bc <_Z11printStringPKc>
    80002448:	00c0006f          	j	80002454 <main+0xcc>

    while (!(ffinishedA && ffinishedB && ffinishedC)) {
        thread_dispatch();
    8000244c:	fffff097          	auipc	ra,0xfffff
    80002450:	e98080e7          	jalr	-360(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!(ffinishedA && ffinishedB && ffinishedC)) {
    80002454:	00005797          	auipc	a5,0x5
    80002458:	3b07c783          	lbu	a5,944(a5) # 80007804 <ffinishedA>
    8000245c:	fe0788e3          	beqz	a5,8000244c <main+0xc4>
    80002460:	00005797          	auipc	a5,0x5
    80002464:	3a57c783          	lbu	a5,933(a5) # 80007805 <ffinishedB>
    80002468:	fe0782e3          	beqz	a5,8000244c <main+0xc4>
    8000246c:	00005797          	auipc	a5,0x5
    80002470:	39a7c783          	lbu	a5,922(a5) # 80007806 <ffinishedC>
    80002474:	fc078ce3          	beqz	a5,8000244c <main+0xc4>

//    userMain();

    return 0;

}
    80002478:	00000513          	li	a0,0
    8000247c:	02813083          	ld	ra,40(sp)
    80002480:	02013403          	ld	s0,32(sp)
    80002484:	03010113          	addi	sp,sp,48
    80002488:	00008067          	ret

000000008000248c <_ZN6ThreadD1Ev>:
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00813423          	sd	s0,8(sp)
    80002494:	01010413          	addi	s0,sp,16
    80002498:	00813403          	ld	s0,8(sp)
    8000249c:	01010113          	addi	sp,sp,16
    800024a0:	00008067          	ret

00000000800024a4 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00113423          	sd	ra,8(sp)
    800024ac:	00813023          	sd	s0,0(sp)
    800024b0:	01010413          	addi	s0,sp,16
    800024b4:	00005797          	auipc	a5,0x5
    800024b8:	29c78793          	addi	a5,a5,668 # 80007750 <_ZTV9Semaphore+0x10>
    800024bc:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    800024c0:	00853503          	ld	a0,8(a0)
    800024c4:	fffff097          	auipc	ra,0xfffff
    800024c8:	ecc080e7          	jalr	-308(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    800024cc:	00813083          	ld	ra,8(sp)
    800024d0:	00013403          	ld	s0,0(sp)
    800024d4:	01010113          	addi	sp,sp,16
    800024d8:	00008067          	ret

00000000800024dc <_ZN6Thread5startEv>:
int Thread::start (){
    800024dc:	ff010113          	addi	sp,sp,-16
    800024e0:	00113423          	sd	ra,8(sp)
    800024e4:	00813023          	sd	s0,0(sp)
    800024e8:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    800024ec:	00850513          	addi	a0,a0,8
    800024f0:	fffff097          	auipc	ra,0xfffff
    800024f4:	e14080e7          	jalr	-492(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    800024f8:	00000513          	li	a0,0
    800024fc:	00813083          	ld	ra,8(sp)
    80002500:	00013403          	ld	s0,0(sp)
    80002504:	01010113          	addi	sp,sp,16
    80002508:	00008067          	ret

000000008000250c <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    8000250c:	ff010113          	addi	sp,sp,-16
    80002510:	00113423          	sd	ra,8(sp)
    80002514:	00813023          	sd	s0,0(sp)
    80002518:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000251c:	fffff097          	auipc	ra,0xfffff
    80002520:	dc8080e7          	jalr	-568(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002524:	00813083          	ld	ra,8(sp)
    80002528:	00013403          	ld	s0,0(sp)
    8000252c:	01010113          	addi	sp,sp,16
    80002530:	00008067          	ret

0000000080002534 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002534:	ff010113          	addi	sp,sp,-16
    80002538:	00113423          	sd	ra,8(sp)
    8000253c:	00813023          	sd	s0,0(sp)
    80002540:	01010413          	addi	s0,sp,16
    80002544:	00005797          	auipc	a5,0x5
    80002548:	1e478793          	addi	a5,a5,484 # 80007728 <_ZTV6Thread+0x10>
    8000254c:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    80002550:	00850513          	addi	a0,a0,8
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	dd8080e7          	jalr	-552(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    8000255c:	00813083          	ld	ra,8(sp)
    80002560:	00013403          	ld	s0,0(sp)
    80002564:	01010113          	addi	sp,sp,16
    80002568:	00008067          	ret

000000008000256c <_ZN6ThreadC1Ev>:
Thread::Thread() {
    8000256c:	ff010113          	addi	sp,sp,-16
    80002570:	00113423          	sd	ra,8(sp)
    80002574:	00813023          	sd	s0,0(sp)
    80002578:	01010413          	addi	s0,sp,16
    8000257c:	00005797          	auipc	a5,0x5
    80002580:	1ac78793          	addi	a5,a5,428 # 80007728 <_ZTV6Thread+0x10>
    80002584:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    80002588:	00050613          	mv	a2,a0
    8000258c:	00000597          	auipc	a1,0x0
    80002590:	24058593          	addi	a1,a1,576 # 800027cc <_ZN6Thread9myWrapperEPv>
    80002594:	00850513          	addi	a0,a0,8
    80002598:	fffff097          	auipc	ra,0xfffff
    8000259c:	d94080e7          	jalr	-620(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    800025a0:	00813083          	ld	ra,8(sp)
    800025a4:	00013403          	ld	s0,0(sp)
    800025a8:	01010113          	addi	sp,sp,16
    800025ac:	00008067          	ret

00000000800025b0 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    800025b0:	ff010113          	addi	sp,sp,-16
    800025b4:	00813423          	sd	s0,8(sp)
    800025b8:	01010413          	addi	s0,sp,16
}
    800025bc:	00000513          	li	a0,0
    800025c0:	00813403          	ld	s0,8(sp)
    800025c4:	01010113          	addi	sp,sp,16
    800025c8:	00008067          	ret

00000000800025cc <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    800025cc:	ff010113          	addi	sp,sp,-16
    800025d0:	00113423          	sd	ra,8(sp)
    800025d4:	00813023          	sd	s0,0(sp)
    800025d8:	01010413          	addi	s0,sp,16
    800025dc:	00005797          	auipc	a5,0x5
    800025e0:	17478793          	addi	a5,a5,372 # 80007750 <_ZTV9Semaphore+0x10>
    800025e4:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800025e8:	00850513          	addi	a0,a0,8
    800025ec:	fffff097          	auipc	ra,0xfffff
    800025f0:	d74080e7          	jalr	-652(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    800025f4:	00813083          	ld	ra,8(sp)
    800025f8:	00013403          	ld	s0,0(sp)
    800025fc:	01010113          	addi	sp,sp,16
    80002600:	00008067          	ret

0000000080002604 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002604:	ff010113          	addi	sp,sp,-16
    80002608:	00113423          	sd	ra,8(sp)
    8000260c:	00813023          	sd	s0,0(sp)
    80002610:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002614:	00853503          	ld	a0,8(a0)
    80002618:	fffff097          	auipc	ra,0xfffff
    8000261c:	da4080e7          	jalr	-604(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    80002620:	00813083          	ld	ra,8(sp)
    80002624:	00013403          	ld	s0,0(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80002640:	00853503          	ld	a0,8(a0)
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	da4080e7          	jalr	-604(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    8000264c:	00813083          	ld	ra,8(sp)
    80002650:	00013403          	ld	s0,0(sp)
    80002654:	01010113          	addi	sp,sp,16
    80002658:	00008067          	ret

000000008000265c <_ZN7Console4getcEv>:

char Console::getc() {
    8000265c:	ff010113          	addi	sp,sp,-16
    80002660:	00113423          	sd	ra,8(sp)
    80002664:	00813023          	sd	s0,0(sp)
    80002668:	01010413          	addi	s0,sp,16
    return __getc();
    8000266c:	00003097          	auipc	ra,0x3
    80002670:	70c080e7          	jalr	1804(ra) # 80005d78 <__getc>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret

0000000080002684 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002684:	ff010113          	addi	sp,sp,-16
    80002688:	00113423          	sd	ra,8(sp)
    8000268c:	00813023          	sd	s0,0(sp)
    80002690:	01010413          	addi	s0,sp,16
    __putc(c);
    80002694:	00003097          	auipc	ra,0x3
    80002698:	6a8080e7          	jalr	1704(ra) # 80005d3c <__putc>
}
    8000269c:	00813083          	ld	ra,8(sp)
    800026a0:	00013403          	ld	s0,0(sp)
    800026a4:	01010113          	addi	sp,sp,16
    800026a8:	00008067          	ret

00000000800026ac <_Znwm>:

void *operator new(size_t n)
{
    800026ac:	ff010113          	addi	sp,sp,-16
    800026b0:	00113423          	sd	ra,8(sp)
    800026b4:	00813023          	sd	s0,0(sp)
    800026b8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    800026bc:	00001097          	auipc	ra,0x1
    800026c0:	974080e7          	jalr	-1676(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
//    return mem_alloc(n);
}
    800026c4:	00813083          	ld	ra,8(sp)
    800026c8:	00013403          	ld	s0,0(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_Znam>:

void *operator new[](size_t n)
{
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    800026e4:	00001097          	auipc	ra,0x1
    800026e8:	94c080e7          	jalr	-1716(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
//   return mem_alloc(n);
}
    800026ec:	00813083          	ld	ra,8(sp)
    800026f0:	00013403          	ld	s0,0(sp)
    800026f4:	01010113          	addi	sp,sp,16
    800026f8:	00008067          	ret

00000000800026fc <_ZdlPv>:

void operator delete(void *p)
{
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000270c:	00001097          	auipc	ra,0x1
    80002710:	9c0080e7          	jalr	-1600(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80002714:	00813083          	ld	ra,8(sp)
    80002718:	00013403          	ld	s0,0(sp)
    8000271c:	01010113          	addi	sp,sp,16
    80002720:	00008067          	ret

0000000080002724 <_ZN6ThreadD0Ev>:
    80002724:	ff010113          	addi	sp,sp,-16
    80002728:	00113423          	sd	ra,8(sp)
    8000272c:	00813023          	sd	s0,0(sp)
    80002730:	01010413          	addi	s0,sp,16
    80002734:	00000097          	auipc	ra,0x0
    80002738:	fc8080e7          	jalr	-56(ra) # 800026fc <_ZdlPv>
    8000273c:	00813083          	ld	ra,8(sp)
    80002740:	00013403          	ld	s0,0(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
}
    80002764:	00000097          	auipc	ra,0x0
    80002768:	d40080e7          	jalr	-704(ra) # 800024a4 <_ZN9SemaphoreD1Ev>
    8000276c:	00048513          	mv	a0,s1
    80002770:	00000097          	auipc	ra,0x0
    80002774:	f8c080e7          	jalr	-116(ra) # 800026fc <_ZdlPv>
    80002778:	01813083          	ld	ra,24(sp)
    8000277c:	01013403          	ld	s0,16(sp)
    80002780:	00813483          	ld	s1,8(sp)
    80002784:	02010113          	addi	sp,sp,32
    80002788:	00008067          	ret

000000008000278c <_ZdaPv>:

void operator delete[](void *p)
{
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000279c:	00001097          	auipc	ra,0x1
    800027a0:	930080e7          	jalr	-1744(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00813423          	sd	s0,8(sp)
    800027bc:	01010413          	addi	s0,sp,16
    800027c0:	00813403          	ld	s0,8(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00113423          	sd	ra,8(sp)
    800027d4:	00813023          	sd	s0,0(sp)
    800027d8:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    800027dc:	00053783          	ld	a5,0(a0)
    800027e0:	0107b783          	ld	a5,16(a5)
    800027e4:	000780e7          	jalr	a5
    }
    800027e8:	00813083          	ld	ra,8(sp)
    800027ec:	00013403          	ld	s0,0(sp)
    800027f0:	01010113          	addi	sp,sp,16
    800027f4:	00008067          	ret

00000000800027f8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    800027f8:	ff010113          	addi	sp,sp,-16
    800027fc:	00813423          	sd	s0,8(sp)
    80002800:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002804:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002808:	10200073          	sret
}
    8000280c:	00813403          	ld	s0,8(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002818:	fb010113          	addi	sp,sp,-80
    8000281c:	04113423          	sd	ra,72(sp)
    80002820:	04813023          	sd	s0,64(sp)
    80002824:	02913c23          	sd	s1,56(sp)
    80002828:	03213823          	sd	s2,48(sp)
    8000282c:	03313423          	sd	s3,40(sp)
    80002830:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002834:	142027f3          	csrr	a5,scause
    80002838:	faf43823          	sd	a5,-80(s0)
    return scause;
    8000283c:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002840:	ff870693          	addi	a3,a4,-8
    80002844:	00100793          	li	a5,1
    80002848:	02d7f863          	bgeu	a5,a3,80002878 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    8000284c:	fff00793          	li	a5,-1
    80002850:	03f79793          	slli	a5,a5,0x3f
    80002854:	00178793          	addi	a5,a5,1
    80002858:	22f70863          	beq	a4,a5,80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    8000285c:	fff00793          	li	a5,-1
    80002860:	03f79793          	slli	a5,a5,0x3f
    80002864:	00978793          	addi	a5,a5,9
    80002868:	0cf71063          	bne	a4,a5,80002928 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    8000286c:	00003097          	auipc	ra,0x3
    80002870:	544080e7          	jalr	1348(ra) # 80005db0 <console_handler>
    }else
    {
        // unexpected trap cause
    }
    80002874:	0b40006f          	j	80002928 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002878:	141027f3          	csrr	a5,sepc
    8000287c:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002880:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    80002884:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002888:	100027f3          	csrr	a5,sstatus
    8000288c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002890:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80002894:	00050793          	mv	a5,a0
    80002898:	faf43c23          	sd	a5,-72(s0)
    return a0;
    8000289c:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    800028a0:	00100713          	li	a4,1
    800028a4:	06e78663          	beq	a5,a4,80002910 <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        else if (a0 == 0x0000000000000002UL){
    800028a8:	00200713          	li	a4,2
    800028ac:	08e78c63          	beq	a5,a4,80002944 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        else if (a0 == 0x0000000000000011UL){
    800028b0:	01100713          	li	a4,17
    800028b4:	0ae78263          	beq	a5,a4,80002958 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if (a0 == 0x0000000000000012UL){
    800028b8:	01200713          	li	a4,18
    800028bc:	0ce78663          	beq	a5,a4,80002988 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
        else if (a0 == 0x0000000000000013UL){
    800028c0:	01300713          	li	a4,19
    800028c4:	0ce78a63          	beq	a5,a4,80002998 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
        else if (a0 == 0x0000000000000014UL){
    800028c8:	01400713          	li	a4,20
    800028cc:	0ee78263          	beq	a5,a4,800029b0 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if (a0 == 0x0000000000000015UL){
    800028d0:	01500713          	li	a4,21
    800028d4:	0ee78863          	beq	a5,a4,800029c4 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
        else if (a0 == 0x0000000000000021UL) {
    800028d8:	02100713          	li	a4,33
    800028dc:	10e78c63          	beq	a5,a4,800029f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
        else if (a0 == 0x0000000000000022UL) {
    800028e0:	02200713          	li	a4,34
    800028e4:	14e78063          	beq	a5,a4,80002a24 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        else if (a0 == 0x0000000000000023UL) {
    800028e8:	02300713          	li	a4,35
    800028ec:	14e78e63          	beq	a5,a4,80002a48 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        else if (a0 == 0x0000000000000024UL) {
    800028f0:	02400713          	li	a4,36
    800028f4:	16e78a63          	beq	a5,a4,80002a68 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
        else if (a0 == 0x0000000000000016UL){
    800028f8:	01600713          	li	a4,22
    800028fc:	02e79263          	bne	a5,a4,80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
    80002900:	00058793          	mv	a5,a1

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}
    void* getArg() {return this->arg;}
    uint64 getId() {return this->id;}
    80002904:	0387b783          	ld	a5,56(a5)
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002908:	00078513          	mv	a0,a5
    8000290c:	0140006f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002910:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    80002914:	00000097          	auipc	ra,0x0
    80002918:	71c080e7          	jalr	1820(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000291c:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002920:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002924:	14149073          	csrw	sepc,s1
    80002928:	04813083          	ld	ra,72(sp)
    8000292c:	04013403          	ld	s0,64(sp)
    80002930:	03813483          	ld	s1,56(sp)
    80002934:	03013903          	ld	s2,48(sp)
    80002938:	02813983          	ld	s3,40(sp)
    8000293c:	05010113          	addi	sp,sp,80
    80002940:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002944:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    80002948:	00000097          	auipc	ra,0x0
    8000294c:	784080e7          	jalr	1924(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002950:	00050513          	mv	a0,a0
    80002954:	fcdff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002958:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    8000295c:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002960:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    80002964:	00000097          	auipc	ra,0x0
    80002968:	374080e7          	jalr	884(ra) # 80002cd8 <_ZN3TCB12createThreadEPFvPvES0_>
    8000296c:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002970:	00098863          	beqz	s3,80002980 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
    80002974:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002978:	00078513          	mv	a0,a5
    8000297c:	fa5ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            a0=(tcb!= nullptr)?0 : -1;
    80002980:	fff00793          	li	a5,-1
    80002984:	ff5ff06f          	j	80002978 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            a=TCB::exitThread();
    80002988:	00000097          	auipc	ra,0x0
    8000298c:	230080e7          	jalr	560(ra) # 80002bb8 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002990:	00050513          	mv	a0,a0
    80002994:	f8dff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            TCB::timeSliceCounter = 0;
    80002998:	00005797          	auipc	a5,0x5
    8000299c:	df87b783          	ld	a5,-520(a5) # 80007790 <_GLOBAL_OFFSET_TABLE_+0x18>
    800029a0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800029a4:	00000097          	auipc	ra,0x0
    800029a8:	118080e7          	jalr	280(ra) # 80002abc <_ZN3TCB8dispatchEv>
    800029ac:	f75ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800029b0:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    800029b4:	0007b503          	ld	a0,0(a5)
    800029b8:	00000097          	auipc	ra,0x0
    800029bc:	56c080e7          	jalr	1388(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
    800029c0:	f61ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800029c4:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800029c8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800029cc:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	3f4080e7          	jalr	1012(ra) # 80002dc4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    800029d8:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800029dc:	00098863          	beqz	s3,800029ec <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    800029e0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800029e4:	00078513          	mv	a0,a5
    800029e8:	f39ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            a0=(tcb!= nullptr)?0 : -1;
    800029ec:	fff00793          	li	a5,-1
    800029f0:	ff5ff06f          	j	800029e4 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800029f4:	00060513          	mv	a0,a2
    800029f8:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800029fc:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    80002a00:	fffff097          	auipc	ra,0xfffff
    80002a04:	cb0080e7          	jalr	-848(ra) # 800016b0 <_ZN10Ksemaphore15createSemaphoreEj>
    80002a08:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002a0c:	00098863          	beqz	s3,80002a1c <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    80002a10:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002a14:	00078513          	mv	a0,a5
    80002a18:	f09ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            uint64 a= (sem!= nullptr)?0: -1;
    80002a1c:	fff00793          	li	a5,-1
    80002a20:	ff5ff06f          	j	80002a14 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002a24:	00058513          	mv	a0,a1
            if(sem== nullptr){
    80002a28:	00050c63          	beqz	a0,80002a40 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
                sem->closeSemaphore();
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	bd0080e7          	jalr	-1072(ra) # 800015fc <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002a34:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002a38:	00078513          	mv	a0,a5
    80002a3c:	ee5ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=1;
    80002a40:	00100793          	li	a5,1
    80002a44:	ff5ff06f          	j	80002a38 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002a48:	00088513          	mv	a0,a7
            if(a7!= nullptr){
    80002a4c:	00050a63          	beqz	a0,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                a = a7->wait();
    80002a50:	fffff097          	auipc	ra,0xfffff
    80002a54:	b14080e7          	jalr	-1260(ra) # 80001564 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002a58:	00050513          	mv	a0,a0
    80002a5c:	ec5ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=-1;
    80002a60:	fff00513          	li	a0,-1
    80002a64:	ff5ff06f          	j	80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(sem));
    80002a68:	00088513          	mv	a0,a7
            if(sem!= nullptr) {
    80002a6c:	00050a63          	beqz	a0,80002a80 <_ZN5Riscv20handleSupervisorTrapEv+0x268>
                a = sem->signal();
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	b44080e7          	jalr	-1212(ra) # 800015b4 <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002a78:	00050513          	mv	a0,a0
    80002a7c:	ea5ff06f          	j	80002920 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=1;
    80002a80:	00100513          	li	a0,1
    80002a84:	ff5ff06f          	j	80002a78 <_ZN5Riscv20handleSupervisorTrapEv+0x260>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002a88:	00200793          	li	a5,2
    80002a8c:	1447b073          	csrc	sip,a5
}
    80002a90:	e99ff06f          	j	80002928 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

0000000080002a94 <_ZN3TCB14putInSchedulerEPS_>:
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    80002a94:	ff010113          	addi	sp,sp,-16
    80002a98:	00113423          	sd	ra,8(sp)
    80002a9c:	00813023          	sd	s0,0(sp)
    80002aa0:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	480080e7          	jalr	1152(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
}
    80002aac:	00813083          	ld	ra,8(sp)
    80002ab0:	00013403          	ld	s0,0(sp)
    80002ab4:	01010113          	addi	sp,sp,16
    80002ab8:	00008067          	ret

0000000080002abc <_ZN3TCB8dispatchEv>:
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
    80002abc:	fe010113          	addi	sp,sp,-32
    80002ac0:	00113c23          	sd	ra,24(sp)
    80002ac4:	00813823          	sd	s0,16(sp)
    80002ac8:	00913423          	sd	s1,8(sp)
    80002acc:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    80002ad0:	00005497          	auipc	s1,0x5
    80002ad4:	d384b483          	ld	s1,-712(s1) # 80007808 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80002ad8:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002adc:	02078c63          	beqz	a5,80002b14 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002ae0:	00000097          	auipc	ra,0x0
    80002ae4:	400080e7          	jalr	1024(ra) # 80002ee0 <_ZN9Scheduler3getEv>
    80002ae8:	00005797          	auipc	a5,0x5
    80002aec:	d2a7b023          	sd	a0,-736(a5) # 80007808 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002af0:	01850593          	addi	a1,a0,24
    80002af4:	01848513          	addi	a0,s1,24
    80002af8:	ffffe097          	auipc	ra,0xffffe
    80002afc:	708080e7          	jalr	1800(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002b00:	01813083          	ld	ra,24(sp)
    80002b04:	01013403          	ld	s0,16(sp)
    80002b08:	00813483          	ld	s1,8(sp)
    80002b0c:	02010113          	addi	sp,sp,32
    80002b10:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002b14:	00048513          	mv	a0,s1
    80002b18:	00000097          	auipc	ra,0x0
    80002b1c:	40c080e7          	jalr	1036(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
    80002b20:	fc1ff06f          	j	80002ae0 <_ZN3TCB8dispatchEv+0x24>

0000000080002b24 <_ZN3TCB5yieldEv>:
{
    80002b24:	ff010113          	addi	sp,sp,-16
    80002b28:	00113423          	sd	ra,8(sp)
    80002b2c:	00813023          	sd	s0,0(sp)
    80002b30:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002b34:	ffffe097          	auipc	ra,0xffffe
    80002b38:	4cc080e7          	jalr	1228(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002b3c:	00000097          	auipc	ra,0x0
    80002b40:	f80080e7          	jalr	-128(ra) # 80002abc <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002b44:	ffffe097          	auipc	ra,0xffffe
    80002b48:	534080e7          	jalr	1332(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret

0000000080002b5c <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper(){
    80002b5c:	fe010113          	addi	sp,sp,-32
    80002b60:	00113c23          	sd	ra,24(sp)
    80002b64:	00813823          	sd	s0,16(sp)
    80002b68:	00913423          	sd	s1,8(sp)
    80002b6c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002b70:	00000097          	auipc	ra,0x0
    80002b74:	c88080e7          	jalr	-888(ra) # 800027f8 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002b78:	00005497          	auipc	s1,0x5
    80002b7c:	c9048493          	addi	s1,s1,-880 # 80007808 <_ZN3TCB7runningE>
    80002b80:	0004b783          	ld	a5,0(s1)
    80002b84:	0007b703          	ld	a4,0(a5)
    80002b88:	0087b503          	ld	a0,8(a5)
    80002b8c:	000700e7          	jalr	a4
    running->setFinished(true);
    80002b90:	0004b783          	ld	a5,0(s1)


    void setFinished(bool value) { finished = value; }
    80002b94:	00100713          	li	a4,1
    80002b98:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002b9c:	00000097          	auipc	ra,0x0
    80002ba0:	f88080e7          	jalr	-120(ra) # 80002b24 <_ZN3TCB5yieldEv>
}
    80002ba4:	01813083          	ld	ra,24(sp)
    80002ba8:	01013403          	ld	s0,16(sp)
    80002bac:	00813483          	ld	s1,8(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    80002bb8:	ff010113          	addi	sp,sp,-16
    80002bbc:	00113423          	sd	ra,8(sp)
    80002bc0:	00813023          	sd	s0,0(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00005797          	auipc	a5,0x5
    80002bcc:	c407b783          	ld	a5,-960(a5) # 80007808 <_ZN3TCB7runningE>
    80002bd0:	00100713          	li	a4,1
    80002bd4:	02e78823          	sb	a4,48(a5)
    running->setFinished(true);
    dispatch();
    80002bd8:	00000097          	auipc	ra,0x0
    80002bdc:	ee4080e7          	jalr	-284(ra) # 80002abc <_ZN3TCB8dispatchEv>
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}
    80002be0:	00000513          	li	a0,0
    80002be4:	00813083          	ld	ra,8(sp)
    80002be8:	00013403          	ld	s0,0(sp)
    80002bec:	01010113          	addi	sp,sp,16
    80002bf0:	00008067          	ret

0000000080002bf4 <_ZN3TCB24dispatchWithoutSchedulerEv>:


void TCB::dispatchWithoutScheduler(){
    80002bf4:	fe010113          	addi	sp,sp,-32
    80002bf8:	00113c23          	sd	ra,24(sp)
    80002bfc:	00813823          	sd	s0,16(sp)
    80002c00:	00913423          	sd	s1,8(sp)
    80002c04:	01213023          	sd	s2,0(sp)
    80002c08:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002c0c:	00005497          	auipc	s1,0x5
    80002c10:	bfc48493          	addi	s1,s1,-1028 # 80007808 <_ZN3TCB7runningE>
    80002c14:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    80002c18:	00000097          	auipc	ra,0x0
    80002c1c:	2c8080e7          	jalr	712(ra) # 80002ee0 <_ZN9Scheduler3getEv>
    80002c20:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002c24:	01850593          	addi	a1,a0,24
    80002c28:	01890513          	addi	a0,s2,24
    80002c2c:	ffffe097          	auipc	ra,0xffffe
    80002c30:	5d4080e7          	jalr	1492(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002c34:	01813083          	ld	ra,24(sp)
    80002c38:	01013403          	ld	s0,16(sp)
    80002c3c:	00813483          	ld	s1,8(sp)
    80002c40:	00013903          	ld	s2,0(sp)
    80002c44:	02010113          	addi	sp,sp,32
    80002c48:	00008067          	ret

0000000080002c4c <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002c4c:	ff010113          	addi	sp,sp,-16
    80002c50:	00113423          	sd	ra,8(sp)
    80002c54:	00813023          	sd	s0,0(sp)
    80002c58:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002c5c:	ffffe097          	auipc	ra,0xffffe
    80002c60:	3a4080e7          	jalr	932(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f90080e7          	jalr	-112(ra) # 80002bf4 <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    80002c6c:	ffffe097          	auipc	ra,0xffffe
    80002c70:	40c080e7          	jalr	1036(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002c74:	00813083          	ld	ra,8(sp)
    80002c78:	00013403          	ld	s0,0(sp)
    80002c7c:	01010113          	addi	sp,sp,16
    80002c80:	00008067          	ret

0000000080002c84 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) {
    80002c84:	ff010113          	addi	sp,sp,-16
    80002c88:	00113423          	sd	ra,8(sp)
    80002c8c:	00813023          	sd	s0,0(sp)
    80002c90:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002c94:	00000097          	auipc	ra,0x0
    80002c98:	438080e7          	jalr	1080(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
    return;

}
    80002c9c:	00813083          	ld	ra,8(sp)
    80002ca0:	00013403          	ld	s0,0(sp)
    80002ca4:	01010113          	addi	sp,sp,16
    80002ca8:	00008067          	ret

0000000080002cac <_ZN3TCBnwEm>:

void *TCB::operator new(size_t n) {
    80002cac:	ff010113          	addi	sp,sp,-16
    80002cb0:	00113423          	sd	ra,8(sp)
    80002cb4:	00813023          	sd	s0,0(sp)
    80002cb8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    80002cbc:	04000513          	li	a0,64
    80002cc0:	00000097          	auipc	ra,0x0
    80002cc4:	370080e7          	jalr	880(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>

}
    80002cc8:	00813083          	ld	ra,8(sp)
    80002ccc:	00013403          	ld	s0,0(sp)
    80002cd0:	01010113          	addi	sp,sp,16
    80002cd4:	00008067          	ret

0000000080002cd8 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002cd8:	fd010113          	addi	sp,sp,-48
    80002cdc:	02113423          	sd	ra,40(sp)
    80002ce0:	02813023          	sd	s0,32(sp)
    80002ce4:	00913c23          	sd	s1,24(sp)
    80002ce8:	01213823          	sd	s2,16(sp)
    80002cec:	01313423          	sd	s3,8(sp)
    80002cf0:	03010413          	addi	s0,sp,48
    80002cf4:	00050913          	mv	s2,a0
    80002cf8:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002cfc:	04000513          	li	a0,64
    80002d00:	00000097          	auipc	ra,0x0
    80002d04:	fac080e7          	jalr	-84(ra) # 80002cac <_ZN3TCBnwEm>
    80002d08:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002d0c:	01253023          	sd	s2,0(a0)
        arg=argg;
    80002d10:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002d14:	00090a63          	beqz	s2,80002d28 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002d18:	00008537          	lui	a0,0x8
    80002d1c:	00000097          	auipc	ra,0x0
    80002d20:	314080e7          	jalr	788(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
    80002d24:	0080006f          	j	80002d2c <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002d28:	00000513          	li	a0,0
    80002d2c:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002d30:	00000797          	auipc	a5,0x0
    80002d34:	e2c78793          	addi	a5,a5,-468 # 80002b5c <_ZN3TCB13threadWrapperEv>
    80002d38:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002d3c:	06050263          	beqz	a0,80002da0 <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
    80002d40:	000087b7          	lui	a5,0x8
    80002d44:	00f507b3          	add	a5,a0,a5
    80002d48:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002d4c:	00200793          	li	a5,2
    80002d50:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002d54:	02048823          	sb	zero,48(s1)
        id=threadId++;
    80002d58:	00005717          	auipc	a4,0x5
    80002d5c:	ab070713          	addi	a4,a4,-1360 # 80007808 <_ZN3TCB7runningE>
    80002d60:	00873783          	ld	a5,8(a4)
    80002d64:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80002d68:	00d73423          	sd	a3,8(a4)
    80002d6c:	02f4bc23          	sd	a5,56(s1)
    if (body != nullptr) {
    80002d70:	00090863          	beqz	s2,80002d80 <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
        Scheduler::put(t);
    80002d74:	00048513          	mv	a0,s1
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	1ac080e7          	jalr	428(ra) # 80002f24 <_ZN9Scheduler3putEP3TCB>
}
    80002d80:	00048513          	mv	a0,s1
    80002d84:	02813083          	ld	ra,40(sp)
    80002d88:	02013403          	ld	s0,32(sp)
    80002d8c:	01813483          	ld	s1,24(sp)
    80002d90:	01013903          	ld	s2,16(sp)
    80002d94:	00813983          	ld	s3,8(sp)
    80002d98:	03010113          	addi	sp,sp,48
    80002d9c:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002da0:	00000793          	li	a5,0
    80002da4:	fa5ff06f          	j	80002d48 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002da8:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002dac:	00048513          	mv	a0,s1
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	ed4080e7          	jalr	-300(ra) # 80002c84 <_ZN3TCBdlEPv>
    80002db8:	00090513          	mv	a0,s2
    80002dbc:	00006097          	auipc	ra,0x6
    80002dc0:	b5c080e7          	jalr	-1188(ra) # 80008918 <_Unwind_Resume>

0000000080002dc4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    80002dc4:	fd010113          	addi	sp,sp,-48
    80002dc8:	02113423          	sd	ra,40(sp)
    80002dcc:	02813023          	sd	s0,32(sp)
    80002dd0:	00913c23          	sd	s1,24(sp)
    80002dd4:	01213823          	sd	s2,16(sp)
    80002dd8:	01313423          	sd	s3,8(sp)
    80002ddc:	03010413          	addi	s0,sp,48
    80002de0:	00050913          	mv	s2,a0
    80002de4:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002de8:	04000513          	li	a0,64
    80002dec:	00000097          	auipc	ra,0x0
    80002df0:	ec0080e7          	jalr	-320(ra) # 80002cac <_ZN3TCBnwEm>
    80002df4:	00050493          	mv	s1,a0
        body = bodyy;
    80002df8:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    80002dfc:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002e00:	00090a63          	beqz	s2,80002e14 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    80002e04:	00008537          	lui	a0,0x8
    80002e08:	00000097          	auipc	ra,0x0
    80002e0c:	228080e7          	jalr	552(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
    80002e10:	0080006f          	j	80002e18 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    80002e14:	00000513          	li	a0,0
    80002e18:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002e1c:	00000797          	auipc	a5,0x0
    80002e20:	d4078793          	addi	a5,a5,-704 # 80002b5c <_ZN3TCB13threadWrapperEv>
    80002e24:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002e28:	04050a63          	beqz	a0,80002e7c <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xb8>
    80002e2c:	000087b7          	lui	a5,0x8
    80002e30:	00f50533          	add	a0,a0,a5
    80002e34:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    80002e38:	00200793          	li	a5,2
    80002e3c:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002e40:	02048823          	sb	zero,48(s1)
        id=threadId++;
    80002e44:	00005717          	auipc	a4,0x5
    80002e48:	9c470713          	addi	a4,a4,-1596 # 80007808 <_ZN3TCB7runningE>
    80002e4c:	00873783          	ld	a5,8(a4)
    80002e50:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80002e54:	00d73423          	sd	a3,8(a4)
    80002e58:	02f4bc23          	sd	a5,56(s1)
}
    80002e5c:	00048513          	mv	a0,s1
    80002e60:	02813083          	ld	ra,40(sp)
    80002e64:	02013403          	ld	s0,32(sp)
    80002e68:	01813483          	ld	s1,24(sp)
    80002e6c:	01013903          	ld	s2,16(sp)
    80002e70:	00813983          	ld	s3,8(sp)
    80002e74:	03010113          	addi	sp,sp,48
    80002e78:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002e7c:	00000513          	li	a0,0
    80002e80:	fb5ff06f          	j	80002e34 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002e84:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002e88:	00048513          	mv	a0,s1
    80002e8c:	00000097          	auipc	ra,0x0
    80002e90:	df8080e7          	jalr	-520(ra) # 80002c84 <_ZN3TCBdlEPv>
    80002e94:	00090513          	mv	a0,s2
    80002e98:	00006097          	auipc	ra,0x6
    80002e9c:	a80080e7          	jalr	-1408(ra) # 80008918 <_Unwind_Resume>

0000000080002ea0 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}
    80002ea0:	ff010113          	addi	sp,sp,-16
    80002ea4:	00813423          	sd	s0,8(sp)
    80002ea8:	01010413          	addi	s0,sp,16
    80002eac:	00100793          	li	a5,1
    80002eb0:	00f50863          	beq	a0,a5,80002ec0 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002eb4:	00813403          	ld	s0,8(sp)
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00008067          	ret
    80002ec0:	000107b7          	lui	a5,0x10
    80002ec4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002ec8:	fef596e3          	bne	a1,a5,80002eb4 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002ecc:	00005797          	auipc	a5,0x5
    80002ed0:	95478793          	addi	a5,a5,-1708 # 80007820 <_ZN9Scheduler16readyThreadQueueE>
    80002ed4:	0007b023          	sd	zero,0(a5)
    80002ed8:	0007b423          	sd	zero,8(a5)
    80002edc:	fd9ff06f          	j	80002eb4 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ee0 <_ZN9Scheduler3getEv>:
{
    80002ee0:	ff010113          	addi	sp,sp,-16
    80002ee4:	00813423          	sd	s0,8(sp)
    80002ee8:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
    80002eec:	00005517          	auipc	a0,0x5
    80002ef0:	93453503          	ld	a0,-1740(a0) # 80007820 <_ZN9Scheduler16readyThreadQueueE>
    80002ef4:	00050c63          	beqz	a0,80002f0c <_ZN9Scheduler3getEv+0x2c>
        head = head->next;
    80002ef8:	00853783          	ld	a5,8(a0)
    80002efc:	00005717          	auipc	a4,0x5
    80002f00:	92f73223          	sd	a5,-1756(a4) # 80007820 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002f04:	00078a63          	beqz	a5,80002f18 <_ZN9Scheduler3getEv+0x38>
        T *ret = elem->data;
    80002f08:	00053503          	ld	a0,0(a0)
}
    80002f0c:	00813403          	ld	s0,8(sp)
    80002f10:	01010113          	addi	sp,sp,16
    80002f14:	00008067          	ret
        if (!head) { tail = 0; }
    80002f18:	00005797          	auipc	a5,0x5
    80002f1c:	9007b823          	sd	zero,-1776(a5) # 80007828 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002f20:	fe9ff06f          	j	80002f08 <_ZN9Scheduler3getEv+0x28>

0000000080002f24 <_ZN9Scheduler3putEP3TCB>:
{
    80002f24:	fe010113          	addi	sp,sp,-32
    80002f28:	00113c23          	sd	ra,24(sp)
    80002f2c:	00813823          	sd	s0,16(sp)
    80002f30:	00913423          	sd	s1,8(sp)
    80002f34:	02010413          	addi	s0,sp,32
    80002f38:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002f3c:	01000513          	li	a0,16
    80002f40:	fffff097          	auipc	ra,0xfffff
    80002f44:	76c080e7          	jalr	1900(ra) # 800026ac <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002f48:	00953023          	sd	s1,0(a0)
    80002f4c:	00053423          	sd	zero,8(a0)
        if (tail)
    80002f50:	00005797          	auipc	a5,0x5
    80002f54:	8d87b783          	ld	a5,-1832(a5) # 80007828 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002f58:	02078263          	beqz	a5,80002f7c <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002f5c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002f60:	00005797          	auipc	a5,0x5
    80002f64:	8ca7b423          	sd	a0,-1848(a5) # 80007828 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	02010113          	addi	sp,sp,32
    80002f78:	00008067          	ret
            head = tail = elem;
    80002f7c:	00005797          	auipc	a5,0x5
    80002f80:	8a478793          	addi	a5,a5,-1884 # 80007820 <_ZN9Scheduler16readyThreadQueueE>
    80002f84:	00a7b423          	sd	a0,8(a5)
    80002f88:	00a7b023          	sd	a0,0(a5)
    80002f8c:	fddff06f          	j	80002f68 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002f90 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002f90:	ff010113          	addi	sp,sp,-16
    80002f94:	00813423          	sd	s0,8(sp)
    80002f98:	01010413          	addi	s0,sp,16
}
    80002f9c:	00053503          	ld	a0,0(a0)
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret

0000000080002fac <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    80002fac:	ff010113          	addi	sp,sp,-16
    80002fb0:	00113423          	sd	ra,8(sp)
    80002fb4:	00813023          	sd	s0,0(sp)
    80002fb8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002fbc:	00000097          	auipc	ra,0x0
    80002fc0:	074080e7          	jalr	116(ra) # 80003030 <_ZN15MemoryAllocator6mallocEm>
}
    80002fc4:	00813083          	ld	ra,8(sp)
    80002fc8:	00013403          	ld	s0,0(sp)
    80002fcc:	01010113          	addi	sp,sp,16
    80002fd0:	00008067          	ret

0000000080002fd4 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    80002fd4:	ff010113          	addi	sp,sp,-16
    80002fd8:	00113423          	sd	ra,8(sp)
    80002fdc:	00813023          	sd	s0,0(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002fe4:	00000097          	auipc	ra,0x0
    80002fe8:	0e8080e7          	jalr	232(ra) # 800030cc <_ZN15MemoryAllocator4freeEPv>
}
    80002fec:	00813083          	ld	ra,8(sp)
    80002ff0:	00013403          	ld	s0,0(sp)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002ffc:	ff010113          	addi	sp,sp,-16
    80003000:	00113423          	sd	ra,8(sp)
    80003004:	00813023          	sd	s0,0(sp)
    80003008:	01010413          	addi	s0,sp,16
    8000300c:	000105b7          	lui	a1,0x10
    80003010:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80003014:	00100513          	li	a0,1
    80003018:	00000097          	auipc	ra,0x0
    8000301c:	e88080e7          	jalr	-376(ra) # 80002ea0 <_Z41__static_initialization_and_destruction_0ii>
    80003020:	00813083          	ld	ra,8(sp)
    80003024:	00013403          	ld	s0,0(sp)
    80003028:	01010113          	addi	sp,sp,16
    8000302c:	00008067          	ret

0000000080003030 <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00813423          	sd	s0,8(sp)
    80003038:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    8000303c:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    80003040:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80003044:	00004517          	auipc	a0,0x4
    80003048:	7ec53503          	ld	a0,2028(a0) # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
    8000304c:	0440006f          	j	80003090 <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80003050:	40e787b3          	sub	a5,a5,a4
    80003054:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80003058:	fe878793          	addi	a5,a5,-24
    8000305c:	00679793          	slli	a5,a5,0x6
    80003060:	fe878793          	addi	a5,a5,-24
    80003064:	00f507b3          	add	a5,a0,a5
    80003068:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    8000306c:	01053783          	ld	a5,16(a0)
    80003070:	fe878793          	addi	a5,a5,-24
    80003074:	00679793          	slli	a5,a5,0x6
    80003078:	ff078793          	addi	a5,a5,-16
    8000307c:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80003080:	00813403          	ld	s0,8(sp)
    80003084:	01010113          	addi	sp,sp,16
    80003088:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    8000308c:	00053503          	ld	a0,0(a0)
    80003090:	fe0508e3          	beqz	a0,80003080 <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    80003094:	01053783          	ld	a5,16(a0)
    80003098:	faf76ce3          	bltu	a4,a5,80003050 <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    8000309c:	fee798e3          	bne	a5,a4,8000308c <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    800030a0:	00853783          	ld	a5,8(a0)
    800030a4:	00078663          	beqz	a5,800030b0 <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    800030a8:	00053683          	ld	a3,0(a0)
    800030ac:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    800030b0:	00053783          	ld	a5,0(a0)
    800030b4:	00078663          	beqz	a5,800030c0 <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    800030b8:	00853683          	ld	a3,8(a0)
    800030bc:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    800030c0:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    800030c4:	ff050513          	addi	a0,a0,-16
    800030c8:	fb9ff06f          	j	80003080 <_ZN15MemoryAllocator6mallocEm+0x50>

00000000800030cc <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    800030cc:	ff010113          	addi	sp,sp,-16
    800030d0:	00813423          	sd	s0,8(sp)
    800030d4:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    800030d8:	14050663          	beqz	a0,80003224 <_ZN15MemoryAllocator4freeEPv+0x158>
    800030dc:	00004797          	auipc	a5,0x4
    800030e0:	6cc7b783          	ld	a5,1740(a5) # 800077a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800030e4:	0007b783          	ld	a5,0(a5)
    800030e8:	14a7e263          	bltu	a5,a0,8000322c <_ZN15MemoryAllocator4freeEPv+0x160>
    800030ec:	00004797          	auipc	a5,0x4
    800030f0:	6947b783          	ld	a5,1684(a5) # 80007780 <_GLOBAL_OFFSET_TABLE_+0x8>
    800030f4:	0007b783          	ld	a5,0(a5)
    800030f8:	14f56263          	bltu	a0,a5,8000323c <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    800030fc:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    80003100:	14070263          	beqz	a4,80003244 <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    80003104:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    80003108:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    8000310c:	00004797          	auipc	a5,0x4
    80003110:	7247b783          	ld	a5,1828(a5) # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003114:	0140006f          	j	80003128 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80003118:	00004697          	auipc	a3,0x4
    8000311c:	7206b683          	ld	a3,1824(a3) # 80007838 <_ZN15MemoryAllocator4tailE>
    80003120:	02f68e63          	beq	a3,a5,8000315c <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80003124:	0007b783          	ld	a5,0(a5)
    80003128:	04078863          	beqz	a5,80003178 <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    8000312c:	fee7f6e3          	bgeu	a5,a4,80003118 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80003130:	0007b683          	ld	a3,0(a5)
    80003134:	fed772e3          	bgeu	a4,a3,80003118 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80003138:	00004617          	auipc	a2,0x4
    8000313c:	70063603          	ld	a2,1792(a2) # 80007838 <_ZN15MemoryAllocator4tailE>
    80003140:	fcf60ce3          	beq	a2,a5,80003118 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    80003144:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80003148:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    8000314c:	0007b683          	ld	a3,0(a5)
    80003150:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    80003154:	00e7b023          	sd	a4,0(a5)
    80003158:	fcdff06f          	j	80003124 <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    8000315c:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80003160:	00004797          	auipc	a5,0x4
    80003164:	6d078793          	addi	a5,a5,1744 # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003168:	0087b683          	ld	a3,8(a5)
    8000316c:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80003170:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    80003174:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80003178:	00004797          	auipc	a5,0x4
    8000317c:	6b87b783          	ld	a5,1720(a5) # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003180:	02078e63          	beqz	a5,800031bc <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    80003184:	00053783          	ld	a5,0(a0)
    80003188:	00078a63          	beqz	a5,8000319c <_ZN15MemoryAllocator4freeEPv+0xd0>
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
    8000318c:	0107b603          	ld	a2,16(a5)
    80003190:	00661693          	slli	a3,a2,0x6
    80003194:	00d786b3          	add	a3,a5,a3
    80003198:	02e68a63          	beq	a3,a4,800031cc <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    8000319c:	00073783          	ld	a5,0(a4)
    800031a0:	0a078663          	beqz	a5,8000324c <_ZN15MemoryAllocator4freeEPv+0x180>
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
    800031a4:	01073603          	ld	a2,16(a4)
    800031a8:	00661693          	slli	a3,a2,0x6
    800031ac:	00d706b3          	add	a3,a4,a3
    800031b0:	04d78463          	beq	a5,a3,800031f8 <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    800031b4:	00000513          	li	a0,0
    800031b8:	0780006f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    800031bc:	00004797          	auipc	a5,0x4
    800031c0:	66e7ba23          	sd	a4,1652(a5) # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    800031c4:	00000513          	li	a0,0
    800031c8:	0680006f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    800031cc:	00853703          	ld	a4,8(a0)
    800031d0:	00e60633          	add	a2,a2,a4
    800031d4:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    800031d8:	00053703          	ld	a4,0(a0)
    800031dc:	ff853783          	ld	a5,-8(a0)
    800031e0:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    800031e4:	00078663          	beqz	a5,800031f0 <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    800031e8:	00053703          	ld	a4,0(a0)
    800031ec:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    800031f0:	00053703          	ld	a4,0(a0)
    800031f4:	fa9ff06f          	j	8000319c <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    800031f8:	0107b683          	ld	a3,16(a5)
    800031fc:	00d60633          	add	a2,a2,a3
    80003200:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    80003204:	0007b783          	ld	a5,0(a5)
    80003208:	04078663          	beqz	a5,80003254 <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    8000320c:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    80003210:	00073783          	ld	a5,0(a4)
    80003214:	0007b783          	ld	a5,0(a5)
    80003218:	00f73023          	sd	a5,0(a4)
    return 0;
    8000321c:	00000513          	li	a0,0
    80003220:	0100006f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80003224:	00100513          	li	a0,1
    80003228:	0080006f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
    8000322c:	00100513          	li	a0,1
}
    80003230:	00813403          	ld	s0,8(sp)
    80003234:	01010113          	addi	sp,sp,16
    80003238:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    8000323c:	00100513          	li	a0,1
    80003240:	ff1ff06f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    80003244:	00100513          	li	a0,1
    80003248:	fe9ff06f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    8000324c:	00000513          	li	a0,0
    80003250:	fe1ff06f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>
    80003254:	00000513          	li	a0,0
    80003258:	fd9ff06f          	j	80003230 <_ZN15MemoryAllocator4freeEPv+0x164>

000000008000325c <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    8000325c:	ff010113          	addi	sp,sp,-16
    80003260:	00813423          	sd	s0,8(sp)
    80003264:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80003268:	00004797          	auipc	a5,0x4
    8000326c:	5187b783          	ld	a5,1304(a5) # 80007780 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003270:	0007b703          	ld	a4,0(a5)
    80003274:	00004697          	auipc	a3,0x4
    80003278:	5bc68693          	addi	a3,a3,1468 # 80007830 <_ZN15MemoryAllocator13freeBlockHeadE>
    8000327c:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80003280:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80003284:	00004797          	auipc	a5,0x4
    80003288:	5247b783          	ld	a5,1316(a5) # 800077a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000328c:	0007b783          	ld	a5,0(a5)
    80003290:	40e787b3          	sub	a5,a5,a4
    80003294:	03f78793          	addi	a5,a5,63
    80003298:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    8000329c:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    800032a0:	00e6b423          	sd	a4,8(a3)
    freeBlockHead->next= nullptr;
    800032a4:	00073023          	sd	zero,0(a4)
    freeBlockHead->prev= nullptr;
    800032a8:	0006b783          	ld	a5,0(a3)
    800032ac:	0007b423          	sd	zero,8(a5)
}
    800032b0:	00813403          	ld	s0,8(sp)
    800032b4:	01010113          	addi	sp,sp,16
    800032b8:	00008067          	ret

00000000800032bc <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800032bc:	fe010113          	addi	sp,sp,-32
    800032c0:	00113c23          	sd	ra,24(sp)
    800032c4:	00813823          	sd	s0,16(sp)
    800032c8:	00913423          	sd	s1,8(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	00050493          	mv	s1,a0
    LOCK();
    800032d4:	00100613          	li	a2,1
    800032d8:	00000593          	li	a1,0
    800032dc:	00004517          	auipc	a0,0x4
    800032e0:	56c50513          	addi	a0,a0,1388 # 80007848 <lockPrint>
    800032e4:	ffffe097          	auipc	ra,0xffffe
    800032e8:	f30080e7          	jalr	-208(ra) # 80001214 <copy_and_swap>
    800032ec:	fe0514e3          	bnez	a0,800032d4 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800032f0:	0004c503          	lbu	a0,0(s1)
    800032f4:	00050a63          	beqz	a0,80003308 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800032f8:	ffffe097          	auipc	ra,0xffffe
    800032fc:	144080e7          	jalr	324(ra) # 8000143c <_Z4putcc>
        string++;
    80003300:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003304:	fedff06f          	j	800032f0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80003308:	00000613          	li	a2,0
    8000330c:	00100593          	li	a1,1
    80003310:	00004517          	auipc	a0,0x4
    80003314:	53850513          	addi	a0,a0,1336 # 80007848 <lockPrint>
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	efc080e7          	jalr	-260(ra) # 80001214 <copy_and_swap>
    80003320:	fe0514e3          	bnez	a0,80003308 <_Z11printStringPKc+0x4c>
}
    80003324:	01813083          	ld	ra,24(sp)
    80003328:	01013403          	ld	s0,16(sp)
    8000332c:	00813483          	ld	s1,8(sp)
    80003330:	02010113          	addi	sp,sp,32
    80003334:	00008067          	ret

0000000080003338 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003338:	fd010113          	addi	sp,sp,-48
    8000333c:	02113423          	sd	ra,40(sp)
    80003340:	02813023          	sd	s0,32(sp)
    80003344:	00913c23          	sd	s1,24(sp)
    80003348:	01213823          	sd	s2,16(sp)
    8000334c:	01313423          	sd	s3,8(sp)
    80003350:	01413023          	sd	s4,0(sp)
    80003354:	03010413          	addi	s0,sp,48
    80003358:	00050993          	mv	s3,a0
    8000335c:	00058a13          	mv	s4,a1
    LOCK();
    80003360:	00100613          	li	a2,1
    80003364:	00000593          	li	a1,0
    80003368:	00004517          	auipc	a0,0x4
    8000336c:	4e050513          	addi	a0,a0,1248 # 80007848 <lockPrint>
    80003370:	ffffe097          	auipc	ra,0xffffe
    80003374:	ea4080e7          	jalr	-348(ra) # 80001214 <copy_and_swap>
    80003378:	fe0514e3          	bnez	a0,80003360 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000337c:	00000913          	li	s2,0
    80003380:	00090493          	mv	s1,s2
    80003384:	0019091b          	addiw	s2,s2,1
    80003388:	03495a63          	bge	s2,s4,800033bc <_Z9getStringPci+0x84>
        cc = getc();
    8000338c:	ffffe097          	auipc	ra,0xffffe
    80003390:	088080e7          	jalr	136(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80003394:	02050463          	beqz	a0,800033bc <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003398:	009984b3          	add	s1,s3,s1
    8000339c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800033a0:	00a00793          	li	a5,10
    800033a4:	00f50a63          	beq	a0,a5,800033b8 <_Z9getStringPci+0x80>
    800033a8:	00d00793          	li	a5,13
    800033ac:	fcf51ae3          	bne	a0,a5,80003380 <_Z9getStringPci+0x48>
        buf[i++] = c;
    800033b0:	00090493          	mv	s1,s2
    800033b4:	0080006f          	j	800033bc <_Z9getStringPci+0x84>
    800033b8:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800033bc:	009984b3          	add	s1,s3,s1
    800033c0:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800033c4:	00000613          	li	a2,0
    800033c8:	00100593          	li	a1,1
    800033cc:	00004517          	auipc	a0,0x4
    800033d0:	47c50513          	addi	a0,a0,1148 # 80007848 <lockPrint>
    800033d4:	ffffe097          	auipc	ra,0xffffe
    800033d8:	e40080e7          	jalr	-448(ra) # 80001214 <copy_and_swap>
    800033dc:	fe0514e3          	bnez	a0,800033c4 <_Z9getStringPci+0x8c>
    return buf;
}
    800033e0:	00098513          	mv	a0,s3
    800033e4:	02813083          	ld	ra,40(sp)
    800033e8:	02013403          	ld	s0,32(sp)
    800033ec:	01813483          	ld	s1,24(sp)
    800033f0:	01013903          	ld	s2,16(sp)
    800033f4:	00813983          	ld	s3,8(sp)
    800033f8:	00013a03          	ld	s4,0(sp)
    800033fc:	03010113          	addi	sp,sp,48
    80003400:	00008067          	ret

0000000080003404 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003404:	ff010113          	addi	sp,sp,-16
    80003408:	00813423          	sd	s0,8(sp)
    8000340c:	01010413          	addi	s0,sp,16
    80003410:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003414:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003418:	0006c603          	lbu	a2,0(a3)
    8000341c:	fd06071b          	addiw	a4,a2,-48
    80003420:	0ff77713          	andi	a4,a4,255
    80003424:	00900793          	li	a5,9
    80003428:	02e7e063          	bltu	a5,a4,80003448 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    8000342c:	0025179b          	slliw	a5,a0,0x2
    80003430:	00a787bb          	addw	a5,a5,a0
    80003434:	0017979b          	slliw	a5,a5,0x1
    80003438:	00168693          	addi	a3,a3,1
    8000343c:	00c787bb          	addw	a5,a5,a2
    80003440:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003444:	fd5ff06f          	j	80003418 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003454:	fc010113          	addi	sp,sp,-64
    80003458:	02113c23          	sd	ra,56(sp)
    8000345c:	02813823          	sd	s0,48(sp)
    80003460:	02913423          	sd	s1,40(sp)
    80003464:	03213023          	sd	s2,32(sp)
    80003468:	01313c23          	sd	s3,24(sp)
    8000346c:	04010413          	addi	s0,sp,64
    80003470:	00050493          	mv	s1,a0
    80003474:	00058913          	mv	s2,a1
    80003478:	00060993          	mv	s3,a2
    LOCK();
    8000347c:	00100613          	li	a2,1
    80003480:	00000593          	li	a1,0
    80003484:	00004517          	auipc	a0,0x4
    80003488:	3c450513          	addi	a0,a0,964 # 80007848 <lockPrint>
    8000348c:	ffffe097          	auipc	ra,0xffffe
    80003490:	d88080e7          	jalr	-632(ra) # 80001214 <copy_and_swap>
    80003494:	fe0514e3          	bnez	a0,8000347c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003498:	00098463          	beqz	s3,800034a0 <_Z8printIntiii+0x4c>
    8000349c:	0804c463          	bltz	s1,80003524 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800034a0:	0004851b          	sext.w	a0,s1
    neg = 0;
    800034a4:	00000593          	li	a1,0
    }

    i = 0;
    800034a8:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800034ac:	0009079b          	sext.w	a5,s2
    800034b0:	0325773b          	remuw	a4,a0,s2
    800034b4:	00048613          	mv	a2,s1
    800034b8:	0014849b          	addiw	s1,s1,1
    800034bc:	02071693          	slli	a3,a4,0x20
    800034c0:	0206d693          	srli	a3,a3,0x20
    800034c4:	00004717          	auipc	a4,0x4
    800034c8:	29c70713          	addi	a4,a4,668 # 80007760 <digits>
    800034cc:	00d70733          	add	a4,a4,a3
    800034d0:	00074683          	lbu	a3,0(a4)
    800034d4:	fd040713          	addi	a4,s0,-48
    800034d8:	00c70733          	add	a4,a4,a2
    800034dc:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800034e0:	0005071b          	sext.w	a4,a0
    800034e4:	0325553b          	divuw	a0,a0,s2
    800034e8:	fcf772e3          	bgeu	a4,a5,800034ac <_Z8printIntiii+0x58>
    if(neg)
    800034ec:	00058c63          	beqz	a1,80003504 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800034f0:	fd040793          	addi	a5,s0,-48
    800034f4:	009784b3          	add	s1,a5,s1
    800034f8:	02d00793          	li	a5,45
    800034fc:	fef48823          	sb	a5,-16(s1)
    80003500:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003504:	fff4849b          	addiw	s1,s1,-1
    80003508:	0204c463          	bltz	s1,80003530 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000350c:	fd040793          	addi	a5,s0,-48
    80003510:	009787b3          	add	a5,a5,s1
    80003514:	ff07c503          	lbu	a0,-16(a5)
    80003518:	ffffe097          	auipc	ra,0xffffe
    8000351c:	f24080e7          	jalr	-220(ra) # 8000143c <_Z4putcc>
    80003520:	fe5ff06f          	j	80003504 <_Z8printIntiii+0xb0>
        x = -xx;
    80003524:	4090053b          	negw	a0,s1
        neg = 1;
    80003528:	00100593          	li	a1,1
        x = -xx;
    8000352c:	f7dff06f          	j	800034a8 <_Z8printIntiii+0x54>

    UNLOCK();
    80003530:	00000613          	li	a2,0
    80003534:	00100593          	li	a1,1
    80003538:	00004517          	auipc	a0,0x4
    8000353c:	31050513          	addi	a0,a0,784 # 80007848 <lockPrint>
    80003540:	ffffe097          	auipc	ra,0xffffe
    80003544:	cd4080e7          	jalr	-812(ra) # 80001214 <copy_and_swap>
    80003548:	fe0514e3          	bnez	a0,80003530 <_Z8printIntiii+0xdc>
    8000354c:	03813083          	ld	ra,56(sp)
    80003550:	03013403          	ld	s0,48(sp)
    80003554:	02813483          	ld	s1,40(sp)
    80003558:	02013903          	ld	s2,32(sp)
    8000355c:	01813983          	ld	s3,24(sp)
    80003560:	04010113          	addi	sp,sp,64
    80003564:	00008067          	ret

0000000080003568 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003568:	fd010113          	addi	sp,sp,-48
    8000356c:	02113423          	sd	ra,40(sp)
    80003570:	02813023          	sd	s0,32(sp)
    80003574:	00913c23          	sd	s1,24(sp)
    80003578:	01213823          	sd	s2,16(sp)
    8000357c:	01313423          	sd	s3,8(sp)
    80003580:	03010413          	addi	s0,sp,48
    80003584:	00050493          	mv	s1,a0
    80003588:	00058913          	mv	s2,a1
    8000358c:	0015879b          	addiw	a5,a1,1
    80003590:	0007851b          	sext.w	a0,a5
    80003594:	00f4a023          	sw	a5,0(s1)
    80003598:	0004a823          	sw	zero,16(s1)
    8000359c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800035a0:	00251513          	slli	a0,a0,0x2
    800035a4:	ffffe097          	auipc	ra,0xffffe
    800035a8:	c90080e7          	jalr	-880(ra) # 80001234 <_Z9mem_allocm>
    800035ac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800035b0:	01000513          	li	a0,16
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	0f8080e7          	jalr	248(ra) # 800026ac <_Znwm>
    800035bc:	00050993          	mv	s3,a0
    800035c0:	00000593          	li	a1,0
    800035c4:	fffff097          	auipc	ra,0xfffff
    800035c8:	008080e7          	jalr	8(ra) # 800025cc <_ZN9SemaphoreC1Ej>
    800035cc:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800035d0:	01000513          	li	a0,16
    800035d4:	fffff097          	auipc	ra,0xfffff
    800035d8:	0d8080e7          	jalr	216(ra) # 800026ac <_Znwm>
    800035dc:	00050993          	mv	s3,a0
    800035e0:	00090593          	mv	a1,s2
    800035e4:	fffff097          	auipc	ra,0xfffff
    800035e8:	fe8080e7          	jalr	-24(ra) # 800025cc <_ZN9SemaphoreC1Ej>
    800035ec:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800035f0:	01000513          	li	a0,16
    800035f4:	fffff097          	auipc	ra,0xfffff
    800035f8:	0b8080e7          	jalr	184(ra) # 800026ac <_Znwm>
    800035fc:	00050913          	mv	s2,a0
    80003600:	00100593          	li	a1,1
    80003604:	fffff097          	auipc	ra,0xfffff
    80003608:	fc8080e7          	jalr	-56(ra) # 800025cc <_ZN9SemaphoreC1Ej>
    8000360c:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003610:	01000513          	li	a0,16
    80003614:	fffff097          	auipc	ra,0xfffff
    80003618:	098080e7          	jalr	152(ra) # 800026ac <_Znwm>
    8000361c:	00050913          	mv	s2,a0
    80003620:	00100593          	li	a1,1
    80003624:	fffff097          	auipc	ra,0xfffff
    80003628:	fa8080e7          	jalr	-88(ra) # 800025cc <_ZN9SemaphoreC1Ej>
    8000362c:	0324b823          	sd	s2,48(s1)
}
    80003630:	02813083          	ld	ra,40(sp)
    80003634:	02013403          	ld	s0,32(sp)
    80003638:	01813483          	ld	s1,24(sp)
    8000363c:	01013903          	ld	s2,16(sp)
    80003640:	00813983          	ld	s3,8(sp)
    80003644:	03010113          	addi	sp,sp,48
    80003648:	00008067          	ret
    8000364c:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003650:	00098513          	mv	a0,s3
    80003654:	fffff097          	auipc	ra,0xfffff
    80003658:	0a8080e7          	jalr	168(ra) # 800026fc <_ZdlPv>
    8000365c:	00048513          	mv	a0,s1
    80003660:	00005097          	auipc	ra,0x5
    80003664:	2b8080e7          	jalr	696(ra) # 80008918 <_Unwind_Resume>
    80003668:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000366c:	00098513          	mv	a0,s3
    80003670:	fffff097          	auipc	ra,0xfffff
    80003674:	08c080e7          	jalr	140(ra) # 800026fc <_ZdlPv>
    80003678:	00048513          	mv	a0,s1
    8000367c:	00005097          	auipc	ra,0x5
    80003680:	29c080e7          	jalr	668(ra) # 80008918 <_Unwind_Resume>
    80003684:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003688:	00090513          	mv	a0,s2
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	070080e7          	jalr	112(ra) # 800026fc <_ZdlPv>
    80003694:	00048513          	mv	a0,s1
    80003698:	00005097          	auipc	ra,0x5
    8000369c:	280080e7          	jalr	640(ra) # 80008918 <_Unwind_Resume>
    800036a0:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800036a4:	00090513          	mv	a0,s2
    800036a8:	fffff097          	auipc	ra,0xfffff
    800036ac:	054080e7          	jalr	84(ra) # 800026fc <_ZdlPv>
    800036b0:	00048513          	mv	a0,s1
    800036b4:	00005097          	auipc	ra,0x5
    800036b8:	264080e7          	jalr	612(ra) # 80008918 <_Unwind_Resume>

00000000800036bc <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800036bc:	fe010113          	addi	sp,sp,-32
    800036c0:	00113c23          	sd	ra,24(sp)
    800036c4:	00813823          	sd	s0,16(sp)
    800036c8:	00913423          	sd	s1,8(sp)
    800036cc:	01213023          	sd	s2,0(sp)
    800036d0:	02010413          	addi	s0,sp,32
    800036d4:	00050493          	mv	s1,a0
    800036d8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800036dc:	01853503          	ld	a0,24(a0)
    800036e0:	fffff097          	auipc	ra,0xfffff
    800036e4:	f24080e7          	jalr	-220(ra) # 80002604 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800036e8:	0304b503          	ld	a0,48(s1)
    800036ec:	fffff097          	auipc	ra,0xfffff
    800036f0:	f18080e7          	jalr	-232(ra) # 80002604 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800036f4:	0084b783          	ld	a5,8(s1)
    800036f8:	0144a703          	lw	a4,20(s1)
    800036fc:	00271713          	slli	a4,a4,0x2
    80003700:	00e787b3          	add	a5,a5,a4
    80003704:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003708:	0144a783          	lw	a5,20(s1)
    8000370c:	0017879b          	addiw	a5,a5,1
    80003710:	0004a703          	lw	a4,0(s1)
    80003714:	02e7e7bb          	remw	a5,a5,a4
    80003718:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    8000371c:	0304b503          	ld	a0,48(s1)
    80003720:	fffff097          	auipc	ra,0xfffff
    80003724:	f10080e7          	jalr	-240(ra) # 80002630 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003728:	0204b503          	ld	a0,32(s1)
    8000372c:	fffff097          	auipc	ra,0xfffff
    80003730:	f04080e7          	jalr	-252(ra) # 80002630 <_ZN9Semaphore6signalEv>

}
    80003734:	01813083          	ld	ra,24(sp)
    80003738:	01013403          	ld	s0,16(sp)
    8000373c:	00813483          	ld	s1,8(sp)
    80003740:	00013903          	ld	s2,0(sp)
    80003744:	02010113          	addi	sp,sp,32
    80003748:	00008067          	ret

000000008000374c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    8000374c:	fe010113          	addi	sp,sp,-32
    80003750:	00113c23          	sd	ra,24(sp)
    80003754:	00813823          	sd	s0,16(sp)
    80003758:	00913423          	sd	s1,8(sp)
    8000375c:	01213023          	sd	s2,0(sp)
    80003760:	02010413          	addi	s0,sp,32
    80003764:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003768:	02053503          	ld	a0,32(a0)
    8000376c:	fffff097          	auipc	ra,0xfffff
    80003770:	e98080e7          	jalr	-360(ra) # 80002604 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003774:	0284b503          	ld	a0,40(s1)
    80003778:	fffff097          	auipc	ra,0xfffff
    8000377c:	e8c080e7          	jalr	-372(ra) # 80002604 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003780:	0084b703          	ld	a4,8(s1)
    80003784:	0104a783          	lw	a5,16(s1)
    80003788:	00279693          	slli	a3,a5,0x2
    8000378c:	00d70733          	add	a4,a4,a3
    80003790:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003794:	0017879b          	addiw	a5,a5,1
    80003798:	0004a703          	lw	a4,0(s1)
    8000379c:	02e7e7bb          	remw	a5,a5,a4
    800037a0:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800037a4:	0284b503          	ld	a0,40(s1)
    800037a8:	fffff097          	auipc	ra,0xfffff
    800037ac:	e88080e7          	jalr	-376(ra) # 80002630 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800037b0:	0184b503          	ld	a0,24(s1)
    800037b4:	fffff097          	auipc	ra,0xfffff
    800037b8:	e7c080e7          	jalr	-388(ra) # 80002630 <_ZN9Semaphore6signalEv>

    return ret;
}
    800037bc:	00090513          	mv	a0,s2
    800037c0:	01813083          	ld	ra,24(sp)
    800037c4:	01013403          	ld	s0,16(sp)
    800037c8:	00813483          	ld	s1,8(sp)
    800037cc:	00013903          	ld	s2,0(sp)
    800037d0:	02010113          	addi	sp,sp,32
    800037d4:	00008067          	ret

00000000800037d8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800037d8:	fe010113          	addi	sp,sp,-32
    800037dc:	00113c23          	sd	ra,24(sp)
    800037e0:	00813823          	sd	s0,16(sp)
    800037e4:	00913423          	sd	s1,8(sp)
    800037e8:	01213023          	sd	s2,0(sp)
    800037ec:	02010413          	addi	s0,sp,32
    800037f0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800037f4:	02853503          	ld	a0,40(a0)
    800037f8:	fffff097          	auipc	ra,0xfffff
    800037fc:	e0c080e7          	jalr	-500(ra) # 80002604 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003800:	0304b503          	ld	a0,48(s1)
    80003804:	fffff097          	auipc	ra,0xfffff
    80003808:	e00080e7          	jalr	-512(ra) # 80002604 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    8000380c:	0144a783          	lw	a5,20(s1)
    80003810:	0104a903          	lw	s2,16(s1)
    80003814:	0327ce63          	blt	a5,s2,80003850 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003818:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    8000381c:	0304b503          	ld	a0,48(s1)
    80003820:	fffff097          	auipc	ra,0xfffff
    80003824:	e10080e7          	jalr	-496(ra) # 80002630 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003828:	0284b503          	ld	a0,40(s1)
    8000382c:	fffff097          	auipc	ra,0xfffff
    80003830:	e04080e7          	jalr	-508(ra) # 80002630 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003834:	00090513          	mv	a0,s2
    80003838:	01813083          	ld	ra,24(sp)
    8000383c:	01013403          	ld	s0,16(sp)
    80003840:	00813483          	ld	s1,8(sp)
    80003844:	00013903          	ld	s2,0(sp)
    80003848:	02010113          	addi	sp,sp,32
    8000384c:	00008067          	ret
        ret = cap - head + tail;
    80003850:	0004a703          	lw	a4,0(s1)
    80003854:	4127093b          	subw	s2,a4,s2
    80003858:	00f9093b          	addw	s2,s2,a5
    8000385c:	fc1ff06f          	j	8000381c <_ZN9BufferCPP6getCntEv+0x44>

0000000080003860 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003860:	fe010113          	addi	sp,sp,-32
    80003864:	00113c23          	sd	ra,24(sp)
    80003868:	00813823          	sd	s0,16(sp)
    8000386c:	00913423          	sd	s1,8(sp)
    80003870:	02010413          	addi	s0,sp,32
    80003874:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003878:	00a00513          	li	a0,10
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	e08080e7          	jalr	-504(ra) # 80002684 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003884:	00003517          	auipc	a0,0x3
    80003888:	8ac50513          	addi	a0,a0,-1876 # 80006130 <CONSOLE_STATUS+0x120>
    8000388c:	00000097          	auipc	ra,0x0
    80003890:	a30080e7          	jalr	-1488(ra) # 800032bc <_Z11printStringPKc>
    while (getCnt()) {
    80003894:	00048513          	mv	a0,s1
    80003898:	00000097          	auipc	ra,0x0
    8000389c:	f40080e7          	jalr	-192(ra) # 800037d8 <_ZN9BufferCPP6getCntEv>
    800038a0:	02050c63          	beqz	a0,800038d8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800038a4:	0084b783          	ld	a5,8(s1)
    800038a8:	0104a703          	lw	a4,16(s1)
    800038ac:	00271713          	slli	a4,a4,0x2
    800038b0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800038b4:	0007c503          	lbu	a0,0(a5)
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	dcc080e7          	jalr	-564(ra) # 80002684 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800038c0:	0104a783          	lw	a5,16(s1)
    800038c4:	0017879b          	addiw	a5,a5,1
    800038c8:	0004a703          	lw	a4,0(s1)
    800038cc:	02e7e7bb          	remw	a5,a5,a4
    800038d0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800038d4:	fc1ff06f          	j	80003894 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800038d8:	02100513          	li	a0,33
    800038dc:	fffff097          	auipc	ra,0xfffff
    800038e0:	da8080e7          	jalr	-600(ra) # 80002684 <_ZN7Console4putcEc>
    Console::putc('\n');
    800038e4:	00a00513          	li	a0,10
    800038e8:	fffff097          	auipc	ra,0xfffff
    800038ec:	d9c080e7          	jalr	-612(ra) # 80002684 <_ZN7Console4putcEc>
    mem_free(buffer);
    800038f0:	0084b503          	ld	a0,8(s1)
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	968080e7          	jalr	-1688(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    800038fc:	0204b503          	ld	a0,32(s1)
    80003900:	00050863          	beqz	a0,80003910 <_ZN9BufferCPPD1Ev+0xb0>
    80003904:	00053783          	ld	a5,0(a0)
    80003908:	0087b783          	ld	a5,8(a5)
    8000390c:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003910:	0184b503          	ld	a0,24(s1)
    80003914:	00050863          	beqz	a0,80003924 <_ZN9BufferCPPD1Ev+0xc4>
    80003918:	00053783          	ld	a5,0(a0)
    8000391c:	0087b783          	ld	a5,8(a5)
    80003920:	000780e7          	jalr	a5
    delete mutexTail;
    80003924:	0304b503          	ld	a0,48(s1)
    80003928:	00050863          	beqz	a0,80003938 <_ZN9BufferCPPD1Ev+0xd8>
    8000392c:	00053783          	ld	a5,0(a0)
    80003930:	0087b783          	ld	a5,8(a5)
    80003934:	000780e7          	jalr	a5
    delete mutexHead;
    80003938:	0284b503          	ld	a0,40(s1)
    8000393c:	00050863          	beqz	a0,8000394c <_ZN9BufferCPPD1Ev+0xec>
    80003940:	00053783          	ld	a5,0(a0)
    80003944:	0087b783          	ld	a5,8(a5)
    80003948:	000780e7          	jalr	a5
}
    8000394c:	01813083          	ld	ra,24(sp)
    80003950:	01013403          	ld	s0,16(sp)
    80003954:	00813483          	ld	s1,8(sp)
    80003958:	02010113          	addi	sp,sp,32
    8000395c:	00008067          	ret

0000000080003960 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003960:	fe010113          	addi	sp,sp,-32
    80003964:	00113c23          	sd	ra,24(sp)
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	01213023          	sd	s2,0(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00050493          	mv	s1,a0
    8000397c:	00058913          	mv	s2,a1
    80003980:	0015879b          	addiw	a5,a1,1
    80003984:	0007851b          	sext.w	a0,a5
    80003988:	00f4a023          	sw	a5,0(s1)
    8000398c:	0004a823          	sw	zero,16(s1)
    80003990:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003994:	00251513          	slli	a0,a0,0x2
    80003998:	ffffe097          	auipc	ra,0xffffe
    8000399c:	89c080e7          	jalr	-1892(ra) # 80001234 <_Z9mem_allocm>
    800039a0:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800039a4:	00000593          	li	a1,0
    800039a8:	02048513          	addi	a0,s1,32
    800039ac:	ffffe097          	auipc	ra,0xffffe
    800039b0:	9b4080e7          	jalr	-1612(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    800039b4:	00090593          	mv	a1,s2
    800039b8:	01848513          	addi	a0,s1,24
    800039bc:	ffffe097          	auipc	ra,0xffffe
    800039c0:	9a4080e7          	jalr	-1628(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    800039c4:	00100593          	li	a1,1
    800039c8:	02848513          	addi	a0,s1,40
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	994080e7          	jalr	-1644(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    800039d4:	00100593          	li	a1,1
    800039d8:	03048513          	addi	a0,s1,48
    800039dc:	ffffe097          	auipc	ra,0xffffe
    800039e0:	984080e7          	jalr	-1660(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    800039e4:	01813083          	ld	ra,24(sp)
    800039e8:	01013403          	ld	s0,16(sp)
    800039ec:	00813483          	ld	s1,8(sp)
    800039f0:	00013903          	ld	s2,0(sp)
    800039f4:	02010113          	addi	sp,sp,32
    800039f8:	00008067          	ret

00000000800039fc <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800039fc:	fe010113          	addi	sp,sp,-32
    80003a00:	00113c23          	sd	ra,24(sp)
    80003a04:	00813823          	sd	s0,16(sp)
    80003a08:	00913423          	sd	s1,8(sp)
    80003a0c:	01213023          	sd	s2,0(sp)
    80003a10:	02010413          	addi	s0,sp,32
    80003a14:	00050493          	mv	s1,a0
    80003a18:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003a1c:	01853503          	ld	a0,24(a0)
    80003a20:	ffffe097          	auipc	ra,0xffffe
    80003a24:	99c080e7          	jalr	-1636(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80003a28:	0304b503          	ld	a0,48(s1)
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	990080e7          	jalr	-1648(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80003a34:	0084b783          	ld	a5,8(s1)
    80003a38:	0144a703          	lw	a4,20(s1)
    80003a3c:	00271713          	slli	a4,a4,0x2
    80003a40:	00e787b3          	add	a5,a5,a4
    80003a44:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003a48:	0144a783          	lw	a5,20(s1)
    80003a4c:	0017879b          	addiw	a5,a5,1
    80003a50:	0004a703          	lw	a4,0(s1)
    80003a54:	02e7e7bb          	remw	a5,a5,a4
    80003a58:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003a5c:	0304b503          	ld	a0,48(s1)
    80003a60:	ffffe097          	auipc	ra,0xffffe
    80003a64:	988080e7          	jalr	-1656(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80003a68:	0204b503          	ld	a0,32(s1)
    80003a6c:	ffffe097          	auipc	ra,0xffffe
    80003a70:	97c080e7          	jalr	-1668(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    80003a74:	01813083          	ld	ra,24(sp)
    80003a78:	01013403          	ld	s0,16(sp)
    80003a7c:	00813483          	ld	s1,8(sp)
    80003a80:	00013903          	ld	s2,0(sp)
    80003a84:	02010113          	addi	sp,sp,32
    80003a88:	00008067          	ret

0000000080003a8c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003a8c:	fe010113          	addi	sp,sp,-32
    80003a90:	00113c23          	sd	ra,24(sp)
    80003a94:	00813823          	sd	s0,16(sp)
    80003a98:	00913423          	sd	s1,8(sp)
    80003a9c:	01213023          	sd	s2,0(sp)
    80003aa0:	02010413          	addi	s0,sp,32
    80003aa4:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003aa8:	02053503          	ld	a0,32(a0)
    80003aac:	ffffe097          	auipc	ra,0xffffe
    80003ab0:	910080e7          	jalr	-1776(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    80003ab4:	0284b503          	ld	a0,40(s1)
    80003ab8:	ffffe097          	auipc	ra,0xffffe
    80003abc:	904080e7          	jalr	-1788(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003ac0:	0084b703          	ld	a4,8(s1)
    80003ac4:	0104a783          	lw	a5,16(s1)
    80003ac8:	00279693          	slli	a3,a5,0x2
    80003acc:	00d70733          	add	a4,a4,a3
    80003ad0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003ad4:	0017879b          	addiw	a5,a5,1
    80003ad8:	0004a703          	lw	a4,0(s1)
    80003adc:	02e7e7bb          	remw	a5,a5,a4
    80003ae0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003ae4:	0284b503          	ld	a0,40(s1)
    80003ae8:	ffffe097          	auipc	ra,0xffffe
    80003aec:	900080e7          	jalr	-1792(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80003af0:	0184b503          	ld	a0,24(s1)
    80003af4:	ffffe097          	auipc	ra,0xffffe
    80003af8:	8f4080e7          	jalr	-1804(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003afc:	00090513          	mv	a0,s2
    80003b00:	01813083          	ld	ra,24(sp)
    80003b04:	01013403          	ld	s0,16(sp)
    80003b08:	00813483          	ld	s1,8(sp)
    80003b0c:	00013903          	ld	s2,0(sp)
    80003b10:	02010113          	addi	sp,sp,32
    80003b14:	00008067          	ret

0000000080003b18 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003b18:	fe010113          	addi	sp,sp,-32
    80003b1c:	00113c23          	sd	ra,24(sp)
    80003b20:	00813823          	sd	s0,16(sp)
    80003b24:	00913423          	sd	s1,8(sp)
    80003b28:	01213023          	sd	s2,0(sp)
    80003b2c:	02010413          	addi	s0,sp,32
    80003b30:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003b34:	02853503          	ld	a0,40(a0)
    80003b38:	ffffe097          	auipc	ra,0xffffe
    80003b3c:	884080e7          	jalr	-1916(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80003b40:	0304b503          	ld	a0,48(s1)
    80003b44:	ffffe097          	auipc	ra,0xffffe
    80003b48:	878080e7          	jalr	-1928(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003b4c:	0144a783          	lw	a5,20(s1)
    80003b50:	0104a903          	lw	s2,16(s1)
    80003b54:	0327ce63          	blt	a5,s2,80003b90 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003b58:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003b5c:	0304b503          	ld	a0,48(s1)
    80003b60:	ffffe097          	auipc	ra,0xffffe
    80003b64:	888080e7          	jalr	-1912(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80003b68:	0284b503          	ld	a0,40(s1)
    80003b6c:	ffffe097          	auipc	ra,0xffffe
    80003b70:	87c080e7          	jalr	-1924(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003b74:	00090513          	mv	a0,s2
    80003b78:	01813083          	ld	ra,24(sp)
    80003b7c:	01013403          	ld	s0,16(sp)
    80003b80:	00813483          	ld	s1,8(sp)
    80003b84:	00013903          	ld	s2,0(sp)
    80003b88:	02010113          	addi	sp,sp,32
    80003b8c:	00008067          	ret
        ret = cap - head + tail;
    80003b90:	0004a703          	lw	a4,0(s1)
    80003b94:	4127093b          	subw	s2,a4,s2
    80003b98:	00f9093b          	addw	s2,s2,a5
    80003b9c:	fc1ff06f          	j	80003b5c <_ZN6Buffer6getCntEv+0x44>

0000000080003ba0 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003ba0:	fe010113          	addi	sp,sp,-32
    80003ba4:	00113c23          	sd	ra,24(sp)
    80003ba8:	00813823          	sd	s0,16(sp)
    80003bac:	00913423          	sd	s1,8(sp)
    80003bb0:	02010413          	addi	s0,sp,32
    80003bb4:	00050493          	mv	s1,a0
    putc('\n');
    80003bb8:	00a00513          	li	a0,10
    80003bbc:	ffffe097          	auipc	ra,0xffffe
    80003bc0:	880080e7          	jalr	-1920(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    80003bc4:	00002517          	auipc	a0,0x2
    80003bc8:	56c50513          	addi	a0,a0,1388 # 80006130 <CONSOLE_STATUS+0x120>
    80003bcc:	fffff097          	auipc	ra,0xfffff
    80003bd0:	6f0080e7          	jalr	1776(ra) # 800032bc <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003bd4:	00048513          	mv	a0,s1
    80003bd8:	00000097          	auipc	ra,0x0
    80003bdc:	f40080e7          	jalr	-192(ra) # 80003b18 <_ZN6Buffer6getCntEv>
    80003be0:	02a05c63          	blez	a0,80003c18 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003be4:	0084b783          	ld	a5,8(s1)
    80003be8:	0104a703          	lw	a4,16(s1)
    80003bec:	00271713          	slli	a4,a4,0x2
    80003bf0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003bf4:	0007c503          	lbu	a0,0(a5)
    80003bf8:	ffffe097          	auipc	ra,0xffffe
    80003bfc:	844080e7          	jalr	-1980(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    80003c00:	0104a783          	lw	a5,16(s1)
    80003c04:	0017879b          	addiw	a5,a5,1
    80003c08:	0004a703          	lw	a4,0(s1)
    80003c0c:	02e7e7bb          	remw	a5,a5,a4
    80003c10:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003c14:	fc1ff06f          	j	80003bd4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003c18:	02100513          	li	a0,33
    80003c1c:	ffffe097          	auipc	ra,0xffffe
    80003c20:	820080e7          	jalr	-2016(ra) # 8000143c <_Z4putcc>
    putc('\n');
    80003c24:	00a00513          	li	a0,10
    80003c28:	ffffe097          	auipc	ra,0xffffe
    80003c2c:	814080e7          	jalr	-2028(ra) # 8000143c <_Z4putcc>
    mem_free(buffer);
    80003c30:	0084b503          	ld	a0,8(s1)
    80003c34:	ffffd097          	auipc	ra,0xffffd
    80003c38:	628080e7          	jalr	1576(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003c3c:	0204b503          	ld	a0,32(s1)
    80003c40:	ffffd097          	auipc	ra,0xffffd
    80003c44:	750080e7          	jalr	1872(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    80003c48:	0184b503          	ld	a0,24(s1)
    80003c4c:	ffffd097          	auipc	ra,0xffffd
    80003c50:	744080e7          	jalr	1860(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003c54:	0304b503          	ld	a0,48(s1)
    80003c58:	ffffd097          	auipc	ra,0xffffd
    80003c5c:	738080e7          	jalr	1848(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003c60:	0284b503          	ld	a0,40(s1)
    80003c64:	ffffd097          	auipc	ra,0xffffd
    80003c68:	72c080e7          	jalr	1836(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret

0000000080003c80 <start>:
    80003c80:	ff010113          	addi	sp,sp,-16
    80003c84:	00813423          	sd	s0,8(sp)
    80003c88:	01010413          	addi	s0,sp,16
    80003c8c:	300027f3          	csrr	a5,mstatus
    80003c90:	ffffe737          	lui	a4,0xffffe
    80003c94:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5d4f>
    80003c98:	00e7f7b3          	and	a5,a5,a4
    80003c9c:	00001737          	lui	a4,0x1
    80003ca0:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003ca4:	00e7e7b3          	or	a5,a5,a4
    80003ca8:	30079073          	csrw	mstatus,a5
    80003cac:	00000797          	auipc	a5,0x0
    80003cb0:	16078793          	addi	a5,a5,352 # 80003e0c <system_main>
    80003cb4:	34179073          	csrw	mepc,a5
    80003cb8:	00000793          	li	a5,0
    80003cbc:	18079073          	csrw	satp,a5
    80003cc0:	000107b7          	lui	a5,0x10
    80003cc4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003cc8:	30279073          	csrw	medeleg,a5
    80003ccc:	30379073          	csrw	mideleg,a5
    80003cd0:	104027f3          	csrr	a5,sie
    80003cd4:	2227e793          	ori	a5,a5,546
    80003cd8:	10479073          	csrw	sie,a5
    80003cdc:	fff00793          	li	a5,-1
    80003ce0:	00a7d793          	srli	a5,a5,0xa
    80003ce4:	3b079073          	csrw	pmpaddr0,a5
    80003ce8:	00f00793          	li	a5,15
    80003cec:	3a079073          	csrw	pmpcfg0,a5
    80003cf0:	f14027f3          	csrr	a5,mhartid
    80003cf4:	0200c737          	lui	a4,0x200c
    80003cf8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003cfc:	0007869b          	sext.w	a3,a5
    80003d00:	00269713          	slli	a4,a3,0x2
    80003d04:	000f4637          	lui	a2,0xf4
    80003d08:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003d0c:	00d70733          	add	a4,a4,a3
    80003d10:	0037979b          	slliw	a5,a5,0x3
    80003d14:	020046b7          	lui	a3,0x2004
    80003d18:	00d787b3          	add	a5,a5,a3
    80003d1c:	00c585b3          	add	a1,a1,a2
    80003d20:	00371693          	slli	a3,a4,0x3
    80003d24:	00004717          	auipc	a4,0x4
    80003d28:	b2c70713          	addi	a4,a4,-1236 # 80007850 <timer_scratch>
    80003d2c:	00b7b023          	sd	a1,0(a5)
    80003d30:	00d70733          	add	a4,a4,a3
    80003d34:	00f73c23          	sd	a5,24(a4)
    80003d38:	02c73023          	sd	a2,32(a4)
    80003d3c:	34071073          	csrw	mscratch,a4
    80003d40:	00000797          	auipc	a5,0x0
    80003d44:	6e078793          	addi	a5,a5,1760 # 80004420 <timervec>
    80003d48:	30579073          	csrw	mtvec,a5
    80003d4c:	300027f3          	csrr	a5,mstatus
    80003d50:	0087e793          	ori	a5,a5,8
    80003d54:	30079073          	csrw	mstatus,a5
    80003d58:	304027f3          	csrr	a5,mie
    80003d5c:	0807e793          	ori	a5,a5,128
    80003d60:	30479073          	csrw	mie,a5
    80003d64:	f14027f3          	csrr	a5,mhartid
    80003d68:	0007879b          	sext.w	a5,a5
    80003d6c:	00078213          	mv	tp,a5
    80003d70:	30200073          	mret
    80003d74:	00813403          	ld	s0,8(sp)
    80003d78:	01010113          	addi	sp,sp,16
    80003d7c:	00008067          	ret

0000000080003d80 <timerinit>:
    80003d80:	ff010113          	addi	sp,sp,-16
    80003d84:	00813423          	sd	s0,8(sp)
    80003d88:	01010413          	addi	s0,sp,16
    80003d8c:	f14027f3          	csrr	a5,mhartid
    80003d90:	0200c737          	lui	a4,0x200c
    80003d94:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003d98:	0007869b          	sext.w	a3,a5
    80003d9c:	00269713          	slli	a4,a3,0x2
    80003da0:	000f4637          	lui	a2,0xf4
    80003da4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003da8:	00d70733          	add	a4,a4,a3
    80003dac:	0037979b          	slliw	a5,a5,0x3
    80003db0:	020046b7          	lui	a3,0x2004
    80003db4:	00d787b3          	add	a5,a5,a3
    80003db8:	00c585b3          	add	a1,a1,a2
    80003dbc:	00371693          	slli	a3,a4,0x3
    80003dc0:	00004717          	auipc	a4,0x4
    80003dc4:	a9070713          	addi	a4,a4,-1392 # 80007850 <timer_scratch>
    80003dc8:	00b7b023          	sd	a1,0(a5)
    80003dcc:	00d70733          	add	a4,a4,a3
    80003dd0:	00f73c23          	sd	a5,24(a4)
    80003dd4:	02c73023          	sd	a2,32(a4)
    80003dd8:	34071073          	csrw	mscratch,a4
    80003ddc:	00000797          	auipc	a5,0x0
    80003de0:	64478793          	addi	a5,a5,1604 # 80004420 <timervec>
    80003de4:	30579073          	csrw	mtvec,a5
    80003de8:	300027f3          	csrr	a5,mstatus
    80003dec:	0087e793          	ori	a5,a5,8
    80003df0:	30079073          	csrw	mstatus,a5
    80003df4:	304027f3          	csrr	a5,mie
    80003df8:	0807e793          	ori	a5,a5,128
    80003dfc:	30479073          	csrw	mie,a5
    80003e00:	00813403          	ld	s0,8(sp)
    80003e04:	01010113          	addi	sp,sp,16
    80003e08:	00008067          	ret

0000000080003e0c <system_main>:
    80003e0c:	fe010113          	addi	sp,sp,-32
    80003e10:	00813823          	sd	s0,16(sp)
    80003e14:	00913423          	sd	s1,8(sp)
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	02010413          	addi	s0,sp,32
    80003e20:	00000097          	auipc	ra,0x0
    80003e24:	0c4080e7          	jalr	196(ra) # 80003ee4 <cpuid>
    80003e28:	00004497          	auipc	s1,0x4
    80003e2c:	9a848493          	addi	s1,s1,-1624 # 800077d0 <started>
    80003e30:	02050263          	beqz	a0,80003e54 <system_main+0x48>
    80003e34:	0004a783          	lw	a5,0(s1)
    80003e38:	0007879b          	sext.w	a5,a5
    80003e3c:	fe078ce3          	beqz	a5,80003e34 <system_main+0x28>
    80003e40:	0ff0000f          	fence
    80003e44:	00002517          	auipc	a0,0x2
    80003e48:	33450513          	addi	a0,a0,820 # 80006178 <CONSOLE_STATUS+0x168>
    80003e4c:	00001097          	auipc	ra,0x1
    80003e50:	a70080e7          	jalr	-1424(ra) # 800048bc <panic>
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	9c4080e7          	jalr	-1596(ra) # 80004818 <consoleinit>
    80003e5c:	00001097          	auipc	ra,0x1
    80003e60:	150080e7          	jalr	336(ra) # 80004fac <printfinit>
    80003e64:	00002517          	auipc	a0,0x2
    80003e68:	3f450513          	addi	a0,a0,1012 # 80006258 <CONSOLE_STATUS+0x248>
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	aac080e7          	jalr	-1364(ra) # 80004918 <__printf>
    80003e74:	00002517          	auipc	a0,0x2
    80003e78:	2d450513          	addi	a0,a0,724 # 80006148 <CONSOLE_STATUS+0x138>
    80003e7c:	00001097          	auipc	ra,0x1
    80003e80:	a9c080e7          	jalr	-1380(ra) # 80004918 <__printf>
    80003e84:	00002517          	auipc	a0,0x2
    80003e88:	3d450513          	addi	a0,a0,980 # 80006258 <CONSOLE_STATUS+0x248>
    80003e8c:	00001097          	auipc	ra,0x1
    80003e90:	a8c080e7          	jalr	-1396(ra) # 80004918 <__printf>
    80003e94:	00001097          	auipc	ra,0x1
    80003e98:	4a4080e7          	jalr	1188(ra) # 80005338 <kinit>
    80003e9c:	00000097          	auipc	ra,0x0
    80003ea0:	148080e7          	jalr	328(ra) # 80003fe4 <trapinit>
    80003ea4:	00000097          	auipc	ra,0x0
    80003ea8:	16c080e7          	jalr	364(ra) # 80004010 <trapinithart>
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	5b4080e7          	jalr	1460(ra) # 80004460 <plicinit>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	5d4080e7          	jalr	1492(ra) # 80004488 <plicinithart>
    80003ebc:	00000097          	auipc	ra,0x0
    80003ec0:	078080e7          	jalr	120(ra) # 80003f34 <userinit>
    80003ec4:	0ff0000f          	fence
    80003ec8:	00100793          	li	a5,1
    80003ecc:	00002517          	auipc	a0,0x2
    80003ed0:	29450513          	addi	a0,a0,660 # 80006160 <CONSOLE_STATUS+0x150>
    80003ed4:	00f4a023          	sw	a5,0(s1)
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	a40080e7          	jalr	-1472(ra) # 80004918 <__printf>
    80003ee0:	0000006f          	j	80003ee0 <system_main+0xd4>

0000000080003ee4 <cpuid>:
    80003ee4:	ff010113          	addi	sp,sp,-16
    80003ee8:	00813423          	sd	s0,8(sp)
    80003eec:	01010413          	addi	s0,sp,16
    80003ef0:	00020513          	mv	a0,tp
    80003ef4:	00813403          	ld	s0,8(sp)
    80003ef8:	0005051b          	sext.w	a0,a0
    80003efc:	01010113          	addi	sp,sp,16
    80003f00:	00008067          	ret

0000000080003f04 <mycpu>:
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00813423          	sd	s0,8(sp)
    80003f0c:	01010413          	addi	s0,sp,16
    80003f10:	00020793          	mv	a5,tp
    80003f14:	00813403          	ld	s0,8(sp)
    80003f18:	0007879b          	sext.w	a5,a5
    80003f1c:	00779793          	slli	a5,a5,0x7
    80003f20:	00005517          	auipc	a0,0x5
    80003f24:	96050513          	addi	a0,a0,-1696 # 80008880 <cpus>
    80003f28:	00f50533          	add	a0,a0,a5
    80003f2c:	01010113          	addi	sp,sp,16
    80003f30:	00008067          	ret

0000000080003f34 <userinit>:
    80003f34:	ff010113          	addi	sp,sp,-16
    80003f38:	00813423          	sd	s0,8(sp)
    80003f3c:	01010413          	addi	s0,sp,16
    80003f40:	00813403          	ld	s0,8(sp)
    80003f44:	01010113          	addi	sp,sp,16
    80003f48:	ffffe317          	auipc	t1,0xffffe
    80003f4c:	44030067          	jr	1088(t1) # 80002388 <main>

0000000080003f50 <either_copyout>:
    80003f50:	ff010113          	addi	sp,sp,-16
    80003f54:	00813023          	sd	s0,0(sp)
    80003f58:	00113423          	sd	ra,8(sp)
    80003f5c:	01010413          	addi	s0,sp,16
    80003f60:	02051663          	bnez	a0,80003f8c <either_copyout+0x3c>
    80003f64:	00058513          	mv	a0,a1
    80003f68:	00060593          	mv	a1,a2
    80003f6c:	0006861b          	sext.w	a2,a3
    80003f70:	00002097          	auipc	ra,0x2
    80003f74:	c54080e7          	jalr	-940(ra) # 80005bc4 <__memmove>
    80003f78:	00813083          	ld	ra,8(sp)
    80003f7c:	00013403          	ld	s0,0(sp)
    80003f80:	00000513          	li	a0,0
    80003f84:	01010113          	addi	sp,sp,16
    80003f88:	00008067          	ret
    80003f8c:	00002517          	auipc	a0,0x2
    80003f90:	21450513          	addi	a0,a0,532 # 800061a0 <CONSOLE_STATUS+0x190>
    80003f94:	00001097          	auipc	ra,0x1
    80003f98:	928080e7          	jalr	-1752(ra) # 800048bc <panic>

0000000080003f9c <either_copyin>:
    80003f9c:	ff010113          	addi	sp,sp,-16
    80003fa0:	00813023          	sd	s0,0(sp)
    80003fa4:	00113423          	sd	ra,8(sp)
    80003fa8:	01010413          	addi	s0,sp,16
    80003fac:	02059463          	bnez	a1,80003fd4 <either_copyin+0x38>
    80003fb0:	00060593          	mv	a1,a2
    80003fb4:	0006861b          	sext.w	a2,a3
    80003fb8:	00002097          	auipc	ra,0x2
    80003fbc:	c0c080e7          	jalr	-1012(ra) # 80005bc4 <__memmove>
    80003fc0:	00813083          	ld	ra,8(sp)
    80003fc4:	00013403          	ld	s0,0(sp)
    80003fc8:	00000513          	li	a0,0
    80003fcc:	01010113          	addi	sp,sp,16
    80003fd0:	00008067          	ret
    80003fd4:	00002517          	auipc	a0,0x2
    80003fd8:	1f450513          	addi	a0,a0,500 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80003fdc:	00001097          	auipc	ra,0x1
    80003fe0:	8e0080e7          	jalr	-1824(ra) # 800048bc <panic>

0000000080003fe4 <trapinit>:
    80003fe4:	ff010113          	addi	sp,sp,-16
    80003fe8:	00813423          	sd	s0,8(sp)
    80003fec:	01010413          	addi	s0,sp,16
    80003ff0:	00813403          	ld	s0,8(sp)
    80003ff4:	00002597          	auipc	a1,0x2
    80003ff8:	1fc58593          	addi	a1,a1,508 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003ffc:	00005517          	auipc	a0,0x5
    80004000:	90450513          	addi	a0,a0,-1788 # 80008900 <tickslock>
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00001317          	auipc	t1,0x1
    8000400c:	5c030067          	jr	1472(t1) # 800055c8 <initlock>

0000000080004010 <trapinithart>:
    80004010:	ff010113          	addi	sp,sp,-16
    80004014:	00813423          	sd	s0,8(sp)
    80004018:	01010413          	addi	s0,sp,16
    8000401c:	00000797          	auipc	a5,0x0
    80004020:	2f478793          	addi	a5,a5,756 # 80004310 <kernelvec>
    80004024:	10579073          	csrw	stvec,a5
    80004028:	00813403          	ld	s0,8(sp)
    8000402c:	01010113          	addi	sp,sp,16
    80004030:	00008067          	ret

0000000080004034 <usertrap>:
    80004034:	ff010113          	addi	sp,sp,-16
    80004038:	00813423          	sd	s0,8(sp)
    8000403c:	01010413          	addi	s0,sp,16
    80004040:	00813403          	ld	s0,8(sp)
    80004044:	01010113          	addi	sp,sp,16
    80004048:	00008067          	ret

000000008000404c <usertrapret>:
    8000404c:	ff010113          	addi	sp,sp,-16
    80004050:	00813423          	sd	s0,8(sp)
    80004054:	01010413          	addi	s0,sp,16
    80004058:	00813403          	ld	s0,8(sp)
    8000405c:	01010113          	addi	sp,sp,16
    80004060:	00008067          	ret

0000000080004064 <kerneltrap>:
    80004064:	fe010113          	addi	sp,sp,-32
    80004068:	00813823          	sd	s0,16(sp)
    8000406c:	00113c23          	sd	ra,24(sp)
    80004070:	00913423          	sd	s1,8(sp)
    80004074:	02010413          	addi	s0,sp,32
    80004078:	142025f3          	csrr	a1,scause
    8000407c:	100027f3          	csrr	a5,sstatus
    80004080:	0027f793          	andi	a5,a5,2
    80004084:	10079c63          	bnez	a5,8000419c <kerneltrap+0x138>
    80004088:	142027f3          	csrr	a5,scause
    8000408c:	0207ce63          	bltz	a5,800040c8 <kerneltrap+0x64>
    80004090:	00002517          	auipc	a0,0x2
    80004094:	1a850513          	addi	a0,a0,424 # 80006238 <CONSOLE_STATUS+0x228>
    80004098:	00001097          	auipc	ra,0x1
    8000409c:	880080e7          	jalr	-1920(ra) # 80004918 <__printf>
    800040a0:	141025f3          	csrr	a1,sepc
    800040a4:	14302673          	csrr	a2,stval
    800040a8:	00002517          	auipc	a0,0x2
    800040ac:	1a050513          	addi	a0,a0,416 # 80006248 <CONSOLE_STATUS+0x238>
    800040b0:	00001097          	auipc	ra,0x1
    800040b4:	868080e7          	jalr	-1944(ra) # 80004918 <__printf>
    800040b8:	00002517          	auipc	a0,0x2
    800040bc:	1a850513          	addi	a0,a0,424 # 80006260 <CONSOLE_STATUS+0x250>
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	7fc080e7          	jalr	2044(ra) # 800048bc <panic>
    800040c8:	0ff7f713          	andi	a4,a5,255
    800040cc:	00900693          	li	a3,9
    800040d0:	04d70063          	beq	a4,a3,80004110 <kerneltrap+0xac>
    800040d4:	fff00713          	li	a4,-1
    800040d8:	03f71713          	slli	a4,a4,0x3f
    800040dc:	00170713          	addi	a4,a4,1
    800040e0:	fae798e3          	bne	a5,a4,80004090 <kerneltrap+0x2c>
    800040e4:	00000097          	auipc	ra,0x0
    800040e8:	e00080e7          	jalr	-512(ra) # 80003ee4 <cpuid>
    800040ec:	06050663          	beqz	a0,80004158 <kerneltrap+0xf4>
    800040f0:	144027f3          	csrr	a5,sip
    800040f4:	ffd7f793          	andi	a5,a5,-3
    800040f8:	14479073          	csrw	sip,a5
    800040fc:	01813083          	ld	ra,24(sp)
    80004100:	01013403          	ld	s0,16(sp)
    80004104:	00813483          	ld	s1,8(sp)
    80004108:	02010113          	addi	sp,sp,32
    8000410c:	00008067          	ret
    80004110:	00000097          	auipc	ra,0x0
    80004114:	3c4080e7          	jalr	964(ra) # 800044d4 <plic_claim>
    80004118:	00a00793          	li	a5,10
    8000411c:	00050493          	mv	s1,a0
    80004120:	06f50863          	beq	a0,a5,80004190 <kerneltrap+0x12c>
    80004124:	fc050ce3          	beqz	a0,800040fc <kerneltrap+0x98>
    80004128:	00050593          	mv	a1,a0
    8000412c:	00002517          	auipc	a0,0x2
    80004130:	0ec50513          	addi	a0,a0,236 # 80006218 <CONSOLE_STATUS+0x208>
    80004134:	00000097          	auipc	ra,0x0
    80004138:	7e4080e7          	jalr	2020(ra) # 80004918 <__printf>
    8000413c:	01013403          	ld	s0,16(sp)
    80004140:	01813083          	ld	ra,24(sp)
    80004144:	00048513          	mv	a0,s1
    80004148:	00813483          	ld	s1,8(sp)
    8000414c:	02010113          	addi	sp,sp,32
    80004150:	00000317          	auipc	t1,0x0
    80004154:	3bc30067          	jr	956(t1) # 8000450c <plic_complete>
    80004158:	00004517          	auipc	a0,0x4
    8000415c:	7a850513          	addi	a0,a0,1960 # 80008900 <tickslock>
    80004160:	00001097          	auipc	ra,0x1
    80004164:	48c080e7          	jalr	1164(ra) # 800055ec <acquire>
    80004168:	00003717          	auipc	a4,0x3
    8000416c:	66c70713          	addi	a4,a4,1644 # 800077d4 <ticks>
    80004170:	00072783          	lw	a5,0(a4)
    80004174:	00004517          	auipc	a0,0x4
    80004178:	78c50513          	addi	a0,a0,1932 # 80008900 <tickslock>
    8000417c:	0017879b          	addiw	a5,a5,1
    80004180:	00f72023          	sw	a5,0(a4)
    80004184:	00001097          	auipc	ra,0x1
    80004188:	534080e7          	jalr	1332(ra) # 800056b8 <release>
    8000418c:	f65ff06f          	j	800040f0 <kerneltrap+0x8c>
    80004190:	00001097          	auipc	ra,0x1
    80004194:	090080e7          	jalr	144(ra) # 80005220 <uartintr>
    80004198:	fa5ff06f          	j	8000413c <kerneltrap+0xd8>
    8000419c:	00002517          	auipc	a0,0x2
    800041a0:	05c50513          	addi	a0,a0,92 # 800061f8 <CONSOLE_STATUS+0x1e8>
    800041a4:	00000097          	auipc	ra,0x0
    800041a8:	718080e7          	jalr	1816(ra) # 800048bc <panic>

00000000800041ac <clockintr>:
    800041ac:	fe010113          	addi	sp,sp,-32
    800041b0:	00813823          	sd	s0,16(sp)
    800041b4:	00913423          	sd	s1,8(sp)
    800041b8:	00113c23          	sd	ra,24(sp)
    800041bc:	02010413          	addi	s0,sp,32
    800041c0:	00004497          	auipc	s1,0x4
    800041c4:	74048493          	addi	s1,s1,1856 # 80008900 <tickslock>
    800041c8:	00048513          	mv	a0,s1
    800041cc:	00001097          	auipc	ra,0x1
    800041d0:	420080e7          	jalr	1056(ra) # 800055ec <acquire>
    800041d4:	00003717          	auipc	a4,0x3
    800041d8:	60070713          	addi	a4,a4,1536 # 800077d4 <ticks>
    800041dc:	00072783          	lw	a5,0(a4)
    800041e0:	01013403          	ld	s0,16(sp)
    800041e4:	01813083          	ld	ra,24(sp)
    800041e8:	00048513          	mv	a0,s1
    800041ec:	0017879b          	addiw	a5,a5,1
    800041f0:	00813483          	ld	s1,8(sp)
    800041f4:	00f72023          	sw	a5,0(a4)
    800041f8:	02010113          	addi	sp,sp,32
    800041fc:	00001317          	auipc	t1,0x1
    80004200:	4bc30067          	jr	1212(t1) # 800056b8 <release>

0000000080004204 <devintr>:
    80004204:	142027f3          	csrr	a5,scause
    80004208:	00000513          	li	a0,0
    8000420c:	0007c463          	bltz	a5,80004214 <devintr+0x10>
    80004210:	00008067          	ret
    80004214:	fe010113          	addi	sp,sp,-32
    80004218:	00813823          	sd	s0,16(sp)
    8000421c:	00113c23          	sd	ra,24(sp)
    80004220:	00913423          	sd	s1,8(sp)
    80004224:	02010413          	addi	s0,sp,32
    80004228:	0ff7f713          	andi	a4,a5,255
    8000422c:	00900693          	li	a3,9
    80004230:	04d70c63          	beq	a4,a3,80004288 <devintr+0x84>
    80004234:	fff00713          	li	a4,-1
    80004238:	03f71713          	slli	a4,a4,0x3f
    8000423c:	00170713          	addi	a4,a4,1
    80004240:	00e78c63          	beq	a5,a4,80004258 <devintr+0x54>
    80004244:	01813083          	ld	ra,24(sp)
    80004248:	01013403          	ld	s0,16(sp)
    8000424c:	00813483          	ld	s1,8(sp)
    80004250:	02010113          	addi	sp,sp,32
    80004254:	00008067          	ret
    80004258:	00000097          	auipc	ra,0x0
    8000425c:	c8c080e7          	jalr	-884(ra) # 80003ee4 <cpuid>
    80004260:	06050663          	beqz	a0,800042cc <devintr+0xc8>
    80004264:	144027f3          	csrr	a5,sip
    80004268:	ffd7f793          	andi	a5,a5,-3
    8000426c:	14479073          	csrw	sip,a5
    80004270:	01813083          	ld	ra,24(sp)
    80004274:	01013403          	ld	s0,16(sp)
    80004278:	00813483          	ld	s1,8(sp)
    8000427c:	00200513          	li	a0,2
    80004280:	02010113          	addi	sp,sp,32
    80004284:	00008067          	ret
    80004288:	00000097          	auipc	ra,0x0
    8000428c:	24c080e7          	jalr	588(ra) # 800044d4 <plic_claim>
    80004290:	00a00793          	li	a5,10
    80004294:	00050493          	mv	s1,a0
    80004298:	06f50663          	beq	a0,a5,80004304 <devintr+0x100>
    8000429c:	00100513          	li	a0,1
    800042a0:	fa0482e3          	beqz	s1,80004244 <devintr+0x40>
    800042a4:	00048593          	mv	a1,s1
    800042a8:	00002517          	auipc	a0,0x2
    800042ac:	f7050513          	addi	a0,a0,-144 # 80006218 <CONSOLE_STATUS+0x208>
    800042b0:	00000097          	auipc	ra,0x0
    800042b4:	668080e7          	jalr	1640(ra) # 80004918 <__printf>
    800042b8:	00048513          	mv	a0,s1
    800042bc:	00000097          	auipc	ra,0x0
    800042c0:	250080e7          	jalr	592(ra) # 8000450c <plic_complete>
    800042c4:	00100513          	li	a0,1
    800042c8:	f7dff06f          	j	80004244 <devintr+0x40>
    800042cc:	00004517          	auipc	a0,0x4
    800042d0:	63450513          	addi	a0,a0,1588 # 80008900 <tickslock>
    800042d4:	00001097          	auipc	ra,0x1
    800042d8:	318080e7          	jalr	792(ra) # 800055ec <acquire>
    800042dc:	00003717          	auipc	a4,0x3
    800042e0:	4f870713          	addi	a4,a4,1272 # 800077d4 <ticks>
    800042e4:	00072783          	lw	a5,0(a4)
    800042e8:	00004517          	auipc	a0,0x4
    800042ec:	61850513          	addi	a0,a0,1560 # 80008900 <tickslock>
    800042f0:	0017879b          	addiw	a5,a5,1
    800042f4:	00f72023          	sw	a5,0(a4)
    800042f8:	00001097          	auipc	ra,0x1
    800042fc:	3c0080e7          	jalr	960(ra) # 800056b8 <release>
    80004300:	f65ff06f          	j	80004264 <devintr+0x60>
    80004304:	00001097          	auipc	ra,0x1
    80004308:	f1c080e7          	jalr	-228(ra) # 80005220 <uartintr>
    8000430c:	fadff06f          	j	800042b8 <devintr+0xb4>

0000000080004310 <kernelvec>:
    80004310:	f0010113          	addi	sp,sp,-256
    80004314:	00113023          	sd	ra,0(sp)
    80004318:	00213423          	sd	sp,8(sp)
    8000431c:	00313823          	sd	gp,16(sp)
    80004320:	00413c23          	sd	tp,24(sp)
    80004324:	02513023          	sd	t0,32(sp)
    80004328:	02613423          	sd	t1,40(sp)
    8000432c:	02713823          	sd	t2,48(sp)
    80004330:	02813c23          	sd	s0,56(sp)
    80004334:	04913023          	sd	s1,64(sp)
    80004338:	04a13423          	sd	a0,72(sp)
    8000433c:	04b13823          	sd	a1,80(sp)
    80004340:	04c13c23          	sd	a2,88(sp)
    80004344:	06d13023          	sd	a3,96(sp)
    80004348:	06e13423          	sd	a4,104(sp)
    8000434c:	06f13823          	sd	a5,112(sp)
    80004350:	07013c23          	sd	a6,120(sp)
    80004354:	09113023          	sd	a7,128(sp)
    80004358:	09213423          	sd	s2,136(sp)
    8000435c:	09313823          	sd	s3,144(sp)
    80004360:	09413c23          	sd	s4,152(sp)
    80004364:	0b513023          	sd	s5,160(sp)
    80004368:	0b613423          	sd	s6,168(sp)
    8000436c:	0b713823          	sd	s7,176(sp)
    80004370:	0b813c23          	sd	s8,184(sp)
    80004374:	0d913023          	sd	s9,192(sp)
    80004378:	0da13423          	sd	s10,200(sp)
    8000437c:	0db13823          	sd	s11,208(sp)
    80004380:	0dc13c23          	sd	t3,216(sp)
    80004384:	0fd13023          	sd	t4,224(sp)
    80004388:	0fe13423          	sd	t5,232(sp)
    8000438c:	0ff13823          	sd	t6,240(sp)
    80004390:	cd5ff0ef          	jal	ra,80004064 <kerneltrap>
    80004394:	00013083          	ld	ra,0(sp)
    80004398:	00813103          	ld	sp,8(sp)
    8000439c:	01013183          	ld	gp,16(sp)
    800043a0:	02013283          	ld	t0,32(sp)
    800043a4:	02813303          	ld	t1,40(sp)
    800043a8:	03013383          	ld	t2,48(sp)
    800043ac:	03813403          	ld	s0,56(sp)
    800043b0:	04013483          	ld	s1,64(sp)
    800043b4:	04813503          	ld	a0,72(sp)
    800043b8:	05013583          	ld	a1,80(sp)
    800043bc:	05813603          	ld	a2,88(sp)
    800043c0:	06013683          	ld	a3,96(sp)
    800043c4:	06813703          	ld	a4,104(sp)
    800043c8:	07013783          	ld	a5,112(sp)
    800043cc:	07813803          	ld	a6,120(sp)
    800043d0:	08013883          	ld	a7,128(sp)
    800043d4:	08813903          	ld	s2,136(sp)
    800043d8:	09013983          	ld	s3,144(sp)
    800043dc:	09813a03          	ld	s4,152(sp)
    800043e0:	0a013a83          	ld	s5,160(sp)
    800043e4:	0a813b03          	ld	s6,168(sp)
    800043e8:	0b013b83          	ld	s7,176(sp)
    800043ec:	0b813c03          	ld	s8,184(sp)
    800043f0:	0c013c83          	ld	s9,192(sp)
    800043f4:	0c813d03          	ld	s10,200(sp)
    800043f8:	0d013d83          	ld	s11,208(sp)
    800043fc:	0d813e03          	ld	t3,216(sp)
    80004400:	0e013e83          	ld	t4,224(sp)
    80004404:	0e813f03          	ld	t5,232(sp)
    80004408:	0f013f83          	ld	t6,240(sp)
    8000440c:	10010113          	addi	sp,sp,256
    80004410:	10200073          	sret
    80004414:	00000013          	nop
    80004418:	00000013          	nop
    8000441c:	00000013          	nop

0000000080004420 <timervec>:
    80004420:	34051573          	csrrw	a0,mscratch,a0
    80004424:	00b53023          	sd	a1,0(a0)
    80004428:	00c53423          	sd	a2,8(a0)
    8000442c:	00d53823          	sd	a3,16(a0)
    80004430:	01853583          	ld	a1,24(a0)
    80004434:	02053603          	ld	a2,32(a0)
    80004438:	0005b683          	ld	a3,0(a1)
    8000443c:	00c686b3          	add	a3,a3,a2
    80004440:	00d5b023          	sd	a3,0(a1)
    80004444:	00200593          	li	a1,2
    80004448:	14459073          	csrw	sip,a1
    8000444c:	01053683          	ld	a3,16(a0)
    80004450:	00853603          	ld	a2,8(a0)
    80004454:	00053583          	ld	a1,0(a0)
    80004458:	34051573          	csrrw	a0,mscratch,a0
    8000445c:	30200073          	mret

0000000080004460 <plicinit>:
    80004460:	ff010113          	addi	sp,sp,-16
    80004464:	00813423          	sd	s0,8(sp)
    80004468:	01010413          	addi	s0,sp,16
    8000446c:	00813403          	ld	s0,8(sp)
    80004470:	0c0007b7          	lui	a5,0xc000
    80004474:	00100713          	li	a4,1
    80004478:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000447c:	00e7a223          	sw	a4,4(a5)
    80004480:	01010113          	addi	sp,sp,16
    80004484:	00008067          	ret

0000000080004488 <plicinithart>:
    80004488:	ff010113          	addi	sp,sp,-16
    8000448c:	00813023          	sd	s0,0(sp)
    80004490:	00113423          	sd	ra,8(sp)
    80004494:	01010413          	addi	s0,sp,16
    80004498:	00000097          	auipc	ra,0x0
    8000449c:	a4c080e7          	jalr	-1460(ra) # 80003ee4 <cpuid>
    800044a0:	0085171b          	slliw	a4,a0,0x8
    800044a4:	0c0027b7          	lui	a5,0xc002
    800044a8:	00e787b3          	add	a5,a5,a4
    800044ac:	40200713          	li	a4,1026
    800044b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800044b4:	00813083          	ld	ra,8(sp)
    800044b8:	00013403          	ld	s0,0(sp)
    800044bc:	00d5151b          	slliw	a0,a0,0xd
    800044c0:	0c2017b7          	lui	a5,0xc201
    800044c4:	00a78533          	add	a0,a5,a0
    800044c8:	00052023          	sw	zero,0(a0)
    800044cc:	01010113          	addi	sp,sp,16
    800044d0:	00008067          	ret

00000000800044d4 <plic_claim>:
    800044d4:	ff010113          	addi	sp,sp,-16
    800044d8:	00813023          	sd	s0,0(sp)
    800044dc:	00113423          	sd	ra,8(sp)
    800044e0:	01010413          	addi	s0,sp,16
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	a00080e7          	jalr	-1536(ra) # 80003ee4 <cpuid>
    800044ec:	00813083          	ld	ra,8(sp)
    800044f0:	00013403          	ld	s0,0(sp)
    800044f4:	00d5151b          	slliw	a0,a0,0xd
    800044f8:	0c2017b7          	lui	a5,0xc201
    800044fc:	00a78533          	add	a0,a5,a0
    80004500:	00452503          	lw	a0,4(a0)
    80004504:	01010113          	addi	sp,sp,16
    80004508:	00008067          	ret

000000008000450c <plic_complete>:
    8000450c:	fe010113          	addi	sp,sp,-32
    80004510:	00813823          	sd	s0,16(sp)
    80004514:	00913423          	sd	s1,8(sp)
    80004518:	00113c23          	sd	ra,24(sp)
    8000451c:	02010413          	addi	s0,sp,32
    80004520:	00050493          	mv	s1,a0
    80004524:	00000097          	auipc	ra,0x0
    80004528:	9c0080e7          	jalr	-1600(ra) # 80003ee4 <cpuid>
    8000452c:	01813083          	ld	ra,24(sp)
    80004530:	01013403          	ld	s0,16(sp)
    80004534:	00d5179b          	slliw	a5,a0,0xd
    80004538:	0c201737          	lui	a4,0xc201
    8000453c:	00f707b3          	add	a5,a4,a5
    80004540:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004544:	00813483          	ld	s1,8(sp)
    80004548:	02010113          	addi	sp,sp,32
    8000454c:	00008067          	ret

0000000080004550 <consolewrite>:
    80004550:	fb010113          	addi	sp,sp,-80
    80004554:	04813023          	sd	s0,64(sp)
    80004558:	04113423          	sd	ra,72(sp)
    8000455c:	02913c23          	sd	s1,56(sp)
    80004560:	03213823          	sd	s2,48(sp)
    80004564:	03313423          	sd	s3,40(sp)
    80004568:	03413023          	sd	s4,32(sp)
    8000456c:	01513c23          	sd	s5,24(sp)
    80004570:	05010413          	addi	s0,sp,80
    80004574:	06c05c63          	blez	a2,800045ec <consolewrite+0x9c>
    80004578:	00060993          	mv	s3,a2
    8000457c:	00050a13          	mv	s4,a0
    80004580:	00058493          	mv	s1,a1
    80004584:	00000913          	li	s2,0
    80004588:	fff00a93          	li	s5,-1
    8000458c:	01c0006f          	j	800045a8 <consolewrite+0x58>
    80004590:	fbf44503          	lbu	a0,-65(s0)
    80004594:	0019091b          	addiw	s2,s2,1
    80004598:	00148493          	addi	s1,s1,1
    8000459c:	00001097          	auipc	ra,0x1
    800045a0:	a9c080e7          	jalr	-1380(ra) # 80005038 <uartputc>
    800045a4:	03298063          	beq	s3,s2,800045c4 <consolewrite+0x74>
    800045a8:	00048613          	mv	a2,s1
    800045ac:	00100693          	li	a3,1
    800045b0:	000a0593          	mv	a1,s4
    800045b4:	fbf40513          	addi	a0,s0,-65
    800045b8:	00000097          	auipc	ra,0x0
    800045bc:	9e4080e7          	jalr	-1564(ra) # 80003f9c <either_copyin>
    800045c0:	fd5518e3          	bne	a0,s5,80004590 <consolewrite+0x40>
    800045c4:	04813083          	ld	ra,72(sp)
    800045c8:	04013403          	ld	s0,64(sp)
    800045cc:	03813483          	ld	s1,56(sp)
    800045d0:	02813983          	ld	s3,40(sp)
    800045d4:	02013a03          	ld	s4,32(sp)
    800045d8:	01813a83          	ld	s5,24(sp)
    800045dc:	00090513          	mv	a0,s2
    800045e0:	03013903          	ld	s2,48(sp)
    800045e4:	05010113          	addi	sp,sp,80
    800045e8:	00008067          	ret
    800045ec:	00000913          	li	s2,0
    800045f0:	fd5ff06f          	j	800045c4 <consolewrite+0x74>

00000000800045f4 <consoleread>:
    800045f4:	f9010113          	addi	sp,sp,-112
    800045f8:	06813023          	sd	s0,96(sp)
    800045fc:	04913c23          	sd	s1,88(sp)
    80004600:	05213823          	sd	s2,80(sp)
    80004604:	05313423          	sd	s3,72(sp)
    80004608:	05413023          	sd	s4,64(sp)
    8000460c:	03513c23          	sd	s5,56(sp)
    80004610:	03613823          	sd	s6,48(sp)
    80004614:	03713423          	sd	s7,40(sp)
    80004618:	03813023          	sd	s8,32(sp)
    8000461c:	06113423          	sd	ra,104(sp)
    80004620:	01913c23          	sd	s9,24(sp)
    80004624:	07010413          	addi	s0,sp,112
    80004628:	00060b93          	mv	s7,a2
    8000462c:	00050913          	mv	s2,a0
    80004630:	00058c13          	mv	s8,a1
    80004634:	00060b1b          	sext.w	s6,a2
    80004638:	00004497          	auipc	s1,0x4
    8000463c:	2f048493          	addi	s1,s1,752 # 80008928 <cons>
    80004640:	00400993          	li	s3,4
    80004644:	fff00a13          	li	s4,-1
    80004648:	00a00a93          	li	s5,10
    8000464c:	05705e63          	blez	s7,800046a8 <consoleread+0xb4>
    80004650:	09c4a703          	lw	a4,156(s1)
    80004654:	0984a783          	lw	a5,152(s1)
    80004658:	0007071b          	sext.w	a4,a4
    8000465c:	08e78463          	beq	a5,a4,800046e4 <consoleread+0xf0>
    80004660:	07f7f713          	andi	a4,a5,127
    80004664:	00e48733          	add	a4,s1,a4
    80004668:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000466c:	0017869b          	addiw	a3,a5,1
    80004670:	08d4ac23          	sw	a3,152(s1)
    80004674:	00070c9b          	sext.w	s9,a4
    80004678:	0b370663          	beq	a4,s3,80004724 <consoleread+0x130>
    8000467c:	00100693          	li	a3,1
    80004680:	f9f40613          	addi	a2,s0,-97
    80004684:	000c0593          	mv	a1,s8
    80004688:	00090513          	mv	a0,s2
    8000468c:	f8e40fa3          	sb	a4,-97(s0)
    80004690:	00000097          	auipc	ra,0x0
    80004694:	8c0080e7          	jalr	-1856(ra) # 80003f50 <either_copyout>
    80004698:	01450863          	beq	a0,s4,800046a8 <consoleread+0xb4>
    8000469c:	001c0c13          	addi	s8,s8,1
    800046a0:	fffb8b9b          	addiw	s7,s7,-1
    800046a4:	fb5c94e3          	bne	s9,s5,8000464c <consoleread+0x58>
    800046a8:	000b851b          	sext.w	a0,s7
    800046ac:	06813083          	ld	ra,104(sp)
    800046b0:	06013403          	ld	s0,96(sp)
    800046b4:	05813483          	ld	s1,88(sp)
    800046b8:	05013903          	ld	s2,80(sp)
    800046bc:	04813983          	ld	s3,72(sp)
    800046c0:	04013a03          	ld	s4,64(sp)
    800046c4:	03813a83          	ld	s5,56(sp)
    800046c8:	02813b83          	ld	s7,40(sp)
    800046cc:	02013c03          	ld	s8,32(sp)
    800046d0:	01813c83          	ld	s9,24(sp)
    800046d4:	40ab053b          	subw	a0,s6,a0
    800046d8:	03013b03          	ld	s6,48(sp)
    800046dc:	07010113          	addi	sp,sp,112
    800046e0:	00008067          	ret
    800046e4:	00001097          	auipc	ra,0x1
    800046e8:	1d8080e7          	jalr	472(ra) # 800058bc <push_on>
    800046ec:	0984a703          	lw	a4,152(s1)
    800046f0:	09c4a783          	lw	a5,156(s1)
    800046f4:	0007879b          	sext.w	a5,a5
    800046f8:	fef70ce3          	beq	a4,a5,800046f0 <consoleread+0xfc>
    800046fc:	00001097          	auipc	ra,0x1
    80004700:	234080e7          	jalr	564(ra) # 80005930 <pop_on>
    80004704:	0984a783          	lw	a5,152(s1)
    80004708:	07f7f713          	andi	a4,a5,127
    8000470c:	00e48733          	add	a4,s1,a4
    80004710:	01874703          	lbu	a4,24(a4)
    80004714:	0017869b          	addiw	a3,a5,1
    80004718:	08d4ac23          	sw	a3,152(s1)
    8000471c:	00070c9b          	sext.w	s9,a4
    80004720:	f5371ee3          	bne	a4,s3,8000467c <consoleread+0x88>
    80004724:	000b851b          	sext.w	a0,s7
    80004728:	f96bf2e3          	bgeu	s7,s6,800046ac <consoleread+0xb8>
    8000472c:	08f4ac23          	sw	a5,152(s1)
    80004730:	f7dff06f          	j	800046ac <consoleread+0xb8>

0000000080004734 <consputc>:
    80004734:	10000793          	li	a5,256
    80004738:	00f50663          	beq	a0,a5,80004744 <consputc+0x10>
    8000473c:	00001317          	auipc	t1,0x1
    80004740:	9f430067          	jr	-1548(t1) # 80005130 <uartputc_sync>
    80004744:	ff010113          	addi	sp,sp,-16
    80004748:	00113423          	sd	ra,8(sp)
    8000474c:	00813023          	sd	s0,0(sp)
    80004750:	01010413          	addi	s0,sp,16
    80004754:	00800513          	li	a0,8
    80004758:	00001097          	auipc	ra,0x1
    8000475c:	9d8080e7          	jalr	-1576(ra) # 80005130 <uartputc_sync>
    80004760:	02000513          	li	a0,32
    80004764:	00001097          	auipc	ra,0x1
    80004768:	9cc080e7          	jalr	-1588(ra) # 80005130 <uartputc_sync>
    8000476c:	00013403          	ld	s0,0(sp)
    80004770:	00813083          	ld	ra,8(sp)
    80004774:	00800513          	li	a0,8
    80004778:	01010113          	addi	sp,sp,16
    8000477c:	00001317          	auipc	t1,0x1
    80004780:	9b430067          	jr	-1612(t1) # 80005130 <uartputc_sync>

0000000080004784 <consoleintr>:
    80004784:	fe010113          	addi	sp,sp,-32
    80004788:	00813823          	sd	s0,16(sp)
    8000478c:	00913423          	sd	s1,8(sp)
    80004790:	01213023          	sd	s2,0(sp)
    80004794:	00113c23          	sd	ra,24(sp)
    80004798:	02010413          	addi	s0,sp,32
    8000479c:	00004917          	auipc	s2,0x4
    800047a0:	18c90913          	addi	s2,s2,396 # 80008928 <cons>
    800047a4:	00050493          	mv	s1,a0
    800047a8:	00090513          	mv	a0,s2
    800047ac:	00001097          	auipc	ra,0x1
    800047b0:	e40080e7          	jalr	-448(ra) # 800055ec <acquire>
    800047b4:	02048c63          	beqz	s1,800047ec <consoleintr+0x68>
    800047b8:	0a092783          	lw	a5,160(s2)
    800047bc:	09892703          	lw	a4,152(s2)
    800047c0:	07f00693          	li	a3,127
    800047c4:	40e7873b          	subw	a4,a5,a4
    800047c8:	02e6e263          	bltu	a3,a4,800047ec <consoleintr+0x68>
    800047cc:	00d00713          	li	a4,13
    800047d0:	04e48063          	beq	s1,a4,80004810 <consoleintr+0x8c>
    800047d4:	07f7f713          	andi	a4,a5,127
    800047d8:	00e90733          	add	a4,s2,a4
    800047dc:	0017879b          	addiw	a5,a5,1
    800047e0:	0af92023          	sw	a5,160(s2)
    800047e4:	00970c23          	sb	s1,24(a4)
    800047e8:	08f92e23          	sw	a5,156(s2)
    800047ec:	01013403          	ld	s0,16(sp)
    800047f0:	01813083          	ld	ra,24(sp)
    800047f4:	00813483          	ld	s1,8(sp)
    800047f8:	00013903          	ld	s2,0(sp)
    800047fc:	00004517          	auipc	a0,0x4
    80004800:	12c50513          	addi	a0,a0,300 # 80008928 <cons>
    80004804:	02010113          	addi	sp,sp,32
    80004808:	00001317          	auipc	t1,0x1
    8000480c:	eb030067          	jr	-336(t1) # 800056b8 <release>
    80004810:	00a00493          	li	s1,10
    80004814:	fc1ff06f          	j	800047d4 <consoleintr+0x50>

0000000080004818 <consoleinit>:
    80004818:	fe010113          	addi	sp,sp,-32
    8000481c:	00113c23          	sd	ra,24(sp)
    80004820:	00813823          	sd	s0,16(sp)
    80004824:	00913423          	sd	s1,8(sp)
    80004828:	02010413          	addi	s0,sp,32
    8000482c:	00004497          	auipc	s1,0x4
    80004830:	0fc48493          	addi	s1,s1,252 # 80008928 <cons>
    80004834:	00048513          	mv	a0,s1
    80004838:	00002597          	auipc	a1,0x2
    8000483c:	a3858593          	addi	a1,a1,-1480 # 80006270 <CONSOLE_STATUS+0x260>
    80004840:	00001097          	auipc	ra,0x1
    80004844:	d88080e7          	jalr	-632(ra) # 800055c8 <initlock>
    80004848:	00000097          	auipc	ra,0x0
    8000484c:	7ac080e7          	jalr	1964(ra) # 80004ff4 <uartinit>
    80004850:	01813083          	ld	ra,24(sp)
    80004854:	01013403          	ld	s0,16(sp)
    80004858:	00000797          	auipc	a5,0x0
    8000485c:	d9c78793          	addi	a5,a5,-612 # 800045f4 <consoleread>
    80004860:	0af4bc23          	sd	a5,184(s1)
    80004864:	00000797          	auipc	a5,0x0
    80004868:	cec78793          	addi	a5,a5,-788 # 80004550 <consolewrite>
    8000486c:	0cf4b023          	sd	a5,192(s1)
    80004870:	00813483          	ld	s1,8(sp)
    80004874:	02010113          	addi	sp,sp,32
    80004878:	00008067          	ret

000000008000487c <console_read>:
    8000487c:	ff010113          	addi	sp,sp,-16
    80004880:	00813423          	sd	s0,8(sp)
    80004884:	01010413          	addi	s0,sp,16
    80004888:	00813403          	ld	s0,8(sp)
    8000488c:	00004317          	auipc	t1,0x4
    80004890:	15433303          	ld	t1,340(t1) # 800089e0 <devsw+0x10>
    80004894:	01010113          	addi	sp,sp,16
    80004898:	00030067          	jr	t1

000000008000489c <console_write>:
    8000489c:	ff010113          	addi	sp,sp,-16
    800048a0:	00813423          	sd	s0,8(sp)
    800048a4:	01010413          	addi	s0,sp,16
    800048a8:	00813403          	ld	s0,8(sp)
    800048ac:	00004317          	auipc	t1,0x4
    800048b0:	13c33303          	ld	t1,316(t1) # 800089e8 <devsw+0x18>
    800048b4:	01010113          	addi	sp,sp,16
    800048b8:	00030067          	jr	t1

00000000800048bc <panic>:
    800048bc:	fe010113          	addi	sp,sp,-32
    800048c0:	00113c23          	sd	ra,24(sp)
    800048c4:	00813823          	sd	s0,16(sp)
    800048c8:	00913423          	sd	s1,8(sp)
    800048cc:	02010413          	addi	s0,sp,32
    800048d0:	00050493          	mv	s1,a0
    800048d4:	00002517          	auipc	a0,0x2
    800048d8:	9a450513          	addi	a0,a0,-1628 # 80006278 <CONSOLE_STATUS+0x268>
    800048dc:	00004797          	auipc	a5,0x4
    800048e0:	1a07a623          	sw	zero,428(a5) # 80008a88 <pr+0x18>
    800048e4:	00000097          	auipc	ra,0x0
    800048e8:	034080e7          	jalr	52(ra) # 80004918 <__printf>
    800048ec:	00048513          	mv	a0,s1
    800048f0:	00000097          	auipc	ra,0x0
    800048f4:	028080e7          	jalr	40(ra) # 80004918 <__printf>
    800048f8:	00002517          	auipc	a0,0x2
    800048fc:	96050513          	addi	a0,a0,-1696 # 80006258 <CONSOLE_STATUS+0x248>
    80004900:	00000097          	auipc	ra,0x0
    80004904:	018080e7          	jalr	24(ra) # 80004918 <__printf>
    80004908:	00100793          	li	a5,1
    8000490c:	00003717          	auipc	a4,0x3
    80004910:	ecf72623          	sw	a5,-308(a4) # 800077d8 <panicked>
    80004914:	0000006f          	j	80004914 <panic+0x58>

0000000080004918 <__printf>:
    80004918:	f3010113          	addi	sp,sp,-208
    8000491c:	08813023          	sd	s0,128(sp)
    80004920:	07313423          	sd	s3,104(sp)
    80004924:	09010413          	addi	s0,sp,144
    80004928:	05813023          	sd	s8,64(sp)
    8000492c:	08113423          	sd	ra,136(sp)
    80004930:	06913c23          	sd	s1,120(sp)
    80004934:	07213823          	sd	s2,112(sp)
    80004938:	07413023          	sd	s4,96(sp)
    8000493c:	05513c23          	sd	s5,88(sp)
    80004940:	05613823          	sd	s6,80(sp)
    80004944:	05713423          	sd	s7,72(sp)
    80004948:	03913c23          	sd	s9,56(sp)
    8000494c:	03a13823          	sd	s10,48(sp)
    80004950:	03b13423          	sd	s11,40(sp)
    80004954:	00004317          	auipc	t1,0x4
    80004958:	11c30313          	addi	t1,t1,284 # 80008a70 <pr>
    8000495c:	01832c03          	lw	s8,24(t1)
    80004960:	00b43423          	sd	a1,8(s0)
    80004964:	00c43823          	sd	a2,16(s0)
    80004968:	00d43c23          	sd	a3,24(s0)
    8000496c:	02e43023          	sd	a4,32(s0)
    80004970:	02f43423          	sd	a5,40(s0)
    80004974:	03043823          	sd	a6,48(s0)
    80004978:	03143c23          	sd	a7,56(s0)
    8000497c:	00050993          	mv	s3,a0
    80004980:	4a0c1663          	bnez	s8,80004e2c <__printf+0x514>
    80004984:	60098c63          	beqz	s3,80004f9c <__printf+0x684>
    80004988:	0009c503          	lbu	a0,0(s3)
    8000498c:	00840793          	addi	a5,s0,8
    80004990:	f6f43c23          	sd	a5,-136(s0)
    80004994:	00000493          	li	s1,0
    80004998:	22050063          	beqz	a0,80004bb8 <__printf+0x2a0>
    8000499c:	00002a37          	lui	s4,0x2
    800049a0:	00018ab7          	lui	s5,0x18
    800049a4:	000f4b37          	lui	s6,0xf4
    800049a8:	00989bb7          	lui	s7,0x989
    800049ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800049b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800049b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800049b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800049bc:	00148c9b          	addiw	s9,s1,1
    800049c0:	02500793          	li	a5,37
    800049c4:	01998933          	add	s2,s3,s9
    800049c8:	38f51263          	bne	a0,a5,80004d4c <__printf+0x434>
    800049cc:	00094783          	lbu	a5,0(s2)
    800049d0:	00078c9b          	sext.w	s9,a5
    800049d4:	1e078263          	beqz	a5,80004bb8 <__printf+0x2a0>
    800049d8:	0024849b          	addiw	s1,s1,2
    800049dc:	07000713          	li	a4,112
    800049e0:	00998933          	add	s2,s3,s1
    800049e4:	38e78a63          	beq	a5,a4,80004d78 <__printf+0x460>
    800049e8:	20f76863          	bltu	a4,a5,80004bf8 <__printf+0x2e0>
    800049ec:	42a78863          	beq	a5,a0,80004e1c <__printf+0x504>
    800049f0:	06400713          	li	a4,100
    800049f4:	40e79663          	bne	a5,a4,80004e00 <__printf+0x4e8>
    800049f8:	f7843783          	ld	a5,-136(s0)
    800049fc:	0007a603          	lw	a2,0(a5)
    80004a00:	00878793          	addi	a5,a5,8
    80004a04:	f6f43c23          	sd	a5,-136(s0)
    80004a08:	42064a63          	bltz	a2,80004e3c <__printf+0x524>
    80004a0c:	00a00713          	li	a4,10
    80004a10:	02e677bb          	remuw	a5,a2,a4
    80004a14:	00002d97          	auipc	s11,0x2
    80004a18:	88cd8d93          	addi	s11,s11,-1908 # 800062a0 <digits>
    80004a1c:	00900593          	li	a1,9
    80004a20:	0006051b          	sext.w	a0,a2
    80004a24:	00000c93          	li	s9,0
    80004a28:	02079793          	slli	a5,a5,0x20
    80004a2c:	0207d793          	srli	a5,a5,0x20
    80004a30:	00fd87b3          	add	a5,s11,a5
    80004a34:	0007c783          	lbu	a5,0(a5)
    80004a38:	02e656bb          	divuw	a3,a2,a4
    80004a3c:	f8f40023          	sb	a5,-128(s0)
    80004a40:	14c5d863          	bge	a1,a2,80004b90 <__printf+0x278>
    80004a44:	06300593          	li	a1,99
    80004a48:	00100c93          	li	s9,1
    80004a4c:	02e6f7bb          	remuw	a5,a3,a4
    80004a50:	02079793          	slli	a5,a5,0x20
    80004a54:	0207d793          	srli	a5,a5,0x20
    80004a58:	00fd87b3          	add	a5,s11,a5
    80004a5c:	0007c783          	lbu	a5,0(a5)
    80004a60:	02e6d73b          	divuw	a4,a3,a4
    80004a64:	f8f400a3          	sb	a5,-127(s0)
    80004a68:	12a5f463          	bgeu	a1,a0,80004b90 <__printf+0x278>
    80004a6c:	00a00693          	li	a3,10
    80004a70:	00900593          	li	a1,9
    80004a74:	02d777bb          	remuw	a5,a4,a3
    80004a78:	02079793          	slli	a5,a5,0x20
    80004a7c:	0207d793          	srli	a5,a5,0x20
    80004a80:	00fd87b3          	add	a5,s11,a5
    80004a84:	0007c503          	lbu	a0,0(a5)
    80004a88:	02d757bb          	divuw	a5,a4,a3
    80004a8c:	f8a40123          	sb	a0,-126(s0)
    80004a90:	48e5f263          	bgeu	a1,a4,80004f14 <__printf+0x5fc>
    80004a94:	06300513          	li	a0,99
    80004a98:	02d7f5bb          	remuw	a1,a5,a3
    80004a9c:	02059593          	slli	a1,a1,0x20
    80004aa0:	0205d593          	srli	a1,a1,0x20
    80004aa4:	00bd85b3          	add	a1,s11,a1
    80004aa8:	0005c583          	lbu	a1,0(a1)
    80004aac:	02d7d7bb          	divuw	a5,a5,a3
    80004ab0:	f8b401a3          	sb	a1,-125(s0)
    80004ab4:	48e57263          	bgeu	a0,a4,80004f38 <__printf+0x620>
    80004ab8:	3e700513          	li	a0,999
    80004abc:	02d7f5bb          	remuw	a1,a5,a3
    80004ac0:	02059593          	slli	a1,a1,0x20
    80004ac4:	0205d593          	srli	a1,a1,0x20
    80004ac8:	00bd85b3          	add	a1,s11,a1
    80004acc:	0005c583          	lbu	a1,0(a1)
    80004ad0:	02d7d7bb          	divuw	a5,a5,a3
    80004ad4:	f8b40223          	sb	a1,-124(s0)
    80004ad8:	46e57663          	bgeu	a0,a4,80004f44 <__printf+0x62c>
    80004adc:	02d7f5bb          	remuw	a1,a5,a3
    80004ae0:	02059593          	slli	a1,a1,0x20
    80004ae4:	0205d593          	srli	a1,a1,0x20
    80004ae8:	00bd85b3          	add	a1,s11,a1
    80004aec:	0005c583          	lbu	a1,0(a1)
    80004af0:	02d7d7bb          	divuw	a5,a5,a3
    80004af4:	f8b402a3          	sb	a1,-123(s0)
    80004af8:	46ea7863          	bgeu	s4,a4,80004f68 <__printf+0x650>
    80004afc:	02d7f5bb          	remuw	a1,a5,a3
    80004b00:	02059593          	slli	a1,a1,0x20
    80004b04:	0205d593          	srli	a1,a1,0x20
    80004b08:	00bd85b3          	add	a1,s11,a1
    80004b0c:	0005c583          	lbu	a1,0(a1)
    80004b10:	02d7d7bb          	divuw	a5,a5,a3
    80004b14:	f8b40323          	sb	a1,-122(s0)
    80004b18:	3eeaf863          	bgeu	s5,a4,80004f08 <__printf+0x5f0>
    80004b1c:	02d7f5bb          	remuw	a1,a5,a3
    80004b20:	02059593          	slli	a1,a1,0x20
    80004b24:	0205d593          	srli	a1,a1,0x20
    80004b28:	00bd85b3          	add	a1,s11,a1
    80004b2c:	0005c583          	lbu	a1,0(a1)
    80004b30:	02d7d7bb          	divuw	a5,a5,a3
    80004b34:	f8b403a3          	sb	a1,-121(s0)
    80004b38:	42eb7e63          	bgeu	s6,a4,80004f74 <__printf+0x65c>
    80004b3c:	02d7f5bb          	remuw	a1,a5,a3
    80004b40:	02059593          	slli	a1,a1,0x20
    80004b44:	0205d593          	srli	a1,a1,0x20
    80004b48:	00bd85b3          	add	a1,s11,a1
    80004b4c:	0005c583          	lbu	a1,0(a1)
    80004b50:	02d7d7bb          	divuw	a5,a5,a3
    80004b54:	f8b40423          	sb	a1,-120(s0)
    80004b58:	42ebfc63          	bgeu	s7,a4,80004f90 <__printf+0x678>
    80004b5c:	02079793          	slli	a5,a5,0x20
    80004b60:	0207d793          	srli	a5,a5,0x20
    80004b64:	00fd8db3          	add	s11,s11,a5
    80004b68:	000dc703          	lbu	a4,0(s11)
    80004b6c:	00a00793          	li	a5,10
    80004b70:	00900c93          	li	s9,9
    80004b74:	f8e404a3          	sb	a4,-119(s0)
    80004b78:	00065c63          	bgez	a2,80004b90 <__printf+0x278>
    80004b7c:	f9040713          	addi	a4,s0,-112
    80004b80:	00f70733          	add	a4,a4,a5
    80004b84:	02d00693          	li	a3,45
    80004b88:	fed70823          	sb	a3,-16(a4)
    80004b8c:	00078c93          	mv	s9,a5
    80004b90:	f8040793          	addi	a5,s0,-128
    80004b94:	01978cb3          	add	s9,a5,s9
    80004b98:	f7f40d13          	addi	s10,s0,-129
    80004b9c:	000cc503          	lbu	a0,0(s9)
    80004ba0:	fffc8c93          	addi	s9,s9,-1
    80004ba4:	00000097          	auipc	ra,0x0
    80004ba8:	b90080e7          	jalr	-1136(ra) # 80004734 <consputc>
    80004bac:	ffac98e3          	bne	s9,s10,80004b9c <__printf+0x284>
    80004bb0:	00094503          	lbu	a0,0(s2)
    80004bb4:	e00514e3          	bnez	a0,800049bc <__printf+0xa4>
    80004bb8:	1a0c1663          	bnez	s8,80004d64 <__printf+0x44c>
    80004bbc:	08813083          	ld	ra,136(sp)
    80004bc0:	08013403          	ld	s0,128(sp)
    80004bc4:	07813483          	ld	s1,120(sp)
    80004bc8:	07013903          	ld	s2,112(sp)
    80004bcc:	06813983          	ld	s3,104(sp)
    80004bd0:	06013a03          	ld	s4,96(sp)
    80004bd4:	05813a83          	ld	s5,88(sp)
    80004bd8:	05013b03          	ld	s6,80(sp)
    80004bdc:	04813b83          	ld	s7,72(sp)
    80004be0:	04013c03          	ld	s8,64(sp)
    80004be4:	03813c83          	ld	s9,56(sp)
    80004be8:	03013d03          	ld	s10,48(sp)
    80004bec:	02813d83          	ld	s11,40(sp)
    80004bf0:	0d010113          	addi	sp,sp,208
    80004bf4:	00008067          	ret
    80004bf8:	07300713          	li	a4,115
    80004bfc:	1ce78a63          	beq	a5,a4,80004dd0 <__printf+0x4b8>
    80004c00:	07800713          	li	a4,120
    80004c04:	1ee79e63          	bne	a5,a4,80004e00 <__printf+0x4e8>
    80004c08:	f7843783          	ld	a5,-136(s0)
    80004c0c:	0007a703          	lw	a4,0(a5)
    80004c10:	00878793          	addi	a5,a5,8
    80004c14:	f6f43c23          	sd	a5,-136(s0)
    80004c18:	28074263          	bltz	a4,80004e9c <__printf+0x584>
    80004c1c:	00001d97          	auipc	s11,0x1
    80004c20:	684d8d93          	addi	s11,s11,1668 # 800062a0 <digits>
    80004c24:	00f77793          	andi	a5,a4,15
    80004c28:	00fd87b3          	add	a5,s11,a5
    80004c2c:	0007c683          	lbu	a3,0(a5)
    80004c30:	00f00613          	li	a2,15
    80004c34:	0007079b          	sext.w	a5,a4
    80004c38:	f8d40023          	sb	a3,-128(s0)
    80004c3c:	0047559b          	srliw	a1,a4,0x4
    80004c40:	0047569b          	srliw	a3,a4,0x4
    80004c44:	00000c93          	li	s9,0
    80004c48:	0ee65063          	bge	a2,a4,80004d28 <__printf+0x410>
    80004c4c:	00f6f693          	andi	a3,a3,15
    80004c50:	00dd86b3          	add	a3,s11,a3
    80004c54:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004c58:	0087d79b          	srliw	a5,a5,0x8
    80004c5c:	00100c93          	li	s9,1
    80004c60:	f8d400a3          	sb	a3,-127(s0)
    80004c64:	0cb67263          	bgeu	a2,a1,80004d28 <__printf+0x410>
    80004c68:	00f7f693          	andi	a3,a5,15
    80004c6c:	00dd86b3          	add	a3,s11,a3
    80004c70:	0006c583          	lbu	a1,0(a3)
    80004c74:	00f00613          	li	a2,15
    80004c78:	0047d69b          	srliw	a3,a5,0x4
    80004c7c:	f8b40123          	sb	a1,-126(s0)
    80004c80:	0047d593          	srli	a1,a5,0x4
    80004c84:	28f67e63          	bgeu	a2,a5,80004f20 <__printf+0x608>
    80004c88:	00f6f693          	andi	a3,a3,15
    80004c8c:	00dd86b3          	add	a3,s11,a3
    80004c90:	0006c503          	lbu	a0,0(a3)
    80004c94:	0087d813          	srli	a6,a5,0x8
    80004c98:	0087d69b          	srliw	a3,a5,0x8
    80004c9c:	f8a401a3          	sb	a0,-125(s0)
    80004ca0:	28b67663          	bgeu	a2,a1,80004f2c <__printf+0x614>
    80004ca4:	00f6f693          	andi	a3,a3,15
    80004ca8:	00dd86b3          	add	a3,s11,a3
    80004cac:	0006c583          	lbu	a1,0(a3)
    80004cb0:	00c7d513          	srli	a0,a5,0xc
    80004cb4:	00c7d69b          	srliw	a3,a5,0xc
    80004cb8:	f8b40223          	sb	a1,-124(s0)
    80004cbc:	29067a63          	bgeu	a2,a6,80004f50 <__printf+0x638>
    80004cc0:	00f6f693          	andi	a3,a3,15
    80004cc4:	00dd86b3          	add	a3,s11,a3
    80004cc8:	0006c583          	lbu	a1,0(a3)
    80004ccc:	0107d813          	srli	a6,a5,0x10
    80004cd0:	0107d69b          	srliw	a3,a5,0x10
    80004cd4:	f8b402a3          	sb	a1,-123(s0)
    80004cd8:	28a67263          	bgeu	a2,a0,80004f5c <__printf+0x644>
    80004cdc:	00f6f693          	andi	a3,a3,15
    80004ce0:	00dd86b3          	add	a3,s11,a3
    80004ce4:	0006c683          	lbu	a3,0(a3)
    80004ce8:	0147d79b          	srliw	a5,a5,0x14
    80004cec:	f8d40323          	sb	a3,-122(s0)
    80004cf0:	21067663          	bgeu	a2,a6,80004efc <__printf+0x5e4>
    80004cf4:	02079793          	slli	a5,a5,0x20
    80004cf8:	0207d793          	srli	a5,a5,0x20
    80004cfc:	00fd8db3          	add	s11,s11,a5
    80004d00:	000dc683          	lbu	a3,0(s11)
    80004d04:	00800793          	li	a5,8
    80004d08:	00700c93          	li	s9,7
    80004d0c:	f8d403a3          	sb	a3,-121(s0)
    80004d10:	00075c63          	bgez	a4,80004d28 <__printf+0x410>
    80004d14:	f9040713          	addi	a4,s0,-112
    80004d18:	00f70733          	add	a4,a4,a5
    80004d1c:	02d00693          	li	a3,45
    80004d20:	fed70823          	sb	a3,-16(a4)
    80004d24:	00078c93          	mv	s9,a5
    80004d28:	f8040793          	addi	a5,s0,-128
    80004d2c:	01978cb3          	add	s9,a5,s9
    80004d30:	f7f40d13          	addi	s10,s0,-129
    80004d34:	000cc503          	lbu	a0,0(s9)
    80004d38:	fffc8c93          	addi	s9,s9,-1
    80004d3c:	00000097          	auipc	ra,0x0
    80004d40:	9f8080e7          	jalr	-1544(ra) # 80004734 <consputc>
    80004d44:	ff9d18e3          	bne	s10,s9,80004d34 <__printf+0x41c>
    80004d48:	0100006f          	j	80004d58 <__printf+0x440>
    80004d4c:	00000097          	auipc	ra,0x0
    80004d50:	9e8080e7          	jalr	-1560(ra) # 80004734 <consputc>
    80004d54:	000c8493          	mv	s1,s9
    80004d58:	00094503          	lbu	a0,0(s2)
    80004d5c:	c60510e3          	bnez	a0,800049bc <__printf+0xa4>
    80004d60:	e40c0ee3          	beqz	s8,80004bbc <__printf+0x2a4>
    80004d64:	00004517          	auipc	a0,0x4
    80004d68:	d0c50513          	addi	a0,a0,-756 # 80008a70 <pr>
    80004d6c:	00001097          	auipc	ra,0x1
    80004d70:	94c080e7          	jalr	-1716(ra) # 800056b8 <release>
    80004d74:	e49ff06f          	j	80004bbc <__printf+0x2a4>
    80004d78:	f7843783          	ld	a5,-136(s0)
    80004d7c:	03000513          	li	a0,48
    80004d80:	01000d13          	li	s10,16
    80004d84:	00878713          	addi	a4,a5,8
    80004d88:	0007bc83          	ld	s9,0(a5)
    80004d8c:	f6e43c23          	sd	a4,-136(s0)
    80004d90:	00000097          	auipc	ra,0x0
    80004d94:	9a4080e7          	jalr	-1628(ra) # 80004734 <consputc>
    80004d98:	07800513          	li	a0,120
    80004d9c:	00000097          	auipc	ra,0x0
    80004da0:	998080e7          	jalr	-1640(ra) # 80004734 <consputc>
    80004da4:	00001d97          	auipc	s11,0x1
    80004da8:	4fcd8d93          	addi	s11,s11,1276 # 800062a0 <digits>
    80004dac:	03ccd793          	srli	a5,s9,0x3c
    80004db0:	00fd87b3          	add	a5,s11,a5
    80004db4:	0007c503          	lbu	a0,0(a5)
    80004db8:	fffd0d1b          	addiw	s10,s10,-1
    80004dbc:	004c9c93          	slli	s9,s9,0x4
    80004dc0:	00000097          	auipc	ra,0x0
    80004dc4:	974080e7          	jalr	-1676(ra) # 80004734 <consputc>
    80004dc8:	fe0d12e3          	bnez	s10,80004dac <__printf+0x494>
    80004dcc:	f8dff06f          	j	80004d58 <__printf+0x440>
    80004dd0:	f7843783          	ld	a5,-136(s0)
    80004dd4:	0007bc83          	ld	s9,0(a5)
    80004dd8:	00878793          	addi	a5,a5,8
    80004ddc:	f6f43c23          	sd	a5,-136(s0)
    80004de0:	000c9a63          	bnez	s9,80004df4 <__printf+0x4dc>
    80004de4:	1080006f          	j	80004eec <__printf+0x5d4>
    80004de8:	001c8c93          	addi	s9,s9,1
    80004dec:	00000097          	auipc	ra,0x0
    80004df0:	948080e7          	jalr	-1720(ra) # 80004734 <consputc>
    80004df4:	000cc503          	lbu	a0,0(s9)
    80004df8:	fe0518e3          	bnez	a0,80004de8 <__printf+0x4d0>
    80004dfc:	f5dff06f          	j	80004d58 <__printf+0x440>
    80004e00:	02500513          	li	a0,37
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	930080e7          	jalr	-1744(ra) # 80004734 <consputc>
    80004e0c:	000c8513          	mv	a0,s9
    80004e10:	00000097          	auipc	ra,0x0
    80004e14:	924080e7          	jalr	-1756(ra) # 80004734 <consputc>
    80004e18:	f41ff06f          	j	80004d58 <__printf+0x440>
    80004e1c:	02500513          	li	a0,37
    80004e20:	00000097          	auipc	ra,0x0
    80004e24:	914080e7          	jalr	-1772(ra) # 80004734 <consputc>
    80004e28:	f31ff06f          	j	80004d58 <__printf+0x440>
    80004e2c:	00030513          	mv	a0,t1
    80004e30:	00000097          	auipc	ra,0x0
    80004e34:	7bc080e7          	jalr	1980(ra) # 800055ec <acquire>
    80004e38:	b4dff06f          	j	80004984 <__printf+0x6c>
    80004e3c:	40c0053b          	negw	a0,a2
    80004e40:	00a00713          	li	a4,10
    80004e44:	02e576bb          	remuw	a3,a0,a4
    80004e48:	00001d97          	auipc	s11,0x1
    80004e4c:	458d8d93          	addi	s11,s11,1112 # 800062a0 <digits>
    80004e50:	ff700593          	li	a1,-9
    80004e54:	02069693          	slli	a3,a3,0x20
    80004e58:	0206d693          	srli	a3,a3,0x20
    80004e5c:	00dd86b3          	add	a3,s11,a3
    80004e60:	0006c683          	lbu	a3,0(a3)
    80004e64:	02e557bb          	divuw	a5,a0,a4
    80004e68:	f8d40023          	sb	a3,-128(s0)
    80004e6c:	10b65e63          	bge	a2,a1,80004f88 <__printf+0x670>
    80004e70:	06300593          	li	a1,99
    80004e74:	02e7f6bb          	remuw	a3,a5,a4
    80004e78:	02069693          	slli	a3,a3,0x20
    80004e7c:	0206d693          	srli	a3,a3,0x20
    80004e80:	00dd86b3          	add	a3,s11,a3
    80004e84:	0006c683          	lbu	a3,0(a3)
    80004e88:	02e7d73b          	divuw	a4,a5,a4
    80004e8c:	00200793          	li	a5,2
    80004e90:	f8d400a3          	sb	a3,-127(s0)
    80004e94:	bca5ece3          	bltu	a1,a0,80004a6c <__printf+0x154>
    80004e98:	ce5ff06f          	j	80004b7c <__printf+0x264>
    80004e9c:	40e007bb          	negw	a5,a4
    80004ea0:	00001d97          	auipc	s11,0x1
    80004ea4:	400d8d93          	addi	s11,s11,1024 # 800062a0 <digits>
    80004ea8:	00f7f693          	andi	a3,a5,15
    80004eac:	00dd86b3          	add	a3,s11,a3
    80004eb0:	0006c583          	lbu	a1,0(a3)
    80004eb4:	ff100613          	li	a2,-15
    80004eb8:	0047d69b          	srliw	a3,a5,0x4
    80004ebc:	f8b40023          	sb	a1,-128(s0)
    80004ec0:	0047d59b          	srliw	a1,a5,0x4
    80004ec4:	0ac75e63          	bge	a4,a2,80004f80 <__printf+0x668>
    80004ec8:	00f6f693          	andi	a3,a3,15
    80004ecc:	00dd86b3          	add	a3,s11,a3
    80004ed0:	0006c603          	lbu	a2,0(a3)
    80004ed4:	00f00693          	li	a3,15
    80004ed8:	0087d79b          	srliw	a5,a5,0x8
    80004edc:	f8c400a3          	sb	a2,-127(s0)
    80004ee0:	d8b6e4e3          	bltu	a3,a1,80004c68 <__printf+0x350>
    80004ee4:	00200793          	li	a5,2
    80004ee8:	e2dff06f          	j	80004d14 <__printf+0x3fc>
    80004eec:	00001c97          	auipc	s9,0x1
    80004ef0:	394c8c93          	addi	s9,s9,916 # 80006280 <CONSOLE_STATUS+0x270>
    80004ef4:	02800513          	li	a0,40
    80004ef8:	ef1ff06f          	j	80004de8 <__printf+0x4d0>
    80004efc:	00700793          	li	a5,7
    80004f00:	00600c93          	li	s9,6
    80004f04:	e0dff06f          	j	80004d10 <__printf+0x3f8>
    80004f08:	00700793          	li	a5,7
    80004f0c:	00600c93          	li	s9,6
    80004f10:	c69ff06f          	j	80004b78 <__printf+0x260>
    80004f14:	00300793          	li	a5,3
    80004f18:	00200c93          	li	s9,2
    80004f1c:	c5dff06f          	j	80004b78 <__printf+0x260>
    80004f20:	00300793          	li	a5,3
    80004f24:	00200c93          	li	s9,2
    80004f28:	de9ff06f          	j	80004d10 <__printf+0x3f8>
    80004f2c:	00400793          	li	a5,4
    80004f30:	00300c93          	li	s9,3
    80004f34:	dddff06f          	j	80004d10 <__printf+0x3f8>
    80004f38:	00400793          	li	a5,4
    80004f3c:	00300c93          	li	s9,3
    80004f40:	c39ff06f          	j	80004b78 <__printf+0x260>
    80004f44:	00500793          	li	a5,5
    80004f48:	00400c93          	li	s9,4
    80004f4c:	c2dff06f          	j	80004b78 <__printf+0x260>
    80004f50:	00500793          	li	a5,5
    80004f54:	00400c93          	li	s9,4
    80004f58:	db9ff06f          	j	80004d10 <__printf+0x3f8>
    80004f5c:	00600793          	li	a5,6
    80004f60:	00500c93          	li	s9,5
    80004f64:	dadff06f          	j	80004d10 <__printf+0x3f8>
    80004f68:	00600793          	li	a5,6
    80004f6c:	00500c93          	li	s9,5
    80004f70:	c09ff06f          	j	80004b78 <__printf+0x260>
    80004f74:	00800793          	li	a5,8
    80004f78:	00700c93          	li	s9,7
    80004f7c:	bfdff06f          	j	80004b78 <__printf+0x260>
    80004f80:	00100793          	li	a5,1
    80004f84:	d91ff06f          	j	80004d14 <__printf+0x3fc>
    80004f88:	00100793          	li	a5,1
    80004f8c:	bf1ff06f          	j	80004b7c <__printf+0x264>
    80004f90:	00900793          	li	a5,9
    80004f94:	00800c93          	li	s9,8
    80004f98:	be1ff06f          	j	80004b78 <__printf+0x260>
    80004f9c:	00001517          	auipc	a0,0x1
    80004fa0:	2ec50513          	addi	a0,a0,748 # 80006288 <CONSOLE_STATUS+0x278>
    80004fa4:	00000097          	auipc	ra,0x0
    80004fa8:	918080e7          	jalr	-1768(ra) # 800048bc <panic>

0000000080004fac <printfinit>:
    80004fac:	fe010113          	addi	sp,sp,-32
    80004fb0:	00813823          	sd	s0,16(sp)
    80004fb4:	00913423          	sd	s1,8(sp)
    80004fb8:	00113c23          	sd	ra,24(sp)
    80004fbc:	02010413          	addi	s0,sp,32
    80004fc0:	00004497          	auipc	s1,0x4
    80004fc4:	ab048493          	addi	s1,s1,-1360 # 80008a70 <pr>
    80004fc8:	00048513          	mv	a0,s1
    80004fcc:	00001597          	auipc	a1,0x1
    80004fd0:	2cc58593          	addi	a1,a1,716 # 80006298 <CONSOLE_STATUS+0x288>
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	5f4080e7          	jalr	1524(ra) # 800055c8 <initlock>
    80004fdc:	01813083          	ld	ra,24(sp)
    80004fe0:	01013403          	ld	s0,16(sp)
    80004fe4:	0004ac23          	sw	zero,24(s1)
    80004fe8:	00813483          	ld	s1,8(sp)
    80004fec:	02010113          	addi	sp,sp,32
    80004ff0:	00008067          	ret

0000000080004ff4 <uartinit>:
    80004ff4:	ff010113          	addi	sp,sp,-16
    80004ff8:	00813423          	sd	s0,8(sp)
    80004ffc:	01010413          	addi	s0,sp,16
    80005000:	100007b7          	lui	a5,0x10000
    80005004:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80005008:	f8000713          	li	a4,-128
    8000500c:	00e781a3          	sb	a4,3(a5)
    80005010:	00300713          	li	a4,3
    80005014:	00e78023          	sb	a4,0(a5)
    80005018:	000780a3          	sb	zero,1(a5)
    8000501c:	00e781a3          	sb	a4,3(a5)
    80005020:	00700693          	li	a3,7
    80005024:	00d78123          	sb	a3,2(a5)
    80005028:	00e780a3          	sb	a4,1(a5)
    8000502c:	00813403          	ld	s0,8(sp)
    80005030:	01010113          	addi	sp,sp,16
    80005034:	00008067          	ret

0000000080005038 <uartputc>:
    80005038:	00002797          	auipc	a5,0x2
    8000503c:	7a07a783          	lw	a5,1952(a5) # 800077d8 <panicked>
    80005040:	00078463          	beqz	a5,80005048 <uartputc+0x10>
    80005044:	0000006f          	j	80005044 <uartputc+0xc>
    80005048:	fd010113          	addi	sp,sp,-48
    8000504c:	02813023          	sd	s0,32(sp)
    80005050:	00913c23          	sd	s1,24(sp)
    80005054:	01213823          	sd	s2,16(sp)
    80005058:	01313423          	sd	s3,8(sp)
    8000505c:	02113423          	sd	ra,40(sp)
    80005060:	03010413          	addi	s0,sp,48
    80005064:	00002917          	auipc	s2,0x2
    80005068:	77c90913          	addi	s2,s2,1916 # 800077e0 <uart_tx_r>
    8000506c:	00093783          	ld	a5,0(s2)
    80005070:	00002497          	auipc	s1,0x2
    80005074:	77848493          	addi	s1,s1,1912 # 800077e8 <uart_tx_w>
    80005078:	0004b703          	ld	a4,0(s1)
    8000507c:	02078693          	addi	a3,a5,32
    80005080:	00050993          	mv	s3,a0
    80005084:	02e69c63          	bne	a3,a4,800050bc <uartputc+0x84>
    80005088:	00001097          	auipc	ra,0x1
    8000508c:	834080e7          	jalr	-1996(ra) # 800058bc <push_on>
    80005090:	00093783          	ld	a5,0(s2)
    80005094:	0004b703          	ld	a4,0(s1)
    80005098:	02078793          	addi	a5,a5,32
    8000509c:	00e79463          	bne	a5,a4,800050a4 <uartputc+0x6c>
    800050a0:	0000006f          	j	800050a0 <uartputc+0x68>
    800050a4:	00001097          	auipc	ra,0x1
    800050a8:	88c080e7          	jalr	-1908(ra) # 80005930 <pop_on>
    800050ac:	00093783          	ld	a5,0(s2)
    800050b0:	0004b703          	ld	a4,0(s1)
    800050b4:	02078693          	addi	a3,a5,32
    800050b8:	fce688e3          	beq	a3,a4,80005088 <uartputc+0x50>
    800050bc:	01f77693          	andi	a3,a4,31
    800050c0:	00004597          	auipc	a1,0x4
    800050c4:	9d058593          	addi	a1,a1,-1584 # 80008a90 <uart_tx_buf>
    800050c8:	00d586b3          	add	a3,a1,a3
    800050cc:	00170713          	addi	a4,a4,1
    800050d0:	01368023          	sb	s3,0(a3)
    800050d4:	00e4b023          	sd	a4,0(s1)
    800050d8:	10000637          	lui	a2,0x10000
    800050dc:	02f71063          	bne	a4,a5,800050fc <uartputc+0xc4>
    800050e0:	0340006f          	j	80005114 <uartputc+0xdc>
    800050e4:	00074703          	lbu	a4,0(a4)
    800050e8:	00f93023          	sd	a5,0(s2)
    800050ec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800050f0:	00093783          	ld	a5,0(s2)
    800050f4:	0004b703          	ld	a4,0(s1)
    800050f8:	00f70e63          	beq	a4,a5,80005114 <uartputc+0xdc>
    800050fc:	00564683          	lbu	a3,5(a2)
    80005100:	01f7f713          	andi	a4,a5,31
    80005104:	00e58733          	add	a4,a1,a4
    80005108:	0206f693          	andi	a3,a3,32
    8000510c:	00178793          	addi	a5,a5,1
    80005110:	fc069ae3          	bnez	a3,800050e4 <uartputc+0xac>
    80005114:	02813083          	ld	ra,40(sp)
    80005118:	02013403          	ld	s0,32(sp)
    8000511c:	01813483          	ld	s1,24(sp)
    80005120:	01013903          	ld	s2,16(sp)
    80005124:	00813983          	ld	s3,8(sp)
    80005128:	03010113          	addi	sp,sp,48
    8000512c:	00008067          	ret

0000000080005130 <uartputc_sync>:
    80005130:	ff010113          	addi	sp,sp,-16
    80005134:	00813423          	sd	s0,8(sp)
    80005138:	01010413          	addi	s0,sp,16
    8000513c:	00002717          	auipc	a4,0x2
    80005140:	69c72703          	lw	a4,1692(a4) # 800077d8 <panicked>
    80005144:	02071663          	bnez	a4,80005170 <uartputc_sync+0x40>
    80005148:	00050793          	mv	a5,a0
    8000514c:	100006b7          	lui	a3,0x10000
    80005150:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005154:	02077713          	andi	a4,a4,32
    80005158:	fe070ce3          	beqz	a4,80005150 <uartputc_sync+0x20>
    8000515c:	0ff7f793          	andi	a5,a5,255
    80005160:	00f68023          	sb	a5,0(a3)
    80005164:	00813403          	ld	s0,8(sp)
    80005168:	01010113          	addi	sp,sp,16
    8000516c:	00008067          	ret
    80005170:	0000006f          	j	80005170 <uartputc_sync+0x40>

0000000080005174 <uartstart>:
    80005174:	ff010113          	addi	sp,sp,-16
    80005178:	00813423          	sd	s0,8(sp)
    8000517c:	01010413          	addi	s0,sp,16
    80005180:	00002617          	auipc	a2,0x2
    80005184:	66060613          	addi	a2,a2,1632 # 800077e0 <uart_tx_r>
    80005188:	00002517          	auipc	a0,0x2
    8000518c:	66050513          	addi	a0,a0,1632 # 800077e8 <uart_tx_w>
    80005190:	00063783          	ld	a5,0(a2)
    80005194:	00053703          	ld	a4,0(a0)
    80005198:	04f70263          	beq	a4,a5,800051dc <uartstart+0x68>
    8000519c:	100005b7          	lui	a1,0x10000
    800051a0:	00004817          	auipc	a6,0x4
    800051a4:	8f080813          	addi	a6,a6,-1808 # 80008a90 <uart_tx_buf>
    800051a8:	01c0006f          	j	800051c4 <uartstart+0x50>
    800051ac:	0006c703          	lbu	a4,0(a3)
    800051b0:	00f63023          	sd	a5,0(a2)
    800051b4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800051b8:	00063783          	ld	a5,0(a2)
    800051bc:	00053703          	ld	a4,0(a0)
    800051c0:	00f70e63          	beq	a4,a5,800051dc <uartstart+0x68>
    800051c4:	01f7f713          	andi	a4,a5,31
    800051c8:	00e806b3          	add	a3,a6,a4
    800051cc:	0055c703          	lbu	a4,5(a1)
    800051d0:	00178793          	addi	a5,a5,1
    800051d4:	02077713          	andi	a4,a4,32
    800051d8:	fc071ae3          	bnez	a4,800051ac <uartstart+0x38>
    800051dc:	00813403          	ld	s0,8(sp)
    800051e0:	01010113          	addi	sp,sp,16
    800051e4:	00008067          	ret

00000000800051e8 <uartgetc>:
    800051e8:	ff010113          	addi	sp,sp,-16
    800051ec:	00813423          	sd	s0,8(sp)
    800051f0:	01010413          	addi	s0,sp,16
    800051f4:	10000737          	lui	a4,0x10000
    800051f8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800051fc:	0017f793          	andi	a5,a5,1
    80005200:	00078c63          	beqz	a5,80005218 <uartgetc+0x30>
    80005204:	00074503          	lbu	a0,0(a4)
    80005208:	0ff57513          	andi	a0,a0,255
    8000520c:	00813403          	ld	s0,8(sp)
    80005210:	01010113          	addi	sp,sp,16
    80005214:	00008067          	ret
    80005218:	fff00513          	li	a0,-1
    8000521c:	ff1ff06f          	j	8000520c <uartgetc+0x24>

0000000080005220 <uartintr>:
    80005220:	100007b7          	lui	a5,0x10000
    80005224:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005228:	0017f793          	andi	a5,a5,1
    8000522c:	0a078463          	beqz	a5,800052d4 <uartintr+0xb4>
    80005230:	fe010113          	addi	sp,sp,-32
    80005234:	00813823          	sd	s0,16(sp)
    80005238:	00913423          	sd	s1,8(sp)
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	02010413          	addi	s0,sp,32
    80005244:	100004b7          	lui	s1,0x10000
    80005248:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000524c:	0ff57513          	andi	a0,a0,255
    80005250:	fffff097          	auipc	ra,0xfffff
    80005254:	534080e7          	jalr	1332(ra) # 80004784 <consoleintr>
    80005258:	0054c783          	lbu	a5,5(s1)
    8000525c:	0017f793          	andi	a5,a5,1
    80005260:	fe0794e3          	bnez	a5,80005248 <uartintr+0x28>
    80005264:	00002617          	auipc	a2,0x2
    80005268:	57c60613          	addi	a2,a2,1404 # 800077e0 <uart_tx_r>
    8000526c:	00002517          	auipc	a0,0x2
    80005270:	57c50513          	addi	a0,a0,1404 # 800077e8 <uart_tx_w>
    80005274:	00063783          	ld	a5,0(a2)
    80005278:	00053703          	ld	a4,0(a0)
    8000527c:	04f70263          	beq	a4,a5,800052c0 <uartintr+0xa0>
    80005280:	100005b7          	lui	a1,0x10000
    80005284:	00004817          	auipc	a6,0x4
    80005288:	80c80813          	addi	a6,a6,-2036 # 80008a90 <uart_tx_buf>
    8000528c:	01c0006f          	j	800052a8 <uartintr+0x88>
    80005290:	0006c703          	lbu	a4,0(a3)
    80005294:	00f63023          	sd	a5,0(a2)
    80005298:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000529c:	00063783          	ld	a5,0(a2)
    800052a0:	00053703          	ld	a4,0(a0)
    800052a4:	00f70e63          	beq	a4,a5,800052c0 <uartintr+0xa0>
    800052a8:	01f7f713          	andi	a4,a5,31
    800052ac:	00e806b3          	add	a3,a6,a4
    800052b0:	0055c703          	lbu	a4,5(a1)
    800052b4:	00178793          	addi	a5,a5,1
    800052b8:	02077713          	andi	a4,a4,32
    800052bc:	fc071ae3          	bnez	a4,80005290 <uartintr+0x70>
    800052c0:	01813083          	ld	ra,24(sp)
    800052c4:	01013403          	ld	s0,16(sp)
    800052c8:	00813483          	ld	s1,8(sp)
    800052cc:	02010113          	addi	sp,sp,32
    800052d0:	00008067          	ret
    800052d4:	00002617          	auipc	a2,0x2
    800052d8:	50c60613          	addi	a2,a2,1292 # 800077e0 <uart_tx_r>
    800052dc:	00002517          	auipc	a0,0x2
    800052e0:	50c50513          	addi	a0,a0,1292 # 800077e8 <uart_tx_w>
    800052e4:	00063783          	ld	a5,0(a2)
    800052e8:	00053703          	ld	a4,0(a0)
    800052ec:	04f70263          	beq	a4,a5,80005330 <uartintr+0x110>
    800052f0:	100005b7          	lui	a1,0x10000
    800052f4:	00003817          	auipc	a6,0x3
    800052f8:	79c80813          	addi	a6,a6,1948 # 80008a90 <uart_tx_buf>
    800052fc:	01c0006f          	j	80005318 <uartintr+0xf8>
    80005300:	0006c703          	lbu	a4,0(a3)
    80005304:	00f63023          	sd	a5,0(a2)
    80005308:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000530c:	00063783          	ld	a5,0(a2)
    80005310:	00053703          	ld	a4,0(a0)
    80005314:	02f70063          	beq	a4,a5,80005334 <uartintr+0x114>
    80005318:	01f7f713          	andi	a4,a5,31
    8000531c:	00e806b3          	add	a3,a6,a4
    80005320:	0055c703          	lbu	a4,5(a1)
    80005324:	00178793          	addi	a5,a5,1
    80005328:	02077713          	andi	a4,a4,32
    8000532c:	fc071ae3          	bnez	a4,80005300 <uartintr+0xe0>
    80005330:	00008067          	ret
    80005334:	00008067          	ret

0000000080005338 <kinit>:
    80005338:	fc010113          	addi	sp,sp,-64
    8000533c:	02913423          	sd	s1,40(sp)
    80005340:	fffff7b7          	lui	a5,0xfffff
    80005344:	00004497          	auipc	s1,0x4
    80005348:	76b48493          	addi	s1,s1,1899 # 80009aaf <end+0xfff>
    8000534c:	02813823          	sd	s0,48(sp)
    80005350:	01313c23          	sd	s3,24(sp)
    80005354:	00f4f4b3          	and	s1,s1,a5
    80005358:	02113c23          	sd	ra,56(sp)
    8000535c:	03213023          	sd	s2,32(sp)
    80005360:	01413823          	sd	s4,16(sp)
    80005364:	01513423          	sd	s5,8(sp)
    80005368:	04010413          	addi	s0,sp,64
    8000536c:	000017b7          	lui	a5,0x1
    80005370:	01100993          	li	s3,17
    80005374:	00f487b3          	add	a5,s1,a5
    80005378:	01b99993          	slli	s3,s3,0x1b
    8000537c:	06f9e063          	bltu	s3,a5,800053dc <kinit+0xa4>
    80005380:	00003a97          	auipc	s5,0x3
    80005384:	730a8a93          	addi	s5,s5,1840 # 80008ab0 <end>
    80005388:	0754ec63          	bltu	s1,s5,80005400 <kinit+0xc8>
    8000538c:	0734fa63          	bgeu	s1,s3,80005400 <kinit+0xc8>
    80005390:	00088a37          	lui	s4,0x88
    80005394:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005398:	00002917          	auipc	s2,0x2
    8000539c:	45890913          	addi	s2,s2,1112 # 800077f0 <kmem>
    800053a0:	00ca1a13          	slli	s4,s4,0xc
    800053a4:	0140006f          	j	800053b8 <kinit+0x80>
    800053a8:	000017b7          	lui	a5,0x1
    800053ac:	00f484b3          	add	s1,s1,a5
    800053b0:	0554e863          	bltu	s1,s5,80005400 <kinit+0xc8>
    800053b4:	0534f663          	bgeu	s1,s3,80005400 <kinit+0xc8>
    800053b8:	00001637          	lui	a2,0x1
    800053bc:	00100593          	li	a1,1
    800053c0:	00048513          	mv	a0,s1
    800053c4:	00000097          	auipc	ra,0x0
    800053c8:	5e4080e7          	jalr	1508(ra) # 800059a8 <__memset>
    800053cc:	00093783          	ld	a5,0(s2)
    800053d0:	00f4b023          	sd	a5,0(s1)
    800053d4:	00993023          	sd	s1,0(s2)
    800053d8:	fd4498e3          	bne	s1,s4,800053a8 <kinit+0x70>
    800053dc:	03813083          	ld	ra,56(sp)
    800053e0:	03013403          	ld	s0,48(sp)
    800053e4:	02813483          	ld	s1,40(sp)
    800053e8:	02013903          	ld	s2,32(sp)
    800053ec:	01813983          	ld	s3,24(sp)
    800053f0:	01013a03          	ld	s4,16(sp)
    800053f4:	00813a83          	ld	s5,8(sp)
    800053f8:	04010113          	addi	sp,sp,64
    800053fc:	00008067          	ret
    80005400:	00001517          	auipc	a0,0x1
    80005404:	eb850513          	addi	a0,a0,-328 # 800062b8 <digits+0x18>
    80005408:	fffff097          	auipc	ra,0xfffff
    8000540c:	4b4080e7          	jalr	1204(ra) # 800048bc <panic>

0000000080005410 <freerange>:
    80005410:	fc010113          	addi	sp,sp,-64
    80005414:	000017b7          	lui	a5,0x1
    80005418:	02913423          	sd	s1,40(sp)
    8000541c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005420:	009504b3          	add	s1,a0,s1
    80005424:	fffff537          	lui	a0,0xfffff
    80005428:	02813823          	sd	s0,48(sp)
    8000542c:	02113c23          	sd	ra,56(sp)
    80005430:	03213023          	sd	s2,32(sp)
    80005434:	01313c23          	sd	s3,24(sp)
    80005438:	01413823          	sd	s4,16(sp)
    8000543c:	01513423          	sd	s5,8(sp)
    80005440:	01613023          	sd	s6,0(sp)
    80005444:	04010413          	addi	s0,sp,64
    80005448:	00a4f4b3          	and	s1,s1,a0
    8000544c:	00f487b3          	add	a5,s1,a5
    80005450:	06f5e463          	bltu	a1,a5,800054b8 <freerange+0xa8>
    80005454:	00003a97          	auipc	s5,0x3
    80005458:	65ca8a93          	addi	s5,s5,1628 # 80008ab0 <end>
    8000545c:	0954e263          	bltu	s1,s5,800054e0 <freerange+0xd0>
    80005460:	01100993          	li	s3,17
    80005464:	01b99993          	slli	s3,s3,0x1b
    80005468:	0734fc63          	bgeu	s1,s3,800054e0 <freerange+0xd0>
    8000546c:	00058a13          	mv	s4,a1
    80005470:	00002917          	auipc	s2,0x2
    80005474:	38090913          	addi	s2,s2,896 # 800077f0 <kmem>
    80005478:	00002b37          	lui	s6,0x2
    8000547c:	0140006f          	j	80005490 <freerange+0x80>
    80005480:	000017b7          	lui	a5,0x1
    80005484:	00f484b3          	add	s1,s1,a5
    80005488:	0554ec63          	bltu	s1,s5,800054e0 <freerange+0xd0>
    8000548c:	0534fa63          	bgeu	s1,s3,800054e0 <freerange+0xd0>
    80005490:	00001637          	lui	a2,0x1
    80005494:	00100593          	li	a1,1
    80005498:	00048513          	mv	a0,s1
    8000549c:	00000097          	auipc	ra,0x0
    800054a0:	50c080e7          	jalr	1292(ra) # 800059a8 <__memset>
    800054a4:	00093703          	ld	a4,0(s2)
    800054a8:	016487b3          	add	a5,s1,s6
    800054ac:	00e4b023          	sd	a4,0(s1)
    800054b0:	00993023          	sd	s1,0(s2)
    800054b4:	fcfa76e3          	bgeu	s4,a5,80005480 <freerange+0x70>
    800054b8:	03813083          	ld	ra,56(sp)
    800054bc:	03013403          	ld	s0,48(sp)
    800054c0:	02813483          	ld	s1,40(sp)
    800054c4:	02013903          	ld	s2,32(sp)
    800054c8:	01813983          	ld	s3,24(sp)
    800054cc:	01013a03          	ld	s4,16(sp)
    800054d0:	00813a83          	ld	s5,8(sp)
    800054d4:	00013b03          	ld	s6,0(sp)
    800054d8:	04010113          	addi	sp,sp,64
    800054dc:	00008067          	ret
    800054e0:	00001517          	auipc	a0,0x1
    800054e4:	dd850513          	addi	a0,a0,-552 # 800062b8 <digits+0x18>
    800054e8:	fffff097          	auipc	ra,0xfffff
    800054ec:	3d4080e7          	jalr	980(ra) # 800048bc <panic>

00000000800054f0 <kfree>:
    800054f0:	fe010113          	addi	sp,sp,-32
    800054f4:	00813823          	sd	s0,16(sp)
    800054f8:	00113c23          	sd	ra,24(sp)
    800054fc:	00913423          	sd	s1,8(sp)
    80005500:	02010413          	addi	s0,sp,32
    80005504:	03451793          	slli	a5,a0,0x34
    80005508:	04079c63          	bnez	a5,80005560 <kfree+0x70>
    8000550c:	00003797          	auipc	a5,0x3
    80005510:	5a478793          	addi	a5,a5,1444 # 80008ab0 <end>
    80005514:	00050493          	mv	s1,a0
    80005518:	04f56463          	bltu	a0,a5,80005560 <kfree+0x70>
    8000551c:	01100793          	li	a5,17
    80005520:	01b79793          	slli	a5,a5,0x1b
    80005524:	02f57e63          	bgeu	a0,a5,80005560 <kfree+0x70>
    80005528:	00001637          	lui	a2,0x1
    8000552c:	00100593          	li	a1,1
    80005530:	00000097          	auipc	ra,0x0
    80005534:	478080e7          	jalr	1144(ra) # 800059a8 <__memset>
    80005538:	00002797          	auipc	a5,0x2
    8000553c:	2b878793          	addi	a5,a5,696 # 800077f0 <kmem>
    80005540:	0007b703          	ld	a4,0(a5)
    80005544:	01813083          	ld	ra,24(sp)
    80005548:	01013403          	ld	s0,16(sp)
    8000554c:	00e4b023          	sd	a4,0(s1)
    80005550:	0097b023          	sd	s1,0(a5)
    80005554:	00813483          	ld	s1,8(sp)
    80005558:	02010113          	addi	sp,sp,32
    8000555c:	00008067          	ret
    80005560:	00001517          	auipc	a0,0x1
    80005564:	d5850513          	addi	a0,a0,-680 # 800062b8 <digits+0x18>
    80005568:	fffff097          	auipc	ra,0xfffff
    8000556c:	354080e7          	jalr	852(ra) # 800048bc <panic>

0000000080005570 <kalloc>:
    80005570:	fe010113          	addi	sp,sp,-32
    80005574:	00813823          	sd	s0,16(sp)
    80005578:	00913423          	sd	s1,8(sp)
    8000557c:	00113c23          	sd	ra,24(sp)
    80005580:	02010413          	addi	s0,sp,32
    80005584:	00002797          	auipc	a5,0x2
    80005588:	26c78793          	addi	a5,a5,620 # 800077f0 <kmem>
    8000558c:	0007b483          	ld	s1,0(a5)
    80005590:	02048063          	beqz	s1,800055b0 <kalloc+0x40>
    80005594:	0004b703          	ld	a4,0(s1)
    80005598:	00001637          	lui	a2,0x1
    8000559c:	00500593          	li	a1,5
    800055a0:	00048513          	mv	a0,s1
    800055a4:	00e7b023          	sd	a4,0(a5)
    800055a8:	00000097          	auipc	ra,0x0
    800055ac:	400080e7          	jalr	1024(ra) # 800059a8 <__memset>
    800055b0:	01813083          	ld	ra,24(sp)
    800055b4:	01013403          	ld	s0,16(sp)
    800055b8:	00048513          	mv	a0,s1
    800055bc:	00813483          	ld	s1,8(sp)
    800055c0:	02010113          	addi	sp,sp,32
    800055c4:	00008067          	ret

00000000800055c8 <initlock>:
    800055c8:	ff010113          	addi	sp,sp,-16
    800055cc:	00813423          	sd	s0,8(sp)
    800055d0:	01010413          	addi	s0,sp,16
    800055d4:	00813403          	ld	s0,8(sp)
    800055d8:	00b53423          	sd	a1,8(a0)
    800055dc:	00052023          	sw	zero,0(a0)
    800055e0:	00053823          	sd	zero,16(a0)
    800055e4:	01010113          	addi	sp,sp,16
    800055e8:	00008067          	ret

00000000800055ec <acquire>:
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00913423          	sd	s1,8(sp)
    800055f8:	00113c23          	sd	ra,24(sp)
    800055fc:	01213023          	sd	s2,0(sp)
    80005600:	02010413          	addi	s0,sp,32
    80005604:	00050493          	mv	s1,a0
    80005608:	10002973          	csrr	s2,sstatus
    8000560c:	100027f3          	csrr	a5,sstatus
    80005610:	ffd7f793          	andi	a5,a5,-3
    80005614:	10079073          	csrw	sstatus,a5
    80005618:	fffff097          	auipc	ra,0xfffff
    8000561c:	8ec080e7          	jalr	-1812(ra) # 80003f04 <mycpu>
    80005620:	07852783          	lw	a5,120(a0)
    80005624:	06078e63          	beqz	a5,800056a0 <acquire+0xb4>
    80005628:	fffff097          	auipc	ra,0xfffff
    8000562c:	8dc080e7          	jalr	-1828(ra) # 80003f04 <mycpu>
    80005630:	07852783          	lw	a5,120(a0)
    80005634:	0004a703          	lw	a4,0(s1)
    80005638:	0017879b          	addiw	a5,a5,1
    8000563c:	06f52c23          	sw	a5,120(a0)
    80005640:	04071063          	bnez	a4,80005680 <acquire+0x94>
    80005644:	00100713          	li	a4,1
    80005648:	00070793          	mv	a5,a4
    8000564c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005650:	0007879b          	sext.w	a5,a5
    80005654:	fe079ae3          	bnez	a5,80005648 <acquire+0x5c>
    80005658:	0ff0000f          	fence
    8000565c:	fffff097          	auipc	ra,0xfffff
    80005660:	8a8080e7          	jalr	-1880(ra) # 80003f04 <mycpu>
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00a4b823          	sd	a0,16(s1)
    80005670:	00013903          	ld	s2,0(sp)
    80005674:	00813483          	ld	s1,8(sp)
    80005678:	02010113          	addi	sp,sp,32
    8000567c:	00008067          	ret
    80005680:	0104b903          	ld	s2,16(s1)
    80005684:	fffff097          	auipc	ra,0xfffff
    80005688:	880080e7          	jalr	-1920(ra) # 80003f04 <mycpu>
    8000568c:	faa91ce3          	bne	s2,a0,80005644 <acquire+0x58>
    80005690:	00001517          	auipc	a0,0x1
    80005694:	c3050513          	addi	a0,a0,-976 # 800062c0 <digits+0x20>
    80005698:	fffff097          	auipc	ra,0xfffff
    8000569c:	224080e7          	jalr	548(ra) # 800048bc <panic>
    800056a0:	00195913          	srli	s2,s2,0x1
    800056a4:	fffff097          	auipc	ra,0xfffff
    800056a8:	860080e7          	jalr	-1952(ra) # 80003f04 <mycpu>
    800056ac:	00197913          	andi	s2,s2,1
    800056b0:	07252e23          	sw	s2,124(a0)
    800056b4:	f75ff06f          	j	80005628 <acquire+0x3c>

00000000800056b8 <release>:
    800056b8:	fe010113          	addi	sp,sp,-32
    800056bc:	00813823          	sd	s0,16(sp)
    800056c0:	00113c23          	sd	ra,24(sp)
    800056c4:	00913423          	sd	s1,8(sp)
    800056c8:	01213023          	sd	s2,0(sp)
    800056cc:	02010413          	addi	s0,sp,32
    800056d0:	00052783          	lw	a5,0(a0)
    800056d4:	00079a63          	bnez	a5,800056e8 <release+0x30>
    800056d8:	00001517          	auipc	a0,0x1
    800056dc:	bf050513          	addi	a0,a0,-1040 # 800062c8 <digits+0x28>
    800056e0:	fffff097          	auipc	ra,0xfffff
    800056e4:	1dc080e7          	jalr	476(ra) # 800048bc <panic>
    800056e8:	01053903          	ld	s2,16(a0)
    800056ec:	00050493          	mv	s1,a0
    800056f0:	fffff097          	auipc	ra,0xfffff
    800056f4:	814080e7          	jalr	-2028(ra) # 80003f04 <mycpu>
    800056f8:	fea910e3          	bne	s2,a0,800056d8 <release+0x20>
    800056fc:	0004b823          	sd	zero,16(s1)
    80005700:	0ff0000f          	fence
    80005704:	0f50000f          	fence	iorw,ow
    80005708:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000570c:	ffffe097          	auipc	ra,0xffffe
    80005710:	7f8080e7          	jalr	2040(ra) # 80003f04 <mycpu>
    80005714:	100027f3          	csrr	a5,sstatus
    80005718:	0027f793          	andi	a5,a5,2
    8000571c:	04079a63          	bnez	a5,80005770 <release+0xb8>
    80005720:	07852783          	lw	a5,120(a0)
    80005724:	02f05e63          	blez	a5,80005760 <release+0xa8>
    80005728:	fff7871b          	addiw	a4,a5,-1
    8000572c:	06e52c23          	sw	a4,120(a0)
    80005730:	00071c63          	bnez	a4,80005748 <release+0x90>
    80005734:	07c52783          	lw	a5,124(a0)
    80005738:	00078863          	beqz	a5,80005748 <release+0x90>
    8000573c:	100027f3          	csrr	a5,sstatus
    80005740:	0027e793          	ori	a5,a5,2
    80005744:	10079073          	csrw	sstatus,a5
    80005748:	01813083          	ld	ra,24(sp)
    8000574c:	01013403          	ld	s0,16(sp)
    80005750:	00813483          	ld	s1,8(sp)
    80005754:	00013903          	ld	s2,0(sp)
    80005758:	02010113          	addi	sp,sp,32
    8000575c:	00008067          	ret
    80005760:	00001517          	auipc	a0,0x1
    80005764:	b8850513          	addi	a0,a0,-1144 # 800062e8 <digits+0x48>
    80005768:	fffff097          	auipc	ra,0xfffff
    8000576c:	154080e7          	jalr	340(ra) # 800048bc <panic>
    80005770:	00001517          	auipc	a0,0x1
    80005774:	b6050513          	addi	a0,a0,-1184 # 800062d0 <digits+0x30>
    80005778:	fffff097          	auipc	ra,0xfffff
    8000577c:	144080e7          	jalr	324(ra) # 800048bc <panic>

0000000080005780 <holding>:
    80005780:	00052783          	lw	a5,0(a0)
    80005784:	00079663          	bnez	a5,80005790 <holding+0x10>
    80005788:	00000513          	li	a0,0
    8000578c:	00008067          	ret
    80005790:	fe010113          	addi	sp,sp,-32
    80005794:	00813823          	sd	s0,16(sp)
    80005798:	00913423          	sd	s1,8(sp)
    8000579c:	00113c23          	sd	ra,24(sp)
    800057a0:	02010413          	addi	s0,sp,32
    800057a4:	01053483          	ld	s1,16(a0)
    800057a8:	ffffe097          	auipc	ra,0xffffe
    800057ac:	75c080e7          	jalr	1884(ra) # 80003f04 <mycpu>
    800057b0:	01813083          	ld	ra,24(sp)
    800057b4:	01013403          	ld	s0,16(sp)
    800057b8:	40a48533          	sub	a0,s1,a0
    800057bc:	00153513          	seqz	a0,a0
    800057c0:	00813483          	ld	s1,8(sp)
    800057c4:	02010113          	addi	sp,sp,32
    800057c8:	00008067          	ret

00000000800057cc <push_off>:
    800057cc:	fe010113          	addi	sp,sp,-32
    800057d0:	00813823          	sd	s0,16(sp)
    800057d4:	00113c23          	sd	ra,24(sp)
    800057d8:	00913423          	sd	s1,8(sp)
    800057dc:	02010413          	addi	s0,sp,32
    800057e0:	100024f3          	csrr	s1,sstatus
    800057e4:	100027f3          	csrr	a5,sstatus
    800057e8:	ffd7f793          	andi	a5,a5,-3
    800057ec:	10079073          	csrw	sstatus,a5
    800057f0:	ffffe097          	auipc	ra,0xffffe
    800057f4:	714080e7          	jalr	1812(ra) # 80003f04 <mycpu>
    800057f8:	07852783          	lw	a5,120(a0)
    800057fc:	02078663          	beqz	a5,80005828 <push_off+0x5c>
    80005800:	ffffe097          	auipc	ra,0xffffe
    80005804:	704080e7          	jalr	1796(ra) # 80003f04 <mycpu>
    80005808:	07852783          	lw	a5,120(a0)
    8000580c:	01813083          	ld	ra,24(sp)
    80005810:	01013403          	ld	s0,16(sp)
    80005814:	0017879b          	addiw	a5,a5,1
    80005818:	06f52c23          	sw	a5,120(a0)
    8000581c:	00813483          	ld	s1,8(sp)
    80005820:	02010113          	addi	sp,sp,32
    80005824:	00008067          	ret
    80005828:	0014d493          	srli	s1,s1,0x1
    8000582c:	ffffe097          	auipc	ra,0xffffe
    80005830:	6d8080e7          	jalr	1752(ra) # 80003f04 <mycpu>
    80005834:	0014f493          	andi	s1,s1,1
    80005838:	06952e23          	sw	s1,124(a0)
    8000583c:	fc5ff06f          	j	80005800 <push_off+0x34>

0000000080005840 <pop_off>:
    80005840:	ff010113          	addi	sp,sp,-16
    80005844:	00813023          	sd	s0,0(sp)
    80005848:	00113423          	sd	ra,8(sp)
    8000584c:	01010413          	addi	s0,sp,16
    80005850:	ffffe097          	auipc	ra,0xffffe
    80005854:	6b4080e7          	jalr	1716(ra) # 80003f04 <mycpu>
    80005858:	100027f3          	csrr	a5,sstatus
    8000585c:	0027f793          	andi	a5,a5,2
    80005860:	04079663          	bnez	a5,800058ac <pop_off+0x6c>
    80005864:	07852783          	lw	a5,120(a0)
    80005868:	02f05a63          	blez	a5,8000589c <pop_off+0x5c>
    8000586c:	fff7871b          	addiw	a4,a5,-1
    80005870:	06e52c23          	sw	a4,120(a0)
    80005874:	00071c63          	bnez	a4,8000588c <pop_off+0x4c>
    80005878:	07c52783          	lw	a5,124(a0)
    8000587c:	00078863          	beqz	a5,8000588c <pop_off+0x4c>
    80005880:	100027f3          	csrr	a5,sstatus
    80005884:	0027e793          	ori	a5,a5,2
    80005888:	10079073          	csrw	sstatus,a5
    8000588c:	00813083          	ld	ra,8(sp)
    80005890:	00013403          	ld	s0,0(sp)
    80005894:	01010113          	addi	sp,sp,16
    80005898:	00008067          	ret
    8000589c:	00001517          	auipc	a0,0x1
    800058a0:	a4c50513          	addi	a0,a0,-1460 # 800062e8 <digits+0x48>
    800058a4:	fffff097          	auipc	ra,0xfffff
    800058a8:	018080e7          	jalr	24(ra) # 800048bc <panic>
    800058ac:	00001517          	auipc	a0,0x1
    800058b0:	a2450513          	addi	a0,a0,-1500 # 800062d0 <digits+0x30>
    800058b4:	fffff097          	auipc	ra,0xfffff
    800058b8:	008080e7          	jalr	8(ra) # 800048bc <panic>

00000000800058bc <push_on>:
    800058bc:	fe010113          	addi	sp,sp,-32
    800058c0:	00813823          	sd	s0,16(sp)
    800058c4:	00113c23          	sd	ra,24(sp)
    800058c8:	00913423          	sd	s1,8(sp)
    800058cc:	02010413          	addi	s0,sp,32
    800058d0:	100024f3          	csrr	s1,sstatus
    800058d4:	100027f3          	csrr	a5,sstatus
    800058d8:	0027e793          	ori	a5,a5,2
    800058dc:	10079073          	csrw	sstatus,a5
    800058e0:	ffffe097          	auipc	ra,0xffffe
    800058e4:	624080e7          	jalr	1572(ra) # 80003f04 <mycpu>
    800058e8:	07852783          	lw	a5,120(a0)
    800058ec:	02078663          	beqz	a5,80005918 <push_on+0x5c>
    800058f0:	ffffe097          	auipc	ra,0xffffe
    800058f4:	614080e7          	jalr	1556(ra) # 80003f04 <mycpu>
    800058f8:	07852783          	lw	a5,120(a0)
    800058fc:	01813083          	ld	ra,24(sp)
    80005900:	01013403          	ld	s0,16(sp)
    80005904:	0017879b          	addiw	a5,a5,1
    80005908:	06f52c23          	sw	a5,120(a0)
    8000590c:	00813483          	ld	s1,8(sp)
    80005910:	02010113          	addi	sp,sp,32
    80005914:	00008067          	ret
    80005918:	0014d493          	srli	s1,s1,0x1
    8000591c:	ffffe097          	auipc	ra,0xffffe
    80005920:	5e8080e7          	jalr	1512(ra) # 80003f04 <mycpu>
    80005924:	0014f493          	andi	s1,s1,1
    80005928:	06952e23          	sw	s1,124(a0)
    8000592c:	fc5ff06f          	j	800058f0 <push_on+0x34>

0000000080005930 <pop_on>:
    80005930:	ff010113          	addi	sp,sp,-16
    80005934:	00813023          	sd	s0,0(sp)
    80005938:	00113423          	sd	ra,8(sp)
    8000593c:	01010413          	addi	s0,sp,16
    80005940:	ffffe097          	auipc	ra,0xffffe
    80005944:	5c4080e7          	jalr	1476(ra) # 80003f04 <mycpu>
    80005948:	100027f3          	csrr	a5,sstatus
    8000594c:	0027f793          	andi	a5,a5,2
    80005950:	04078463          	beqz	a5,80005998 <pop_on+0x68>
    80005954:	07852783          	lw	a5,120(a0)
    80005958:	02f05863          	blez	a5,80005988 <pop_on+0x58>
    8000595c:	fff7879b          	addiw	a5,a5,-1
    80005960:	06f52c23          	sw	a5,120(a0)
    80005964:	07853783          	ld	a5,120(a0)
    80005968:	00079863          	bnez	a5,80005978 <pop_on+0x48>
    8000596c:	100027f3          	csrr	a5,sstatus
    80005970:	ffd7f793          	andi	a5,a5,-3
    80005974:	10079073          	csrw	sstatus,a5
    80005978:	00813083          	ld	ra,8(sp)
    8000597c:	00013403          	ld	s0,0(sp)
    80005980:	01010113          	addi	sp,sp,16
    80005984:	00008067          	ret
    80005988:	00001517          	auipc	a0,0x1
    8000598c:	98850513          	addi	a0,a0,-1656 # 80006310 <digits+0x70>
    80005990:	fffff097          	auipc	ra,0xfffff
    80005994:	f2c080e7          	jalr	-212(ra) # 800048bc <panic>
    80005998:	00001517          	auipc	a0,0x1
    8000599c:	95850513          	addi	a0,a0,-1704 # 800062f0 <digits+0x50>
    800059a0:	fffff097          	auipc	ra,0xfffff
    800059a4:	f1c080e7          	jalr	-228(ra) # 800048bc <panic>

00000000800059a8 <__memset>:
    800059a8:	ff010113          	addi	sp,sp,-16
    800059ac:	00813423          	sd	s0,8(sp)
    800059b0:	01010413          	addi	s0,sp,16
    800059b4:	1a060e63          	beqz	a2,80005b70 <__memset+0x1c8>
    800059b8:	40a007b3          	neg	a5,a0
    800059bc:	0077f793          	andi	a5,a5,7
    800059c0:	00778693          	addi	a3,a5,7
    800059c4:	00b00813          	li	a6,11
    800059c8:	0ff5f593          	andi	a1,a1,255
    800059cc:	fff6071b          	addiw	a4,a2,-1
    800059d0:	1b06e663          	bltu	a3,a6,80005b7c <__memset+0x1d4>
    800059d4:	1cd76463          	bltu	a4,a3,80005b9c <__memset+0x1f4>
    800059d8:	1a078e63          	beqz	a5,80005b94 <__memset+0x1ec>
    800059dc:	00b50023          	sb	a1,0(a0)
    800059e0:	00100713          	li	a4,1
    800059e4:	1ae78463          	beq	a5,a4,80005b8c <__memset+0x1e4>
    800059e8:	00b500a3          	sb	a1,1(a0)
    800059ec:	00200713          	li	a4,2
    800059f0:	1ae78a63          	beq	a5,a4,80005ba4 <__memset+0x1fc>
    800059f4:	00b50123          	sb	a1,2(a0)
    800059f8:	00300713          	li	a4,3
    800059fc:	18e78463          	beq	a5,a4,80005b84 <__memset+0x1dc>
    80005a00:	00b501a3          	sb	a1,3(a0)
    80005a04:	00400713          	li	a4,4
    80005a08:	1ae78263          	beq	a5,a4,80005bac <__memset+0x204>
    80005a0c:	00b50223          	sb	a1,4(a0)
    80005a10:	00500713          	li	a4,5
    80005a14:	1ae78063          	beq	a5,a4,80005bb4 <__memset+0x20c>
    80005a18:	00b502a3          	sb	a1,5(a0)
    80005a1c:	00700713          	li	a4,7
    80005a20:	18e79e63          	bne	a5,a4,80005bbc <__memset+0x214>
    80005a24:	00b50323          	sb	a1,6(a0)
    80005a28:	00700e93          	li	t4,7
    80005a2c:	00859713          	slli	a4,a1,0x8
    80005a30:	00e5e733          	or	a4,a1,a4
    80005a34:	01059e13          	slli	t3,a1,0x10
    80005a38:	01c76e33          	or	t3,a4,t3
    80005a3c:	01859313          	slli	t1,a1,0x18
    80005a40:	006e6333          	or	t1,t3,t1
    80005a44:	02059893          	slli	a7,a1,0x20
    80005a48:	40f60e3b          	subw	t3,a2,a5
    80005a4c:	011368b3          	or	a7,t1,a7
    80005a50:	02859813          	slli	a6,a1,0x28
    80005a54:	0108e833          	or	a6,a7,a6
    80005a58:	03059693          	slli	a3,a1,0x30
    80005a5c:	003e589b          	srliw	a7,t3,0x3
    80005a60:	00d866b3          	or	a3,a6,a3
    80005a64:	03859713          	slli	a4,a1,0x38
    80005a68:	00389813          	slli	a6,a7,0x3
    80005a6c:	00f507b3          	add	a5,a0,a5
    80005a70:	00e6e733          	or	a4,a3,a4
    80005a74:	000e089b          	sext.w	a7,t3
    80005a78:	00f806b3          	add	a3,a6,a5
    80005a7c:	00e7b023          	sd	a4,0(a5)
    80005a80:	00878793          	addi	a5,a5,8
    80005a84:	fed79ce3          	bne	a5,a3,80005a7c <__memset+0xd4>
    80005a88:	ff8e7793          	andi	a5,t3,-8
    80005a8c:	0007871b          	sext.w	a4,a5
    80005a90:	01d787bb          	addw	a5,a5,t4
    80005a94:	0ce88e63          	beq	a7,a4,80005b70 <__memset+0x1c8>
    80005a98:	00f50733          	add	a4,a0,a5
    80005a9c:	00b70023          	sb	a1,0(a4)
    80005aa0:	0017871b          	addiw	a4,a5,1
    80005aa4:	0cc77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005aa8:	00e50733          	add	a4,a0,a4
    80005aac:	00b70023          	sb	a1,0(a4)
    80005ab0:	0027871b          	addiw	a4,a5,2
    80005ab4:	0ac77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005ab8:	00e50733          	add	a4,a0,a4
    80005abc:	00b70023          	sb	a1,0(a4)
    80005ac0:	0037871b          	addiw	a4,a5,3
    80005ac4:	0ac77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005ac8:	00e50733          	add	a4,a0,a4
    80005acc:	00b70023          	sb	a1,0(a4)
    80005ad0:	0047871b          	addiw	a4,a5,4
    80005ad4:	08c77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005ad8:	00e50733          	add	a4,a0,a4
    80005adc:	00b70023          	sb	a1,0(a4)
    80005ae0:	0057871b          	addiw	a4,a5,5
    80005ae4:	08c77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005ae8:	00e50733          	add	a4,a0,a4
    80005aec:	00b70023          	sb	a1,0(a4)
    80005af0:	0067871b          	addiw	a4,a5,6
    80005af4:	06c77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005af8:	00e50733          	add	a4,a0,a4
    80005afc:	00b70023          	sb	a1,0(a4)
    80005b00:	0077871b          	addiw	a4,a5,7
    80005b04:	06c77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b08:	00e50733          	add	a4,a0,a4
    80005b0c:	00b70023          	sb	a1,0(a4)
    80005b10:	0087871b          	addiw	a4,a5,8
    80005b14:	04c77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b18:	00e50733          	add	a4,a0,a4
    80005b1c:	00b70023          	sb	a1,0(a4)
    80005b20:	0097871b          	addiw	a4,a5,9
    80005b24:	04c77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b28:	00e50733          	add	a4,a0,a4
    80005b2c:	00b70023          	sb	a1,0(a4)
    80005b30:	00a7871b          	addiw	a4,a5,10
    80005b34:	02c77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b38:	00e50733          	add	a4,a0,a4
    80005b3c:	00b70023          	sb	a1,0(a4)
    80005b40:	00b7871b          	addiw	a4,a5,11
    80005b44:	02c77663          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b48:	00e50733          	add	a4,a0,a4
    80005b4c:	00b70023          	sb	a1,0(a4)
    80005b50:	00c7871b          	addiw	a4,a5,12
    80005b54:	00c77e63          	bgeu	a4,a2,80005b70 <__memset+0x1c8>
    80005b58:	00e50733          	add	a4,a0,a4
    80005b5c:	00b70023          	sb	a1,0(a4)
    80005b60:	00d7879b          	addiw	a5,a5,13
    80005b64:	00c7f663          	bgeu	a5,a2,80005b70 <__memset+0x1c8>
    80005b68:	00f507b3          	add	a5,a0,a5
    80005b6c:	00b78023          	sb	a1,0(a5)
    80005b70:	00813403          	ld	s0,8(sp)
    80005b74:	01010113          	addi	sp,sp,16
    80005b78:	00008067          	ret
    80005b7c:	00b00693          	li	a3,11
    80005b80:	e55ff06f          	j	800059d4 <__memset+0x2c>
    80005b84:	00300e93          	li	t4,3
    80005b88:	ea5ff06f          	j	80005a2c <__memset+0x84>
    80005b8c:	00100e93          	li	t4,1
    80005b90:	e9dff06f          	j	80005a2c <__memset+0x84>
    80005b94:	00000e93          	li	t4,0
    80005b98:	e95ff06f          	j	80005a2c <__memset+0x84>
    80005b9c:	00000793          	li	a5,0
    80005ba0:	ef9ff06f          	j	80005a98 <__memset+0xf0>
    80005ba4:	00200e93          	li	t4,2
    80005ba8:	e85ff06f          	j	80005a2c <__memset+0x84>
    80005bac:	00400e93          	li	t4,4
    80005bb0:	e7dff06f          	j	80005a2c <__memset+0x84>
    80005bb4:	00500e93          	li	t4,5
    80005bb8:	e75ff06f          	j	80005a2c <__memset+0x84>
    80005bbc:	00600e93          	li	t4,6
    80005bc0:	e6dff06f          	j	80005a2c <__memset+0x84>

0000000080005bc4 <__memmove>:
    80005bc4:	ff010113          	addi	sp,sp,-16
    80005bc8:	00813423          	sd	s0,8(sp)
    80005bcc:	01010413          	addi	s0,sp,16
    80005bd0:	0e060863          	beqz	a2,80005cc0 <__memmove+0xfc>
    80005bd4:	fff6069b          	addiw	a3,a2,-1
    80005bd8:	0006881b          	sext.w	a6,a3
    80005bdc:	0ea5e863          	bltu	a1,a0,80005ccc <__memmove+0x108>
    80005be0:	00758713          	addi	a4,a1,7
    80005be4:	00a5e7b3          	or	a5,a1,a0
    80005be8:	40a70733          	sub	a4,a4,a0
    80005bec:	0077f793          	andi	a5,a5,7
    80005bf0:	00f73713          	sltiu	a4,a4,15
    80005bf4:	00174713          	xori	a4,a4,1
    80005bf8:	0017b793          	seqz	a5,a5
    80005bfc:	00e7f7b3          	and	a5,a5,a4
    80005c00:	10078863          	beqz	a5,80005d10 <__memmove+0x14c>
    80005c04:	00900793          	li	a5,9
    80005c08:	1107f463          	bgeu	a5,a6,80005d10 <__memmove+0x14c>
    80005c0c:	0036581b          	srliw	a6,a2,0x3
    80005c10:	fff8081b          	addiw	a6,a6,-1
    80005c14:	02081813          	slli	a6,a6,0x20
    80005c18:	01d85893          	srli	a7,a6,0x1d
    80005c1c:	00858813          	addi	a6,a1,8
    80005c20:	00058793          	mv	a5,a1
    80005c24:	00050713          	mv	a4,a0
    80005c28:	01088833          	add	a6,a7,a6
    80005c2c:	0007b883          	ld	a7,0(a5)
    80005c30:	00878793          	addi	a5,a5,8
    80005c34:	00870713          	addi	a4,a4,8
    80005c38:	ff173c23          	sd	a7,-8(a4)
    80005c3c:	ff0798e3          	bne	a5,a6,80005c2c <__memmove+0x68>
    80005c40:	ff867713          	andi	a4,a2,-8
    80005c44:	02071793          	slli	a5,a4,0x20
    80005c48:	0207d793          	srli	a5,a5,0x20
    80005c4c:	00f585b3          	add	a1,a1,a5
    80005c50:	40e686bb          	subw	a3,a3,a4
    80005c54:	00f507b3          	add	a5,a0,a5
    80005c58:	06e60463          	beq	a2,a4,80005cc0 <__memmove+0xfc>
    80005c5c:	0005c703          	lbu	a4,0(a1)
    80005c60:	00e78023          	sb	a4,0(a5)
    80005c64:	04068e63          	beqz	a3,80005cc0 <__memmove+0xfc>
    80005c68:	0015c603          	lbu	a2,1(a1)
    80005c6c:	00100713          	li	a4,1
    80005c70:	00c780a3          	sb	a2,1(a5)
    80005c74:	04e68663          	beq	a3,a4,80005cc0 <__memmove+0xfc>
    80005c78:	0025c603          	lbu	a2,2(a1)
    80005c7c:	00200713          	li	a4,2
    80005c80:	00c78123          	sb	a2,2(a5)
    80005c84:	02e68e63          	beq	a3,a4,80005cc0 <__memmove+0xfc>
    80005c88:	0035c603          	lbu	a2,3(a1)
    80005c8c:	00300713          	li	a4,3
    80005c90:	00c781a3          	sb	a2,3(a5)
    80005c94:	02e68663          	beq	a3,a4,80005cc0 <__memmove+0xfc>
    80005c98:	0045c603          	lbu	a2,4(a1)
    80005c9c:	00400713          	li	a4,4
    80005ca0:	00c78223          	sb	a2,4(a5)
    80005ca4:	00e68e63          	beq	a3,a4,80005cc0 <__memmove+0xfc>
    80005ca8:	0055c603          	lbu	a2,5(a1)
    80005cac:	00500713          	li	a4,5
    80005cb0:	00c782a3          	sb	a2,5(a5)
    80005cb4:	00e68663          	beq	a3,a4,80005cc0 <__memmove+0xfc>
    80005cb8:	0065c703          	lbu	a4,6(a1)
    80005cbc:	00e78323          	sb	a4,6(a5)
    80005cc0:	00813403          	ld	s0,8(sp)
    80005cc4:	01010113          	addi	sp,sp,16
    80005cc8:	00008067          	ret
    80005ccc:	02061713          	slli	a4,a2,0x20
    80005cd0:	02075713          	srli	a4,a4,0x20
    80005cd4:	00e587b3          	add	a5,a1,a4
    80005cd8:	f0f574e3          	bgeu	a0,a5,80005be0 <__memmove+0x1c>
    80005cdc:	02069613          	slli	a2,a3,0x20
    80005ce0:	02065613          	srli	a2,a2,0x20
    80005ce4:	fff64613          	not	a2,a2
    80005ce8:	00e50733          	add	a4,a0,a4
    80005cec:	00c78633          	add	a2,a5,a2
    80005cf0:	fff7c683          	lbu	a3,-1(a5)
    80005cf4:	fff78793          	addi	a5,a5,-1
    80005cf8:	fff70713          	addi	a4,a4,-1
    80005cfc:	00d70023          	sb	a3,0(a4)
    80005d00:	fec798e3          	bne	a5,a2,80005cf0 <__memmove+0x12c>
    80005d04:	00813403          	ld	s0,8(sp)
    80005d08:	01010113          	addi	sp,sp,16
    80005d0c:	00008067          	ret
    80005d10:	02069713          	slli	a4,a3,0x20
    80005d14:	02075713          	srli	a4,a4,0x20
    80005d18:	00170713          	addi	a4,a4,1
    80005d1c:	00e50733          	add	a4,a0,a4
    80005d20:	00050793          	mv	a5,a0
    80005d24:	0005c683          	lbu	a3,0(a1)
    80005d28:	00178793          	addi	a5,a5,1
    80005d2c:	00158593          	addi	a1,a1,1
    80005d30:	fed78fa3          	sb	a3,-1(a5)
    80005d34:	fee798e3          	bne	a5,a4,80005d24 <__memmove+0x160>
    80005d38:	f89ff06f          	j	80005cc0 <__memmove+0xfc>

0000000080005d3c <__putc>:
    80005d3c:	fe010113          	addi	sp,sp,-32
    80005d40:	00813823          	sd	s0,16(sp)
    80005d44:	00113c23          	sd	ra,24(sp)
    80005d48:	02010413          	addi	s0,sp,32
    80005d4c:	00050793          	mv	a5,a0
    80005d50:	fef40593          	addi	a1,s0,-17
    80005d54:	00100613          	li	a2,1
    80005d58:	00000513          	li	a0,0
    80005d5c:	fef407a3          	sb	a5,-17(s0)
    80005d60:	fffff097          	auipc	ra,0xfffff
    80005d64:	b3c080e7          	jalr	-1220(ra) # 8000489c <console_write>
    80005d68:	01813083          	ld	ra,24(sp)
    80005d6c:	01013403          	ld	s0,16(sp)
    80005d70:	02010113          	addi	sp,sp,32
    80005d74:	00008067          	ret

0000000080005d78 <__getc>:
    80005d78:	fe010113          	addi	sp,sp,-32
    80005d7c:	00813823          	sd	s0,16(sp)
    80005d80:	00113c23          	sd	ra,24(sp)
    80005d84:	02010413          	addi	s0,sp,32
    80005d88:	fe840593          	addi	a1,s0,-24
    80005d8c:	00100613          	li	a2,1
    80005d90:	00000513          	li	a0,0
    80005d94:	fffff097          	auipc	ra,0xfffff
    80005d98:	ae8080e7          	jalr	-1304(ra) # 8000487c <console_read>
    80005d9c:	fe844503          	lbu	a0,-24(s0)
    80005da0:	01813083          	ld	ra,24(sp)
    80005da4:	01013403          	ld	s0,16(sp)
    80005da8:	02010113          	addi	sp,sp,32
    80005dac:	00008067          	ret

0000000080005db0 <console_handler>:
    80005db0:	fe010113          	addi	sp,sp,-32
    80005db4:	00813823          	sd	s0,16(sp)
    80005db8:	00113c23          	sd	ra,24(sp)
    80005dbc:	00913423          	sd	s1,8(sp)
    80005dc0:	02010413          	addi	s0,sp,32
    80005dc4:	14202773          	csrr	a4,scause
    80005dc8:	100027f3          	csrr	a5,sstatus
    80005dcc:	0027f793          	andi	a5,a5,2
    80005dd0:	06079e63          	bnez	a5,80005e4c <console_handler+0x9c>
    80005dd4:	00074c63          	bltz	a4,80005dec <console_handler+0x3c>
    80005dd8:	01813083          	ld	ra,24(sp)
    80005ddc:	01013403          	ld	s0,16(sp)
    80005de0:	00813483          	ld	s1,8(sp)
    80005de4:	02010113          	addi	sp,sp,32
    80005de8:	00008067          	ret
    80005dec:	0ff77713          	andi	a4,a4,255
    80005df0:	00900793          	li	a5,9
    80005df4:	fef712e3          	bne	a4,a5,80005dd8 <console_handler+0x28>
    80005df8:	ffffe097          	auipc	ra,0xffffe
    80005dfc:	6dc080e7          	jalr	1756(ra) # 800044d4 <plic_claim>
    80005e00:	00a00793          	li	a5,10
    80005e04:	00050493          	mv	s1,a0
    80005e08:	02f50c63          	beq	a0,a5,80005e40 <console_handler+0x90>
    80005e0c:	fc0506e3          	beqz	a0,80005dd8 <console_handler+0x28>
    80005e10:	00050593          	mv	a1,a0
    80005e14:	00000517          	auipc	a0,0x0
    80005e18:	40450513          	addi	a0,a0,1028 # 80006218 <CONSOLE_STATUS+0x208>
    80005e1c:	fffff097          	auipc	ra,0xfffff
    80005e20:	afc080e7          	jalr	-1284(ra) # 80004918 <__printf>
    80005e24:	01013403          	ld	s0,16(sp)
    80005e28:	01813083          	ld	ra,24(sp)
    80005e2c:	00048513          	mv	a0,s1
    80005e30:	00813483          	ld	s1,8(sp)
    80005e34:	02010113          	addi	sp,sp,32
    80005e38:	ffffe317          	auipc	t1,0xffffe
    80005e3c:	6d430067          	jr	1748(t1) # 8000450c <plic_complete>
    80005e40:	fffff097          	auipc	ra,0xfffff
    80005e44:	3e0080e7          	jalr	992(ra) # 80005220 <uartintr>
    80005e48:	fddff06f          	j	80005e24 <console_handler+0x74>
    80005e4c:	00000517          	auipc	a0,0x0
    80005e50:	4cc50513          	addi	a0,a0,1228 # 80006318 <digits+0x78>
    80005e54:	fffff097          	auipc	ra,0xfffff
    80005e58:	a68080e7          	jalr	-1432(ra) # 800048bc <panic>
	...
