
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	70013103          	ld	sp,1792(sp) # 80007700 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	061030ef          	jal	ra,8000387c <start>

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
    80001170:	2d0010ef          	jal	ra,80002440 <_ZN5Riscv20handleSupervisorTrapEv>

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
    __asm__ volatile("mv a1, %0"::"r"(id));
    800013c8:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a1, %0"::"r"(id));
    800013f4:	00050593          	mv	a1,a0
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
    80001428:	554080e7          	jalr	1364(ra) # 80005978 <__getc>
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
    80001450:	4f0080e7          	jalr	1264(ra) # 8000593c <__putc>
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
    blocked.addLast(TCB::running);
    80001480:	00006797          	auipc	a5,0x6
    80001484:	2887b783          	ld	a5,648(a5) # 80007708 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001488:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    8000148c:	01000513          	li	a0,16
    80001490:	00001097          	auipc	ra,0x1
    80001494:	bc4080e7          	jalr	-1084(ra) # 80002054 <_Znwm>
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
    800014d4:	fe010113          	addi	sp,sp,-32
    800014d8:	00113c23          	sd	ra,24(sp)
    800014dc:	00813823          	sd	s0,16(sp)
    800014e0:	00913423          	sd	s1,8(sp)
    800014e4:	02010413          	addi	s0,sp,32
    800014e8:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800014ec:	00853503          	ld	a0,8(a0)
    800014f0:	04050263          	beqz	a0,80001534 <_ZN10Ksemaphore7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    800014f4:	00853703          	ld	a4,8(a0)
    800014f8:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800014fc:	02070863          	beqz	a4,8000152c <_ZN10Ksemaphore7unblockEv+0x58>

        T *ret = elem->data;
    80001500:	00053483          	ld	s1,0(a0)
        delete elem;
    80001504:	00001097          	auipc	ra,0x1
    80001508:	ba0080e7          	jalr	-1120(ra) # 800020a4 <_ZdlPv>
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    8000150c:	00048513          	mv	a0,s1
    80001510:	00001097          	auipc	ra,0x1
    80001514:	600080e7          	jalr	1536(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
}
    80001518:	01813083          	ld	ra,24(sp)
    8000151c:	01013403          	ld	s0,16(sp)
    80001520:	00813483          	ld	s1,8(sp)
    80001524:	02010113          	addi	sp,sp,32
    80001528:	00008067          	ret
        if (!head) { tail = 0; }
    8000152c:	0007b823          	sd	zero,16(a5)
    80001530:	fd1ff06f          	j	80001500 <_ZN10Ksemaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001534:	00050493          	mv	s1,a0
    80001538:	fd5ff06f          	j	8000150c <_ZN10Ksemaphore7unblockEv+0x38>

000000008000153c <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    8000153c:	00052783          	lw	a5,0(a0)
    80001540:	fff7879b          	addiw	a5,a5,-1
    80001544:	00f52023          	sw	a5,0(a0)
    80001548:	02079713          	slli	a4,a5,0x20
    8000154c:	02075c63          	bgez	a4,80001584 <_ZN10Ksemaphore4waitEv+0x48>
int Ksemaphore::wait() {
    80001550:	ff010113          	addi	sp,sp,-16
    80001554:	00113423          	sd	ra,8(sp)
    80001558:	00813023          	sd	s0,0(sp)
    8000155c:	01010413          	addi	s0,sp,16
        block();
    80001560:	00000097          	auipc	ra,0x0
    80001564:	f04080e7          	jalr	-252(ra) # 80001464 <_ZN10Ksemaphore5blockEv>
//        TCB::yieldWithoutScheduler();
        TCB::dispatchWithoutScheduler();
    80001568:	00001097          	auipc	ra,0x1
    8000156c:	284080e7          	jalr	644(ra) # 800027ec <_ZN3TCB24dispatchWithoutSchedulerEv>
        return 0;
    80001570:	00000513          	li	a0,0
    }
    return -1;
}
    80001574:	00813083          	ld	ra,8(sp)
    80001578:	00013403          	ld	s0,0(sp)
    8000157c:	01010113          	addi	sp,sp,16
    80001580:	00008067          	ret
    return -1;
    80001584:	fff00513          	li	a0,-1
}
    80001588:	00008067          	ret

000000008000158c <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    8000158c:	00052783          	lw	a5,0(a0)
    80001590:	0017879b          	addiw	a5,a5,1
    80001594:	0007871b          	sext.w	a4,a5
    80001598:	00f52023          	sw	a5,0(a0)
    8000159c:	02e04863          	bgtz	a4,800015cc <_ZN10Ksemaphore6signalEv+0x40>
int Ksemaphore::signal() {
    800015a0:	ff010113          	addi	sp,sp,-16
    800015a4:	00113423          	sd	ra,8(sp)
    800015a8:	00813023          	sd	s0,0(sp)
    800015ac:	01010413          	addi	s0,sp,16
        unblock();
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	f24080e7          	jalr	-220(ra) # 800014d4 <_ZN10Ksemaphore7unblockEv>
        return 0;
    800015b8:	00000513          	li	a0,0
    }
    return -1;
}
    800015bc:	00813083          	ld	ra,8(sp)
    800015c0:	00013403          	ld	s0,0(sp)
    800015c4:	01010113          	addi	sp,sp,16
    800015c8:	00008067          	ret
    return -1;
    800015cc:	fff00513          	li	a0,-1
}
    800015d0:	00008067          	ret

00000000800015d4 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    800015d4:	fe010113          	addi	sp,sp,-32
    800015d8:	00113c23          	sd	ra,24(sp)
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	01213023          	sd	s2,0(sp)
    800015e8:	02010413          	addi	s0,sp,32
    800015ec:	00050493          	mv	s1,a0
    800015f0:	0200006f          	j	80001610 <_ZN10Ksemaphore14closeSemaphoreEv+0x3c>
        if (!head) { tail = 0; }
    800015f4:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    800015f8:	00053903          	ld	s2,0(a0)
        delete elem;
    800015fc:	00001097          	auipc	ra,0x1
    80001600:	aa8080e7          	jalr	-1368(ra) # 800020a4 <_ZdlPv>
    TCB* tcb;
    while(this->blocked.peekFirst()!= nullptr){
        tcb=this->blocked.removeFirst();
        Scheduler::put(tcb);
    80001604:	00090513          	mv	a0,s2
    80001608:	00001097          	auipc	ra,0x1
    8000160c:	508080e7          	jalr	1288(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001610:	0084b503          	ld	a0,8(s1)
    80001614:	00050e63          	beqz	a0,80001630 <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        return head->data;
    80001618:	00053783          	ld	a5,0(a0)
    while(this->blocked.peekFirst()!= nullptr){
    8000161c:	00078a63          	beqz	a5,80001630 <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        head = head->next;
    80001620:	00853783          	ld	a5,8(a0)
    80001624:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001628:	fc0798e3          	bnez	a5,800015f8 <_ZN10Ksemaphore14closeSemaphoreEv+0x24>
    8000162c:	fc9ff06f          	j	800015f4 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    }
    return 0;
}
    80001630:	00000513          	li	a0,0
    80001634:	01813083          	ld	ra,24(sp)
    80001638:	01013403          	ld	s0,16(sp)
    8000163c:	00813483          	ld	s1,8(sp)
    80001640:	00013903          	ld	s2,0(sp)
    80001644:	02010113          	addi	sp,sp,32
    80001648:	00008067          	ret

000000008000164c <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    8000164c:	ff010113          	addi	sp,sp,-16
    80001650:	00113423          	sd	ra,8(sp)
    80001654:	00813023          	sd	s0,0(sp)
    80001658:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	65c080e7          	jalr	1628(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001664:	00813083          	ld	ra,8(sp)
    80001668:	00013403          	ld	s0,0(sp)
    8000166c:	01010113          	addi	sp,sp,16
    80001670:	00008067          	ret

0000000080001674 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    80001674:	ff010113          	addi	sp,sp,-16
    80001678:	00113423          	sd	ra,8(sp)
    8000167c:	00813023          	sd	s0,0(sp)
    80001680:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    80001684:	01800513          	li	a0,24
    80001688:	00001097          	auipc	ra,0x1
    8000168c:	594080e7          	jalr	1428(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
}
    80001690:	00813083          	ld	ra,8(sp)
    80001694:	00013403          	ld	s0,0(sp)
    80001698:	01010113          	addi	sp,sp,16
    8000169c:	00008067          	ret

00000000800016a0 <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    800016a0:	fe010113          	addi	sp,sp,-32
    800016a4:	00113c23          	sd	ra,24(sp)
    800016a8:	00813823          	sd	s0,16(sp)
    800016ac:	00913423          	sd	s1,8(sp)
    800016b0:	02010413          	addi	s0,sp,32
    800016b4:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    800016b8:	01800513          	li	a0,24
    800016bc:	00000097          	auipc	ra,0x0
    800016c0:	fb8080e7          	jalr	-72(ra) # 80001674 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    800016c4:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016c8:	00053423          	sd	zero,8(a0)
    800016cc:	00053823          	sd	zero,16(a0)
}
    800016d0:	01813083          	ld	ra,24(sp)
    800016d4:	01013403          	ld	s0,16(sp)
    800016d8:	00813483          	ld	s1,8(sp)
    800016dc:	02010113          	addi	sp,sp,32
    800016e0:	00008067          	ret

00000000800016e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>:
    void run() override {
        producerKeyboard(td);
    }
};

void ProducerKeyboard::producerKeyboard(void *arg) {
    800016e4:	fd010113          	addi	sp,sp,-48
    800016e8:	02113423          	sd	ra,40(sp)
    800016ec:	02813023          	sd	s0,32(sp)
    800016f0:	00913c23          	sd	s1,24(sp)
    800016f4:	01213823          	sd	s2,16(sp)
    800016f8:	01313423          	sd	s3,8(sp)
    800016fc:	03010413          	addi	s0,sp,48
    80001700:	00050993          	mv	s3,a0
    80001704:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80001708:	00000913          	li	s2,0
    8000170c:	00c0006f          	j	80001718 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    80001710:	00001097          	auipc	ra,0x1
    80001714:	a7c080e7          	jalr	-1412(ra) # 8000218c <_ZN6Thread8dispatchEv>
    while ((key = getc()) != 'A') {
    80001718:	00000097          	auipc	ra,0x0
    8000171c:	cfc080e7          	jalr	-772(ra) # 80001414 <_Z4getcv>
    80001720:	0005059b          	sext.w	a1,a0
    80001724:	04100793          	li	a5,65
    80001728:	02f58a63          	beq	a1,a5,8000175c <_ZN16ProducerKeyboard16producerKeyboardEPv+0x78>
        data->buffer->put(key);
    8000172c:	0084b503          	ld	a0,8(s1)
    80001730:	00002097          	auipc	ra,0x2
    80001734:	b88080e7          	jalr	-1144(ra) # 800032b8 <_ZN9BufferCPP3putEi>
        i++;
    80001738:	0019071b          	addiw	a4,s2,1
    8000173c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001740:	0004a683          	lw	a3,0(s1)
    80001744:	0026979b          	slliw	a5,a3,0x2
    80001748:	00d787bb          	addw	a5,a5,a3
    8000174c:	0017979b          	slliw	a5,a5,0x1
    80001750:	02f767bb          	remw	a5,a4,a5
    80001754:	fc0792e3          	bnez	a5,80001718 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x34>
    80001758:	fb9ff06f          	j	80001710 <_ZN16ProducerKeyboard16producerKeyboardEPv+0x2c>
        }
    }

    threadEnd = 1;
    8000175c:	00100793          	li	a5,1
    80001760:	00006717          	auipc	a4,0x6
    80001764:	00f72023          	sw	a5,0(a4) # 80007760 <threadEnd>
    td->buffer->put('!');
    80001768:	0109b783          	ld	a5,16(s3)
    8000176c:	02100593          	li	a1,33
    80001770:	0087b503          	ld	a0,8(a5)
    80001774:	00002097          	auipc	ra,0x2
    80001778:	b44080e7          	jalr	-1212(ra) # 800032b8 <_ZN9BufferCPP3putEi>

    data->wait->signal();
    8000177c:	0104b503          	ld	a0,16(s1)
    80001780:	00001097          	auipc	ra,0x1
    80001784:	b30080e7          	jalr	-1232(ra) # 800022b0 <_ZN9Semaphore6signalEv>
}
    80001788:	02813083          	ld	ra,40(sp)
    8000178c:	02013403          	ld	s0,32(sp)
    80001790:	01813483          	ld	s1,24(sp)
    80001794:	01013903          	ld	s2,16(sp)
    80001798:	00813983          	ld	s3,8(sp)
    8000179c:	03010113          	addi	sp,sp,48
    800017a0:	00008067          	ret

00000000800017a4 <_ZN8Producer8producerEPv>:
    void run() override {
        producer(td);
    }
};

void Producer::producer(void *arg) {
    800017a4:	fe010113          	addi	sp,sp,-32
    800017a8:	00113c23          	sd	ra,24(sp)
    800017ac:	00813823          	sd	s0,16(sp)
    800017b0:	00913423          	sd	s1,8(sp)
    800017b4:	01213023          	sd	s2,0(sp)
    800017b8:	02010413          	addi	s0,sp,32
    800017bc:	00058493          	mv	s1,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800017c0:	00000913          	li	s2,0
    800017c4:	00c0006f          	j	800017d0 <_ZN8Producer8producerEPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            Thread::dispatch();
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	9c4080e7          	jalr	-1596(ra) # 8000218c <_ZN6Thread8dispatchEv>
    while (!threadEnd) {
    800017d0:	00006797          	auipc	a5,0x6
    800017d4:	f907a783          	lw	a5,-112(a5) # 80007760 <threadEnd>
    800017d8:	02079e63          	bnez	a5,80001814 <_ZN8Producer8producerEPv+0x70>
        data->buffer->put(data->id + '0');
    800017dc:	0004a583          	lw	a1,0(s1)
    800017e0:	0305859b          	addiw	a1,a1,48
    800017e4:	0084b503          	ld	a0,8(s1)
    800017e8:	00002097          	auipc	ra,0x2
    800017ec:	ad0080e7          	jalr	-1328(ra) # 800032b8 <_ZN9BufferCPP3putEi>
        i++;
    800017f0:	0019071b          	addiw	a4,s2,1
    800017f4:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800017f8:	0004a683          	lw	a3,0(s1)
    800017fc:	0026979b          	slliw	a5,a3,0x2
    80001800:	00d787bb          	addw	a5,a5,a3
    80001804:	0017979b          	slliw	a5,a5,0x1
    80001808:	02f767bb          	remw	a5,a4,a5
    8000180c:	fc0792e3          	bnez	a5,800017d0 <_ZN8Producer8producerEPv+0x2c>
    80001810:	fb9ff06f          	j	800017c8 <_ZN8Producer8producerEPv+0x24>
        }
    }

    data->wait->signal();
    80001814:	0104b503          	ld	a0,16(s1)
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	a98080e7          	jalr	-1384(ra) # 800022b0 <_ZN9Semaphore6signalEv>
}
    80001820:	01813083          	ld	ra,24(sp)
    80001824:	01013403          	ld	s0,16(sp)
    80001828:	00813483          	ld	s1,8(sp)
    8000182c:	00013903          	ld	s2,0(sp)
    80001830:	02010113          	addi	sp,sp,32
    80001834:	00008067          	ret

0000000080001838 <_ZN8Consumer8consumerEPv>:
    void run() override {
        consumer(td);
    }
};

void Consumer::consumer(void *arg) {
    80001838:	fd010113          	addi	sp,sp,-48
    8000183c:	02113423          	sd	ra,40(sp)
    80001840:	02813023          	sd	s0,32(sp)
    80001844:	00913c23          	sd	s1,24(sp)
    80001848:	01213823          	sd	s2,16(sp)
    8000184c:	01313423          	sd	s3,8(sp)
    80001850:	01413023          	sd	s4,0(sp)
    80001854:	03010413          	addi	s0,sp,48
    80001858:	00050993          	mv	s3,a0
    8000185c:	00058913          	mv	s2,a1
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001860:	00000a13          	li	s4,0
    80001864:	01c0006f          	j	80001880 <_ZN8Consumer8consumerEPv+0x48>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            Thread::dispatch();
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	924080e7          	jalr	-1756(ra) # 8000218c <_ZN6Thread8dispatchEv>
    80001870:	0500006f          	j	800018c0 <_ZN8Consumer8consumerEPv+0x88>
        }

        if (i % 80 == 0) {
            putc('\n');
    80001874:	00a00513          	li	a0,10
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	bc4080e7          	jalr	-1084(ra) # 8000143c <_Z4putcc>
    while (!threadEnd) {
    80001880:	00006797          	auipc	a5,0x6
    80001884:	ee07a783          	lw	a5,-288(a5) # 80007760 <threadEnd>
    80001888:	06079263          	bnez	a5,800018ec <_ZN8Consumer8consumerEPv+0xb4>
        int key = data->buffer->get();
    8000188c:	00893503          	ld	a0,8(s2)
    80001890:	00002097          	auipc	ra,0x2
    80001894:	ab8080e7          	jalr	-1352(ra) # 80003348 <_ZN9BufferCPP3getEv>
        i++;
    80001898:	001a049b          	addiw	s1,s4,1
    8000189c:	00048a1b          	sext.w	s4,s1
        putc(key);
    800018a0:	0ff57513          	andi	a0,a0,255
    800018a4:	00000097          	auipc	ra,0x0
    800018a8:	b98080e7          	jalr	-1128(ra) # 8000143c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800018ac:	00092703          	lw	a4,0(s2)
    800018b0:	0027179b          	slliw	a5,a4,0x2
    800018b4:	00e787bb          	addw	a5,a5,a4
    800018b8:	02f4e7bb          	remw	a5,s1,a5
    800018bc:	fa0786e3          	beqz	a5,80001868 <_ZN8Consumer8consumerEPv+0x30>
        if (i % 80 == 0) {
    800018c0:	05000793          	li	a5,80
    800018c4:	02f4e4bb          	remw	s1,s1,a5
    800018c8:	fa049ce3          	bnez	s1,80001880 <_ZN8Consumer8consumerEPv+0x48>
    800018cc:	fa9ff06f          	j	80001874 <_ZN8Consumer8consumerEPv+0x3c>
        }
    }


    while (td->buffer->getCnt() > 0) {
        int key = td->buffer->get();
    800018d0:	0109b783          	ld	a5,16(s3)
    800018d4:	0087b503          	ld	a0,8(a5)
    800018d8:	00002097          	auipc	ra,0x2
    800018dc:	a70080e7          	jalr	-1424(ra) # 80003348 <_ZN9BufferCPP3getEv>
        Console::putc(key);
    800018e0:	0ff57513          	andi	a0,a0,255
    800018e4:	00001097          	auipc	ra,0x1
    800018e8:	a60080e7          	jalr	-1440(ra) # 80002344 <_ZN7Console4putcEc>
    while (td->buffer->getCnt() > 0) {
    800018ec:	0109b783          	ld	a5,16(s3)
    800018f0:	0087b503          	ld	a0,8(a5)
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	ae0080e7          	jalr	-1312(ra) # 800033d4 <_ZN9BufferCPP6getCntEv>
    800018fc:	fca04ae3          	bgtz	a0,800018d0 <_ZN8Consumer8consumerEPv+0x98>
    }

    data->wait->signal();
    80001900:	01093503          	ld	a0,16(s2)
    80001904:	00001097          	auipc	ra,0x1
    80001908:	9ac080e7          	jalr	-1620(ra) # 800022b0 <_ZN9Semaphore6signalEv>
}
    8000190c:	02813083          	ld	ra,40(sp)
    80001910:	02013403          	ld	s0,32(sp)
    80001914:	01813483          	ld	s1,24(sp)
    80001918:	01013903          	ld	s2,16(sp)
    8000191c:	00813983          	ld	s3,8(sp)
    80001920:	00013a03          	ld	s4,0(sp)
    80001924:	03010113          	addi	sp,sp,48
    80001928:	00008067          	ret

000000008000192c <_Z29producerConsumer_CPP_Sync_APIv>:

void producerConsumer_CPP_Sync_API() {
    8000192c:	f8010113          	addi	sp,sp,-128
    80001930:	06113c23          	sd	ra,120(sp)
    80001934:	06813823          	sd	s0,112(sp)
    80001938:	06913423          	sd	s1,104(sp)
    8000193c:	07213023          	sd	s2,96(sp)
    80001940:	05313c23          	sd	s3,88(sp)
    80001944:	05413823          	sd	s4,80(sp)
    80001948:	05513423          	sd	s5,72(sp)
    8000194c:	05613023          	sd	s6,64(sp)
    80001950:	03713c23          	sd	s7,56(sp)
    80001954:	03813823          	sd	s8,48(sp)
    80001958:	03913423          	sd	s9,40(sp)
    8000195c:	08010413          	addi	s0,sp,128
    for (int i = 0; i < threadNum; i++) {
        delete threads[i];
    }
    delete consumerThread;
    delete waitForAll;
    delete buffer;
    80001960:	00010b93          	mv	s7,sp
    printString("Unesite broj proizvodjaca?\n");
    80001964:	00004517          	auipc	a0,0x4
    80001968:	6bc50513          	addi	a0,a0,1724 # 80006020 <CONSOLE_STATUS+0x10>
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	54c080e7          	jalr	1356(ra) # 80002eb8 <_Z11printStringPKc>
    getString(input, 30);
    80001974:	01e00593          	li	a1,30
    80001978:	f8040493          	addi	s1,s0,-128
    8000197c:	00048513          	mv	a0,s1
    80001980:	00001097          	auipc	ra,0x1
    80001984:	5b4080e7          	jalr	1460(ra) # 80002f34 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80001988:	00048513          	mv	a0,s1
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	674080e7          	jalr	1652(ra) # 80003000 <_Z11stringToIntPKc>
    80001994:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80001998:	00004517          	auipc	a0,0x4
    8000199c:	6a850513          	addi	a0,a0,1704 # 80006040 <CONSOLE_STATUS+0x30>
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	518080e7          	jalr	1304(ra) # 80002eb8 <_Z11printStringPKc>
    getString(input, 30);
    800019a8:	01e00593          	li	a1,30
    800019ac:	00048513          	mv	a0,s1
    800019b0:	00001097          	auipc	ra,0x1
    800019b4:	584080e7          	jalr	1412(ra) # 80002f34 <_Z9getStringPci>
    n = stringToInt(input);
    800019b8:	00048513          	mv	a0,s1
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	644080e7          	jalr	1604(ra) # 80003000 <_Z11stringToIntPKc>
    800019c4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800019c8:	00004517          	auipc	a0,0x4
    800019cc:	69850513          	addi	a0,a0,1688 # 80006060 <CONSOLE_STATUS+0x50>
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	4e8080e7          	jalr	1256(ra) # 80002eb8 <_Z11printStringPKc>
    800019d8:	00000613          	li	a2,0
    800019dc:	00a00593          	li	a1,10
    800019e0:	00090513          	mv	a0,s2
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	66c080e7          	jalr	1644(ra) # 80003050 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800019ec:	00004517          	auipc	a0,0x4
    800019f0:	68c50513          	addi	a0,a0,1676 # 80006078 <CONSOLE_STATUS+0x68>
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	4c4080e7          	jalr	1220(ra) # 80002eb8 <_Z11printStringPKc>
    800019fc:	00000613          	li	a2,0
    80001a00:	00a00593          	li	a1,10
    80001a04:	00048513          	mv	a0,s1
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	648080e7          	jalr	1608(ra) # 80003050 <_Z8printIntiii>
    printString(".\n");
    80001a10:	00004517          	auipc	a0,0x4
    80001a14:	68050513          	addi	a0,a0,1664 # 80006090 <CONSOLE_STATUS+0x80>
    80001a18:	00001097          	auipc	ra,0x1
    80001a1c:	4a0080e7          	jalr	1184(ra) # 80002eb8 <_Z11printStringPKc>
    if(threadNum > n) {
    80001a20:	0324c463          	blt	s1,s2,80001a48 <_Z29producerConsumer_CPP_Sync_APIv+0x11c>
    } else if (threadNum < 1) {
    80001a24:	03205c63          	blez	s2,80001a5c <_Z29producerConsumer_CPP_Sync_APIv+0x130>
    BufferCPP *buffer = new BufferCPP(n);
    80001a28:	03800513          	li	a0,56
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	628080e7          	jalr	1576(ra) # 80002054 <_Znwm>
    80001a34:	00050a93          	mv	s5,a0
    80001a38:	00048593          	mv	a1,s1
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	728080e7          	jalr	1832(ra) # 80003164 <_ZN9BufferCPPC1Ei>
    80001a44:	0300006f          	j	80001a74 <_Z29producerConsumer_CPP_Sync_APIv+0x148>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001a48:	00004517          	auipc	a0,0x4
    80001a4c:	65050513          	addi	a0,a0,1616 # 80006098 <CONSOLE_STATUS+0x88>
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	468080e7          	jalr	1128(ra) # 80002eb8 <_Z11printStringPKc>
        return;
    80001a58:	0140006f          	j	80001a6c <_Z29producerConsumer_CPP_Sync_APIv+0x140>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001a5c:	00004517          	auipc	a0,0x4
    80001a60:	67c50513          	addi	a0,a0,1660 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	454080e7          	jalr	1108(ra) # 80002eb8 <_Z11printStringPKc>
        return;
    80001a6c:	000b8113          	mv	sp,s7
    80001a70:	2400006f          	j	80001cb0 <_Z29producerConsumer_CPP_Sync_APIv+0x384>
    waitForAll = new Semaphore(0);
    80001a74:	01000513          	li	a0,16
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	5dc080e7          	jalr	1500(ra) # 80002054 <_Znwm>
    80001a80:	00050493          	mv	s1,a0
    80001a84:	00000593          	li	a1,0
    80001a88:	00000097          	auipc	ra,0x0
    80001a8c:	7c4080e7          	jalr	1988(ra) # 8000224c <_ZN9SemaphoreC1Ej>
    80001a90:	00006717          	auipc	a4,0x6
    80001a94:	cd070713          	addi	a4,a4,-816 # 80007760 <threadEnd>
    80001a98:	00973423          	sd	s1,8(a4)
    Thread* threads[threadNum];
    80001a9c:	00391793          	slli	a5,s2,0x3
    80001aa0:	00f78793          	addi	a5,a5,15
    80001aa4:	ff07f793          	andi	a5,a5,-16
    80001aa8:	40f10133          	sub	sp,sp,a5
    80001aac:	00010993          	mv	s3,sp
    struct thread_data data[threadNum + 1];
    80001ab0:	0019069b          	addiw	a3,s2,1
    80001ab4:	00169793          	slli	a5,a3,0x1
    80001ab8:	00d787b3          	add	a5,a5,a3
    80001abc:	00379793          	slli	a5,a5,0x3
    80001ac0:	00f78793          	addi	a5,a5,15
    80001ac4:	ff07f793          	andi	a5,a5,-16
    80001ac8:	40f10133          	sub	sp,sp,a5
    80001acc:	00010a13          	mv	s4,sp
    data[threadNum].id = threadNum;
    80001ad0:	00191493          	slli	s1,s2,0x1
    80001ad4:	012487b3          	add	a5,s1,s2
    80001ad8:	00379793          	slli	a5,a5,0x3
    80001adc:	00fa07b3          	add	a5,s4,a5
    80001ae0:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001ae4:	0157b423          	sd	s5,8(a5)
    data[threadNum].wait = waitForAll;
    80001ae8:	00873703          	ld	a4,8(a4)
    80001aec:	00e7b823          	sd	a4,16(a5)
    consumerThread = new Consumer(data+threadNum);
    80001af0:	01800513          	li	a0,24
    80001af4:	00000097          	auipc	ra,0x0
    80001af8:	560080e7          	jalr	1376(ra) # 80002054 <_Znwm>
    80001afc:	00050b13          	mv	s6,a0
    80001b00:	012484b3          	add	s1,s1,s2
    80001b04:	00349493          	slli	s1,s1,0x3
    80001b08:	009a04b3          	add	s1,s4,s1
    Consumer(thread_data* _td):Thread(), td(_td) {}
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	6e0080e7          	jalr	1760(ra) # 800021ec <_ZN6ThreadC1Ev>
    80001b14:	00006797          	auipc	a5,0x6
    80001b18:	b1c78793          	addi	a5,a5,-1252 # 80007630 <_ZTV8Consumer+0x10>
    80001b1c:	00fb3023          	sd	a5,0(s6)
    80001b20:	009b3823          	sd	s1,16(s6)
    consumerThread->start();
    80001b24:	000b0513          	mv	a0,s6
    80001b28:	00000097          	auipc	ra,0x0
    80001b2c:	634080e7          	jalr	1588(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80001b30:	00000493          	li	s1,0
    80001b34:	0380006f          	j	80001b6c <_Z29producerConsumer_CPP_Sync_APIv+0x240>
    Producer(thread_data* _td):Thread(), td(_td) {}
    80001b38:	00006797          	auipc	a5,0x6
    80001b3c:	ad078793          	addi	a5,a5,-1328 # 80007608 <_ZTV8Producer+0x10>
    80001b40:	00fcb023          	sd	a5,0(s9)
    80001b44:	018cb823          	sd	s8,16(s9)
            threads[i] = new Producer(data+i);
    80001b48:	00349793          	slli	a5,s1,0x3
    80001b4c:	00f987b3          	add	a5,s3,a5
    80001b50:	0197b023          	sd	s9,0(a5)
        threads[i]->start();
    80001b54:	00349793          	slli	a5,s1,0x3
    80001b58:	00f987b3          	add	a5,s3,a5
    80001b5c:	0007b503          	ld	a0,0(a5)
    80001b60:	00000097          	auipc	ra,0x0
    80001b64:	5fc080e7          	jalr	1532(ra) # 8000215c <_ZN6Thread5startEv>
    for (int i = 0; i < threadNum; i++) {
    80001b68:	0014849b          	addiw	s1,s1,1
    80001b6c:	0b24d063          	bge	s1,s2,80001c0c <_Z29producerConsumer_CPP_Sync_APIv+0x2e0>
        data[i].id = i;
    80001b70:	00149793          	slli	a5,s1,0x1
    80001b74:	009787b3          	add	a5,a5,s1
    80001b78:	00379793          	slli	a5,a5,0x3
    80001b7c:	00fa07b3          	add	a5,s4,a5
    80001b80:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001b84:	0157b423          	sd	s5,8(a5)
        data[i].wait = waitForAll;
    80001b88:	00006717          	auipc	a4,0x6
    80001b8c:	be073703          	ld	a4,-1056(a4) # 80007768 <waitForAll>
    80001b90:	00e7b823          	sd	a4,16(a5)
        if(i>0) {
    80001b94:	02905863          	blez	s1,80001bc4 <_Z29producerConsumer_CPP_Sync_APIv+0x298>
            threads[i] = new Producer(data+i);
    80001b98:	01800513          	li	a0,24
    80001b9c:	00000097          	auipc	ra,0x0
    80001ba0:	4b8080e7          	jalr	1208(ra) # 80002054 <_Znwm>
    80001ba4:	00050c93          	mv	s9,a0
    80001ba8:	00149c13          	slli	s8,s1,0x1
    80001bac:	009c0c33          	add	s8,s8,s1
    80001bb0:	003c1c13          	slli	s8,s8,0x3
    80001bb4:	018a0c33          	add	s8,s4,s8
    Producer(thread_data* _td):Thread(), td(_td) {}
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	634080e7          	jalr	1588(ra) # 800021ec <_ZN6ThreadC1Ev>
    80001bc0:	f79ff06f          	j	80001b38 <_Z29producerConsumer_CPP_Sync_APIv+0x20c>
            threads[i] = new ProducerKeyboard(data+i);
    80001bc4:	01800513          	li	a0,24
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	48c080e7          	jalr	1164(ra) # 80002054 <_Znwm>
    80001bd0:	00050c93          	mv	s9,a0
    80001bd4:	00149c13          	slli	s8,s1,0x1
    80001bd8:	009c0c33          	add	s8,s8,s1
    80001bdc:	003c1c13          	slli	s8,s8,0x3
    80001be0:	018a0c33          	add	s8,s4,s8
    ProducerKeyboard(thread_data* _td):Thread(), td(_td) {}
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	608080e7          	jalr	1544(ra) # 800021ec <_ZN6ThreadC1Ev>
    80001bec:	00006797          	auipc	a5,0x6
    80001bf0:	9f478793          	addi	a5,a5,-1548 # 800075e0 <_ZTV16ProducerKeyboard+0x10>
    80001bf4:	00fcb023          	sd	a5,0(s9)
    80001bf8:	018cb823          	sd	s8,16(s9)
            threads[i] = new ProducerKeyboard(data+i);
    80001bfc:	00349793          	slli	a5,s1,0x3
    80001c00:	00f987b3          	add	a5,s3,a5
    80001c04:	0197b023          	sd	s9,0(a5)
    80001c08:	f4dff06f          	j	80001b54 <_Z29producerConsumer_CPP_Sync_APIv+0x228>
    Thread::dispatch();
    80001c0c:	00000097          	auipc	ra,0x0
    80001c10:	580080e7          	jalr	1408(ra) # 8000218c <_ZN6Thread8dispatchEv>
    for (int i = 0; i <= threadNum; i++) {
    80001c14:	00000493          	li	s1,0
    80001c18:	00994e63          	blt	s2,s1,80001c34 <_Z29producerConsumer_CPP_Sync_APIv+0x308>
        waitForAll->wait();
    80001c1c:	00006517          	auipc	a0,0x6
    80001c20:	b4c53503          	ld	a0,-1204(a0) # 80007768 <waitForAll>
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	660080e7          	jalr	1632(ra) # 80002284 <_ZN9Semaphore4waitEv>
    for (int i = 0; i <= threadNum; i++) {
    80001c2c:	0014849b          	addiw	s1,s1,1
    80001c30:	fe9ff06f          	j	80001c18 <_Z29producerConsumer_CPP_Sync_APIv+0x2ec>
    for (int i = 0; i < threadNum; i++) {
    80001c34:	00000493          	li	s1,0
    80001c38:	0080006f          	j	80001c40 <_Z29producerConsumer_CPP_Sync_APIv+0x314>
    80001c3c:	0014849b          	addiw	s1,s1,1
    80001c40:	0324d263          	bge	s1,s2,80001c64 <_Z29producerConsumer_CPP_Sync_APIv+0x338>
        delete threads[i];
    80001c44:	00349793          	slli	a5,s1,0x3
    80001c48:	00f987b3          	add	a5,s3,a5
    80001c4c:	0007b503          	ld	a0,0(a5)
    80001c50:	fe0506e3          	beqz	a0,80001c3c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    80001c54:	00053783          	ld	a5,0(a0)
    80001c58:	0087b783          	ld	a5,8(a5)
    80001c5c:	000780e7          	jalr	a5
    80001c60:	fddff06f          	j	80001c3c <_Z29producerConsumer_CPP_Sync_APIv+0x310>
    delete consumerThread;
    80001c64:	000b0a63          	beqz	s6,80001c78 <_Z29producerConsumer_CPP_Sync_APIv+0x34c>
    80001c68:	000b3783          	ld	a5,0(s6)
    80001c6c:	0087b783          	ld	a5,8(a5)
    80001c70:	000b0513          	mv	a0,s6
    80001c74:	000780e7          	jalr	a5
    delete waitForAll;
    80001c78:	00006517          	auipc	a0,0x6
    80001c7c:	af053503          	ld	a0,-1296(a0) # 80007768 <waitForAll>
    80001c80:	00050863          	beqz	a0,80001c90 <_Z29producerConsumer_CPP_Sync_APIv+0x364>
    80001c84:	00053783          	ld	a5,0(a0)
    80001c88:	0087b783          	ld	a5,8(a5)
    80001c8c:	000780e7          	jalr	a5
    delete buffer;
    80001c90:	000a8e63          	beqz	s5,80001cac <_Z29producerConsumer_CPP_Sync_APIv+0x380>
    80001c94:	000a8513          	mv	a0,s5
    80001c98:	00001097          	auipc	ra,0x1
    80001c9c:	7c4080e7          	jalr	1988(ra) # 8000345c <_ZN9BufferCPPD1Ev>
    80001ca0:	000a8513          	mv	a0,s5
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	400080e7          	jalr	1024(ra) # 800020a4 <_ZdlPv>
    80001cac:	000b8113          	mv	sp,s7

}
    80001cb0:	f8040113          	addi	sp,s0,-128
    80001cb4:	07813083          	ld	ra,120(sp)
    80001cb8:	07013403          	ld	s0,112(sp)
    80001cbc:	06813483          	ld	s1,104(sp)
    80001cc0:	06013903          	ld	s2,96(sp)
    80001cc4:	05813983          	ld	s3,88(sp)
    80001cc8:	05013a03          	ld	s4,80(sp)
    80001ccc:	04813a83          	ld	s5,72(sp)
    80001cd0:	04013b03          	ld	s6,64(sp)
    80001cd4:	03813b83          	ld	s7,56(sp)
    80001cd8:	03013c03          	ld	s8,48(sp)
    80001cdc:	02813c83          	ld	s9,40(sp)
    80001ce0:	08010113          	addi	sp,sp,128
    80001ce4:	00008067          	ret
    80001ce8:	00050493          	mv	s1,a0
    BufferCPP *buffer = new BufferCPP(n);
    80001cec:	000a8513          	mv	a0,s5
    80001cf0:	00000097          	auipc	ra,0x0
    80001cf4:	3b4080e7          	jalr	948(ra) # 800020a4 <_ZdlPv>
    80001cf8:	00048513          	mv	a0,s1
    80001cfc:	00007097          	auipc	ra,0x7
    80001d00:	b7c080e7          	jalr	-1156(ra) # 80008878 <_Unwind_Resume>
    80001d04:	00050913          	mv	s2,a0
    waitForAll = new Semaphore(0);
    80001d08:	00048513          	mv	a0,s1
    80001d0c:	00000097          	auipc	ra,0x0
    80001d10:	398080e7          	jalr	920(ra) # 800020a4 <_ZdlPv>
    80001d14:	00090513          	mv	a0,s2
    80001d18:	00007097          	auipc	ra,0x7
    80001d1c:	b60080e7          	jalr	-1184(ra) # 80008878 <_Unwind_Resume>
    80001d20:	00050493          	mv	s1,a0
    consumerThread = new Consumer(data+threadNum);
    80001d24:	000b0513          	mv	a0,s6
    80001d28:	00000097          	auipc	ra,0x0
    80001d2c:	37c080e7          	jalr	892(ra) # 800020a4 <_ZdlPv>
    80001d30:	00048513          	mv	a0,s1
    80001d34:	00007097          	auipc	ra,0x7
    80001d38:	b44080e7          	jalr	-1212(ra) # 80008878 <_Unwind_Resume>
    80001d3c:	00050493          	mv	s1,a0
            threads[i] = new Producer(data+i);
    80001d40:	000c8513          	mv	a0,s9
    80001d44:	00000097          	auipc	ra,0x0
    80001d48:	360080e7          	jalr	864(ra) # 800020a4 <_ZdlPv>
    80001d4c:	00048513          	mv	a0,s1
    80001d50:	00007097          	auipc	ra,0x7
    80001d54:	b28080e7          	jalr	-1240(ra) # 80008878 <_Unwind_Resume>
    80001d58:	00050493          	mv	s1,a0
            threads[i] = new ProducerKeyboard(data+i);
    80001d5c:	000c8513          	mv	a0,s9
    80001d60:	00000097          	auipc	ra,0x0
    80001d64:	344080e7          	jalr	836(ra) # 800020a4 <_ZdlPv>
    80001d68:	00048513          	mv	a0,s1
    80001d6c:	00007097          	auipc	ra,0x7
    80001d70:	b0c080e7          	jalr	-1268(ra) # 80008878 <_Unwind_Resume>

0000000080001d74 <_Z8userMainv>:
#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001d74:	ff010113          	addi	sp,sp,-16
    80001d78:	00113423          	sd	ra,8(sp)
    80001d7c:	00813023          	sd	s0,0(sp)
    80001d80:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

//    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
    80001d84:	00000097          	auipc	ra,0x0
    80001d88:	ba8080e7          	jalr	-1112(ra) # 8000192c <_Z29producerConsumer_CPP_Sync_APIv>

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001d8c:	00813083          	ld	ra,8(sp)
    80001d90:	00013403          	ld	s0,0(sp)
    80001d94:	01010113          	addi	sp,sp,16
    80001d98:	00008067          	ret

0000000080001d9c <_ZN8ConsumerD1Ev>:
class Consumer:public Thread {
    80001d9c:	ff010113          	addi	sp,sp,-16
    80001da0:	00113423          	sd	ra,8(sp)
    80001da4:	00813023          	sd	s0,0(sp)
    80001da8:	01010413          	addi	s0,sp,16
    80001dac:	00006797          	auipc	a5,0x6
    80001db0:	88478793          	addi	a5,a5,-1916 # 80007630 <_ZTV8Consumer+0x10>
    80001db4:	00f53023          	sd	a5,0(a0)
    80001db8:	00000097          	auipc	ra,0x0
    80001dbc:	24c080e7          	jalr	588(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001dc0:	00813083          	ld	ra,8(sp)
    80001dc4:	00013403          	ld	s0,0(sp)
    80001dc8:	01010113          	addi	sp,sp,16
    80001dcc:	00008067          	ret

0000000080001dd0 <_ZN8ConsumerD0Ev>:
    80001dd0:	fe010113          	addi	sp,sp,-32
    80001dd4:	00113c23          	sd	ra,24(sp)
    80001dd8:	00813823          	sd	s0,16(sp)
    80001ddc:	00913423          	sd	s1,8(sp)
    80001de0:	02010413          	addi	s0,sp,32
    80001de4:	00050493          	mv	s1,a0
    80001de8:	00006797          	auipc	a5,0x6
    80001dec:	84878793          	addi	a5,a5,-1976 # 80007630 <_ZTV8Consumer+0x10>
    80001df0:	00f53023          	sd	a5,0(a0)
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	210080e7          	jalr	528(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001dfc:	00048513          	mv	a0,s1
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	2a4080e7          	jalr	676(ra) # 800020a4 <_ZdlPv>
    80001e08:	01813083          	ld	ra,24(sp)
    80001e0c:	01013403          	ld	s0,16(sp)
    80001e10:	00813483          	ld	s1,8(sp)
    80001e14:	02010113          	addi	sp,sp,32
    80001e18:	00008067          	ret

0000000080001e1c <_ZN8ProducerD1Ev>:
class Producer:public Thread {
    80001e1c:	ff010113          	addi	sp,sp,-16
    80001e20:	00113423          	sd	ra,8(sp)
    80001e24:	00813023          	sd	s0,0(sp)
    80001e28:	01010413          	addi	s0,sp,16
    80001e2c:	00005797          	auipc	a5,0x5
    80001e30:	7dc78793          	addi	a5,a5,2012 # 80007608 <_ZTV8Producer+0x10>
    80001e34:	00f53023          	sd	a5,0(a0)
    80001e38:	00000097          	auipc	ra,0x0
    80001e3c:	1cc080e7          	jalr	460(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN8ProducerD0Ev>:
    80001e50:	fe010113          	addi	sp,sp,-32
    80001e54:	00113c23          	sd	ra,24(sp)
    80001e58:	00813823          	sd	s0,16(sp)
    80001e5c:	00913423          	sd	s1,8(sp)
    80001e60:	02010413          	addi	s0,sp,32
    80001e64:	00050493          	mv	s1,a0
    80001e68:	00005797          	auipc	a5,0x5
    80001e6c:	7a078793          	addi	a5,a5,1952 # 80007608 <_ZTV8Producer+0x10>
    80001e70:	00f53023          	sd	a5,0(a0)
    80001e74:	00000097          	auipc	ra,0x0
    80001e78:	190080e7          	jalr	400(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001e7c:	00048513          	mv	a0,s1
    80001e80:	00000097          	auipc	ra,0x0
    80001e84:	224080e7          	jalr	548(ra) # 800020a4 <_ZdlPv>
    80001e88:	01813083          	ld	ra,24(sp)
    80001e8c:	01013403          	ld	s0,16(sp)
    80001e90:	00813483          	ld	s1,8(sp)
    80001e94:	02010113          	addi	sp,sp,32
    80001e98:	00008067          	ret

0000000080001e9c <_ZN16ProducerKeyboardD1Ev>:
class ProducerKeyboard:public Thread {
    80001e9c:	ff010113          	addi	sp,sp,-16
    80001ea0:	00113423          	sd	ra,8(sp)
    80001ea4:	00813023          	sd	s0,0(sp)
    80001ea8:	01010413          	addi	s0,sp,16
    80001eac:	00005797          	auipc	a5,0x5
    80001eb0:	73478793          	addi	a5,a5,1844 # 800075e0 <_ZTV16ProducerKeyboard+0x10>
    80001eb4:	00f53023          	sd	a5,0(a0)
    80001eb8:	00000097          	auipc	ra,0x0
    80001ebc:	14c080e7          	jalr	332(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZN16ProducerKeyboardD0Ev>:
    80001ed0:	fe010113          	addi	sp,sp,-32
    80001ed4:	00113c23          	sd	ra,24(sp)
    80001ed8:	00813823          	sd	s0,16(sp)
    80001edc:	00913423          	sd	s1,8(sp)
    80001ee0:	02010413          	addi	s0,sp,32
    80001ee4:	00050493          	mv	s1,a0
    80001ee8:	00005797          	auipc	a5,0x5
    80001eec:	6f878793          	addi	a5,a5,1784 # 800075e0 <_ZTV16ProducerKeyboard+0x10>
    80001ef0:	00f53023          	sd	a5,0(a0)
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	110080e7          	jalr	272(ra) # 80002004 <_ZN6ThreadD1Ev>
    80001efc:	00048513          	mv	a0,s1
    80001f00:	00000097          	auipc	ra,0x0
    80001f04:	1a4080e7          	jalr	420(ra) # 800020a4 <_ZdlPv>
    80001f08:	01813083          	ld	ra,24(sp)
    80001f0c:	01013403          	ld	s0,16(sp)
    80001f10:	00813483          	ld	s1,8(sp)
    80001f14:	02010113          	addi	sp,sp,32
    80001f18:	00008067          	ret

0000000080001f1c <_ZN16ProducerKeyboard3runEv>:
    void run() override {
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00113423          	sd	ra,8(sp)
    80001f24:	00813023          	sd	s0,0(sp)
    80001f28:	01010413          	addi	s0,sp,16
        producerKeyboard(td);
    80001f2c:	01053583          	ld	a1,16(a0)
    80001f30:	fffff097          	auipc	ra,0xfffff
    80001f34:	7b4080e7          	jalr	1972(ra) # 800016e4 <_ZN16ProducerKeyboard16producerKeyboardEPv>
    }
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZN8Producer3runEv>:
    void run() override {
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
        producer(td);
    80001f58:	01053583          	ld	a1,16(a0)
    80001f5c:	00000097          	auipc	ra,0x0
    80001f60:	848080e7          	jalr	-1976(ra) # 800017a4 <_ZN8Producer8producerEPv>
    }
    80001f64:	00813083          	ld	ra,8(sp)
    80001f68:	00013403          	ld	s0,0(sp)
    80001f6c:	01010113          	addi	sp,sp,16
    80001f70:	00008067          	ret

0000000080001f74 <_ZN8Consumer3runEv>:
    void run() override {
    80001f74:	ff010113          	addi	sp,sp,-16
    80001f78:	00113423          	sd	ra,8(sp)
    80001f7c:	00813023          	sd	s0,0(sp)
    80001f80:	01010413          	addi	s0,sp,16
        consumer(td);
    80001f84:	01053583          	ld	a1,16(a0)
    80001f88:	00000097          	auipc	ra,0x0
    80001f8c:	8b0080e7          	jalr	-1872(ra) # 80001838 <_ZN8Consumer8consumerEPv>
    }
    80001f90:	00813083          	ld	ra,8(sp)
    80001f94:	00013403          	ld	s0,0(sp)
    80001f98:	01010113          	addi	sp,sp,16
    80001f9c:	00008067          	ret

0000000080001fa0 <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

int main() {
    80001fa0:	ff010113          	addi	sp,sp,-16
    80001fa4:	00113423          	sd	ra,8(sp)
    80001fa8:	00813023          	sd	s0,0(sp)
    80001fac:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMemoryAllocator();
    80001fb0:	00001097          	auipc	ra,0x1
    80001fb4:	e98080e7          	jalr	-360(ra) # 80002e48 <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001fb8:	00000593          	li	a1,0
    80001fbc:	00000513          	li	a0,0
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	910080e7          	jalr	-1776(ra) # 800028d0 <_ZN3TCB12createThreadEPFvPvES0_>
    80001fc8:	00005797          	auipc	a5,0x5
    80001fcc:	7407b783          	ld	a5,1856(a5) # 80007708 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001fd0:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001fd4:	00005797          	auipc	a5,0x5
    80001fd8:	71c7b783          	ld	a5,1820(a5) # 800076f0 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001fdc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001fe0:	00200793          	li	a5,2
    80001fe4:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001fe8:	00000097          	auipc	ra,0x0
    80001fec:	d8c080e7          	jalr	-628(ra) # 80001d74 <_Z8userMainv>

    return 0;

}
    80001ff0:	00000513          	li	a0,0
    80001ff4:	00813083          	ld	ra,8(sp)
    80001ff8:	00013403          	ld	s0,0(sp)
    80001ffc:	01010113          	addi	sp,sp,16
    80002000:	00008067          	ret

0000000080002004 <_ZN6ThreadD1Ev>:


void* operator new (size_t n);
void operator delete (void* p);

class Thread {
    80002004:	ff010113          	addi	sp,sp,-16
    80002008:	00813423          	sd	s0,8(sp)
    8000200c:	01010413          	addi	s0,sp,16
    80002010:	00813403          	ld	s0,8(sp)
    80002014:	01010113          	addi	sp,sp,16
    80002018:	00008067          	ret

000000008000201c <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    8000201c:	ff010113          	addi	sp,sp,-16
    80002020:	00113423          	sd	ra,8(sp)
    80002024:	00813023          	sd	s0,0(sp)
    80002028:	01010413          	addi	s0,sp,16
    8000202c:	00005797          	auipc	a5,0x5
    80002030:	68c78793          	addi	a5,a5,1676 # 800076b8 <_ZTV9Semaphore+0x10>
    80002034:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002038:	00853503          	ld	a0,8(a0)
    8000203c:	fffff097          	auipc	ra,0xfffff
    80002040:	354080e7          	jalr	852(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80002044:	00813083          	ld	ra,8(sp)
    80002048:	00013403          	ld	s0,0(sp)
    8000204c:	01010113          	addi	sp,sp,16
    80002050:	00008067          	ret

0000000080002054 <_Znwm>:
{
    80002054:	ff010113          	addi	sp,sp,-16
    80002058:	00113423          	sd	ra,8(sp)
    8000205c:	00813023          	sd	s0,0(sp)
    80002060:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002064:	00001097          	auipc	ra,0x1
    80002068:	bb8080e7          	jalr	-1096(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
}
    8000206c:	00813083          	ld	ra,8(sp)
    80002070:	00013403          	ld	s0,0(sp)
    80002074:	01010113          	addi	sp,sp,16
    80002078:	00008067          	ret

000000008000207c <_Znam>:
{
    8000207c:	ff010113          	addi	sp,sp,-16
    80002080:	00113423          	sd	ra,8(sp)
    80002084:	00813023          	sd	s0,0(sp)
    80002088:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    8000208c:	00001097          	auipc	ra,0x1
    80002090:	b90080e7          	jalr	-1136(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
}
    80002094:	00813083          	ld	ra,8(sp)
    80002098:	00013403          	ld	s0,0(sp)
    8000209c:	01010113          	addi	sp,sp,16
    800020a0:	00008067          	ret

00000000800020a4 <_ZdlPv>:
{
    800020a4:	ff010113          	addi	sp,sp,-16
    800020a8:	00113423          	sd	ra,8(sp)
    800020ac:	00813023          	sd	s0,0(sp)
    800020b0:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800020b4:	00001097          	auipc	ra,0x1
    800020b8:	c04080e7          	jalr	-1020(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
}
    800020bc:	00813083          	ld	ra,8(sp)
    800020c0:	00013403          	ld	s0,0(sp)
    800020c4:	01010113          	addi	sp,sp,16
    800020c8:	00008067          	ret

00000000800020cc <_ZN6ThreadD0Ev>:
    800020cc:	ff010113          	addi	sp,sp,-16
    800020d0:	00113423          	sd	ra,8(sp)
    800020d4:	00813023          	sd	s0,0(sp)
    800020d8:	01010413          	addi	s0,sp,16
    800020dc:	00000097          	auipc	ra,0x0
    800020e0:	fc8080e7          	jalr	-56(ra) # 800020a4 <_ZdlPv>
    800020e4:	00813083          	ld	ra,8(sp)
    800020e8:	00013403          	ld	s0,0(sp)
    800020ec:	01010113          	addi	sp,sp,16
    800020f0:	00008067          	ret

00000000800020f4 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800020f4:	fe010113          	addi	sp,sp,-32
    800020f8:	00113c23          	sd	ra,24(sp)
    800020fc:	00813823          	sd	s0,16(sp)
    80002100:	00913423          	sd	s1,8(sp)
    80002104:	02010413          	addi	s0,sp,32
    80002108:	00050493          	mv	s1,a0
}
    8000210c:	00000097          	auipc	ra,0x0
    80002110:	f10080e7          	jalr	-240(ra) # 8000201c <_ZN9SemaphoreD1Ev>
    80002114:	00048513          	mv	a0,s1
    80002118:	00000097          	auipc	ra,0x0
    8000211c:	f8c080e7          	jalr	-116(ra) # 800020a4 <_ZdlPv>
    80002120:	01813083          	ld	ra,24(sp)
    80002124:	01013403          	ld	s0,16(sp)
    80002128:	00813483          	ld	s1,8(sp)
    8000212c:	02010113          	addi	sp,sp,32
    80002130:	00008067          	ret

0000000080002134 <_ZdaPv>:
{
    80002134:	ff010113          	addi	sp,sp,-16
    80002138:	00113423          	sd	ra,8(sp)
    8000213c:	00813023          	sd	s0,0(sp)
    80002140:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002144:	00001097          	auipc	ra,0x1
    80002148:	b74080e7          	jalr	-1164(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
}
    8000214c:	00813083          	ld	ra,8(sp)
    80002150:	00013403          	ld	s0,0(sp)
    80002154:	01010113          	addi	sp,sp,16
    80002158:	00008067          	ret

000000008000215c <_ZN6Thread5startEv>:
int Thread::start (){
    8000215c:	ff010113          	addi	sp,sp,-16
    80002160:	00113423          	sd	ra,8(sp)
    80002164:	00813023          	sd	s0,0(sp)
    80002168:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    8000216c:	00850513          	addi	a0,a0,8
    80002170:	fffff097          	auipc	ra,0xfffff
    80002174:	194080e7          	jalr	404(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    80002178:	00000513          	li	a0,0
    8000217c:	00813083          	ld	ra,8(sp)
    80002180:	00013403          	ld	s0,0(sp)
    80002184:	01010113          	addi	sp,sp,16
    80002188:	00008067          	ret

000000008000218c <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    8000218c:	ff010113          	addi	sp,sp,-16
    80002190:	00113423          	sd	ra,8(sp)
    80002194:	00813023          	sd	s0,0(sp)
    80002198:	01010413          	addi	s0,sp,16
    thread_dispatch();
    8000219c:	fffff097          	auipc	ra,0xfffff
    800021a0:	148080e7          	jalr	328(ra) # 800012e4 <_Z15thread_dispatchv>
}
    800021a4:	00813083          	ld	ra,8(sp)
    800021a8:	00013403          	ld	s0,0(sp)
    800021ac:	01010113          	addi	sp,sp,16
    800021b0:	00008067          	ret

00000000800021b4 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    800021b4:	ff010113          	addi	sp,sp,-16
    800021b8:	00113423          	sd	ra,8(sp)
    800021bc:	00813023          	sd	s0,0(sp)
    800021c0:	01010413          	addi	s0,sp,16
    800021c4:	00005797          	auipc	a5,0x5
    800021c8:	4cc78793          	addi	a5,a5,1228 # 80007690 <_ZTV6Thread+0x10>
    800021cc:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    800021d0:	00850513          	addi	a0,a0,8
    800021d4:	fffff097          	auipc	ra,0xfffff
    800021d8:	158080e7          	jalr	344(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    800021dc:	00813083          	ld	ra,8(sp)
    800021e0:	00013403          	ld	s0,0(sp)
    800021e4:	01010113          	addi	sp,sp,16
    800021e8:	00008067          	ret

00000000800021ec <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800021ec:	ff010113          	addi	sp,sp,-16
    800021f0:	00113423          	sd	ra,8(sp)
    800021f4:	00813023          	sd	s0,0(sp)
    800021f8:	01010413          	addi	s0,sp,16
    800021fc:	00005797          	auipc	a5,0x5
    80002200:	49478793          	addi	a5,a5,1172 # 80007690 <_ZTV6Thread+0x10>
    80002204:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    80002208:	00050613          	mv	a2,a0
    8000220c:	00000597          	auipc	a1,0x0
    80002210:	17858593          	addi	a1,a1,376 # 80002384 <_ZN6Thread9myWrapperEPv>
    80002214:	00850513          	addi	a0,a0,8
    80002218:	fffff097          	auipc	ra,0xfffff
    8000221c:	114080e7          	jalr	276(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80002220:	00813083          	ld	ra,8(sp)
    80002224:	00013403          	ld	s0,0(sp)
    80002228:	01010113          	addi	sp,sp,16
    8000222c:	00008067          	ret

0000000080002230 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80002230:	ff010113          	addi	sp,sp,-16
    80002234:	00813423          	sd	s0,8(sp)
    80002238:	01010413          	addi	s0,sp,16
}
    8000223c:	00000513          	li	a0,0
    80002240:	00813403          	ld	s0,8(sp)
    80002244:	01010113          	addi	sp,sp,16
    80002248:	00008067          	ret

000000008000224c <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    8000224c:	ff010113          	addi	sp,sp,-16
    80002250:	00113423          	sd	ra,8(sp)
    80002254:	00813023          	sd	s0,0(sp)
    80002258:	01010413          	addi	s0,sp,16
    8000225c:	00005797          	auipc	a5,0x5
    80002260:	45c78793          	addi	a5,a5,1116 # 800076b8 <_ZTV9Semaphore+0x10>
    80002264:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80002268:	00850513          	addi	a0,a0,8
    8000226c:	fffff097          	auipc	ra,0xfffff
    80002270:	0f4080e7          	jalr	244(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80002274:	00813083          	ld	ra,8(sp)
    80002278:	00013403          	ld	s0,0(sp)
    8000227c:	01010113          	addi	sp,sp,16
    80002280:	00008067          	ret

0000000080002284 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002284:	ff010113          	addi	sp,sp,-16
    80002288:	00113423          	sd	ra,8(sp)
    8000228c:	00813023          	sd	s0,0(sp)
    80002290:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002294:	00853503          	ld	a0,8(a0)
    80002298:	fffff097          	auipc	ra,0xfffff
    8000229c:	124080e7          	jalr	292(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    800022a0:	00813083          	ld	ra,8(sp)
    800022a4:	00013403          	ld	s0,0(sp)
    800022a8:	01010113          	addi	sp,sp,16
    800022ac:	00008067          	ret

00000000800022b0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800022b0:	ff010113          	addi	sp,sp,-16
    800022b4:	00113423          	sd	ra,8(sp)
    800022b8:	00813023          	sd	s0,0(sp)
    800022bc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800022c0:	00853503          	ld	a0,8(a0)
    800022c4:	fffff097          	auipc	ra,0xfffff
    800022c8:	124080e7          	jalr	292(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    800022cc:	00813083          	ld	ra,8(sp)
    800022d0:	00013403          	ld	s0,0(sp)
    800022d4:	01010113          	addi	sp,sp,16
    800022d8:	00008067          	ret

00000000800022dc <_ZN14PeriodicThreadC1Em>:



PeriodicThread::PeriodicThread(time_t period) {
    800022dc:	fe010113          	addi	sp,sp,-32
    800022e0:	00113c23          	sd	ra,24(sp)
    800022e4:	00813823          	sd	s0,16(sp)
    800022e8:	00913423          	sd	s1,8(sp)
    800022ec:	02010413          	addi	s0,sp,32
    800022f0:	00050493          	mv	s1,a0
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	ef8080e7          	jalr	-264(ra) # 800021ec <_ZN6ThreadC1Ev>
    800022fc:	00005797          	auipc	a5,0x5
    80002300:	36478793          	addi	a5,a5,868 # 80007660 <_ZTV14PeriodicThread+0x10>
    80002304:	00f4b023          	sd	a5,0(s1)

}
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret

000000008000231c <_ZN7Console4getcEv>:

char Console::getc() {
    8000231c:	ff010113          	addi	sp,sp,-16
    80002320:	00113423          	sd	ra,8(sp)
    80002324:	00813023          	sd	s0,0(sp)
    80002328:	01010413          	addi	s0,sp,16
    return __getc();
    8000232c:	00003097          	auipc	ra,0x3
    80002330:	64c080e7          	jalr	1612(ra) # 80005978 <__getc>
}
    80002334:	00813083          	ld	ra,8(sp)
    80002338:	00013403          	ld	s0,0(sp)
    8000233c:	01010113          	addi	sp,sp,16
    80002340:	00008067          	ret

0000000080002344 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002344:	ff010113          	addi	sp,sp,-16
    80002348:	00113423          	sd	ra,8(sp)
    8000234c:	00813023          	sd	s0,0(sp)
    80002350:	01010413          	addi	s0,sp,16
    __putc(c);
    80002354:	00003097          	auipc	ra,0x3
    80002358:	5e8080e7          	jalr	1512(ra) # 8000593c <__putc>
}
    8000235c:	00813083          	ld	ra,8(sp)
    80002360:	00013403          	ld	s0,0(sp)
    80002364:	01010113          	addi	sp,sp,16
    80002368:	00008067          	ret

000000008000236c <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    8000236c:	ff010113          	addi	sp,sp,-16
    80002370:	00813423          	sd	s0,8(sp)
    80002374:	01010413          	addi	s0,sp,16
    80002378:	00813403          	ld	s0,8(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80002384:	ff010113          	addi	sp,sp,-16
    80002388:	00113423          	sd	ra,8(sp)
    8000238c:	00813023          	sd	s0,0(sp)
    80002390:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    80002394:	00053783          	ld	a5,0(a0)
    80002398:	0107b783          	ld	a5,16(a5)
    8000239c:	000780e7          	jalr	a5
    }
    800023a0:	00813083          	ld	ra,8(sp)
    800023a4:	00013403          	ld	s0,0(sp)
    800023a8:	01010113          	addi	sp,sp,16
    800023ac:	00008067          	ret

00000000800023b0 <_ZN14PeriodicThread18periodicActivationEv>:


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800023b0:	ff010113          	addi	sp,sp,-16
    800023b4:	00813423          	sd	s0,8(sp)
    800023b8:	01010413          	addi	s0,sp,16
    800023bc:	00813403          	ld	s0,8(sp)
    800023c0:	01010113          	addi	sp,sp,16
    800023c4:	00008067          	ret

00000000800023c8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800023c8:	ff010113          	addi	sp,sp,-16
    800023cc:	00813423          	sd	s0,8(sp)
    800023d0:	01010413          	addi	s0,sp,16
    800023d4:	00005797          	auipc	a5,0x5
    800023d8:	28c78793          	addi	a5,a5,652 # 80007660 <_ZTV14PeriodicThread+0x10>
    800023dc:	00f53023          	sd	a5,0(a0)
    800023e0:	00813403          	ld	s0,8(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret

00000000800023ec <_ZN14PeriodicThreadD0Ev>:
    800023ec:	ff010113          	addi	sp,sp,-16
    800023f0:	00113423          	sd	ra,8(sp)
    800023f4:	00813023          	sd	s0,0(sp)
    800023f8:	01010413          	addi	s0,sp,16
    800023fc:	00005797          	auipc	a5,0x5
    80002400:	26478793          	addi	a5,a5,612 # 80007660 <_ZTV14PeriodicThread+0x10>
    80002404:	00f53023          	sd	a5,0(a0)
    80002408:	00000097          	auipc	ra,0x0
    8000240c:	c9c080e7          	jalr	-868(ra) # 800020a4 <_ZdlPv>
    80002410:	00813083          	ld	ra,8(sp)
    80002414:	00013403          	ld	s0,0(sp)
    80002418:	01010113          	addi	sp,sp,16
    8000241c:	00008067          	ret

0000000080002420 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80002420:	ff010113          	addi	sp,sp,-16
    80002424:	00813423          	sd	s0,8(sp)
    80002428:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000242c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002430:	10200073          	sret
}
    80002434:	00813403          	ld	s0,8(sp)
    80002438:	01010113          	addi	sp,sp,16
    8000243c:	00008067          	ret

0000000080002440 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002440:	fb010113          	addi	sp,sp,-80
    80002444:	04113423          	sd	ra,72(sp)
    80002448:	04813023          	sd	s0,64(sp)
    8000244c:	02913c23          	sd	s1,56(sp)
    80002450:	03213823          	sd	s2,48(sp)
    80002454:	03313423          	sd	s3,40(sp)
    80002458:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000245c:	142027f3          	csrr	a5,scause
    80002460:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002464:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002468:	ff870693          	addi	a3,a4,-8
    8000246c:	00100793          	li	a5,1
    80002470:	02d7f863          	bgeu	a5,a3,800024a0 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80002474:	fff00793          	li	a5,-1
    80002478:	03f79793          	slli	a5,a5,0x3f
    8000247c:	00178793          	addi	a5,a5,1
    80002480:	20f70063          	beq	a4,a5,80002680 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80002484:	fff00793          	li	a5,-1
    80002488:	03f79793          	slli	a5,a5,0x3f
    8000248c:	00978793          	addi	a5,a5,9
    80002490:	0af71e63          	bne	a4,a5,8000254c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80002494:	00003097          	auipc	ra,0x3
    80002498:	51c080e7          	jalr	1308(ra) # 800059b0 <console_handler>
    } else
    {
        // unexpected trap cause
    }
    8000249c:	0b00006f          	j	8000254c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800024a0:	141027f3          	csrr	a5,sepc
    800024a4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800024a8:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800024ac:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800024b0:	100027f3          	csrr	a5,sstatus
    800024b4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800024b8:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800024bc:	00050793          	mv	a5,a0
    800024c0:	faf43c23          	sd	a5,-72(s0)
    return a0;
    800024c4:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    800024c8:	00100713          	li	a4,1
    800024cc:	06e78463          	beq	a5,a4,80002534 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        else if (a0 == 0x0000000000000002UL){
    800024d0:	00200713          	li	a4,2
    800024d4:	08e78a63          	beq	a5,a4,80002568 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        else if (a0 == 0x0000000000000011UL){
    800024d8:	01100713          	li	a4,17
    800024dc:	0ae78063          	beq	a5,a4,8000257c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        else if (a0 == 0x0000000000000012UL){
    800024e0:	01200713          	li	a4,18
    800024e4:	0ce78463          	beq	a5,a4,800025ac <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
        else if (a0 == 0x0000000000000013UL){
    800024e8:	01300713          	li	a4,19
    800024ec:	0ce78863          	beq	a5,a4,800025bc <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        else if (a0 == 0x0000000000000014UL){
    800024f0:	01400713          	li	a4,20
    800024f4:	0ee78063          	beq	a5,a4,800025d4 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if (a0 == 0x0000000000000015UL){
    800024f8:	01500713          	li	a4,21
    800024fc:	0ee78663          	beq	a5,a4,800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
        else if (a0 == 0x0000000000000021UL) {
    80002500:	02100713          	li	a4,33
    80002504:	10e78a63          	beq	a5,a4,80002618 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if (a0 == 0x0000000000000022UL) {
    80002508:	02200713          	li	a4,34
    8000250c:	12e78e63          	beq	a5,a4,80002648 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
        else if (a0 == 0x0000000000000023UL) {
    80002510:	02300713          	li	a4,35
    80002514:	14e78c63          	beq	a5,a4,8000266c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
        else if (a0 == 0x0000000000000024UL) {
    80002518:	02400713          	li	a4,36
    8000251c:	02e79463          	bne	a5,a4,80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002520:	00058513          	mv	a0,a1
            a=sem->signal();
    80002524:	fffff097          	auipc	ra,0xfffff
    80002528:	068080e7          	jalr	104(ra) # 8000158c <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000252c:	00050513          	mv	a0,a0
    80002530:	0140006f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002534:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	6e4080e7          	jalr	1764(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002540:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002544:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002548:	14149073          	csrw	sepc,s1
    8000254c:	04813083          	ld	ra,72(sp)
    80002550:	04013403          	ld	s0,64(sp)
    80002554:	03813483          	ld	s1,56(sp)
    80002558:	03013903          	ld	s2,48(sp)
    8000255c:	02813983          	ld	s3,40(sp)
    80002560:	05010113          	addi	sp,sp,80
    80002564:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002568:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    8000256c:	00000097          	auipc	ra,0x0
    80002570:	74c080e7          	jalr	1868(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002574:	00050513          	mv	a0,a0
    80002578:	fcdff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    8000257c:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002580:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002584:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    80002588:	00000097          	auipc	ra,0x0
    8000258c:	348080e7          	jalr	840(ra) # 800028d0 <_ZN3TCB12createThreadEPFvPvES0_>
    80002590:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002594:	00098863          	beqz	s3,800025a4 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    80002598:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    8000259c:	00078513          	mv	a0,a5
    800025a0:	fa5ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    800025a4:	fff00793          	li	a5,-1
    800025a8:	ff5ff06f          	j	8000259c <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            a=TCB::exitThread();
    800025ac:	00000097          	auipc	ra,0x0
    800025b0:	204080e7          	jalr	516(ra) # 800027b0 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800025b4:	00050513          	mv	a0,a0
    800025b8:	f8dff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::timeSliceCounter = 0;
    800025bc:	00005797          	auipc	a5,0x5
    800025c0:	13c7b783          	ld	a5,316(a5) # 800076f8 <_GLOBAL_OFFSET_TABLE_+0x18>
    800025c4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800025c8:	00000097          	auipc	ra,0x0
    800025cc:	0ec080e7          	jalr	236(ra) # 800026b4 <_ZN3TCB8dispatchEv>
    800025d0:	f75ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800025d4:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    800025d8:	0007b503          	ld	a0,0(a5)
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	534080e7          	jalr	1332(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
    800025e4:	f61ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800025e8:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800025ec:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800025f0:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    800025f4:	00000097          	auipc	ra,0x0
    800025f8:	3b0080e7          	jalr	944(ra) # 800029a4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    800025fc:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002600:	00098863          	beqz	s3,80002610 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    80002604:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002608:	00078513          	mv	a0,a5
    8000260c:	f39ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    80002610:	fff00793          	li	a5,-1
    80002614:	ff5ff06f          	j	80002608 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002618:	00060513          	mv	a0,a2
    8000261c:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002620:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	07c080e7          	jalr	124(ra) # 800016a0 <_ZN10Ksemaphore15createSemaphoreEj>
    8000262c:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002630:	00098863          	beqz	s3,80002640 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
    80002634:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002638:	00078513          	mv	a0,a5
    8000263c:	f09ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            uint64 a= (sem!= nullptr)?0: -1;
    80002640:	fff00793          	li	a5,-1
    80002644:	ff5ff06f          	j	80002638 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002648:	00058513          	mv	a0,a1
            if(sem== nullptr){
    8000264c:	00050c63          	beqz	a0,80002664 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
                sem->closeSemaphore();
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	f84080e7          	jalr	-124(ra) # 800015d4 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002658:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000265c:	00078513          	mv	a0,a5
    80002660:	ee5ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                a=-1;
    80002664:	fff00793          	li	a5,-1
    80002668:	ff5ff06f          	j	8000265c <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
    8000266c:	00058513          	mv	a0,a1
                a = a1->wait();
    80002670:	fffff097          	auipc	ra,0xfffff
    80002674:	ecc080e7          	jalr	-308(ra) # 8000153c <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002678:	00050513          	mv	a0,a0
    8000267c:	ec9ff06f          	j	80002544 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002680:	00200793          	li	a5,2
    80002684:	1447b073          	csrc	sip,a5
}
    80002688:	ec5ff06f          	j	8000254c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>

000000008000268c <_ZN3TCB14putInSchedulerEPS_>:
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    8000268c:	ff010113          	addi	sp,sp,-16
    80002690:	00113423          	sd	ra,8(sp)
    80002694:	00813023          	sd	s0,0(sp)
    80002698:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    8000269c:	00000097          	auipc	ra,0x0
    800026a0:	474080e7          	jalr	1140(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
}
    800026a4:	00813083          	ld	ra,8(sp)
    800026a8:	00013403          	ld	s0,0(sp)
    800026ac:	01010113          	addi	sp,sp,16
    800026b0:	00008067          	ret

00000000800026b4 <_ZN3TCB8dispatchEv>:
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
    800026b4:	fe010113          	addi	sp,sp,-32
    800026b8:	00113c23          	sd	ra,24(sp)
    800026bc:	00813823          	sd	s0,16(sp)
    800026c0:	00913423          	sd	s1,8(sp)
    800026c4:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    800026c8:	00005497          	auipc	s1,0x5
    800026cc:	0a84b483          	ld	s1,168(s1) # 80007770 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800026d0:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800026d4:	02078c63          	beqz	a5,8000270c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	3d0080e7          	jalr	976(ra) # 80002aa8 <_ZN9Scheduler3getEv>
    800026e0:	00005797          	auipc	a5,0x5
    800026e4:	08a7b823          	sd	a0,144(a5) # 80007770 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    800026e8:	01850593          	addi	a1,a0,24
    800026ec:	01848513          	addi	a0,s1,24
    800026f0:	fffff097          	auipc	ra,0xfffff
    800026f4:	b10080e7          	jalr	-1264(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800026f8:	01813083          	ld	ra,24(sp)
    800026fc:	01013403          	ld	s0,16(sp)
    80002700:	00813483          	ld	s1,8(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    8000270c:	00048513          	mv	a0,s1
    80002710:	00000097          	auipc	ra,0x0
    80002714:	400080e7          	jalr	1024(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
    80002718:	fc1ff06f          	j	800026d8 <_ZN3TCB8dispatchEv+0x24>

000000008000271c <_ZN3TCB5yieldEv>:
{
    8000271c:	ff010113          	addi	sp,sp,-16
    80002720:	00113423          	sd	ra,8(sp)
    80002724:	00813023          	sd	s0,0(sp)
    80002728:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    8000272c:	fffff097          	auipc	ra,0xfffff
    80002730:	8d4080e7          	jalr	-1836(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002734:	00000097          	auipc	ra,0x0
    80002738:	f80080e7          	jalr	-128(ra) # 800026b4 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	93c080e7          	jalr	-1732(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002744:	00813083          	ld	ra,8(sp)
    80002748:	00013403          	ld	s0,0(sp)
    8000274c:	01010113          	addi	sp,sp,16
    80002750:	00008067          	ret

0000000080002754 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper(){
    80002754:	fe010113          	addi	sp,sp,-32
    80002758:	00113c23          	sd	ra,24(sp)
    8000275c:	00813823          	sd	s0,16(sp)
    80002760:	00913423          	sd	s1,8(sp)
    80002764:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002768:	00000097          	auipc	ra,0x0
    8000276c:	cb8080e7          	jalr	-840(ra) # 80002420 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002770:	00005497          	auipc	s1,0x5
    80002774:	00048493          	mv	s1,s1
    80002778:	0004b783          	ld	a5,0(s1) # 80007770 <_ZN3TCB7runningE>
    8000277c:	0007b703          	ld	a4,0(a5)
    80002780:	0087b503          	ld	a0,8(a5)
    80002784:	000700e7          	jalr	a4
    running->setFinished(true);
    80002788:	0004b783          	ld	a5,0(s1)


    void setFinished(bool value) { finished = value; }
    8000278c:	00100713          	li	a4,1
    80002790:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002794:	00000097          	auipc	ra,0x0
    80002798:	f88080e7          	jalr	-120(ra) # 8000271c <_ZN3TCB5yieldEv>
}
    8000279c:	01813083          	ld	ra,24(sp)
    800027a0:	01013403          	ld	s0,16(sp)
    800027a4:	00813483          	ld	s1,8(sp)
    800027a8:	02010113          	addi	sp,sp,32
    800027ac:	00008067          	ret

00000000800027b0 <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    800027c0:	00005797          	auipc	a5,0x5
    800027c4:	fb07b783          	ld	a5,-80(a5) # 80007770 <_ZN3TCB7runningE>
    800027c8:	00100713          	li	a4,1
    800027cc:	02e78823          	sb	a4,48(a5)
    running->setFinished(true);
    dispatch();
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	ee4080e7          	jalr	-284(ra) # 800026b4 <_ZN3TCB8dispatchEv>
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}
    800027d8:	00000513          	li	a0,0
    800027dc:	00813083          	ld	ra,8(sp)
    800027e0:	00013403          	ld	s0,0(sp)
    800027e4:	01010113          	addi	sp,sp,16
    800027e8:	00008067          	ret

00000000800027ec <_ZN3TCB24dispatchWithoutSchedulerEv>:


void TCB::dispatchWithoutScheduler(){
    800027ec:	fe010113          	addi	sp,sp,-32
    800027f0:	00113c23          	sd	ra,24(sp)
    800027f4:	00813823          	sd	s0,16(sp)
    800027f8:	00913423          	sd	s1,8(sp)
    800027fc:	01213023          	sd	s2,0(sp)
    80002800:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002804:	00005497          	auipc	s1,0x5
    80002808:	f6c48493          	addi	s1,s1,-148 # 80007770 <_ZN3TCB7runningE>
    8000280c:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    80002810:	00000097          	auipc	ra,0x0
    80002814:	298080e7          	jalr	664(ra) # 80002aa8 <_ZN9Scheduler3getEv>
    80002818:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    8000281c:	01850593          	addi	a1,a0,24
    80002820:	01890513          	addi	a0,s2,24
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	9dc080e7          	jalr	-1572(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000282c:	01813083          	ld	ra,24(sp)
    80002830:	01013403          	ld	s0,16(sp)
    80002834:	00813483          	ld	s1,8(sp)
    80002838:	00013903          	ld	s2,0(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret

0000000080002844 <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002844:	ff010113          	addi	sp,sp,-16
    80002848:	00113423          	sd	ra,8(sp)
    8000284c:	00813023          	sd	s0,0(sp)
    80002850:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002854:	ffffe097          	auipc	ra,0xffffe
    80002858:	7ac080e7          	jalr	1964(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    8000285c:	00000097          	auipc	ra,0x0
    80002860:	f90080e7          	jalr	-112(ra) # 800027ec <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	814080e7          	jalr	-2028(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    8000286c:	00813083          	ld	ra,8(sp)
    80002870:	00013403          	ld	s0,0(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) {
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000288c:	00000097          	auipc	ra,0x0
    80002890:	42c080e7          	jalr	1068(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
    return;

}
    80002894:	00813083          	ld	ra,8(sp)
    80002898:	00013403          	ld	s0,0(sp)
    8000289c:	01010113          	addi	sp,sp,16
    800028a0:	00008067          	ret

00000000800028a4 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t n) {
    800028a4:	ff010113          	addi	sp,sp,-16
    800028a8:	00113423          	sd	ra,8(sp)
    800028ac:	00813023          	sd	s0,0(sp)
    800028b0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    800028b4:	03800513          	li	a0,56
    800028b8:	00000097          	auipc	ra,0x0
    800028bc:	364080e7          	jalr	868(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>

}
    800028c0:	00813083          	ld	ra,8(sp)
    800028c4:	00013403          	ld	s0,0(sp)
    800028c8:	01010113          	addi	sp,sp,16
    800028cc:	00008067          	ret

00000000800028d0 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    800028d0:	fd010113          	addi	sp,sp,-48
    800028d4:	02113423          	sd	ra,40(sp)
    800028d8:	02813023          	sd	s0,32(sp)
    800028dc:	00913c23          	sd	s1,24(sp)
    800028e0:	01213823          	sd	s2,16(sp)
    800028e4:	01313423          	sd	s3,8(sp)
    800028e8:	03010413          	addi	s0,sp,48
    800028ec:	00050913          	mv	s2,a0
    800028f0:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    800028f4:	03800513          	li	a0,56
    800028f8:	00000097          	auipc	ra,0x0
    800028fc:	fac080e7          	jalr	-84(ra) # 800028a4 <_ZN3TCBnwEm>
    80002900:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002904:	01253023          	sd	s2,0(a0)
        arg=argg;
    80002908:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    8000290c:	00090a63          	beqz	s2,80002920 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002910:	00008537          	lui	a0,0x8
    80002914:	00000097          	auipc	ra,0x0
    80002918:	308080e7          	jalr	776(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
    8000291c:	0080006f          	j	80002924 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002920:	00000513          	li	a0,0
    80002924:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002928:	00000797          	auipc	a5,0x0
    8000292c:	e2c78793          	addi	a5,a5,-468 # 80002754 <_ZN3TCB13threadWrapperEv>
    80002930:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002934:	04050663          	beqz	a0,80002980 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80002938:	000087b7          	lui	a5,0x8
    8000293c:	00f507b3          	add	a5,a0,a5
    80002940:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002944:	00200793          	li	a5,2
    80002948:	02f4b423          	sd	a5,40(s1)
        finished= false;
    8000294c:	02048823          	sb	zero,48(s1)
    if (body != nullptr) {
    80002950:	00090863          	beqz	s2,80002960 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
        Scheduler::put(t);
    80002954:	00048513          	mv	a0,s1
    80002958:	00000097          	auipc	ra,0x0
    8000295c:	1b8080e7          	jalr	440(ra) # 80002b10 <_ZN9Scheduler3putEP3TCB>
}
    80002960:	00048513          	mv	a0,s1
    80002964:	02813083          	ld	ra,40(sp)
    80002968:	02013403          	ld	s0,32(sp)
    8000296c:	01813483          	ld	s1,24(sp)
    80002970:	01013903          	ld	s2,16(sp)
    80002974:	00813983          	ld	s3,8(sp)
    80002978:	03010113          	addi	sp,sp,48
    8000297c:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002980:	00000793          	li	a5,0
    80002984:	fbdff06f          	j	80002940 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002988:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    8000298c:	00048513          	mv	a0,s1
    80002990:	00000097          	auipc	ra,0x0
    80002994:	eec080e7          	jalr	-276(ra) # 8000287c <_ZN3TCBdlEPv>
    80002998:	00090513          	mv	a0,s2
    8000299c:	00006097          	auipc	ra,0x6
    800029a0:	edc080e7          	jalr	-292(ra) # 80008878 <_Unwind_Resume>

00000000800029a4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    800029a4:	fd010113          	addi	sp,sp,-48
    800029a8:	02113423          	sd	ra,40(sp)
    800029ac:	02813023          	sd	s0,32(sp)
    800029b0:	00913c23          	sd	s1,24(sp)
    800029b4:	01213823          	sd	s2,16(sp)
    800029b8:	01313423          	sd	s3,8(sp)
    800029bc:	03010413          	addi	s0,sp,48
    800029c0:	00050913          	mv	s2,a0
    800029c4:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    800029c8:	03800513          	li	a0,56
    800029cc:	00000097          	auipc	ra,0x0
    800029d0:	ed8080e7          	jalr	-296(ra) # 800028a4 <_ZN3TCBnwEm>
    800029d4:	00050493          	mv	s1,a0
        body = bodyy;
    800029d8:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    800029dc:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    800029e0:	00090a63          	beqz	s2,800029f4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    800029e4:	00008537          	lui	a0,0x8
    800029e8:	00000097          	auipc	ra,0x0
    800029ec:	234080e7          	jalr	564(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
    800029f0:	0080006f          	j	800029f8 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    800029f4:	00000513          	li	a0,0
    800029f8:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    800029fc:	00000797          	auipc	a5,0x0
    80002a00:	d5878793          	addi	a5,a5,-680 # 80002754 <_ZN3TCB13threadWrapperEv>
    80002a04:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a08:	02050e63          	beqz	a0,80002a44 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xa0>
    80002a0c:	000087b7          	lui	a5,0x8
    80002a10:	00f50533          	add	a0,a0,a5
    80002a14:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    80002a18:	00200793          	li	a5,2
    80002a1c:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002a20:	02048823          	sb	zero,48(s1)
}
    80002a24:	00048513          	mv	a0,s1
    80002a28:	02813083          	ld	ra,40(sp)
    80002a2c:	02013403          	ld	s0,32(sp)
    80002a30:	01813483          	ld	s1,24(sp)
    80002a34:	01013903          	ld	s2,16(sp)
    80002a38:	00813983          	ld	s3,8(sp)
    80002a3c:	03010113          	addi	sp,sp,48
    80002a40:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a44:	00000513          	li	a0,0
    80002a48:	fcdff06f          	j	80002a14 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002a4c:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002a50:	00048513          	mv	a0,s1
    80002a54:	00000097          	auipc	ra,0x0
    80002a58:	e28080e7          	jalr	-472(ra) # 8000287c <_ZN3TCBdlEPv>
    80002a5c:	00090513          	mv	a0,s2
    80002a60:	00006097          	auipc	ra,0x6
    80002a64:	e18080e7          	jalr	-488(ra) # 80008878 <_Unwind_Resume>

0000000080002a68 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}
    80002a68:	ff010113          	addi	sp,sp,-16
    80002a6c:	00813423          	sd	s0,8(sp)
    80002a70:	01010413          	addi	s0,sp,16
    80002a74:	00100793          	li	a5,1
    80002a78:	00f50863          	beq	a0,a5,80002a88 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002a7c:	00813403          	ld	s0,8(sp)
    80002a80:	01010113          	addi	sp,sp,16
    80002a84:	00008067          	ret
    80002a88:	000107b7          	lui	a5,0x10
    80002a8c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002a90:	fef596e3          	bne	a1,a5,80002a7c <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002a94:	00005797          	auipc	a5,0x5
    80002a98:	cec78793          	addi	a5,a5,-788 # 80007780 <_ZN9Scheduler16readyThreadQueueE>
    80002a9c:	0007b023          	sd	zero,0(a5)
    80002aa0:	0007b423          	sd	zero,8(a5)
    80002aa4:	fd9ff06f          	j	80002a7c <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002aa8 <_ZN9Scheduler3getEv>:
{
    80002aa8:	fe010113          	addi	sp,sp,-32
    80002aac:	00113c23          	sd	ra,24(sp)
    80002ab0:	00813823          	sd	s0,16(sp)
    80002ab4:	00913423          	sd	s1,8(sp)
    80002ab8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002abc:	00005517          	auipc	a0,0x5
    80002ac0:	cc453503          	ld	a0,-828(a0) # 80007780 <_ZN9Scheduler16readyThreadQueueE>
    80002ac4:	04050263          	beqz	a0,80002b08 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002ac8:	00853783          	ld	a5,8(a0)
    80002acc:	00005717          	auipc	a4,0x5
    80002ad0:	caf73a23          	sd	a5,-844(a4) # 80007780 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002ad4:	02078463          	beqz	a5,80002afc <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    80002ad8:	00053483          	ld	s1,0(a0)
        delete elem;
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	5c8080e7          	jalr	1480(ra) # 800020a4 <_ZdlPv>
}
    80002ae4:	00048513          	mv	a0,s1
    80002ae8:	01813083          	ld	ra,24(sp)
    80002aec:	01013403          	ld	s0,16(sp)
    80002af0:	00813483          	ld	s1,8(sp)
    80002af4:	02010113          	addi	sp,sp,32
    80002af8:	00008067          	ret
        if (!head) { tail = 0; }
    80002afc:	00005797          	auipc	a5,0x5
    80002b00:	c807b623          	sd	zero,-884(a5) # 80007788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b04:	fd5ff06f          	j	80002ad8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002b08:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002b0c:	fd9ff06f          	j	80002ae4 <_ZN9Scheduler3getEv+0x3c>

0000000080002b10 <_ZN9Scheduler3putEP3TCB>:
{
    80002b10:	fe010113          	addi	sp,sp,-32
    80002b14:	00113c23          	sd	ra,24(sp)
    80002b18:	00813823          	sd	s0,16(sp)
    80002b1c:	00913423          	sd	s1,8(sp)
    80002b20:	02010413          	addi	s0,sp,32
    80002b24:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002b28:	01000513          	li	a0,16
    80002b2c:	fffff097          	auipc	ra,0xfffff
    80002b30:	528080e7          	jalr	1320(ra) # 80002054 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002b34:	00953023          	sd	s1,0(a0)
    80002b38:	00053423          	sd	zero,8(a0)
        if (tail)
    80002b3c:	00005797          	auipc	a5,0x5
    80002b40:	c4c7b783          	ld	a5,-948(a5) # 80007788 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002b44:	02078263          	beqz	a5,80002b68 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002b48:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002b4c:	00005797          	auipc	a5,0x5
    80002b50:	c2a7be23          	sd	a0,-964(a5) # 80007788 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002b54:	01813083          	ld	ra,24(sp)
    80002b58:	01013403          	ld	s0,16(sp)
    80002b5c:	00813483          	ld	s1,8(sp)
    80002b60:	02010113          	addi	sp,sp,32
    80002b64:	00008067          	ret
            head = tail = elem;
    80002b68:	00005797          	auipc	a5,0x5
    80002b6c:	c1878793          	addi	a5,a5,-1000 # 80007780 <_ZN9Scheduler16readyThreadQueueE>
    80002b70:	00a7b423          	sd	a0,8(a5)
    80002b74:	00a7b023          	sd	a0,0(a5)
    80002b78:	fddff06f          	j	80002b54 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002b7c <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002b7c:	ff010113          	addi	sp,sp,-16
    80002b80:	00813423          	sd	s0,8(sp)
    80002b84:	01010413          	addi	s0,sp,16
}
    80002b88:	00053503          	ld	a0,0(a0)
    80002b8c:	00813403          	ld	s0,8(sp)
    80002b90:	01010113          	addi	sp,sp,16
    80002b94:	00008067          	ret

0000000080002b98 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    80002b98:	ff010113          	addi	sp,sp,-16
    80002b9c:	00113423          	sd	ra,8(sp)
    80002ba0:	00813023          	sd	s0,0(sp)
    80002ba4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	074080e7          	jalr	116(ra) # 80002c1c <_ZN15MemoryAllocator6mallocEm>
}
    80002bb0:	00813083          	ld	ra,8(sp)
    80002bb4:	00013403          	ld	s0,0(sp)
    80002bb8:	01010113          	addi	sp,sp,16
    80002bbc:	00008067          	ret

0000000080002bc0 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    80002bc0:	ff010113          	addi	sp,sp,-16
    80002bc4:	00113423          	sd	ra,8(sp)
    80002bc8:	00813023          	sd	s0,0(sp)
    80002bcc:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002bd0:	00000097          	auipc	ra,0x0
    80002bd4:	0e8080e7          	jalr	232(ra) # 80002cb8 <_ZN15MemoryAllocator4freeEPv>
}
    80002bd8:	00813083          	ld	ra,8(sp)
    80002bdc:	00013403          	ld	s0,0(sp)
    80002be0:	01010113          	addi	sp,sp,16
    80002be4:	00008067          	ret

0000000080002be8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002be8:	ff010113          	addi	sp,sp,-16
    80002bec:	00113423          	sd	ra,8(sp)
    80002bf0:	00813023          	sd	s0,0(sp)
    80002bf4:	01010413          	addi	s0,sp,16
    80002bf8:	000105b7          	lui	a1,0x10
    80002bfc:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002c00:	00100513          	li	a0,1
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	e64080e7          	jalr	-412(ra) # 80002a68 <_Z41__static_initialization_and_destruction_0ii>
    80002c0c:	00813083          	ld	ra,8(sp)
    80002c10:	00013403          	ld	s0,0(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret

0000000080002c1c <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    80002c1c:	ff010113          	addi	sp,sp,-16
    80002c20:	00813423          	sd	s0,8(sp)
    80002c24:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002c28:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    80002c2c:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002c30:	00005517          	auipc	a0,0x5
    80002c34:	b6053503          	ld	a0,-1184(a0) # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002c38:	0440006f          	j	80002c7c <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80002c3c:	40e787b3          	sub	a5,a5,a4
    80002c40:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80002c44:	fe878793          	addi	a5,a5,-24
    80002c48:	00679793          	slli	a5,a5,0x6
    80002c4c:	fe878793          	addi	a5,a5,-24
    80002c50:	00f507b3          	add	a5,a0,a5
    80002c54:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80002c58:	01053783          	ld	a5,16(a0)
    80002c5c:	fe878793          	addi	a5,a5,-24
    80002c60:	00679793          	slli	a5,a5,0x6
    80002c64:	ff078793          	addi	a5,a5,-16
    80002c68:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80002c6c:	00813403          	ld	s0,8(sp)
    80002c70:	01010113          	addi	sp,sp,16
    80002c74:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002c78:	00053503          	ld	a0,0(a0)
    80002c7c:	fe0508e3          	beqz	a0,80002c6c <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    80002c80:	01053783          	ld	a5,16(a0)
    80002c84:	faf76ce3          	bltu	a4,a5,80002c3c <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80002c88:	fee798e3          	bne	a5,a4,80002c78 <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    80002c8c:	00853783          	ld	a5,8(a0)
    80002c90:	00078663          	beqz	a5,80002c9c <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    80002c94:	00053683          	ld	a3,0(a0)
    80002c98:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    80002c9c:	00053783          	ld	a5,0(a0)
    80002ca0:	00078663          	beqz	a5,80002cac <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    80002ca4:	00853683          	ld	a3,8(a0)
    80002ca8:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    80002cac:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    80002cb0:	ff050513          	addi	a0,a0,-16
    80002cb4:	fb9ff06f          	j	80002c6c <_ZN15MemoryAllocator6mallocEm+0x50>

0000000080002cb8 <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    80002cb8:	ff010113          	addi	sp,sp,-16
    80002cbc:	00813423          	sd	s0,8(sp)
    80002cc0:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002cc4:	14050663          	beqz	a0,80002e10 <_ZN15MemoryAllocator4freeEPv+0x158>
    80002cc8:	00005797          	auipc	a5,0x5
    80002ccc:	a487b783          	ld	a5,-1464(a5) # 80007710 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002cd0:	0007b783          	ld	a5,0(a5)
    80002cd4:	14a7e263          	bltu	a5,a0,80002e18 <_ZN15MemoryAllocator4freeEPv+0x160>
    80002cd8:	00005797          	auipc	a5,0x5
    80002cdc:	a107b783          	ld	a5,-1520(a5) # 800076e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ce0:	0007b783          	ld	a5,0(a5)
    80002ce4:	14f56263          	bltu	a0,a5,80002e28 <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    80002ce8:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    80002cec:	14070263          	beqz	a4,80002e30 <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    80002cf0:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    80002cf4:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002cf8:	00005797          	auipc	a5,0x5
    80002cfc:	a987b783          	ld	a5,-1384(a5) # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d00:	0140006f          	j	80002d14 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80002d04:	00005697          	auipc	a3,0x5
    80002d08:	a946b683          	ld	a3,-1388(a3) # 80007798 <_ZN15MemoryAllocator4tailE>
    80002d0c:	02f68e63          	beq	a3,a5,80002d48 <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002d10:	0007b783          	ld	a5,0(a5)
    80002d14:	04078863          	beqz	a5,80002d64 <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    80002d18:	fee7f6e3          	bgeu	a5,a4,80002d04 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002d1c:	0007b683          	ld	a3,0(a5)
    80002d20:	fed772e3          	bgeu	a4,a3,80002d04 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002d24:	00005617          	auipc	a2,0x5
    80002d28:	a7463603          	ld	a2,-1420(a2) # 80007798 <_ZN15MemoryAllocator4tailE>
    80002d2c:	fcf60ce3          	beq	a2,a5,80002d04 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    80002d30:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80002d34:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80002d38:	0007b683          	ld	a3,0(a5)
    80002d3c:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    80002d40:	00e7b023          	sd	a4,0(a5)
    80002d44:	fcdff06f          	j	80002d10 <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80002d48:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80002d4c:	00005797          	auipc	a5,0x5
    80002d50:	a4478793          	addi	a5,a5,-1468 # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d54:	0087b683          	ld	a3,8(a5)
    80002d58:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80002d5c:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    80002d60:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80002d64:	00005797          	auipc	a5,0x5
    80002d68:	a2c7b783          	ld	a5,-1492(a5) # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002d6c:	02078e63          	beqz	a5,80002da8 <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    80002d70:	00053783          	ld	a5,0(a0)
    80002d74:	00078a63          	beqz	a5,80002d88 <_ZN15MemoryAllocator4freeEPv+0xd0>
        if ((char *) newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE == (char *) newFreeBlock) {
    80002d78:	0107b603          	ld	a2,16(a5)
    80002d7c:	00661693          	slli	a3,a2,0x6
    80002d80:	00d786b3          	add	a3,a5,a3
    80002d84:	02e68a63          	beq	a3,a4,80002db8 <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    80002d88:	00073783          	ld	a5,0(a4)
    80002d8c:	0a078663          	beqz	a5,80002e38 <_ZN15MemoryAllocator4freeEPv+0x180>
        if ((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE == (char *) newFreeBlock->next) {
    80002d90:	01073603          	ld	a2,16(a4)
    80002d94:	00661693          	slli	a3,a2,0x6
    80002d98:	00d706b3          	add	a3,a4,a3
    80002d9c:	04d78463          	beq	a5,a3,80002de4 <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    80002da0:	00000513          	li	a0,0
    80002da4:	0780006f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    80002da8:	00005797          	auipc	a5,0x5
    80002dac:	9ee7b423          	sd	a4,-1560(a5) # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    80002db0:	00000513          	li	a0,0
    80002db4:	0680006f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    80002db8:	00853703          	ld	a4,8(a0)
    80002dbc:	00e60633          	add	a2,a2,a4
    80002dc0:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    80002dc4:	00053703          	ld	a4,0(a0)
    80002dc8:	ff853783          	ld	a5,-8(a0)
    80002dcc:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    80002dd0:	00078663          	beqz	a5,80002ddc <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    80002dd4:	00053703          	ld	a4,0(a0)
    80002dd8:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    80002ddc:	00053703          	ld	a4,0(a0)
    80002de0:	fa9ff06f          	j	80002d88 <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    80002de4:	0107b683          	ld	a3,16(a5)
    80002de8:	00d60633          	add	a2,a2,a3
    80002dec:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    80002df0:	0007b783          	ld	a5,0(a5)
    80002df4:	04078663          	beqz	a5,80002e40 <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    80002df8:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    80002dfc:	00073783          	ld	a5,0(a4)
    80002e00:	0007b783          	ld	a5,0(a5)
    80002e04:	00f73023          	sd	a5,0(a4)
    return 0;
    80002e08:	00000513          	li	a0,0
    80002e0c:	0100006f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002e10:	00100513          	li	a0,1
    80002e14:	0080006f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
    80002e18:	00100513          	li	a0,1
}
    80002e1c:	00813403          	ld	s0,8(sp)
    80002e20:	01010113          	addi	sp,sp,16
    80002e24:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002e28:	00100513          	li	a0,1
    80002e2c:	ff1ff06f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    80002e30:	00100513          	li	a0,1
    80002e34:	fe9ff06f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    80002e38:	00000513          	li	a0,0
    80002e3c:	fe1ff06f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>
    80002e40:	00000513          	li	a0,0
    80002e44:	fd9ff06f          	j	80002e1c <_ZN15MemoryAllocator4freeEPv+0x164>

0000000080002e48 <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    80002e48:	ff010113          	addi	sp,sp,-16
    80002e4c:	00813423          	sd	s0,8(sp)
    80002e50:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80002e54:	00005797          	auipc	a5,0x5
    80002e58:	8947b783          	ld	a5,-1900(a5) # 800076e8 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002e5c:	0007b703          	ld	a4,0(a5)
    80002e60:	00005697          	auipc	a3,0x5
    80002e64:	93068693          	addi	a3,a3,-1744 # 80007790 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002e68:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80002e6c:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80002e70:	00005797          	auipc	a5,0x5
    80002e74:	8a07b783          	ld	a5,-1888(a5) # 80007710 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e78:	0007b783          	ld	a5,0(a5)
    80002e7c:	40e787b3          	sub	a5,a5,a4
    80002e80:	03f78793          	addi	a5,a5,63
    80002e84:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    80002e88:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80002e8c:	00e6b423          	sd	a4,8(a3)
}
    80002e90:	00813403          	ld	s0,8(sp)
    80002e94:	01010113          	addi	sp,sp,16
    80002e98:	00008067          	ret

0000000080002e9c <_Z9mainStariv>:
//#include "../lib/console.h"
//#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"


int mainStari(){
    80002e9c:	ff010113          	addi	sp,sp,-16
    80002ea0:	00813423          	sd	s0,8(sp)
    80002ea4:	01010413          	addi	s0,sp,16
//        __putc(character + 30);
//    }
//    MemoryAllocator* mem = MemoryAllocator::getInstance();

    return 0;
    80002ea8:	00000513          	li	a0,0
    80002eac:	00813403          	ld	s0,8(sp)
    80002eb0:	01010113          	addi	sp,sp,16
    80002eb4:	00008067          	ret

0000000080002eb8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002eb8:	fe010113          	addi	sp,sp,-32
    80002ebc:	00113c23          	sd	ra,24(sp)
    80002ec0:	00813823          	sd	s0,16(sp)
    80002ec4:	00913423          	sd	s1,8(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    LOCK();
    80002ed0:	00100613          	li	a2,1
    80002ed4:	00000593          	li	a1,0
    80002ed8:	00005517          	auipc	a0,0x5
    80002edc:	8d050513          	addi	a0,a0,-1840 # 800077a8 <lockPrint>
    80002ee0:	ffffe097          	auipc	ra,0xffffe
    80002ee4:	334080e7          	jalr	820(ra) # 80001214 <copy_and_swap>
    80002ee8:	fe0514e3          	bnez	a0,80002ed0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002eec:	0004c503          	lbu	a0,0(s1)
    80002ef0:	00050a63          	beqz	a0,80002f04 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002ef4:	ffffe097          	auipc	ra,0xffffe
    80002ef8:	548080e7          	jalr	1352(ra) # 8000143c <_Z4putcc>
        string++;
    80002efc:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002f00:	fedff06f          	j	80002eec <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002f04:	00000613          	li	a2,0
    80002f08:	00100593          	li	a1,1
    80002f0c:	00005517          	auipc	a0,0x5
    80002f10:	89c50513          	addi	a0,a0,-1892 # 800077a8 <lockPrint>
    80002f14:	ffffe097          	auipc	ra,0xffffe
    80002f18:	300080e7          	jalr	768(ra) # 80001214 <copy_and_swap>
    80002f1c:	fe0514e3          	bnez	a0,80002f04 <_Z11printStringPKc+0x4c>
}
    80002f20:	01813083          	ld	ra,24(sp)
    80002f24:	01013403          	ld	s0,16(sp)
    80002f28:	00813483          	ld	s1,8(sp)
    80002f2c:	02010113          	addi	sp,sp,32
    80002f30:	00008067          	ret

0000000080002f34 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002f34:	fd010113          	addi	sp,sp,-48
    80002f38:	02113423          	sd	ra,40(sp)
    80002f3c:	02813023          	sd	s0,32(sp)
    80002f40:	00913c23          	sd	s1,24(sp)
    80002f44:	01213823          	sd	s2,16(sp)
    80002f48:	01313423          	sd	s3,8(sp)
    80002f4c:	01413023          	sd	s4,0(sp)
    80002f50:	03010413          	addi	s0,sp,48
    80002f54:	00050993          	mv	s3,a0
    80002f58:	00058a13          	mv	s4,a1
    LOCK();
    80002f5c:	00100613          	li	a2,1
    80002f60:	00000593          	li	a1,0
    80002f64:	00005517          	auipc	a0,0x5
    80002f68:	84450513          	addi	a0,a0,-1980 # 800077a8 <lockPrint>
    80002f6c:	ffffe097          	auipc	ra,0xffffe
    80002f70:	2a8080e7          	jalr	680(ra) # 80001214 <copy_and_swap>
    80002f74:	fe0514e3          	bnez	a0,80002f5c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002f78:	00000913          	li	s2,0
    80002f7c:	00090493          	mv	s1,s2
    80002f80:	0019091b          	addiw	s2,s2,1
    80002f84:	03495a63          	bge	s2,s4,80002fb8 <_Z9getStringPci+0x84>
        cc = getc();
    80002f88:	ffffe097          	auipc	ra,0xffffe
    80002f8c:	48c080e7          	jalr	1164(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80002f90:	02050463          	beqz	a0,80002fb8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002f94:	009984b3          	add	s1,s3,s1
    80002f98:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002f9c:	00a00793          	li	a5,10
    80002fa0:	00f50a63          	beq	a0,a5,80002fb4 <_Z9getStringPci+0x80>
    80002fa4:	00d00793          	li	a5,13
    80002fa8:	fcf51ae3          	bne	a0,a5,80002f7c <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002fac:	00090493          	mv	s1,s2
    80002fb0:	0080006f          	j	80002fb8 <_Z9getStringPci+0x84>
    80002fb4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002fb8:	009984b3          	add	s1,s3,s1
    80002fbc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002fc0:	00000613          	li	a2,0
    80002fc4:	00100593          	li	a1,1
    80002fc8:	00004517          	auipc	a0,0x4
    80002fcc:	7e050513          	addi	a0,a0,2016 # 800077a8 <lockPrint>
    80002fd0:	ffffe097          	auipc	ra,0xffffe
    80002fd4:	244080e7          	jalr	580(ra) # 80001214 <copy_and_swap>
    80002fd8:	fe0514e3          	bnez	a0,80002fc0 <_Z9getStringPci+0x8c>
    return buf;
}
    80002fdc:	00098513          	mv	a0,s3
    80002fe0:	02813083          	ld	ra,40(sp)
    80002fe4:	02013403          	ld	s0,32(sp)
    80002fe8:	01813483          	ld	s1,24(sp)
    80002fec:	01013903          	ld	s2,16(sp)
    80002ff0:	00813983          	ld	s3,8(sp)
    80002ff4:	00013a03          	ld	s4,0(sp)
    80002ff8:	03010113          	addi	sp,sp,48
    80002ffc:	00008067          	ret

0000000080003000 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80003000:	ff010113          	addi	sp,sp,-16
    80003004:	00813423          	sd	s0,8(sp)
    80003008:	01010413          	addi	s0,sp,16
    8000300c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80003010:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003014:	0006c603          	lbu	a2,0(a3)
    80003018:	fd06071b          	addiw	a4,a2,-48
    8000301c:	0ff77713          	andi	a4,a4,255
    80003020:	00900793          	li	a5,9
    80003024:	02e7e063          	bltu	a5,a4,80003044 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003028:	0025179b          	slliw	a5,a0,0x2
    8000302c:	00a787bb          	addw	a5,a5,a0
    80003030:	0017979b          	slliw	a5,a5,0x1
    80003034:	00168693          	addi	a3,a3,1
    80003038:	00c787bb          	addw	a5,a5,a2
    8000303c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80003040:	fd5ff06f          	j	80003014 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003044:	00813403          	ld	s0,8(sp)
    80003048:	01010113          	addi	sp,sp,16
    8000304c:	00008067          	ret

0000000080003050 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003050:	fc010113          	addi	sp,sp,-64
    80003054:	02113c23          	sd	ra,56(sp)
    80003058:	02813823          	sd	s0,48(sp)
    8000305c:	02913423          	sd	s1,40(sp)
    80003060:	03213023          	sd	s2,32(sp)
    80003064:	01313c23          	sd	s3,24(sp)
    80003068:	04010413          	addi	s0,sp,64
    8000306c:	00050493          	mv	s1,a0
    80003070:	00058913          	mv	s2,a1
    80003074:	00060993          	mv	s3,a2
    LOCK();
    80003078:	00100613          	li	a2,1
    8000307c:	00000593          	li	a1,0
    80003080:	00004517          	auipc	a0,0x4
    80003084:	72850513          	addi	a0,a0,1832 # 800077a8 <lockPrint>
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	18c080e7          	jalr	396(ra) # 80001214 <copy_and_swap>
    80003090:	fe0514e3          	bnez	a0,80003078 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003094:	00098463          	beqz	s3,8000309c <_Z8printIntiii+0x4c>
    80003098:	0804c463          	bltz	s1,80003120 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000309c:	0004851b          	sext.w	a0,s1
    neg = 0;
    800030a0:	00000593          	li	a1,0
    }

    i = 0;
    800030a4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800030a8:	0009079b          	sext.w	a5,s2
    800030ac:	0325773b          	remuw	a4,a0,s2
    800030b0:	00048613          	mv	a2,s1
    800030b4:	0014849b          	addiw	s1,s1,1
    800030b8:	02071693          	slli	a3,a4,0x20
    800030bc:	0206d693          	srli	a3,a3,0x20
    800030c0:	00004717          	auipc	a4,0x4
    800030c4:	60870713          	addi	a4,a4,1544 # 800076c8 <digits>
    800030c8:	00d70733          	add	a4,a4,a3
    800030cc:	00074683          	lbu	a3,0(a4)
    800030d0:	fd040713          	addi	a4,s0,-48
    800030d4:	00c70733          	add	a4,a4,a2
    800030d8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800030dc:	0005071b          	sext.w	a4,a0
    800030e0:	0325553b          	divuw	a0,a0,s2
    800030e4:	fcf772e3          	bgeu	a4,a5,800030a8 <_Z8printIntiii+0x58>
    if(neg)
    800030e8:	00058c63          	beqz	a1,80003100 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800030ec:	fd040793          	addi	a5,s0,-48
    800030f0:	009784b3          	add	s1,a5,s1
    800030f4:	02d00793          	li	a5,45
    800030f8:	fef48823          	sb	a5,-16(s1)
    800030fc:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80003100:	fff4849b          	addiw	s1,s1,-1
    80003104:	0204c463          	bltz	s1,8000312c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80003108:	fd040793          	addi	a5,s0,-48
    8000310c:	009787b3          	add	a5,a5,s1
    80003110:	ff07c503          	lbu	a0,-16(a5)
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	328080e7          	jalr	808(ra) # 8000143c <_Z4putcc>
    8000311c:	fe5ff06f          	j	80003100 <_Z8printIntiii+0xb0>
        x = -xx;
    80003120:	4090053b          	negw	a0,s1
        neg = 1;
    80003124:	00100593          	li	a1,1
        x = -xx;
    80003128:	f7dff06f          	j	800030a4 <_Z8printIntiii+0x54>

    UNLOCK();
    8000312c:	00000613          	li	a2,0
    80003130:	00100593          	li	a1,1
    80003134:	00004517          	auipc	a0,0x4
    80003138:	67450513          	addi	a0,a0,1652 # 800077a8 <lockPrint>
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	0d8080e7          	jalr	216(ra) # 80001214 <copy_and_swap>
    80003144:	fe0514e3          	bnez	a0,8000312c <_Z8printIntiii+0xdc>
    80003148:	03813083          	ld	ra,56(sp)
    8000314c:	03013403          	ld	s0,48(sp)
    80003150:	02813483          	ld	s1,40(sp)
    80003154:	02013903          	ld	s2,32(sp)
    80003158:	01813983          	ld	s3,24(sp)
    8000315c:	04010113          	addi	sp,sp,64
    80003160:	00008067          	ret

0000000080003164 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003164:	fd010113          	addi	sp,sp,-48
    80003168:	02113423          	sd	ra,40(sp)
    8000316c:	02813023          	sd	s0,32(sp)
    80003170:	00913c23          	sd	s1,24(sp)
    80003174:	01213823          	sd	s2,16(sp)
    80003178:	01313423          	sd	s3,8(sp)
    8000317c:	03010413          	addi	s0,sp,48
    80003180:	00050493          	mv	s1,a0
    80003184:	00058913          	mv	s2,a1
    80003188:	0015879b          	addiw	a5,a1,1
    8000318c:	0007851b          	sext.w	a0,a5
    80003190:	00f4a023          	sw	a5,0(s1)
    80003194:	0004a823          	sw	zero,16(s1)
    80003198:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000319c:	00251513          	slli	a0,a0,0x2
    800031a0:	ffffe097          	auipc	ra,0xffffe
    800031a4:	094080e7          	jalr	148(ra) # 80001234 <_Z9mem_allocm>
    800031a8:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    800031ac:	01000513          	li	a0,16
    800031b0:	fffff097          	auipc	ra,0xfffff
    800031b4:	ea4080e7          	jalr	-348(ra) # 80002054 <_Znwm>
    800031b8:	00050993          	mv	s3,a0
    800031bc:	00000593          	li	a1,0
    800031c0:	fffff097          	auipc	ra,0xfffff
    800031c4:	08c080e7          	jalr	140(ra) # 8000224c <_ZN9SemaphoreC1Ej>
    800031c8:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800031cc:	01000513          	li	a0,16
    800031d0:	fffff097          	auipc	ra,0xfffff
    800031d4:	e84080e7          	jalr	-380(ra) # 80002054 <_Znwm>
    800031d8:	00050993          	mv	s3,a0
    800031dc:	00090593          	mv	a1,s2
    800031e0:	fffff097          	auipc	ra,0xfffff
    800031e4:	06c080e7          	jalr	108(ra) # 8000224c <_ZN9SemaphoreC1Ej>
    800031e8:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800031ec:	01000513          	li	a0,16
    800031f0:	fffff097          	auipc	ra,0xfffff
    800031f4:	e64080e7          	jalr	-412(ra) # 80002054 <_Znwm>
    800031f8:	00050913          	mv	s2,a0
    800031fc:	00100593          	li	a1,1
    80003200:	fffff097          	auipc	ra,0xfffff
    80003204:	04c080e7          	jalr	76(ra) # 8000224c <_ZN9SemaphoreC1Ej>
    80003208:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000320c:	01000513          	li	a0,16
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	e44080e7          	jalr	-444(ra) # 80002054 <_Znwm>
    80003218:	00050913          	mv	s2,a0
    8000321c:	00100593          	li	a1,1
    80003220:	fffff097          	auipc	ra,0xfffff
    80003224:	02c080e7          	jalr	44(ra) # 8000224c <_ZN9SemaphoreC1Ej>
    80003228:	0324b823          	sd	s2,48(s1)
}
    8000322c:	02813083          	ld	ra,40(sp)
    80003230:	02013403          	ld	s0,32(sp)
    80003234:	01813483          	ld	s1,24(sp)
    80003238:	01013903          	ld	s2,16(sp)
    8000323c:	00813983          	ld	s3,8(sp)
    80003240:	03010113          	addi	sp,sp,48
    80003244:	00008067          	ret
    80003248:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    8000324c:	00098513          	mv	a0,s3
    80003250:	fffff097          	auipc	ra,0xfffff
    80003254:	e54080e7          	jalr	-428(ra) # 800020a4 <_ZdlPv>
    80003258:	00048513          	mv	a0,s1
    8000325c:	00005097          	auipc	ra,0x5
    80003260:	61c080e7          	jalr	1564(ra) # 80008878 <_Unwind_Resume>
    80003264:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003268:	00098513          	mv	a0,s3
    8000326c:	fffff097          	auipc	ra,0xfffff
    80003270:	e38080e7          	jalr	-456(ra) # 800020a4 <_ZdlPv>
    80003274:	00048513          	mv	a0,s1
    80003278:	00005097          	auipc	ra,0x5
    8000327c:	600080e7          	jalr	1536(ra) # 80008878 <_Unwind_Resume>
    80003280:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003284:	00090513          	mv	a0,s2
    80003288:	fffff097          	auipc	ra,0xfffff
    8000328c:	e1c080e7          	jalr	-484(ra) # 800020a4 <_ZdlPv>
    80003290:	00048513          	mv	a0,s1
    80003294:	00005097          	auipc	ra,0x5
    80003298:	5e4080e7          	jalr	1508(ra) # 80008878 <_Unwind_Resume>
    8000329c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    800032a0:	00090513          	mv	a0,s2
    800032a4:	fffff097          	auipc	ra,0xfffff
    800032a8:	e00080e7          	jalr	-512(ra) # 800020a4 <_ZdlPv>
    800032ac:	00048513          	mv	a0,s1
    800032b0:	00005097          	auipc	ra,0x5
    800032b4:	5c8080e7          	jalr	1480(ra) # 80008878 <_Unwind_Resume>

00000000800032b8 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800032b8:	fe010113          	addi	sp,sp,-32
    800032bc:	00113c23          	sd	ra,24(sp)
    800032c0:	00813823          	sd	s0,16(sp)
    800032c4:	00913423          	sd	s1,8(sp)
    800032c8:	01213023          	sd	s2,0(sp)
    800032cc:	02010413          	addi	s0,sp,32
    800032d0:	00050493          	mv	s1,a0
    800032d4:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800032d8:	01853503          	ld	a0,24(a0)
    800032dc:	fffff097          	auipc	ra,0xfffff
    800032e0:	fa8080e7          	jalr	-88(ra) # 80002284 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800032e4:	0304b503          	ld	a0,48(s1)
    800032e8:	fffff097          	auipc	ra,0xfffff
    800032ec:	f9c080e7          	jalr	-100(ra) # 80002284 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800032f0:	0084b783          	ld	a5,8(s1)
    800032f4:	0144a703          	lw	a4,20(s1)
    800032f8:	00271713          	slli	a4,a4,0x2
    800032fc:	00e787b3          	add	a5,a5,a4
    80003300:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003304:	0144a783          	lw	a5,20(s1)
    80003308:	0017879b          	addiw	a5,a5,1
    8000330c:	0004a703          	lw	a4,0(s1)
    80003310:	02e7e7bb          	remw	a5,a5,a4
    80003314:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003318:	0304b503          	ld	a0,48(s1)
    8000331c:	fffff097          	auipc	ra,0xfffff
    80003320:	f94080e7          	jalr	-108(ra) # 800022b0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003324:	0204b503          	ld	a0,32(s1)
    80003328:	fffff097          	auipc	ra,0xfffff
    8000332c:	f88080e7          	jalr	-120(ra) # 800022b0 <_ZN9Semaphore6signalEv>

}
    80003330:	01813083          	ld	ra,24(sp)
    80003334:	01013403          	ld	s0,16(sp)
    80003338:	00813483          	ld	s1,8(sp)
    8000333c:	00013903          	ld	s2,0(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret

0000000080003348 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	01213023          	sd	s2,0(sp)
    8000335c:	02010413          	addi	s0,sp,32
    80003360:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003364:	02053503          	ld	a0,32(a0)
    80003368:	fffff097          	auipc	ra,0xfffff
    8000336c:	f1c080e7          	jalr	-228(ra) # 80002284 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003370:	0284b503          	ld	a0,40(s1)
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	f10080e7          	jalr	-240(ra) # 80002284 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    8000337c:	0084b703          	ld	a4,8(s1)
    80003380:	0104a783          	lw	a5,16(s1)
    80003384:	00279693          	slli	a3,a5,0x2
    80003388:	00d70733          	add	a4,a4,a3
    8000338c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003390:	0017879b          	addiw	a5,a5,1
    80003394:	0004a703          	lw	a4,0(s1)
    80003398:	02e7e7bb          	remw	a5,a5,a4
    8000339c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    800033a0:	0284b503          	ld	a0,40(s1)
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	f0c080e7          	jalr	-244(ra) # 800022b0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    800033ac:	0184b503          	ld	a0,24(s1)
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	f00080e7          	jalr	-256(ra) # 800022b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    800033b8:	00090513          	mv	a0,s2
    800033bc:	01813083          	ld	ra,24(sp)
    800033c0:	01013403          	ld	s0,16(sp)
    800033c4:	00813483          	ld	s1,8(sp)
    800033c8:	00013903          	ld	s2,0(sp)
    800033cc:	02010113          	addi	sp,sp,32
    800033d0:	00008067          	ret

00000000800033d4 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800033d4:	fe010113          	addi	sp,sp,-32
    800033d8:	00113c23          	sd	ra,24(sp)
    800033dc:	00813823          	sd	s0,16(sp)
    800033e0:	00913423          	sd	s1,8(sp)
    800033e4:	01213023          	sd	s2,0(sp)
    800033e8:	02010413          	addi	s0,sp,32
    800033ec:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800033f0:	02853503          	ld	a0,40(a0)
    800033f4:	fffff097          	auipc	ra,0xfffff
    800033f8:	e90080e7          	jalr	-368(ra) # 80002284 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800033fc:	0304b503          	ld	a0,48(s1)
    80003400:	fffff097          	auipc	ra,0xfffff
    80003404:	e84080e7          	jalr	-380(ra) # 80002284 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80003408:	0144a783          	lw	a5,20(s1)
    8000340c:	0104a903          	lw	s2,16(s1)
    80003410:	0327ce63          	blt	a5,s2,8000344c <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003414:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003418:	0304b503          	ld	a0,48(s1)
    8000341c:	fffff097          	auipc	ra,0xfffff
    80003420:	e94080e7          	jalr	-364(ra) # 800022b0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003424:	0284b503          	ld	a0,40(s1)
    80003428:	fffff097          	auipc	ra,0xfffff
    8000342c:	e88080e7          	jalr	-376(ra) # 800022b0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003430:	00090513          	mv	a0,s2
    80003434:	01813083          	ld	ra,24(sp)
    80003438:	01013403          	ld	s0,16(sp)
    8000343c:	00813483          	ld	s1,8(sp)
    80003440:	00013903          	ld	s2,0(sp)
    80003444:	02010113          	addi	sp,sp,32
    80003448:	00008067          	ret
        ret = cap - head + tail;
    8000344c:	0004a703          	lw	a4,0(s1)
    80003450:	4127093b          	subw	s2,a4,s2
    80003454:	00f9093b          	addw	s2,s2,a5
    80003458:	fc1ff06f          	j	80003418 <_ZN9BufferCPP6getCntEv+0x44>

000000008000345c <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    8000345c:	fe010113          	addi	sp,sp,-32
    80003460:	00113c23          	sd	ra,24(sp)
    80003464:	00813823          	sd	s0,16(sp)
    80003468:	00913423          	sd	s1,8(sp)
    8000346c:	02010413          	addi	s0,sp,32
    80003470:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003474:	00a00513          	li	a0,10
    80003478:	fffff097          	auipc	ra,0xfffff
    8000347c:	ecc080e7          	jalr	-308(ra) # 80002344 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003480:	00003517          	auipc	a0,0x3
    80003484:	c8850513          	addi	a0,a0,-888 # 80006108 <CONSOLE_STATUS+0xf8>
    80003488:	00000097          	auipc	ra,0x0
    8000348c:	a30080e7          	jalr	-1488(ra) # 80002eb8 <_Z11printStringPKc>
    while (getCnt()) {
    80003490:	00048513          	mv	a0,s1
    80003494:	00000097          	auipc	ra,0x0
    80003498:	f40080e7          	jalr	-192(ra) # 800033d4 <_ZN9BufferCPP6getCntEv>
    8000349c:	02050c63          	beqz	a0,800034d4 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    800034a0:	0084b783          	ld	a5,8(s1)
    800034a4:	0104a703          	lw	a4,16(s1)
    800034a8:	00271713          	slli	a4,a4,0x2
    800034ac:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    800034b0:	0007c503          	lbu	a0,0(a5)
    800034b4:	fffff097          	auipc	ra,0xfffff
    800034b8:	e90080e7          	jalr	-368(ra) # 80002344 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    800034bc:	0104a783          	lw	a5,16(s1)
    800034c0:	0017879b          	addiw	a5,a5,1
    800034c4:	0004a703          	lw	a4,0(s1)
    800034c8:	02e7e7bb          	remw	a5,a5,a4
    800034cc:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    800034d0:	fc1ff06f          	j	80003490 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    800034d4:	02100513          	li	a0,33
    800034d8:	fffff097          	auipc	ra,0xfffff
    800034dc:	e6c080e7          	jalr	-404(ra) # 80002344 <_ZN7Console4putcEc>
    Console::putc('\n');
    800034e0:	00a00513          	li	a0,10
    800034e4:	fffff097          	auipc	ra,0xfffff
    800034e8:	e60080e7          	jalr	-416(ra) # 80002344 <_ZN7Console4putcEc>
    mem_free(buffer);
    800034ec:	0084b503          	ld	a0,8(s1)
    800034f0:	ffffe097          	auipc	ra,0xffffe
    800034f4:	d6c080e7          	jalr	-660(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    800034f8:	0204b503          	ld	a0,32(s1)
    800034fc:	00050863          	beqz	a0,8000350c <_ZN9BufferCPPD1Ev+0xb0>
    80003500:	00053783          	ld	a5,0(a0)
    80003504:	0087b783          	ld	a5,8(a5)
    80003508:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000350c:	0184b503          	ld	a0,24(s1)
    80003510:	00050863          	beqz	a0,80003520 <_ZN9BufferCPPD1Ev+0xc4>
    80003514:	00053783          	ld	a5,0(a0)
    80003518:	0087b783          	ld	a5,8(a5)
    8000351c:	000780e7          	jalr	a5
    delete mutexTail;
    80003520:	0304b503          	ld	a0,48(s1)
    80003524:	00050863          	beqz	a0,80003534 <_ZN9BufferCPPD1Ev+0xd8>
    80003528:	00053783          	ld	a5,0(a0)
    8000352c:	0087b783          	ld	a5,8(a5)
    80003530:	000780e7          	jalr	a5
    delete mutexHead;
    80003534:	0284b503          	ld	a0,40(s1)
    80003538:	00050863          	beqz	a0,80003548 <_ZN9BufferCPPD1Ev+0xec>
    8000353c:	00053783          	ld	a5,0(a0)
    80003540:	0087b783          	ld	a5,8(a5)
    80003544:	000780e7          	jalr	a5
}
    80003548:	01813083          	ld	ra,24(sp)
    8000354c:	01013403          	ld	s0,16(sp)
    80003550:	00813483          	ld	s1,8(sp)
    80003554:	02010113          	addi	sp,sp,32
    80003558:	00008067          	ret

000000008000355c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    8000355c:	fe010113          	addi	sp,sp,-32
    80003560:	00113c23          	sd	ra,24(sp)
    80003564:	00813823          	sd	s0,16(sp)
    80003568:	00913423          	sd	s1,8(sp)
    8000356c:	01213023          	sd	s2,0(sp)
    80003570:	02010413          	addi	s0,sp,32
    80003574:	00050493          	mv	s1,a0
    80003578:	00058913          	mv	s2,a1
    8000357c:	0015879b          	addiw	a5,a1,1
    80003580:	0007851b          	sext.w	a0,a5
    80003584:	00f4a023          	sw	a5,0(s1)
    80003588:	0004a823          	sw	zero,16(s1)
    8000358c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003590:	00251513          	slli	a0,a0,0x2
    80003594:	ffffe097          	auipc	ra,0xffffe
    80003598:	ca0080e7          	jalr	-864(ra) # 80001234 <_Z9mem_allocm>
    8000359c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    800035a0:	00000593          	li	a1,0
    800035a4:	02048513          	addi	a0,s1,32
    800035a8:	ffffe097          	auipc	ra,0xffffe
    800035ac:	db8080e7          	jalr	-584(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    800035b0:	00090593          	mv	a1,s2
    800035b4:	01848513          	addi	a0,s1,24
    800035b8:	ffffe097          	auipc	ra,0xffffe
    800035bc:	da8080e7          	jalr	-600(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    800035c0:	00100593          	li	a1,1
    800035c4:	02848513          	addi	a0,s1,40
    800035c8:	ffffe097          	auipc	ra,0xffffe
    800035cc:	d98080e7          	jalr	-616(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    800035d0:	00100593          	li	a1,1
    800035d4:	03048513          	addi	a0,s1,48
    800035d8:	ffffe097          	auipc	ra,0xffffe
    800035dc:	d88080e7          	jalr	-632(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    800035e0:	01813083          	ld	ra,24(sp)
    800035e4:	01013403          	ld	s0,16(sp)
    800035e8:	00813483          	ld	s1,8(sp)
    800035ec:	00013903          	ld	s2,0(sp)
    800035f0:	02010113          	addi	sp,sp,32
    800035f4:	00008067          	ret

00000000800035f8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800035f8:	fe010113          	addi	sp,sp,-32
    800035fc:	00113c23          	sd	ra,24(sp)
    80003600:	00813823          	sd	s0,16(sp)
    80003604:	00913423          	sd	s1,8(sp)
    80003608:	01213023          	sd	s2,0(sp)
    8000360c:	02010413          	addi	s0,sp,32
    80003610:	00050493          	mv	s1,a0
    80003614:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003618:	01853503          	ld	a0,24(a0)
    8000361c:	ffffe097          	auipc	ra,0xffffe
    80003620:	da0080e7          	jalr	-608(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80003624:	0304b503          	ld	a0,48(s1)
    80003628:	ffffe097          	auipc	ra,0xffffe
    8000362c:	d94080e7          	jalr	-620(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80003630:	0084b783          	ld	a5,8(s1)
    80003634:	0144a703          	lw	a4,20(s1)
    80003638:	00271713          	slli	a4,a4,0x2
    8000363c:	00e787b3          	add	a5,a5,a4
    80003640:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003644:	0144a783          	lw	a5,20(s1)
    80003648:	0017879b          	addiw	a5,a5,1
    8000364c:	0004a703          	lw	a4,0(s1)
    80003650:	02e7e7bb          	remw	a5,a5,a4
    80003654:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003658:	0304b503          	ld	a0,48(s1)
    8000365c:	ffffe097          	auipc	ra,0xffffe
    80003660:	d8c080e7          	jalr	-628(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80003664:	0204b503          	ld	a0,32(s1)
    80003668:	ffffe097          	auipc	ra,0xffffe
    8000366c:	d80080e7          	jalr	-640(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    80003670:	01813083          	ld	ra,24(sp)
    80003674:	01013403          	ld	s0,16(sp)
    80003678:	00813483          	ld	s1,8(sp)
    8000367c:	00013903          	ld	s2,0(sp)
    80003680:	02010113          	addi	sp,sp,32
    80003684:	00008067          	ret

0000000080003688 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003688:	fe010113          	addi	sp,sp,-32
    8000368c:	00113c23          	sd	ra,24(sp)
    80003690:	00813823          	sd	s0,16(sp)
    80003694:	00913423          	sd	s1,8(sp)
    80003698:	01213023          	sd	s2,0(sp)
    8000369c:	02010413          	addi	s0,sp,32
    800036a0:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800036a4:	02053503          	ld	a0,32(a0)
    800036a8:	ffffe097          	auipc	ra,0xffffe
    800036ac:	d14080e7          	jalr	-748(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    800036b0:	0284b503          	ld	a0,40(s1)
    800036b4:	ffffe097          	auipc	ra,0xffffe
    800036b8:	d08080e7          	jalr	-760(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    800036bc:	0084b703          	ld	a4,8(s1)
    800036c0:	0104a783          	lw	a5,16(s1)
    800036c4:	00279693          	slli	a3,a5,0x2
    800036c8:	00d70733          	add	a4,a4,a3
    800036cc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    800036d0:	0017879b          	addiw	a5,a5,1
    800036d4:	0004a703          	lw	a4,0(s1)
    800036d8:	02e7e7bb          	remw	a5,a5,a4
    800036dc:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    800036e0:	0284b503          	ld	a0,40(s1)
    800036e4:	ffffe097          	auipc	ra,0xffffe
    800036e8:	d04080e7          	jalr	-764(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    800036ec:	0184b503          	ld	a0,24(s1)
    800036f0:	ffffe097          	auipc	ra,0xffffe
    800036f4:	cf8080e7          	jalr	-776(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    800036f8:	00090513          	mv	a0,s2
    800036fc:	01813083          	ld	ra,24(sp)
    80003700:	01013403          	ld	s0,16(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	00013903          	ld	s2,0(sp)
    8000370c:	02010113          	addi	sp,sp,32
    80003710:	00008067          	ret

0000000080003714 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003714:	fe010113          	addi	sp,sp,-32
    80003718:	00113c23          	sd	ra,24(sp)
    8000371c:	00813823          	sd	s0,16(sp)
    80003720:	00913423          	sd	s1,8(sp)
    80003724:	01213023          	sd	s2,0(sp)
    80003728:	02010413          	addi	s0,sp,32
    8000372c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003730:	02853503          	ld	a0,40(a0)
    80003734:	ffffe097          	auipc	ra,0xffffe
    80003738:	c88080e7          	jalr	-888(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    8000373c:	0304b503          	ld	a0,48(s1)
    80003740:	ffffe097          	auipc	ra,0xffffe
    80003744:	c7c080e7          	jalr	-900(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003748:	0144a783          	lw	a5,20(s1)
    8000374c:	0104a903          	lw	s2,16(s1)
    80003750:	0327ce63          	blt	a5,s2,8000378c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003754:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003758:	0304b503          	ld	a0,48(s1)
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	c8c080e7          	jalr	-884(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80003764:	0284b503          	ld	a0,40(s1)
    80003768:	ffffe097          	auipc	ra,0xffffe
    8000376c:	c80080e7          	jalr	-896(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003770:	00090513          	mv	a0,s2
    80003774:	01813083          	ld	ra,24(sp)
    80003778:	01013403          	ld	s0,16(sp)
    8000377c:	00813483          	ld	s1,8(sp)
    80003780:	00013903          	ld	s2,0(sp)
    80003784:	02010113          	addi	sp,sp,32
    80003788:	00008067          	ret
        ret = cap - head + tail;
    8000378c:	0004a703          	lw	a4,0(s1)
    80003790:	4127093b          	subw	s2,a4,s2
    80003794:	00f9093b          	addw	s2,s2,a5
    80003798:	fc1ff06f          	j	80003758 <_ZN6Buffer6getCntEv+0x44>

000000008000379c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000379c:	fe010113          	addi	sp,sp,-32
    800037a0:	00113c23          	sd	ra,24(sp)
    800037a4:	00813823          	sd	s0,16(sp)
    800037a8:	00913423          	sd	s1,8(sp)
    800037ac:	02010413          	addi	s0,sp,32
    800037b0:	00050493          	mv	s1,a0
    putc('\n');
    800037b4:	00a00513          	li	a0,10
    800037b8:	ffffe097          	auipc	ra,0xffffe
    800037bc:	c84080e7          	jalr	-892(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    800037c0:	00003517          	auipc	a0,0x3
    800037c4:	94850513          	addi	a0,a0,-1720 # 80006108 <CONSOLE_STATUS+0xf8>
    800037c8:	fffff097          	auipc	ra,0xfffff
    800037cc:	6f0080e7          	jalr	1776(ra) # 80002eb8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    800037d0:	00048513          	mv	a0,s1
    800037d4:	00000097          	auipc	ra,0x0
    800037d8:	f40080e7          	jalr	-192(ra) # 80003714 <_ZN6Buffer6getCntEv>
    800037dc:	02a05c63          	blez	a0,80003814 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    800037e0:	0084b783          	ld	a5,8(s1)
    800037e4:	0104a703          	lw	a4,16(s1)
    800037e8:	00271713          	slli	a4,a4,0x2
    800037ec:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800037f0:	0007c503          	lbu	a0,0(a5)
    800037f4:	ffffe097          	auipc	ra,0xffffe
    800037f8:	c48080e7          	jalr	-952(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    800037fc:	0104a783          	lw	a5,16(s1)
    80003800:	0017879b          	addiw	a5,a5,1
    80003804:	0004a703          	lw	a4,0(s1)
    80003808:	02e7e7bb          	remw	a5,a5,a4
    8000380c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003810:	fc1ff06f          	j	800037d0 <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80003814:	02100513          	li	a0,33
    80003818:	00002097          	auipc	ra,0x2
    8000381c:	124080e7          	jalr	292(ra) # 8000593c <__putc>
    __putc('\n');
    80003820:	00a00513          	li	a0,10
    80003824:	00002097          	auipc	ra,0x2
    80003828:	118080e7          	jalr	280(ra) # 8000593c <__putc>
    mem_free(buffer);
    8000382c:	0084b503          	ld	a0,8(s1)
    80003830:	ffffe097          	auipc	ra,0xffffe
    80003834:	a2c080e7          	jalr	-1492(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003838:	0204b503          	ld	a0,32(s1)
    8000383c:	ffffe097          	auipc	ra,0xffffe
    80003840:	b54080e7          	jalr	-1196(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    80003844:	0184b503          	ld	a0,24(s1)
    80003848:	ffffe097          	auipc	ra,0xffffe
    8000384c:	b48080e7          	jalr	-1208(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003850:	0304b503          	ld	a0,48(s1)
    80003854:	ffffe097          	auipc	ra,0xffffe
    80003858:	b3c080e7          	jalr	-1220(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    8000385c:	0284b503          	ld	a0,40(s1)
    80003860:	ffffe097          	auipc	ra,0xffffe
    80003864:	b30080e7          	jalr	-1232(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003868:	01813083          	ld	ra,24(sp)
    8000386c:	01013403          	ld	s0,16(sp)
    80003870:	00813483          	ld	s1,8(sp)
    80003874:	02010113          	addi	sp,sp,32
    80003878:	00008067          	ret

000000008000387c <start>:
    8000387c:	ff010113          	addi	sp,sp,-16
    80003880:	00813423          	sd	s0,8(sp)
    80003884:	01010413          	addi	s0,sp,16
    80003888:	300027f3          	csrr	a5,mstatus
    8000388c:	ffffe737          	lui	a4,0xffffe
    80003890:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5def>
    80003894:	00e7f7b3          	and	a5,a5,a4
    80003898:	00001737          	lui	a4,0x1
    8000389c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800038a0:	00e7e7b3          	or	a5,a5,a4
    800038a4:	30079073          	csrw	mstatus,a5
    800038a8:	00000797          	auipc	a5,0x0
    800038ac:	16078793          	addi	a5,a5,352 # 80003a08 <system_main>
    800038b0:	34179073          	csrw	mepc,a5
    800038b4:	00000793          	li	a5,0
    800038b8:	18079073          	csrw	satp,a5
    800038bc:	000107b7          	lui	a5,0x10
    800038c0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800038c4:	30279073          	csrw	medeleg,a5
    800038c8:	30379073          	csrw	mideleg,a5
    800038cc:	104027f3          	csrr	a5,sie
    800038d0:	2227e793          	ori	a5,a5,546
    800038d4:	10479073          	csrw	sie,a5
    800038d8:	fff00793          	li	a5,-1
    800038dc:	00a7d793          	srli	a5,a5,0xa
    800038e0:	3b079073          	csrw	pmpaddr0,a5
    800038e4:	00f00793          	li	a5,15
    800038e8:	3a079073          	csrw	pmpcfg0,a5
    800038ec:	f14027f3          	csrr	a5,mhartid
    800038f0:	0200c737          	lui	a4,0x200c
    800038f4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800038f8:	0007869b          	sext.w	a3,a5
    800038fc:	00269713          	slli	a4,a3,0x2
    80003900:	000f4637          	lui	a2,0xf4
    80003904:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003908:	00d70733          	add	a4,a4,a3
    8000390c:	0037979b          	slliw	a5,a5,0x3
    80003910:	020046b7          	lui	a3,0x2004
    80003914:	00d787b3          	add	a5,a5,a3
    80003918:	00c585b3          	add	a1,a1,a2
    8000391c:	00371693          	slli	a3,a4,0x3
    80003920:	00004717          	auipc	a4,0x4
    80003924:	e9070713          	addi	a4,a4,-368 # 800077b0 <timer_scratch>
    80003928:	00b7b023          	sd	a1,0(a5)
    8000392c:	00d70733          	add	a4,a4,a3
    80003930:	00f73c23          	sd	a5,24(a4)
    80003934:	02c73023          	sd	a2,32(a4)
    80003938:	34071073          	csrw	mscratch,a4
    8000393c:	00000797          	auipc	a5,0x0
    80003940:	6e478793          	addi	a5,a5,1764 # 80004020 <timervec>
    80003944:	30579073          	csrw	mtvec,a5
    80003948:	300027f3          	csrr	a5,mstatus
    8000394c:	0087e793          	ori	a5,a5,8
    80003950:	30079073          	csrw	mstatus,a5
    80003954:	304027f3          	csrr	a5,mie
    80003958:	0807e793          	ori	a5,a5,128
    8000395c:	30479073          	csrw	mie,a5
    80003960:	f14027f3          	csrr	a5,mhartid
    80003964:	0007879b          	sext.w	a5,a5
    80003968:	00078213          	mv	tp,a5
    8000396c:	30200073          	mret
    80003970:	00813403          	ld	s0,8(sp)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret

000000008000397c <timerinit>:
    8000397c:	ff010113          	addi	sp,sp,-16
    80003980:	00813423          	sd	s0,8(sp)
    80003984:	01010413          	addi	s0,sp,16
    80003988:	f14027f3          	csrr	a5,mhartid
    8000398c:	0200c737          	lui	a4,0x200c
    80003990:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003994:	0007869b          	sext.w	a3,a5
    80003998:	00269713          	slli	a4,a3,0x2
    8000399c:	000f4637          	lui	a2,0xf4
    800039a0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800039a4:	00d70733          	add	a4,a4,a3
    800039a8:	0037979b          	slliw	a5,a5,0x3
    800039ac:	020046b7          	lui	a3,0x2004
    800039b0:	00d787b3          	add	a5,a5,a3
    800039b4:	00c585b3          	add	a1,a1,a2
    800039b8:	00371693          	slli	a3,a4,0x3
    800039bc:	00004717          	auipc	a4,0x4
    800039c0:	df470713          	addi	a4,a4,-524 # 800077b0 <timer_scratch>
    800039c4:	00b7b023          	sd	a1,0(a5)
    800039c8:	00d70733          	add	a4,a4,a3
    800039cc:	00f73c23          	sd	a5,24(a4)
    800039d0:	02c73023          	sd	a2,32(a4)
    800039d4:	34071073          	csrw	mscratch,a4
    800039d8:	00000797          	auipc	a5,0x0
    800039dc:	64878793          	addi	a5,a5,1608 # 80004020 <timervec>
    800039e0:	30579073          	csrw	mtvec,a5
    800039e4:	300027f3          	csrr	a5,mstatus
    800039e8:	0087e793          	ori	a5,a5,8
    800039ec:	30079073          	csrw	mstatus,a5
    800039f0:	304027f3          	csrr	a5,mie
    800039f4:	0807e793          	ori	a5,a5,128
    800039f8:	30479073          	csrw	mie,a5
    800039fc:	00813403          	ld	s0,8(sp)
    80003a00:	01010113          	addi	sp,sp,16
    80003a04:	00008067          	ret

0000000080003a08 <system_main>:
    80003a08:	fe010113          	addi	sp,sp,-32
    80003a0c:	00813823          	sd	s0,16(sp)
    80003a10:	00913423          	sd	s1,8(sp)
    80003a14:	00113c23          	sd	ra,24(sp)
    80003a18:	02010413          	addi	s0,sp,32
    80003a1c:	00000097          	auipc	ra,0x0
    80003a20:	0c4080e7          	jalr	196(ra) # 80003ae0 <cpuid>
    80003a24:	00004497          	auipc	s1,0x4
    80003a28:	d0c48493          	addi	s1,s1,-756 # 80007730 <started>
    80003a2c:	02050263          	beqz	a0,80003a50 <system_main+0x48>
    80003a30:	0004a783          	lw	a5,0(s1)
    80003a34:	0007879b          	sext.w	a5,a5
    80003a38:	fe078ce3          	beqz	a5,80003a30 <system_main+0x28>
    80003a3c:	0ff0000f          	fence
    80003a40:	00002517          	auipc	a0,0x2
    80003a44:	71050513          	addi	a0,a0,1808 # 80006150 <CONSOLE_STATUS+0x140>
    80003a48:	00001097          	auipc	ra,0x1
    80003a4c:	a74080e7          	jalr	-1420(ra) # 800044bc <panic>
    80003a50:	00001097          	auipc	ra,0x1
    80003a54:	9c8080e7          	jalr	-1592(ra) # 80004418 <consoleinit>
    80003a58:	00001097          	auipc	ra,0x1
    80003a5c:	154080e7          	jalr	340(ra) # 80004bac <printfinit>
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	5f850513          	addi	a0,a0,1528 # 80006058 <CONSOLE_STATUS+0x48>
    80003a68:	00001097          	auipc	ra,0x1
    80003a6c:	ab0080e7          	jalr	-1360(ra) # 80004518 <__printf>
    80003a70:	00002517          	auipc	a0,0x2
    80003a74:	6b050513          	addi	a0,a0,1712 # 80006120 <CONSOLE_STATUS+0x110>
    80003a78:	00001097          	auipc	ra,0x1
    80003a7c:	aa0080e7          	jalr	-1376(ra) # 80004518 <__printf>
    80003a80:	00002517          	auipc	a0,0x2
    80003a84:	5d850513          	addi	a0,a0,1496 # 80006058 <CONSOLE_STATUS+0x48>
    80003a88:	00001097          	auipc	ra,0x1
    80003a8c:	a90080e7          	jalr	-1392(ra) # 80004518 <__printf>
    80003a90:	00001097          	auipc	ra,0x1
    80003a94:	4a8080e7          	jalr	1192(ra) # 80004f38 <kinit>
    80003a98:	00000097          	auipc	ra,0x0
    80003a9c:	148080e7          	jalr	328(ra) # 80003be0 <trapinit>
    80003aa0:	00000097          	auipc	ra,0x0
    80003aa4:	16c080e7          	jalr	364(ra) # 80003c0c <trapinithart>
    80003aa8:	00000097          	auipc	ra,0x0
    80003aac:	5b8080e7          	jalr	1464(ra) # 80004060 <plicinit>
    80003ab0:	00000097          	auipc	ra,0x0
    80003ab4:	5d8080e7          	jalr	1496(ra) # 80004088 <plicinithart>
    80003ab8:	00000097          	auipc	ra,0x0
    80003abc:	078080e7          	jalr	120(ra) # 80003b30 <userinit>
    80003ac0:	0ff0000f          	fence
    80003ac4:	00100793          	li	a5,1
    80003ac8:	00002517          	auipc	a0,0x2
    80003acc:	67050513          	addi	a0,a0,1648 # 80006138 <CONSOLE_STATUS+0x128>
    80003ad0:	00f4a023          	sw	a5,0(s1)
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	a44080e7          	jalr	-1468(ra) # 80004518 <__printf>
    80003adc:	0000006f          	j	80003adc <system_main+0xd4>

0000000080003ae0 <cpuid>:
    80003ae0:	ff010113          	addi	sp,sp,-16
    80003ae4:	00813423          	sd	s0,8(sp)
    80003ae8:	01010413          	addi	s0,sp,16
    80003aec:	00020513          	mv	a0,tp
    80003af0:	00813403          	ld	s0,8(sp)
    80003af4:	0005051b          	sext.w	a0,a0
    80003af8:	01010113          	addi	sp,sp,16
    80003afc:	00008067          	ret

0000000080003b00 <mycpu>:
    80003b00:	ff010113          	addi	sp,sp,-16
    80003b04:	00813423          	sd	s0,8(sp)
    80003b08:	01010413          	addi	s0,sp,16
    80003b0c:	00020793          	mv	a5,tp
    80003b10:	00813403          	ld	s0,8(sp)
    80003b14:	0007879b          	sext.w	a5,a5
    80003b18:	00779793          	slli	a5,a5,0x7
    80003b1c:	00005517          	auipc	a0,0x5
    80003b20:	cc450513          	addi	a0,a0,-828 # 800087e0 <cpus>
    80003b24:	00f50533          	add	a0,a0,a5
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <userinit>:
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00813423          	sd	s0,8(sp)
    80003b38:	01010413          	addi	s0,sp,16
    80003b3c:	00813403          	ld	s0,8(sp)
    80003b40:	01010113          	addi	sp,sp,16
    80003b44:	ffffe317          	auipc	t1,0xffffe
    80003b48:	45c30067          	jr	1116(t1) # 80001fa0 <main>

0000000080003b4c <either_copyout>:
    80003b4c:	ff010113          	addi	sp,sp,-16
    80003b50:	00813023          	sd	s0,0(sp)
    80003b54:	00113423          	sd	ra,8(sp)
    80003b58:	01010413          	addi	s0,sp,16
    80003b5c:	02051663          	bnez	a0,80003b88 <either_copyout+0x3c>
    80003b60:	00058513          	mv	a0,a1
    80003b64:	00060593          	mv	a1,a2
    80003b68:	0006861b          	sext.w	a2,a3
    80003b6c:	00002097          	auipc	ra,0x2
    80003b70:	c58080e7          	jalr	-936(ra) # 800057c4 <__memmove>
    80003b74:	00813083          	ld	ra,8(sp)
    80003b78:	00013403          	ld	s0,0(sp)
    80003b7c:	00000513          	li	a0,0
    80003b80:	01010113          	addi	sp,sp,16
    80003b84:	00008067          	ret
    80003b88:	00002517          	auipc	a0,0x2
    80003b8c:	5f050513          	addi	a0,a0,1520 # 80006178 <CONSOLE_STATUS+0x168>
    80003b90:	00001097          	auipc	ra,0x1
    80003b94:	92c080e7          	jalr	-1748(ra) # 800044bc <panic>

0000000080003b98 <either_copyin>:
    80003b98:	ff010113          	addi	sp,sp,-16
    80003b9c:	00813023          	sd	s0,0(sp)
    80003ba0:	00113423          	sd	ra,8(sp)
    80003ba4:	01010413          	addi	s0,sp,16
    80003ba8:	02059463          	bnez	a1,80003bd0 <either_copyin+0x38>
    80003bac:	00060593          	mv	a1,a2
    80003bb0:	0006861b          	sext.w	a2,a3
    80003bb4:	00002097          	auipc	ra,0x2
    80003bb8:	c10080e7          	jalr	-1008(ra) # 800057c4 <__memmove>
    80003bbc:	00813083          	ld	ra,8(sp)
    80003bc0:	00013403          	ld	s0,0(sp)
    80003bc4:	00000513          	li	a0,0
    80003bc8:	01010113          	addi	sp,sp,16
    80003bcc:	00008067          	ret
    80003bd0:	00002517          	auipc	a0,0x2
    80003bd4:	5d050513          	addi	a0,a0,1488 # 800061a0 <CONSOLE_STATUS+0x190>
    80003bd8:	00001097          	auipc	ra,0x1
    80003bdc:	8e4080e7          	jalr	-1820(ra) # 800044bc <panic>

0000000080003be0 <trapinit>:
    80003be0:	ff010113          	addi	sp,sp,-16
    80003be4:	00813423          	sd	s0,8(sp)
    80003be8:	01010413          	addi	s0,sp,16
    80003bec:	00813403          	ld	s0,8(sp)
    80003bf0:	00002597          	auipc	a1,0x2
    80003bf4:	5d858593          	addi	a1,a1,1496 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80003bf8:	00005517          	auipc	a0,0x5
    80003bfc:	c6850513          	addi	a0,a0,-920 # 80008860 <tickslock>
    80003c00:	01010113          	addi	sp,sp,16
    80003c04:	00001317          	auipc	t1,0x1
    80003c08:	5c430067          	jr	1476(t1) # 800051c8 <initlock>

0000000080003c0c <trapinithart>:
    80003c0c:	ff010113          	addi	sp,sp,-16
    80003c10:	00813423          	sd	s0,8(sp)
    80003c14:	01010413          	addi	s0,sp,16
    80003c18:	00000797          	auipc	a5,0x0
    80003c1c:	2f878793          	addi	a5,a5,760 # 80003f10 <kernelvec>
    80003c20:	10579073          	csrw	stvec,a5
    80003c24:	00813403          	ld	s0,8(sp)
    80003c28:	01010113          	addi	sp,sp,16
    80003c2c:	00008067          	ret

0000000080003c30 <usertrap>:
    80003c30:	ff010113          	addi	sp,sp,-16
    80003c34:	00813423          	sd	s0,8(sp)
    80003c38:	01010413          	addi	s0,sp,16
    80003c3c:	00813403          	ld	s0,8(sp)
    80003c40:	01010113          	addi	sp,sp,16
    80003c44:	00008067          	ret

0000000080003c48 <usertrapret>:
    80003c48:	ff010113          	addi	sp,sp,-16
    80003c4c:	00813423          	sd	s0,8(sp)
    80003c50:	01010413          	addi	s0,sp,16
    80003c54:	00813403          	ld	s0,8(sp)
    80003c58:	01010113          	addi	sp,sp,16
    80003c5c:	00008067          	ret

0000000080003c60 <kerneltrap>:
    80003c60:	fe010113          	addi	sp,sp,-32
    80003c64:	00813823          	sd	s0,16(sp)
    80003c68:	00113c23          	sd	ra,24(sp)
    80003c6c:	00913423          	sd	s1,8(sp)
    80003c70:	02010413          	addi	s0,sp,32
    80003c74:	142025f3          	csrr	a1,scause
    80003c78:	100027f3          	csrr	a5,sstatus
    80003c7c:	0027f793          	andi	a5,a5,2
    80003c80:	10079c63          	bnez	a5,80003d98 <kerneltrap+0x138>
    80003c84:	142027f3          	csrr	a5,scause
    80003c88:	0207ce63          	bltz	a5,80003cc4 <kerneltrap+0x64>
    80003c8c:	00002517          	auipc	a0,0x2
    80003c90:	58450513          	addi	a0,a0,1412 # 80006210 <CONSOLE_STATUS+0x200>
    80003c94:	00001097          	auipc	ra,0x1
    80003c98:	884080e7          	jalr	-1916(ra) # 80004518 <__printf>
    80003c9c:	141025f3          	csrr	a1,sepc
    80003ca0:	14302673          	csrr	a2,stval
    80003ca4:	00002517          	auipc	a0,0x2
    80003ca8:	57c50513          	addi	a0,a0,1404 # 80006220 <CONSOLE_STATUS+0x210>
    80003cac:	00001097          	auipc	ra,0x1
    80003cb0:	86c080e7          	jalr	-1940(ra) # 80004518 <__printf>
    80003cb4:	00002517          	auipc	a0,0x2
    80003cb8:	58450513          	addi	a0,a0,1412 # 80006238 <CONSOLE_STATUS+0x228>
    80003cbc:	00001097          	auipc	ra,0x1
    80003cc0:	800080e7          	jalr	-2048(ra) # 800044bc <panic>
    80003cc4:	0ff7f713          	andi	a4,a5,255
    80003cc8:	00900693          	li	a3,9
    80003ccc:	04d70063          	beq	a4,a3,80003d0c <kerneltrap+0xac>
    80003cd0:	fff00713          	li	a4,-1
    80003cd4:	03f71713          	slli	a4,a4,0x3f
    80003cd8:	00170713          	addi	a4,a4,1
    80003cdc:	fae798e3          	bne	a5,a4,80003c8c <kerneltrap+0x2c>
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	e00080e7          	jalr	-512(ra) # 80003ae0 <cpuid>
    80003ce8:	06050663          	beqz	a0,80003d54 <kerneltrap+0xf4>
    80003cec:	144027f3          	csrr	a5,sip
    80003cf0:	ffd7f793          	andi	a5,a5,-3
    80003cf4:	14479073          	csrw	sip,a5
    80003cf8:	01813083          	ld	ra,24(sp)
    80003cfc:	01013403          	ld	s0,16(sp)
    80003d00:	00813483          	ld	s1,8(sp)
    80003d04:	02010113          	addi	sp,sp,32
    80003d08:	00008067          	ret
    80003d0c:	00000097          	auipc	ra,0x0
    80003d10:	3c8080e7          	jalr	968(ra) # 800040d4 <plic_claim>
    80003d14:	00a00793          	li	a5,10
    80003d18:	00050493          	mv	s1,a0
    80003d1c:	06f50863          	beq	a0,a5,80003d8c <kerneltrap+0x12c>
    80003d20:	fc050ce3          	beqz	a0,80003cf8 <kerneltrap+0x98>
    80003d24:	00050593          	mv	a1,a0
    80003d28:	00002517          	auipc	a0,0x2
    80003d2c:	4c850513          	addi	a0,a0,1224 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003d30:	00000097          	auipc	ra,0x0
    80003d34:	7e8080e7          	jalr	2024(ra) # 80004518 <__printf>
    80003d38:	01013403          	ld	s0,16(sp)
    80003d3c:	01813083          	ld	ra,24(sp)
    80003d40:	00048513          	mv	a0,s1
    80003d44:	00813483          	ld	s1,8(sp)
    80003d48:	02010113          	addi	sp,sp,32
    80003d4c:	00000317          	auipc	t1,0x0
    80003d50:	3c030067          	jr	960(t1) # 8000410c <plic_complete>
    80003d54:	00005517          	auipc	a0,0x5
    80003d58:	b0c50513          	addi	a0,a0,-1268 # 80008860 <tickslock>
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	490080e7          	jalr	1168(ra) # 800051ec <acquire>
    80003d64:	00004717          	auipc	a4,0x4
    80003d68:	9d070713          	addi	a4,a4,-1584 # 80007734 <ticks>
    80003d6c:	00072783          	lw	a5,0(a4)
    80003d70:	00005517          	auipc	a0,0x5
    80003d74:	af050513          	addi	a0,a0,-1296 # 80008860 <tickslock>
    80003d78:	0017879b          	addiw	a5,a5,1
    80003d7c:	00f72023          	sw	a5,0(a4)
    80003d80:	00001097          	auipc	ra,0x1
    80003d84:	538080e7          	jalr	1336(ra) # 800052b8 <release>
    80003d88:	f65ff06f          	j	80003cec <kerneltrap+0x8c>
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	094080e7          	jalr	148(ra) # 80004e20 <uartintr>
    80003d94:	fa5ff06f          	j	80003d38 <kerneltrap+0xd8>
    80003d98:	00002517          	auipc	a0,0x2
    80003d9c:	43850513          	addi	a0,a0,1080 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003da0:	00000097          	auipc	ra,0x0
    80003da4:	71c080e7          	jalr	1820(ra) # 800044bc <panic>

0000000080003da8 <clockintr>:
    80003da8:	fe010113          	addi	sp,sp,-32
    80003dac:	00813823          	sd	s0,16(sp)
    80003db0:	00913423          	sd	s1,8(sp)
    80003db4:	00113c23          	sd	ra,24(sp)
    80003db8:	02010413          	addi	s0,sp,32
    80003dbc:	00005497          	auipc	s1,0x5
    80003dc0:	aa448493          	addi	s1,s1,-1372 # 80008860 <tickslock>
    80003dc4:	00048513          	mv	a0,s1
    80003dc8:	00001097          	auipc	ra,0x1
    80003dcc:	424080e7          	jalr	1060(ra) # 800051ec <acquire>
    80003dd0:	00004717          	auipc	a4,0x4
    80003dd4:	96470713          	addi	a4,a4,-1692 # 80007734 <ticks>
    80003dd8:	00072783          	lw	a5,0(a4)
    80003ddc:	01013403          	ld	s0,16(sp)
    80003de0:	01813083          	ld	ra,24(sp)
    80003de4:	00048513          	mv	a0,s1
    80003de8:	0017879b          	addiw	a5,a5,1
    80003dec:	00813483          	ld	s1,8(sp)
    80003df0:	00f72023          	sw	a5,0(a4)
    80003df4:	02010113          	addi	sp,sp,32
    80003df8:	00001317          	auipc	t1,0x1
    80003dfc:	4c030067          	jr	1216(t1) # 800052b8 <release>

0000000080003e00 <devintr>:
    80003e00:	142027f3          	csrr	a5,scause
    80003e04:	00000513          	li	a0,0
    80003e08:	0007c463          	bltz	a5,80003e10 <devintr+0x10>
    80003e0c:	00008067          	ret
    80003e10:	fe010113          	addi	sp,sp,-32
    80003e14:	00813823          	sd	s0,16(sp)
    80003e18:	00113c23          	sd	ra,24(sp)
    80003e1c:	00913423          	sd	s1,8(sp)
    80003e20:	02010413          	addi	s0,sp,32
    80003e24:	0ff7f713          	andi	a4,a5,255
    80003e28:	00900693          	li	a3,9
    80003e2c:	04d70c63          	beq	a4,a3,80003e84 <devintr+0x84>
    80003e30:	fff00713          	li	a4,-1
    80003e34:	03f71713          	slli	a4,a4,0x3f
    80003e38:	00170713          	addi	a4,a4,1
    80003e3c:	00e78c63          	beq	a5,a4,80003e54 <devintr+0x54>
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	01013403          	ld	s0,16(sp)
    80003e48:	00813483          	ld	s1,8(sp)
    80003e4c:	02010113          	addi	sp,sp,32
    80003e50:	00008067          	ret
    80003e54:	00000097          	auipc	ra,0x0
    80003e58:	c8c080e7          	jalr	-884(ra) # 80003ae0 <cpuid>
    80003e5c:	06050663          	beqz	a0,80003ec8 <devintr+0xc8>
    80003e60:	144027f3          	csrr	a5,sip
    80003e64:	ffd7f793          	andi	a5,a5,-3
    80003e68:	14479073          	csrw	sip,a5
    80003e6c:	01813083          	ld	ra,24(sp)
    80003e70:	01013403          	ld	s0,16(sp)
    80003e74:	00813483          	ld	s1,8(sp)
    80003e78:	00200513          	li	a0,2
    80003e7c:	02010113          	addi	sp,sp,32
    80003e80:	00008067          	ret
    80003e84:	00000097          	auipc	ra,0x0
    80003e88:	250080e7          	jalr	592(ra) # 800040d4 <plic_claim>
    80003e8c:	00a00793          	li	a5,10
    80003e90:	00050493          	mv	s1,a0
    80003e94:	06f50663          	beq	a0,a5,80003f00 <devintr+0x100>
    80003e98:	00100513          	li	a0,1
    80003e9c:	fa0482e3          	beqz	s1,80003e40 <devintr+0x40>
    80003ea0:	00048593          	mv	a1,s1
    80003ea4:	00002517          	auipc	a0,0x2
    80003ea8:	34c50513          	addi	a0,a0,844 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003eac:	00000097          	auipc	ra,0x0
    80003eb0:	66c080e7          	jalr	1644(ra) # 80004518 <__printf>
    80003eb4:	00048513          	mv	a0,s1
    80003eb8:	00000097          	auipc	ra,0x0
    80003ebc:	254080e7          	jalr	596(ra) # 8000410c <plic_complete>
    80003ec0:	00100513          	li	a0,1
    80003ec4:	f7dff06f          	j	80003e40 <devintr+0x40>
    80003ec8:	00005517          	auipc	a0,0x5
    80003ecc:	99850513          	addi	a0,a0,-1640 # 80008860 <tickslock>
    80003ed0:	00001097          	auipc	ra,0x1
    80003ed4:	31c080e7          	jalr	796(ra) # 800051ec <acquire>
    80003ed8:	00004717          	auipc	a4,0x4
    80003edc:	85c70713          	addi	a4,a4,-1956 # 80007734 <ticks>
    80003ee0:	00072783          	lw	a5,0(a4)
    80003ee4:	00005517          	auipc	a0,0x5
    80003ee8:	97c50513          	addi	a0,a0,-1668 # 80008860 <tickslock>
    80003eec:	0017879b          	addiw	a5,a5,1
    80003ef0:	00f72023          	sw	a5,0(a4)
    80003ef4:	00001097          	auipc	ra,0x1
    80003ef8:	3c4080e7          	jalr	964(ra) # 800052b8 <release>
    80003efc:	f65ff06f          	j	80003e60 <devintr+0x60>
    80003f00:	00001097          	auipc	ra,0x1
    80003f04:	f20080e7          	jalr	-224(ra) # 80004e20 <uartintr>
    80003f08:	fadff06f          	j	80003eb4 <devintr+0xb4>
    80003f0c:	0000                	unimp
	...

0000000080003f10 <kernelvec>:
    80003f10:	f0010113          	addi	sp,sp,-256
    80003f14:	00113023          	sd	ra,0(sp)
    80003f18:	00213423          	sd	sp,8(sp)
    80003f1c:	00313823          	sd	gp,16(sp)
    80003f20:	00413c23          	sd	tp,24(sp)
    80003f24:	02513023          	sd	t0,32(sp)
    80003f28:	02613423          	sd	t1,40(sp)
    80003f2c:	02713823          	sd	t2,48(sp)
    80003f30:	02813c23          	sd	s0,56(sp)
    80003f34:	04913023          	sd	s1,64(sp)
    80003f38:	04a13423          	sd	a0,72(sp)
    80003f3c:	04b13823          	sd	a1,80(sp)
    80003f40:	04c13c23          	sd	a2,88(sp)
    80003f44:	06d13023          	sd	a3,96(sp)
    80003f48:	06e13423          	sd	a4,104(sp)
    80003f4c:	06f13823          	sd	a5,112(sp)
    80003f50:	07013c23          	sd	a6,120(sp)
    80003f54:	09113023          	sd	a7,128(sp)
    80003f58:	09213423          	sd	s2,136(sp)
    80003f5c:	09313823          	sd	s3,144(sp)
    80003f60:	09413c23          	sd	s4,152(sp)
    80003f64:	0b513023          	sd	s5,160(sp)
    80003f68:	0b613423          	sd	s6,168(sp)
    80003f6c:	0b713823          	sd	s7,176(sp)
    80003f70:	0b813c23          	sd	s8,184(sp)
    80003f74:	0d913023          	sd	s9,192(sp)
    80003f78:	0da13423          	sd	s10,200(sp)
    80003f7c:	0db13823          	sd	s11,208(sp)
    80003f80:	0dc13c23          	sd	t3,216(sp)
    80003f84:	0fd13023          	sd	t4,224(sp)
    80003f88:	0fe13423          	sd	t5,232(sp)
    80003f8c:	0ff13823          	sd	t6,240(sp)
    80003f90:	cd1ff0ef          	jal	ra,80003c60 <kerneltrap>
    80003f94:	00013083          	ld	ra,0(sp)
    80003f98:	00813103          	ld	sp,8(sp)
    80003f9c:	01013183          	ld	gp,16(sp)
    80003fa0:	02013283          	ld	t0,32(sp)
    80003fa4:	02813303          	ld	t1,40(sp)
    80003fa8:	03013383          	ld	t2,48(sp)
    80003fac:	03813403          	ld	s0,56(sp)
    80003fb0:	04013483          	ld	s1,64(sp)
    80003fb4:	04813503          	ld	a0,72(sp)
    80003fb8:	05013583          	ld	a1,80(sp)
    80003fbc:	05813603          	ld	a2,88(sp)
    80003fc0:	06013683          	ld	a3,96(sp)
    80003fc4:	06813703          	ld	a4,104(sp)
    80003fc8:	07013783          	ld	a5,112(sp)
    80003fcc:	07813803          	ld	a6,120(sp)
    80003fd0:	08013883          	ld	a7,128(sp)
    80003fd4:	08813903          	ld	s2,136(sp)
    80003fd8:	09013983          	ld	s3,144(sp)
    80003fdc:	09813a03          	ld	s4,152(sp)
    80003fe0:	0a013a83          	ld	s5,160(sp)
    80003fe4:	0a813b03          	ld	s6,168(sp)
    80003fe8:	0b013b83          	ld	s7,176(sp)
    80003fec:	0b813c03          	ld	s8,184(sp)
    80003ff0:	0c013c83          	ld	s9,192(sp)
    80003ff4:	0c813d03          	ld	s10,200(sp)
    80003ff8:	0d013d83          	ld	s11,208(sp)
    80003ffc:	0d813e03          	ld	t3,216(sp)
    80004000:	0e013e83          	ld	t4,224(sp)
    80004004:	0e813f03          	ld	t5,232(sp)
    80004008:	0f013f83          	ld	t6,240(sp)
    8000400c:	10010113          	addi	sp,sp,256
    80004010:	10200073          	sret
    80004014:	00000013          	nop
    80004018:	00000013          	nop
    8000401c:	00000013          	nop

0000000080004020 <timervec>:
    80004020:	34051573          	csrrw	a0,mscratch,a0
    80004024:	00b53023          	sd	a1,0(a0)
    80004028:	00c53423          	sd	a2,8(a0)
    8000402c:	00d53823          	sd	a3,16(a0)
    80004030:	01853583          	ld	a1,24(a0)
    80004034:	02053603          	ld	a2,32(a0)
    80004038:	0005b683          	ld	a3,0(a1)
    8000403c:	00c686b3          	add	a3,a3,a2
    80004040:	00d5b023          	sd	a3,0(a1)
    80004044:	00200593          	li	a1,2
    80004048:	14459073          	csrw	sip,a1
    8000404c:	01053683          	ld	a3,16(a0)
    80004050:	00853603          	ld	a2,8(a0)
    80004054:	00053583          	ld	a1,0(a0)
    80004058:	34051573          	csrrw	a0,mscratch,a0
    8000405c:	30200073          	mret

0000000080004060 <plicinit>:
    80004060:	ff010113          	addi	sp,sp,-16
    80004064:	00813423          	sd	s0,8(sp)
    80004068:	01010413          	addi	s0,sp,16
    8000406c:	00813403          	ld	s0,8(sp)
    80004070:	0c0007b7          	lui	a5,0xc000
    80004074:	00100713          	li	a4,1
    80004078:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000407c:	00e7a223          	sw	a4,4(a5)
    80004080:	01010113          	addi	sp,sp,16
    80004084:	00008067          	ret

0000000080004088 <plicinithart>:
    80004088:	ff010113          	addi	sp,sp,-16
    8000408c:	00813023          	sd	s0,0(sp)
    80004090:	00113423          	sd	ra,8(sp)
    80004094:	01010413          	addi	s0,sp,16
    80004098:	00000097          	auipc	ra,0x0
    8000409c:	a48080e7          	jalr	-1464(ra) # 80003ae0 <cpuid>
    800040a0:	0085171b          	slliw	a4,a0,0x8
    800040a4:	0c0027b7          	lui	a5,0xc002
    800040a8:	00e787b3          	add	a5,a5,a4
    800040ac:	40200713          	li	a4,1026
    800040b0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800040b4:	00813083          	ld	ra,8(sp)
    800040b8:	00013403          	ld	s0,0(sp)
    800040bc:	00d5151b          	slliw	a0,a0,0xd
    800040c0:	0c2017b7          	lui	a5,0xc201
    800040c4:	00a78533          	add	a0,a5,a0
    800040c8:	00052023          	sw	zero,0(a0)
    800040cc:	01010113          	addi	sp,sp,16
    800040d0:	00008067          	ret

00000000800040d4 <plic_claim>:
    800040d4:	ff010113          	addi	sp,sp,-16
    800040d8:	00813023          	sd	s0,0(sp)
    800040dc:	00113423          	sd	ra,8(sp)
    800040e0:	01010413          	addi	s0,sp,16
    800040e4:	00000097          	auipc	ra,0x0
    800040e8:	9fc080e7          	jalr	-1540(ra) # 80003ae0 <cpuid>
    800040ec:	00813083          	ld	ra,8(sp)
    800040f0:	00013403          	ld	s0,0(sp)
    800040f4:	00d5151b          	slliw	a0,a0,0xd
    800040f8:	0c2017b7          	lui	a5,0xc201
    800040fc:	00a78533          	add	a0,a5,a0
    80004100:	00452503          	lw	a0,4(a0)
    80004104:	01010113          	addi	sp,sp,16
    80004108:	00008067          	ret

000000008000410c <plic_complete>:
    8000410c:	fe010113          	addi	sp,sp,-32
    80004110:	00813823          	sd	s0,16(sp)
    80004114:	00913423          	sd	s1,8(sp)
    80004118:	00113c23          	sd	ra,24(sp)
    8000411c:	02010413          	addi	s0,sp,32
    80004120:	00050493          	mv	s1,a0
    80004124:	00000097          	auipc	ra,0x0
    80004128:	9bc080e7          	jalr	-1604(ra) # 80003ae0 <cpuid>
    8000412c:	01813083          	ld	ra,24(sp)
    80004130:	01013403          	ld	s0,16(sp)
    80004134:	00d5179b          	slliw	a5,a0,0xd
    80004138:	0c201737          	lui	a4,0xc201
    8000413c:	00f707b3          	add	a5,a4,a5
    80004140:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004144:	00813483          	ld	s1,8(sp)
    80004148:	02010113          	addi	sp,sp,32
    8000414c:	00008067          	ret

0000000080004150 <consolewrite>:
    80004150:	fb010113          	addi	sp,sp,-80
    80004154:	04813023          	sd	s0,64(sp)
    80004158:	04113423          	sd	ra,72(sp)
    8000415c:	02913c23          	sd	s1,56(sp)
    80004160:	03213823          	sd	s2,48(sp)
    80004164:	03313423          	sd	s3,40(sp)
    80004168:	03413023          	sd	s4,32(sp)
    8000416c:	01513c23          	sd	s5,24(sp)
    80004170:	05010413          	addi	s0,sp,80
    80004174:	06c05c63          	blez	a2,800041ec <consolewrite+0x9c>
    80004178:	00060993          	mv	s3,a2
    8000417c:	00050a13          	mv	s4,a0
    80004180:	00058493          	mv	s1,a1
    80004184:	00000913          	li	s2,0
    80004188:	fff00a93          	li	s5,-1
    8000418c:	01c0006f          	j	800041a8 <consolewrite+0x58>
    80004190:	fbf44503          	lbu	a0,-65(s0)
    80004194:	0019091b          	addiw	s2,s2,1
    80004198:	00148493          	addi	s1,s1,1
    8000419c:	00001097          	auipc	ra,0x1
    800041a0:	a9c080e7          	jalr	-1380(ra) # 80004c38 <uartputc>
    800041a4:	03298063          	beq	s3,s2,800041c4 <consolewrite+0x74>
    800041a8:	00048613          	mv	a2,s1
    800041ac:	00100693          	li	a3,1
    800041b0:	000a0593          	mv	a1,s4
    800041b4:	fbf40513          	addi	a0,s0,-65
    800041b8:	00000097          	auipc	ra,0x0
    800041bc:	9e0080e7          	jalr	-1568(ra) # 80003b98 <either_copyin>
    800041c0:	fd5518e3          	bne	a0,s5,80004190 <consolewrite+0x40>
    800041c4:	04813083          	ld	ra,72(sp)
    800041c8:	04013403          	ld	s0,64(sp)
    800041cc:	03813483          	ld	s1,56(sp)
    800041d0:	02813983          	ld	s3,40(sp)
    800041d4:	02013a03          	ld	s4,32(sp)
    800041d8:	01813a83          	ld	s5,24(sp)
    800041dc:	00090513          	mv	a0,s2
    800041e0:	03013903          	ld	s2,48(sp)
    800041e4:	05010113          	addi	sp,sp,80
    800041e8:	00008067          	ret
    800041ec:	00000913          	li	s2,0
    800041f0:	fd5ff06f          	j	800041c4 <consolewrite+0x74>

00000000800041f4 <consoleread>:
    800041f4:	f9010113          	addi	sp,sp,-112
    800041f8:	06813023          	sd	s0,96(sp)
    800041fc:	04913c23          	sd	s1,88(sp)
    80004200:	05213823          	sd	s2,80(sp)
    80004204:	05313423          	sd	s3,72(sp)
    80004208:	05413023          	sd	s4,64(sp)
    8000420c:	03513c23          	sd	s5,56(sp)
    80004210:	03613823          	sd	s6,48(sp)
    80004214:	03713423          	sd	s7,40(sp)
    80004218:	03813023          	sd	s8,32(sp)
    8000421c:	06113423          	sd	ra,104(sp)
    80004220:	01913c23          	sd	s9,24(sp)
    80004224:	07010413          	addi	s0,sp,112
    80004228:	00060b93          	mv	s7,a2
    8000422c:	00050913          	mv	s2,a0
    80004230:	00058c13          	mv	s8,a1
    80004234:	00060b1b          	sext.w	s6,a2
    80004238:	00004497          	auipc	s1,0x4
    8000423c:	65048493          	addi	s1,s1,1616 # 80008888 <cons>
    80004240:	00400993          	li	s3,4
    80004244:	fff00a13          	li	s4,-1
    80004248:	00a00a93          	li	s5,10
    8000424c:	05705e63          	blez	s7,800042a8 <consoleread+0xb4>
    80004250:	09c4a703          	lw	a4,156(s1)
    80004254:	0984a783          	lw	a5,152(s1)
    80004258:	0007071b          	sext.w	a4,a4
    8000425c:	08e78463          	beq	a5,a4,800042e4 <consoleread+0xf0>
    80004260:	07f7f713          	andi	a4,a5,127
    80004264:	00e48733          	add	a4,s1,a4
    80004268:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000426c:	0017869b          	addiw	a3,a5,1
    80004270:	08d4ac23          	sw	a3,152(s1)
    80004274:	00070c9b          	sext.w	s9,a4
    80004278:	0b370663          	beq	a4,s3,80004324 <consoleread+0x130>
    8000427c:	00100693          	li	a3,1
    80004280:	f9f40613          	addi	a2,s0,-97
    80004284:	000c0593          	mv	a1,s8
    80004288:	00090513          	mv	a0,s2
    8000428c:	f8e40fa3          	sb	a4,-97(s0)
    80004290:	00000097          	auipc	ra,0x0
    80004294:	8bc080e7          	jalr	-1860(ra) # 80003b4c <either_copyout>
    80004298:	01450863          	beq	a0,s4,800042a8 <consoleread+0xb4>
    8000429c:	001c0c13          	addi	s8,s8,1
    800042a0:	fffb8b9b          	addiw	s7,s7,-1
    800042a4:	fb5c94e3          	bne	s9,s5,8000424c <consoleread+0x58>
    800042a8:	000b851b          	sext.w	a0,s7
    800042ac:	06813083          	ld	ra,104(sp)
    800042b0:	06013403          	ld	s0,96(sp)
    800042b4:	05813483          	ld	s1,88(sp)
    800042b8:	05013903          	ld	s2,80(sp)
    800042bc:	04813983          	ld	s3,72(sp)
    800042c0:	04013a03          	ld	s4,64(sp)
    800042c4:	03813a83          	ld	s5,56(sp)
    800042c8:	02813b83          	ld	s7,40(sp)
    800042cc:	02013c03          	ld	s8,32(sp)
    800042d0:	01813c83          	ld	s9,24(sp)
    800042d4:	40ab053b          	subw	a0,s6,a0
    800042d8:	03013b03          	ld	s6,48(sp)
    800042dc:	07010113          	addi	sp,sp,112
    800042e0:	00008067          	ret
    800042e4:	00001097          	auipc	ra,0x1
    800042e8:	1d8080e7          	jalr	472(ra) # 800054bc <push_on>
    800042ec:	0984a703          	lw	a4,152(s1)
    800042f0:	09c4a783          	lw	a5,156(s1)
    800042f4:	0007879b          	sext.w	a5,a5
    800042f8:	fef70ce3          	beq	a4,a5,800042f0 <consoleread+0xfc>
    800042fc:	00001097          	auipc	ra,0x1
    80004300:	234080e7          	jalr	564(ra) # 80005530 <pop_on>
    80004304:	0984a783          	lw	a5,152(s1)
    80004308:	07f7f713          	andi	a4,a5,127
    8000430c:	00e48733          	add	a4,s1,a4
    80004310:	01874703          	lbu	a4,24(a4)
    80004314:	0017869b          	addiw	a3,a5,1
    80004318:	08d4ac23          	sw	a3,152(s1)
    8000431c:	00070c9b          	sext.w	s9,a4
    80004320:	f5371ee3          	bne	a4,s3,8000427c <consoleread+0x88>
    80004324:	000b851b          	sext.w	a0,s7
    80004328:	f96bf2e3          	bgeu	s7,s6,800042ac <consoleread+0xb8>
    8000432c:	08f4ac23          	sw	a5,152(s1)
    80004330:	f7dff06f          	j	800042ac <consoleread+0xb8>

0000000080004334 <consputc>:
    80004334:	10000793          	li	a5,256
    80004338:	00f50663          	beq	a0,a5,80004344 <consputc+0x10>
    8000433c:	00001317          	auipc	t1,0x1
    80004340:	9f430067          	jr	-1548(t1) # 80004d30 <uartputc_sync>
    80004344:	ff010113          	addi	sp,sp,-16
    80004348:	00113423          	sd	ra,8(sp)
    8000434c:	00813023          	sd	s0,0(sp)
    80004350:	01010413          	addi	s0,sp,16
    80004354:	00800513          	li	a0,8
    80004358:	00001097          	auipc	ra,0x1
    8000435c:	9d8080e7          	jalr	-1576(ra) # 80004d30 <uartputc_sync>
    80004360:	02000513          	li	a0,32
    80004364:	00001097          	auipc	ra,0x1
    80004368:	9cc080e7          	jalr	-1588(ra) # 80004d30 <uartputc_sync>
    8000436c:	00013403          	ld	s0,0(sp)
    80004370:	00813083          	ld	ra,8(sp)
    80004374:	00800513          	li	a0,8
    80004378:	01010113          	addi	sp,sp,16
    8000437c:	00001317          	auipc	t1,0x1
    80004380:	9b430067          	jr	-1612(t1) # 80004d30 <uartputc_sync>

0000000080004384 <consoleintr>:
    80004384:	fe010113          	addi	sp,sp,-32
    80004388:	00813823          	sd	s0,16(sp)
    8000438c:	00913423          	sd	s1,8(sp)
    80004390:	01213023          	sd	s2,0(sp)
    80004394:	00113c23          	sd	ra,24(sp)
    80004398:	02010413          	addi	s0,sp,32
    8000439c:	00004917          	auipc	s2,0x4
    800043a0:	4ec90913          	addi	s2,s2,1260 # 80008888 <cons>
    800043a4:	00050493          	mv	s1,a0
    800043a8:	00090513          	mv	a0,s2
    800043ac:	00001097          	auipc	ra,0x1
    800043b0:	e40080e7          	jalr	-448(ra) # 800051ec <acquire>
    800043b4:	02048c63          	beqz	s1,800043ec <consoleintr+0x68>
    800043b8:	0a092783          	lw	a5,160(s2)
    800043bc:	09892703          	lw	a4,152(s2)
    800043c0:	07f00693          	li	a3,127
    800043c4:	40e7873b          	subw	a4,a5,a4
    800043c8:	02e6e263          	bltu	a3,a4,800043ec <consoleintr+0x68>
    800043cc:	00d00713          	li	a4,13
    800043d0:	04e48063          	beq	s1,a4,80004410 <consoleintr+0x8c>
    800043d4:	07f7f713          	andi	a4,a5,127
    800043d8:	00e90733          	add	a4,s2,a4
    800043dc:	0017879b          	addiw	a5,a5,1
    800043e0:	0af92023          	sw	a5,160(s2)
    800043e4:	00970c23          	sb	s1,24(a4)
    800043e8:	08f92e23          	sw	a5,156(s2)
    800043ec:	01013403          	ld	s0,16(sp)
    800043f0:	01813083          	ld	ra,24(sp)
    800043f4:	00813483          	ld	s1,8(sp)
    800043f8:	00013903          	ld	s2,0(sp)
    800043fc:	00004517          	auipc	a0,0x4
    80004400:	48c50513          	addi	a0,a0,1164 # 80008888 <cons>
    80004404:	02010113          	addi	sp,sp,32
    80004408:	00001317          	auipc	t1,0x1
    8000440c:	eb030067          	jr	-336(t1) # 800052b8 <release>
    80004410:	00a00493          	li	s1,10
    80004414:	fc1ff06f          	j	800043d4 <consoleintr+0x50>

0000000080004418 <consoleinit>:
    80004418:	fe010113          	addi	sp,sp,-32
    8000441c:	00113c23          	sd	ra,24(sp)
    80004420:	00813823          	sd	s0,16(sp)
    80004424:	00913423          	sd	s1,8(sp)
    80004428:	02010413          	addi	s0,sp,32
    8000442c:	00004497          	auipc	s1,0x4
    80004430:	45c48493          	addi	s1,s1,1116 # 80008888 <cons>
    80004434:	00048513          	mv	a0,s1
    80004438:	00002597          	auipc	a1,0x2
    8000443c:	e1058593          	addi	a1,a1,-496 # 80006248 <CONSOLE_STATUS+0x238>
    80004440:	00001097          	auipc	ra,0x1
    80004444:	d88080e7          	jalr	-632(ra) # 800051c8 <initlock>
    80004448:	00000097          	auipc	ra,0x0
    8000444c:	7ac080e7          	jalr	1964(ra) # 80004bf4 <uartinit>
    80004450:	01813083          	ld	ra,24(sp)
    80004454:	01013403          	ld	s0,16(sp)
    80004458:	00000797          	auipc	a5,0x0
    8000445c:	d9c78793          	addi	a5,a5,-612 # 800041f4 <consoleread>
    80004460:	0af4bc23          	sd	a5,184(s1)
    80004464:	00000797          	auipc	a5,0x0
    80004468:	cec78793          	addi	a5,a5,-788 # 80004150 <consolewrite>
    8000446c:	0cf4b023          	sd	a5,192(s1)
    80004470:	00813483          	ld	s1,8(sp)
    80004474:	02010113          	addi	sp,sp,32
    80004478:	00008067          	ret

000000008000447c <console_read>:
    8000447c:	ff010113          	addi	sp,sp,-16
    80004480:	00813423          	sd	s0,8(sp)
    80004484:	01010413          	addi	s0,sp,16
    80004488:	00813403          	ld	s0,8(sp)
    8000448c:	00004317          	auipc	t1,0x4
    80004490:	4b433303          	ld	t1,1204(t1) # 80008940 <devsw+0x10>
    80004494:	01010113          	addi	sp,sp,16
    80004498:	00030067          	jr	t1

000000008000449c <console_write>:
    8000449c:	ff010113          	addi	sp,sp,-16
    800044a0:	00813423          	sd	s0,8(sp)
    800044a4:	01010413          	addi	s0,sp,16
    800044a8:	00813403          	ld	s0,8(sp)
    800044ac:	00004317          	auipc	t1,0x4
    800044b0:	49c33303          	ld	t1,1180(t1) # 80008948 <devsw+0x18>
    800044b4:	01010113          	addi	sp,sp,16
    800044b8:	00030067          	jr	t1

00000000800044bc <panic>:
    800044bc:	fe010113          	addi	sp,sp,-32
    800044c0:	00113c23          	sd	ra,24(sp)
    800044c4:	00813823          	sd	s0,16(sp)
    800044c8:	00913423          	sd	s1,8(sp)
    800044cc:	02010413          	addi	s0,sp,32
    800044d0:	00050493          	mv	s1,a0
    800044d4:	00002517          	auipc	a0,0x2
    800044d8:	d7c50513          	addi	a0,a0,-644 # 80006250 <CONSOLE_STATUS+0x240>
    800044dc:	00004797          	auipc	a5,0x4
    800044e0:	5007a623          	sw	zero,1292(a5) # 800089e8 <pr+0x18>
    800044e4:	00000097          	auipc	ra,0x0
    800044e8:	034080e7          	jalr	52(ra) # 80004518 <__printf>
    800044ec:	00048513          	mv	a0,s1
    800044f0:	00000097          	auipc	ra,0x0
    800044f4:	028080e7          	jalr	40(ra) # 80004518 <__printf>
    800044f8:	00002517          	auipc	a0,0x2
    800044fc:	b6050513          	addi	a0,a0,-1184 # 80006058 <CONSOLE_STATUS+0x48>
    80004500:	00000097          	auipc	ra,0x0
    80004504:	018080e7          	jalr	24(ra) # 80004518 <__printf>
    80004508:	00100793          	li	a5,1
    8000450c:	00003717          	auipc	a4,0x3
    80004510:	22f72623          	sw	a5,556(a4) # 80007738 <panicked>
    80004514:	0000006f          	j	80004514 <panic+0x58>

0000000080004518 <__printf>:
    80004518:	f3010113          	addi	sp,sp,-208
    8000451c:	08813023          	sd	s0,128(sp)
    80004520:	07313423          	sd	s3,104(sp)
    80004524:	09010413          	addi	s0,sp,144
    80004528:	05813023          	sd	s8,64(sp)
    8000452c:	08113423          	sd	ra,136(sp)
    80004530:	06913c23          	sd	s1,120(sp)
    80004534:	07213823          	sd	s2,112(sp)
    80004538:	07413023          	sd	s4,96(sp)
    8000453c:	05513c23          	sd	s5,88(sp)
    80004540:	05613823          	sd	s6,80(sp)
    80004544:	05713423          	sd	s7,72(sp)
    80004548:	03913c23          	sd	s9,56(sp)
    8000454c:	03a13823          	sd	s10,48(sp)
    80004550:	03b13423          	sd	s11,40(sp)
    80004554:	00004317          	auipc	t1,0x4
    80004558:	47c30313          	addi	t1,t1,1148 # 800089d0 <pr>
    8000455c:	01832c03          	lw	s8,24(t1)
    80004560:	00b43423          	sd	a1,8(s0)
    80004564:	00c43823          	sd	a2,16(s0)
    80004568:	00d43c23          	sd	a3,24(s0)
    8000456c:	02e43023          	sd	a4,32(s0)
    80004570:	02f43423          	sd	a5,40(s0)
    80004574:	03043823          	sd	a6,48(s0)
    80004578:	03143c23          	sd	a7,56(s0)
    8000457c:	00050993          	mv	s3,a0
    80004580:	4a0c1663          	bnez	s8,80004a2c <__printf+0x514>
    80004584:	60098c63          	beqz	s3,80004b9c <__printf+0x684>
    80004588:	0009c503          	lbu	a0,0(s3)
    8000458c:	00840793          	addi	a5,s0,8
    80004590:	f6f43c23          	sd	a5,-136(s0)
    80004594:	00000493          	li	s1,0
    80004598:	22050063          	beqz	a0,800047b8 <__printf+0x2a0>
    8000459c:	00002a37          	lui	s4,0x2
    800045a0:	00018ab7          	lui	s5,0x18
    800045a4:	000f4b37          	lui	s6,0xf4
    800045a8:	00989bb7          	lui	s7,0x989
    800045ac:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800045b0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800045b4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800045b8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800045bc:	00148c9b          	addiw	s9,s1,1
    800045c0:	02500793          	li	a5,37
    800045c4:	01998933          	add	s2,s3,s9
    800045c8:	38f51263          	bne	a0,a5,8000494c <__printf+0x434>
    800045cc:	00094783          	lbu	a5,0(s2)
    800045d0:	00078c9b          	sext.w	s9,a5
    800045d4:	1e078263          	beqz	a5,800047b8 <__printf+0x2a0>
    800045d8:	0024849b          	addiw	s1,s1,2
    800045dc:	07000713          	li	a4,112
    800045e0:	00998933          	add	s2,s3,s1
    800045e4:	38e78a63          	beq	a5,a4,80004978 <__printf+0x460>
    800045e8:	20f76863          	bltu	a4,a5,800047f8 <__printf+0x2e0>
    800045ec:	42a78863          	beq	a5,a0,80004a1c <__printf+0x504>
    800045f0:	06400713          	li	a4,100
    800045f4:	40e79663          	bne	a5,a4,80004a00 <__printf+0x4e8>
    800045f8:	f7843783          	ld	a5,-136(s0)
    800045fc:	0007a603          	lw	a2,0(a5)
    80004600:	00878793          	addi	a5,a5,8
    80004604:	f6f43c23          	sd	a5,-136(s0)
    80004608:	42064a63          	bltz	a2,80004a3c <__printf+0x524>
    8000460c:	00a00713          	li	a4,10
    80004610:	02e677bb          	remuw	a5,a2,a4
    80004614:	00002d97          	auipc	s11,0x2
    80004618:	c64d8d93          	addi	s11,s11,-924 # 80006278 <digits>
    8000461c:	00900593          	li	a1,9
    80004620:	0006051b          	sext.w	a0,a2
    80004624:	00000c93          	li	s9,0
    80004628:	02079793          	slli	a5,a5,0x20
    8000462c:	0207d793          	srli	a5,a5,0x20
    80004630:	00fd87b3          	add	a5,s11,a5
    80004634:	0007c783          	lbu	a5,0(a5)
    80004638:	02e656bb          	divuw	a3,a2,a4
    8000463c:	f8f40023          	sb	a5,-128(s0)
    80004640:	14c5d863          	bge	a1,a2,80004790 <__printf+0x278>
    80004644:	06300593          	li	a1,99
    80004648:	00100c93          	li	s9,1
    8000464c:	02e6f7bb          	remuw	a5,a3,a4
    80004650:	02079793          	slli	a5,a5,0x20
    80004654:	0207d793          	srli	a5,a5,0x20
    80004658:	00fd87b3          	add	a5,s11,a5
    8000465c:	0007c783          	lbu	a5,0(a5)
    80004660:	02e6d73b          	divuw	a4,a3,a4
    80004664:	f8f400a3          	sb	a5,-127(s0)
    80004668:	12a5f463          	bgeu	a1,a0,80004790 <__printf+0x278>
    8000466c:	00a00693          	li	a3,10
    80004670:	00900593          	li	a1,9
    80004674:	02d777bb          	remuw	a5,a4,a3
    80004678:	02079793          	slli	a5,a5,0x20
    8000467c:	0207d793          	srli	a5,a5,0x20
    80004680:	00fd87b3          	add	a5,s11,a5
    80004684:	0007c503          	lbu	a0,0(a5)
    80004688:	02d757bb          	divuw	a5,a4,a3
    8000468c:	f8a40123          	sb	a0,-126(s0)
    80004690:	48e5f263          	bgeu	a1,a4,80004b14 <__printf+0x5fc>
    80004694:	06300513          	li	a0,99
    80004698:	02d7f5bb          	remuw	a1,a5,a3
    8000469c:	02059593          	slli	a1,a1,0x20
    800046a0:	0205d593          	srli	a1,a1,0x20
    800046a4:	00bd85b3          	add	a1,s11,a1
    800046a8:	0005c583          	lbu	a1,0(a1)
    800046ac:	02d7d7bb          	divuw	a5,a5,a3
    800046b0:	f8b401a3          	sb	a1,-125(s0)
    800046b4:	48e57263          	bgeu	a0,a4,80004b38 <__printf+0x620>
    800046b8:	3e700513          	li	a0,999
    800046bc:	02d7f5bb          	remuw	a1,a5,a3
    800046c0:	02059593          	slli	a1,a1,0x20
    800046c4:	0205d593          	srli	a1,a1,0x20
    800046c8:	00bd85b3          	add	a1,s11,a1
    800046cc:	0005c583          	lbu	a1,0(a1)
    800046d0:	02d7d7bb          	divuw	a5,a5,a3
    800046d4:	f8b40223          	sb	a1,-124(s0)
    800046d8:	46e57663          	bgeu	a0,a4,80004b44 <__printf+0x62c>
    800046dc:	02d7f5bb          	remuw	a1,a5,a3
    800046e0:	02059593          	slli	a1,a1,0x20
    800046e4:	0205d593          	srli	a1,a1,0x20
    800046e8:	00bd85b3          	add	a1,s11,a1
    800046ec:	0005c583          	lbu	a1,0(a1)
    800046f0:	02d7d7bb          	divuw	a5,a5,a3
    800046f4:	f8b402a3          	sb	a1,-123(s0)
    800046f8:	46ea7863          	bgeu	s4,a4,80004b68 <__printf+0x650>
    800046fc:	02d7f5bb          	remuw	a1,a5,a3
    80004700:	02059593          	slli	a1,a1,0x20
    80004704:	0205d593          	srli	a1,a1,0x20
    80004708:	00bd85b3          	add	a1,s11,a1
    8000470c:	0005c583          	lbu	a1,0(a1)
    80004710:	02d7d7bb          	divuw	a5,a5,a3
    80004714:	f8b40323          	sb	a1,-122(s0)
    80004718:	3eeaf863          	bgeu	s5,a4,80004b08 <__printf+0x5f0>
    8000471c:	02d7f5bb          	remuw	a1,a5,a3
    80004720:	02059593          	slli	a1,a1,0x20
    80004724:	0205d593          	srli	a1,a1,0x20
    80004728:	00bd85b3          	add	a1,s11,a1
    8000472c:	0005c583          	lbu	a1,0(a1)
    80004730:	02d7d7bb          	divuw	a5,a5,a3
    80004734:	f8b403a3          	sb	a1,-121(s0)
    80004738:	42eb7e63          	bgeu	s6,a4,80004b74 <__printf+0x65c>
    8000473c:	02d7f5bb          	remuw	a1,a5,a3
    80004740:	02059593          	slli	a1,a1,0x20
    80004744:	0205d593          	srli	a1,a1,0x20
    80004748:	00bd85b3          	add	a1,s11,a1
    8000474c:	0005c583          	lbu	a1,0(a1)
    80004750:	02d7d7bb          	divuw	a5,a5,a3
    80004754:	f8b40423          	sb	a1,-120(s0)
    80004758:	42ebfc63          	bgeu	s7,a4,80004b90 <__printf+0x678>
    8000475c:	02079793          	slli	a5,a5,0x20
    80004760:	0207d793          	srli	a5,a5,0x20
    80004764:	00fd8db3          	add	s11,s11,a5
    80004768:	000dc703          	lbu	a4,0(s11)
    8000476c:	00a00793          	li	a5,10
    80004770:	00900c93          	li	s9,9
    80004774:	f8e404a3          	sb	a4,-119(s0)
    80004778:	00065c63          	bgez	a2,80004790 <__printf+0x278>
    8000477c:	f9040713          	addi	a4,s0,-112
    80004780:	00f70733          	add	a4,a4,a5
    80004784:	02d00693          	li	a3,45
    80004788:	fed70823          	sb	a3,-16(a4)
    8000478c:	00078c93          	mv	s9,a5
    80004790:	f8040793          	addi	a5,s0,-128
    80004794:	01978cb3          	add	s9,a5,s9
    80004798:	f7f40d13          	addi	s10,s0,-129
    8000479c:	000cc503          	lbu	a0,0(s9)
    800047a0:	fffc8c93          	addi	s9,s9,-1
    800047a4:	00000097          	auipc	ra,0x0
    800047a8:	b90080e7          	jalr	-1136(ra) # 80004334 <consputc>
    800047ac:	ffac98e3          	bne	s9,s10,8000479c <__printf+0x284>
    800047b0:	00094503          	lbu	a0,0(s2)
    800047b4:	e00514e3          	bnez	a0,800045bc <__printf+0xa4>
    800047b8:	1a0c1663          	bnez	s8,80004964 <__printf+0x44c>
    800047bc:	08813083          	ld	ra,136(sp)
    800047c0:	08013403          	ld	s0,128(sp)
    800047c4:	07813483          	ld	s1,120(sp)
    800047c8:	07013903          	ld	s2,112(sp)
    800047cc:	06813983          	ld	s3,104(sp)
    800047d0:	06013a03          	ld	s4,96(sp)
    800047d4:	05813a83          	ld	s5,88(sp)
    800047d8:	05013b03          	ld	s6,80(sp)
    800047dc:	04813b83          	ld	s7,72(sp)
    800047e0:	04013c03          	ld	s8,64(sp)
    800047e4:	03813c83          	ld	s9,56(sp)
    800047e8:	03013d03          	ld	s10,48(sp)
    800047ec:	02813d83          	ld	s11,40(sp)
    800047f0:	0d010113          	addi	sp,sp,208
    800047f4:	00008067          	ret
    800047f8:	07300713          	li	a4,115
    800047fc:	1ce78a63          	beq	a5,a4,800049d0 <__printf+0x4b8>
    80004800:	07800713          	li	a4,120
    80004804:	1ee79e63          	bne	a5,a4,80004a00 <__printf+0x4e8>
    80004808:	f7843783          	ld	a5,-136(s0)
    8000480c:	0007a703          	lw	a4,0(a5)
    80004810:	00878793          	addi	a5,a5,8
    80004814:	f6f43c23          	sd	a5,-136(s0)
    80004818:	28074263          	bltz	a4,80004a9c <__printf+0x584>
    8000481c:	00002d97          	auipc	s11,0x2
    80004820:	a5cd8d93          	addi	s11,s11,-1444 # 80006278 <digits>
    80004824:	00f77793          	andi	a5,a4,15
    80004828:	00fd87b3          	add	a5,s11,a5
    8000482c:	0007c683          	lbu	a3,0(a5)
    80004830:	00f00613          	li	a2,15
    80004834:	0007079b          	sext.w	a5,a4
    80004838:	f8d40023          	sb	a3,-128(s0)
    8000483c:	0047559b          	srliw	a1,a4,0x4
    80004840:	0047569b          	srliw	a3,a4,0x4
    80004844:	00000c93          	li	s9,0
    80004848:	0ee65063          	bge	a2,a4,80004928 <__printf+0x410>
    8000484c:	00f6f693          	andi	a3,a3,15
    80004850:	00dd86b3          	add	a3,s11,a3
    80004854:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004858:	0087d79b          	srliw	a5,a5,0x8
    8000485c:	00100c93          	li	s9,1
    80004860:	f8d400a3          	sb	a3,-127(s0)
    80004864:	0cb67263          	bgeu	a2,a1,80004928 <__printf+0x410>
    80004868:	00f7f693          	andi	a3,a5,15
    8000486c:	00dd86b3          	add	a3,s11,a3
    80004870:	0006c583          	lbu	a1,0(a3)
    80004874:	00f00613          	li	a2,15
    80004878:	0047d69b          	srliw	a3,a5,0x4
    8000487c:	f8b40123          	sb	a1,-126(s0)
    80004880:	0047d593          	srli	a1,a5,0x4
    80004884:	28f67e63          	bgeu	a2,a5,80004b20 <__printf+0x608>
    80004888:	00f6f693          	andi	a3,a3,15
    8000488c:	00dd86b3          	add	a3,s11,a3
    80004890:	0006c503          	lbu	a0,0(a3)
    80004894:	0087d813          	srli	a6,a5,0x8
    80004898:	0087d69b          	srliw	a3,a5,0x8
    8000489c:	f8a401a3          	sb	a0,-125(s0)
    800048a0:	28b67663          	bgeu	a2,a1,80004b2c <__printf+0x614>
    800048a4:	00f6f693          	andi	a3,a3,15
    800048a8:	00dd86b3          	add	a3,s11,a3
    800048ac:	0006c583          	lbu	a1,0(a3)
    800048b0:	00c7d513          	srli	a0,a5,0xc
    800048b4:	00c7d69b          	srliw	a3,a5,0xc
    800048b8:	f8b40223          	sb	a1,-124(s0)
    800048bc:	29067a63          	bgeu	a2,a6,80004b50 <__printf+0x638>
    800048c0:	00f6f693          	andi	a3,a3,15
    800048c4:	00dd86b3          	add	a3,s11,a3
    800048c8:	0006c583          	lbu	a1,0(a3)
    800048cc:	0107d813          	srli	a6,a5,0x10
    800048d0:	0107d69b          	srliw	a3,a5,0x10
    800048d4:	f8b402a3          	sb	a1,-123(s0)
    800048d8:	28a67263          	bgeu	a2,a0,80004b5c <__printf+0x644>
    800048dc:	00f6f693          	andi	a3,a3,15
    800048e0:	00dd86b3          	add	a3,s11,a3
    800048e4:	0006c683          	lbu	a3,0(a3)
    800048e8:	0147d79b          	srliw	a5,a5,0x14
    800048ec:	f8d40323          	sb	a3,-122(s0)
    800048f0:	21067663          	bgeu	a2,a6,80004afc <__printf+0x5e4>
    800048f4:	02079793          	slli	a5,a5,0x20
    800048f8:	0207d793          	srli	a5,a5,0x20
    800048fc:	00fd8db3          	add	s11,s11,a5
    80004900:	000dc683          	lbu	a3,0(s11)
    80004904:	00800793          	li	a5,8
    80004908:	00700c93          	li	s9,7
    8000490c:	f8d403a3          	sb	a3,-121(s0)
    80004910:	00075c63          	bgez	a4,80004928 <__printf+0x410>
    80004914:	f9040713          	addi	a4,s0,-112
    80004918:	00f70733          	add	a4,a4,a5
    8000491c:	02d00693          	li	a3,45
    80004920:	fed70823          	sb	a3,-16(a4)
    80004924:	00078c93          	mv	s9,a5
    80004928:	f8040793          	addi	a5,s0,-128
    8000492c:	01978cb3          	add	s9,a5,s9
    80004930:	f7f40d13          	addi	s10,s0,-129
    80004934:	000cc503          	lbu	a0,0(s9)
    80004938:	fffc8c93          	addi	s9,s9,-1
    8000493c:	00000097          	auipc	ra,0x0
    80004940:	9f8080e7          	jalr	-1544(ra) # 80004334 <consputc>
    80004944:	ff9d18e3          	bne	s10,s9,80004934 <__printf+0x41c>
    80004948:	0100006f          	j	80004958 <__printf+0x440>
    8000494c:	00000097          	auipc	ra,0x0
    80004950:	9e8080e7          	jalr	-1560(ra) # 80004334 <consputc>
    80004954:	000c8493          	mv	s1,s9
    80004958:	00094503          	lbu	a0,0(s2)
    8000495c:	c60510e3          	bnez	a0,800045bc <__printf+0xa4>
    80004960:	e40c0ee3          	beqz	s8,800047bc <__printf+0x2a4>
    80004964:	00004517          	auipc	a0,0x4
    80004968:	06c50513          	addi	a0,a0,108 # 800089d0 <pr>
    8000496c:	00001097          	auipc	ra,0x1
    80004970:	94c080e7          	jalr	-1716(ra) # 800052b8 <release>
    80004974:	e49ff06f          	j	800047bc <__printf+0x2a4>
    80004978:	f7843783          	ld	a5,-136(s0)
    8000497c:	03000513          	li	a0,48
    80004980:	01000d13          	li	s10,16
    80004984:	00878713          	addi	a4,a5,8
    80004988:	0007bc83          	ld	s9,0(a5)
    8000498c:	f6e43c23          	sd	a4,-136(s0)
    80004990:	00000097          	auipc	ra,0x0
    80004994:	9a4080e7          	jalr	-1628(ra) # 80004334 <consputc>
    80004998:	07800513          	li	a0,120
    8000499c:	00000097          	auipc	ra,0x0
    800049a0:	998080e7          	jalr	-1640(ra) # 80004334 <consputc>
    800049a4:	00002d97          	auipc	s11,0x2
    800049a8:	8d4d8d93          	addi	s11,s11,-1836 # 80006278 <digits>
    800049ac:	03ccd793          	srli	a5,s9,0x3c
    800049b0:	00fd87b3          	add	a5,s11,a5
    800049b4:	0007c503          	lbu	a0,0(a5)
    800049b8:	fffd0d1b          	addiw	s10,s10,-1
    800049bc:	004c9c93          	slli	s9,s9,0x4
    800049c0:	00000097          	auipc	ra,0x0
    800049c4:	974080e7          	jalr	-1676(ra) # 80004334 <consputc>
    800049c8:	fe0d12e3          	bnez	s10,800049ac <__printf+0x494>
    800049cc:	f8dff06f          	j	80004958 <__printf+0x440>
    800049d0:	f7843783          	ld	a5,-136(s0)
    800049d4:	0007bc83          	ld	s9,0(a5)
    800049d8:	00878793          	addi	a5,a5,8
    800049dc:	f6f43c23          	sd	a5,-136(s0)
    800049e0:	000c9a63          	bnez	s9,800049f4 <__printf+0x4dc>
    800049e4:	1080006f          	j	80004aec <__printf+0x5d4>
    800049e8:	001c8c93          	addi	s9,s9,1
    800049ec:	00000097          	auipc	ra,0x0
    800049f0:	948080e7          	jalr	-1720(ra) # 80004334 <consputc>
    800049f4:	000cc503          	lbu	a0,0(s9)
    800049f8:	fe0518e3          	bnez	a0,800049e8 <__printf+0x4d0>
    800049fc:	f5dff06f          	j	80004958 <__printf+0x440>
    80004a00:	02500513          	li	a0,37
    80004a04:	00000097          	auipc	ra,0x0
    80004a08:	930080e7          	jalr	-1744(ra) # 80004334 <consputc>
    80004a0c:	000c8513          	mv	a0,s9
    80004a10:	00000097          	auipc	ra,0x0
    80004a14:	924080e7          	jalr	-1756(ra) # 80004334 <consputc>
    80004a18:	f41ff06f          	j	80004958 <__printf+0x440>
    80004a1c:	02500513          	li	a0,37
    80004a20:	00000097          	auipc	ra,0x0
    80004a24:	914080e7          	jalr	-1772(ra) # 80004334 <consputc>
    80004a28:	f31ff06f          	j	80004958 <__printf+0x440>
    80004a2c:	00030513          	mv	a0,t1
    80004a30:	00000097          	auipc	ra,0x0
    80004a34:	7bc080e7          	jalr	1980(ra) # 800051ec <acquire>
    80004a38:	b4dff06f          	j	80004584 <__printf+0x6c>
    80004a3c:	40c0053b          	negw	a0,a2
    80004a40:	00a00713          	li	a4,10
    80004a44:	02e576bb          	remuw	a3,a0,a4
    80004a48:	00002d97          	auipc	s11,0x2
    80004a4c:	830d8d93          	addi	s11,s11,-2000 # 80006278 <digits>
    80004a50:	ff700593          	li	a1,-9
    80004a54:	02069693          	slli	a3,a3,0x20
    80004a58:	0206d693          	srli	a3,a3,0x20
    80004a5c:	00dd86b3          	add	a3,s11,a3
    80004a60:	0006c683          	lbu	a3,0(a3)
    80004a64:	02e557bb          	divuw	a5,a0,a4
    80004a68:	f8d40023          	sb	a3,-128(s0)
    80004a6c:	10b65e63          	bge	a2,a1,80004b88 <__printf+0x670>
    80004a70:	06300593          	li	a1,99
    80004a74:	02e7f6bb          	remuw	a3,a5,a4
    80004a78:	02069693          	slli	a3,a3,0x20
    80004a7c:	0206d693          	srli	a3,a3,0x20
    80004a80:	00dd86b3          	add	a3,s11,a3
    80004a84:	0006c683          	lbu	a3,0(a3)
    80004a88:	02e7d73b          	divuw	a4,a5,a4
    80004a8c:	00200793          	li	a5,2
    80004a90:	f8d400a3          	sb	a3,-127(s0)
    80004a94:	bca5ece3          	bltu	a1,a0,8000466c <__printf+0x154>
    80004a98:	ce5ff06f          	j	8000477c <__printf+0x264>
    80004a9c:	40e007bb          	negw	a5,a4
    80004aa0:	00001d97          	auipc	s11,0x1
    80004aa4:	7d8d8d93          	addi	s11,s11,2008 # 80006278 <digits>
    80004aa8:	00f7f693          	andi	a3,a5,15
    80004aac:	00dd86b3          	add	a3,s11,a3
    80004ab0:	0006c583          	lbu	a1,0(a3)
    80004ab4:	ff100613          	li	a2,-15
    80004ab8:	0047d69b          	srliw	a3,a5,0x4
    80004abc:	f8b40023          	sb	a1,-128(s0)
    80004ac0:	0047d59b          	srliw	a1,a5,0x4
    80004ac4:	0ac75e63          	bge	a4,a2,80004b80 <__printf+0x668>
    80004ac8:	00f6f693          	andi	a3,a3,15
    80004acc:	00dd86b3          	add	a3,s11,a3
    80004ad0:	0006c603          	lbu	a2,0(a3)
    80004ad4:	00f00693          	li	a3,15
    80004ad8:	0087d79b          	srliw	a5,a5,0x8
    80004adc:	f8c400a3          	sb	a2,-127(s0)
    80004ae0:	d8b6e4e3          	bltu	a3,a1,80004868 <__printf+0x350>
    80004ae4:	00200793          	li	a5,2
    80004ae8:	e2dff06f          	j	80004914 <__printf+0x3fc>
    80004aec:	00001c97          	auipc	s9,0x1
    80004af0:	76cc8c93          	addi	s9,s9,1900 # 80006258 <CONSOLE_STATUS+0x248>
    80004af4:	02800513          	li	a0,40
    80004af8:	ef1ff06f          	j	800049e8 <__printf+0x4d0>
    80004afc:	00700793          	li	a5,7
    80004b00:	00600c93          	li	s9,6
    80004b04:	e0dff06f          	j	80004910 <__printf+0x3f8>
    80004b08:	00700793          	li	a5,7
    80004b0c:	00600c93          	li	s9,6
    80004b10:	c69ff06f          	j	80004778 <__printf+0x260>
    80004b14:	00300793          	li	a5,3
    80004b18:	00200c93          	li	s9,2
    80004b1c:	c5dff06f          	j	80004778 <__printf+0x260>
    80004b20:	00300793          	li	a5,3
    80004b24:	00200c93          	li	s9,2
    80004b28:	de9ff06f          	j	80004910 <__printf+0x3f8>
    80004b2c:	00400793          	li	a5,4
    80004b30:	00300c93          	li	s9,3
    80004b34:	dddff06f          	j	80004910 <__printf+0x3f8>
    80004b38:	00400793          	li	a5,4
    80004b3c:	00300c93          	li	s9,3
    80004b40:	c39ff06f          	j	80004778 <__printf+0x260>
    80004b44:	00500793          	li	a5,5
    80004b48:	00400c93          	li	s9,4
    80004b4c:	c2dff06f          	j	80004778 <__printf+0x260>
    80004b50:	00500793          	li	a5,5
    80004b54:	00400c93          	li	s9,4
    80004b58:	db9ff06f          	j	80004910 <__printf+0x3f8>
    80004b5c:	00600793          	li	a5,6
    80004b60:	00500c93          	li	s9,5
    80004b64:	dadff06f          	j	80004910 <__printf+0x3f8>
    80004b68:	00600793          	li	a5,6
    80004b6c:	00500c93          	li	s9,5
    80004b70:	c09ff06f          	j	80004778 <__printf+0x260>
    80004b74:	00800793          	li	a5,8
    80004b78:	00700c93          	li	s9,7
    80004b7c:	bfdff06f          	j	80004778 <__printf+0x260>
    80004b80:	00100793          	li	a5,1
    80004b84:	d91ff06f          	j	80004914 <__printf+0x3fc>
    80004b88:	00100793          	li	a5,1
    80004b8c:	bf1ff06f          	j	8000477c <__printf+0x264>
    80004b90:	00900793          	li	a5,9
    80004b94:	00800c93          	li	s9,8
    80004b98:	be1ff06f          	j	80004778 <__printf+0x260>
    80004b9c:	00001517          	auipc	a0,0x1
    80004ba0:	6c450513          	addi	a0,a0,1732 # 80006260 <CONSOLE_STATUS+0x250>
    80004ba4:	00000097          	auipc	ra,0x0
    80004ba8:	918080e7          	jalr	-1768(ra) # 800044bc <panic>

0000000080004bac <printfinit>:
    80004bac:	fe010113          	addi	sp,sp,-32
    80004bb0:	00813823          	sd	s0,16(sp)
    80004bb4:	00913423          	sd	s1,8(sp)
    80004bb8:	00113c23          	sd	ra,24(sp)
    80004bbc:	02010413          	addi	s0,sp,32
    80004bc0:	00004497          	auipc	s1,0x4
    80004bc4:	e1048493          	addi	s1,s1,-496 # 800089d0 <pr>
    80004bc8:	00048513          	mv	a0,s1
    80004bcc:	00001597          	auipc	a1,0x1
    80004bd0:	6a458593          	addi	a1,a1,1700 # 80006270 <CONSOLE_STATUS+0x260>
    80004bd4:	00000097          	auipc	ra,0x0
    80004bd8:	5f4080e7          	jalr	1524(ra) # 800051c8 <initlock>
    80004bdc:	01813083          	ld	ra,24(sp)
    80004be0:	01013403          	ld	s0,16(sp)
    80004be4:	0004ac23          	sw	zero,24(s1)
    80004be8:	00813483          	ld	s1,8(sp)
    80004bec:	02010113          	addi	sp,sp,32
    80004bf0:	00008067          	ret

0000000080004bf4 <uartinit>:
    80004bf4:	ff010113          	addi	sp,sp,-16
    80004bf8:	00813423          	sd	s0,8(sp)
    80004bfc:	01010413          	addi	s0,sp,16
    80004c00:	100007b7          	lui	a5,0x10000
    80004c04:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004c08:	f8000713          	li	a4,-128
    80004c0c:	00e781a3          	sb	a4,3(a5)
    80004c10:	00300713          	li	a4,3
    80004c14:	00e78023          	sb	a4,0(a5)
    80004c18:	000780a3          	sb	zero,1(a5)
    80004c1c:	00e781a3          	sb	a4,3(a5)
    80004c20:	00700693          	li	a3,7
    80004c24:	00d78123          	sb	a3,2(a5)
    80004c28:	00e780a3          	sb	a4,1(a5)
    80004c2c:	00813403          	ld	s0,8(sp)
    80004c30:	01010113          	addi	sp,sp,16
    80004c34:	00008067          	ret

0000000080004c38 <uartputc>:
    80004c38:	00003797          	auipc	a5,0x3
    80004c3c:	b007a783          	lw	a5,-1280(a5) # 80007738 <panicked>
    80004c40:	00078463          	beqz	a5,80004c48 <uartputc+0x10>
    80004c44:	0000006f          	j	80004c44 <uartputc+0xc>
    80004c48:	fd010113          	addi	sp,sp,-48
    80004c4c:	02813023          	sd	s0,32(sp)
    80004c50:	00913c23          	sd	s1,24(sp)
    80004c54:	01213823          	sd	s2,16(sp)
    80004c58:	01313423          	sd	s3,8(sp)
    80004c5c:	02113423          	sd	ra,40(sp)
    80004c60:	03010413          	addi	s0,sp,48
    80004c64:	00003917          	auipc	s2,0x3
    80004c68:	adc90913          	addi	s2,s2,-1316 # 80007740 <uart_tx_r>
    80004c6c:	00093783          	ld	a5,0(s2)
    80004c70:	00003497          	auipc	s1,0x3
    80004c74:	ad848493          	addi	s1,s1,-1320 # 80007748 <uart_tx_w>
    80004c78:	0004b703          	ld	a4,0(s1)
    80004c7c:	02078693          	addi	a3,a5,32
    80004c80:	00050993          	mv	s3,a0
    80004c84:	02e69c63          	bne	a3,a4,80004cbc <uartputc+0x84>
    80004c88:	00001097          	auipc	ra,0x1
    80004c8c:	834080e7          	jalr	-1996(ra) # 800054bc <push_on>
    80004c90:	00093783          	ld	a5,0(s2)
    80004c94:	0004b703          	ld	a4,0(s1)
    80004c98:	02078793          	addi	a5,a5,32
    80004c9c:	00e79463          	bne	a5,a4,80004ca4 <uartputc+0x6c>
    80004ca0:	0000006f          	j	80004ca0 <uartputc+0x68>
    80004ca4:	00001097          	auipc	ra,0x1
    80004ca8:	88c080e7          	jalr	-1908(ra) # 80005530 <pop_on>
    80004cac:	00093783          	ld	a5,0(s2)
    80004cb0:	0004b703          	ld	a4,0(s1)
    80004cb4:	02078693          	addi	a3,a5,32
    80004cb8:	fce688e3          	beq	a3,a4,80004c88 <uartputc+0x50>
    80004cbc:	01f77693          	andi	a3,a4,31
    80004cc0:	00004597          	auipc	a1,0x4
    80004cc4:	d3058593          	addi	a1,a1,-720 # 800089f0 <uart_tx_buf>
    80004cc8:	00d586b3          	add	a3,a1,a3
    80004ccc:	00170713          	addi	a4,a4,1
    80004cd0:	01368023          	sb	s3,0(a3)
    80004cd4:	00e4b023          	sd	a4,0(s1)
    80004cd8:	10000637          	lui	a2,0x10000
    80004cdc:	02f71063          	bne	a4,a5,80004cfc <uartputc+0xc4>
    80004ce0:	0340006f          	j	80004d14 <uartputc+0xdc>
    80004ce4:	00074703          	lbu	a4,0(a4)
    80004ce8:	00f93023          	sd	a5,0(s2)
    80004cec:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004cf0:	00093783          	ld	a5,0(s2)
    80004cf4:	0004b703          	ld	a4,0(s1)
    80004cf8:	00f70e63          	beq	a4,a5,80004d14 <uartputc+0xdc>
    80004cfc:	00564683          	lbu	a3,5(a2)
    80004d00:	01f7f713          	andi	a4,a5,31
    80004d04:	00e58733          	add	a4,a1,a4
    80004d08:	0206f693          	andi	a3,a3,32
    80004d0c:	00178793          	addi	a5,a5,1
    80004d10:	fc069ae3          	bnez	a3,80004ce4 <uartputc+0xac>
    80004d14:	02813083          	ld	ra,40(sp)
    80004d18:	02013403          	ld	s0,32(sp)
    80004d1c:	01813483          	ld	s1,24(sp)
    80004d20:	01013903          	ld	s2,16(sp)
    80004d24:	00813983          	ld	s3,8(sp)
    80004d28:	03010113          	addi	sp,sp,48
    80004d2c:	00008067          	ret

0000000080004d30 <uartputc_sync>:
    80004d30:	ff010113          	addi	sp,sp,-16
    80004d34:	00813423          	sd	s0,8(sp)
    80004d38:	01010413          	addi	s0,sp,16
    80004d3c:	00003717          	auipc	a4,0x3
    80004d40:	9fc72703          	lw	a4,-1540(a4) # 80007738 <panicked>
    80004d44:	02071663          	bnez	a4,80004d70 <uartputc_sync+0x40>
    80004d48:	00050793          	mv	a5,a0
    80004d4c:	100006b7          	lui	a3,0x10000
    80004d50:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004d54:	02077713          	andi	a4,a4,32
    80004d58:	fe070ce3          	beqz	a4,80004d50 <uartputc_sync+0x20>
    80004d5c:	0ff7f793          	andi	a5,a5,255
    80004d60:	00f68023          	sb	a5,0(a3)
    80004d64:	00813403          	ld	s0,8(sp)
    80004d68:	01010113          	addi	sp,sp,16
    80004d6c:	00008067          	ret
    80004d70:	0000006f          	j	80004d70 <uartputc_sync+0x40>

0000000080004d74 <uartstart>:
    80004d74:	ff010113          	addi	sp,sp,-16
    80004d78:	00813423          	sd	s0,8(sp)
    80004d7c:	01010413          	addi	s0,sp,16
    80004d80:	00003617          	auipc	a2,0x3
    80004d84:	9c060613          	addi	a2,a2,-1600 # 80007740 <uart_tx_r>
    80004d88:	00003517          	auipc	a0,0x3
    80004d8c:	9c050513          	addi	a0,a0,-1600 # 80007748 <uart_tx_w>
    80004d90:	00063783          	ld	a5,0(a2)
    80004d94:	00053703          	ld	a4,0(a0)
    80004d98:	04f70263          	beq	a4,a5,80004ddc <uartstart+0x68>
    80004d9c:	100005b7          	lui	a1,0x10000
    80004da0:	00004817          	auipc	a6,0x4
    80004da4:	c5080813          	addi	a6,a6,-944 # 800089f0 <uart_tx_buf>
    80004da8:	01c0006f          	j	80004dc4 <uartstart+0x50>
    80004dac:	0006c703          	lbu	a4,0(a3)
    80004db0:	00f63023          	sd	a5,0(a2)
    80004db4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004db8:	00063783          	ld	a5,0(a2)
    80004dbc:	00053703          	ld	a4,0(a0)
    80004dc0:	00f70e63          	beq	a4,a5,80004ddc <uartstart+0x68>
    80004dc4:	01f7f713          	andi	a4,a5,31
    80004dc8:	00e806b3          	add	a3,a6,a4
    80004dcc:	0055c703          	lbu	a4,5(a1)
    80004dd0:	00178793          	addi	a5,a5,1
    80004dd4:	02077713          	andi	a4,a4,32
    80004dd8:	fc071ae3          	bnez	a4,80004dac <uartstart+0x38>
    80004ddc:	00813403          	ld	s0,8(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <uartgetc>:
    80004de8:	ff010113          	addi	sp,sp,-16
    80004dec:	00813423          	sd	s0,8(sp)
    80004df0:	01010413          	addi	s0,sp,16
    80004df4:	10000737          	lui	a4,0x10000
    80004df8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004dfc:	0017f793          	andi	a5,a5,1
    80004e00:	00078c63          	beqz	a5,80004e18 <uartgetc+0x30>
    80004e04:	00074503          	lbu	a0,0(a4)
    80004e08:	0ff57513          	andi	a0,a0,255
    80004e0c:	00813403          	ld	s0,8(sp)
    80004e10:	01010113          	addi	sp,sp,16
    80004e14:	00008067          	ret
    80004e18:	fff00513          	li	a0,-1
    80004e1c:	ff1ff06f          	j	80004e0c <uartgetc+0x24>

0000000080004e20 <uartintr>:
    80004e20:	100007b7          	lui	a5,0x10000
    80004e24:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004e28:	0017f793          	andi	a5,a5,1
    80004e2c:	0a078463          	beqz	a5,80004ed4 <uartintr+0xb4>
    80004e30:	fe010113          	addi	sp,sp,-32
    80004e34:	00813823          	sd	s0,16(sp)
    80004e38:	00913423          	sd	s1,8(sp)
    80004e3c:	00113c23          	sd	ra,24(sp)
    80004e40:	02010413          	addi	s0,sp,32
    80004e44:	100004b7          	lui	s1,0x10000
    80004e48:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004e4c:	0ff57513          	andi	a0,a0,255
    80004e50:	fffff097          	auipc	ra,0xfffff
    80004e54:	534080e7          	jalr	1332(ra) # 80004384 <consoleintr>
    80004e58:	0054c783          	lbu	a5,5(s1)
    80004e5c:	0017f793          	andi	a5,a5,1
    80004e60:	fe0794e3          	bnez	a5,80004e48 <uartintr+0x28>
    80004e64:	00003617          	auipc	a2,0x3
    80004e68:	8dc60613          	addi	a2,a2,-1828 # 80007740 <uart_tx_r>
    80004e6c:	00003517          	auipc	a0,0x3
    80004e70:	8dc50513          	addi	a0,a0,-1828 # 80007748 <uart_tx_w>
    80004e74:	00063783          	ld	a5,0(a2)
    80004e78:	00053703          	ld	a4,0(a0)
    80004e7c:	04f70263          	beq	a4,a5,80004ec0 <uartintr+0xa0>
    80004e80:	100005b7          	lui	a1,0x10000
    80004e84:	00004817          	auipc	a6,0x4
    80004e88:	b6c80813          	addi	a6,a6,-1172 # 800089f0 <uart_tx_buf>
    80004e8c:	01c0006f          	j	80004ea8 <uartintr+0x88>
    80004e90:	0006c703          	lbu	a4,0(a3)
    80004e94:	00f63023          	sd	a5,0(a2)
    80004e98:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004e9c:	00063783          	ld	a5,0(a2)
    80004ea0:	00053703          	ld	a4,0(a0)
    80004ea4:	00f70e63          	beq	a4,a5,80004ec0 <uartintr+0xa0>
    80004ea8:	01f7f713          	andi	a4,a5,31
    80004eac:	00e806b3          	add	a3,a6,a4
    80004eb0:	0055c703          	lbu	a4,5(a1)
    80004eb4:	00178793          	addi	a5,a5,1
    80004eb8:	02077713          	andi	a4,a4,32
    80004ebc:	fc071ae3          	bnez	a4,80004e90 <uartintr+0x70>
    80004ec0:	01813083          	ld	ra,24(sp)
    80004ec4:	01013403          	ld	s0,16(sp)
    80004ec8:	00813483          	ld	s1,8(sp)
    80004ecc:	02010113          	addi	sp,sp,32
    80004ed0:	00008067          	ret
    80004ed4:	00003617          	auipc	a2,0x3
    80004ed8:	86c60613          	addi	a2,a2,-1940 # 80007740 <uart_tx_r>
    80004edc:	00003517          	auipc	a0,0x3
    80004ee0:	86c50513          	addi	a0,a0,-1940 # 80007748 <uart_tx_w>
    80004ee4:	00063783          	ld	a5,0(a2)
    80004ee8:	00053703          	ld	a4,0(a0)
    80004eec:	04f70263          	beq	a4,a5,80004f30 <uartintr+0x110>
    80004ef0:	100005b7          	lui	a1,0x10000
    80004ef4:	00004817          	auipc	a6,0x4
    80004ef8:	afc80813          	addi	a6,a6,-1284 # 800089f0 <uart_tx_buf>
    80004efc:	01c0006f          	j	80004f18 <uartintr+0xf8>
    80004f00:	0006c703          	lbu	a4,0(a3)
    80004f04:	00f63023          	sd	a5,0(a2)
    80004f08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f0c:	00063783          	ld	a5,0(a2)
    80004f10:	00053703          	ld	a4,0(a0)
    80004f14:	02f70063          	beq	a4,a5,80004f34 <uartintr+0x114>
    80004f18:	01f7f713          	andi	a4,a5,31
    80004f1c:	00e806b3          	add	a3,a6,a4
    80004f20:	0055c703          	lbu	a4,5(a1)
    80004f24:	00178793          	addi	a5,a5,1
    80004f28:	02077713          	andi	a4,a4,32
    80004f2c:	fc071ae3          	bnez	a4,80004f00 <uartintr+0xe0>
    80004f30:	00008067          	ret
    80004f34:	00008067          	ret

0000000080004f38 <kinit>:
    80004f38:	fc010113          	addi	sp,sp,-64
    80004f3c:	02913423          	sd	s1,40(sp)
    80004f40:	fffff7b7          	lui	a5,0xfffff
    80004f44:	00005497          	auipc	s1,0x5
    80004f48:	acb48493          	addi	s1,s1,-1333 # 80009a0f <end+0xfff>
    80004f4c:	02813823          	sd	s0,48(sp)
    80004f50:	01313c23          	sd	s3,24(sp)
    80004f54:	00f4f4b3          	and	s1,s1,a5
    80004f58:	02113c23          	sd	ra,56(sp)
    80004f5c:	03213023          	sd	s2,32(sp)
    80004f60:	01413823          	sd	s4,16(sp)
    80004f64:	01513423          	sd	s5,8(sp)
    80004f68:	04010413          	addi	s0,sp,64
    80004f6c:	000017b7          	lui	a5,0x1
    80004f70:	01100993          	li	s3,17
    80004f74:	00f487b3          	add	a5,s1,a5
    80004f78:	01b99993          	slli	s3,s3,0x1b
    80004f7c:	06f9e063          	bltu	s3,a5,80004fdc <kinit+0xa4>
    80004f80:	00004a97          	auipc	s5,0x4
    80004f84:	a90a8a93          	addi	s5,s5,-1392 # 80008a10 <end>
    80004f88:	0754ec63          	bltu	s1,s5,80005000 <kinit+0xc8>
    80004f8c:	0734fa63          	bgeu	s1,s3,80005000 <kinit+0xc8>
    80004f90:	00088a37          	lui	s4,0x88
    80004f94:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004f98:	00002917          	auipc	s2,0x2
    80004f9c:	7b890913          	addi	s2,s2,1976 # 80007750 <kmem>
    80004fa0:	00ca1a13          	slli	s4,s4,0xc
    80004fa4:	0140006f          	j	80004fb8 <kinit+0x80>
    80004fa8:	000017b7          	lui	a5,0x1
    80004fac:	00f484b3          	add	s1,s1,a5
    80004fb0:	0554e863          	bltu	s1,s5,80005000 <kinit+0xc8>
    80004fb4:	0534f663          	bgeu	s1,s3,80005000 <kinit+0xc8>
    80004fb8:	00001637          	lui	a2,0x1
    80004fbc:	00100593          	li	a1,1
    80004fc0:	00048513          	mv	a0,s1
    80004fc4:	00000097          	auipc	ra,0x0
    80004fc8:	5e4080e7          	jalr	1508(ra) # 800055a8 <__memset>
    80004fcc:	00093783          	ld	a5,0(s2)
    80004fd0:	00f4b023          	sd	a5,0(s1)
    80004fd4:	00993023          	sd	s1,0(s2)
    80004fd8:	fd4498e3          	bne	s1,s4,80004fa8 <kinit+0x70>
    80004fdc:	03813083          	ld	ra,56(sp)
    80004fe0:	03013403          	ld	s0,48(sp)
    80004fe4:	02813483          	ld	s1,40(sp)
    80004fe8:	02013903          	ld	s2,32(sp)
    80004fec:	01813983          	ld	s3,24(sp)
    80004ff0:	01013a03          	ld	s4,16(sp)
    80004ff4:	00813a83          	ld	s5,8(sp)
    80004ff8:	04010113          	addi	sp,sp,64
    80004ffc:	00008067          	ret
    80005000:	00001517          	auipc	a0,0x1
    80005004:	29050513          	addi	a0,a0,656 # 80006290 <digits+0x18>
    80005008:	fffff097          	auipc	ra,0xfffff
    8000500c:	4b4080e7          	jalr	1204(ra) # 800044bc <panic>

0000000080005010 <freerange>:
    80005010:	fc010113          	addi	sp,sp,-64
    80005014:	000017b7          	lui	a5,0x1
    80005018:	02913423          	sd	s1,40(sp)
    8000501c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005020:	009504b3          	add	s1,a0,s1
    80005024:	fffff537          	lui	a0,0xfffff
    80005028:	02813823          	sd	s0,48(sp)
    8000502c:	02113c23          	sd	ra,56(sp)
    80005030:	03213023          	sd	s2,32(sp)
    80005034:	01313c23          	sd	s3,24(sp)
    80005038:	01413823          	sd	s4,16(sp)
    8000503c:	01513423          	sd	s5,8(sp)
    80005040:	01613023          	sd	s6,0(sp)
    80005044:	04010413          	addi	s0,sp,64
    80005048:	00a4f4b3          	and	s1,s1,a0
    8000504c:	00f487b3          	add	a5,s1,a5
    80005050:	06f5e463          	bltu	a1,a5,800050b8 <freerange+0xa8>
    80005054:	00004a97          	auipc	s5,0x4
    80005058:	9bca8a93          	addi	s5,s5,-1604 # 80008a10 <end>
    8000505c:	0954e263          	bltu	s1,s5,800050e0 <freerange+0xd0>
    80005060:	01100993          	li	s3,17
    80005064:	01b99993          	slli	s3,s3,0x1b
    80005068:	0734fc63          	bgeu	s1,s3,800050e0 <freerange+0xd0>
    8000506c:	00058a13          	mv	s4,a1
    80005070:	00002917          	auipc	s2,0x2
    80005074:	6e090913          	addi	s2,s2,1760 # 80007750 <kmem>
    80005078:	00002b37          	lui	s6,0x2
    8000507c:	0140006f          	j	80005090 <freerange+0x80>
    80005080:	000017b7          	lui	a5,0x1
    80005084:	00f484b3          	add	s1,s1,a5
    80005088:	0554ec63          	bltu	s1,s5,800050e0 <freerange+0xd0>
    8000508c:	0534fa63          	bgeu	s1,s3,800050e0 <freerange+0xd0>
    80005090:	00001637          	lui	a2,0x1
    80005094:	00100593          	li	a1,1
    80005098:	00048513          	mv	a0,s1
    8000509c:	00000097          	auipc	ra,0x0
    800050a0:	50c080e7          	jalr	1292(ra) # 800055a8 <__memset>
    800050a4:	00093703          	ld	a4,0(s2)
    800050a8:	016487b3          	add	a5,s1,s6
    800050ac:	00e4b023          	sd	a4,0(s1)
    800050b0:	00993023          	sd	s1,0(s2)
    800050b4:	fcfa76e3          	bgeu	s4,a5,80005080 <freerange+0x70>
    800050b8:	03813083          	ld	ra,56(sp)
    800050bc:	03013403          	ld	s0,48(sp)
    800050c0:	02813483          	ld	s1,40(sp)
    800050c4:	02013903          	ld	s2,32(sp)
    800050c8:	01813983          	ld	s3,24(sp)
    800050cc:	01013a03          	ld	s4,16(sp)
    800050d0:	00813a83          	ld	s5,8(sp)
    800050d4:	00013b03          	ld	s6,0(sp)
    800050d8:	04010113          	addi	sp,sp,64
    800050dc:	00008067          	ret
    800050e0:	00001517          	auipc	a0,0x1
    800050e4:	1b050513          	addi	a0,a0,432 # 80006290 <digits+0x18>
    800050e8:	fffff097          	auipc	ra,0xfffff
    800050ec:	3d4080e7          	jalr	980(ra) # 800044bc <panic>

00000000800050f0 <kfree>:
    800050f0:	fe010113          	addi	sp,sp,-32
    800050f4:	00813823          	sd	s0,16(sp)
    800050f8:	00113c23          	sd	ra,24(sp)
    800050fc:	00913423          	sd	s1,8(sp)
    80005100:	02010413          	addi	s0,sp,32
    80005104:	03451793          	slli	a5,a0,0x34
    80005108:	04079c63          	bnez	a5,80005160 <kfree+0x70>
    8000510c:	00004797          	auipc	a5,0x4
    80005110:	90478793          	addi	a5,a5,-1788 # 80008a10 <end>
    80005114:	00050493          	mv	s1,a0
    80005118:	04f56463          	bltu	a0,a5,80005160 <kfree+0x70>
    8000511c:	01100793          	li	a5,17
    80005120:	01b79793          	slli	a5,a5,0x1b
    80005124:	02f57e63          	bgeu	a0,a5,80005160 <kfree+0x70>
    80005128:	00001637          	lui	a2,0x1
    8000512c:	00100593          	li	a1,1
    80005130:	00000097          	auipc	ra,0x0
    80005134:	478080e7          	jalr	1144(ra) # 800055a8 <__memset>
    80005138:	00002797          	auipc	a5,0x2
    8000513c:	61878793          	addi	a5,a5,1560 # 80007750 <kmem>
    80005140:	0007b703          	ld	a4,0(a5)
    80005144:	01813083          	ld	ra,24(sp)
    80005148:	01013403          	ld	s0,16(sp)
    8000514c:	00e4b023          	sd	a4,0(s1)
    80005150:	0097b023          	sd	s1,0(a5)
    80005154:	00813483          	ld	s1,8(sp)
    80005158:	02010113          	addi	sp,sp,32
    8000515c:	00008067          	ret
    80005160:	00001517          	auipc	a0,0x1
    80005164:	13050513          	addi	a0,a0,304 # 80006290 <digits+0x18>
    80005168:	fffff097          	auipc	ra,0xfffff
    8000516c:	354080e7          	jalr	852(ra) # 800044bc <panic>

0000000080005170 <kalloc>:
    80005170:	fe010113          	addi	sp,sp,-32
    80005174:	00813823          	sd	s0,16(sp)
    80005178:	00913423          	sd	s1,8(sp)
    8000517c:	00113c23          	sd	ra,24(sp)
    80005180:	02010413          	addi	s0,sp,32
    80005184:	00002797          	auipc	a5,0x2
    80005188:	5cc78793          	addi	a5,a5,1484 # 80007750 <kmem>
    8000518c:	0007b483          	ld	s1,0(a5)
    80005190:	02048063          	beqz	s1,800051b0 <kalloc+0x40>
    80005194:	0004b703          	ld	a4,0(s1)
    80005198:	00001637          	lui	a2,0x1
    8000519c:	00500593          	li	a1,5
    800051a0:	00048513          	mv	a0,s1
    800051a4:	00e7b023          	sd	a4,0(a5)
    800051a8:	00000097          	auipc	ra,0x0
    800051ac:	400080e7          	jalr	1024(ra) # 800055a8 <__memset>
    800051b0:	01813083          	ld	ra,24(sp)
    800051b4:	01013403          	ld	s0,16(sp)
    800051b8:	00048513          	mv	a0,s1
    800051bc:	00813483          	ld	s1,8(sp)
    800051c0:	02010113          	addi	sp,sp,32
    800051c4:	00008067          	ret

00000000800051c8 <initlock>:
    800051c8:	ff010113          	addi	sp,sp,-16
    800051cc:	00813423          	sd	s0,8(sp)
    800051d0:	01010413          	addi	s0,sp,16
    800051d4:	00813403          	ld	s0,8(sp)
    800051d8:	00b53423          	sd	a1,8(a0)
    800051dc:	00052023          	sw	zero,0(a0)
    800051e0:	00053823          	sd	zero,16(a0)
    800051e4:	01010113          	addi	sp,sp,16
    800051e8:	00008067          	ret

00000000800051ec <acquire>:
    800051ec:	fe010113          	addi	sp,sp,-32
    800051f0:	00813823          	sd	s0,16(sp)
    800051f4:	00913423          	sd	s1,8(sp)
    800051f8:	00113c23          	sd	ra,24(sp)
    800051fc:	01213023          	sd	s2,0(sp)
    80005200:	02010413          	addi	s0,sp,32
    80005204:	00050493          	mv	s1,a0
    80005208:	10002973          	csrr	s2,sstatus
    8000520c:	100027f3          	csrr	a5,sstatus
    80005210:	ffd7f793          	andi	a5,a5,-3
    80005214:	10079073          	csrw	sstatus,a5
    80005218:	fffff097          	auipc	ra,0xfffff
    8000521c:	8e8080e7          	jalr	-1816(ra) # 80003b00 <mycpu>
    80005220:	07852783          	lw	a5,120(a0)
    80005224:	06078e63          	beqz	a5,800052a0 <acquire+0xb4>
    80005228:	fffff097          	auipc	ra,0xfffff
    8000522c:	8d8080e7          	jalr	-1832(ra) # 80003b00 <mycpu>
    80005230:	07852783          	lw	a5,120(a0)
    80005234:	0004a703          	lw	a4,0(s1)
    80005238:	0017879b          	addiw	a5,a5,1
    8000523c:	06f52c23          	sw	a5,120(a0)
    80005240:	04071063          	bnez	a4,80005280 <acquire+0x94>
    80005244:	00100713          	li	a4,1
    80005248:	00070793          	mv	a5,a4
    8000524c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005250:	0007879b          	sext.w	a5,a5
    80005254:	fe079ae3          	bnez	a5,80005248 <acquire+0x5c>
    80005258:	0ff0000f          	fence
    8000525c:	fffff097          	auipc	ra,0xfffff
    80005260:	8a4080e7          	jalr	-1884(ra) # 80003b00 <mycpu>
    80005264:	01813083          	ld	ra,24(sp)
    80005268:	01013403          	ld	s0,16(sp)
    8000526c:	00a4b823          	sd	a0,16(s1)
    80005270:	00013903          	ld	s2,0(sp)
    80005274:	00813483          	ld	s1,8(sp)
    80005278:	02010113          	addi	sp,sp,32
    8000527c:	00008067          	ret
    80005280:	0104b903          	ld	s2,16(s1)
    80005284:	fffff097          	auipc	ra,0xfffff
    80005288:	87c080e7          	jalr	-1924(ra) # 80003b00 <mycpu>
    8000528c:	faa91ce3          	bne	s2,a0,80005244 <acquire+0x58>
    80005290:	00001517          	auipc	a0,0x1
    80005294:	00850513          	addi	a0,a0,8 # 80006298 <digits+0x20>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	224080e7          	jalr	548(ra) # 800044bc <panic>
    800052a0:	00195913          	srli	s2,s2,0x1
    800052a4:	fffff097          	auipc	ra,0xfffff
    800052a8:	85c080e7          	jalr	-1956(ra) # 80003b00 <mycpu>
    800052ac:	00197913          	andi	s2,s2,1
    800052b0:	07252e23          	sw	s2,124(a0)
    800052b4:	f75ff06f          	j	80005228 <acquire+0x3c>

00000000800052b8 <release>:
    800052b8:	fe010113          	addi	sp,sp,-32
    800052bc:	00813823          	sd	s0,16(sp)
    800052c0:	00113c23          	sd	ra,24(sp)
    800052c4:	00913423          	sd	s1,8(sp)
    800052c8:	01213023          	sd	s2,0(sp)
    800052cc:	02010413          	addi	s0,sp,32
    800052d0:	00052783          	lw	a5,0(a0)
    800052d4:	00079a63          	bnez	a5,800052e8 <release+0x30>
    800052d8:	00001517          	auipc	a0,0x1
    800052dc:	fc850513          	addi	a0,a0,-56 # 800062a0 <digits+0x28>
    800052e0:	fffff097          	auipc	ra,0xfffff
    800052e4:	1dc080e7          	jalr	476(ra) # 800044bc <panic>
    800052e8:	01053903          	ld	s2,16(a0)
    800052ec:	00050493          	mv	s1,a0
    800052f0:	fffff097          	auipc	ra,0xfffff
    800052f4:	810080e7          	jalr	-2032(ra) # 80003b00 <mycpu>
    800052f8:	fea910e3          	bne	s2,a0,800052d8 <release+0x20>
    800052fc:	0004b823          	sd	zero,16(s1)
    80005300:	0ff0000f          	fence
    80005304:	0f50000f          	fence	iorw,ow
    80005308:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000530c:	ffffe097          	auipc	ra,0xffffe
    80005310:	7f4080e7          	jalr	2036(ra) # 80003b00 <mycpu>
    80005314:	100027f3          	csrr	a5,sstatus
    80005318:	0027f793          	andi	a5,a5,2
    8000531c:	04079a63          	bnez	a5,80005370 <release+0xb8>
    80005320:	07852783          	lw	a5,120(a0)
    80005324:	02f05e63          	blez	a5,80005360 <release+0xa8>
    80005328:	fff7871b          	addiw	a4,a5,-1
    8000532c:	06e52c23          	sw	a4,120(a0)
    80005330:	00071c63          	bnez	a4,80005348 <release+0x90>
    80005334:	07c52783          	lw	a5,124(a0)
    80005338:	00078863          	beqz	a5,80005348 <release+0x90>
    8000533c:	100027f3          	csrr	a5,sstatus
    80005340:	0027e793          	ori	a5,a5,2
    80005344:	10079073          	csrw	sstatus,a5
    80005348:	01813083          	ld	ra,24(sp)
    8000534c:	01013403          	ld	s0,16(sp)
    80005350:	00813483          	ld	s1,8(sp)
    80005354:	00013903          	ld	s2,0(sp)
    80005358:	02010113          	addi	sp,sp,32
    8000535c:	00008067          	ret
    80005360:	00001517          	auipc	a0,0x1
    80005364:	f6050513          	addi	a0,a0,-160 # 800062c0 <digits+0x48>
    80005368:	fffff097          	auipc	ra,0xfffff
    8000536c:	154080e7          	jalr	340(ra) # 800044bc <panic>
    80005370:	00001517          	auipc	a0,0x1
    80005374:	f3850513          	addi	a0,a0,-200 # 800062a8 <digits+0x30>
    80005378:	fffff097          	auipc	ra,0xfffff
    8000537c:	144080e7          	jalr	324(ra) # 800044bc <panic>

0000000080005380 <holding>:
    80005380:	00052783          	lw	a5,0(a0)
    80005384:	00079663          	bnez	a5,80005390 <holding+0x10>
    80005388:	00000513          	li	a0,0
    8000538c:	00008067          	ret
    80005390:	fe010113          	addi	sp,sp,-32
    80005394:	00813823          	sd	s0,16(sp)
    80005398:	00913423          	sd	s1,8(sp)
    8000539c:	00113c23          	sd	ra,24(sp)
    800053a0:	02010413          	addi	s0,sp,32
    800053a4:	01053483          	ld	s1,16(a0)
    800053a8:	ffffe097          	auipc	ra,0xffffe
    800053ac:	758080e7          	jalr	1880(ra) # 80003b00 <mycpu>
    800053b0:	01813083          	ld	ra,24(sp)
    800053b4:	01013403          	ld	s0,16(sp)
    800053b8:	40a48533          	sub	a0,s1,a0
    800053bc:	00153513          	seqz	a0,a0
    800053c0:	00813483          	ld	s1,8(sp)
    800053c4:	02010113          	addi	sp,sp,32
    800053c8:	00008067          	ret

00000000800053cc <push_off>:
    800053cc:	fe010113          	addi	sp,sp,-32
    800053d0:	00813823          	sd	s0,16(sp)
    800053d4:	00113c23          	sd	ra,24(sp)
    800053d8:	00913423          	sd	s1,8(sp)
    800053dc:	02010413          	addi	s0,sp,32
    800053e0:	100024f3          	csrr	s1,sstatus
    800053e4:	100027f3          	csrr	a5,sstatus
    800053e8:	ffd7f793          	andi	a5,a5,-3
    800053ec:	10079073          	csrw	sstatus,a5
    800053f0:	ffffe097          	auipc	ra,0xffffe
    800053f4:	710080e7          	jalr	1808(ra) # 80003b00 <mycpu>
    800053f8:	07852783          	lw	a5,120(a0)
    800053fc:	02078663          	beqz	a5,80005428 <push_off+0x5c>
    80005400:	ffffe097          	auipc	ra,0xffffe
    80005404:	700080e7          	jalr	1792(ra) # 80003b00 <mycpu>
    80005408:	07852783          	lw	a5,120(a0)
    8000540c:	01813083          	ld	ra,24(sp)
    80005410:	01013403          	ld	s0,16(sp)
    80005414:	0017879b          	addiw	a5,a5,1
    80005418:	06f52c23          	sw	a5,120(a0)
    8000541c:	00813483          	ld	s1,8(sp)
    80005420:	02010113          	addi	sp,sp,32
    80005424:	00008067          	ret
    80005428:	0014d493          	srli	s1,s1,0x1
    8000542c:	ffffe097          	auipc	ra,0xffffe
    80005430:	6d4080e7          	jalr	1748(ra) # 80003b00 <mycpu>
    80005434:	0014f493          	andi	s1,s1,1
    80005438:	06952e23          	sw	s1,124(a0)
    8000543c:	fc5ff06f          	j	80005400 <push_off+0x34>

0000000080005440 <pop_off>:
    80005440:	ff010113          	addi	sp,sp,-16
    80005444:	00813023          	sd	s0,0(sp)
    80005448:	00113423          	sd	ra,8(sp)
    8000544c:	01010413          	addi	s0,sp,16
    80005450:	ffffe097          	auipc	ra,0xffffe
    80005454:	6b0080e7          	jalr	1712(ra) # 80003b00 <mycpu>
    80005458:	100027f3          	csrr	a5,sstatus
    8000545c:	0027f793          	andi	a5,a5,2
    80005460:	04079663          	bnez	a5,800054ac <pop_off+0x6c>
    80005464:	07852783          	lw	a5,120(a0)
    80005468:	02f05a63          	blez	a5,8000549c <pop_off+0x5c>
    8000546c:	fff7871b          	addiw	a4,a5,-1
    80005470:	06e52c23          	sw	a4,120(a0)
    80005474:	00071c63          	bnez	a4,8000548c <pop_off+0x4c>
    80005478:	07c52783          	lw	a5,124(a0)
    8000547c:	00078863          	beqz	a5,8000548c <pop_off+0x4c>
    80005480:	100027f3          	csrr	a5,sstatus
    80005484:	0027e793          	ori	a5,a5,2
    80005488:	10079073          	csrw	sstatus,a5
    8000548c:	00813083          	ld	ra,8(sp)
    80005490:	00013403          	ld	s0,0(sp)
    80005494:	01010113          	addi	sp,sp,16
    80005498:	00008067          	ret
    8000549c:	00001517          	auipc	a0,0x1
    800054a0:	e2450513          	addi	a0,a0,-476 # 800062c0 <digits+0x48>
    800054a4:	fffff097          	auipc	ra,0xfffff
    800054a8:	018080e7          	jalr	24(ra) # 800044bc <panic>
    800054ac:	00001517          	auipc	a0,0x1
    800054b0:	dfc50513          	addi	a0,a0,-516 # 800062a8 <digits+0x30>
    800054b4:	fffff097          	auipc	ra,0xfffff
    800054b8:	008080e7          	jalr	8(ra) # 800044bc <panic>

00000000800054bc <push_on>:
    800054bc:	fe010113          	addi	sp,sp,-32
    800054c0:	00813823          	sd	s0,16(sp)
    800054c4:	00113c23          	sd	ra,24(sp)
    800054c8:	00913423          	sd	s1,8(sp)
    800054cc:	02010413          	addi	s0,sp,32
    800054d0:	100024f3          	csrr	s1,sstatus
    800054d4:	100027f3          	csrr	a5,sstatus
    800054d8:	0027e793          	ori	a5,a5,2
    800054dc:	10079073          	csrw	sstatus,a5
    800054e0:	ffffe097          	auipc	ra,0xffffe
    800054e4:	620080e7          	jalr	1568(ra) # 80003b00 <mycpu>
    800054e8:	07852783          	lw	a5,120(a0)
    800054ec:	02078663          	beqz	a5,80005518 <push_on+0x5c>
    800054f0:	ffffe097          	auipc	ra,0xffffe
    800054f4:	610080e7          	jalr	1552(ra) # 80003b00 <mycpu>
    800054f8:	07852783          	lw	a5,120(a0)
    800054fc:	01813083          	ld	ra,24(sp)
    80005500:	01013403          	ld	s0,16(sp)
    80005504:	0017879b          	addiw	a5,a5,1
    80005508:	06f52c23          	sw	a5,120(a0)
    8000550c:	00813483          	ld	s1,8(sp)
    80005510:	02010113          	addi	sp,sp,32
    80005514:	00008067          	ret
    80005518:	0014d493          	srli	s1,s1,0x1
    8000551c:	ffffe097          	auipc	ra,0xffffe
    80005520:	5e4080e7          	jalr	1508(ra) # 80003b00 <mycpu>
    80005524:	0014f493          	andi	s1,s1,1
    80005528:	06952e23          	sw	s1,124(a0)
    8000552c:	fc5ff06f          	j	800054f0 <push_on+0x34>

0000000080005530 <pop_on>:
    80005530:	ff010113          	addi	sp,sp,-16
    80005534:	00813023          	sd	s0,0(sp)
    80005538:	00113423          	sd	ra,8(sp)
    8000553c:	01010413          	addi	s0,sp,16
    80005540:	ffffe097          	auipc	ra,0xffffe
    80005544:	5c0080e7          	jalr	1472(ra) # 80003b00 <mycpu>
    80005548:	100027f3          	csrr	a5,sstatus
    8000554c:	0027f793          	andi	a5,a5,2
    80005550:	04078463          	beqz	a5,80005598 <pop_on+0x68>
    80005554:	07852783          	lw	a5,120(a0)
    80005558:	02f05863          	blez	a5,80005588 <pop_on+0x58>
    8000555c:	fff7879b          	addiw	a5,a5,-1
    80005560:	06f52c23          	sw	a5,120(a0)
    80005564:	07853783          	ld	a5,120(a0)
    80005568:	00079863          	bnez	a5,80005578 <pop_on+0x48>
    8000556c:	100027f3          	csrr	a5,sstatus
    80005570:	ffd7f793          	andi	a5,a5,-3
    80005574:	10079073          	csrw	sstatus,a5
    80005578:	00813083          	ld	ra,8(sp)
    8000557c:	00013403          	ld	s0,0(sp)
    80005580:	01010113          	addi	sp,sp,16
    80005584:	00008067          	ret
    80005588:	00001517          	auipc	a0,0x1
    8000558c:	d6050513          	addi	a0,a0,-672 # 800062e8 <digits+0x70>
    80005590:	fffff097          	auipc	ra,0xfffff
    80005594:	f2c080e7          	jalr	-212(ra) # 800044bc <panic>
    80005598:	00001517          	auipc	a0,0x1
    8000559c:	d3050513          	addi	a0,a0,-720 # 800062c8 <digits+0x50>
    800055a0:	fffff097          	auipc	ra,0xfffff
    800055a4:	f1c080e7          	jalr	-228(ra) # 800044bc <panic>

00000000800055a8 <__memset>:
    800055a8:	ff010113          	addi	sp,sp,-16
    800055ac:	00813423          	sd	s0,8(sp)
    800055b0:	01010413          	addi	s0,sp,16
    800055b4:	1a060e63          	beqz	a2,80005770 <__memset+0x1c8>
    800055b8:	40a007b3          	neg	a5,a0
    800055bc:	0077f793          	andi	a5,a5,7
    800055c0:	00778693          	addi	a3,a5,7
    800055c4:	00b00813          	li	a6,11
    800055c8:	0ff5f593          	andi	a1,a1,255
    800055cc:	fff6071b          	addiw	a4,a2,-1
    800055d0:	1b06e663          	bltu	a3,a6,8000577c <__memset+0x1d4>
    800055d4:	1cd76463          	bltu	a4,a3,8000579c <__memset+0x1f4>
    800055d8:	1a078e63          	beqz	a5,80005794 <__memset+0x1ec>
    800055dc:	00b50023          	sb	a1,0(a0)
    800055e0:	00100713          	li	a4,1
    800055e4:	1ae78463          	beq	a5,a4,8000578c <__memset+0x1e4>
    800055e8:	00b500a3          	sb	a1,1(a0)
    800055ec:	00200713          	li	a4,2
    800055f0:	1ae78a63          	beq	a5,a4,800057a4 <__memset+0x1fc>
    800055f4:	00b50123          	sb	a1,2(a0)
    800055f8:	00300713          	li	a4,3
    800055fc:	18e78463          	beq	a5,a4,80005784 <__memset+0x1dc>
    80005600:	00b501a3          	sb	a1,3(a0)
    80005604:	00400713          	li	a4,4
    80005608:	1ae78263          	beq	a5,a4,800057ac <__memset+0x204>
    8000560c:	00b50223          	sb	a1,4(a0)
    80005610:	00500713          	li	a4,5
    80005614:	1ae78063          	beq	a5,a4,800057b4 <__memset+0x20c>
    80005618:	00b502a3          	sb	a1,5(a0)
    8000561c:	00700713          	li	a4,7
    80005620:	18e79e63          	bne	a5,a4,800057bc <__memset+0x214>
    80005624:	00b50323          	sb	a1,6(a0)
    80005628:	00700e93          	li	t4,7
    8000562c:	00859713          	slli	a4,a1,0x8
    80005630:	00e5e733          	or	a4,a1,a4
    80005634:	01059e13          	slli	t3,a1,0x10
    80005638:	01c76e33          	or	t3,a4,t3
    8000563c:	01859313          	slli	t1,a1,0x18
    80005640:	006e6333          	or	t1,t3,t1
    80005644:	02059893          	slli	a7,a1,0x20
    80005648:	40f60e3b          	subw	t3,a2,a5
    8000564c:	011368b3          	or	a7,t1,a7
    80005650:	02859813          	slli	a6,a1,0x28
    80005654:	0108e833          	or	a6,a7,a6
    80005658:	03059693          	slli	a3,a1,0x30
    8000565c:	003e589b          	srliw	a7,t3,0x3
    80005660:	00d866b3          	or	a3,a6,a3
    80005664:	03859713          	slli	a4,a1,0x38
    80005668:	00389813          	slli	a6,a7,0x3
    8000566c:	00f507b3          	add	a5,a0,a5
    80005670:	00e6e733          	or	a4,a3,a4
    80005674:	000e089b          	sext.w	a7,t3
    80005678:	00f806b3          	add	a3,a6,a5
    8000567c:	00e7b023          	sd	a4,0(a5)
    80005680:	00878793          	addi	a5,a5,8
    80005684:	fed79ce3          	bne	a5,a3,8000567c <__memset+0xd4>
    80005688:	ff8e7793          	andi	a5,t3,-8
    8000568c:	0007871b          	sext.w	a4,a5
    80005690:	01d787bb          	addw	a5,a5,t4
    80005694:	0ce88e63          	beq	a7,a4,80005770 <__memset+0x1c8>
    80005698:	00f50733          	add	a4,a0,a5
    8000569c:	00b70023          	sb	a1,0(a4)
    800056a0:	0017871b          	addiw	a4,a5,1
    800056a4:	0cc77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056a8:	00e50733          	add	a4,a0,a4
    800056ac:	00b70023          	sb	a1,0(a4)
    800056b0:	0027871b          	addiw	a4,a5,2
    800056b4:	0ac77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056b8:	00e50733          	add	a4,a0,a4
    800056bc:	00b70023          	sb	a1,0(a4)
    800056c0:	0037871b          	addiw	a4,a5,3
    800056c4:	0ac77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056c8:	00e50733          	add	a4,a0,a4
    800056cc:	00b70023          	sb	a1,0(a4)
    800056d0:	0047871b          	addiw	a4,a5,4
    800056d4:	08c77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056d8:	00e50733          	add	a4,a0,a4
    800056dc:	00b70023          	sb	a1,0(a4)
    800056e0:	0057871b          	addiw	a4,a5,5
    800056e4:	08c77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056e8:	00e50733          	add	a4,a0,a4
    800056ec:	00b70023          	sb	a1,0(a4)
    800056f0:	0067871b          	addiw	a4,a5,6
    800056f4:	06c77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    800056f8:	00e50733          	add	a4,a0,a4
    800056fc:	00b70023          	sb	a1,0(a4)
    80005700:	0077871b          	addiw	a4,a5,7
    80005704:	06c77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005708:	00e50733          	add	a4,a0,a4
    8000570c:	00b70023          	sb	a1,0(a4)
    80005710:	0087871b          	addiw	a4,a5,8
    80005714:	04c77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005718:	00e50733          	add	a4,a0,a4
    8000571c:	00b70023          	sb	a1,0(a4)
    80005720:	0097871b          	addiw	a4,a5,9
    80005724:	04c77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005728:	00e50733          	add	a4,a0,a4
    8000572c:	00b70023          	sb	a1,0(a4)
    80005730:	00a7871b          	addiw	a4,a5,10
    80005734:	02c77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005738:	00e50733          	add	a4,a0,a4
    8000573c:	00b70023          	sb	a1,0(a4)
    80005740:	00b7871b          	addiw	a4,a5,11
    80005744:	02c77663          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005748:	00e50733          	add	a4,a0,a4
    8000574c:	00b70023          	sb	a1,0(a4)
    80005750:	00c7871b          	addiw	a4,a5,12
    80005754:	00c77e63          	bgeu	a4,a2,80005770 <__memset+0x1c8>
    80005758:	00e50733          	add	a4,a0,a4
    8000575c:	00b70023          	sb	a1,0(a4)
    80005760:	00d7879b          	addiw	a5,a5,13
    80005764:	00c7f663          	bgeu	a5,a2,80005770 <__memset+0x1c8>
    80005768:	00f507b3          	add	a5,a0,a5
    8000576c:	00b78023          	sb	a1,0(a5)
    80005770:	00813403          	ld	s0,8(sp)
    80005774:	01010113          	addi	sp,sp,16
    80005778:	00008067          	ret
    8000577c:	00b00693          	li	a3,11
    80005780:	e55ff06f          	j	800055d4 <__memset+0x2c>
    80005784:	00300e93          	li	t4,3
    80005788:	ea5ff06f          	j	8000562c <__memset+0x84>
    8000578c:	00100e93          	li	t4,1
    80005790:	e9dff06f          	j	8000562c <__memset+0x84>
    80005794:	00000e93          	li	t4,0
    80005798:	e95ff06f          	j	8000562c <__memset+0x84>
    8000579c:	00000793          	li	a5,0
    800057a0:	ef9ff06f          	j	80005698 <__memset+0xf0>
    800057a4:	00200e93          	li	t4,2
    800057a8:	e85ff06f          	j	8000562c <__memset+0x84>
    800057ac:	00400e93          	li	t4,4
    800057b0:	e7dff06f          	j	8000562c <__memset+0x84>
    800057b4:	00500e93          	li	t4,5
    800057b8:	e75ff06f          	j	8000562c <__memset+0x84>
    800057bc:	00600e93          	li	t4,6
    800057c0:	e6dff06f          	j	8000562c <__memset+0x84>

00000000800057c4 <__memmove>:
    800057c4:	ff010113          	addi	sp,sp,-16
    800057c8:	00813423          	sd	s0,8(sp)
    800057cc:	01010413          	addi	s0,sp,16
    800057d0:	0e060863          	beqz	a2,800058c0 <__memmove+0xfc>
    800057d4:	fff6069b          	addiw	a3,a2,-1
    800057d8:	0006881b          	sext.w	a6,a3
    800057dc:	0ea5e863          	bltu	a1,a0,800058cc <__memmove+0x108>
    800057e0:	00758713          	addi	a4,a1,7
    800057e4:	00a5e7b3          	or	a5,a1,a0
    800057e8:	40a70733          	sub	a4,a4,a0
    800057ec:	0077f793          	andi	a5,a5,7
    800057f0:	00f73713          	sltiu	a4,a4,15
    800057f4:	00174713          	xori	a4,a4,1
    800057f8:	0017b793          	seqz	a5,a5
    800057fc:	00e7f7b3          	and	a5,a5,a4
    80005800:	10078863          	beqz	a5,80005910 <__memmove+0x14c>
    80005804:	00900793          	li	a5,9
    80005808:	1107f463          	bgeu	a5,a6,80005910 <__memmove+0x14c>
    8000580c:	0036581b          	srliw	a6,a2,0x3
    80005810:	fff8081b          	addiw	a6,a6,-1
    80005814:	02081813          	slli	a6,a6,0x20
    80005818:	01d85893          	srli	a7,a6,0x1d
    8000581c:	00858813          	addi	a6,a1,8
    80005820:	00058793          	mv	a5,a1
    80005824:	00050713          	mv	a4,a0
    80005828:	01088833          	add	a6,a7,a6
    8000582c:	0007b883          	ld	a7,0(a5)
    80005830:	00878793          	addi	a5,a5,8
    80005834:	00870713          	addi	a4,a4,8
    80005838:	ff173c23          	sd	a7,-8(a4)
    8000583c:	ff0798e3          	bne	a5,a6,8000582c <__memmove+0x68>
    80005840:	ff867713          	andi	a4,a2,-8
    80005844:	02071793          	slli	a5,a4,0x20
    80005848:	0207d793          	srli	a5,a5,0x20
    8000584c:	00f585b3          	add	a1,a1,a5
    80005850:	40e686bb          	subw	a3,a3,a4
    80005854:	00f507b3          	add	a5,a0,a5
    80005858:	06e60463          	beq	a2,a4,800058c0 <__memmove+0xfc>
    8000585c:	0005c703          	lbu	a4,0(a1)
    80005860:	00e78023          	sb	a4,0(a5)
    80005864:	04068e63          	beqz	a3,800058c0 <__memmove+0xfc>
    80005868:	0015c603          	lbu	a2,1(a1)
    8000586c:	00100713          	li	a4,1
    80005870:	00c780a3          	sb	a2,1(a5)
    80005874:	04e68663          	beq	a3,a4,800058c0 <__memmove+0xfc>
    80005878:	0025c603          	lbu	a2,2(a1)
    8000587c:	00200713          	li	a4,2
    80005880:	00c78123          	sb	a2,2(a5)
    80005884:	02e68e63          	beq	a3,a4,800058c0 <__memmove+0xfc>
    80005888:	0035c603          	lbu	a2,3(a1)
    8000588c:	00300713          	li	a4,3
    80005890:	00c781a3          	sb	a2,3(a5)
    80005894:	02e68663          	beq	a3,a4,800058c0 <__memmove+0xfc>
    80005898:	0045c603          	lbu	a2,4(a1)
    8000589c:	00400713          	li	a4,4
    800058a0:	00c78223          	sb	a2,4(a5)
    800058a4:	00e68e63          	beq	a3,a4,800058c0 <__memmove+0xfc>
    800058a8:	0055c603          	lbu	a2,5(a1)
    800058ac:	00500713          	li	a4,5
    800058b0:	00c782a3          	sb	a2,5(a5)
    800058b4:	00e68663          	beq	a3,a4,800058c0 <__memmove+0xfc>
    800058b8:	0065c703          	lbu	a4,6(a1)
    800058bc:	00e78323          	sb	a4,6(a5)
    800058c0:	00813403          	ld	s0,8(sp)
    800058c4:	01010113          	addi	sp,sp,16
    800058c8:	00008067          	ret
    800058cc:	02061713          	slli	a4,a2,0x20
    800058d0:	02075713          	srli	a4,a4,0x20
    800058d4:	00e587b3          	add	a5,a1,a4
    800058d8:	f0f574e3          	bgeu	a0,a5,800057e0 <__memmove+0x1c>
    800058dc:	02069613          	slli	a2,a3,0x20
    800058e0:	02065613          	srli	a2,a2,0x20
    800058e4:	fff64613          	not	a2,a2
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00c78633          	add	a2,a5,a2
    800058f0:	fff7c683          	lbu	a3,-1(a5)
    800058f4:	fff78793          	addi	a5,a5,-1
    800058f8:	fff70713          	addi	a4,a4,-1
    800058fc:	00d70023          	sb	a3,0(a4)
    80005900:	fec798e3          	bne	a5,a2,800058f0 <__memmove+0x12c>
    80005904:	00813403          	ld	s0,8(sp)
    80005908:	01010113          	addi	sp,sp,16
    8000590c:	00008067          	ret
    80005910:	02069713          	slli	a4,a3,0x20
    80005914:	02075713          	srli	a4,a4,0x20
    80005918:	00170713          	addi	a4,a4,1
    8000591c:	00e50733          	add	a4,a0,a4
    80005920:	00050793          	mv	a5,a0
    80005924:	0005c683          	lbu	a3,0(a1)
    80005928:	00178793          	addi	a5,a5,1
    8000592c:	00158593          	addi	a1,a1,1
    80005930:	fed78fa3          	sb	a3,-1(a5)
    80005934:	fee798e3          	bne	a5,a4,80005924 <__memmove+0x160>
    80005938:	f89ff06f          	j	800058c0 <__memmove+0xfc>

000000008000593c <__putc>:
    8000593c:	fe010113          	addi	sp,sp,-32
    80005940:	00813823          	sd	s0,16(sp)
    80005944:	00113c23          	sd	ra,24(sp)
    80005948:	02010413          	addi	s0,sp,32
    8000594c:	00050793          	mv	a5,a0
    80005950:	fef40593          	addi	a1,s0,-17
    80005954:	00100613          	li	a2,1
    80005958:	00000513          	li	a0,0
    8000595c:	fef407a3          	sb	a5,-17(s0)
    80005960:	fffff097          	auipc	ra,0xfffff
    80005964:	b3c080e7          	jalr	-1220(ra) # 8000449c <console_write>
    80005968:	01813083          	ld	ra,24(sp)
    8000596c:	01013403          	ld	s0,16(sp)
    80005970:	02010113          	addi	sp,sp,32
    80005974:	00008067          	ret

0000000080005978 <__getc>:
    80005978:	fe010113          	addi	sp,sp,-32
    8000597c:	00813823          	sd	s0,16(sp)
    80005980:	00113c23          	sd	ra,24(sp)
    80005984:	02010413          	addi	s0,sp,32
    80005988:	fe840593          	addi	a1,s0,-24
    8000598c:	00100613          	li	a2,1
    80005990:	00000513          	li	a0,0
    80005994:	fffff097          	auipc	ra,0xfffff
    80005998:	ae8080e7          	jalr	-1304(ra) # 8000447c <console_read>
    8000599c:	fe844503          	lbu	a0,-24(s0)
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	02010113          	addi	sp,sp,32
    800059ac:	00008067          	ret

00000000800059b0 <console_handler>:
    800059b0:	fe010113          	addi	sp,sp,-32
    800059b4:	00813823          	sd	s0,16(sp)
    800059b8:	00113c23          	sd	ra,24(sp)
    800059bc:	00913423          	sd	s1,8(sp)
    800059c0:	02010413          	addi	s0,sp,32
    800059c4:	14202773          	csrr	a4,scause
    800059c8:	100027f3          	csrr	a5,sstatus
    800059cc:	0027f793          	andi	a5,a5,2
    800059d0:	06079e63          	bnez	a5,80005a4c <console_handler+0x9c>
    800059d4:	00074c63          	bltz	a4,800059ec <console_handler+0x3c>
    800059d8:	01813083          	ld	ra,24(sp)
    800059dc:	01013403          	ld	s0,16(sp)
    800059e0:	00813483          	ld	s1,8(sp)
    800059e4:	02010113          	addi	sp,sp,32
    800059e8:	00008067          	ret
    800059ec:	0ff77713          	andi	a4,a4,255
    800059f0:	00900793          	li	a5,9
    800059f4:	fef712e3          	bne	a4,a5,800059d8 <console_handler+0x28>
    800059f8:	ffffe097          	auipc	ra,0xffffe
    800059fc:	6dc080e7          	jalr	1756(ra) # 800040d4 <plic_claim>
    80005a00:	00a00793          	li	a5,10
    80005a04:	00050493          	mv	s1,a0
    80005a08:	02f50c63          	beq	a0,a5,80005a40 <console_handler+0x90>
    80005a0c:	fc0506e3          	beqz	a0,800059d8 <console_handler+0x28>
    80005a10:	00050593          	mv	a1,a0
    80005a14:	00000517          	auipc	a0,0x0
    80005a18:	7dc50513          	addi	a0,a0,2012 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80005a1c:	fffff097          	auipc	ra,0xfffff
    80005a20:	afc080e7          	jalr	-1284(ra) # 80004518 <__printf>
    80005a24:	01013403          	ld	s0,16(sp)
    80005a28:	01813083          	ld	ra,24(sp)
    80005a2c:	00048513          	mv	a0,s1
    80005a30:	00813483          	ld	s1,8(sp)
    80005a34:	02010113          	addi	sp,sp,32
    80005a38:	ffffe317          	auipc	t1,0xffffe
    80005a3c:	6d430067          	jr	1748(t1) # 8000410c <plic_complete>
    80005a40:	fffff097          	auipc	ra,0xfffff
    80005a44:	3e0080e7          	jalr	992(ra) # 80004e20 <uartintr>
    80005a48:	fddff06f          	j	80005a24 <console_handler+0x74>
    80005a4c:	00001517          	auipc	a0,0x1
    80005a50:	8a450513          	addi	a0,a0,-1884 # 800062f0 <digits+0x78>
    80005a54:	fffff097          	auipc	ra,0xfffff
    80005a58:	a68080e7          	jalr	-1432(ra) # 800044bc <panic>
	...
