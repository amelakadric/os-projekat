
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	6c813103          	ld	sp,1736(sp) # 800076c8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	069030ef          	jal	ra,80003884 <start>

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
    80001170:	2f4010ef          	jal	ra,80002464 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001424:	00004097          	auipc	ra,0x4
    80001428:	564080e7          	jalr	1380(ra) # 80005988 <__getc>
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
    8000144c:	00004097          	auipc	ra,0x4
    80001450:	500080e7          	jalr	1280(ra) # 8000594c <__putc>
}
    80001454:	00813083          	ld	ra,8(sp)
    80001458:	00013403          	ld	s0,0(sp)
    8000145c:	01010113          	addi	sp,sp,16
    80001460:	00008067          	ret

0000000080001464 <_ZN10Ksemaphore5blockEv>:
#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    80001464:	fe010113          	addi	sp,sp,-32
    80001468:	00113c23          	sd	ra,24(sp)
    8000146c:	00813823          	sd	s0,16(sp)
    80001470:	00913423          	sd	s1,8(sp)
    80001474:	01213023          	sd	s2,0(sp)
    80001478:	02010413          	addi	s0,sp,32
    8000147c:	00050493          	mv	s1,a0
    TCB* tr=TCB::running;
    80001480:	00006797          	auipc	a5,0x6
    80001484:	2507b783          	ld	a5,592(a5) # 800076d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001488:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    8000148c:	01000513          	li	a0,16
    80001490:	00001097          	auipc	ra,0x1
    80001494:	e68080e7          	jalr	-408(ra) # 800022f8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001498:	01253023          	sd	s2,0(a0)
    8000149c:	00053423          	sd	zero,8(a0)
        if (tail)
    800014a0:	0104b783          	ld	a5,16(s1)
    800014a4:	02078263          	beqz	a5,800014c8 <_ZN10Ksemaphore5blockEv+0x64>
        {
            tail->next = elem;
    800014a8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014ac:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(tr);
}
    800014b0:	01813083          	ld	ra,24(sp)
    800014b4:	01013403          	ld	s0,16(sp)
    800014b8:	00813483          	ld	s1,8(sp)
    800014bc:	00013903          	ld	s2,0(sp)
    800014c0:	02010113          	addi	sp,sp,32
    800014c4:	00008067          	ret
        } else
        {
            head = tail = elem;
    800014c8:	00a4b823          	sd	a0,16(s1)
    800014cc:	00a4b423          	sd	a0,8(s1)
    800014d0:	fe1ff06f          	j	800014b0 <_ZN10Ksemaphore5blockEv+0x4c>

00000000800014d4 <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    800014d4:	ff010113          	addi	sp,sp,-16
    800014d8:	00113423          	sd	ra,8(sp)
    800014dc:	00813023          	sd	s0,0(sp)
    800014e0:	01010413          	addi	s0,sp,16
    800014e4:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800014e8:	00853503          	ld	a0,8(a0)
    800014ec:	00050a63          	beqz	a0,80001500 <_ZN10Ksemaphore7unblockEv+0x2c>

        Elem *elem = head;
        head = head->next;
    800014f0:	00853703          	ld	a4,8(a0)
    800014f4:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800014f8:	02070063          	beqz	a4,80001518 <_ZN10Ksemaphore7unblockEv+0x44>

        T *ret = elem->data;
    800014fc:	00053503          	ld	a0,0(a0)
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    80001500:	00001097          	auipc	ra,0x1
    80001504:	628080e7          	jalr	1576(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
}
    80001508:	00813083          	ld	ra,8(sp)
    8000150c:	00013403          	ld	s0,0(sp)
    80001510:	01010113          	addi	sp,sp,16
    80001514:	00008067          	ret
        if (!head) { tail = 0; }
    80001518:	0007b823          	sd	zero,16(a5)
    8000151c:	fe1ff06f          	j	800014fc <_ZN10Ksemaphore7unblockEv+0x28>

0000000080001520 <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    80001520:	00052783          	lw	a5,0(a0)
    80001524:	fff7879b          	addiw	a5,a5,-1
    80001528:	00f52023          	sw	a5,0(a0)
    8000152c:	02079713          	slli	a4,a5,0x20
    80001530:	00074663          	bltz	a4,8000153c <_ZN10Ksemaphore4waitEv+0x1c>
        block();
        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 1;
    80001534:	00100513          	li	a0,1
}
    80001538:	00008067          	ret
int Ksemaphore::wait() {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00113423          	sd	ra,8(sp)
    80001544:	00813023          	sd	s0,0(sp)
    80001548:	01010413          	addi	s0,sp,16
        block();
    8000154c:	00000097          	auipc	ra,0x0
    80001550:	f18080e7          	jalr	-232(ra) # 80001464 <_ZN10Ksemaphore5blockEv>
        TCB::dispatchWithoutScheduler();
    80001554:	00001097          	auipc	ra,0x1
    80001558:	2d4080e7          	jalr	724(ra) # 80002828 <_ZN3TCB24dispatchWithoutSchedulerEv>
        return 0;
    8000155c:	00000513          	li	a0,0
}
    80001560:	00813083          	ld	ra,8(sp)
    80001564:	00013403          	ld	s0,0(sp)
    80001568:	01010113          	addi	sp,sp,16
    8000156c:	00008067          	ret

0000000080001570 <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    80001570:	00052783          	lw	a5,0(a0)
    80001574:	0017879b          	addiw	a5,a5,1
    80001578:	0007871b          	sext.w	a4,a5
    8000157c:	00f52023          	sw	a5,0(a0)
    80001580:	00e05663          	blez	a4,8000158c <_ZN10Ksemaphore6signalEv+0x1c>
        unblock();
        return 0;
    }
    return 1;
    80001584:	00100513          	li	a0,1
}
    80001588:	00008067          	ret
int Ksemaphore::signal() {
    8000158c:	ff010113          	addi	sp,sp,-16
    80001590:	00113423          	sd	ra,8(sp)
    80001594:	00813023          	sd	s0,0(sp)
    80001598:	01010413          	addi	s0,sp,16
        unblock();
    8000159c:	00000097          	auipc	ra,0x0
    800015a0:	f38080e7          	jalr	-200(ra) # 800014d4 <_ZN10Ksemaphore7unblockEv>
        return 0;
    800015a4:	00000513          	li	a0,0
}
    800015a8:	00813083          	ld	ra,8(sp)
    800015ac:	00013403          	ld	s0,0(sp)
    800015b0:	01010113          	addi	sp,sp,16
    800015b4:	00008067          	ret

00000000800015b8 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    800015b8:	fe010113          	addi	sp,sp,-32
    800015bc:	00113c23          	sd	ra,24(sp)
    800015c0:	00813823          	sd	s0,16(sp)
    800015c4:	00913423          	sd	s1,8(sp)
    800015c8:	02010413          	addi	s0,sp,32
    800015cc:	00050493          	mv	s1,a0
    800015d0:	0180006f          	j	800015e8 <_ZN10Ksemaphore14closeSemaphoreEv+0x30>
    800015d4:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    800015d8:	0007b503          	ld	a0,0(a5)
    TCB* tcb;
    while((tcb=blocked.removeFirst())!= nullptr){
    800015dc:	02050263          	beqz	a0,80001600 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
//        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	548080e7          	jalr	1352(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    800015e8:	0084b783          	ld	a5,8(s1)
    800015ec:	00078a63          	beqz	a5,80001600 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
        head = head->next;
    800015f0:	0087b703          	ld	a4,8(a5)
    800015f4:	00e4b423          	sd	a4,8(s1)
        if (!head) { tail = 0; }
    800015f8:	fe0710e3          	bnez	a4,800015d8 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    800015fc:	fd9ff06f          	j	800015d4 <_ZN10Ksemaphore14closeSemaphoreEv+0x1c>
    }

    return 0;
}
    80001600:	00000513          	li	a0,0
    80001604:	01813083          	ld	ra,24(sp)
    80001608:	01013403          	ld	s0,16(sp)
    8000160c:	00813483          	ld	s1,8(sp)
    80001610:	02010113          	addi	sp,sp,32
    80001614:	00008067          	ret

0000000080001618 <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00113423          	sd	ra,8(sp)
    80001620:	00813023          	sd	s0,0(sp)
    80001624:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	6a8080e7          	jalr	1704(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001630:	00813083          	ld	ra,8(sp)
    80001634:	00013403          	ld	s0,0(sp)
    80001638:	01010113          	addi	sp,sp,16
    8000163c:	00008067          	ret

0000000080001640 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    80001640:	ff010113          	addi	sp,sp,-16
    80001644:	00113423          	sd	ra,8(sp)
    80001648:	00813023          	sd	s0,0(sp)
    8000164c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    80001650:	01800513          	li	a0,24
    80001654:	00001097          	auipc	ra,0x1
    80001658:	5e0080e7          	jalr	1504(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
}
    8000165c:	00813083          	ld	ra,8(sp)
    80001660:	00013403          	ld	s0,0(sp)
    80001664:	01010113          	addi	sp,sp,16
    80001668:	00008067          	ret

000000008000166c <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    8000166c:	fe010113          	addi	sp,sp,-32
    80001670:	00113c23          	sd	ra,24(sp)
    80001674:	00813823          	sd	s0,16(sp)
    80001678:	00913423          	sd	s1,8(sp)
    8000167c:	02010413          	addi	s0,sp,32
    80001680:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    80001684:	01800513          	li	a0,24
    80001688:	00000097          	auipc	ra,0x0
    8000168c:	fb8080e7          	jalr	-72(ra) # 80001640 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    80001690:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    80001694:	00053423          	sd	zero,8(a0)
    80001698:	00053823          	sd	zero,16(a0)
}
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret

00000000800016b0 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    800016b0:	fe010113          	addi	sp,sp,-32
    800016b4:	00113c23          	sd	ra,24(sp)
    800016b8:	00813823          	sd	s0,16(sp)
    800016bc:	00913423          	sd	s1,8(sp)
    800016c0:	01213023          	sd	s2,0(sp)
    800016c4:	02010413          	addi	s0,sp,32
    800016c8:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    800016cc:	00100793          	li	a5,1
    800016d0:	02a7f863          	bgeu	a5,a0,80001700 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800016d4:	00a00793          	li	a5,10
    800016d8:	02f577b3          	remu	a5,a0,a5
    800016dc:	02078e63          	beqz	a5,80001718 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800016e0:	fff48513          	addi	a0,s1,-1
    800016e4:	00000097          	auipc	ra,0x0
    800016e8:	fcc080e7          	jalr	-52(ra) # 800016b0 <_Z9fibonaccim>
    800016ec:	00050913          	mv	s2,a0
    800016f0:	ffe48513          	addi	a0,s1,-2
    800016f4:	00000097          	auipc	ra,0x0
    800016f8:	fbc080e7          	jalr	-68(ra) # 800016b0 <_Z9fibonaccim>
    800016fc:	00a90533          	add	a0,s2,a0
}
    80001700:	01813083          	ld	ra,24(sp)
    80001704:	01013403          	ld	s0,16(sp)
    80001708:	00813483          	ld	s1,8(sp)
    8000170c:	00013903          	ld	s2,0(sp)
    80001710:	02010113          	addi	sp,sp,32
    80001714:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	bcc080e7          	jalr	-1076(ra) # 800012e4 <_Z15thread_dispatchv>
    80001720:	fc1ff06f          	j	800016e0 <_Z9fibonaccim+0x30>

0000000080001724 <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    80001724:	fe010113          	addi	sp,sp,-32
    80001728:	00113c23          	sd	ra,24(sp)
    8000172c:	00813823          	sd	s0,16(sp)
    80001730:	00913423          	sd	s1,8(sp)
    80001734:	01213023          	sd	s2,0(sp)
    80001738:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    8000173c:	00000913          	li	s2,0
    80001740:	0380006f          	j	80001778 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001744:	00000097          	auipc	ra,0x0
    80001748:	ba0080e7          	jalr	-1120(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    8000174c:	00148493          	addi	s1,s1,1
    80001750:	000027b7          	lui	a5,0x2
    80001754:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001758:	0097ee63          	bltu	a5,s1,80001774 <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    8000175c:	00000713          	li	a4,0
    80001760:	000077b7          	lui	a5,0x7
    80001764:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001768:	fce7eee3          	bltu	a5,a4,80001744 <_ZN7WorkerA11workerBodyAEPv+0x20>
    8000176c:	00170713          	addi	a4,a4,1
    80001770:	ff1ff06f          	j	80001760 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    80001774:	00190913          	addi	s2,s2,1
    80001778:	00900793          	li	a5,9
    8000177c:	0527e063          	bltu	a5,s2,800017bc <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80001780:	00005517          	auipc	a0,0x5
    80001784:	8a050513          	addi	a0,a0,-1888 # 80006020 <CONSOLE_STATUS+0x10>
    80001788:	00001097          	auipc	ra,0x1
    8000178c:	738080e7          	jalr	1848(ra) # 80002ec0 <_Z11printStringPKc>
    80001790:	00000613          	li	a2,0
    80001794:	00a00593          	li	a1,10
    80001798:	0009051b          	sext.w	a0,s2
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	8bc080e7          	jalr	-1860(ra) # 80003058 <_Z8printIntiii>
    800017a4:	00005517          	auipc	a0,0x5
    800017a8:	a9c50513          	addi	a0,a0,-1380 # 80006240 <CONSOLE_STATUS+0x230>
    800017ac:	00001097          	auipc	ra,0x1
    800017b0:	714080e7          	jalr	1812(ra) # 80002ec0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800017b4:	00000493          	li	s1,0
    800017b8:	f99ff06f          	j	80001750 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    800017bc:	00005517          	auipc	a0,0x5
    800017c0:	86c50513          	addi	a0,a0,-1940 # 80006028 <CONSOLE_STATUS+0x18>
    800017c4:	00001097          	auipc	ra,0x1
    800017c8:	6fc080e7          	jalr	1788(ra) # 80002ec0 <_Z11printStringPKc>
    finishedA = true;
    800017cc:	00100793          	li	a5,1
    800017d0:	00006717          	auipc	a4,0x6
    800017d4:	f6f70023          	sb	a5,-160(a4) # 80007730 <finishedA>
}
    800017d8:	01813083          	ld	ra,24(sp)
    800017dc:	01013403          	ld	s0,16(sp)
    800017e0:	00813483          	ld	s1,8(sp)
    800017e4:	00013903          	ld	s2,0(sp)
    800017e8:	02010113          	addi	sp,sp,32
    800017ec:	00008067          	ret

00000000800017f0 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    800017f0:	fe010113          	addi	sp,sp,-32
    800017f4:	00113c23          	sd	ra,24(sp)
    800017f8:	00813823          	sd	s0,16(sp)
    800017fc:	00913423          	sd	s1,8(sp)
    80001800:	01213023          	sd	s2,0(sp)
    80001804:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001808:	00000913          	li	s2,0
    8000180c:	0380006f          	j	80001844 <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001810:	00000097          	auipc	ra,0x0
    80001814:	ad4080e7          	jalr	-1324(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001818:	00148493          	addi	s1,s1,1
    8000181c:	000027b7          	lui	a5,0x2
    80001820:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001824:	0097ee63          	bltu	a5,s1,80001840 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001828:	00000713          	li	a4,0
    8000182c:	000077b7          	lui	a5,0x7
    80001830:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001834:	fce7eee3          	bltu	a5,a4,80001810 <_ZN7WorkerB11workerBodyBEPv+0x20>
    80001838:	00170713          	addi	a4,a4,1
    8000183c:	ff1ff06f          	j	8000182c <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    80001840:	00190913          	addi	s2,s2,1
    80001844:	00f00793          	li	a5,15
    80001848:	0527e063          	bltu	a5,s2,80001888 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    8000184c:	00004517          	auipc	a0,0x4
    80001850:	7ec50513          	addi	a0,a0,2028 # 80006038 <CONSOLE_STATUS+0x28>
    80001854:	00001097          	auipc	ra,0x1
    80001858:	66c080e7          	jalr	1644(ra) # 80002ec0 <_Z11printStringPKc>
    8000185c:	00000613          	li	a2,0
    80001860:	00a00593          	li	a1,10
    80001864:	0009051b          	sext.w	a0,s2
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	7f0080e7          	jalr	2032(ra) # 80003058 <_Z8printIntiii>
    80001870:	00005517          	auipc	a0,0x5
    80001874:	9d050513          	addi	a0,a0,-1584 # 80006240 <CONSOLE_STATUS+0x230>
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	648080e7          	jalr	1608(ra) # 80002ec0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001880:	00000493          	li	s1,0
    80001884:	f99ff06f          	j	8000181c <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    80001888:	00004517          	auipc	a0,0x4
    8000188c:	7b850513          	addi	a0,a0,1976 # 80006040 <CONSOLE_STATUS+0x30>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	630080e7          	jalr	1584(ra) # 80002ec0 <_Z11printStringPKc>
    finishedB = true;
    80001898:	00100793          	li	a5,1
    8000189c:	00006717          	auipc	a4,0x6
    800018a0:	e8f70aa3          	sb	a5,-363(a4) # 80007731 <finishedB>
    thread_dispatch();
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	a40080e7          	jalr	-1472(ra) # 800012e4 <_Z15thread_dispatchv>
}
    800018ac:	01813083          	ld	ra,24(sp)
    800018b0:	01013403          	ld	s0,16(sp)
    800018b4:	00813483          	ld	s1,8(sp)
    800018b8:	00013903          	ld	s2,0(sp)
    800018bc:	02010113          	addi	sp,sp,32
    800018c0:	00008067          	ret

00000000800018c4 <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    800018c4:	fe010113          	addi	sp,sp,-32
    800018c8:	00113c23          	sd	ra,24(sp)
    800018cc:	00813823          	sd	s0,16(sp)
    800018d0:	00913423          	sd	s1,8(sp)
    800018d4:	01213023          	sd	s2,0(sp)
    800018d8:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800018dc:	00000493          	li	s1,0
    800018e0:	0400006f          	j	80001920 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800018e4:	00004517          	auipc	a0,0x4
    800018e8:	76c50513          	addi	a0,a0,1900 # 80006050 <CONSOLE_STATUS+0x40>
    800018ec:	00001097          	auipc	ra,0x1
    800018f0:	5d4080e7          	jalr	1492(ra) # 80002ec0 <_Z11printStringPKc>
    800018f4:	00000613          	li	a2,0
    800018f8:	00a00593          	li	a1,10
    800018fc:	00048513          	mv	a0,s1
    80001900:	00001097          	auipc	ra,0x1
    80001904:	758080e7          	jalr	1880(ra) # 80003058 <_Z8printIntiii>
    80001908:	00005517          	auipc	a0,0x5
    8000190c:	93850513          	addi	a0,a0,-1736 # 80006240 <CONSOLE_STATUS+0x230>
    80001910:	00001097          	auipc	ra,0x1
    80001914:	5b0080e7          	jalr	1456(ra) # 80002ec0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001918:	0014849b          	addiw	s1,s1,1
    8000191c:	0ff4f493          	andi	s1,s1,255
    80001920:	00200793          	li	a5,2
    80001924:	fc97f0e3          	bgeu	a5,s1,800018e4 <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001928:	00004517          	auipc	a0,0x4
    8000192c:	73050513          	addi	a0,a0,1840 # 80006058 <CONSOLE_STATUS+0x48>
    80001930:	00001097          	auipc	ra,0x1
    80001934:	590080e7          	jalr	1424(ra) # 80002ec0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80001938:	00700313          	li	t1,7
    thread_dispatch();
    8000193c:	00000097          	auipc	ra,0x0
    80001940:	9a8080e7          	jalr	-1624(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001944:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80001948:	00004517          	auipc	a0,0x4
    8000194c:	72050513          	addi	a0,a0,1824 # 80006068 <CONSOLE_STATUS+0x58>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	570080e7          	jalr	1392(ra) # 80002ec0 <_Z11printStringPKc>
    80001958:	00000613          	li	a2,0
    8000195c:	00a00593          	li	a1,10
    80001960:	0009051b          	sext.w	a0,s2
    80001964:	00001097          	auipc	ra,0x1
    80001968:	6f4080e7          	jalr	1780(ra) # 80003058 <_Z8printIntiii>
    8000196c:	00005517          	auipc	a0,0x5
    80001970:	8d450513          	addi	a0,a0,-1836 # 80006240 <CONSOLE_STATUS+0x230>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	54c080e7          	jalr	1356(ra) # 80002ec0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    8000197c:	00c00513          	li	a0,12
    80001980:	00000097          	auipc	ra,0x0
    80001984:	d30080e7          	jalr	-720(ra) # 800016b0 <_Z9fibonaccim>
    80001988:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    8000198c:	00004517          	auipc	a0,0x4
    80001990:	6e450513          	addi	a0,a0,1764 # 80006070 <CONSOLE_STATUS+0x60>
    80001994:	00001097          	auipc	ra,0x1
    80001998:	52c080e7          	jalr	1324(ra) # 80002ec0 <_Z11printStringPKc>
    8000199c:	00000613          	li	a2,0
    800019a0:	00a00593          	li	a1,10
    800019a4:	0009051b          	sext.w	a0,s2
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	6b0080e7          	jalr	1712(ra) # 80003058 <_Z8printIntiii>
    800019b0:	00005517          	auipc	a0,0x5
    800019b4:	89050513          	addi	a0,a0,-1904 # 80006240 <CONSOLE_STATUS+0x230>
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	508080e7          	jalr	1288(ra) # 80002ec0 <_Z11printStringPKc>
    800019c0:	0400006f          	j	80001a00 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800019c4:	00004517          	auipc	a0,0x4
    800019c8:	68c50513          	addi	a0,a0,1676 # 80006050 <CONSOLE_STATUS+0x40>
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	4f4080e7          	jalr	1268(ra) # 80002ec0 <_Z11printStringPKc>
    800019d4:	00000613          	li	a2,0
    800019d8:	00a00593          	li	a1,10
    800019dc:	00048513          	mv	a0,s1
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	678080e7          	jalr	1656(ra) # 80003058 <_Z8printIntiii>
    800019e8:	00005517          	auipc	a0,0x5
    800019ec:	85850513          	addi	a0,a0,-1960 # 80006240 <CONSOLE_STATUS+0x230>
    800019f0:	00001097          	auipc	ra,0x1
    800019f4:	4d0080e7          	jalr	1232(ra) # 80002ec0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800019f8:	0014849b          	addiw	s1,s1,1
    800019fc:	0ff4f493          	andi	s1,s1,255
    80001a00:	00500793          	li	a5,5
    80001a04:	fc97f0e3          	bgeu	a5,s1,800019c4 <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80001a08:	00004517          	auipc	a0,0x4
    80001a0c:	62050513          	addi	a0,a0,1568 # 80006028 <CONSOLE_STATUS+0x18>
    80001a10:	00001097          	auipc	ra,0x1
    80001a14:	4b0080e7          	jalr	1200(ra) # 80002ec0 <_Z11printStringPKc>
    finishedC = true;
    80001a18:	00100793          	li	a5,1
    80001a1c:	00006717          	auipc	a4,0x6
    80001a20:	d0f70b23          	sb	a5,-746(a4) # 80007732 <finishedC>
    thread_dispatch();
    80001a24:	00000097          	auipc	ra,0x0
    80001a28:	8c0080e7          	jalr	-1856(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001a2c:	01813083          	ld	ra,24(sp)
    80001a30:	01013403          	ld	s0,16(sp)
    80001a34:	00813483          	ld	s1,8(sp)
    80001a38:	00013903          	ld	s2,0(sp)
    80001a3c:	02010113          	addi	sp,sp,32
    80001a40:	00008067          	ret

0000000080001a44 <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80001a44:	fe010113          	addi	sp,sp,-32
    80001a48:	00113c23          	sd	ra,24(sp)
    80001a4c:	00813823          	sd	s0,16(sp)
    80001a50:	00913423          	sd	s1,8(sp)
    80001a54:	01213023          	sd	s2,0(sp)
    80001a58:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001a5c:	00a00493          	li	s1,10
    80001a60:	0400006f          	j	80001aa0 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001a64:	00004517          	auipc	a0,0x4
    80001a68:	61c50513          	addi	a0,a0,1564 # 80006080 <CONSOLE_STATUS+0x70>
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	454080e7          	jalr	1108(ra) # 80002ec0 <_Z11printStringPKc>
    80001a74:	00000613          	li	a2,0
    80001a78:	00a00593          	li	a1,10
    80001a7c:	00048513          	mv	a0,s1
    80001a80:	00001097          	auipc	ra,0x1
    80001a84:	5d8080e7          	jalr	1496(ra) # 80003058 <_Z8printIntiii>
    80001a88:	00004517          	auipc	a0,0x4
    80001a8c:	7b850513          	addi	a0,a0,1976 # 80006240 <CONSOLE_STATUS+0x230>
    80001a90:	00001097          	auipc	ra,0x1
    80001a94:	430080e7          	jalr	1072(ra) # 80002ec0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001a98:	0014849b          	addiw	s1,s1,1
    80001a9c:	0ff4f493          	andi	s1,s1,255
    80001aa0:	00c00793          	li	a5,12
    80001aa4:	fc97f0e3          	bgeu	a5,s1,80001a64 <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001aa8:	00004517          	auipc	a0,0x4
    80001aac:	5e050513          	addi	a0,a0,1504 # 80006088 <CONSOLE_STATUS+0x78>
    80001ab0:	00001097          	auipc	ra,0x1
    80001ab4:	410080e7          	jalr	1040(ra) # 80002ec0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001ab8:	00500313          	li	t1,5
    thread_dispatch();
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	828080e7          	jalr	-2008(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001ac4:	01000513          	li	a0,16
    80001ac8:	00000097          	auipc	ra,0x0
    80001acc:	be8080e7          	jalr	-1048(ra) # 800016b0 <_Z9fibonaccim>
    80001ad0:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001ad4:	00004517          	auipc	a0,0x4
    80001ad8:	5c450513          	addi	a0,a0,1476 # 80006098 <CONSOLE_STATUS+0x88>
    80001adc:	00001097          	auipc	ra,0x1
    80001ae0:	3e4080e7          	jalr	996(ra) # 80002ec0 <_Z11printStringPKc>
    80001ae4:	00000613          	li	a2,0
    80001ae8:	00a00593          	li	a1,10
    80001aec:	0009051b          	sext.w	a0,s2
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	568080e7          	jalr	1384(ra) # 80003058 <_Z8printIntiii>
    80001af8:	00004517          	auipc	a0,0x4
    80001afc:	74850513          	addi	a0,a0,1864 # 80006240 <CONSOLE_STATUS+0x230>
    80001b00:	00001097          	auipc	ra,0x1
    80001b04:	3c0080e7          	jalr	960(ra) # 80002ec0 <_Z11printStringPKc>
    80001b08:	0400006f          	j	80001b48 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001b0c:	00004517          	auipc	a0,0x4
    80001b10:	57450513          	addi	a0,a0,1396 # 80006080 <CONSOLE_STATUS+0x70>
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	3ac080e7          	jalr	940(ra) # 80002ec0 <_Z11printStringPKc>
    80001b1c:	00000613          	li	a2,0
    80001b20:	00a00593          	li	a1,10
    80001b24:	00048513          	mv	a0,s1
    80001b28:	00001097          	auipc	ra,0x1
    80001b2c:	530080e7          	jalr	1328(ra) # 80003058 <_Z8printIntiii>
    80001b30:	00004517          	auipc	a0,0x4
    80001b34:	71050513          	addi	a0,a0,1808 # 80006240 <CONSOLE_STATUS+0x230>
    80001b38:	00001097          	auipc	ra,0x1
    80001b3c:	388080e7          	jalr	904(ra) # 80002ec0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001b40:	0014849b          	addiw	s1,s1,1
    80001b44:	0ff4f493          	andi	s1,s1,255
    80001b48:	00f00793          	li	a5,15
    80001b4c:	fc97f0e3          	bgeu	a5,s1,80001b0c <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80001b50:	00004517          	auipc	a0,0x4
    80001b54:	55850513          	addi	a0,a0,1368 # 800060a8 <CONSOLE_STATUS+0x98>
    80001b58:	00001097          	auipc	ra,0x1
    80001b5c:	368080e7          	jalr	872(ra) # 80002ec0 <_Z11printStringPKc>
    finishedD = true;
    80001b60:	00100793          	li	a5,1
    80001b64:	00006717          	auipc	a4,0x6
    80001b68:	bcf707a3          	sb	a5,-1073(a4) # 80007733 <finishedD>
    thread_dispatch();
    80001b6c:	fffff097          	auipc	ra,0xfffff
    80001b70:	778080e7          	jalr	1912(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001b74:	01813083          	ld	ra,24(sp)
    80001b78:	01013403          	ld	s0,16(sp)
    80001b7c:	00813483          	ld	s1,8(sp)
    80001b80:	00013903          	ld	s2,0(sp)
    80001b84:	02010113          	addi	sp,sp,32
    80001b88:	00008067          	ret

0000000080001b8c <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001b8c:	fc010113          	addi	sp,sp,-64
    80001b90:	02113c23          	sd	ra,56(sp)
    80001b94:	02813823          	sd	s0,48(sp)
    80001b98:	02913423          	sd	s1,40(sp)
    80001b9c:	03213023          	sd	s2,32(sp)
    80001ba0:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001ba4:	01000513          	li	a0,16
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	750080e7          	jalr	1872(ra) # 800022f8 <_Znwm>
    80001bb0:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001bb4:	00000097          	auipc	ra,0x0
    80001bb8:	604080e7          	jalr	1540(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80001bbc:	00006797          	auipc	a5,0x6
    80001bc0:	9f478793          	addi	a5,a5,-1548 # 800075b0 <_ZTV7WorkerA+0x10>
    80001bc4:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001bc8:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001bcc:	00004517          	auipc	a0,0x4
    80001bd0:	4ec50513          	addi	a0,a0,1260 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001bd4:	00001097          	auipc	ra,0x1
    80001bd8:	2ec080e7          	jalr	748(ra) # 80002ec0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001bdc:	01000513          	li	a0,16
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	718080e7          	jalr	1816(ra) # 800022f8 <_Znwm>
    80001be8:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	5cc080e7          	jalr	1484(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80001bf4:	00006797          	auipc	a5,0x6
    80001bf8:	9e478793          	addi	a5,a5,-1564 # 800075d8 <_ZTV7WorkerB+0x10>
    80001bfc:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001c00:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001c04:	00004517          	auipc	a0,0x4
    80001c08:	4cc50513          	addi	a0,a0,1228 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001c0c:	00001097          	auipc	ra,0x1
    80001c10:	2b4080e7          	jalr	692(ra) # 80002ec0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001c14:	01000513          	li	a0,16
    80001c18:	00000097          	auipc	ra,0x0
    80001c1c:	6e0080e7          	jalr	1760(ra) # 800022f8 <_Znwm>
    80001c20:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	594080e7          	jalr	1428(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80001c2c:	00006797          	auipc	a5,0x6
    80001c30:	9d478793          	addi	a5,a5,-1580 # 80007600 <_ZTV7WorkerC+0x10>
    80001c34:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001c38:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001c3c:	00004517          	auipc	a0,0x4
    80001c40:	4ac50513          	addi	a0,a0,1196 # 800060e8 <CONSOLE_STATUS+0xd8>
    80001c44:	00001097          	auipc	ra,0x1
    80001c48:	27c080e7          	jalr	636(ra) # 80002ec0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001c4c:	01000513          	li	a0,16
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	6a8080e7          	jalr	1704(ra) # 800022f8 <_Znwm>
    80001c58:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	55c080e7          	jalr	1372(ra) # 800021b8 <_ZN6ThreadC1Ev>
    80001c64:	00006797          	auipc	a5,0x6
    80001c68:	9c478793          	addi	a5,a5,-1596 # 80007628 <_ZTV7WorkerD+0x10>
    80001c6c:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001c70:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80001c74:	00004517          	auipc	a0,0x4
    80001c78:	48c50513          	addi	a0,a0,1164 # 80006100 <CONSOLE_STATUS+0xf0>
    80001c7c:	00001097          	auipc	ra,0x1
    80001c80:	244080e7          	jalr	580(ra) # 80002ec0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001c84:	00000493          	li	s1,0
    80001c88:	00300793          	li	a5,3
    80001c8c:	0297c663          	blt	a5,s1,80001cb8 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001c90:	00349793          	slli	a5,s1,0x3
    80001c94:	fe040713          	addi	a4,s0,-32
    80001c98:	00f707b3          	add	a5,a4,a5
    80001c9c:	fe07b503          	ld	a0,-32(a5)
    80001ca0:	00000097          	auipc	ra,0x0
    80001ca4:	488080e7          	jalr	1160(ra) # 80002128 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001ca8:	0014849b          	addiw	s1,s1,1
    80001cac:	fddff06f          	j	80001c88 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001cb0:	00000097          	auipc	ra,0x0
    80001cb4:	4a8080e7          	jalr	1192(ra) # 80002158 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001cb8:	00006797          	auipc	a5,0x6
    80001cbc:	a787c783          	lbu	a5,-1416(a5) # 80007730 <finishedA>
    80001cc0:	fe0788e3          	beqz	a5,80001cb0 <_Z20Threads_CPP_API_testv+0x124>
    80001cc4:	00006797          	auipc	a5,0x6
    80001cc8:	a6d7c783          	lbu	a5,-1427(a5) # 80007731 <finishedB>
    80001ccc:	fe0782e3          	beqz	a5,80001cb0 <_Z20Threads_CPP_API_testv+0x124>
    80001cd0:	00006797          	auipc	a5,0x6
    80001cd4:	a627c783          	lbu	a5,-1438(a5) # 80007732 <finishedC>
    80001cd8:	fc078ce3          	beqz	a5,80001cb0 <_Z20Threads_CPP_API_testv+0x124>
    80001cdc:	00006797          	auipc	a5,0x6
    80001ce0:	a577c783          	lbu	a5,-1449(a5) # 80007733 <finishedD>
    80001ce4:	fc0786e3          	beqz	a5,80001cb0 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001ce8:	fc040493          	addi	s1,s0,-64
    80001cec:	0080006f          	j	80001cf4 <_Z20Threads_CPP_API_testv+0x168>
    80001cf0:	00848493          	addi	s1,s1,8
    80001cf4:	fe040793          	addi	a5,s0,-32
    80001cf8:	08f48663          	beq	s1,a5,80001d84 <_Z20Threads_CPP_API_testv+0x1f8>
    80001cfc:	0004b503          	ld	a0,0(s1)
    80001d00:	fe0508e3          	beqz	a0,80001cf0 <_Z20Threads_CPP_API_testv+0x164>
    80001d04:	00053783          	ld	a5,0(a0)
    80001d08:	0087b783          	ld	a5,8(a5)
    80001d0c:	000780e7          	jalr	a5
    80001d10:	fe1ff06f          	j	80001cf0 <_Z20Threads_CPP_API_testv+0x164>
    80001d14:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001d18:	00048513          	mv	a0,s1
    80001d1c:	00000097          	auipc	ra,0x0
    80001d20:	62c080e7          	jalr	1580(ra) # 80002348 <_ZdlPv>
    80001d24:	00090513          	mv	a0,s2
    80001d28:	00007097          	auipc	ra,0x7
    80001d2c:	b20080e7          	jalr	-1248(ra) # 80008848 <_Unwind_Resume>
    80001d30:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001d34:	00048513          	mv	a0,s1
    80001d38:	00000097          	auipc	ra,0x0
    80001d3c:	610080e7          	jalr	1552(ra) # 80002348 <_ZdlPv>
    80001d40:	00090513          	mv	a0,s2
    80001d44:	00007097          	auipc	ra,0x7
    80001d48:	b04080e7          	jalr	-1276(ra) # 80008848 <_Unwind_Resume>
    80001d4c:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001d50:	00048513          	mv	a0,s1
    80001d54:	00000097          	auipc	ra,0x0
    80001d58:	5f4080e7          	jalr	1524(ra) # 80002348 <_ZdlPv>
    80001d5c:	00090513          	mv	a0,s2
    80001d60:	00007097          	auipc	ra,0x7
    80001d64:	ae8080e7          	jalr	-1304(ra) # 80008848 <_Unwind_Resume>
    80001d68:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001d6c:	00048513          	mv	a0,s1
    80001d70:	00000097          	auipc	ra,0x0
    80001d74:	5d8080e7          	jalr	1496(ra) # 80002348 <_ZdlPv>
    80001d78:	00090513          	mv	a0,s2
    80001d7c:	00007097          	auipc	ra,0x7
    80001d80:	acc080e7          	jalr	-1332(ra) # 80008848 <_Unwind_Resume>
}
    80001d84:	03813083          	ld	ra,56(sp)
    80001d88:	03013403          	ld	s0,48(sp)
    80001d8c:	02813483          	ld	s1,40(sp)
    80001d90:	02013903          	ld	s2,32(sp)
    80001d94:	04010113          	addi	sp,sp,64
    80001d98:	00008067          	ret

0000000080001d9c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001dac:	00000097          	auipc	ra,0x0
    80001db0:	de0080e7          	jalr	-544(ra) # 80001b8c <_Z20Threads_CPP_API_testv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001db4:	00813083          	ld	ra,8(sp)
    80001db8:	00013403          	ld	s0,0(sp)
    80001dbc:	01010113          	addi	sp,sp,16
    80001dc0:	00008067          	ret

0000000080001dc4 <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001dc4:	ff010113          	addi	sp,sp,-16
    80001dc8:	00113423          	sd	ra,8(sp)
    80001dcc:	00813023          	sd	s0,0(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    80001dd4:	00005797          	auipc	a5,0x5
    80001dd8:	7dc78793          	addi	a5,a5,2012 # 800075b0 <_ZTV7WorkerA+0x10>
    80001ddc:	00f53023          	sd	a5,0(a0)
    80001de0:	00000097          	auipc	ra,0x0
    80001de4:	2f8080e7          	jalr	760(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_ZN7WorkerAD0Ev>:
    80001df8:	fe010113          	addi	sp,sp,-32
    80001dfc:	00113c23          	sd	ra,24(sp)
    80001e00:	00813823          	sd	s0,16(sp)
    80001e04:	00913423          	sd	s1,8(sp)
    80001e08:	02010413          	addi	s0,sp,32
    80001e0c:	00050493          	mv	s1,a0
    80001e10:	00005797          	auipc	a5,0x5
    80001e14:	7a078793          	addi	a5,a5,1952 # 800075b0 <_ZTV7WorkerA+0x10>
    80001e18:	00f53023          	sd	a5,0(a0)
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	2bc080e7          	jalr	700(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001e24:	00048513          	mv	a0,s1
    80001e28:	00000097          	auipc	ra,0x0
    80001e2c:	520080e7          	jalr	1312(ra) # 80002348 <_ZdlPv>
    80001e30:	01813083          	ld	ra,24(sp)
    80001e34:	01013403          	ld	s0,16(sp)
    80001e38:	00813483          	ld	s1,8(sp)
    80001e3c:	02010113          	addi	sp,sp,32
    80001e40:	00008067          	ret

0000000080001e44 <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001e44:	ff010113          	addi	sp,sp,-16
    80001e48:	00113423          	sd	ra,8(sp)
    80001e4c:	00813023          	sd	s0,0(sp)
    80001e50:	01010413          	addi	s0,sp,16
    80001e54:	00005797          	auipc	a5,0x5
    80001e58:	78478793          	addi	a5,a5,1924 # 800075d8 <_ZTV7WorkerB+0x10>
    80001e5c:	00f53023          	sd	a5,0(a0)
    80001e60:	00000097          	auipc	ra,0x0
    80001e64:	278080e7          	jalr	632(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN7WorkerBD0Ev>:
    80001e78:	fe010113          	addi	sp,sp,-32
    80001e7c:	00113c23          	sd	ra,24(sp)
    80001e80:	00813823          	sd	s0,16(sp)
    80001e84:	00913423          	sd	s1,8(sp)
    80001e88:	02010413          	addi	s0,sp,32
    80001e8c:	00050493          	mv	s1,a0
    80001e90:	00005797          	auipc	a5,0x5
    80001e94:	74878793          	addi	a5,a5,1864 # 800075d8 <_ZTV7WorkerB+0x10>
    80001e98:	00f53023          	sd	a5,0(a0)
    80001e9c:	00000097          	auipc	ra,0x0
    80001ea0:	23c080e7          	jalr	572(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001ea4:	00048513          	mv	a0,s1
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	4a0080e7          	jalr	1184(ra) # 80002348 <_ZdlPv>
    80001eb0:	01813083          	ld	ra,24(sp)
    80001eb4:	01013403          	ld	s0,16(sp)
    80001eb8:	00813483          	ld	s1,8(sp)
    80001ebc:	02010113          	addi	sp,sp,32
    80001ec0:	00008067          	ret

0000000080001ec4 <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001ec4:	ff010113          	addi	sp,sp,-16
    80001ec8:	00113423          	sd	ra,8(sp)
    80001ecc:	00813023          	sd	s0,0(sp)
    80001ed0:	01010413          	addi	s0,sp,16
    80001ed4:	00005797          	auipc	a5,0x5
    80001ed8:	72c78793          	addi	a5,a5,1836 # 80007600 <_ZTV7WorkerC+0x10>
    80001edc:	00f53023          	sd	a5,0(a0)
    80001ee0:	00000097          	auipc	ra,0x0
    80001ee4:	1f8080e7          	jalr	504(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN7WorkerCD0Ev>:
    80001ef8:	fe010113          	addi	sp,sp,-32
    80001efc:	00113c23          	sd	ra,24(sp)
    80001f00:	00813823          	sd	s0,16(sp)
    80001f04:	00913423          	sd	s1,8(sp)
    80001f08:	02010413          	addi	s0,sp,32
    80001f0c:	00050493          	mv	s1,a0
    80001f10:	00005797          	auipc	a5,0x5
    80001f14:	6f078793          	addi	a5,a5,1776 # 80007600 <_ZTV7WorkerC+0x10>
    80001f18:	00f53023          	sd	a5,0(a0)
    80001f1c:	00000097          	auipc	ra,0x0
    80001f20:	1bc080e7          	jalr	444(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001f24:	00048513          	mv	a0,s1
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	420080e7          	jalr	1056(ra) # 80002348 <_ZdlPv>
    80001f30:	01813083          	ld	ra,24(sp)
    80001f34:	01013403          	ld	s0,16(sp)
    80001f38:	00813483          	ld	s1,8(sp)
    80001f3c:	02010113          	addi	sp,sp,32
    80001f40:	00008067          	ret

0000000080001f44 <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001f44:	ff010113          	addi	sp,sp,-16
    80001f48:	00113423          	sd	ra,8(sp)
    80001f4c:	00813023          	sd	s0,0(sp)
    80001f50:	01010413          	addi	s0,sp,16
    80001f54:	00005797          	auipc	a5,0x5
    80001f58:	6d478793          	addi	a5,a5,1748 # 80007628 <_ZTV7WorkerD+0x10>
    80001f5c:	00f53023          	sd	a5,0(a0)
    80001f60:	00000097          	auipc	ra,0x0
    80001f64:	178080e7          	jalr	376(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001f68:	00813083          	ld	ra,8(sp)
    80001f6c:	00013403          	ld	s0,0(sp)
    80001f70:	01010113          	addi	sp,sp,16
    80001f74:	00008067          	ret

0000000080001f78 <_ZN7WorkerDD0Ev>:
    80001f78:	fe010113          	addi	sp,sp,-32
    80001f7c:	00113c23          	sd	ra,24(sp)
    80001f80:	00813823          	sd	s0,16(sp)
    80001f84:	00913423          	sd	s1,8(sp)
    80001f88:	02010413          	addi	s0,sp,32
    80001f8c:	00050493          	mv	s1,a0
    80001f90:	00005797          	auipc	a5,0x5
    80001f94:	69878793          	addi	a5,a5,1688 # 80007628 <_ZTV7WorkerD+0x10>
    80001f98:	00f53023          	sd	a5,0(a0)
    80001f9c:	00000097          	auipc	ra,0x0
    80001fa0:	13c080e7          	jalr	316(ra) # 800020d8 <_ZN6ThreadD1Ev>
    80001fa4:	00048513          	mv	a0,s1
    80001fa8:	00000097          	auipc	ra,0x0
    80001fac:	3a0080e7          	jalr	928(ra) # 80002348 <_ZdlPv>
    80001fb0:	01813083          	ld	ra,24(sp)
    80001fb4:	01013403          	ld	s0,16(sp)
    80001fb8:	00813483          	ld	s1,8(sp)
    80001fbc:	02010113          	addi	sp,sp,32
    80001fc0:	00008067          	ret

0000000080001fc4 <_ZN7WorkerA3runEv>:
    void run() override {
    80001fc4:	ff010113          	addi	sp,sp,-16
    80001fc8:	00113423          	sd	ra,8(sp)
    80001fcc:	00813023          	sd	s0,0(sp)
    80001fd0:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80001fd4:	00000593          	li	a1,0
    80001fd8:	fffff097          	auipc	ra,0xfffff
    80001fdc:	74c080e7          	jalr	1868(ra) # 80001724 <_ZN7WorkerA11workerBodyAEPv>
    }
    80001fe0:	00813083          	ld	ra,8(sp)
    80001fe4:	00013403          	ld	s0,0(sp)
    80001fe8:	01010113          	addi	sp,sp,16
    80001fec:	00008067          	ret

0000000080001ff0 <_ZN7WorkerB3runEv>:
    void run() override {
    80001ff0:	ff010113          	addi	sp,sp,-16
    80001ff4:	00113423          	sd	ra,8(sp)
    80001ff8:	00813023          	sd	s0,0(sp)
    80001ffc:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002000:	00000593          	li	a1,0
    80002004:	fffff097          	auipc	ra,0xfffff
    80002008:	7ec080e7          	jalr	2028(ra) # 800017f0 <_ZN7WorkerB11workerBodyBEPv>
    }
    8000200c:	00813083          	ld	ra,8(sp)
    80002010:	00013403          	ld	s0,0(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN7WorkerC3runEv>:
    void run() override {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    8000202c:	00000593          	li	a1,0
    80002030:	00000097          	auipc	ra,0x0
    80002034:	894080e7          	jalr	-1900(ra) # 800018c4 <_ZN7WorkerC11workerBodyCEPv>
    }
    80002038:	00813083          	ld	ra,8(sp)
    8000203c:	00013403          	ld	s0,0(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN7WorkerD3runEv>:
    void run() override {
    80002048:	ff010113          	addi	sp,sp,-16
    8000204c:	00113423          	sd	ra,8(sp)
    80002050:	00813023          	sd	s0,0(sp)
    80002054:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80002058:	00000593          	li	a1,0
    8000205c:	00000097          	auipc	ra,0x0
    80002060:	9e8080e7          	jalr	-1560(ra) # 80001a44 <_ZN7WorkerD11workerBodyDEPv>
    }
    80002064:	00813083          	ld	ra,8(sp)
    80002068:	00013403          	ld	s0,0(sp)
    8000206c:	01010113          	addi	sp,sp,16
    80002070:	00008067          	ret

0000000080002074 <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

int main() {
    80002074:	ff010113          	addi	sp,sp,-16
    80002078:	00113423          	sd	ra,8(sp)
    8000207c:	00813023          	sd	s0,0(sp)
    80002080:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMemoryAllocator();
    80002084:	00001097          	auipc	ra,0x1
    80002088:	ddc080e7          	jalr	-548(ra) # 80002e60 <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    8000208c:	00000593          	li	a1,0
    80002090:	00000513          	li	a0,0
    80002094:	00001097          	auipc	ra,0x1
    80002098:	878080e7          	jalr	-1928(ra) # 8000290c <_ZN3TCB12createThreadEPFvPvES0_>
    8000209c:	00005797          	auipc	a5,0x5
    800020a0:	6347b783          	ld	a5,1588(a5) # 800076d0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800020a4:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800020a8:	00005797          	auipc	a5,0x5
    800020ac:	6107b783          	ld	a5,1552(a5) # 800076b8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800020b0:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800020b4:	00200793          	li	a5,2
    800020b8:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    800020bc:	00000097          	auipc	ra,0x0
    800020c0:	ce0080e7          	jalr	-800(ra) # 80001d9c <_Z8userMainv>

    return 0;

}
    800020c4:	00000513          	li	a0,0
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN6ThreadD1Ev>:
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    800020d8:	ff010113          	addi	sp,sp,-16
    800020dc:	00813423          	sd	s0,8(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	00813403          	ld	s0,8(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00113423          	sd	ra,8(sp)
    800020f8:	00813023          	sd	s0,0(sp)
    800020fc:	01010413          	addi	s0,sp,16
    80002100:	00005797          	auipc	a5,0x5
    80002104:	58078793          	addi	a5,a5,1408 # 80007680 <_ZTV9Semaphore+0x10>
    80002108:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000210c:	00853503          	ld	a0,8(a0)
    80002110:	fffff097          	auipc	ra,0xfffff
    80002114:	280080e7          	jalr	640(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80002118:	00813083          	ld	ra,8(sp)
    8000211c:	00013403          	ld	s0,0(sp)
    80002120:	01010113          	addi	sp,sp,16
    80002124:	00008067          	ret

0000000080002128 <_ZN6Thread5startEv>:
int Thread::start (){
    80002128:	ff010113          	addi	sp,sp,-16
    8000212c:	00113423          	sd	ra,8(sp)
    80002130:	00813023          	sd	s0,0(sp)
    80002134:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    80002138:	00850513          	addi	a0,a0,8
    8000213c:	fffff097          	auipc	ra,0xfffff
    80002140:	1c8080e7          	jalr	456(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    80002144:	00000513          	li	a0,0
    80002148:	00813083          	ld	ra,8(sp)
    8000214c:	00013403          	ld	s0,0(sp)
    80002150:	01010113          	addi	sp,sp,16
    80002154:	00008067          	ret

0000000080002158 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80002158:	ff010113          	addi	sp,sp,-16
    8000215c:	00113423          	sd	ra,8(sp)
    80002160:	00813023          	sd	s0,0(sp)
    80002164:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002168:	fffff097          	auipc	ra,0xfffff
    8000216c:	17c080e7          	jalr	380(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002170:	00813083          	ld	ra,8(sp)
    80002174:	00013403          	ld	s0,0(sp)
    80002178:	01010113          	addi	sp,sp,16
    8000217c:	00008067          	ret

0000000080002180 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002180:	ff010113          	addi	sp,sp,-16
    80002184:	00113423          	sd	ra,8(sp)
    80002188:	00813023          	sd	s0,0(sp)
    8000218c:	01010413          	addi	s0,sp,16
    80002190:	00005797          	auipc	a5,0x5
    80002194:	4c878793          	addi	a5,a5,1224 # 80007658 <_ZTV6Thread+0x10>
    80002198:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    8000219c:	00850513          	addi	a0,a0,8
    800021a0:	fffff097          	auipc	ra,0xfffff
    800021a4:	18c080e7          	jalr	396(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    800021a8:	00813083          	ld	ra,8(sp)
    800021ac:	00013403          	ld	s0,0(sp)
    800021b0:	01010113          	addi	sp,sp,16
    800021b4:	00008067          	ret

00000000800021b8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800021b8:	ff010113          	addi	sp,sp,-16
    800021bc:	00113423          	sd	ra,8(sp)
    800021c0:	00813023          	sd	s0,0(sp)
    800021c4:	01010413          	addi	s0,sp,16
    800021c8:	00005797          	auipc	a5,0x5
    800021cc:	49078793          	addi	a5,a5,1168 # 80007658 <_ZTV6Thread+0x10>
    800021d0:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    800021d4:	00050613          	mv	a2,a0
    800021d8:	00000597          	auipc	a1,0x0
    800021dc:	24058593          	addi	a1,a1,576 # 80002418 <_ZN6Thread9myWrapperEPv>
    800021e0:	00850513          	addi	a0,a0,8
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	148080e7          	jalr	328(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00813423          	sd	s0,8(sp)
    80002204:	01010413          	addi	s0,sp,16
}
    80002208:	00000513          	li	a0,0
    8000220c:	00813403          	ld	s0,8(sp)
    80002210:	01010113          	addi	sp,sp,16
    80002214:	00008067          	ret

0000000080002218 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002218:	ff010113          	addi	sp,sp,-16
    8000221c:	00113423          	sd	ra,8(sp)
    80002220:	00813023          	sd	s0,0(sp)
    80002224:	01010413          	addi	s0,sp,16
    80002228:	00005797          	auipc	a5,0x5
    8000222c:	45878793          	addi	a5,a5,1112 # 80007680 <_ZTV9Semaphore+0x10>
    80002230:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002234:	00850513          	addi	a0,a0,8
    80002238:	fffff097          	auipc	ra,0xfffff
    8000223c:	128080e7          	jalr	296(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80002240:	00813083          	ld	ra,8(sp)
    80002244:	00013403          	ld	s0,0(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002260:	00853503          	ld	a0,8(a0)
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	158080e7          	jalr	344(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    8000227c:	ff010113          	addi	sp,sp,-16
    80002280:	00113423          	sd	ra,8(sp)
    80002284:	00813023          	sd	s0,0(sp)
    80002288:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000228c:	00853503          	ld	a0,8(a0)
    80002290:	fffff097          	auipc	ra,0xfffff
    80002294:	158080e7          	jalr	344(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80002298:	00813083          	ld	ra,8(sp)
    8000229c:	00013403          	ld	s0,0(sp)
    800022a0:	01010113          	addi	sp,sp,16
    800022a4:	00008067          	ret

00000000800022a8 <_ZN7Console4getcEv>:

char Console::getc() {
    800022a8:	ff010113          	addi	sp,sp,-16
    800022ac:	00113423          	sd	ra,8(sp)
    800022b0:	00813023          	sd	s0,0(sp)
    800022b4:	01010413          	addi	s0,sp,16
    return __getc();
    800022b8:	00003097          	auipc	ra,0x3
    800022bc:	6d0080e7          	jalr	1744(ra) # 80005988 <__getc>
}
    800022c0:	00813083          	ld	ra,8(sp)
    800022c4:	00013403          	ld	s0,0(sp)
    800022c8:	01010113          	addi	sp,sp,16
    800022cc:	00008067          	ret

00000000800022d0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800022d0:	ff010113          	addi	sp,sp,-16
    800022d4:	00113423          	sd	ra,8(sp)
    800022d8:	00813023          	sd	s0,0(sp)
    800022dc:	01010413          	addi	s0,sp,16
    __putc(c);
    800022e0:	00003097          	auipc	ra,0x3
    800022e4:	66c080e7          	jalr	1644(ra) # 8000594c <__putc>
}
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_Znwm>:

void *operator new(size_t n)
{
    800022f8:	ff010113          	addi	sp,sp,-16
    800022fc:	00113423          	sd	ra,8(sp)
    80002300:	00813023          	sd	s0,0(sp)
    80002304:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002308:	00001097          	auipc	ra,0x1
    8000230c:	92c080e7          	jalr	-1748(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
//    return mem_alloc(n);
}
    80002310:	00813083          	ld	ra,8(sp)
    80002314:	00013403          	ld	s0,0(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_Znam>:

void *operator new[](size_t n)
{
    80002320:	ff010113          	addi	sp,sp,-16
    80002324:	00113423          	sd	ra,8(sp)
    80002328:	00813023          	sd	s0,0(sp)
    8000232c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002330:	00001097          	auipc	ra,0x1
    80002334:	904080e7          	jalr	-1788(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
//   return mem_alloc(n);
}
    80002338:	00813083          	ld	ra,8(sp)
    8000233c:	00013403          	ld	s0,0(sp)
    80002340:	01010113          	addi	sp,sp,16
    80002344:	00008067          	ret

0000000080002348 <_ZdlPv>:

void operator delete(void *p)
{
    80002348:	ff010113          	addi	sp,sp,-16
    8000234c:	00113423          	sd	ra,8(sp)
    80002350:	00813023          	sd	s0,0(sp)
    80002354:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002358:	00001097          	auipc	ra,0x1
    8000235c:	978080e7          	jalr	-1672(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80002360:	00813083          	ld	ra,8(sp)
    80002364:	00013403          	ld	s0,0(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret

0000000080002370 <_ZN6ThreadD0Ev>:
    80002370:	ff010113          	addi	sp,sp,-16
    80002374:	00113423          	sd	ra,8(sp)
    80002378:	00813023          	sd	s0,0(sp)
    8000237c:	01010413          	addi	s0,sp,16
    80002380:	00000097          	auipc	ra,0x0
    80002384:	fc8080e7          	jalr	-56(ra) # 80002348 <_ZdlPv>
    80002388:	00813083          	ld	ra,8(sp)
    8000238c:	00013403          	ld	s0,0(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002398:	fe010113          	addi	sp,sp,-32
    8000239c:	00113c23          	sd	ra,24(sp)
    800023a0:	00813823          	sd	s0,16(sp)
    800023a4:	00913423          	sd	s1,8(sp)
    800023a8:	02010413          	addi	s0,sp,32
    800023ac:	00050493          	mv	s1,a0
}
    800023b0:	00000097          	auipc	ra,0x0
    800023b4:	d40080e7          	jalr	-704(ra) # 800020f0 <_ZN9SemaphoreD1Ev>
    800023b8:	00048513          	mv	a0,s1
    800023bc:	00000097          	auipc	ra,0x0
    800023c0:	f8c080e7          	jalr	-116(ra) # 80002348 <_ZdlPv>
    800023c4:	01813083          	ld	ra,24(sp)
    800023c8:	01013403          	ld	s0,16(sp)
    800023cc:	00813483          	ld	s1,8(sp)
    800023d0:	02010113          	addi	sp,sp,32
    800023d4:	00008067          	ret

00000000800023d8 <_ZdaPv>:

void operator delete[](void *p)
{
    800023d8:	ff010113          	addi	sp,sp,-16
    800023dc:	00113423          	sd	ra,8(sp)
    800023e0:	00813023          	sd	s0,0(sp)
    800023e4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800023e8:	00001097          	auipc	ra,0x1
    800023ec:	8e8080e7          	jalr	-1816(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    800023f0:	00813083          	ld	ra,8(sp)
    800023f4:	00013403          	ld	s0,0(sp)
    800023f8:	01010113          	addi	sp,sp,16
    800023fc:	00008067          	ret

0000000080002400 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    80002400:	ff010113          	addi	sp,sp,-16
    80002404:	00813423          	sd	s0,8(sp)
    80002408:	01010413          	addi	s0,sp,16
    8000240c:	00813403          	ld	s0,8(sp)
    80002410:	01010113          	addi	sp,sp,16
    80002414:	00008067          	ret

0000000080002418 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80002418:	ff010113          	addi	sp,sp,-16
    8000241c:	00113423          	sd	ra,8(sp)
    80002420:	00813023          	sd	s0,0(sp)
    80002424:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    80002428:	00053783          	ld	a5,0(a0)
    8000242c:	0107b783          	ld	a5,16(a5)
    80002430:	000780e7          	jalr	a5
    }
    80002434:	00813083          	ld	ra,8(sp)
    80002438:	00013403          	ld	s0,0(sp)
    8000243c:	01010113          	addi	sp,sp,16
    80002440:	00008067          	ret

0000000080002444 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80002444:	ff010113          	addi	sp,sp,-16
    80002448:	00813423          	sd	s0,8(sp)
    8000244c:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002450:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002454:	10200073          	sret
}
    80002458:	00813403          	ld	s0,8(sp)
    8000245c:	01010113          	addi	sp,sp,16
    80002460:	00008067          	ret

0000000080002464 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002464:	fb010113          	addi	sp,sp,-80
    80002468:	04113423          	sd	ra,72(sp)
    8000246c:	04813023          	sd	s0,64(sp)
    80002470:	02913c23          	sd	s1,56(sp)
    80002474:	03213823          	sd	s2,48(sp)
    80002478:	03313423          	sd	s3,40(sp)
    8000247c:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002480:	142027f3          	csrr	a5,scause
    80002484:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002488:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000248c:	ff870693          	addi	a3,a4,-8
    80002490:	00100793          	li	a5,1
    80002494:	02d7f863          	bgeu	a5,a3,800024c4 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80002498:	fff00793          	li	a5,-1
    8000249c:	03f79793          	slli	a5,a5,0x3f
    800024a0:	00178793          	addi	a5,a5,1
    800024a4:	20f70c63          	beq	a4,a5,800026bc <_ZN5Riscv20handleSupervisorTrapEv+0x258>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    800024a8:	fff00793          	li	a5,-1
    800024ac:	03f79793          	slli	a5,a5,0x3f
    800024b0:	00978793          	addi	a5,a5,9
    800024b4:	0cf71063          	bne	a4,a5,80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    800024b8:	00003097          	auipc	ra,0x3
    800024bc:	508080e7          	jalr	1288(ra) # 800059c0 <console_handler>
    }else
    {
        // unexpected trap cause
    }
    800024c0:	0b40006f          	j	80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024c4:	141027f3          	csrr	a5,sepc
    800024c8:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800024cc:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800024d0:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024d4:	100027f3          	csrr	a5,sstatus
    800024d8:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800024dc:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800024e0:	00050793          	mv	a5,a0
    800024e4:	faf43c23          	sd	a5,-72(s0)
    return a0;
    800024e8:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    800024ec:	00100713          	li	a4,1
    800024f0:	06e78663          	beq	a5,a4,8000255c <_ZN5Riscv20handleSupervisorTrapEv+0xf8>
        else if (a0 == 0x0000000000000002UL){
    800024f4:	00200713          	li	a4,2
    800024f8:	08e78c63          	beq	a5,a4,80002590 <_ZN5Riscv20handleSupervisorTrapEv+0x12c>
        else if (a0 == 0x0000000000000011UL){
    800024fc:	01100713          	li	a4,17
    80002500:	0ae78263          	beq	a5,a4,800025a4 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if (a0 == 0x0000000000000012UL){
    80002504:	01200713          	li	a4,18
    80002508:	0ce78663          	beq	a5,a4,800025d4 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
        else if (a0 == 0x0000000000000013UL){
    8000250c:	01300713          	li	a4,19
    80002510:	0ce78a63          	beq	a5,a4,800025e4 <_ZN5Riscv20handleSupervisorTrapEv+0x180>
        else if (a0 == 0x0000000000000014UL){
    80002514:	01400713          	li	a4,20
    80002518:	0ee78263          	beq	a5,a4,800025fc <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if (a0 == 0x0000000000000015UL){
    8000251c:	01500713          	li	a4,21
    80002520:	0ee78863          	beq	a5,a4,80002610 <_ZN5Riscv20handleSupervisorTrapEv+0x1ac>
        else if (a0 == 0x0000000000000021UL) {
    80002524:	02100713          	li	a4,33
    80002528:	10e78c63          	beq	a5,a4,80002640 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
        else if (a0 == 0x0000000000000022UL) {
    8000252c:	02200713          	li	a4,34
    80002530:	14e78063          	beq	a5,a4,80002670 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
        else if (a0 == 0x0000000000000023UL) {
    80002534:	02300713          	li	a4,35
    80002538:	14e78e63          	beq	a5,a4,80002694 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
        else if (a0 == 0x0000000000000024UL) {
    8000253c:	02400713          	li	a4,36
    80002540:	02e79663          	bne	a5,a4,8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(sem));
    80002544:	00088513          	mv	a0,a7
            if(sem!= nullptr) {
    80002548:	16050663          	beqz	a0,800026b4 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                a = sem->signal();
    8000254c:	fffff097          	auipc	ra,0xfffff
    80002550:	024080e7          	jalr	36(ra) # 80001570 <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002554:	00050513          	mv	a0,a0
    80002558:	0140006f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    8000255c:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    80002560:	00000097          	auipc	ra,0x0
    80002564:	6d4080e7          	jalr	1748(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002568:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000256c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002570:	14149073          	csrw	sepc,s1
    80002574:	04813083          	ld	ra,72(sp)
    80002578:	04013403          	ld	s0,64(sp)
    8000257c:	03813483          	ld	s1,56(sp)
    80002580:	03013903          	ld	s2,48(sp)
    80002584:	02813983          	ld	s3,40(sp)
    80002588:	05010113          	addi	sp,sp,80
    8000258c:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002590:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    80002594:	00000097          	auipc	ra,0x0
    80002598:	73c080e7          	jalr	1852(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000259c:	00050513          	mv	a0,a0
    800025a0:	fcdff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800025a4:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800025a8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800025ac:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    800025b0:	00000097          	auipc	ra,0x0
    800025b4:	35c080e7          	jalr	860(ra) # 8000290c <_ZN3TCB12createThreadEPFvPvES0_>
    800025b8:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800025bc:	00098863          	beqz	s3,800025cc <_ZN5Riscv20handleSupervisorTrapEv+0x168>
    800025c0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800025c4:	00078513          	mv	a0,a5
    800025c8:	fa5ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            a0=(tcb!= nullptr)?0 : -1;
    800025cc:	fff00793          	li	a5,-1
    800025d0:	ff5ff06f          	j	800025c4 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
            a=TCB::exitThread();
    800025d4:	00000097          	auipc	ra,0x0
    800025d8:	218080e7          	jalr	536(ra) # 800027ec <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800025dc:	00050513          	mv	a0,a0
    800025e0:	f8dff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            TCB::timeSliceCounter = 0;
    800025e4:	00005797          	auipc	a5,0x5
    800025e8:	0dc7b783          	ld	a5,220(a5) # 800076c0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025ec:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800025f0:	00000097          	auipc	ra,0x0
    800025f4:	100080e7          	jalr	256(ra) # 800026f0 <_ZN3TCB8dispatchEv>
    800025f8:	f75ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800025fc:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    80002600:	0007b503          	ld	a0,0(a5)
    80002604:	00000097          	auipc	ra,0x0
    80002608:	524080e7          	jalr	1316(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
    8000260c:	f61ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002610:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002614:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002618:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    8000261c:	00000097          	auipc	ra,0x0
    80002620:	3c4080e7          	jalr	964(ra) # 800029e0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    80002624:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002628:	00098863          	beqz	s3,80002638 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
    8000262c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002630:	00078513          	mv	a0,a5
    80002634:	f39ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            a0=(tcb!= nullptr)?0 : -1;
    80002638:	fff00793          	li	a5,-1
    8000263c:	ff5ff06f          	j	80002630 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002640:	00060513          	mv	a0,a2
    80002644:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002648:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    8000264c:	fffff097          	auipc	ra,0xfffff
    80002650:	020080e7          	jalr	32(ra) # 8000166c <_ZN10Ksemaphore15createSemaphoreEj>
    80002654:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002658:	00098863          	beqz	s3,80002668 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
    8000265c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002660:	00078513          	mv	a0,a5
    80002664:	f09ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            uint64 a= (sem!= nullptr)?0: -1;
    80002668:	fff00793          	li	a5,-1
    8000266c:	ff5ff06f          	j	80002660 <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002670:	00058513          	mv	a0,a1
            if(sem== nullptr){
    80002674:	00050c63          	beqz	a0,8000268c <_ZN5Riscv20handleSupervisorTrapEv+0x228>
                sem->closeSemaphore();
    80002678:	fffff097          	auipc	ra,0xfffff
    8000267c:	f40080e7          	jalr	-192(ra) # 800015b8 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002680:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002684:	00078513          	mv	a0,a5
    80002688:	ee5ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=1;
    8000268c:	00100793          	li	a5,1
    80002690:	ff5ff06f          	j	80002684 <_ZN5Riscv20handleSupervisorTrapEv+0x220>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002694:	00088513          	mv	a0,a7
            if(a7!= nullptr){
    80002698:	00050a63          	beqz	a0,800026ac <_ZN5Riscv20handleSupervisorTrapEv+0x248>
                a = a7->wait();
    8000269c:	fffff097          	auipc	ra,0xfffff
    800026a0:	e84080e7          	jalr	-380(ra) # 80001520 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800026a4:	00050513          	mv	a0,a0
    800026a8:	ec5ff06f          	j	8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=-1;
    800026ac:	fff00513          	li	a0,-1
    800026b0:	ff5ff06f          	j	800026a4 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
                a=1;
    800026b4:	00100513          	li	a0,1
    800026b8:	e9dff06f          	j	80002554 <_ZN5Riscv20handleSupervisorTrapEv+0xf0>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800026bc:	00200793          	li	a5,2
    800026c0:	1447b073          	csrc	sip,a5
}
    800026c4:	eb1ff06f          	j	80002574 <_ZN5Riscv20handleSupervisorTrapEv+0x110>

00000000800026c8 <_ZN3TCB14putInSchedulerEPS_>:
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    800026c8:	ff010113          	addi	sp,sp,-16
    800026cc:	00113423          	sd	ra,8(sp)
    800026d0:	00813023          	sd	s0,0(sp)
    800026d4:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	450080e7          	jalr	1104(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
}
    800026e0:	00813083          	ld	ra,8(sp)
    800026e4:	00013403          	ld	s0,0(sp)
    800026e8:	01010113          	addi	sp,sp,16
    800026ec:	00008067          	ret

00000000800026f0 <_ZN3TCB8dispatchEv>:
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
    800026f0:	fe010113          	addi	sp,sp,-32
    800026f4:	00113c23          	sd	ra,24(sp)
    800026f8:	00813823          	sd	s0,16(sp)
    800026fc:	00913423          	sd	s1,8(sp)
    80002700:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    80002704:	00005497          	auipc	s1,0x5
    80002708:	0344b483          	ld	s1,52(s1) # 80007738 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    8000270c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002710:	02078c63          	beqz	a5,80002748 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002714:	00000097          	auipc	ra,0x0
    80002718:	3d0080e7          	jalr	976(ra) # 80002ae4 <_ZN9Scheduler3getEv>
    8000271c:	00005797          	auipc	a5,0x5
    80002720:	00a7be23          	sd	a0,28(a5) # 80007738 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002724:	01850593          	addi	a1,a0,24
    80002728:	01848513          	addi	a0,s1,24
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	ad4080e7          	jalr	-1324(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002734:	01813083          	ld	ra,24(sp)
    80002738:	01013403          	ld	s0,16(sp)
    8000273c:	00813483          	ld	s1,8(sp)
    80002740:	02010113          	addi	sp,sp,32
    80002744:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002748:	00048513          	mv	a0,s1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	3dc080e7          	jalr	988(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
    80002754:	fc1ff06f          	j	80002714 <_ZN3TCB8dispatchEv+0x24>

0000000080002758 <_ZN3TCB5yieldEv>:
{
    80002758:	ff010113          	addi	sp,sp,-16
    8000275c:	00113423          	sd	ra,8(sp)
    80002760:	00813023          	sd	s0,0(sp)
    80002764:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002768:	fffff097          	auipc	ra,0xfffff
    8000276c:	898080e7          	jalr	-1896(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002770:	00000097          	auipc	ra,0x0
    80002774:	f80080e7          	jalr	-128(ra) # 800026f0 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002778:	fffff097          	auipc	ra,0xfffff
    8000277c:	900080e7          	jalr	-1792(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002780:	00813083          	ld	ra,8(sp)
    80002784:	00013403          	ld	s0,0(sp)
    80002788:	01010113          	addi	sp,sp,16
    8000278c:	00008067          	ret

0000000080002790 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper(){
    80002790:	fe010113          	addi	sp,sp,-32
    80002794:	00113c23          	sd	ra,24(sp)
    80002798:	00813823          	sd	s0,16(sp)
    8000279c:	00913423          	sd	s1,8(sp)
    800027a0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	ca0080e7          	jalr	-864(ra) # 80002444 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800027ac:	00005497          	auipc	s1,0x5
    800027b0:	f8c48493          	addi	s1,s1,-116 # 80007738 <_ZN3TCB7runningE>
    800027b4:	0004b783          	ld	a5,0(s1)
    800027b8:	0007b703          	ld	a4,0(a5)
    800027bc:	0087b503          	ld	a0,8(a5)
    800027c0:	000700e7          	jalr	a4
    running->setFinished(true);
    800027c4:	0004b783          	ld	a5,0(s1)


    void setFinished(bool value) { finished = value; }
    800027c8:	00100713          	li	a4,1
    800027cc:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	f88080e7          	jalr	-120(ra) # 80002758 <_ZN3TCB5yieldEv>
}
    800027d8:	01813083          	ld	ra,24(sp)
    800027dc:	01013403          	ld	s0,16(sp)
    800027e0:	00813483          	ld	s1,8(sp)
    800027e4:	02010113          	addi	sp,sp,32
    800027e8:	00008067          	ret

00000000800027ec <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    800027ec:	ff010113          	addi	sp,sp,-16
    800027f0:	00113423          	sd	ra,8(sp)
    800027f4:	00813023          	sd	s0,0(sp)
    800027f8:	01010413          	addi	s0,sp,16
    800027fc:	00005797          	auipc	a5,0x5
    80002800:	f3c7b783          	ld	a5,-196(a5) # 80007738 <_ZN3TCB7runningE>
    80002804:	00100713          	li	a4,1
    80002808:	02e78823          	sb	a4,48(a5)
    running->setFinished(true);
    dispatch();
    8000280c:	00000097          	auipc	ra,0x0
    80002810:	ee4080e7          	jalr	-284(ra) # 800026f0 <_ZN3TCB8dispatchEv>
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}
    80002814:	00000513          	li	a0,0
    80002818:	00813083          	ld	ra,8(sp)
    8000281c:	00013403          	ld	s0,0(sp)
    80002820:	01010113          	addi	sp,sp,16
    80002824:	00008067          	ret

0000000080002828 <_ZN3TCB24dispatchWithoutSchedulerEv>:


void TCB::dispatchWithoutScheduler(){
    80002828:	fe010113          	addi	sp,sp,-32
    8000282c:	00113c23          	sd	ra,24(sp)
    80002830:	00813823          	sd	s0,16(sp)
    80002834:	00913423          	sd	s1,8(sp)
    80002838:	01213023          	sd	s2,0(sp)
    8000283c:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002840:	00005497          	auipc	s1,0x5
    80002844:	ef848493          	addi	s1,s1,-264 # 80007738 <_ZN3TCB7runningE>
    80002848:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    8000284c:	00000097          	auipc	ra,0x0
    80002850:	298080e7          	jalr	664(ra) # 80002ae4 <_ZN9Scheduler3getEv>
    80002854:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002858:	01850593          	addi	a1,a0,24
    8000285c:	01890513          	addi	a0,s2,24
    80002860:	fffff097          	auipc	ra,0xfffff
    80002864:	9a0080e7          	jalr	-1632(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002868:	01813083          	ld	ra,24(sp)
    8000286c:	01013403          	ld	s0,16(sp)
    80002870:	00813483          	ld	s1,8(sp)
    80002874:	00013903          	ld	s2,0(sp)
    80002878:	02010113          	addi	sp,sp,32
    8000287c:	00008067          	ret

0000000080002880 <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002880:	ff010113          	addi	sp,sp,-16
    80002884:	00113423          	sd	ra,8(sp)
    80002888:	00813023          	sd	s0,0(sp)
    8000288c:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002890:	ffffe097          	auipc	ra,0xffffe
    80002894:	770080e7          	jalr	1904(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    80002898:	00000097          	auipc	ra,0x0
    8000289c:	f90080e7          	jalr	-112(ra) # 80002828 <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    800028a0:	ffffe097          	auipc	ra,0xffffe
    800028a4:	7d8080e7          	jalr	2008(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    800028a8:	00813083          	ld	ra,8(sp)
    800028ac:	00013403          	ld	s0,0(sp)
    800028b0:	01010113          	addi	sp,sp,16
    800028b4:	00008067          	ret

00000000800028b8 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) {
    800028b8:	ff010113          	addi	sp,sp,-16
    800028bc:	00113423          	sd	ra,8(sp)
    800028c0:	00813023          	sd	s0,0(sp)
    800028c4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800028c8:	00000097          	auipc	ra,0x0
    800028cc:	408080e7          	jalr	1032(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
    return;

}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t n) {
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    800028f0:	03800513          	li	a0,56
    800028f4:	00000097          	auipc	ra,0x0
    800028f8:	340080e7          	jalr	832(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>

}
    800028fc:	00813083          	ld	ra,8(sp)
    80002900:	00013403          	ld	s0,0(sp)
    80002904:	01010113          	addi	sp,sp,16
    80002908:	00008067          	ret

000000008000290c <_ZN3TCB12createThreadEPFvPvES0_>:
{
    8000290c:	fd010113          	addi	sp,sp,-48
    80002910:	02113423          	sd	ra,40(sp)
    80002914:	02813023          	sd	s0,32(sp)
    80002918:	00913c23          	sd	s1,24(sp)
    8000291c:	01213823          	sd	s2,16(sp)
    80002920:	01313423          	sd	s3,8(sp)
    80002924:	03010413          	addi	s0,sp,48
    80002928:	00050913          	mv	s2,a0
    8000292c:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002930:	03800513          	li	a0,56
    80002934:	00000097          	auipc	ra,0x0
    80002938:	fac080e7          	jalr	-84(ra) # 800028e0 <_ZN3TCBnwEm>
    8000293c:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002940:	01253023          	sd	s2,0(a0)
        arg=argg;
    80002944:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002948:	00090a63          	beqz	s2,8000295c <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    8000294c:	00008537          	lui	a0,0x8
    80002950:	00000097          	auipc	ra,0x0
    80002954:	2e4080e7          	jalr	740(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
    80002958:	0080006f          	j	80002960 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    8000295c:	00000513          	li	a0,0
    80002960:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002964:	00000797          	auipc	a5,0x0
    80002968:	e2c78793          	addi	a5,a5,-468 # 80002790 <_ZN3TCB13threadWrapperEv>
    8000296c:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002970:	04050663          	beqz	a0,800029bc <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80002974:	000087b7          	lui	a5,0x8
    80002978:	00f507b3          	add	a5,a0,a5
    8000297c:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002980:	00200793          	li	a5,2
    80002984:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002988:	02048823          	sb	zero,48(s1)
    if (body != nullptr) {
    8000298c:	00090863          	beqz	s2,8000299c <_ZN3TCB12createThreadEPFvPvES0_+0x90>
        Scheduler::put(t);
    80002990:	00048513          	mv	a0,s1
    80002994:	00000097          	auipc	ra,0x0
    80002998:	194080e7          	jalr	404(ra) # 80002b28 <_ZN9Scheduler3putEP3TCB>
}
    8000299c:	00048513          	mv	a0,s1
    800029a0:	02813083          	ld	ra,40(sp)
    800029a4:	02013403          	ld	s0,32(sp)
    800029a8:	01813483          	ld	s1,24(sp)
    800029ac:	01013903          	ld	s2,16(sp)
    800029b0:	00813983          	ld	s3,8(sp)
    800029b4:	03010113          	addi	sp,sp,48
    800029b8:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    800029bc:	00000793          	li	a5,0
    800029c0:	fbdff06f          	j	8000297c <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    800029c4:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    800029c8:	00048513          	mv	a0,s1
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	eec080e7          	jalr	-276(ra) # 800028b8 <_ZN3TCBdlEPv>
    800029d4:	00090513          	mv	a0,s2
    800029d8:	00006097          	auipc	ra,0x6
    800029dc:	e70080e7          	jalr	-400(ra) # 80008848 <_Unwind_Resume>

00000000800029e0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    800029e0:	fd010113          	addi	sp,sp,-48
    800029e4:	02113423          	sd	ra,40(sp)
    800029e8:	02813023          	sd	s0,32(sp)
    800029ec:	00913c23          	sd	s1,24(sp)
    800029f0:	01213823          	sd	s2,16(sp)
    800029f4:	01313423          	sd	s3,8(sp)
    800029f8:	03010413          	addi	s0,sp,48
    800029fc:	00050913          	mv	s2,a0
    80002a00:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002a04:	03800513          	li	a0,56
    80002a08:	00000097          	auipc	ra,0x0
    80002a0c:	ed8080e7          	jalr	-296(ra) # 800028e0 <_ZN3TCBnwEm>
    80002a10:	00050493          	mv	s1,a0
        body = bodyy;
    80002a14:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    80002a18:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002a1c:	00090a63          	beqz	s2,80002a30 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    80002a20:	00008537          	lui	a0,0x8
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	210080e7          	jalr	528(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
    80002a2c:	0080006f          	j	80002a34 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    80002a30:	00000513          	li	a0,0
    80002a34:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002a38:	00000797          	auipc	a5,0x0
    80002a3c:	d5878793          	addi	a5,a5,-680 # 80002790 <_ZN3TCB13threadWrapperEv>
    80002a40:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a44:	02050e63          	beqz	a0,80002a80 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xa0>
    80002a48:	000087b7          	lui	a5,0x8
    80002a4c:	00f50533          	add	a0,a0,a5
    80002a50:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    80002a54:	00200793          	li	a5,2
    80002a58:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002a5c:	02048823          	sb	zero,48(s1)
}
    80002a60:	00048513          	mv	a0,s1
    80002a64:	02813083          	ld	ra,40(sp)
    80002a68:	02013403          	ld	s0,32(sp)
    80002a6c:	01813483          	ld	s1,24(sp)
    80002a70:	01013903          	ld	s2,16(sp)
    80002a74:	00813983          	ld	s3,8(sp)
    80002a78:	03010113          	addi	sp,sp,48
    80002a7c:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a80:	00000513          	li	a0,0
    80002a84:	fcdff06f          	j	80002a50 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002a88:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002a8c:	00048513          	mv	a0,s1
    80002a90:	00000097          	auipc	ra,0x0
    80002a94:	e28080e7          	jalr	-472(ra) # 800028b8 <_ZN3TCBdlEPv>
    80002a98:	00090513          	mv	a0,s2
    80002a9c:	00006097          	auipc	ra,0x6
    80002aa0:	dac080e7          	jalr	-596(ra) # 80008848 <_Unwind_Resume>

0000000080002aa4 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}
    80002aa4:	ff010113          	addi	sp,sp,-16
    80002aa8:	00813423          	sd	s0,8(sp)
    80002aac:	01010413          	addi	s0,sp,16
    80002ab0:	00100793          	li	a5,1
    80002ab4:	00f50863          	beq	a0,a5,80002ac4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret
    80002ac4:	000107b7          	lui	a5,0x10
    80002ac8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002acc:	fef596e3          	bne	a1,a5,80002ab8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002ad0:	00005797          	auipc	a5,0x5
    80002ad4:	c7878793          	addi	a5,a5,-904 # 80007748 <_ZN9Scheduler16readyThreadQueueE>
    80002ad8:	0007b023          	sd	zero,0(a5)
    80002adc:	0007b423          	sd	zero,8(a5)
    80002ae0:	fd9ff06f          	j	80002ab8 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002ae4 <_ZN9Scheduler3getEv>:
{
    80002ae4:	ff010113          	addi	sp,sp,-16
    80002ae8:	00813423          	sd	s0,8(sp)
    80002aec:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
    80002af0:	00005517          	auipc	a0,0x5
    80002af4:	c5853503          	ld	a0,-936(a0) # 80007748 <_ZN9Scheduler16readyThreadQueueE>
    80002af8:	00050c63          	beqz	a0,80002b10 <_ZN9Scheduler3getEv+0x2c>
        head = head->next;
    80002afc:	00853783          	ld	a5,8(a0)
    80002b00:	00005717          	auipc	a4,0x5
    80002b04:	c4f73423          	sd	a5,-952(a4) # 80007748 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002b08:	00078a63          	beqz	a5,80002b1c <_ZN9Scheduler3getEv+0x38>
        T *ret = elem->data;
    80002b0c:	00053503          	ld	a0,0(a0)
}
    80002b10:	00813403          	ld	s0,8(sp)
    80002b14:	01010113          	addi	sp,sp,16
    80002b18:	00008067          	ret
        if (!head) { tail = 0; }
    80002b1c:	00005797          	auipc	a5,0x5
    80002b20:	c207ba23          	sd	zero,-972(a5) # 80007750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b24:	fe9ff06f          	j	80002b0c <_ZN9Scheduler3getEv+0x28>

0000000080002b28 <_ZN9Scheduler3putEP3TCB>:
{
    80002b28:	fe010113          	addi	sp,sp,-32
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	02010413          	addi	s0,sp,32
    80002b3c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002b40:	01000513          	li	a0,16
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	7b4080e7          	jalr	1972(ra) # 800022f8 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b4c:	00953023          	sd	s1,0(a0)
    80002b50:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b54:	00005797          	auipc	a5,0x5
    80002b58:	bfc7b783          	ld	a5,-1028(a5) # 80007750 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b5c:	02078263          	beqz	a5,80002b80 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002b60:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b64:	00005797          	auipc	a5,0x5
    80002b68:	bea7b623          	sd	a0,-1044(a5) # 80007750 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002b6c:	01813083          	ld	ra,24(sp)
    80002b70:	01013403          	ld	s0,16(sp)
    80002b74:	00813483          	ld	s1,8(sp)
    80002b78:	02010113          	addi	sp,sp,32
    80002b7c:	00008067          	ret
            head = tail = elem;
    80002b80:	00005797          	auipc	a5,0x5
    80002b84:	bc878793          	addi	a5,a5,-1080 # 80007748 <_ZN9Scheduler16readyThreadQueueE>
    80002b88:	00a7b423          	sd	a0,8(a5)
    80002b8c:	00a7b023          	sd	a0,0(a5)
    80002b90:	fddff06f          	j	80002b6c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b94 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002b94:	ff010113          	addi	sp,sp,-16
    80002b98:	00813423          	sd	s0,8(sp)
    80002b9c:	01010413          	addi	s0,sp,16
}
    80002ba0:	00053503          	ld	a0,0(a0)
    80002ba4:	00813403          	ld	s0,8(sp)
    80002ba8:	01010113          	addi	sp,sp,16
    80002bac:	00008067          	ret

0000000080002bb0 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    80002bb0:	ff010113          	addi	sp,sp,-16
    80002bb4:	00113423          	sd	ra,8(sp)
    80002bb8:	00813023          	sd	s0,0(sp)
    80002bbc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002bc0:	00000097          	auipc	ra,0x0
    80002bc4:	074080e7          	jalr	116(ra) # 80002c34 <_ZN15MemoryAllocator6mallocEm>
}
    80002bc8:	00813083          	ld	ra,8(sp)
    80002bcc:	00013403          	ld	s0,0(sp)
    80002bd0:	01010113          	addi	sp,sp,16
    80002bd4:	00008067          	ret

0000000080002bd8 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    80002bd8:	ff010113          	addi	sp,sp,-16
    80002bdc:	00113423          	sd	ra,8(sp)
    80002be0:	00813023          	sd	s0,0(sp)
    80002be4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002be8:	00000097          	auipc	ra,0x0
    80002bec:	0e8080e7          	jalr	232(ra) # 80002cd0 <_ZN15MemoryAllocator4freeEPv>
}
    80002bf0:	00813083          	ld	ra,8(sp)
    80002bf4:	00013403          	ld	s0,0(sp)
    80002bf8:	01010113          	addi	sp,sp,16
    80002bfc:	00008067          	ret

0000000080002c00 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002c00:	ff010113          	addi	sp,sp,-16
    80002c04:	00113423          	sd	ra,8(sp)
    80002c08:	00813023          	sd	s0,0(sp)
    80002c0c:	01010413          	addi	s0,sp,16
    80002c10:	000105b7          	lui	a1,0x10
    80002c14:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002c18:	00100513          	li	a0,1
    80002c1c:	00000097          	auipc	ra,0x0
    80002c20:	e88080e7          	jalr	-376(ra) # 80002aa4 <_Z41__static_initialization_and_destruction_0ii>
    80002c24:	00813083          	ld	ra,8(sp)
    80002c28:	00013403          	ld	s0,0(sp)
    80002c2c:	01010113          	addi	sp,sp,16
    80002c30:	00008067          	ret

0000000080002c34 <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    80002c34:	ff010113          	addi	sp,sp,-16
    80002c38:	00813423          	sd	s0,8(sp)
    80002c3c:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002c40:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    80002c44:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002c48:	00005517          	auipc	a0,0x5
    80002c4c:	b1053503          	ld	a0,-1264(a0) # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002c50:	0440006f          	j	80002c94 <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80002c54:	40e787b3          	sub	a5,a5,a4
    80002c58:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80002c5c:	fe878793          	addi	a5,a5,-24
    80002c60:	00679793          	slli	a5,a5,0x6
    80002c64:	fe878793          	addi	a5,a5,-24
    80002c68:	00f507b3          	add	a5,a0,a5
    80002c6c:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80002c70:	01053783          	ld	a5,16(a0)
    80002c74:	fe878793          	addi	a5,a5,-24
    80002c78:	00679793          	slli	a5,a5,0x6
    80002c7c:	ff078793          	addi	a5,a5,-16
    80002c80:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80002c84:	00813403          	ld	s0,8(sp)
    80002c88:	01010113          	addi	sp,sp,16
    80002c8c:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002c90:	00053503          	ld	a0,0(a0)
    80002c94:	fe0508e3          	beqz	a0,80002c84 <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    80002c98:	01053783          	ld	a5,16(a0)
    80002c9c:	faf76ce3          	bltu	a4,a5,80002c54 <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80002ca0:	fee798e3          	bne	a5,a4,80002c90 <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    80002ca4:	00853783          	ld	a5,8(a0)
    80002ca8:	00078663          	beqz	a5,80002cb4 <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    80002cac:	00053683          	ld	a3,0(a0)
    80002cb0:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    80002cb4:	00053783          	ld	a5,0(a0)
    80002cb8:	00078663          	beqz	a5,80002cc4 <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    80002cbc:	00853683          	ld	a3,8(a0)
    80002cc0:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    80002cc4:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    80002cc8:	ff050513          	addi	a0,a0,-16
    80002ccc:	fb9ff06f          	j	80002c84 <_ZN15MemoryAllocator6mallocEm+0x50>

0000000080002cd0 <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    80002cd0:	ff010113          	addi	sp,sp,-16
    80002cd4:	00813423          	sd	s0,8(sp)
    80002cd8:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002cdc:	14050663          	beqz	a0,80002e28 <_ZN15MemoryAllocator4freeEPv+0x158>
    80002ce0:	00005797          	auipc	a5,0x5
    80002ce4:	9f87b783          	ld	a5,-1544(a5) # 800076d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002ce8:	0007b783          	ld	a5,0(a5)
    80002cec:	14a7e263          	bltu	a5,a0,80002e30 <_ZN15MemoryAllocator4freeEPv+0x160>
    80002cf0:	00005797          	auipc	a5,0x5
    80002cf4:	9c07b783          	ld	a5,-1600(a5) # 800076b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002cf8:	0007b783          	ld	a5,0(a5)
    80002cfc:	14f56263          	bltu	a0,a5,80002e40 <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    80002d00:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    80002d04:	14070263          	beqz	a4,80002e48 <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    80002d08:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    80002d0c:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002d10:	00005797          	auipc	a5,0x5
    80002d14:	a487b783          	ld	a5,-1464(a5) # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d18:	0140006f          	j	80002d2c <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80002d1c:	00005697          	auipc	a3,0x5
    80002d20:	a446b683          	ld	a3,-1468(a3) # 80007760 <_ZN15MemoryAllocator4tailE>
    80002d24:	02f68e63          	beq	a3,a5,80002d60 <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002d28:	0007b783          	ld	a5,0(a5)
    80002d2c:	04078863          	beqz	a5,80002d7c <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    80002d30:	fee7f6e3          	bgeu	a5,a4,80002d1c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002d34:	0007b683          	ld	a3,0(a5)
    80002d38:	fed772e3          	bgeu	a4,a3,80002d1c <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002d3c:	00005617          	auipc	a2,0x5
    80002d40:	a2463603          	ld	a2,-1500(a2) # 80007760 <_ZN15MemoryAllocator4tailE>
    80002d44:	fcf60ce3          	beq	a2,a5,80002d1c <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    80002d48:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80002d4c:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80002d50:	0007b683          	ld	a3,0(a5)
    80002d54:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    80002d58:	00e7b023          	sd	a4,0(a5)
    80002d5c:	fcdff06f          	j	80002d28 <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80002d60:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80002d64:	00005797          	auipc	a5,0x5
    80002d68:	9f478793          	addi	a5,a5,-1548 # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d6c:	0087b683          	ld	a3,8(a5)
    80002d70:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80002d74:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    80002d78:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80002d7c:	00005797          	auipc	a5,0x5
    80002d80:	9dc7b783          	ld	a5,-1572(a5) # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d84:	02078e63          	beqz	a5,80002dc0 <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    80002d88:	00053783          	ld	a5,0(a0)
    80002d8c:	00078a63          	beqz	a5,80002da0 <_ZN15MemoryAllocator4freeEPv+0xd0>
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
    80002d90:	0107b603          	ld	a2,16(a5)
    80002d94:	00661693          	slli	a3,a2,0x6
    80002d98:	00d786b3          	add	a3,a5,a3
    80002d9c:	02e68a63          	beq	a3,a4,80002dd0 <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    80002da0:	00073783          	ld	a5,0(a4)
    80002da4:	0a078663          	beqz	a5,80002e50 <_ZN15MemoryAllocator4freeEPv+0x180>
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
    80002da8:	01073603          	ld	a2,16(a4)
    80002dac:	00661693          	slli	a3,a2,0x6
    80002db0:	00d706b3          	add	a3,a4,a3
    80002db4:	04d78463          	beq	a5,a3,80002dfc <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    80002db8:	00000513          	li	a0,0
    80002dbc:	0780006f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    80002dc0:	00005797          	auipc	a5,0x5
    80002dc4:	98e7bc23          	sd	a4,-1640(a5) # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    80002dc8:	00000513          	li	a0,0
    80002dcc:	0680006f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    80002dd0:	00853703          	ld	a4,8(a0)
    80002dd4:	00e60633          	add	a2,a2,a4
    80002dd8:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    80002ddc:	00053703          	ld	a4,0(a0)
    80002de0:	ff853783          	ld	a5,-8(a0)
    80002de4:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    80002de8:	00078663          	beqz	a5,80002df4 <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    80002dec:	00053703          	ld	a4,0(a0)
    80002df0:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    80002df4:	00053703          	ld	a4,0(a0)
    80002df8:	fa9ff06f          	j	80002da0 <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    80002dfc:	0107b683          	ld	a3,16(a5)
    80002e00:	00d60633          	add	a2,a2,a3
    80002e04:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    80002e08:	0007b783          	ld	a5,0(a5)
    80002e0c:	04078663          	beqz	a5,80002e58 <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    80002e10:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    80002e14:	00073783          	ld	a5,0(a4)
    80002e18:	0007b783          	ld	a5,0(a5)
    80002e1c:	00f73023          	sd	a5,0(a4)
    return 0;
    80002e20:	00000513          	li	a0,0
    80002e24:	0100006f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002e28:	00100513          	li	a0,1
    80002e2c:	0080006f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
    80002e30:	00100513          	li	a0,1
}
    80002e34:	00813403          	ld	s0,8(sp)
    80002e38:	01010113          	addi	sp,sp,16
    80002e3c:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002e40:	00100513          	li	a0,1
    80002e44:	ff1ff06f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    80002e48:	00100513          	li	a0,1
    80002e4c:	fe9ff06f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    80002e50:	00000513          	li	a0,0
    80002e54:	fe1ff06f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>
    80002e58:	00000513          	li	a0,0
    80002e5c:	fd9ff06f          	j	80002e34 <_ZN15MemoryAllocator4freeEPv+0x164>

0000000080002e60 <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    80002e60:	ff010113          	addi	sp,sp,-16
    80002e64:	00813423          	sd	s0,8(sp)
    80002e68:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80002e6c:	00005797          	auipc	a5,0x5
    80002e70:	8447b783          	ld	a5,-1980(a5) # 800076b0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e74:	0007b703          	ld	a4,0(a5)
    80002e78:	00005697          	auipc	a3,0x5
    80002e7c:	8e068693          	addi	a3,a3,-1824 # 80007758 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002e80:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80002e84:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80002e88:	00005797          	auipc	a5,0x5
    80002e8c:	8507b783          	ld	a5,-1968(a5) # 800076d8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e90:	0007b783          	ld	a5,0(a5)
    80002e94:	40e787b3          	sub	a5,a5,a4
    80002e98:	03f78793          	addi	a5,a5,63
    80002e9c:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    80002ea0:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80002ea4:	00e6b423          	sd	a4,8(a3)
    freeBlockHead->next= nullptr;
    80002ea8:	00073023          	sd	zero,0(a4)
    freeBlockHead->prev= nullptr;
    80002eac:	0006b783          	ld	a5,0(a3)
    80002eb0:	0007b423          	sd	zero,8(a5)
}
    80002eb4:	00813403          	ld	s0,8(sp)
    80002eb8:	01010113          	addi	sp,sp,16
    80002ebc:	00008067          	ret

0000000080002ec0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ec0:	fe010113          	addi	sp,sp,-32
    80002ec4:	00113c23          	sd	ra,24(sp)
    80002ec8:	00813823          	sd	s0,16(sp)
    80002ecc:	00913423          	sd	s1,8(sp)
    80002ed0:	02010413          	addi	s0,sp,32
    80002ed4:	00050493          	mv	s1,a0
    LOCK();
    80002ed8:	00100613          	li	a2,1
    80002edc:	00000593          	li	a1,0
    80002ee0:	00005517          	auipc	a0,0x5
    80002ee4:	89050513          	addi	a0,a0,-1904 # 80007770 <lockPrint>
    80002ee8:	ffffe097          	auipc	ra,0xffffe
    80002eec:	32c080e7          	jalr	812(ra) # 80001214 <copy_and_swap>
    80002ef0:	fe0514e3          	bnez	a0,80002ed8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002ef4:	0004c503          	lbu	a0,0(s1)
    80002ef8:	00050a63          	beqz	a0,80002f0c <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002efc:	ffffe097          	auipc	ra,0xffffe
    80002f00:	540080e7          	jalr	1344(ra) # 8000143c <_Z4putcc>
        string++;
    80002f04:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f08:	fedff06f          	j	80002ef4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002f0c:	00000613          	li	a2,0
    80002f10:	00100593          	li	a1,1
    80002f14:	00005517          	auipc	a0,0x5
    80002f18:	85c50513          	addi	a0,a0,-1956 # 80007770 <lockPrint>
    80002f1c:	ffffe097          	auipc	ra,0xffffe
    80002f20:	2f8080e7          	jalr	760(ra) # 80001214 <copy_and_swap>
    80002f24:	fe0514e3          	bnez	a0,80002f0c <_Z11printStringPKc+0x4c>
}
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	02010113          	addi	sp,sp,32
    80002f38:	00008067          	ret

0000000080002f3c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f3c:	fd010113          	addi	sp,sp,-48
    80002f40:	02113423          	sd	ra,40(sp)
    80002f44:	02813023          	sd	s0,32(sp)
    80002f48:	00913c23          	sd	s1,24(sp)
    80002f4c:	01213823          	sd	s2,16(sp)
    80002f50:	01313423          	sd	s3,8(sp)
    80002f54:	01413023          	sd	s4,0(sp)
    80002f58:	03010413          	addi	s0,sp,48
    80002f5c:	00050993          	mv	s3,a0
    80002f60:	00058a13          	mv	s4,a1
    LOCK();
    80002f64:	00100613          	li	a2,1
    80002f68:	00000593          	li	a1,0
    80002f6c:	00005517          	auipc	a0,0x5
    80002f70:	80450513          	addi	a0,a0,-2044 # 80007770 <lockPrint>
    80002f74:	ffffe097          	auipc	ra,0xffffe
    80002f78:	2a0080e7          	jalr	672(ra) # 80001214 <copy_and_swap>
    80002f7c:	fe0514e3          	bnez	a0,80002f64 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f80:	00000913          	li	s2,0
    80002f84:	00090493          	mv	s1,s2
    80002f88:	0019091b          	addiw	s2,s2,1
    80002f8c:	03495a63          	bge	s2,s4,80002fc0 <_Z9getStringPci+0x84>
        cc = getc();
    80002f90:	ffffe097          	auipc	ra,0xffffe
    80002f94:	484080e7          	jalr	1156(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80002f98:	02050463          	beqz	a0,80002fc0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002f9c:	009984b3          	add	s1,s3,s1
    80002fa0:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002fa4:	00a00793          	li	a5,10
    80002fa8:	00f50a63          	beq	a0,a5,80002fbc <_Z9getStringPci+0x80>
    80002fac:	00d00793          	li	a5,13
    80002fb0:	fcf51ae3          	bne	a0,a5,80002f84 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002fb4:	00090493          	mv	s1,s2
    80002fb8:	0080006f          	j	80002fc0 <_Z9getStringPci+0x84>
    80002fbc:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002fc0:	009984b3          	add	s1,s3,s1
    80002fc4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fc8:	00000613          	li	a2,0
    80002fcc:	00100593          	li	a1,1
    80002fd0:	00004517          	auipc	a0,0x4
    80002fd4:	7a050513          	addi	a0,a0,1952 # 80007770 <lockPrint>
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	23c080e7          	jalr	572(ra) # 80001214 <copy_and_swap>
    80002fe0:	fe0514e3          	bnez	a0,80002fc8 <_Z9getStringPci+0x8c>
    return buf;
}
    80002fe4:	00098513          	mv	a0,s3
    80002fe8:	02813083          	ld	ra,40(sp)
    80002fec:	02013403          	ld	s0,32(sp)
    80002ff0:	01813483          	ld	s1,24(sp)
    80002ff4:	01013903          	ld	s2,16(sp)
    80002ff8:	00813983          	ld	s3,8(sp)
    80002ffc:	00013a03          	ld	s4,0(sp)
    80003000:	03010113          	addi	sp,sp,48
    80003004:	00008067          	ret

0000000080003008 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003008:	ff010113          	addi	sp,sp,-16
    8000300c:	00813423          	sd	s0,8(sp)
    80003010:	01010413          	addi	s0,sp,16
    80003014:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003018:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    8000301c:	0006c603          	lbu	a2,0(a3)
    80003020:	fd06071b          	addiw	a4,a2,-48
    80003024:	0ff77713          	andi	a4,a4,255
    80003028:	00900793          	li	a5,9
    8000302c:	02e7e063          	bltu	a5,a4,8000304c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003030:	0025179b          	slliw	a5,a0,0x2
    80003034:	00a787bb          	addw	a5,a5,a0
    80003038:	0017979b          	slliw	a5,a5,0x1
    8000303c:	00168693          	addi	a3,a3,1
    80003040:	00c787bb          	addw	a5,a5,a2
    80003044:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003048:	fd5ff06f          	j	8000301c <_Z11stringToIntPKc+0x14>
    return n;
}
    8000304c:	00813403          	ld	s0,8(sp)
    80003050:	01010113          	addi	sp,sp,16
    80003054:	00008067          	ret

0000000080003058 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003058:	fc010113          	addi	sp,sp,-64
    8000305c:	02113c23          	sd	ra,56(sp)
    80003060:	02813823          	sd	s0,48(sp)
    80003064:	02913423          	sd	s1,40(sp)
    80003068:	03213023          	sd	s2,32(sp)
    8000306c:	01313c23          	sd	s3,24(sp)
    80003070:	04010413          	addi	s0,sp,64
    80003074:	00050493          	mv	s1,a0
    80003078:	00058913          	mv	s2,a1
    8000307c:	00060993          	mv	s3,a2
    LOCK();
    80003080:	00100613          	li	a2,1
    80003084:	00000593          	li	a1,0
    80003088:	00004517          	auipc	a0,0x4
    8000308c:	6e850513          	addi	a0,a0,1768 # 80007770 <lockPrint>
    80003090:	ffffe097          	auipc	ra,0xffffe
    80003094:	184080e7          	jalr	388(ra) # 80001214 <copy_and_swap>
    80003098:	fe0514e3          	bnez	a0,80003080 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    8000309c:	00098463          	beqz	s3,800030a4 <_Z8printIntiii+0x4c>
    800030a0:	0804c463          	bltz	s1,80003128 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800030a4:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030a8:	00000593          	li	a1,0
    }

    i = 0;
    800030ac:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030b0:	0009079b          	sext.w	a5,s2
    800030b4:	0325773b          	remuw	a4,a0,s2
    800030b8:	00048613          	mv	a2,s1
    800030bc:	0014849b          	addiw	s1,s1,1
    800030c0:	02071693          	slli	a3,a4,0x20
    800030c4:	0206d693          	srli	a3,a3,0x20
    800030c8:	00004717          	auipc	a4,0x4
    800030cc:	5c870713          	addi	a4,a4,1480 # 80007690 <digits>
    800030d0:	00d70733          	add	a4,a4,a3
    800030d4:	00074683          	lbu	a3,0(a4)
    800030d8:	fd040713          	addi	a4,s0,-48
    800030dc:	00c70733          	add	a4,a4,a2
    800030e0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800030e4:	0005071b          	sext.w	a4,a0
    800030e8:	0325553b          	divuw	a0,a0,s2
    800030ec:	fcf772e3          	bgeu	a4,a5,800030b0 <_Z8printIntiii+0x58>
    if(neg)
    800030f0:	00058c63          	beqz	a1,80003108 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800030f4:	fd040793          	addi	a5,s0,-48
    800030f8:	009784b3          	add	s1,a5,s1
    800030fc:	02d00793          	li	a5,45
    80003100:	fef48823          	sb	a5,-16(s1)
    80003104:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003108:	fff4849b          	addiw	s1,s1,-1
    8000310c:	0204c463          	bltz	s1,80003134 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003110:	fd040793          	addi	a5,s0,-48
    80003114:	009787b3          	add	a5,a5,s1
    80003118:	ff07c503          	lbu	a0,-16(a5)
    8000311c:	ffffe097          	auipc	ra,0xffffe
    80003120:	320080e7          	jalr	800(ra) # 8000143c <_Z4putcc>
    80003124:	fe5ff06f          	j	80003108 <_Z8printIntiii+0xb0>
        x = -xx;
    80003128:	4090053b          	negw	a0,s1
        neg = 1;
    8000312c:	00100593          	li	a1,1
        x = -xx;
    80003130:	f7dff06f          	j	800030ac <_Z8printIntiii+0x54>

    UNLOCK();
    80003134:	00000613          	li	a2,0
    80003138:	00100593          	li	a1,1
    8000313c:	00004517          	auipc	a0,0x4
    80003140:	63450513          	addi	a0,a0,1588 # 80007770 <lockPrint>
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	0d0080e7          	jalr	208(ra) # 80001214 <copy_and_swap>
    8000314c:	fe0514e3          	bnez	a0,80003134 <_Z8printIntiii+0xdc>
    80003150:	03813083          	ld	ra,56(sp)
    80003154:	03013403          	ld	s0,48(sp)
    80003158:	02813483          	ld	s1,40(sp)
    8000315c:	02013903          	ld	s2,32(sp)
    80003160:	01813983          	ld	s3,24(sp)
    80003164:	04010113          	addi	sp,sp,64
    80003168:	00008067          	ret

000000008000316c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000316c:	fd010113          	addi	sp,sp,-48
    80003170:	02113423          	sd	ra,40(sp)
    80003174:	02813023          	sd	s0,32(sp)
    80003178:	00913c23          	sd	s1,24(sp)
    8000317c:	01213823          	sd	s2,16(sp)
    80003180:	01313423          	sd	s3,8(sp)
    80003184:	03010413          	addi	s0,sp,48
    80003188:	00050493          	mv	s1,a0
    8000318c:	00058913          	mv	s2,a1
    80003190:	0015879b          	addiw	a5,a1,1
    80003194:	0007851b          	sext.w	a0,a5
    80003198:	00f4a023          	sw	a5,0(s1)
    8000319c:	0004a823          	sw	zero,16(s1)
    800031a0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800031a4:	00251513          	slli	a0,a0,0x2
    800031a8:	ffffe097          	auipc	ra,0xffffe
    800031ac:	08c080e7          	jalr	140(ra) # 80001234 <_Z9mem_allocm>
    800031b0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800031b4:	01000513          	li	a0,16
    800031b8:	fffff097          	auipc	ra,0xfffff
    800031bc:	140080e7          	jalr	320(ra) # 800022f8 <_Znwm>
    800031c0:	00050993          	mv	s3,a0
    800031c4:	00000593          	li	a1,0
    800031c8:	fffff097          	auipc	ra,0xfffff
    800031cc:	050080e7          	jalr	80(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    800031d0:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800031d4:	01000513          	li	a0,16
    800031d8:	fffff097          	auipc	ra,0xfffff
    800031dc:	120080e7          	jalr	288(ra) # 800022f8 <_Znwm>
    800031e0:	00050993          	mv	s3,a0
    800031e4:	00090593          	mv	a1,s2
    800031e8:	fffff097          	auipc	ra,0xfffff
    800031ec:	030080e7          	jalr	48(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    800031f0:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800031f4:	01000513          	li	a0,16
    800031f8:	fffff097          	auipc	ra,0xfffff
    800031fc:	100080e7          	jalr	256(ra) # 800022f8 <_Znwm>
    80003200:	00050913          	mv	s2,a0
    80003204:	00100593          	li	a1,1
    80003208:	fffff097          	auipc	ra,0xfffff
    8000320c:	010080e7          	jalr	16(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    80003210:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80003214:	01000513          	li	a0,16
    80003218:	fffff097          	auipc	ra,0xfffff
    8000321c:	0e0080e7          	jalr	224(ra) # 800022f8 <_Znwm>
    80003220:	00050913          	mv	s2,a0
    80003224:	00100593          	li	a1,1
    80003228:	fffff097          	auipc	ra,0xfffff
    8000322c:	ff0080e7          	jalr	-16(ra) # 80002218 <_ZN9SemaphoreC1Ej>
    80003230:	0324b823          	sd	s2,48(s1)
}
    80003234:	02813083          	ld	ra,40(sp)
    80003238:	02013403          	ld	s0,32(sp)
    8000323c:	01813483          	ld	s1,24(sp)
    80003240:	01013903          	ld	s2,16(sp)
    80003244:	00813983          	ld	s3,8(sp)
    80003248:	03010113          	addi	sp,sp,48
    8000324c:	00008067          	ret
    80003250:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003254:	00098513          	mv	a0,s3
    80003258:	fffff097          	auipc	ra,0xfffff
    8000325c:	0f0080e7          	jalr	240(ra) # 80002348 <_ZdlPv>
    80003260:	00048513          	mv	a0,s1
    80003264:	00005097          	auipc	ra,0x5
    80003268:	5e4080e7          	jalr	1508(ra) # 80008848 <_Unwind_Resume>
    8000326c:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003270:	00098513          	mv	a0,s3
    80003274:	fffff097          	auipc	ra,0xfffff
    80003278:	0d4080e7          	jalr	212(ra) # 80002348 <_ZdlPv>
    8000327c:	00048513          	mv	a0,s1
    80003280:	00005097          	auipc	ra,0x5
    80003284:	5c8080e7          	jalr	1480(ra) # 80008848 <_Unwind_Resume>
    80003288:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    8000328c:	00090513          	mv	a0,s2
    80003290:	fffff097          	auipc	ra,0xfffff
    80003294:	0b8080e7          	jalr	184(ra) # 80002348 <_ZdlPv>
    80003298:	00048513          	mv	a0,s1
    8000329c:	00005097          	auipc	ra,0x5
    800032a0:	5ac080e7          	jalr	1452(ra) # 80008848 <_Unwind_Resume>
    800032a4:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800032a8:	00090513          	mv	a0,s2
    800032ac:	fffff097          	auipc	ra,0xfffff
    800032b0:	09c080e7          	jalr	156(ra) # 80002348 <_ZdlPv>
    800032b4:	00048513          	mv	a0,s1
    800032b8:	00005097          	auipc	ra,0x5
    800032bc:	590080e7          	jalr	1424(ra) # 80008848 <_Unwind_Resume>

00000000800032c0 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800032c0:	fe010113          	addi	sp,sp,-32
    800032c4:	00113c23          	sd	ra,24(sp)
    800032c8:	00813823          	sd	s0,16(sp)
    800032cc:	00913423          	sd	s1,8(sp)
    800032d0:	01213023          	sd	s2,0(sp)
    800032d4:	02010413          	addi	s0,sp,32
    800032d8:	00050493          	mv	s1,a0
    800032dc:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800032e0:	01853503          	ld	a0,24(a0)
    800032e4:	fffff097          	auipc	ra,0xfffff
    800032e8:	f6c080e7          	jalr	-148(ra) # 80002250 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800032ec:	0304b503          	ld	a0,48(s1)
    800032f0:	fffff097          	auipc	ra,0xfffff
    800032f4:	f60080e7          	jalr	-160(ra) # 80002250 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800032f8:	0084b783          	ld	a5,8(s1)
    800032fc:	0144a703          	lw	a4,20(s1)
    80003300:	00271713          	slli	a4,a4,0x2
    80003304:	00e787b3          	add	a5,a5,a4
    80003308:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000330c:	0144a783          	lw	a5,20(s1)
    80003310:	0017879b          	addiw	a5,a5,1
    80003314:	0004a703          	lw	a4,0(s1)
    80003318:	02e7e7bb          	remw	a5,a5,a4
    8000331c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003320:	0304b503          	ld	a0,48(s1)
    80003324:	fffff097          	auipc	ra,0xfffff
    80003328:	f58080e7          	jalr	-168(ra) # 8000227c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    8000332c:	0204b503          	ld	a0,32(s1)
    80003330:	fffff097          	auipc	ra,0xfffff
    80003334:	f4c080e7          	jalr	-180(ra) # 8000227c <_ZN9Semaphore6signalEv>

}
    80003338:	01813083          	ld	ra,24(sp)
    8000333c:	01013403          	ld	s0,16(sp)
    80003340:	00813483          	ld	s1,8(sp)
    80003344:	00013903          	ld	s2,0(sp)
    80003348:	02010113          	addi	sp,sp,32
    8000334c:	00008067          	ret

0000000080003350 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003350:	fe010113          	addi	sp,sp,-32
    80003354:	00113c23          	sd	ra,24(sp)
    80003358:	00813823          	sd	s0,16(sp)
    8000335c:	00913423          	sd	s1,8(sp)
    80003360:	01213023          	sd	s2,0(sp)
    80003364:	02010413          	addi	s0,sp,32
    80003368:	00050493          	mv	s1,a0
    itemAvailable->wait();
    8000336c:	02053503          	ld	a0,32(a0)
    80003370:	fffff097          	auipc	ra,0xfffff
    80003374:	ee0080e7          	jalr	-288(ra) # 80002250 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003378:	0284b503          	ld	a0,40(s1)
    8000337c:	fffff097          	auipc	ra,0xfffff
    80003380:	ed4080e7          	jalr	-300(ra) # 80002250 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003384:	0084b703          	ld	a4,8(s1)
    80003388:	0104a783          	lw	a5,16(s1)
    8000338c:	00279693          	slli	a3,a5,0x2
    80003390:	00d70733          	add	a4,a4,a3
    80003394:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003398:	0017879b          	addiw	a5,a5,1
    8000339c:	0004a703          	lw	a4,0(s1)
    800033a0:	02e7e7bb          	remw	a5,a5,a4
    800033a4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800033a8:	0284b503          	ld	a0,40(s1)
    800033ac:	fffff097          	auipc	ra,0xfffff
    800033b0:	ed0080e7          	jalr	-304(ra) # 8000227c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800033b4:	0184b503          	ld	a0,24(s1)
    800033b8:	fffff097          	auipc	ra,0xfffff
    800033bc:	ec4080e7          	jalr	-316(ra) # 8000227c <_ZN9Semaphore6signalEv>

    return ret;
}
    800033c0:	00090513          	mv	a0,s2
    800033c4:	01813083          	ld	ra,24(sp)
    800033c8:	01013403          	ld	s0,16(sp)
    800033cc:	00813483          	ld	s1,8(sp)
    800033d0:	00013903          	ld	s2,0(sp)
    800033d4:	02010113          	addi	sp,sp,32
    800033d8:	00008067          	ret

00000000800033dc <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800033dc:	fe010113          	addi	sp,sp,-32
    800033e0:	00113c23          	sd	ra,24(sp)
    800033e4:	00813823          	sd	s0,16(sp)
    800033e8:	00913423          	sd	s1,8(sp)
    800033ec:	01213023          	sd	s2,0(sp)
    800033f0:	02010413          	addi	s0,sp,32
    800033f4:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800033f8:	02853503          	ld	a0,40(a0)
    800033fc:	fffff097          	auipc	ra,0xfffff
    80003400:	e54080e7          	jalr	-428(ra) # 80002250 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80003404:	0304b503          	ld	a0,48(s1)
    80003408:	fffff097          	auipc	ra,0xfffff
    8000340c:	e48080e7          	jalr	-440(ra) # 80002250 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003410:	0144a783          	lw	a5,20(s1)
    80003414:	0104a903          	lw	s2,16(s1)
    80003418:	0327ce63          	blt	a5,s2,80003454 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    8000341c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003420:	0304b503          	ld	a0,48(s1)
    80003424:	fffff097          	auipc	ra,0xfffff
    80003428:	e58080e7          	jalr	-424(ra) # 8000227c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    8000342c:	0284b503          	ld	a0,40(s1)
    80003430:	fffff097          	auipc	ra,0xfffff
    80003434:	e4c080e7          	jalr	-436(ra) # 8000227c <_ZN9Semaphore6signalEv>

    return ret;
}
    80003438:	00090513          	mv	a0,s2
    8000343c:	01813083          	ld	ra,24(sp)
    80003440:	01013403          	ld	s0,16(sp)
    80003444:	00813483          	ld	s1,8(sp)
    80003448:	00013903          	ld	s2,0(sp)
    8000344c:	02010113          	addi	sp,sp,32
    80003450:	00008067          	ret
        ret = cap - head + tail;
    80003454:	0004a703          	lw	a4,0(s1)
    80003458:	4127093b          	subw	s2,a4,s2
    8000345c:	00f9093b          	addw	s2,s2,a5
    80003460:	fc1ff06f          	j	80003420 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003464 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003464:	fe010113          	addi	sp,sp,-32
    80003468:	00113c23          	sd	ra,24(sp)
    8000346c:	00813823          	sd	s0,16(sp)
    80003470:	00913423          	sd	s1,8(sp)
    80003474:	02010413          	addi	s0,sp,32
    80003478:	00050493          	mv	s1,a0
    Console::putc('\n');
    8000347c:	00a00513          	li	a0,10
    80003480:	fffff097          	auipc	ra,0xfffff
    80003484:	e50080e7          	jalr	-432(ra) # 800022d0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003488:	00003517          	auipc	a0,0x3
    8000348c:	c9050513          	addi	a0,a0,-880 # 80006118 <CONSOLE_STATUS+0x108>
    80003490:	00000097          	auipc	ra,0x0
    80003494:	a30080e7          	jalr	-1488(ra) # 80002ec0 <_Z11printStringPKc>
    while (getCnt()) {
    80003498:	00048513          	mv	a0,s1
    8000349c:	00000097          	auipc	ra,0x0
    800034a0:	f40080e7          	jalr	-192(ra) # 800033dc <_ZN9BufferCPP6getCntEv>
    800034a4:	02050c63          	beqz	a0,800034dc <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800034a8:	0084b783          	ld	a5,8(s1)
    800034ac:	0104a703          	lw	a4,16(s1)
    800034b0:	00271713          	slli	a4,a4,0x2
    800034b4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800034b8:	0007c503          	lbu	a0,0(a5)
    800034bc:	fffff097          	auipc	ra,0xfffff
    800034c0:	e14080e7          	jalr	-492(ra) # 800022d0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800034c4:	0104a783          	lw	a5,16(s1)
    800034c8:	0017879b          	addiw	a5,a5,1
    800034cc:	0004a703          	lw	a4,0(s1)
    800034d0:	02e7e7bb          	remw	a5,a5,a4
    800034d4:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800034d8:	fc1ff06f          	j	80003498 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800034dc:	02100513          	li	a0,33
    800034e0:	fffff097          	auipc	ra,0xfffff
    800034e4:	df0080e7          	jalr	-528(ra) # 800022d0 <_ZN7Console4putcEc>
    Console::putc('\n');
    800034e8:	00a00513          	li	a0,10
    800034ec:	fffff097          	auipc	ra,0xfffff
    800034f0:	de4080e7          	jalr	-540(ra) # 800022d0 <_ZN7Console4putcEc>
    mem_free(buffer);
    800034f4:	0084b503          	ld	a0,8(s1)
    800034f8:	ffffe097          	auipc	ra,0xffffe
    800034fc:	d64080e7          	jalr	-668(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    80003500:	0204b503          	ld	a0,32(s1)
    80003504:	00050863          	beqz	a0,80003514 <_ZN9BufferCPPD1Ev+0xb0>
    80003508:	00053783          	ld	a5,0(a0)
    8000350c:	0087b783          	ld	a5,8(a5)
    80003510:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003514:	0184b503          	ld	a0,24(s1)
    80003518:	00050863          	beqz	a0,80003528 <_ZN9BufferCPPD1Ev+0xc4>
    8000351c:	00053783          	ld	a5,0(a0)
    80003520:	0087b783          	ld	a5,8(a5)
    80003524:	000780e7          	jalr	a5
    delete mutexTail;
    80003528:	0304b503          	ld	a0,48(s1)
    8000352c:	00050863          	beqz	a0,8000353c <_ZN9BufferCPPD1Ev+0xd8>
    80003530:	00053783          	ld	a5,0(a0)
    80003534:	0087b783          	ld	a5,8(a5)
    80003538:	000780e7          	jalr	a5
    delete mutexHead;
    8000353c:	0284b503          	ld	a0,40(s1)
    80003540:	00050863          	beqz	a0,80003550 <_ZN9BufferCPPD1Ev+0xec>
    80003544:	00053783          	ld	a5,0(a0)
    80003548:	0087b783          	ld	a5,8(a5)
    8000354c:	000780e7          	jalr	a5
}
    80003550:	01813083          	ld	ra,24(sp)
    80003554:	01013403          	ld	s0,16(sp)
    80003558:	00813483          	ld	s1,8(sp)
    8000355c:	02010113          	addi	sp,sp,32
    80003560:	00008067          	ret

0000000080003564 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003564:	fe010113          	addi	sp,sp,-32
    80003568:	00113c23          	sd	ra,24(sp)
    8000356c:	00813823          	sd	s0,16(sp)
    80003570:	00913423          	sd	s1,8(sp)
    80003574:	01213023          	sd	s2,0(sp)
    80003578:	02010413          	addi	s0,sp,32
    8000357c:	00050493          	mv	s1,a0
    80003580:	00058913          	mv	s2,a1
    80003584:	0015879b          	addiw	a5,a1,1
    80003588:	0007851b          	sext.w	a0,a5
    8000358c:	00f4a023          	sw	a5,0(s1)
    80003590:	0004a823          	sw	zero,16(s1)
    80003594:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003598:	00251513          	slli	a0,a0,0x2
    8000359c:	ffffe097          	auipc	ra,0xffffe
    800035a0:	c98080e7          	jalr	-872(ra) # 80001234 <_Z9mem_allocm>
    800035a4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800035a8:	00000593          	li	a1,0
    800035ac:	02048513          	addi	a0,s1,32
    800035b0:	ffffe097          	auipc	ra,0xffffe
    800035b4:	db0080e7          	jalr	-592(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    800035b8:	00090593          	mv	a1,s2
    800035bc:	01848513          	addi	a0,s1,24
    800035c0:	ffffe097          	auipc	ra,0xffffe
    800035c4:	da0080e7          	jalr	-608(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    800035c8:	00100593          	li	a1,1
    800035cc:	02848513          	addi	a0,s1,40
    800035d0:	ffffe097          	auipc	ra,0xffffe
    800035d4:	d90080e7          	jalr	-624(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    800035d8:	00100593          	li	a1,1
    800035dc:	03048513          	addi	a0,s1,48
    800035e0:	ffffe097          	auipc	ra,0xffffe
    800035e4:	d80080e7          	jalr	-640(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    800035e8:	01813083          	ld	ra,24(sp)
    800035ec:	01013403          	ld	s0,16(sp)
    800035f0:	00813483          	ld	s1,8(sp)
    800035f4:	00013903          	ld	s2,0(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret

0000000080003600 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003600:	fe010113          	addi	sp,sp,-32
    80003604:	00113c23          	sd	ra,24(sp)
    80003608:	00813823          	sd	s0,16(sp)
    8000360c:	00913423          	sd	s1,8(sp)
    80003610:	01213023          	sd	s2,0(sp)
    80003614:	02010413          	addi	s0,sp,32
    80003618:	00050493          	mv	s1,a0
    8000361c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003620:	01853503          	ld	a0,24(a0)
    80003624:	ffffe097          	auipc	ra,0xffffe
    80003628:	d98080e7          	jalr	-616(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    8000362c:	0304b503          	ld	a0,48(s1)
    80003630:	ffffe097          	auipc	ra,0xffffe
    80003634:	d8c080e7          	jalr	-628(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80003638:	0084b783          	ld	a5,8(s1)
    8000363c:	0144a703          	lw	a4,20(s1)
    80003640:	00271713          	slli	a4,a4,0x2
    80003644:	00e787b3          	add	a5,a5,a4
    80003648:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000364c:	0144a783          	lw	a5,20(s1)
    80003650:	0017879b          	addiw	a5,a5,1
    80003654:	0004a703          	lw	a4,0(s1)
    80003658:	02e7e7bb          	remw	a5,a5,a4
    8000365c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003660:	0304b503          	ld	a0,48(s1)
    80003664:	ffffe097          	auipc	ra,0xffffe
    80003668:	d84080e7          	jalr	-636(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    8000366c:	0204b503          	ld	a0,32(s1)
    80003670:	ffffe097          	auipc	ra,0xffffe
    80003674:	d78080e7          	jalr	-648(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    80003678:	01813083          	ld	ra,24(sp)
    8000367c:	01013403          	ld	s0,16(sp)
    80003680:	00813483          	ld	s1,8(sp)
    80003684:	00013903          	ld	s2,0(sp)
    80003688:	02010113          	addi	sp,sp,32
    8000368c:	00008067          	ret

0000000080003690 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003690:	fe010113          	addi	sp,sp,-32
    80003694:	00113c23          	sd	ra,24(sp)
    80003698:	00813823          	sd	s0,16(sp)
    8000369c:	00913423          	sd	s1,8(sp)
    800036a0:	01213023          	sd	s2,0(sp)
    800036a4:	02010413          	addi	s0,sp,32
    800036a8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800036ac:	02053503          	ld	a0,32(a0)
    800036b0:	ffffe097          	auipc	ra,0xffffe
    800036b4:	d0c080e7          	jalr	-756(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    800036b8:	0284b503          	ld	a0,40(s1)
    800036bc:	ffffe097          	auipc	ra,0xffffe
    800036c0:	d00080e7          	jalr	-768(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    800036c4:	0084b703          	ld	a4,8(s1)
    800036c8:	0104a783          	lw	a5,16(s1)
    800036cc:	00279693          	slli	a3,a5,0x2
    800036d0:	00d70733          	add	a4,a4,a3
    800036d4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800036d8:	0017879b          	addiw	a5,a5,1
    800036dc:	0004a703          	lw	a4,0(s1)
    800036e0:	02e7e7bb          	remw	a5,a5,a4
    800036e4:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800036e8:	0284b503          	ld	a0,40(s1)
    800036ec:	ffffe097          	auipc	ra,0xffffe
    800036f0:	cfc080e7          	jalr	-772(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    800036f4:	0184b503          	ld	a0,24(s1)
    800036f8:	ffffe097          	auipc	ra,0xffffe
    800036fc:	cf0080e7          	jalr	-784(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003700:	00090513          	mv	a0,s2
    80003704:	01813083          	ld	ra,24(sp)
    80003708:	01013403          	ld	s0,16(sp)
    8000370c:	00813483          	ld	s1,8(sp)
    80003710:	00013903          	ld	s2,0(sp)
    80003714:	02010113          	addi	sp,sp,32
    80003718:	00008067          	ret

000000008000371c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000371c:	fe010113          	addi	sp,sp,-32
    80003720:	00113c23          	sd	ra,24(sp)
    80003724:	00813823          	sd	s0,16(sp)
    80003728:	00913423          	sd	s1,8(sp)
    8000372c:	01213023          	sd	s2,0(sp)
    80003730:	02010413          	addi	s0,sp,32
    80003734:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003738:	02853503          	ld	a0,40(a0)
    8000373c:	ffffe097          	auipc	ra,0xffffe
    80003740:	c80080e7          	jalr	-896(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80003744:	0304b503          	ld	a0,48(s1)
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	c74080e7          	jalr	-908(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003750:	0144a783          	lw	a5,20(s1)
    80003754:	0104a903          	lw	s2,16(s1)
    80003758:	0327ce63          	blt	a5,s2,80003794 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000375c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003760:	0304b503          	ld	a0,48(s1)
    80003764:	ffffe097          	auipc	ra,0xffffe
    80003768:	c84080e7          	jalr	-892(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    8000376c:	0284b503          	ld	a0,40(s1)
    80003770:	ffffe097          	auipc	ra,0xffffe
    80003774:	c78080e7          	jalr	-904(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003778:	00090513          	mv	a0,s2
    8000377c:	01813083          	ld	ra,24(sp)
    80003780:	01013403          	ld	s0,16(sp)
    80003784:	00813483          	ld	s1,8(sp)
    80003788:	00013903          	ld	s2,0(sp)
    8000378c:	02010113          	addi	sp,sp,32
    80003790:	00008067          	ret
        ret = cap - head + tail;
    80003794:	0004a703          	lw	a4,0(s1)
    80003798:	4127093b          	subw	s2,a4,s2
    8000379c:	00f9093b          	addw	s2,s2,a5
    800037a0:	fc1ff06f          	j	80003760 <_ZN6Buffer6getCntEv+0x44>

00000000800037a4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800037a4:	fe010113          	addi	sp,sp,-32
    800037a8:	00113c23          	sd	ra,24(sp)
    800037ac:	00813823          	sd	s0,16(sp)
    800037b0:	00913423          	sd	s1,8(sp)
    800037b4:	02010413          	addi	s0,sp,32
    800037b8:	00050493          	mv	s1,a0
    putc('\n');
    800037bc:	00a00513          	li	a0,10
    800037c0:	ffffe097          	auipc	ra,0xffffe
    800037c4:	c7c080e7          	jalr	-900(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    800037c8:	00003517          	auipc	a0,0x3
    800037cc:	95050513          	addi	a0,a0,-1712 # 80006118 <CONSOLE_STATUS+0x108>
    800037d0:	fffff097          	auipc	ra,0xfffff
    800037d4:	6f0080e7          	jalr	1776(ra) # 80002ec0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800037d8:	00048513          	mv	a0,s1
    800037dc:	00000097          	auipc	ra,0x0
    800037e0:	f40080e7          	jalr	-192(ra) # 8000371c <_ZN6Buffer6getCntEv>
    800037e4:	02a05c63          	blez	a0,8000381c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800037e8:	0084b783          	ld	a5,8(s1)
    800037ec:	0104a703          	lw	a4,16(s1)
    800037f0:	00271713          	slli	a4,a4,0x2
    800037f4:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800037f8:	0007c503          	lbu	a0,0(a5)
    800037fc:	ffffe097          	auipc	ra,0xffffe
    80003800:	c40080e7          	jalr	-960(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    80003804:	0104a783          	lw	a5,16(s1)
    80003808:	0017879b          	addiw	a5,a5,1
    8000380c:	0004a703          	lw	a4,0(s1)
    80003810:	02e7e7bb          	remw	a5,a5,a4
    80003814:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003818:	fc1ff06f          	j	800037d8 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000381c:	02100513          	li	a0,33
    80003820:	ffffe097          	auipc	ra,0xffffe
    80003824:	c1c080e7          	jalr	-996(ra) # 8000143c <_Z4putcc>
    putc('\n');
    80003828:	00a00513          	li	a0,10
    8000382c:	ffffe097          	auipc	ra,0xffffe
    80003830:	c10080e7          	jalr	-1008(ra) # 8000143c <_Z4putcc>
    mem_free(buffer);
    80003834:	0084b503          	ld	a0,8(s1)
    80003838:	ffffe097          	auipc	ra,0xffffe
    8000383c:	a24080e7          	jalr	-1500(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003840:	0204b503          	ld	a0,32(s1)
    80003844:	ffffe097          	auipc	ra,0xffffe
    80003848:	b4c080e7          	jalr	-1204(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    8000384c:	0184b503          	ld	a0,24(s1)
    80003850:	ffffe097          	auipc	ra,0xffffe
    80003854:	b40080e7          	jalr	-1216(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003858:	0304b503          	ld	a0,48(s1)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	b34080e7          	jalr	-1228(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003864:	0284b503          	ld	a0,40(s1)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	b28080e7          	jalr	-1240(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003870:	01813083          	ld	ra,24(sp)
    80003874:	01013403          	ld	s0,16(sp)
    80003878:	00813483          	ld	s1,8(sp)
    8000387c:	02010113          	addi	sp,sp,32
    80003880:	00008067          	ret

0000000080003884 <start>:
    80003884:	ff010113          	addi	sp,sp,-16
    80003888:	00813423          	sd	s0,8(sp)
    8000388c:	01010413          	addi	s0,sp,16
    80003890:	300027f3          	csrr	a5,mstatus
    80003894:	ffffe737          	lui	a4,0xffffe
    80003898:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5e1f>
    8000389c:	00e7f7b3          	and	a5,a5,a4
    800038a0:	00001737          	lui	a4,0x1
    800038a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038a8:	00e7e7b3          	or	a5,a5,a4
    800038ac:	30079073          	csrw	mstatus,a5
    800038b0:	00000797          	auipc	a5,0x0
    800038b4:	16078793          	addi	a5,a5,352 # 80003a10 <system_main>
    800038b8:	34179073          	csrw	mepc,a5
    800038bc:	00000793          	li	a5,0
    800038c0:	18079073          	csrw	satp,a5
    800038c4:	000107b7          	lui	a5,0x10
    800038c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800038cc:	30279073          	csrw	medeleg,a5
    800038d0:	30379073          	csrw	mideleg,a5
    800038d4:	104027f3          	csrr	a5,sie
    800038d8:	2227e793          	ori	a5,a5,546
    800038dc:	10479073          	csrw	sie,a5
    800038e0:	fff00793          	li	a5,-1
    800038e4:	00a7d793          	srli	a5,a5,0xa
    800038e8:	3b079073          	csrw	pmpaddr0,a5
    800038ec:	00f00793          	li	a5,15
    800038f0:	3a079073          	csrw	pmpcfg0,a5
    800038f4:	f14027f3          	csrr	a5,mhartid
    800038f8:	0200c737          	lui	a4,0x200c
    800038fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003900:	0007869b          	sext.w	a3,a5
    80003904:	00269713          	slli	a4,a3,0x2
    80003908:	000f4637          	lui	a2,0xf4
    8000390c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003910:	00d70733          	add	a4,a4,a3
    80003914:	0037979b          	slliw	a5,a5,0x3
    80003918:	020046b7          	lui	a3,0x2004
    8000391c:	00d787b3          	add	a5,a5,a3
    80003920:	00c585b3          	add	a1,a1,a2
    80003924:	00371693          	slli	a3,a4,0x3
    80003928:	00004717          	auipc	a4,0x4
    8000392c:	e5870713          	addi	a4,a4,-424 # 80007780 <timer_scratch>
    80003930:	00b7b023          	sd	a1,0(a5)
    80003934:	00d70733          	add	a4,a4,a3
    80003938:	00f73c23          	sd	a5,24(a4)
    8000393c:	02c73023          	sd	a2,32(a4)
    80003940:	34071073          	csrw	mscratch,a4
    80003944:	00000797          	auipc	a5,0x0
    80003948:	6ec78793          	addi	a5,a5,1772 # 80004030 <timervec>
    8000394c:	30579073          	csrw	mtvec,a5
    80003950:	300027f3          	csrr	a5,mstatus
    80003954:	0087e793          	ori	a5,a5,8
    80003958:	30079073          	csrw	mstatus,a5
    8000395c:	304027f3          	csrr	a5,mie
    80003960:	0807e793          	ori	a5,a5,128
    80003964:	30479073          	csrw	mie,a5
    80003968:	f14027f3          	csrr	a5,mhartid
    8000396c:	0007879b          	sext.w	a5,a5
    80003970:	00078213          	mv	tp,a5
    80003974:	30200073          	mret
    80003978:	00813403          	ld	s0,8(sp)
    8000397c:	01010113          	addi	sp,sp,16
    80003980:	00008067          	ret

0000000080003984 <timerinit>:
    80003984:	ff010113          	addi	sp,sp,-16
    80003988:	00813423          	sd	s0,8(sp)
    8000398c:	01010413          	addi	s0,sp,16
    80003990:	f14027f3          	csrr	a5,mhartid
    80003994:	0200c737          	lui	a4,0x200c
    80003998:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000399c:	0007869b          	sext.w	a3,a5
    800039a0:	00269713          	slli	a4,a3,0x2
    800039a4:	000f4637          	lui	a2,0xf4
    800039a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039ac:	00d70733          	add	a4,a4,a3
    800039b0:	0037979b          	slliw	a5,a5,0x3
    800039b4:	020046b7          	lui	a3,0x2004
    800039b8:	00d787b3          	add	a5,a5,a3
    800039bc:	00c585b3          	add	a1,a1,a2
    800039c0:	00371693          	slli	a3,a4,0x3
    800039c4:	00004717          	auipc	a4,0x4
    800039c8:	dbc70713          	addi	a4,a4,-580 # 80007780 <timer_scratch>
    800039cc:	00b7b023          	sd	a1,0(a5)
    800039d0:	00d70733          	add	a4,a4,a3
    800039d4:	00f73c23          	sd	a5,24(a4)
    800039d8:	02c73023          	sd	a2,32(a4)
    800039dc:	34071073          	csrw	mscratch,a4
    800039e0:	00000797          	auipc	a5,0x0
    800039e4:	65078793          	addi	a5,a5,1616 # 80004030 <timervec>
    800039e8:	30579073          	csrw	mtvec,a5
    800039ec:	300027f3          	csrr	a5,mstatus
    800039f0:	0087e793          	ori	a5,a5,8
    800039f4:	30079073          	csrw	mstatus,a5
    800039f8:	304027f3          	csrr	a5,mie
    800039fc:	0807e793          	ori	a5,a5,128
    80003a00:	30479073          	csrw	mie,a5
    80003a04:	00813403          	ld	s0,8(sp)
    80003a08:	01010113          	addi	sp,sp,16
    80003a0c:	00008067          	ret

0000000080003a10 <system_main>:
    80003a10:	fe010113          	addi	sp,sp,-32
    80003a14:	00813823          	sd	s0,16(sp)
    80003a18:	00913423          	sd	s1,8(sp)
    80003a1c:	00113c23          	sd	ra,24(sp)
    80003a20:	02010413          	addi	s0,sp,32
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	0c4080e7          	jalr	196(ra) # 80003ae8 <cpuid>
    80003a2c:	00004497          	auipc	s1,0x4
    80003a30:	cd448493          	addi	s1,s1,-812 # 80007700 <started>
    80003a34:	02050263          	beqz	a0,80003a58 <system_main+0x48>
    80003a38:	0004a783          	lw	a5,0(s1)
    80003a3c:	0007879b          	sext.w	a5,a5
    80003a40:	fe078ce3          	beqz	a5,80003a38 <system_main+0x28>
    80003a44:	0ff0000f          	fence
    80003a48:	00002517          	auipc	a0,0x2
    80003a4c:	71850513          	addi	a0,a0,1816 # 80006160 <CONSOLE_STATUS+0x150>
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	a7c080e7          	jalr	-1412(ra) # 800044cc <panic>
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	9d0080e7          	jalr	-1584(ra) # 80004428 <consoleinit>
    80003a60:	00001097          	auipc	ra,0x1
    80003a64:	15c080e7          	jalr	348(ra) # 80004bbc <printfinit>
    80003a68:	00002517          	auipc	a0,0x2
    80003a6c:	7d850513          	addi	a0,a0,2008 # 80006240 <CONSOLE_STATUS+0x230>
    80003a70:	00001097          	auipc	ra,0x1
    80003a74:	ab8080e7          	jalr	-1352(ra) # 80004528 <__printf>
    80003a78:	00002517          	auipc	a0,0x2
    80003a7c:	6b850513          	addi	a0,a0,1720 # 80006130 <CONSOLE_STATUS+0x120>
    80003a80:	00001097          	auipc	ra,0x1
    80003a84:	aa8080e7          	jalr	-1368(ra) # 80004528 <__printf>
    80003a88:	00002517          	auipc	a0,0x2
    80003a8c:	7b850513          	addi	a0,a0,1976 # 80006240 <CONSOLE_STATUS+0x230>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	a98080e7          	jalr	-1384(ra) # 80004528 <__printf>
    80003a98:	00001097          	auipc	ra,0x1
    80003a9c:	4b0080e7          	jalr	1200(ra) # 80004f48 <kinit>
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	148080e7          	jalr	328(ra) # 80003be8 <trapinit>
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	16c080e7          	jalr	364(ra) # 80003c14 <trapinithart>
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	5c0080e7          	jalr	1472(ra) # 80004070 <plicinit>
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	5e0080e7          	jalr	1504(ra) # 80004098 <plicinithart>
    80003ac0:	00000097          	auipc	ra,0x0
    80003ac4:	078080e7          	jalr	120(ra) # 80003b38 <userinit>
    80003ac8:	0ff0000f          	fence
    80003acc:	00100793          	li	a5,1
    80003ad0:	00002517          	auipc	a0,0x2
    80003ad4:	67850513          	addi	a0,a0,1656 # 80006148 <CONSOLE_STATUS+0x138>
    80003ad8:	00f4a023          	sw	a5,0(s1)
    80003adc:	00001097          	auipc	ra,0x1
    80003ae0:	a4c080e7          	jalr	-1460(ra) # 80004528 <__printf>
    80003ae4:	0000006f          	j	80003ae4 <system_main+0xd4>

0000000080003ae8 <cpuid>:
    80003ae8:	ff010113          	addi	sp,sp,-16
    80003aec:	00813423          	sd	s0,8(sp)
    80003af0:	01010413          	addi	s0,sp,16
    80003af4:	00020513          	mv	a0,tp
    80003af8:	00813403          	ld	s0,8(sp)
    80003afc:	0005051b          	sext.w	a0,a0
    80003b00:	01010113          	addi	sp,sp,16
    80003b04:	00008067          	ret

0000000080003b08 <mycpu>:
    80003b08:	ff010113          	addi	sp,sp,-16
    80003b0c:	00813423          	sd	s0,8(sp)
    80003b10:	01010413          	addi	s0,sp,16
    80003b14:	00020793          	mv	a5,tp
    80003b18:	00813403          	ld	s0,8(sp)
    80003b1c:	0007879b          	sext.w	a5,a5
    80003b20:	00779793          	slli	a5,a5,0x7
    80003b24:	00005517          	auipc	a0,0x5
    80003b28:	c8c50513          	addi	a0,a0,-884 # 800087b0 <cpus>
    80003b2c:	00f50533          	add	a0,a0,a5
    80003b30:	01010113          	addi	sp,sp,16
    80003b34:	00008067          	ret

0000000080003b38 <userinit>:
    80003b38:	ff010113          	addi	sp,sp,-16
    80003b3c:	00813423          	sd	s0,8(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00813403          	ld	s0,8(sp)
    80003b48:	01010113          	addi	sp,sp,16
    80003b4c:	ffffe317          	auipc	t1,0xffffe
    80003b50:	52830067          	jr	1320(t1) # 80002074 <main>

0000000080003b54 <either_copyout>:
    80003b54:	ff010113          	addi	sp,sp,-16
    80003b58:	00813023          	sd	s0,0(sp)
    80003b5c:	00113423          	sd	ra,8(sp)
    80003b60:	01010413          	addi	s0,sp,16
    80003b64:	02051663          	bnez	a0,80003b90 <either_copyout+0x3c>
    80003b68:	00058513          	mv	a0,a1
    80003b6c:	00060593          	mv	a1,a2
    80003b70:	0006861b          	sext.w	a2,a3
    80003b74:	00002097          	auipc	ra,0x2
    80003b78:	c60080e7          	jalr	-928(ra) # 800057d4 <__memmove>
    80003b7c:	00813083          	ld	ra,8(sp)
    80003b80:	00013403          	ld	s0,0(sp)
    80003b84:	00000513          	li	a0,0
    80003b88:	01010113          	addi	sp,sp,16
    80003b8c:	00008067          	ret
    80003b90:	00002517          	auipc	a0,0x2
    80003b94:	5f850513          	addi	a0,a0,1528 # 80006188 <CONSOLE_STATUS+0x178>
    80003b98:	00001097          	auipc	ra,0x1
    80003b9c:	934080e7          	jalr	-1740(ra) # 800044cc <panic>

0000000080003ba0 <either_copyin>:
    80003ba0:	ff010113          	addi	sp,sp,-16
    80003ba4:	00813023          	sd	s0,0(sp)
    80003ba8:	00113423          	sd	ra,8(sp)
    80003bac:	01010413          	addi	s0,sp,16
    80003bb0:	02059463          	bnez	a1,80003bd8 <either_copyin+0x38>
    80003bb4:	00060593          	mv	a1,a2
    80003bb8:	0006861b          	sext.w	a2,a3
    80003bbc:	00002097          	auipc	ra,0x2
    80003bc0:	c18080e7          	jalr	-1000(ra) # 800057d4 <__memmove>
    80003bc4:	00813083          	ld	ra,8(sp)
    80003bc8:	00013403          	ld	s0,0(sp)
    80003bcc:	00000513          	li	a0,0
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret
    80003bd8:	00002517          	auipc	a0,0x2
    80003bdc:	5d850513          	addi	a0,a0,1496 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003be0:	00001097          	auipc	ra,0x1
    80003be4:	8ec080e7          	jalr	-1812(ra) # 800044cc <panic>

0000000080003be8 <trapinit>:
    80003be8:	ff010113          	addi	sp,sp,-16
    80003bec:	00813423          	sd	s0,8(sp)
    80003bf0:	01010413          	addi	s0,sp,16
    80003bf4:	00813403          	ld	s0,8(sp)
    80003bf8:	00002597          	auipc	a1,0x2
    80003bfc:	5e058593          	addi	a1,a1,1504 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003c00:	00005517          	auipc	a0,0x5
    80003c04:	c3050513          	addi	a0,a0,-976 # 80008830 <tickslock>
    80003c08:	01010113          	addi	sp,sp,16
    80003c0c:	00001317          	auipc	t1,0x1
    80003c10:	5cc30067          	jr	1484(t1) # 800051d8 <initlock>

0000000080003c14 <trapinithart>:
    80003c14:	ff010113          	addi	sp,sp,-16
    80003c18:	00813423          	sd	s0,8(sp)
    80003c1c:	01010413          	addi	s0,sp,16
    80003c20:	00000797          	auipc	a5,0x0
    80003c24:	30078793          	addi	a5,a5,768 # 80003f20 <kernelvec>
    80003c28:	10579073          	csrw	stvec,a5
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	01010113          	addi	sp,sp,16
    80003c34:	00008067          	ret

0000000080003c38 <usertrap>:
    80003c38:	ff010113          	addi	sp,sp,-16
    80003c3c:	00813423          	sd	s0,8(sp)
    80003c40:	01010413          	addi	s0,sp,16
    80003c44:	00813403          	ld	s0,8(sp)
    80003c48:	01010113          	addi	sp,sp,16
    80003c4c:	00008067          	ret

0000000080003c50 <usertrapret>:
    80003c50:	ff010113          	addi	sp,sp,-16
    80003c54:	00813423          	sd	s0,8(sp)
    80003c58:	01010413          	addi	s0,sp,16
    80003c5c:	00813403          	ld	s0,8(sp)
    80003c60:	01010113          	addi	sp,sp,16
    80003c64:	00008067          	ret

0000000080003c68 <kerneltrap>:
    80003c68:	fe010113          	addi	sp,sp,-32
    80003c6c:	00813823          	sd	s0,16(sp)
    80003c70:	00113c23          	sd	ra,24(sp)
    80003c74:	00913423          	sd	s1,8(sp)
    80003c78:	02010413          	addi	s0,sp,32
    80003c7c:	142025f3          	csrr	a1,scause
    80003c80:	100027f3          	csrr	a5,sstatus
    80003c84:	0027f793          	andi	a5,a5,2
    80003c88:	10079c63          	bnez	a5,80003da0 <kerneltrap+0x138>
    80003c8c:	142027f3          	csrr	a5,scause
    80003c90:	0207ce63          	bltz	a5,80003ccc <kerneltrap+0x64>
    80003c94:	00002517          	auipc	a0,0x2
    80003c98:	58c50513          	addi	a0,a0,1420 # 80006220 <CONSOLE_STATUS+0x210>
    80003c9c:	00001097          	auipc	ra,0x1
    80003ca0:	88c080e7          	jalr	-1908(ra) # 80004528 <__printf>
    80003ca4:	141025f3          	csrr	a1,sepc
    80003ca8:	14302673          	csrr	a2,stval
    80003cac:	00002517          	auipc	a0,0x2
    80003cb0:	58450513          	addi	a0,a0,1412 # 80006230 <CONSOLE_STATUS+0x220>
    80003cb4:	00001097          	auipc	ra,0x1
    80003cb8:	874080e7          	jalr	-1932(ra) # 80004528 <__printf>
    80003cbc:	00002517          	auipc	a0,0x2
    80003cc0:	58c50513          	addi	a0,a0,1420 # 80006248 <CONSOLE_STATUS+0x238>
    80003cc4:	00001097          	auipc	ra,0x1
    80003cc8:	808080e7          	jalr	-2040(ra) # 800044cc <panic>
    80003ccc:	0ff7f713          	andi	a4,a5,255
    80003cd0:	00900693          	li	a3,9
    80003cd4:	04d70063          	beq	a4,a3,80003d14 <kerneltrap+0xac>
    80003cd8:	fff00713          	li	a4,-1
    80003cdc:	03f71713          	slli	a4,a4,0x3f
    80003ce0:	00170713          	addi	a4,a4,1
    80003ce4:	fae798e3          	bne	a5,a4,80003c94 <kerneltrap+0x2c>
    80003ce8:	00000097          	auipc	ra,0x0
    80003cec:	e00080e7          	jalr	-512(ra) # 80003ae8 <cpuid>
    80003cf0:	06050663          	beqz	a0,80003d5c <kerneltrap+0xf4>
    80003cf4:	144027f3          	csrr	a5,sip
    80003cf8:	ffd7f793          	andi	a5,a5,-3
    80003cfc:	14479073          	csrw	sip,a5
    80003d00:	01813083          	ld	ra,24(sp)
    80003d04:	01013403          	ld	s0,16(sp)
    80003d08:	00813483          	ld	s1,8(sp)
    80003d0c:	02010113          	addi	sp,sp,32
    80003d10:	00008067          	ret
    80003d14:	00000097          	auipc	ra,0x0
    80003d18:	3d0080e7          	jalr	976(ra) # 800040e4 <plic_claim>
    80003d1c:	00a00793          	li	a5,10
    80003d20:	00050493          	mv	s1,a0
    80003d24:	06f50863          	beq	a0,a5,80003d94 <kerneltrap+0x12c>
    80003d28:	fc050ce3          	beqz	a0,80003d00 <kerneltrap+0x98>
    80003d2c:	00050593          	mv	a1,a0
    80003d30:	00002517          	auipc	a0,0x2
    80003d34:	4d050513          	addi	a0,a0,1232 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003d38:	00000097          	auipc	ra,0x0
    80003d3c:	7f0080e7          	jalr	2032(ra) # 80004528 <__printf>
    80003d40:	01013403          	ld	s0,16(sp)
    80003d44:	01813083          	ld	ra,24(sp)
    80003d48:	00048513          	mv	a0,s1
    80003d4c:	00813483          	ld	s1,8(sp)
    80003d50:	02010113          	addi	sp,sp,32
    80003d54:	00000317          	auipc	t1,0x0
    80003d58:	3c830067          	jr	968(t1) # 8000411c <plic_complete>
    80003d5c:	00005517          	auipc	a0,0x5
    80003d60:	ad450513          	addi	a0,a0,-1324 # 80008830 <tickslock>
    80003d64:	00001097          	auipc	ra,0x1
    80003d68:	498080e7          	jalr	1176(ra) # 800051fc <acquire>
    80003d6c:	00004717          	auipc	a4,0x4
    80003d70:	99870713          	addi	a4,a4,-1640 # 80007704 <ticks>
    80003d74:	00072783          	lw	a5,0(a4)
    80003d78:	00005517          	auipc	a0,0x5
    80003d7c:	ab850513          	addi	a0,a0,-1352 # 80008830 <tickslock>
    80003d80:	0017879b          	addiw	a5,a5,1
    80003d84:	00f72023          	sw	a5,0(a4)
    80003d88:	00001097          	auipc	ra,0x1
    80003d8c:	540080e7          	jalr	1344(ra) # 800052c8 <release>
    80003d90:	f65ff06f          	j	80003cf4 <kerneltrap+0x8c>
    80003d94:	00001097          	auipc	ra,0x1
    80003d98:	09c080e7          	jalr	156(ra) # 80004e30 <uartintr>
    80003d9c:	fa5ff06f          	j	80003d40 <kerneltrap+0xd8>
    80003da0:	00002517          	auipc	a0,0x2
    80003da4:	44050513          	addi	a0,a0,1088 # 800061e0 <CONSOLE_STATUS+0x1d0>
    80003da8:	00000097          	auipc	ra,0x0
    80003dac:	724080e7          	jalr	1828(ra) # 800044cc <panic>

0000000080003db0 <clockintr>:
    80003db0:	fe010113          	addi	sp,sp,-32
    80003db4:	00813823          	sd	s0,16(sp)
    80003db8:	00913423          	sd	s1,8(sp)
    80003dbc:	00113c23          	sd	ra,24(sp)
    80003dc0:	02010413          	addi	s0,sp,32
    80003dc4:	00005497          	auipc	s1,0x5
    80003dc8:	a6c48493          	addi	s1,s1,-1428 # 80008830 <tickslock>
    80003dcc:	00048513          	mv	a0,s1
    80003dd0:	00001097          	auipc	ra,0x1
    80003dd4:	42c080e7          	jalr	1068(ra) # 800051fc <acquire>
    80003dd8:	00004717          	auipc	a4,0x4
    80003ddc:	92c70713          	addi	a4,a4,-1748 # 80007704 <ticks>
    80003de0:	00072783          	lw	a5,0(a4)
    80003de4:	01013403          	ld	s0,16(sp)
    80003de8:	01813083          	ld	ra,24(sp)
    80003dec:	00048513          	mv	a0,s1
    80003df0:	0017879b          	addiw	a5,a5,1
    80003df4:	00813483          	ld	s1,8(sp)
    80003df8:	00f72023          	sw	a5,0(a4)
    80003dfc:	02010113          	addi	sp,sp,32
    80003e00:	00001317          	auipc	t1,0x1
    80003e04:	4c830067          	jr	1224(t1) # 800052c8 <release>

0000000080003e08 <devintr>:
    80003e08:	142027f3          	csrr	a5,scause
    80003e0c:	00000513          	li	a0,0
    80003e10:	0007c463          	bltz	a5,80003e18 <devintr+0x10>
    80003e14:	00008067          	ret
    80003e18:	fe010113          	addi	sp,sp,-32
    80003e1c:	00813823          	sd	s0,16(sp)
    80003e20:	00113c23          	sd	ra,24(sp)
    80003e24:	00913423          	sd	s1,8(sp)
    80003e28:	02010413          	addi	s0,sp,32
    80003e2c:	0ff7f713          	andi	a4,a5,255
    80003e30:	00900693          	li	a3,9
    80003e34:	04d70c63          	beq	a4,a3,80003e8c <devintr+0x84>
    80003e38:	fff00713          	li	a4,-1
    80003e3c:	03f71713          	slli	a4,a4,0x3f
    80003e40:	00170713          	addi	a4,a4,1
    80003e44:	00e78c63          	beq	a5,a4,80003e5c <devintr+0x54>
    80003e48:	01813083          	ld	ra,24(sp)
    80003e4c:	01013403          	ld	s0,16(sp)
    80003e50:	00813483          	ld	s1,8(sp)
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00008067          	ret
    80003e5c:	00000097          	auipc	ra,0x0
    80003e60:	c8c080e7          	jalr	-884(ra) # 80003ae8 <cpuid>
    80003e64:	06050663          	beqz	a0,80003ed0 <devintr+0xc8>
    80003e68:	144027f3          	csrr	a5,sip
    80003e6c:	ffd7f793          	andi	a5,a5,-3
    80003e70:	14479073          	csrw	sip,a5
    80003e74:	01813083          	ld	ra,24(sp)
    80003e78:	01013403          	ld	s0,16(sp)
    80003e7c:	00813483          	ld	s1,8(sp)
    80003e80:	00200513          	li	a0,2
    80003e84:	02010113          	addi	sp,sp,32
    80003e88:	00008067          	ret
    80003e8c:	00000097          	auipc	ra,0x0
    80003e90:	258080e7          	jalr	600(ra) # 800040e4 <plic_claim>
    80003e94:	00a00793          	li	a5,10
    80003e98:	00050493          	mv	s1,a0
    80003e9c:	06f50663          	beq	a0,a5,80003f08 <devintr+0x100>
    80003ea0:	00100513          	li	a0,1
    80003ea4:	fa0482e3          	beqz	s1,80003e48 <devintr+0x40>
    80003ea8:	00048593          	mv	a1,s1
    80003eac:	00002517          	auipc	a0,0x2
    80003eb0:	35450513          	addi	a0,a0,852 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003eb4:	00000097          	auipc	ra,0x0
    80003eb8:	674080e7          	jalr	1652(ra) # 80004528 <__printf>
    80003ebc:	00048513          	mv	a0,s1
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	25c080e7          	jalr	604(ra) # 8000411c <plic_complete>
    80003ec8:	00100513          	li	a0,1
    80003ecc:	f7dff06f          	j	80003e48 <devintr+0x40>
    80003ed0:	00005517          	auipc	a0,0x5
    80003ed4:	96050513          	addi	a0,a0,-1696 # 80008830 <tickslock>
    80003ed8:	00001097          	auipc	ra,0x1
    80003edc:	324080e7          	jalr	804(ra) # 800051fc <acquire>
    80003ee0:	00004717          	auipc	a4,0x4
    80003ee4:	82470713          	addi	a4,a4,-2012 # 80007704 <ticks>
    80003ee8:	00072783          	lw	a5,0(a4)
    80003eec:	00005517          	auipc	a0,0x5
    80003ef0:	94450513          	addi	a0,a0,-1724 # 80008830 <tickslock>
    80003ef4:	0017879b          	addiw	a5,a5,1
    80003ef8:	00f72023          	sw	a5,0(a4)
    80003efc:	00001097          	auipc	ra,0x1
    80003f00:	3cc080e7          	jalr	972(ra) # 800052c8 <release>
    80003f04:	f65ff06f          	j	80003e68 <devintr+0x60>
    80003f08:	00001097          	auipc	ra,0x1
    80003f0c:	f28080e7          	jalr	-216(ra) # 80004e30 <uartintr>
    80003f10:	fadff06f          	j	80003ebc <devintr+0xb4>
	...

0000000080003f20 <kernelvec>:
    80003f20:	f0010113          	addi	sp,sp,-256
    80003f24:	00113023          	sd	ra,0(sp)
    80003f28:	00213423          	sd	sp,8(sp)
    80003f2c:	00313823          	sd	gp,16(sp)
    80003f30:	00413c23          	sd	tp,24(sp)
    80003f34:	02513023          	sd	t0,32(sp)
    80003f38:	02613423          	sd	t1,40(sp)
    80003f3c:	02713823          	sd	t2,48(sp)
    80003f40:	02813c23          	sd	s0,56(sp)
    80003f44:	04913023          	sd	s1,64(sp)
    80003f48:	04a13423          	sd	a0,72(sp)
    80003f4c:	04b13823          	sd	a1,80(sp)
    80003f50:	04c13c23          	sd	a2,88(sp)
    80003f54:	06d13023          	sd	a3,96(sp)
    80003f58:	06e13423          	sd	a4,104(sp)
    80003f5c:	06f13823          	sd	a5,112(sp)
    80003f60:	07013c23          	sd	a6,120(sp)
    80003f64:	09113023          	sd	a7,128(sp)
    80003f68:	09213423          	sd	s2,136(sp)
    80003f6c:	09313823          	sd	s3,144(sp)
    80003f70:	09413c23          	sd	s4,152(sp)
    80003f74:	0b513023          	sd	s5,160(sp)
    80003f78:	0b613423          	sd	s6,168(sp)
    80003f7c:	0b713823          	sd	s7,176(sp)
    80003f80:	0b813c23          	sd	s8,184(sp)
    80003f84:	0d913023          	sd	s9,192(sp)
    80003f88:	0da13423          	sd	s10,200(sp)
    80003f8c:	0db13823          	sd	s11,208(sp)
    80003f90:	0dc13c23          	sd	t3,216(sp)
    80003f94:	0fd13023          	sd	t4,224(sp)
    80003f98:	0fe13423          	sd	t5,232(sp)
    80003f9c:	0ff13823          	sd	t6,240(sp)
    80003fa0:	cc9ff0ef          	jal	ra,80003c68 <kerneltrap>
    80003fa4:	00013083          	ld	ra,0(sp)
    80003fa8:	00813103          	ld	sp,8(sp)
    80003fac:	01013183          	ld	gp,16(sp)
    80003fb0:	02013283          	ld	t0,32(sp)
    80003fb4:	02813303          	ld	t1,40(sp)
    80003fb8:	03013383          	ld	t2,48(sp)
    80003fbc:	03813403          	ld	s0,56(sp)
    80003fc0:	04013483          	ld	s1,64(sp)
    80003fc4:	04813503          	ld	a0,72(sp)
    80003fc8:	05013583          	ld	a1,80(sp)
    80003fcc:	05813603          	ld	a2,88(sp)
    80003fd0:	06013683          	ld	a3,96(sp)
    80003fd4:	06813703          	ld	a4,104(sp)
    80003fd8:	07013783          	ld	a5,112(sp)
    80003fdc:	07813803          	ld	a6,120(sp)
    80003fe0:	08013883          	ld	a7,128(sp)
    80003fe4:	08813903          	ld	s2,136(sp)
    80003fe8:	09013983          	ld	s3,144(sp)
    80003fec:	09813a03          	ld	s4,152(sp)
    80003ff0:	0a013a83          	ld	s5,160(sp)
    80003ff4:	0a813b03          	ld	s6,168(sp)
    80003ff8:	0b013b83          	ld	s7,176(sp)
    80003ffc:	0b813c03          	ld	s8,184(sp)
    80004000:	0c013c83          	ld	s9,192(sp)
    80004004:	0c813d03          	ld	s10,200(sp)
    80004008:	0d013d83          	ld	s11,208(sp)
    8000400c:	0d813e03          	ld	t3,216(sp)
    80004010:	0e013e83          	ld	t4,224(sp)
    80004014:	0e813f03          	ld	t5,232(sp)
    80004018:	0f013f83          	ld	t6,240(sp)
    8000401c:	10010113          	addi	sp,sp,256
    80004020:	10200073          	sret
    80004024:	00000013          	nop
    80004028:	00000013          	nop
    8000402c:	00000013          	nop

0000000080004030 <timervec>:
    80004030:	34051573          	csrrw	a0,mscratch,a0
    80004034:	00b53023          	sd	a1,0(a0)
    80004038:	00c53423          	sd	a2,8(a0)
    8000403c:	00d53823          	sd	a3,16(a0)
    80004040:	01853583          	ld	a1,24(a0)
    80004044:	02053603          	ld	a2,32(a0)
    80004048:	0005b683          	ld	a3,0(a1)
    8000404c:	00c686b3          	add	a3,a3,a2
    80004050:	00d5b023          	sd	a3,0(a1)
    80004054:	00200593          	li	a1,2
    80004058:	14459073          	csrw	sip,a1
    8000405c:	01053683          	ld	a3,16(a0)
    80004060:	00853603          	ld	a2,8(a0)
    80004064:	00053583          	ld	a1,0(a0)
    80004068:	34051573          	csrrw	a0,mscratch,a0
    8000406c:	30200073          	mret

0000000080004070 <plicinit>:
    80004070:	ff010113          	addi	sp,sp,-16
    80004074:	00813423          	sd	s0,8(sp)
    80004078:	01010413          	addi	s0,sp,16
    8000407c:	00813403          	ld	s0,8(sp)
    80004080:	0c0007b7          	lui	a5,0xc000
    80004084:	00100713          	li	a4,1
    80004088:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000408c:	00e7a223          	sw	a4,4(a5)
    80004090:	01010113          	addi	sp,sp,16
    80004094:	00008067          	ret

0000000080004098 <plicinithart>:
    80004098:	ff010113          	addi	sp,sp,-16
    8000409c:	00813023          	sd	s0,0(sp)
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	01010413          	addi	s0,sp,16
    800040a8:	00000097          	auipc	ra,0x0
    800040ac:	a40080e7          	jalr	-1472(ra) # 80003ae8 <cpuid>
    800040b0:	0085171b          	slliw	a4,a0,0x8
    800040b4:	0c0027b7          	lui	a5,0xc002
    800040b8:	00e787b3          	add	a5,a5,a4
    800040bc:	40200713          	li	a4,1026
    800040c0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800040c4:	00813083          	ld	ra,8(sp)
    800040c8:	00013403          	ld	s0,0(sp)
    800040cc:	00d5151b          	slliw	a0,a0,0xd
    800040d0:	0c2017b7          	lui	a5,0xc201
    800040d4:	00a78533          	add	a0,a5,a0
    800040d8:	00052023          	sw	zero,0(a0)
    800040dc:	01010113          	addi	sp,sp,16
    800040e0:	00008067          	ret

00000000800040e4 <plic_claim>:
    800040e4:	ff010113          	addi	sp,sp,-16
    800040e8:	00813023          	sd	s0,0(sp)
    800040ec:	00113423          	sd	ra,8(sp)
    800040f0:	01010413          	addi	s0,sp,16
    800040f4:	00000097          	auipc	ra,0x0
    800040f8:	9f4080e7          	jalr	-1548(ra) # 80003ae8 <cpuid>
    800040fc:	00813083          	ld	ra,8(sp)
    80004100:	00013403          	ld	s0,0(sp)
    80004104:	00d5151b          	slliw	a0,a0,0xd
    80004108:	0c2017b7          	lui	a5,0xc201
    8000410c:	00a78533          	add	a0,a5,a0
    80004110:	00452503          	lw	a0,4(a0)
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <plic_complete>:
    8000411c:	fe010113          	addi	sp,sp,-32
    80004120:	00813823          	sd	s0,16(sp)
    80004124:	00913423          	sd	s1,8(sp)
    80004128:	00113c23          	sd	ra,24(sp)
    8000412c:	02010413          	addi	s0,sp,32
    80004130:	00050493          	mv	s1,a0
    80004134:	00000097          	auipc	ra,0x0
    80004138:	9b4080e7          	jalr	-1612(ra) # 80003ae8 <cpuid>
    8000413c:	01813083          	ld	ra,24(sp)
    80004140:	01013403          	ld	s0,16(sp)
    80004144:	00d5179b          	slliw	a5,a0,0xd
    80004148:	0c201737          	lui	a4,0xc201
    8000414c:	00f707b3          	add	a5,a4,a5
    80004150:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004154:	00813483          	ld	s1,8(sp)
    80004158:	02010113          	addi	sp,sp,32
    8000415c:	00008067          	ret

0000000080004160 <consolewrite>:
    80004160:	fb010113          	addi	sp,sp,-80
    80004164:	04813023          	sd	s0,64(sp)
    80004168:	04113423          	sd	ra,72(sp)
    8000416c:	02913c23          	sd	s1,56(sp)
    80004170:	03213823          	sd	s2,48(sp)
    80004174:	03313423          	sd	s3,40(sp)
    80004178:	03413023          	sd	s4,32(sp)
    8000417c:	01513c23          	sd	s5,24(sp)
    80004180:	05010413          	addi	s0,sp,80
    80004184:	06c05c63          	blez	a2,800041fc <consolewrite+0x9c>
    80004188:	00060993          	mv	s3,a2
    8000418c:	00050a13          	mv	s4,a0
    80004190:	00058493          	mv	s1,a1
    80004194:	00000913          	li	s2,0
    80004198:	fff00a93          	li	s5,-1
    8000419c:	01c0006f          	j	800041b8 <consolewrite+0x58>
    800041a0:	fbf44503          	lbu	a0,-65(s0)
    800041a4:	0019091b          	addiw	s2,s2,1
    800041a8:	00148493          	addi	s1,s1,1
    800041ac:	00001097          	auipc	ra,0x1
    800041b0:	a9c080e7          	jalr	-1380(ra) # 80004c48 <uartputc>
    800041b4:	03298063          	beq	s3,s2,800041d4 <consolewrite+0x74>
    800041b8:	00048613          	mv	a2,s1
    800041bc:	00100693          	li	a3,1
    800041c0:	000a0593          	mv	a1,s4
    800041c4:	fbf40513          	addi	a0,s0,-65
    800041c8:	00000097          	auipc	ra,0x0
    800041cc:	9d8080e7          	jalr	-1576(ra) # 80003ba0 <either_copyin>
    800041d0:	fd5518e3          	bne	a0,s5,800041a0 <consolewrite+0x40>
    800041d4:	04813083          	ld	ra,72(sp)
    800041d8:	04013403          	ld	s0,64(sp)
    800041dc:	03813483          	ld	s1,56(sp)
    800041e0:	02813983          	ld	s3,40(sp)
    800041e4:	02013a03          	ld	s4,32(sp)
    800041e8:	01813a83          	ld	s5,24(sp)
    800041ec:	00090513          	mv	a0,s2
    800041f0:	03013903          	ld	s2,48(sp)
    800041f4:	05010113          	addi	sp,sp,80
    800041f8:	00008067          	ret
    800041fc:	00000913          	li	s2,0
    80004200:	fd5ff06f          	j	800041d4 <consolewrite+0x74>

0000000080004204 <consoleread>:
    80004204:	f9010113          	addi	sp,sp,-112
    80004208:	06813023          	sd	s0,96(sp)
    8000420c:	04913c23          	sd	s1,88(sp)
    80004210:	05213823          	sd	s2,80(sp)
    80004214:	05313423          	sd	s3,72(sp)
    80004218:	05413023          	sd	s4,64(sp)
    8000421c:	03513c23          	sd	s5,56(sp)
    80004220:	03613823          	sd	s6,48(sp)
    80004224:	03713423          	sd	s7,40(sp)
    80004228:	03813023          	sd	s8,32(sp)
    8000422c:	06113423          	sd	ra,104(sp)
    80004230:	01913c23          	sd	s9,24(sp)
    80004234:	07010413          	addi	s0,sp,112
    80004238:	00060b93          	mv	s7,a2
    8000423c:	00050913          	mv	s2,a0
    80004240:	00058c13          	mv	s8,a1
    80004244:	00060b1b          	sext.w	s6,a2
    80004248:	00004497          	auipc	s1,0x4
    8000424c:	61048493          	addi	s1,s1,1552 # 80008858 <cons>
    80004250:	00400993          	li	s3,4
    80004254:	fff00a13          	li	s4,-1
    80004258:	00a00a93          	li	s5,10
    8000425c:	05705e63          	blez	s7,800042b8 <consoleread+0xb4>
    80004260:	09c4a703          	lw	a4,156(s1)
    80004264:	0984a783          	lw	a5,152(s1)
    80004268:	0007071b          	sext.w	a4,a4
    8000426c:	08e78463          	beq	a5,a4,800042f4 <consoleread+0xf0>
    80004270:	07f7f713          	andi	a4,a5,127
    80004274:	00e48733          	add	a4,s1,a4
    80004278:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000427c:	0017869b          	addiw	a3,a5,1
    80004280:	08d4ac23          	sw	a3,152(s1)
    80004284:	00070c9b          	sext.w	s9,a4
    80004288:	0b370663          	beq	a4,s3,80004334 <consoleread+0x130>
    8000428c:	00100693          	li	a3,1
    80004290:	f9f40613          	addi	a2,s0,-97
    80004294:	000c0593          	mv	a1,s8
    80004298:	00090513          	mv	a0,s2
    8000429c:	f8e40fa3          	sb	a4,-97(s0)
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	8b4080e7          	jalr	-1868(ra) # 80003b54 <either_copyout>
    800042a8:	01450863          	beq	a0,s4,800042b8 <consoleread+0xb4>
    800042ac:	001c0c13          	addi	s8,s8,1
    800042b0:	fffb8b9b          	addiw	s7,s7,-1
    800042b4:	fb5c94e3          	bne	s9,s5,8000425c <consoleread+0x58>
    800042b8:	000b851b          	sext.w	a0,s7
    800042bc:	06813083          	ld	ra,104(sp)
    800042c0:	06013403          	ld	s0,96(sp)
    800042c4:	05813483          	ld	s1,88(sp)
    800042c8:	05013903          	ld	s2,80(sp)
    800042cc:	04813983          	ld	s3,72(sp)
    800042d0:	04013a03          	ld	s4,64(sp)
    800042d4:	03813a83          	ld	s5,56(sp)
    800042d8:	02813b83          	ld	s7,40(sp)
    800042dc:	02013c03          	ld	s8,32(sp)
    800042e0:	01813c83          	ld	s9,24(sp)
    800042e4:	40ab053b          	subw	a0,s6,a0
    800042e8:	03013b03          	ld	s6,48(sp)
    800042ec:	07010113          	addi	sp,sp,112
    800042f0:	00008067          	ret
    800042f4:	00001097          	auipc	ra,0x1
    800042f8:	1d8080e7          	jalr	472(ra) # 800054cc <push_on>
    800042fc:	0984a703          	lw	a4,152(s1)
    80004300:	09c4a783          	lw	a5,156(s1)
    80004304:	0007879b          	sext.w	a5,a5
    80004308:	fef70ce3          	beq	a4,a5,80004300 <consoleread+0xfc>
    8000430c:	00001097          	auipc	ra,0x1
    80004310:	234080e7          	jalr	564(ra) # 80005540 <pop_on>
    80004314:	0984a783          	lw	a5,152(s1)
    80004318:	07f7f713          	andi	a4,a5,127
    8000431c:	00e48733          	add	a4,s1,a4
    80004320:	01874703          	lbu	a4,24(a4)
    80004324:	0017869b          	addiw	a3,a5,1
    80004328:	08d4ac23          	sw	a3,152(s1)
    8000432c:	00070c9b          	sext.w	s9,a4
    80004330:	f5371ee3          	bne	a4,s3,8000428c <consoleread+0x88>
    80004334:	000b851b          	sext.w	a0,s7
    80004338:	f96bf2e3          	bgeu	s7,s6,800042bc <consoleread+0xb8>
    8000433c:	08f4ac23          	sw	a5,152(s1)
    80004340:	f7dff06f          	j	800042bc <consoleread+0xb8>

0000000080004344 <consputc>:
    80004344:	10000793          	li	a5,256
    80004348:	00f50663          	beq	a0,a5,80004354 <consputc+0x10>
    8000434c:	00001317          	auipc	t1,0x1
    80004350:	9f430067          	jr	-1548(t1) # 80004d40 <uartputc_sync>
    80004354:	ff010113          	addi	sp,sp,-16
    80004358:	00113423          	sd	ra,8(sp)
    8000435c:	00813023          	sd	s0,0(sp)
    80004360:	01010413          	addi	s0,sp,16
    80004364:	00800513          	li	a0,8
    80004368:	00001097          	auipc	ra,0x1
    8000436c:	9d8080e7          	jalr	-1576(ra) # 80004d40 <uartputc_sync>
    80004370:	02000513          	li	a0,32
    80004374:	00001097          	auipc	ra,0x1
    80004378:	9cc080e7          	jalr	-1588(ra) # 80004d40 <uartputc_sync>
    8000437c:	00013403          	ld	s0,0(sp)
    80004380:	00813083          	ld	ra,8(sp)
    80004384:	00800513          	li	a0,8
    80004388:	01010113          	addi	sp,sp,16
    8000438c:	00001317          	auipc	t1,0x1
    80004390:	9b430067          	jr	-1612(t1) # 80004d40 <uartputc_sync>

0000000080004394 <consoleintr>:
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00913423          	sd	s1,8(sp)
    800043a0:	01213023          	sd	s2,0(sp)
    800043a4:	00113c23          	sd	ra,24(sp)
    800043a8:	02010413          	addi	s0,sp,32
    800043ac:	00004917          	auipc	s2,0x4
    800043b0:	4ac90913          	addi	s2,s2,1196 # 80008858 <cons>
    800043b4:	00050493          	mv	s1,a0
    800043b8:	00090513          	mv	a0,s2
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	e40080e7          	jalr	-448(ra) # 800051fc <acquire>
    800043c4:	02048c63          	beqz	s1,800043fc <consoleintr+0x68>
    800043c8:	0a092783          	lw	a5,160(s2)
    800043cc:	09892703          	lw	a4,152(s2)
    800043d0:	07f00693          	li	a3,127
    800043d4:	40e7873b          	subw	a4,a5,a4
    800043d8:	02e6e263          	bltu	a3,a4,800043fc <consoleintr+0x68>
    800043dc:	00d00713          	li	a4,13
    800043e0:	04e48063          	beq	s1,a4,80004420 <consoleintr+0x8c>
    800043e4:	07f7f713          	andi	a4,a5,127
    800043e8:	00e90733          	add	a4,s2,a4
    800043ec:	0017879b          	addiw	a5,a5,1
    800043f0:	0af92023          	sw	a5,160(s2)
    800043f4:	00970c23          	sb	s1,24(a4)
    800043f8:	08f92e23          	sw	a5,156(s2)
    800043fc:	01013403          	ld	s0,16(sp)
    80004400:	01813083          	ld	ra,24(sp)
    80004404:	00813483          	ld	s1,8(sp)
    80004408:	00013903          	ld	s2,0(sp)
    8000440c:	00004517          	auipc	a0,0x4
    80004410:	44c50513          	addi	a0,a0,1100 # 80008858 <cons>
    80004414:	02010113          	addi	sp,sp,32
    80004418:	00001317          	auipc	t1,0x1
    8000441c:	eb030067          	jr	-336(t1) # 800052c8 <release>
    80004420:	00a00493          	li	s1,10
    80004424:	fc1ff06f          	j	800043e4 <consoleintr+0x50>

0000000080004428 <consoleinit>:
    80004428:	fe010113          	addi	sp,sp,-32
    8000442c:	00113c23          	sd	ra,24(sp)
    80004430:	00813823          	sd	s0,16(sp)
    80004434:	00913423          	sd	s1,8(sp)
    80004438:	02010413          	addi	s0,sp,32
    8000443c:	00004497          	auipc	s1,0x4
    80004440:	41c48493          	addi	s1,s1,1052 # 80008858 <cons>
    80004444:	00048513          	mv	a0,s1
    80004448:	00002597          	auipc	a1,0x2
    8000444c:	e1058593          	addi	a1,a1,-496 # 80006258 <CONSOLE_STATUS+0x248>
    80004450:	00001097          	auipc	ra,0x1
    80004454:	d88080e7          	jalr	-632(ra) # 800051d8 <initlock>
    80004458:	00000097          	auipc	ra,0x0
    8000445c:	7ac080e7          	jalr	1964(ra) # 80004c04 <uartinit>
    80004460:	01813083          	ld	ra,24(sp)
    80004464:	01013403          	ld	s0,16(sp)
    80004468:	00000797          	auipc	a5,0x0
    8000446c:	d9c78793          	addi	a5,a5,-612 # 80004204 <consoleread>
    80004470:	0af4bc23          	sd	a5,184(s1)
    80004474:	00000797          	auipc	a5,0x0
    80004478:	cec78793          	addi	a5,a5,-788 # 80004160 <consolewrite>
    8000447c:	0cf4b023          	sd	a5,192(s1)
    80004480:	00813483          	ld	s1,8(sp)
    80004484:	02010113          	addi	sp,sp,32
    80004488:	00008067          	ret

000000008000448c <console_read>:
    8000448c:	ff010113          	addi	sp,sp,-16
    80004490:	00813423          	sd	s0,8(sp)
    80004494:	01010413          	addi	s0,sp,16
    80004498:	00813403          	ld	s0,8(sp)
    8000449c:	00004317          	auipc	t1,0x4
    800044a0:	47433303          	ld	t1,1140(t1) # 80008910 <devsw+0x10>
    800044a4:	01010113          	addi	sp,sp,16
    800044a8:	00030067          	jr	t1

00000000800044ac <console_write>:
    800044ac:	ff010113          	addi	sp,sp,-16
    800044b0:	00813423          	sd	s0,8(sp)
    800044b4:	01010413          	addi	s0,sp,16
    800044b8:	00813403          	ld	s0,8(sp)
    800044bc:	00004317          	auipc	t1,0x4
    800044c0:	45c33303          	ld	t1,1116(t1) # 80008918 <devsw+0x18>
    800044c4:	01010113          	addi	sp,sp,16
    800044c8:	00030067          	jr	t1

00000000800044cc <panic>:
    800044cc:	fe010113          	addi	sp,sp,-32
    800044d0:	00113c23          	sd	ra,24(sp)
    800044d4:	00813823          	sd	s0,16(sp)
    800044d8:	00913423          	sd	s1,8(sp)
    800044dc:	02010413          	addi	s0,sp,32
    800044e0:	00050493          	mv	s1,a0
    800044e4:	00002517          	auipc	a0,0x2
    800044e8:	d7c50513          	addi	a0,a0,-644 # 80006260 <CONSOLE_STATUS+0x250>
    800044ec:	00004797          	auipc	a5,0x4
    800044f0:	4c07a623          	sw	zero,1228(a5) # 800089b8 <pr+0x18>
    800044f4:	00000097          	auipc	ra,0x0
    800044f8:	034080e7          	jalr	52(ra) # 80004528 <__printf>
    800044fc:	00048513          	mv	a0,s1
    80004500:	00000097          	auipc	ra,0x0
    80004504:	028080e7          	jalr	40(ra) # 80004528 <__printf>
    80004508:	00002517          	auipc	a0,0x2
    8000450c:	d3850513          	addi	a0,a0,-712 # 80006240 <CONSOLE_STATUS+0x230>
    80004510:	00000097          	auipc	ra,0x0
    80004514:	018080e7          	jalr	24(ra) # 80004528 <__printf>
    80004518:	00100793          	li	a5,1
    8000451c:	00003717          	auipc	a4,0x3
    80004520:	1ef72623          	sw	a5,492(a4) # 80007708 <panicked>
    80004524:	0000006f          	j	80004524 <panic+0x58>

0000000080004528 <__printf>:
    80004528:	f3010113          	addi	sp,sp,-208
    8000452c:	08813023          	sd	s0,128(sp)
    80004530:	07313423          	sd	s3,104(sp)
    80004534:	09010413          	addi	s0,sp,144
    80004538:	05813023          	sd	s8,64(sp)
    8000453c:	08113423          	sd	ra,136(sp)
    80004540:	06913c23          	sd	s1,120(sp)
    80004544:	07213823          	sd	s2,112(sp)
    80004548:	07413023          	sd	s4,96(sp)
    8000454c:	05513c23          	sd	s5,88(sp)
    80004550:	05613823          	sd	s6,80(sp)
    80004554:	05713423          	sd	s7,72(sp)
    80004558:	03913c23          	sd	s9,56(sp)
    8000455c:	03a13823          	sd	s10,48(sp)
    80004560:	03b13423          	sd	s11,40(sp)
    80004564:	00004317          	auipc	t1,0x4
    80004568:	43c30313          	addi	t1,t1,1084 # 800089a0 <pr>
    8000456c:	01832c03          	lw	s8,24(t1)
    80004570:	00b43423          	sd	a1,8(s0)
    80004574:	00c43823          	sd	a2,16(s0)
    80004578:	00d43c23          	sd	a3,24(s0)
    8000457c:	02e43023          	sd	a4,32(s0)
    80004580:	02f43423          	sd	a5,40(s0)
    80004584:	03043823          	sd	a6,48(s0)
    80004588:	03143c23          	sd	a7,56(s0)
    8000458c:	00050993          	mv	s3,a0
    80004590:	4a0c1663          	bnez	s8,80004a3c <__printf+0x514>
    80004594:	60098c63          	beqz	s3,80004bac <__printf+0x684>
    80004598:	0009c503          	lbu	a0,0(s3)
    8000459c:	00840793          	addi	a5,s0,8
    800045a0:	f6f43c23          	sd	a5,-136(s0)
    800045a4:	00000493          	li	s1,0
    800045a8:	22050063          	beqz	a0,800047c8 <__printf+0x2a0>
    800045ac:	00002a37          	lui	s4,0x2
    800045b0:	00018ab7          	lui	s5,0x18
    800045b4:	000f4b37          	lui	s6,0xf4
    800045b8:	00989bb7          	lui	s7,0x989
    800045bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800045c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800045c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800045c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800045cc:	00148c9b          	addiw	s9,s1,1
    800045d0:	02500793          	li	a5,37
    800045d4:	01998933          	add	s2,s3,s9
    800045d8:	38f51263          	bne	a0,a5,8000495c <__printf+0x434>
    800045dc:	00094783          	lbu	a5,0(s2)
    800045e0:	00078c9b          	sext.w	s9,a5
    800045e4:	1e078263          	beqz	a5,800047c8 <__printf+0x2a0>
    800045e8:	0024849b          	addiw	s1,s1,2
    800045ec:	07000713          	li	a4,112
    800045f0:	00998933          	add	s2,s3,s1
    800045f4:	38e78a63          	beq	a5,a4,80004988 <__printf+0x460>
    800045f8:	20f76863          	bltu	a4,a5,80004808 <__printf+0x2e0>
    800045fc:	42a78863          	beq	a5,a0,80004a2c <__printf+0x504>
    80004600:	06400713          	li	a4,100
    80004604:	40e79663          	bne	a5,a4,80004a10 <__printf+0x4e8>
    80004608:	f7843783          	ld	a5,-136(s0)
    8000460c:	0007a603          	lw	a2,0(a5)
    80004610:	00878793          	addi	a5,a5,8
    80004614:	f6f43c23          	sd	a5,-136(s0)
    80004618:	42064a63          	bltz	a2,80004a4c <__printf+0x524>
    8000461c:	00a00713          	li	a4,10
    80004620:	02e677bb          	remuw	a5,a2,a4
    80004624:	00002d97          	auipc	s11,0x2
    80004628:	c64d8d93          	addi	s11,s11,-924 # 80006288 <digits>
    8000462c:	00900593          	li	a1,9
    80004630:	0006051b          	sext.w	a0,a2
    80004634:	00000c93          	li	s9,0
    80004638:	02079793          	slli	a5,a5,0x20
    8000463c:	0207d793          	srli	a5,a5,0x20
    80004640:	00fd87b3          	add	a5,s11,a5
    80004644:	0007c783          	lbu	a5,0(a5)
    80004648:	02e656bb          	divuw	a3,a2,a4
    8000464c:	f8f40023          	sb	a5,-128(s0)
    80004650:	14c5d863          	bge	a1,a2,800047a0 <__printf+0x278>
    80004654:	06300593          	li	a1,99
    80004658:	00100c93          	li	s9,1
    8000465c:	02e6f7bb          	remuw	a5,a3,a4
    80004660:	02079793          	slli	a5,a5,0x20
    80004664:	0207d793          	srli	a5,a5,0x20
    80004668:	00fd87b3          	add	a5,s11,a5
    8000466c:	0007c783          	lbu	a5,0(a5)
    80004670:	02e6d73b          	divuw	a4,a3,a4
    80004674:	f8f400a3          	sb	a5,-127(s0)
    80004678:	12a5f463          	bgeu	a1,a0,800047a0 <__printf+0x278>
    8000467c:	00a00693          	li	a3,10
    80004680:	00900593          	li	a1,9
    80004684:	02d777bb          	remuw	a5,a4,a3
    80004688:	02079793          	slli	a5,a5,0x20
    8000468c:	0207d793          	srli	a5,a5,0x20
    80004690:	00fd87b3          	add	a5,s11,a5
    80004694:	0007c503          	lbu	a0,0(a5)
    80004698:	02d757bb          	divuw	a5,a4,a3
    8000469c:	f8a40123          	sb	a0,-126(s0)
    800046a0:	48e5f263          	bgeu	a1,a4,80004b24 <__printf+0x5fc>
    800046a4:	06300513          	li	a0,99
    800046a8:	02d7f5bb          	remuw	a1,a5,a3
    800046ac:	02059593          	slli	a1,a1,0x20
    800046b0:	0205d593          	srli	a1,a1,0x20
    800046b4:	00bd85b3          	add	a1,s11,a1
    800046b8:	0005c583          	lbu	a1,0(a1)
    800046bc:	02d7d7bb          	divuw	a5,a5,a3
    800046c0:	f8b401a3          	sb	a1,-125(s0)
    800046c4:	48e57263          	bgeu	a0,a4,80004b48 <__printf+0x620>
    800046c8:	3e700513          	li	a0,999
    800046cc:	02d7f5bb          	remuw	a1,a5,a3
    800046d0:	02059593          	slli	a1,a1,0x20
    800046d4:	0205d593          	srli	a1,a1,0x20
    800046d8:	00bd85b3          	add	a1,s11,a1
    800046dc:	0005c583          	lbu	a1,0(a1)
    800046e0:	02d7d7bb          	divuw	a5,a5,a3
    800046e4:	f8b40223          	sb	a1,-124(s0)
    800046e8:	46e57663          	bgeu	a0,a4,80004b54 <__printf+0x62c>
    800046ec:	02d7f5bb          	remuw	a1,a5,a3
    800046f0:	02059593          	slli	a1,a1,0x20
    800046f4:	0205d593          	srli	a1,a1,0x20
    800046f8:	00bd85b3          	add	a1,s11,a1
    800046fc:	0005c583          	lbu	a1,0(a1)
    80004700:	02d7d7bb          	divuw	a5,a5,a3
    80004704:	f8b402a3          	sb	a1,-123(s0)
    80004708:	46ea7863          	bgeu	s4,a4,80004b78 <__printf+0x650>
    8000470c:	02d7f5bb          	remuw	a1,a5,a3
    80004710:	02059593          	slli	a1,a1,0x20
    80004714:	0205d593          	srli	a1,a1,0x20
    80004718:	00bd85b3          	add	a1,s11,a1
    8000471c:	0005c583          	lbu	a1,0(a1)
    80004720:	02d7d7bb          	divuw	a5,a5,a3
    80004724:	f8b40323          	sb	a1,-122(s0)
    80004728:	3eeaf863          	bgeu	s5,a4,80004b18 <__printf+0x5f0>
    8000472c:	02d7f5bb          	remuw	a1,a5,a3
    80004730:	02059593          	slli	a1,a1,0x20
    80004734:	0205d593          	srli	a1,a1,0x20
    80004738:	00bd85b3          	add	a1,s11,a1
    8000473c:	0005c583          	lbu	a1,0(a1)
    80004740:	02d7d7bb          	divuw	a5,a5,a3
    80004744:	f8b403a3          	sb	a1,-121(s0)
    80004748:	42eb7e63          	bgeu	s6,a4,80004b84 <__printf+0x65c>
    8000474c:	02d7f5bb          	remuw	a1,a5,a3
    80004750:	02059593          	slli	a1,a1,0x20
    80004754:	0205d593          	srli	a1,a1,0x20
    80004758:	00bd85b3          	add	a1,s11,a1
    8000475c:	0005c583          	lbu	a1,0(a1)
    80004760:	02d7d7bb          	divuw	a5,a5,a3
    80004764:	f8b40423          	sb	a1,-120(s0)
    80004768:	42ebfc63          	bgeu	s7,a4,80004ba0 <__printf+0x678>
    8000476c:	02079793          	slli	a5,a5,0x20
    80004770:	0207d793          	srli	a5,a5,0x20
    80004774:	00fd8db3          	add	s11,s11,a5
    80004778:	000dc703          	lbu	a4,0(s11)
    8000477c:	00a00793          	li	a5,10
    80004780:	00900c93          	li	s9,9
    80004784:	f8e404a3          	sb	a4,-119(s0)
    80004788:	00065c63          	bgez	a2,800047a0 <__printf+0x278>
    8000478c:	f9040713          	addi	a4,s0,-112
    80004790:	00f70733          	add	a4,a4,a5
    80004794:	02d00693          	li	a3,45
    80004798:	fed70823          	sb	a3,-16(a4)
    8000479c:	00078c93          	mv	s9,a5
    800047a0:	f8040793          	addi	a5,s0,-128
    800047a4:	01978cb3          	add	s9,a5,s9
    800047a8:	f7f40d13          	addi	s10,s0,-129
    800047ac:	000cc503          	lbu	a0,0(s9)
    800047b0:	fffc8c93          	addi	s9,s9,-1
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	b90080e7          	jalr	-1136(ra) # 80004344 <consputc>
    800047bc:	ffac98e3          	bne	s9,s10,800047ac <__printf+0x284>
    800047c0:	00094503          	lbu	a0,0(s2)
    800047c4:	e00514e3          	bnez	a0,800045cc <__printf+0xa4>
    800047c8:	1a0c1663          	bnez	s8,80004974 <__printf+0x44c>
    800047cc:	08813083          	ld	ra,136(sp)
    800047d0:	08013403          	ld	s0,128(sp)
    800047d4:	07813483          	ld	s1,120(sp)
    800047d8:	07013903          	ld	s2,112(sp)
    800047dc:	06813983          	ld	s3,104(sp)
    800047e0:	06013a03          	ld	s4,96(sp)
    800047e4:	05813a83          	ld	s5,88(sp)
    800047e8:	05013b03          	ld	s6,80(sp)
    800047ec:	04813b83          	ld	s7,72(sp)
    800047f0:	04013c03          	ld	s8,64(sp)
    800047f4:	03813c83          	ld	s9,56(sp)
    800047f8:	03013d03          	ld	s10,48(sp)
    800047fc:	02813d83          	ld	s11,40(sp)
    80004800:	0d010113          	addi	sp,sp,208
    80004804:	00008067          	ret
    80004808:	07300713          	li	a4,115
    8000480c:	1ce78a63          	beq	a5,a4,800049e0 <__printf+0x4b8>
    80004810:	07800713          	li	a4,120
    80004814:	1ee79e63          	bne	a5,a4,80004a10 <__printf+0x4e8>
    80004818:	f7843783          	ld	a5,-136(s0)
    8000481c:	0007a703          	lw	a4,0(a5)
    80004820:	00878793          	addi	a5,a5,8
    80004824:	f6f43c23          	sd	a5,-136(s0)
    80004828:	28074263          	bltz	a4,80004aac <__printf+0x584>
    8000482c:	00002d97          	auipc	s11,0x2
    80004830:	a5cd8d93          	addi	s11,s11,-1444 # 80006288 <digits>
    80004834:	00f77793          	andi	a5,a4,15
    80004838:	00fd87b3          	add	a5,s11,a5
    8000483c:	0007c683          	lbu	a3,0(a5)
    80004840:	00f00613          	li	a2,15
    80004844:	0007079b          	sext.w	a5,a4
    80004848:	f8d40023          	sb	a3,-128(s0)
    8000484c:	0047559b          	srliw	a1,a4,0x4
    80004850:	0047569b          	srliw	a3,a4,0x4
    80004854:	00000c93          	li	s9,0
    80004858:	0ee65063          	bge	a2,a4,80004938 <__printf+0x410>
    8000485c:	00f6f693          	andi	a3,a3,15
    80004860:	00dd86b3          	add	a3,s11,a3
    80004864:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004868:	0087d79b          	srliw	a5,a5,0x8
    8000486c:	00100c93          	li	s9,1
    80004870:	f8d400a3          	sb	a3,-127(s0)
    80004874:	0cb67263          	bgeu	a2,a1,80004938 <__printf+0x410>
    80004878:	00f7f693          	andi	a3,a5,15
    8000487c:	00dd86b3          	add	a3,s11,a3
    80004880:	0006c583          	lbu	a1,0(a3)
    80004884:	00f00613          	li	a2,15
    80004888:	0047d69b          	srliw	a3,a5,0x4
    8000488c:	f8b40123          	sb	a1,-126(s0)
    80004890:	0047d593          	srli	a1,a5,0x4
    80004894:	28f67e63          	bgeu	a2,a5,80004b30 <__printf+0x608>
    80004898:	00f6f693          	andi	a3,a3,15
    8000489c:	00dd86b3          	add	a3,s11,a3
    800048a0:	0006c503          	lbu	a0,0(a3)
    800048a4:	0087d813          	srli	a6,a5,0x8
    800048a8:	0087d69b          	srliw	a3,a5,0x8
    800048ac:	f8a401a3          	sb	a0,-125(s0)
    800048b0:	28b67663          	bgeu	a2,a1,80004b3c <__printf+0x614>
    800048b4:	00f6f693          	andi	a3,a3,15
    800048b8:	00dd86b3          	add	a3,s11,a3
    800048bc:	0006c583          	lbu	a1,0(a3)
    800048c0:	00c7d513          	srli	a0,a5,0xc
    800048c4:	00c7d69b          	srliw	a3,a5,0xc
    800048c8:	f8b40223          	sb	a1,-124(s0)
    800048cc:	29067a63          	bgeu	a2,a6,80004b60 <__printf+0x638>
    800048d0:	00f6f693          	andi	a3,a3,15
    800048d4:	00dd86b3          	add	a3,s11,a3
    800048d8:	0006c583          	lbu	a1,0(a3)
    800048dc:	0107d813          	srli	a6,a5,0x10
    800048e0:	0107d69b          	srliw	a3,a5,0x10
    800048e4:	f8b402a3          	sb	a1,-123(s0)
    800048e8:	28a67263          	bgeu	a2,a0,80004b6c <__printf+0x644>
    800048ec:	00f6f693          	andi	a3,a3,15
    800048f0:	00dd86b3          	add	a3,s11,a3
    800048f4:	0006c683          	lbu	a3,0(a3)
    800048f8:	0147d79b          	srliw	a5,a5,0x14
    800048fc:	f8d40323          	sb	a3,-122(s0)
    80004900:	21067663          	bgeu	a2,a6,80004b0c <__printf+0x5e4>
    80004904:	02079793          	slli	a5,a5,0x20
    80004908:	0207d793          	srli	a5,a5,0x20
    8000490c:	00fd8db3          	add	s11,s11,a5
    80004910:	000dc683          	lbu	a3,0(s11)
    80004914:	00800793          	li	a5,8
    80004918:	00700c93          	li	s9,7
    8000491c:	f8d403a3          	sb	a3,-121(s0)
    80004920:	00075c63          	bgez	a4,80004938 <__printf+0x410>
    80004924:	f9040713          	addi	a4,s0,-112
    80004928:	00f70733          	add	a4,a4,a5
    8000492c:	02d00693          	li	a3,45
    80004930:	fed70823          	sb	a3,-16(a4)
    80004934:	00078c93          	mv	s9,a5
    80004938:	f8040793          	addi	a5,s0,-128
    8000493c:	01978cb3          	add	s9,a5,s9
    80004940:	f7f40d13          	addi	s10,s0,-129
    80004944:	000cc503          	lbu	a0,0(s9)
    80004948:	fffc8c93          	addi	s9,s9,-1
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	9f8080e7          	jalr	-1544(ra) # 80004344 <consputc>
    80004954:	ff9d18e3          	bne	s10,s9,80004944 <__printf+0x41c>
    80004958:	0100006f          	j	80004968 <__printf+0x440>
    8000495c:	00000097          	auipc	ra,0x0
    80004960:	9e8080e7          	jalr	-1560(ra) # 80004344 <consputc>
    80004964:	000c8493          	mv	s1,s9
    80004968:	00094503          	lbu	a0,0(s2)
    8000496c:	c60510e3          	bnez	a0,800045cc <__printf+0xa4>
    80004970:	e40c0ee3          	beqz	s8,800047cc <__printf+0x2a4>
    80004974:	00004517          	auipc	a0,0x4
    80004978:	02c50513          	addi	a0,a0,44 # 800089a0 <pr>
    8000497c:	00001097          	auipc	ra,0x1
    80004980:	94c080e7          	jalr	-1716(ra) # 800052c8 <release>
    80004984:	e49ff06f          	j	800047cc <__printf+0x2a4>
    80004988:	f7843783          	ld	a5,-136(s0)
    8000498c:	03000513          	li	a0,48
    80004990:	01000d13          	li	s10,16
    80004994:	00878713          	addi	a4,a5,8
    80004998:	0007bc83          	ld	s9,0(a5)
    8000499c:	f6e43c23          	sd	a4,-136(s0)
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	9a4080e7          	jalr	-1628(ra) # 80004344 <consputc>
    800049a8:	07800513          	li	a0,120
    800049ac:	00000097          	auipc	ra,0x0
    800049b0:	998080e7          	jalr	-1640(ra) # 80004344 <consputc>
    800049b4:	00002d97          	auipc	s11,0x2
    800049b8:	8d4d8d93          	addi	s11,s11,-1836 # 80006288 <digits>
    800049bc:	03ccd793          	srli	a5,s9,0x3c
    800049c0:	00fd87b3          	add	a5,s11,a5
    800049c4:	0007c503          	lbu	a0,0(a5)
    800049c8:	fffd0d1b          	addiw	s10,s10,-1
    800049cc:	004c9c93          	slli	s9,s9,0x4
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	974080e7          	jalr	-1676(ra) # 80004344 <consputc>
    800049d8:	fe0d12e3          	bnez	s10,800049bc <__printf+0x494>
    800049dc:	f8dff06f          	j	80004968 <__printf+0x440>
    800049e0:	f7843783          	ld	a5,-136(s0)
    800049e4:	0007bc83          	ld	s9,0(a5)
    800049e8:	00878793          	addi	a5,a5,8
    800049ec:	f6f43c23          	sd	a5,-136(s0)
    800049f0:	000c9a63          	bnez	s9,80004a04 <__printf+0x4dc>
    800049f4:	1080006f          	j	80004afc <__printf+0x5d4>
    800049f8:	001c8c93          	addi	s9,s9,1
    800049fc:	00000097          	auipc	ra,0x0
    80004a00:	948080e7          	jalr	-1720(ra) # 80004344 <consputc>
    80004a04:	000cc503          	lbu	a0,0(s9)
    80004a08:	fe0518e3          	bnez	a0,800049f8 <__printf+0x4d0>
    80004a0c:	f5dff06f          	j	80004968 <__printf+0x440>
    80004a10:	02500513          	li	a0,37
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	930080e7          	jalr	-1744(ra) # 80004344 <consputc>
    80004a1c:	000c8513          	mv	a0,s9
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	924080e7          	jalr	-1756(ra) # 80004344 <consputc>
    80004a28:	f41ff06f          	j	80004968 <__printf+0x440>
    80004a2c:	02500513          	li	a0,37
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	914080e7          	jalr	-1772(ra) # 80004344 <consputc>
    80004a38:	f31ff06f          	j	80004968 <__printf+0x440>
    80004a3c:	00030513          	mv	a0,t1
    80004a40:	00000097          	auipc	ra,0x0
    80004a44:	7bc080e7          	jalr	1980(ra) # 800051fc <acquire>
    80004a48:	b4dff06f          	j	80004594 <__printf+0x6c>
    80004a4c:	40c0053b          	negw	a0,a2
    80004a50:	00a00713          	li	a4,10
    80004a54:	02e576bb          	remuw	a3,a0,a4
    80004a58:	00002d97          	auipc	s11,0x2
    80004a5c:	830d8d93          	addi	s11,s11,-2000 # 80006288 <digits>
    80004a60:	ff700593          	li	a1,-9
    80004a64:	02069693          	slli	a3,a3,0x20
    80004a68:	0206d693          	srli	a3,a3,0x20
    80004a6c:	00dd86b3          	add	a3,s11,a3
    80004a70:	0006c683          	lbu	a3,0(a3)
    80004a74:	02e557bb          	divuw	a5,a0,a4
    80004a78:	f8d40023          	sb	a3,-128(s0)
    80004a7c:	10b65e63          	bge	a2,a1,80004b98 <__printf+0x670>
    80004a80:	06300593          	li	a1,99
    80004a84:	02e7f6bb          	remuw	a3,a5,a4
    80004a88:	02069693          	slli	a3,a3,0x20
    80004a8c:	0206d693          	srli	a3,a3,0x20
    80004a90:	00dd86b3          	add	a3,s11,a3
    80004a94:	0006c683          	lbu	a3,0(a3)
    80004a98:	02e7d73b          	divuw	a4,a5,a4
    80004a9c:	00200793          	li	a5,2
    80004aa0:	f8d400a3          	sb	a3,-127(s0)
    80004aa4:	bca5ece3          	bltu	a1,a0,8000467c <__printf+0x154>
    80004aa8:	ce5ff06f          	j	8000478c <__printf+0x264>
    80004aac:	40e007bb          	negw	a5,a4
    80004ab0:	00001d97          	auipc	s11,0x1
    80004ab4:	7d8d8d93          	addi	s11,s11,2008 # 80006288 <digits>
    80004ab8:	00f7f693          	andi	a3,a5,15
    80004abc:	00dd86b3          	add	a3,s11,a3
    80004ac0:	0006c583          	lbu	a1,0(a3)
    80004ac4:	ff100613          	li	a2,-15
    80004ac8:	0047d69b          	srliw	a3,a5,0x4
    80004acc:	f8b40023          	sb	a1,-128(s0)
    80004ad0:	0047d59b          	srliw	a1,a5,0x4
    80004ad4:	0ac75e63          	bge	a4,a2,80004b90 <__printf+0x668>
    80004ad8:	00f6f693          	andi	a3,a3,15
    80004adc:	00dd86b3          	add	a3,s11,a3
    80004ae0:	0006c603          	lbu	a2,0(a3)
    80004ae4:	00f00693          	li	a3,15
    80004ae8:	0087d79b          	srliw	a5,a5,0x8
    80004aec:	f8c400a3          	sb	a2,-127(s0)
    80004af0:	d8b6e4e3          	bltu	a3,a1,80004878 <__printf+0x350>
    80004af4:	00200793          	li	a5,2
    80004af8:	e2dff06f          	j	80004924 <__printf+0x3fc>
    80004afc:	00001c97          	auipc	s9,0x1
    80004b00:	76cc8c93          	addi	s9,s9,1900 # 80006268 <CONSOLE_STATUS+0x258>
    80004b04:	02800513          	li	a0,40
    80004b08:	ef1ff06f          	j	800049f8 <__printf+0x4d0>
    80004b0c:	00700793          	li	a5,7
    80004b10:	00600c93          	li	s9,6
    80004b14:	e0dff06f          	j	80004920 <__printf+0x3f8>
    80004b18:	00700793          	li	a5,7
    80004b1c:	00600c93          	li	s9,6
    80004b20:	c69ff06f          	j	80004788 <__printf+0x260>
    80004b24:	00300793          	li	a5,3
    80004b28:	00200c93          	li	s9,2
    80004b2c:	c5dff06f          	j	80004788 <__printf+0x260>
    80004b30:	00300793          	li	a5,3
    80004b34:	00200c93          	li	s9,2
    80004b38:	de9ff06f          	j	80004920 <__printf+0x3f8>
    80004b3c:	00400793          	li	a5,4
    80004b40:	00300c93          	li	s9,3
    80004b44:	dddff06f          	j	80004920 <__printf+0x3f8>
    80004b48:	00400793          	li	a5,4
    80004b4c:	00300c93          	li	s9,3
    80004b50:	c39ff06f          	j	80004788 <__printf+0x260>
    80004b54:	00500793          	li	a5,5
    80004b58:	00400c93          	li	s9,4
    80004b5c:	c2dff06f          	j	80004788 <__printf+0x260>
    80004b60:	00500793          	li	a5,5
    80004b64:	00400c93          	li	s9,4
    80004b68:	db9ff06f          	j	80004920 <__printf+0x3f8>
    80004b6c:	00600793          	li	a5,6
    80004b70:	00500c93          	li	s9,5
    80004b74:	dadff06f          	j	80004920 <__printf+0x3f8>
    80004b78:	00600793          	li	a5,6
    80004b7c:	00500c93          	li	s9,5
    80004b80:	c09ff06f          	j	80004788 <__printf+0x260>
    80004b84:	00800793          	li	a5,8
    80004b88:	00700c93          	li	s9,7
    80004b8c:	bfdff06f          	j	80004788 <__printf+0x260>
    80004b90:	00100793          	li	a5,1
    80004b94:	d91ff06f          	j	80004924 <__printf+0x3fc>
    80004b98:	00100793          	li	a5,1
    80004b9c:	bf1ff06f          	j	8000478c <__printf+0x264>
    80004ba0:	00900793          	li	a5,9
    80004ba4:	00800c93          	li	s9,8
    80004ba8:	be1ff06f          	j	80004788 <__printf+0x260>
    80004bac:	00001517          	auipc	a0,0x1
    80004bb0:	6c450513          	addi	a0,a0,1732 # 80006270 <CONSOLE_STATUS+0x260>
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	918080e7          	jalr	-1768(ra) # 800044cc <panic>

0000000080004bbc <printfinit>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00913423          	sd	s1,8(sp)
    80004bc8:	00113c23          	sd	ra,24(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	00004497          	auipc	s1,0x4
    80004bd4:	dd048493          	addi	s1,s1,-560 # 800089a0 <pr>
    80004bd8:	00048513          	mv	a0,s1
    80004bdc:	00001597          	auipc	a1,0x1
    80004be0:	6a458593          	addi	a1,a1,1700 # 80006280 <CONSOLE_STATUS+0x270>
    80004be4:	00000097          	auipc	ra,0x0
    80004be8:	5f4080e7          	jalr	1524(ra) # 800051d8 <initlock>
    80004bec:	01813083          	ld	ra,24(sp)
    80004bf0:	01013403          	ld	s0,16(sp)
    80004bf4:	0004ac23          	sw	zero,24(s1)
    80004bf8:	00813483          	ld	s1,8(sp)
    80004bfc:	02010113          	addi	sp,sp,32
    80004c00:	00008067          	ret

0000000080004c04 <uartinit>:
    80004c04:	ff010113          	addi	sp,sp,-16
    80004c08:	00813423          	sd	s0,8(sp)
    80004c0c:	01010413          	addi	s0,sp,16
    80004c10:	100007b7          	lui	a5,0x10000
    80004c14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c18:	f8000713          	li	a4,-128
    80004c1c:	00e781a3          	sb	a4,3(a5)
    80004c20:	00300713          	li	a4,3
    80004c24:	00e78023          	sb	a4,0(a5)
    80004c28:	000780a3          	sb	zero,1(a5)
    80004c2c:	00e781a3          	sb	a4,3(a5)
    80004c30:	00700693          	li	a3,7
    80004c34:	00d78123          	sb	a3,2(a5)
    80004c38:	00e780a3          	sb	a4,1(a5)
    80004c3c:	00813403          	ld	s0,8(sp)
    80004c40:	01010113          	addi	sp,sp,16
    80004c44:	00008067          	ret

0000000080004c48 <uartputc>:
    80004c48:	00003797          	auipc	a5,0x3
    80004c4c:	ac07a783          	lw	a5,-1344(a5) # 80007708 <panicked>
    80004c50:	00078463          	beqz	a5,80004c58 <uartputc+0x10>
    80004c54:	0000006f          	j	80004c54 <uartputc+0xc>
    80004c58:	fd010113          	addi	sp,sp,-48
    80004c5c:	02813023          	sd	s0,32(sp)
    80004c60:	00913c23          	sd	s1,24(sp)
    80004c64:	01213823          	sd	s2,16(sp)
    80004c68:	01313423          	sd	s3,8(sp)
    80004c6c:	02113423          	sd	ra,40(sp)
    80004c70:	03010413          	addi	s0,sp,48
    80004c74:	00003917          	auipc	s2,0x3
    80004c78:	a9c90913          	addi	s2,s2,-1380 # 80007710 <uart_tx_r>
    80004c7c:	00093783          	ld	a5,0(s2)
    80004c80:	00003497          	auipc	s1,0x3
    80004c84:	a9848493          	addi	s1,s1,-1384 # 80007718 <uart_tx_w>
    80004c88:	0004b703          	ld	a4,0(s1)
    80004c8c:	02078693          	addi	a3,a5,32
    80004c90:	00050993          	mv	s3,a0
    80004c94:	02e69c63          	bne	a3,a4,80004ccc <uartputc+0x84>
    80004c98:	00001097          	auipc	ra,0x1
    80004c9c:	834080e7          	jalr	-1996(ra) # 800054cc <push_on>
    80004ca0:	00093783          	ld	a5,0(s2)
    80004ca4:	0004b703          	ld	a4,0(s1)
    80004ca8:	02078793          	addi	a5,a5,32
    80004cac:	00e79463          	bne	a5,a4,80004cb4 <uartputc+0x6c>
    80004cb0:	0000006f          	j	80004cb0 <uartputc+0x68>
    80004cb4:	00001097          	auipc	ra,0x1
    80004cb8:	88c080e7          	jalr	-1908(ra) # 80005540 <pop_on>
    80004cbc:	00093783          	ld	a5,0(s2)
    80004cc0:	0004b703          	ld	a4,0(s1)
    80004cc4:	02078693          	addi	a3,a5,32
    80004cc8:	fce688e3          	beq	a3,a4,80004c98 <uartputc+0x50>
    80004ccc:	01f77693          	andi	a3,a4,31
    80004cd0:	00004597          	auipc	a1,0x4
    80004cd4:	cf058593          	addi	a1,a1,-784 # 800089c0 <uart_tx_buf>
    80004cd8:	00d586b3          	add	a3,a1,a3
    80004cdc:	00170713          	addi	a4,a4,1
    80004ce0:	01368023          	sb	s3,0(a3)
    80004ce4:	00e4b023          	sd	a4,0(s1)
    80004ce8:	10000637          	lui	a2,0x10000
    80004cec:	02f71063          	bne	a4,a5,80004d0c <uartputc+0xc4>
    80004cf0:	0340006f          	j	80004d24 <uartputc+0xdc>
    80004cf4:	00074703          	lbu	a4,0(a4)
    80004cf8:	00f93023          	sd	a5,0(s2)
    80004cfc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004d00:	00093783          	ld	a5,0(s2)
    80004d04:	0004b703          	ld	a4,0(s1)
    80004d08:	00f70e63          	beq	a4,a5,80004d24 <uartputc+0xdc>
    80004d0c:	00564683          	lbu	a3,5(a2)
    80004d10:	01f7f713          	andi	a4,a5,31
    80004d14:	00e58733          	add	a4,a1,a4
    80004d18:	0206f693          	andi	a3,a3,32
    80004d1c:	00178793          	addi	a5,a5,1
    80004d20:	fc069ae3          	bnez	a3,80004cf4 <uartputc+0xac>
    80004d24:	02813083          	ld	ra,40(sp)
    80004d28:	02013403          	ld	s0,32(sp)
    80004d2c:	01813483          	ld	s1,24(sp)
    80004d30:	01013903          	ld	s2,16(sp)
    80004d34:	00813983          	ld	s3,8(sp)
    80004d38:	03010113          	addi	sp,sp,48
    80004d3c:	00008067          	ret

0000000080004d40 <uartputc_sync>:
    80004d40:	ff010113          	addi	sp,sp,-16
    80004d44:	00813423          	sd	s0,8(sp)
    80004d48:	01010413          	addi	s0,sp,16
    80004d4c:	00003717          	auipc	a4,0x3
    80004d50:	9bc72703          	lw	a4,-1604(a4) # 80007708 <panicked>
    80004d54:	02071663          	bnez	a4,80004d80 <uartputc_sync+0x40>
    80004d58:	00050793          	mv	a5,a0
    80004d5c:	100006b7          	lui	a3,0x10000
    80004d60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d64:	02077713          	andi	a4,a4,32
    80004d68:	fe070ce3          	beqz	a4,80004d60 <uartputc_sync+0x20>
    80004d6c:	0ff7f793          	andi	a5,a5,255
    80004d70:	00f68023          	sb	a5,0(a3)
    80004d74:	00813403          	ld	s0,8(sp)
    80004d78:	01010113          	addi	sp,sp,16
    80004d7c:	00008067          	ret
    80004d80:	0000006f          	j	80004d80 <uartputc_sync+0x40>

0000000080004d84 <uartstart>:
    80004d84:	ff010113          	addi	sp,sp,-16
    80004d88:	00813423          	sd	s0,8(sp)
    80004d8c:	01010413          	addi	s0,sp,16
    80004d90:	00003617          	auipc	a2,0x3
    80004d94:	98060613          	addi	a2,a2,-1664 # 80007710 <uart_tx_r>
    80004d98:	00003517          	auipc	a0,0x3
    80004d9c:	98050513          	addi	a0,a0,-1664 # 80007718 <uart_tx_w>
    80004da0:	00063783          	ld	a5,0(a2)
    80004da4:	00053703          	ld	a4,0(a0)
    80004da8:	04f70263          	beq	a4,a5,80004dec <uartstart+0x68>
    80004dac:	100005b7          	lui	a1,0x10000
    80004db0:	00004817          	auipc	a6,0x4
    80004db4:	c1080813          	addi	a6,a6,-1008 # 800089c0 <uart_tx_buf>
    80004db8:	01c0006f          	j	80004dd4 <uartstart+0x50>
    80004dbc:	0006c703          	lbu	a4,0(a3)
    80004dc0:	00f63023          	sd	a5,0(a2)
    80004dc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004dc8:	00063783          	ld	a5,0(a2)
    80004dcc:	00053703          	ld	a4,0(a0)
    80004dd0:	00f70e63          	beq	a4,a5,80004dec <uartstart+0x68>
    80004dd4:	01f7f713          	andi	a4,a5,31
    80004dd8:	00e806b3          	add	a3,a6,a4
    80004ddc:	0055c703          	lbu	a4,5(a1)
    80004de0:	00178793          	addi	a5,a5,1
    80004de4:	02077713          	andi	a4,a4,32
    80004de8:	fc071ae3          	bnez	a4,80004dbc <uartstart+0x38>
    80004dec:	00813403          	ld	s0,8(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret

0000000080004df8 <uartgetc>:
    80004df8:	ff010113          	addi	sp,sp,-16
    80004dfc:	00813423          	sd	s0,8(sp)
    80004e00:	01010413          	addi	s0,sp,16
    80004e04:	10000737          	lui	a4,0x10000
    80004e08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004e0c:	0017f793          	andi	a5,a5,1
    80004e10:	00078c63          	beqz	a5,80004e28 <uartgetc+0x30>
    80004e14:	00074503          	lbu	a0,0(a4)
    80004e18:	0ff57513          	andi	a0,a0,255
    80004e1c:	00813403          	ld	s0,8(sp)
    80004e20:	01010113          	addi	sp,sp,16
    80004e24:	00008067          	ret
    80004e28:	fff00513          	li	a0,-1
    80004e2c:	ff1ff06f          	j	80004e1c <uartgetc+0x24>

0000000080004e30 <uartintr>:
    80004e30:	100007b7          	lui	a5,0x10000
    80004e34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e38:	0017f793          	andi	a5,a5,1
    80004e3c:	0a078463          	beqz	a5,80004ee4 <uartintr+0xb4>
    80004e40:	fe010113          	addi	sp,sp,-32
    80004e44:	00813823          	sd	s0,16(sp)
    80004e48:	00913423          	sd	s1,8(sp)
    80004e4c:	00113c23          	sd	ra,24(sp)
    80004e50:	02010413          	addi	s0,sp,32
    80004e54:	100004b7          	lui	s1,0x10000
    80004e58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e5c:	0ff57513          	andi	a0,a0,255
    80004e60:	fffff097          	auipc	ra,0xfffff
    80004e64:	534080e7          	jalr	1332(ra) # 80004394 <consoleintr>
    80004e68:	0054c783          	lbu	a5,5(s1)
    80004e6c:	0017f793          	andi	a5,a5,1
    80004e70:	fe0794e3          	bnez	a5,80004e58 <uartintr+0x28>
    80004e74:	00003617          	auipc	a2,0x3
    80004e78:	89c60613          	addi	a2,a2,-1892 # 80007710 <uart_tx_r>
    80004e7c:	00003517          	auipc	a0,0x3
    80004e80:	89c50513          	addi	a0,a0,-1892 # 80007718 <uart_tx_w>
    80004e84:	00063783          	ld	a5,0(a2)
    80004e88:	00053703          	ld	a4,0(a0)
    80004e8c:	04f70263          	beq	a4,a5,80004ed0 <uartintr+0xa0>
    80004e90:	100005b7          	lui	a1,0x10000
    80004e94:	00004817          	auipc	a6,0x4
    80004e98:	b2c80813          	addi	a6,a6,-1236 # 800089c0 <uart_tx_buf>
    80004e9c:	01c0006f          	j	80004eb8 <uartintr+0x88>
    80004ea0:	0006c703          	lbu	a4,0(a3)
    80004ea4:	00f63023          	sd	a5,0(a2)
    80004ea8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004eac:	00063783          	ld	a5,0(a2)
    80004eb0:	00053703          	ld	a4,0(a0)
    80004eb4:	00f70e63          	beq	a4,a5,80004ed0 <uartintr+0xa0>
    80004eb8:	01f7f713          	andi	a4,a5,31
    80004ebc:	00e806b3          	add	a3,a6,a4
    80004ec0:	0055c703          	lbu	a4,5(a1)
    80004ec4:	00178793          	addi	a5,a5,1
    80004ec8:	02077713          	andi	a4,a4,32
    80004ecc:	fc071ae3          	bnez	a4,80004ea0 <uartintr+0x70>
    80004ed0:	01813083          	ld	ra,24(sp)
    80004ed4:	01013403          	ld	s0,16(sp)
    80004ed8:	00813483          	ld	s1,8(sp)
    80004edc:	02010113          	addi	sp,sp,32
    80004ee0:	00008067          	ret
    80004ee4:	00003617          	auipc	a2,0x3
    80004ee8:	82c60613          	addi	a2,a2,-2004 # 80007710 <uart_tx_r>
    80004eec:	00003517          	auipc	a0,0x3
    80004ef0:	82c50513          	addi	a0,a0,-2004 # 80007718 <uart_tx_w>
    80004ef4:	00063783          	ld	a5,0(a2)
    80004ef8:	00053703          	ld	a4,0(a0)
    80004efc:	04f70263          	beq	a4,a5,80004f40 <uartintr+0x110>
    80004f00:	100005b7          	lui	a1,0x10000
    80004f04:	00004817          	auipc	a6,0x4
    80004f08:	abc80813          	addi	a6,a6,-1348 # 800089c0 <uart_tx_buf>
    80004f0c:	01c0006f          	j	80004f28 <uartintr+0xf8>
    80004f10:	0006c703          	lbu	a4,0(a3)
    80004f14:	00f63023          	sd	a5,0(a2)
    80004f18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f1c:	00063783          	ld	a5,0(a2)
    80004f20:	00053703          	ld	a4,0(a0)
    80004f24:	02f70063          	beq	a4,a5,80004f44 <uartintr+0x114>
    80004f28:	01f7f713          	andi	a4,a5,31
    80004f2c:	00e806b3          	add	a3,a6,a4
    80004f30:	0055c703          	lbu	a4,5(a1)
    80004f34:	00178793          	addi	a5,a5,1
    80004f38:	02077713          	andi	a4,a4,32
    80004f3c:	fc071ae3          	bnez	a4,80004f10 <uartintr+0xe0>
    80004f40:	00008067          	ret
    80004f44:	00008067          	ret

0000000080004f48 <kinit>:
    80004f48:	fc010113          	addi	sp,sp,-64
    80004f4c:	02913423          	sd	s1,40(sp)
    80004f50:	fffff7b7          	lui	a5,0xfffff
    80004f54:	00005497          	auipc	s1,0x5
    80004f58:	a8b48493          	addi	s1,s1,-1397 # 800099df <end+0xfff>
    80004f5c:	02813823          	sd	s0,48(sp)
    80004f60:	01313c23          	sd	s3,24(sp)
    80004f64:	00f4f4b3          	and	s1,s1,a5
    80004f68:	02113c23          	sd	ra,56(sp)
    80004f6c:	03213023          	sd	s2,32(sp)
    80004f70:	01413823          	sd	s4,16(sp)
    80004f74:	01513423          	sd	s5,8(sp)
    80004f78:	04010413          	addi	s0,sp,64
    80004f7c:	000017b7          	lui	a5,0x1
    80004f80:	01100993          	li	s3,17
    80004f84:	00f487b3          	add	a5,s1,a5
    80004f88:	01b99993          	slli	s3,s3,0x1b
    80004f8c:	06f9e063          	bltu	s3,a5,80004fec <kinit+0xa4>
    80004f90:	00004a97          	auipc	s5,0x4
    80004f94:	a50a8a93          	addi	s5,s5,-1456 # 800089e0 <end>
    80004f98:	0754ec63          	bltu	s1,s5,80005010 <kinit+0xc8>
    80004f9c:	0734fa63          	bgeu	s1,s3,80005010 <kinit+0xc8>
    80004fa0:	00088a37          	lui	s4,0x88
    80004fa4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004fa8:	00002917          	auipc	s2,0x2
    80004fac:	77890913          	addi	s2,s2,1912 # 80007720 <kmem>
    80004fb0:	00ca1a13          	slli	s4,s4,0xc
    80004fb4:	0140006f          	j	80004fc8 <kinit+0x80>
    80004fb8:	000017b7          	lui	a5,0x1
    80004fbc:	00f484b3          	add	s1,s1,a5
    80004fc0:	0554e863          	bltu	s1,s5,80005010 <kinit+0xc8>
    80004fc4:	0534f663          	bgeu	s1,s3,80005010 <kinit+0xc8>
    80004fc8:	00001637          	lui	a2,0x1
    80004fcc:	00100593          	li	a1,1
    80004fd0:	00048513          	mv	a0,s1
    80004fd4:	00000097          	auipc	ra,0x0
    80004fd8:	5e4080e7          	jalr	1508(ra) # 800055b8 <__memset>
    80004fdc:	00093783          	ld	a5,0(s2)
    80004fe0:	00f4b023          	sd	a5,0(s1)
    80004fe4:	00993023          	sd	s1,0(s2)
    80004fe8:	fd4498e3          	bne	s1,s4,80004fb8 <kinit+0x70>
    80004fec:	03813083          	ld	ra,56(sp)
    80004ff0:	03013403          	ld	s0,48(sp)
    80004ff4:	02813483          	ld	s1,40(sp)
    80004ff8:	02013903          	ld	s2,32(sp)
    80004ffc:	01813983          	ld	s3,24(sp)
    80005000:	01013a03          	ld	s4,16(sp)
    80005004:	00813a83          	ld	s5,8(sp)
    80005008:	04010113          	addi	sp,sp,64
    8000500c:	00008067          	ret
    80005010:	00001517          	auipc	a0,0x1
    80005014:	29050513          	addi	a0,a0,656 # 800062a0 <digits+0x18>
    80005018:	fffff097          	auipc	ra,0xfffff
    8000501c:	4b4080e7          	jalr	1204(ra) # 800044cc <panic>

0000000080005020 <freerange>:
    80005020:	fc010113          	addi	sp,sp,-64
    80005024:	000017b7          	lui	a5,0x1
    80005028:	02913423          	sd	s1,40(sp)
    8000502c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005030:	009504b3          	add	s1,a0,s1
    80005034:	fffff537          	lui	a0,0xfffff
    80005038:	02813823          	sd	s0,48(sp)
    8000503c:	02113c23          	sd	ra,56(sp)
    80005040:	03213023          	sd	s2,32(sp)
    80005044:	01313c23          	sd	s3,24(sp)
    80005048:	01413823          	sd	s4,16(sp)
    8000504c:	01513423          	sd	s5,8(sp)
    80005050:	01613023          	sd	s6,0(sp)
    80005054:	04010413          	addi	s0,sp,64
    80005058:	00a4f4b3          	and	s1,s1,a0
    8000505c:	00f487b3          	add	a5,s1,a5
    80005060:	06f5e463          	bltu	a1,a5,800050c8 <freerange+0xa8>
    80005064:	00004a97          	auipc	s5,0x4
    80005068:	97ca8a93          	addi	s5,s5,-1668 # 800089e0 <end>
    8000506c:	0954e263          	bltu	s1,s5,800050f0 <freerange+0xd0>
    80005070:	01100993          	li	s3,17
    80005074:	01b99993          	slli	s3,s3,0x1b
    80005078:	0734fc63          	bgeu	s1,s3,800050f0 <freerange+0xd0>
    8000507c:	00058a13          	mv	s4,a1
    80005080:	00002917          	auipc	s2,0x2
    80005084:	6a090913          	addi	s2,s2,1696 # 80007720 <kmem>
    80005088:	00002b37          	lui	s6,0x2
    8000508c:	0140006f          	j	800050a0 <freerange+0x80>
    80005090:	000017b7          	lui	a5,0x1
    80005094:	00f484b3          	add	s1,s1,a5
    80005098:	0554ec63          	bltu	s1,s5,800050f0 <freerange+0xd0>
    8000509c:	0534fa63          	bgeu	s1,s3,800050f0 <freerange+0xd0>
    800050a0:	00001637          	lui	a2,0x1
    800050a4:	00100593          	li	a1,1
    800050a8:	00048513          	mv	a0,s1
    800050ac:	00000097          	auipc	ra,0x0
    800050b0:	50c080e7          	jalr	1292(ra) # 800055b8 <__memset>
    800050b4:	00093703          	ld	a4,0(s2)
    800050b8:	016487b3          	add	a5,s1,s6
    800050bc:	00e4b023          	sd	a4,0(s1)
    800050c0:	00993023          	sd	s1,0(s2)
    800050c4:	fcfa76e3          	bgeu	s4,a5,80005090 <freerange+0x70>
    800050c8:	03813083          	ld	ra,56(sp)
    800050cc:	03013403          	ld	s0,48(sp)
    800050d0:	02813483          	ld	s1,40(sp)
    800050d4:	02013903          	ld	s2,32(sp)
    800050d8:	01813983          	ld	s3,24(sp)
    800050dc:	01013a03          	ld	s4,16(sp)
    800050e0:	00813a83          	ld	s5,8(sp)
    800050e4:	00013b03          	ld	s6,0(sp)
    800050e8:	04010113          	addi	sp,sp,64
    800050ec:	00008067          	ret
    800050f0:	00001517          	auipc	a0,0x1
    800050f4:	1b050513          	addi	a0,a0,432 # 800062a0 <digits+0x18>
    800050f8:	fffff097          	auipc	ra,0xfffff
    800050fc:	3d4080e7          	jalr	980(ra) # 800044cc <panic>

0000000080005100 <kfree>:
    80005100:	fe010113          	addi	sp,sp,-32
    80005104:	00813823          	sd	s0,16(sp)
    80005108:	00113c23          	sd	ra,24(sp)
    8000510c:	00913423          	sd	s1,8(sp)
    80005110:	02010413          	addi	s0,sp,32
    80005114:	03451793          	slli	a5,a0,0x34
    80005118:	04079c63          	bnez	a5,80005170 <kfree+0x70>
    8000511c:	00004797          	auipc	a5,0x4
    80005120:	8c478793          	addi	a5,a5,-1852 # 800089e0 <end>
    80005124:	00050493          	mv	s1,a0
    80005128:	04f56463          	bltu	a0,a5,80005170 <kfree+0x70>
    8000512c:	01100793          	li	a5,17
    80005130:	01b79793          	slli	a5,a5,0x1b
    80005134:	02f57e63          	bgeu	a0,a5,80005170 <kfree+0x70>
    80005138:	00001637          	lui	a2,0x1
    8000513c:	00100593          	li	a1,1
    80005140:	00000097          	auipc	ra,0x0
    80005144:	478080e7          	jalr	1144(ra) # 800055b8 <__memset>
    80005148:	00002797          	auipc	a5,0x2
    8000514c:	5d878793          	addi	a5,a5,1496 # 80007720 <kmem>
    80005150:	0007b703          	ld	a4,0(a5)
    80005154:	01813083          	ld	ra,24(sp)
    80005158:	01013403          	ld	s0,16(sp)
    8000515c:	00e4b023          	sd	a4,0(s1)
    80005160:	0097b023          	sd	s1,0(a5)
    80005164:	00813483          	ld	s1,8(sp)
    80005168:	02010113          	addi	sp,sp,32
    8000516c:	00008067          	ret
    80005170:	00001517          	auipc	a0,0x1
    80005174:	13050513          	addi	a0,a0,304 # 800062a0 <digits+0x18>
    80005178:	fffff097          	auipc	ra,0xfffff
    8000517c:	354080e7          	jalr	852(ra) # 800044cc <panic>

0000000080005180 <kalloc>:
    80005180:	fe010113          	addi	sp,sp,-32
    80005184:	00813823          	sd	s0,16(sp)
    80005188:	00913423          	sd	s1,8(sp)
    8000518c:	00113c23          	sd	ra,24(sp)
    80005190:	02010413          	addi	s0,sp,32
    80005194:	00002797          	auipc	a5,0x2
    80005198:	58c78793          	addi	a5,a5,1420 # 80007720 <kmem>
    8000519c:	0007b483          	ld	s1,0(a5)
    800051a0:	02048063          	beqz	s1,800051c0 <kalloc+0x40>
    800051a4:	0004b703          	ld	a4,0(s1)
    800051a8:	00001637          	lui	a2,0x1
    800051ac:	00500593          	li	a1,5
    800051b0:	00048513          	mv	a0,s1
    800051b4:	00e7b023          	sd	a4,0(a5)
    800051b8:	00000097          	auipc	ra,0x0
    800051bc:	400080e7          	jalr	1024(ra) # 800055b8 <__memset>
    800051c0:	01813083          	ld	ra,24(sp)
    800051c4:	01013403          	ld	s0,16(sp)
    800051c8:	00048513          	mv	a0,s1
    800051cc:	00813483          	ld	s1,8(sp)
    800051d0:	02010113          	addi	sp,sp,32
    800051d4:	00008067          	ret

00000000800051d8 <initlock>:
    800051d8:	ff010113          	addi	sp,sp,-16
    800051dc:	00813423          	sd	s0,8(sp)
    800051e0:	01010413          	addi	s0,sp,16
    800051e4:	00813403          	ld	s0,8(sp)
    800051e8:	00b53423          	sd	a1,8(a0)
    800051ec:	00052023          	sw	zero,0(a0)
    800051f0:	00053823          	sd	zero,16(a0)
    800051f4:	01010113          	addi	sp,sp,16
    800051f8:	00008067          	ret

00000000800051fc <acquire>:
    800051fc:	fe010113          	addi	sp,sp,-32
    80005200:	00813823          	sd	s0,16(sp)
    80005204:	00913423          	sd	s1,8(sp)
    80005208:	00113c23          	sd	ra,24(sp)
    8000520c:	01213023          	sd	s2,0(sp)
    80005210:	02010413          	addi	s0,sp,32
    80005214:	00050493          	mv	s1,a0
    80005218:	10002973          	csrr	s2,sstatus
    8000521c:	100027f3          	csrr	a5,sstatus
    80005220:	ffd7f793          	andi	a5,a5,-3
    80005224:	10079073          	csrw	sstatus,a5
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	8e0080e7          	jalr	-1824(ra) # 80003b08 <mycpu>
    80005230:	07852783          	lw	a5,120(a0)
    80005234:	06078e63          	beqz	a5,800052b0 <acquire+0xb4>
    80005238:	fffff097          	auipc	ra,0xfffff
    8000523c:	8d0080e7          	jalr	-1840(ra) # 80003b08 <mycpu>
    80005240:	07852783          	lw	a5,120(a0)
    80005244:	0004a703          	lw	a4,0(s1)
    80005248:	0017879b          	addiw	a5,a5,1
    8000524c:	06f52c23          	sw	a5,120(a0)
    80005250:	04071063          	bnez	a4,80005290 <acquire+0x94>
    80005254:	00100713          	li	a4,1
    80005258:	00070793          	mv	a5,a4
    8000525c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005260:	0007879b          	sext.w	a5,a5
    80005264:	fe079ae3          	bnez	a5,80005258 <acquire+0x5c>
    80005268:	0ff0000f          	fence
    8000526c:	fffff097          	auipc	ra,0xfffff
    80005270:	89c080e7          	jalr	-1892(ra) # 80003b08 <mycpu>
    80005274:	01813083          	ld	ra,24(sp)
    80005278:	01013403          	ld	s0,16(sp)
    8000527c:	00a4b823          	sd	a0,16(s1)
    80005280:	00013903          	ld	s2,0(sp)
    80005284:	00813483          	ld	s1,8(sp)
    80005288:	02010113          	addi	sp,sp,32
    8000528c:	00008067          	ret
    80005290:	0104b903          	ld	s2,16(s1)
    80005294:	fffff097          	auipc	ra,0xfffff
    80005298:	874080e7          	jalr	-1932(ra) # 80003b08 <mycpu>
    8000529c:	faa91ce3          	bne	s2,a0,80005254 <acquire+0x58>
    800052a0:	00001517          	auipc	a0,0x1
    800052a4:	00850513          	addi	a0,a0,8 # 800062a8 <digits+0x20>
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	224080e7          	jalr	548(ra) # 800044cc <panic>
    800052b0:	00195913          	srli	s2,s2,0x1
    800052b4:	fffff097          	auipc	ra,0xfffff
    800052b8:	854080e7          	jalr	-1964(ra) # 80003b08 <mycpu>
    800052bc:	00197913          	andi	s2,s2,1
    800052c0:	07252e23          	sw	s2,124(a0)
    800052c4:	f75ff06f          	j	80005238 <acquire+0x3c>

00000000800052c8 <release>:
    800052c8:	fe010113          	addi	sp,sp,-32
    800052cc:	00813823          	sd	s0,16(sp)
    800052d0:	00113c23          	sd	ra,24(sp)
    800052d4:	00913423          	sd	s1,8(sp)
    800052d8:	01213023          	sd	s2,0(sp)
    800052dc:	02010413          	addi	s0,sp,32
    800052e0:	00052783          	lw	a5,0(a0)
    800052e4:	00079a63          	bnez	a5,800052f8 <release+0x30>
    800052e8:	00001517          	auipc	a0,0x1
    800052ec:	fc850513          	addi	a0,a0,-56 # 800062b0 <digits+0x28>
    800052f0:	fffff097          	auipc	ra,0xfffff
    800052f4:	1dc080e7          	jalr	476(ra) # 800044cc <panic>
    800052f8:	01053903          	ld	s2,16(a0)
    800052fc:	00050493          	mv	s1,a0
    80005300:	fffff097          	auipc	ra,0xfffff
    80005304:	808080e7          	jalr	-2040(ra) # 80003b08 <mycpu>
    80005308:	fea910e3          	bne	s2,a0,800052e8 <release+0x20>
    8000530c:	0004b823          	sd	zero,16(s1)
    80005310:	0ff0000f          	fence
    80005314:	0f50000f          	fence	iorw,ow
    80005318:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000531c:	ffffe097          	auipc	ra,0xffffe
    80005320:	7ec080e7          	jalr	2028(ra) # 80003b08 <mycpu>
    80005324:	100027f3          	csrr	a5,sstatus
    80005328:	0027f793          	andi	a5,a5,2
    8000532c:	04079a63          	bnez	a5,80005380 <release+0xb8>
    80005330:	07852783          	lw	a5,120(a0)
    80005334:	02f05e63          	blez	a5,80005370 <release+0xa8>
    80005338:	fff7871b          	addiw	a4,a5,-1
    8000533c:	06e52c23          	sw	a4,120(a0)
    80005340:	00071c63          	bnez	a4,80005358 <release+0x90>
    80005344:	07c52783          	lw	a5,124(a0)
    80005348:	00078863          	beqz	a5,80005358 <release+0x90>
    8000534c:	100027f3          	csrr	a5,sstatus
    80005350:	0027e793          	ori	a5,a5,2
    80005354:	10079073          	csrw	sstatus,a5
    80005358:	01813083          	ld	ra,24(sp)
    8000535c:	01013403          	ld	s0,16(sp)
    80005360:	00813483          	ld	s1,8(sp)
    80005364:	00013903          	ld	s2,0(sp)
    80005368:	02010113          	addi	sp,sp,32
    8000536c:	00008067          	ret
    80005370:	00001517          	auipc	a0,0x1
    80005374:	f6050513          	addi	a0,a0,-160 # 800062d0 <digits+0x48>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	154080e7          	jalr	340(ra) # 800044cc <panic>
    80005380:	00001517          	auipc	a0,0x1
    80005384:	f3850513          	addi	a0,a0,-200 # 800062b8 <digits+0x30>
    80005388:	fffff097          	auipc	ra,0xfffff
    8000538c:	144080e7          	jalr	324(ra) # 800044cc <panic>

0000000080005390 <holding>:
    80005390:	00052783          	lw	a5,0(a0)
    80005394:	00079663          	bnez	a5,800053a0 <holding+0x10>
    80005398:	00000513          	li	a0,0
    8000539c:	00008067          	ret
    800053a0:	fe010113          	addi	sp,sp,-32
    800053a4:	00813823          	sd	s0,16(sp)
    800053a8:	00913423          	sd	s1,8(sp)
    800053ac:	00113c23          	sd	ra,24(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	01053483          	ld	s1,16(a0)
    800053b8:	ffffe097          	auipc	ra,0xffffe
    800053bc:	750080e7          	jalr	1872(ra) # 80003b08 <mycpu>
    800053c0:	01813083          	ld	ra,24(sp)
    800053c4:	01013403          	ld	s0,16(sp)
    800053c8:	40a48533          	sub	a0,s1,a0
    800053cc:	00153513          	seqz	a0,a0
    800053d0:	00813483          	ld	s1,8(sp)
    800053d4:	02010113          	addi	sp,sp,32
    800053d8:	00008067          	ret

00000000800053dc <push_off>:
    800053dc:	fe010113          	addi	sp,sp,-32
    800053e0:	00813823          	sd	s0,16(sp)
    800053e4:	00113c23          	sd	ra,24(sp)
    800053e8:	00913423          	sd	s1,8(sp)
    800053ec:	02010413          	addi	s0,sp,32
    800053f0:	100024f3          	csrr	s1,sstatus
    800053f4:	100027f3          	csrr	a5,sstatus
    800053f8:	ffd7f793          	andi	a5,a5,-3
    800053fc:	10079073          	csrw	sstatus,a5
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	708080e7          	jalr	1800(ra) # 80003b08 <mycpu>
    80005408:	07852783          	lw	a5,120(a0)
    8000540c:	02078663          	beqz	a5,80005438 <push_off+0x5c>
    80005410:	ffffe097          	auipc	ra,0xffffe
    80005414:	6f8080e7          	jalr	1784(ra) # 80003b08 <mycpu>
    80005418:	07852783          	lw	a5,120(a0)
    8000541c:	01813083          	ld	ra,24(sp)
    80005420:	01013403          	ld	s0,16(sp)
    80005424:	0017879b          	addiw	a5,a5,1
    80005428:	06f52c23          	sw	a5,120(a0)
    8000542c:	00813483          	ld	s1,8(sp)
    80005430:	02010113          	addi	sp,sp,32
    80005434:	00008067          	ret
    80005438:	0014d493          	srli	s1,s1,0x1
    8000543c:	ffffe097          	auipc	ra,0xffffe
    80005440:	6cc080e7          	jalr	1740(ra) # 80003b08 <mycpu>
    80005444:	0014f493          	andi	s1,s1,1
    80005448:	06952e23          	sw	s1,124(a0)
    8000544c:	fc5ff06f          	j	80005410 <push_off+0x34>

0000000080005450 <pop_off>:
    80005450:	ff010113          	addi	sp,sp,-16
    80005454:	00813023          	sd	s0,0(sp)
    80005458:	00113423          	sd	ra,8(sp)
    8000545c:	01010413          	addi	s0,sp,16
    80005460:	ffffe097          	auipc	ra,0xffffe
    80005464:	6a8080e7          	jalr	1704(ra) # 80003b08 <mycpu>
    80005468:	100027f3          	csrr	a5,sstatus
    8000546c:	0027f793          	andi	a5,a5,2
    80005470:	04079663          	bnez	a5,800054bc <pop_off+0x6c>
    80005474:	07852783          	lw	a5,120(a0)
    80005478:	02f05a63          	blez	a5,800054ac <pop_off+0x5c>
    8000547c:	fff7871b          	addiw	a4,a5,-1
    80005480:	06e52c23          	sw	a4,120(a0)
    80005484:	00071c63          	bnez	a4,8000549c <pop_off+0x4c>
    80005488:	07c52783          	lw	a5,124(a0)
    8000548c:	00078863          	beqz	a5,8000549c <pop_off+0x4c>
    80005490:	100027f3          	csrr	a5,sstatus
    80005494:	0027e793          	ori	a5,a5,2
    80005498:	10079073          	csrw	sstatus,a5
    8000549c:	00813083          	ld	ra,8(sp)
    800054a0:	00013403          	ld	s0,0(sp)
    800054a4:	01010113          	addi	sp,sp,16
    800054a8:	00008067          	ret
    800054ac:	00001517          	auipc	a0,0x1
    800054b0:	e2450513          	addi	a0,a0,-476 # 800062d0 <digits+0x48>
    800054b4:	fffff097          	auipc	ra,0xfffff
    800054b8:	018080e7          	jalr	24(ra) # 800044cc <panic>
    800054bc:	00001517          	auipc	a0,0x1
    800054c0:	dfc50513          	addi	a0,a0,-516 # 800062b8 <digits+0x30>
    800054c4:	fffff097          	auipc	ra,0xfffff
    800054c8:	008080e7          	jalr	8(ra) # 800044cc <panic>

00000000800054cc <push_on>:
    800054cc:	fe010113          	addi	sp,sp,-32
    800054d0:	00813823          	sd	s0,16(sp)
    800054d4:	00113c23          	sd	ra,24(sp)
    800054d8:	00913423          	sd	s1,8(sp)
    800054dc:	02010413          	addi	s0,sp,32
    800054e0:	100024f3          	csrr	s1,sstatus
    800054e4:	100027f3          	csrr	a5,sstatus
    800054e8:	0027e793          	ori	a5,a5,2
    800054ec:	10079073          	csrw	sstatus,a5
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	618080e7          	jalr	1560(ra) # 80003b08 <mycpu>
    800054f8:	07852783          	lw	a5,120(a0)
    800054fc:	02078663          	beqz	a5,80005528 <push_on+0x5c>
    80005500:	ffffe097          	auipc	ra,0xffffe
    80005504:	608080e7          	jalr	1544(ra) # 80003b08 <mycpu>
    80005508:	07852783          	lw	a5,120(a0)
    8000550c:	01813083          	ld	ra,24(sp)
    80005510:	01013403          	ld	s0,16(sp)
    80005514:	0017879b          	addiw	a5,a5,1
    80005518:	06f52c23          	sw	a5,120(a0)
    8000551c:	00813483          	ld	s1,8(sp)
    80005520:	02010113          	addi	sp,sp,32
    80005524:	00008067          	ret
    80005528:	0014d493          	srli	s1,s1,0x1
    8000552c:	ffffe097          	auipc	ra,0xffffe
    80005530:	5dc080e7          	jalr	1500(ra) # 80003b08 <mycpu>
    80005534:	0014f493          	andi	s1,s1,1
    80005538:	06952e23          	sw	s1,124(a0)
    8000553c:	fc5ff06f          	j	80005500 <push_on+0x34>

0000000080005540 <pop_on>:
    80005540:	ff010113          	addi	sp,sp,-16
    80005544:	00813023          	sd	s0,0(sp)
    80005548:	00113423          	sd	ra,8(sp)
    8000554c:	01010413          	addi	s0,sp,16
    80005550:	ffffe097          	auipc	ra,0xffffe
    80005554:	5b8080e7          	jalr	1464(ra) # 80003b08 <mycpu>
    80005558:	100027f3          	csrr	a5,sstatus
    8000555c:	0027f793          	andi	a5,a5,2
    80005560:	04078463          	beqz	a5,800055a8 <pop_on+0x68>
    80005564:	07852783          	lw	a5,120(a0)
    80005568:	02f05863          	blez	a5,80005598 <pop_on+0x58>
    8000556c:	fff7879b          	addiw	a5,a5,-1
    80005570:	06f52c23          	sw	a5,120(a0)
    80005574:	07853783          	ld	a5,120(a0)
    80005578:	00079863          	bnez	a5,80005588 <pop_on+0x48>
    8000557c:	100027f3          	csrr	a5,sstatus
    80005580:	ffd7f793          	andi	a5,a5,-3
    80005584:	10079073          	csrw	sstatus,a5
    80005588:	00813083          	ld	ra,8(sp)
    8000558c:	00013403          	ld	s0,0(sp)
    80005590:	01010113          	addi	sp,sp,16
    80005594:	00008067          	ret
    80005598:	00001517          	auipc	a0,0x1
    8000559c:	d6050513          	addi	a0,a0,-672 # 800062f8 <digits+0x70>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	f2c080e7          	jalr	-212(ra) # 800044cc <panic>
    800055a8:	00001517          	auipc	a0,0x1
    800055ac:	d3050513          	addi	a0,a0,-720 # 800062d8 <digits+0x50>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	f1c080e7          	jalr	-228(ra) # 800044cc <panic>

00000000800055b8 <__memset>:
    800055b8:	ff010113          	addi	sp,sp,-16
    800055bc:	00813423          	sd	s0,8(sp)
    800055c0:	01010413          	addi	s0,sp,16
    800055c4:	1a060e63          	beqz	a2,80005780 <__memset+0x1c8>
    800055c8:	40a007b3          	neg	a5,a0
    800055cc:	0077f793          	andi	a5,a5,7
    800055d0:	00778693          	addi	a3,a5,7
    800055d4:	00b00813          	li	a6,11
    800055d8:	0ff5f593          	andi	a1,a1,255
    800055dc:	fff6071b          	addiw	a4,a2,-1
    800055e0:	1b06e663          	bltu	a3,a6,8000578c <__memset+0x1d4>
    800055e4:	1cd76463          	bltu	a4,a3,800057ac <__memset+0x1f4>
    800055e8:	1a078e63          	beqz	a5,800057a4 <__memset+0x1ec>
    800055ec:	00b50023          	sb	a1,0(a0)
    800055f0:	00100713          	li	a4,1
    800055f4:	1ae78463          	beq	a5,a4,8000579c <__memset+0x1e4>
    800055f8:	00b500a3          	sb	a1,1(a0)
    800055fc:	00200713          	li	a4,2
    80005600:	1ae78a63          	beq	a5,a4,800057b4 <__memset+0x1fc>
    80005604:	00b50123          	sb	a1,2(a0)
    80005608:	00300713          	li	a4,3
    8000560c:	18e78463          	beq	a5,a4,80005794 <__memset+0x1dc>
    80005610:	00b501a3          	sb	a1,3(a0)
    80005614:	00400713          	li	a4,4
    80005618:	1ae78263          	beq	a5,a4,800057bc <__memset+0x204>
    8000561c:	00b50223          	sb	a1,4(a0)
    80005620:	00500713          	li	a4,5
    80005624:	1ae78063          	beq	a5,a4,800057c4 <__memset+0x20c>
    80005628:	00b502a3          	sb	a1,5(a0)
    8000562c:	00700713          	li	a4,7
    80005630:	18e79e63          	bne	a5,a4,800057cc <__memset+0x214>
    80005634:	00b50323          	sb	a1,6(a0)
    80005638:	00700e93          	li	t4,7
    8000563c:	00859713          	slli	a4,a1,0x8
    80005640:	00e5e733          	or	a4,a1,a4
    80005644:	01059e13          	slli	t3,a1,0x10
    80005648:	01c76e33          	or	t3,a4,t3
    8000564c:	01859313          	slli	t1,a1,0x18
    80005650:	006e6333          	or	t1,t3,t1
    80005654:	02059893          	slli	a7,a1,0x20
    80005658:	40f60e3b          	subw	t3,a2,a5
    8000565c:	011368b3          	or	a7,t1,a7
    80005660:	02859813          	slli	a6,a1,0x28
    80005664:	0108e833          	or	a6,a7,a6
    80005668:	03059693          	slli	a3,a1,0x30
    8000566c:	003e589b          	srliw	a7,t3,0x3
    80005670:	00d866b3          	or	a3,a6,a3
    80005674:	03859713          	slli	a4,a1,0x38
    80005678:	00389813          	slli	a6,a7,0x3
    8000567c:	00f507b3          	add	a5,a0,a5
    80005680:	00e6e733          	or	a4,a3,a4
    80005684:	000e089b          	sext.w	a7,t3
    80005688:	00f806b3          	add	a3,a6,a5
    8000568c:	00e7b023          	sd	a4,0(a5)
    80005690:	00878793          	addi	a5,a5,8
    80005694:	fed79ce3          	bne	a5,a3,8000568c <__memset+0xd4>
    80005698:	ff8e7793          	andi	a5,t3,-8
    8000569c:	0007871b          	sext.w	a4,a5
    800056a0:	01d787bb          	addw	a5,a5,t4
    800056a4:	0ce88e63          	beq	a7,a4,80005780 <__memset+0x1c8>
    800056a8:	00f50733          	add	a4,a0,a5
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	0017871b          	addiw	a4,a5,1
    800056b4:	0cc77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	0027871b          	addiw	a4,a5,2
    800056c4:	0ac77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056c8:	00e50733          	add	a4,a0,a4
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	0037871b          	addiw	a4,a5,3
    800056d4:	0ac77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0047871b          	addiw	a4,a5,4
    800056e4:	08c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0057871b          	addiw	a4,a5,5
    800056f4:	08c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0067871b          	addiw	a4,a5,6
    80005704:	06c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0077871b          	addiw	a4,a5,7
    80005714:	06c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0087871b          	addiw	a4,a5,8
    80005724:	04c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	0097871b          	addiw	a4,a5,9
    80005734:	04c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	00a7871b          	addiw	a4,a5,10
    80005744:	02c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	00b7871b          	addiw	a4,a5,11
    80005754:	02c77663          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	00c7871b          	addiw	a4,a5,12
    80005764:	00c77e63          	bgeu	a4,a2,80005780 <__memset+0x1c8>
    80005768:	00e50733          	add	a4,a0,a4
    8000576c:	00b70023          	sb	a1,0(a4)
    80005770:	00d7879b          	addiw	a5,a5,13
    80005774:	00c7f663          	bgeu	a5,a2,80005780 <__memset+0x1c8>
    80005778:	00f507b3          	add	a5,a0,a5
    8000577c:	00b78023          	sb	a1,0(a5)
    80005780:	00813403          	ld	s0,8(sp)
    80005784:	01010113          	addi	sp,sp,16
    80005788:	00008067          	ret
    8000578c:	00b00693          	li	a3,11
    80005790:	e55ff06f          	j	800055e4 <__memset+0x2c>
    80005794:	00300e93          	li	t4,3
    80005798:	ea5ff06f          	j	8000563c <__memset+0x84>
    8000579c:	00100e93          	li	t4,1
    800057a0:	e9dff06f          	j	8000563c <__memset+0x84>
    800057a4:	00000e93          	li	t4,0
    800057a8:	e95ff06f          	j	8000563c <__memset+0x84>
    800057ac:	00000793          	li	a5,0
    800057b0:	ef9ff06f          	j	800056a8 <__memset+0xf0>
    800057b4:	00200e93          	li	t4,2
    800057b8:	e85ff06f          	j	8000563c <__memset+0x84>
    800057bc:	00400e93          	li	t4,4
    800057c0:	e7dff06f          	j	8000563c <__memset+0x84>
    800057c4:	00500e93          	li	t4,5
    800057c8:	e75ff06f          	j	8000563c <__memset+0x84>
    800057cc:	00600e93          	li	t4,6
    800057d0:	e6dff06f          	j	8000563c <__memset+0x84>

00000000800057d4 <__memmove>:
    800057d4:	ff010113          	addi	sp,sp,-16
    800057d8:	00813423          	sd	s0,8(sp)
    800057dc:	01010413          	addi	s0,sp,16
    800057e0:	0e060863          	beqz	a2,800058d0 <__memmove+0xfc>
    800057e4:	fff6069b          	addiw	a3,a2,-1
    800057e8:	0006881b          	sext.w	a6,a3
    800057ec:	0ea5e863          	bltu	a1,a0,800058dc <__memmove+0x108>
    800057f0:	00758713          	addi	a4,a1,7
    800057f4:	00a5e7b3          	or	a5,a1,a0
    800057f8:	40a70733          	sub	a4,a4,a0
    800057fc:	0077f793          	andi	a5,a5,7
    80005800:	00f73713          	sltiu	a4,a4,15
    80005804:	00174713          	xori	a4,a4,1
    80005808:	0017b793          	seqz	a5,a5
    8000580c:	00e7f7b3          	and	a5,a5,a4
    80005810:	10078863          	beqz	a5,80005920 <__memmove+0x14c>
    80005814:	00900793          	li	a5,9
    80005818:	1107f463          	bgeu	a5,a6,80005920 <__memmove+0x14c>
    8000581c:	0036581b          	srliw	a6,a2,0x3
    80005820:	fff8081b          	addiw	a6,a6,-1
    80005824:	02081813          	slli	a6,a6,0x20
    80005828:	01d85893          	srli	a7,a6,0x1d
    8000582c:	00858813          	addi	a6,a1,8
    80005830:	00058793          	mv	a5,a1
    80005834:	00050713          	mv	a4,a0
    80005838:	01088833          	add	a6,a7,a6
    8000583c:	0007b883          	ld	a7,0(a5)
    80005840:	00878793          	addi	a5,a5,8
    80005844:	00870713          	addi	a4,a4,8
    80005848:	ff173c23          	sd	a7,-8(a4)
    8000584c:	ff0798e3          	bne	a5,a6,8000583c <__memmove+0x68>
    80005850:	ff867713          	andi	a4,a2,-8
    80005854:	02071793          	slli	a5,a4,0x20
    80005858:	0207d793          	srli	a5,a5,0x20
    8000585c:	00f585b3          	add	a1,a1,a5
    80005860:	40e686bb          	subw	a3,a3,a4
    80005864:	00f507b3          	add	a5,a0,a5
    80005868:	06e60463          	beq	a2,a4,800058d0 <__memmove+0xfc>
    8000586c:	0005c703          	lbu	a4,0(a1)
    80005870:	00e78023          	sb	a4,0(a5)
    80005874:	04068e63          	beqz	a3,800058d0 <__memmove+0xfc>
    80005878:	0015c603          	lbu	a2,1(a1)
    8000587c:	00100713          	li	a4,1
    80005880:	00c780a3          	sb	a2,1(a5)
    80005884:	04e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    80005888:	0025c603          	lbu	a2,2(a1)
    8000588c:	00200713          	li	a4,2
    80005890:	00c78123          	sb	a2,2(a5)
    80005894:	02e68e63          	beq	a3,a4,800058d0 <__memmove+0xfc>
    80005898:	0035c603          	lbu	a2,3(a1)
    8000589c:	00300713          	li	a4,3
    800058a0:	00c781a3          	sb	a2,3(a5)
    800058a4:	02e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058a8:	0045c603          	lbu	a2,4(a1)
    800058ac:	00400713          	li	a4,4
    800058b0:	00c78223          	sb	a2,4(a5)
    800058b4:	00e68e63          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058b8:	0055c603          	lbu	a2,5(a1)
    800058bc:	00500713          	li	a4,5
    800058c0:	00c782a3          	sb	a2,5(a5)
    800058c4:	00e68663          	beq	a3,a4,800058d0 <__memmove+0xfc>
    800058c8:	0065c703          	lbu	a4,6(a1)
    800058cc:	00e78323          	sb	a4,6(a5)
    800058d0:	00813403          	ld	s0,8(sp)
    800058d4:	01010113          	addi	sp,sp,16
    800058d8:	00008067          	ret
    800058dc:	02061713          	slli	a4,a2,0x20
    800058e0:	02075713          	srli	a4,a4,0x20
    800058e4:	00e587b3          	add	a5,a1,a4
    800058e8:	f0f574e3          	bgeu	a0,a5,800057f0 <__memmove+0x1c>
    800058ec:	02069613          	slli	a2,a3,0x20
    800058f0:	02065613          	srli	a2,a2,0x20
    800058f4:	fff64613          	not	a2,a2
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00c78633          	add	a2,a5,a2
    80005900:	fff7c683          	lbu	a3,-1(a5)
    80005904:	fff78793          	addi	a5,a5,-1
    80005908:	fff70713          	addi	a4,a4,-1
    8000590c:	00d70023          	sb	a3,0(a4)
    80005910:	fec798e3          	bne	a5,a2,80005900 <__memmove+0x12c>
    80005914:	00813403          	ld	s0,8(sp)
    80005918:	01010113          	addi	sp,sp,16
    8000591c:	00008067          	ret
    80005920:	02069713          	slli	a4,a3,0x20
    80005924:	02075713          	srli	a4,a4,0x20
    80005928:	00170713          	addi	a4,a4,1
    8000592c:	00e50733          	add	a4,a0,a4
    80005930:	00050793          	mv	a5,a0
    80005934:	0005c683          	lbu	a3,0(a1)
    80005938:	00178793          	addi	a5,a5,1
    8000593c:	00158593          	addi	a1,a1,1
    80005940:	fed78fa3          	sb	a3,-1(a5)
    80005944:	fee798e3          	bne	a5,a4,80005934 <__memmove+0x160>
    80005948:	f89ff06f          	j	800058d0 <__memmove+0xfc>

000000008000594c <__putc>:
    8000594c:	fe010113          	addi	sp,sp,-32
    80005950:	00813823          	sd	s0,16(sp)
    80005954:	00113c23          	sd	ra,24(sp)
    80005958:	02010413          	addi	s0,sp,32
    8000595c:	00050793          	mv	a5,a0
    80005960:	fef40593          	addi	a1,s0,-17
    80005964:	00100613          	li	a2,1
    80005968:	00000513          	li	a0,0
    8000596c:	fef407a3          	sb	a5,-17(s0)
    80005970:	fffff097          	auipc	ra,0xfffff
    80005974:	b3c080e7          	jalr	-1220(ra) # 800044ac <console_write>
    80005978:	01813083          	ld	ra,24(sp)
    8000597c:	01013403          	ld	s0,16(sp)
    80005980:	02010113          	addi	sp,sp,32
    80005984:	00008067          	ret

0000000080005988 <__getc>:
    80005988:	fe010113          	addi	sp,sp,-32
    8000598c:	00813823          	sd	s0,16(sp)
    80005990:	00113c23          	sd	ra,24(sp)
    80005994:	02010413          	addi	s0,sp,32
    80005998:	fe840593          	addi	a1,s0,-24
    8000599c:	00100613          	li	a2,1
    800059a0:	00000513          	li	a0,0
    800059a4:	fffff097          	auipc	ra,0xfffff
    800059a8:	ae8080e7          	jalr	-1304(ra) # 8000448c <console_read>
    800059ac:	fe844503          	lbu	a0,-24(s0)
    800059b0:	01813083          	ld	ra,24(sp)
    800059b4:	01013403          	ld	s0,16(sp)
    800059b8:	02010113          	addi	sp,sp,32
    800059bc:	00008067          	ret

00000000800059c0 <console_handler>:
    800059c0:	fe010113          	addi	sp,sp,-32
    800059c4:	00813823          	sd	s0,16(sp)
    800059c8:	00113c23          	sd	ra,24(sp)
    800059cc:	00913423          	sd	s1,8(sp)
    800059d0:	02010413          	addi	s0,sp,32
    800059d4:	14202773          	csrr	a4,scause
    800059d8:	100027f3          	csrr	a5,sstatus
    800059dc:	0027f793          	andi	a5,a5,2
    800059e0:	06079e63          	bnez	a5,80005a5c <console_handler+0x9c>
    800059e4:	00074c63          	bltz	a4,800059fc <console_handler+0x3c>
    800059e8:	01813083          	ld	ra,24(sp)
    800059ec:	01013403          	ld	s0,16(sp)
    800059f0:	00813483          	ld	s1,8(sp)
    800059f4:	02010113          	addi	sp,sp,32
    800059f8:	00008067          	ret
    800059fc:	0ff77713          	andi	a4,a4,255
    80005a00:	00900793          	li	a5,9
    80005a04:	fef712e3          	bne	a4,a5,800059e8 <console_handler+0x28>
    80005a08:	ffffe097          	auipc	ra,0xffffe
    80005a0c:	6dc080e7          	jalr	1756(ra) # 800040e4 <plic_claim>
    80005a10:	00a00793          	li	a5,10
    80005a14:	00050493          	mv	s1,a0
    80005a18:	02f50c63          	beq	a0,a5,80005a50 <console_handler+0x90>
    80005a1c:	fc0506e3          	beqz	a0,800059e8 <console_handler+0x28>
    80005a20:	00050593          	mv	a1,a0
    80005a24:	00000517          	auipc	a0,0x0
    80005a28:	7dc50513          	addi	a0,a0,2012 # 80006200 <CONSOLE_STATUS+0x1f0>
    80005a2c:	fffff097          	auipc	ra,0xfffff
    80005a30:	afc080e7          	jalr	-1284(ra) # 80004528 <__printf>
    80005a34:	01013403          	ld	s0,16(sp)
    80005a38:	01813083          	ld	ra,24(sp)
    80005a3c:	00048513          	mv	a0,s1
    80005a40:	00813483          	ld	s1,8(sp)
    80005a44:	02010113          	addi	sp,sp,32
    80005a48:	ffffe317          	auipc	t1,0xffffe
    80005a4c:	6d430067          	jr	1748(t1) # 8000411c <plic_complete>
    80005a50:	fffff097          	auipc	ra,0xfffff
    80005a54:	3e0080e7          	jalr	992(ra) # 80004e30 <uartintr>
    80005a58:	fddff06f          	j	80005a34 <console_handler+0x74>
    80005a5c:	00001517          	auipc	a0,0x1
    80005a60:	8a450513          	addi	a0,a0,-1884 # 80006300 <digits+0x78>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	a68080e7          	jalr	-1432(ra) # 800044cc <panic>
	...
