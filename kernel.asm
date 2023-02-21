
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	5b813103          	ld	sp,1464(sp) # 800075b8 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	215030ef          	jal	ra,80003a30 <start>

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
    sret
    80001074:	10200073          	sret

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
    sret
    800010ec:	10200073          	sret

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
    80001170:	274010ef          	jal	ra,800023e4 <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001428:	704080e7          	jalr	1796(ra) # 80005b28 <__getc>
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
    80001450:	6a0080e7          	jalr	1696(ra) # 80005aec <__putc>
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

00000000800014a8 <_Z4joinP3TCB>:


void join(thread_t t) {
    800014a8:	ff010113          	addi	sp,sp,-16
    800014ac:	00813423          	sd	s0,8(sp)
    800014b0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(t));
    800014b4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x17");
    800014b8:	01700513          	li	a0,23
    __asm__ volatile("ecall");
    800014bc:	00000073          	ecall
}
    800014c0:	00813403          	ld	s0,8(sp)
    800014c4:	01010113          	addi	sp,sp,16
    800014c8:	00008067          	ret

00000000800014cc <_ZN10Ksemaphore5blockEv>:
#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    800014cc:	fd010113          	addi	sp,sp,-48
    800014d0:	02113423          	sd	ra,40(sp)
    800014d4:	02813023          	sd	s0,32(sp)
    800014d8:	00913c23          	sd	s1,24(sp)
    800014dc:	01213823          	sd	s2,16(sp)
    800014e0:	01313423          	sd	s3,8(sp)
    800014e4:	03010413          	addi	s0,sp,48
    800014e8:	00050913          	mv	s2,a0
    TCB* tr=TCB::running;
    800014ec:	00006797          	auipc	a5,0x6
    800014f0:	0d47b783          	ld	a5,212(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014f4:	0007b983          	ld	s3,0(a5)
    blocked.addLast(tr);
    800014f8:	00850493          	addi	s1,a0,8
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800014fc:	01000513          	li	a0,16
    80001500:	00001097          	auipc	ra,0x1
    80001504:	d78080e7          	jalr	-648(ra) # 80002278 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001508:	01353023          	sd	s3,0(a0)
    8000150c:	00053423          	sd	zero,8(a0)
        if (tail)
    80001510:	0084b783          	ld	a5,8(s1)
    80001514:	02078a63          	beqz	a5,80001548 <_ZN10Ksemaphore5blockEv+0x7c>
        {
            tail->next = elem;
    80001518:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000151c:	00a4b423          	sd	a0,8(s1)
        } else
        {
            head = tail = elem;
        }
        num++;
    80001520:	0104a783          	lw	a5,16(s1)
    80001524:	0017879b          	addiw	a5,a5,1
    80001528:	00f4a823          	sw	a5,16(s1)
}
    8000152c:	02813083          	ld	ra,40(sp)
    80001530:	02013403          	ld	s0,32(sp)
    80001534:	01813483          	ld	s1,24(sp)
    80001538:	01013903          	ld	s2,16(sp)
    8000153c:	00813983          	ld	s3,8(sp)
    80001540:	03010113          	addi	sp,sp,48
    80001544:	00008067          	ret
            head = tail = elem;
    80001548:	00a4b423          	sd	a0,8(s1)
    8000154c:	00a93423          	sd	a0,8(s2)
    80001550:	fd1ff06f          	j	80001520 <_ZN10Ksemaphore5blockEv+0x54>

0000000080001554 <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    80001554:	ff010113          	addi	sp,sp,-16
    80001558:	00113423          	sd	ra,8(sp)
    8000155c:	00813023          	sd	s0,0(sp)
    80001560:	01010413          	addi	s0,sp,16
    80001564:	00050793          	mv	a5,a0

    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001568:	00853503          	ld	a0,8(a0)
    8000156c:	02050063          	beqz	a0,8000158c <_ZN10Ksemaphore7unblockEv+0x38>

        Elem *elem = head;
        head = head->next;
    80001570:	00853703          	ld	a4,8(a0)
    80001574:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001578:	02070663          	beqz	a4,800015a4 <_ZN10Ksemaphore7unblockEv+0x50>

        T *ret = elem->data;
    8000157c:	00053503          	ld	a0,0(a0)
//        delete elem;
        num--;
    80001580:	0187a703          	lw	a4,24(a5)
    80001584:	fff7071b          	addiw	a4,a4,-1
    80001588:	00e7ac23          	sw	a4,24(a5)
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	69c080e7          	jalr	1692(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
}
    80001594:	00813083          	ld	ra,8(sp)
    80001598:	00013403          	ld	s0,0(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret
        if (!head) { tail = 0; }
    800015a4:	0007b823          	sd	zero,16(a5)
    800015a8:	fd5ff06f          	j	8000157c <_ZN10Ksemaphore7unblockEv+0x28>

00000000800015ac <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    800015ac:	00052783          	lw	a5,0(a0)
    800015b0:	fff7879b          	addiw	a5,a5,-1
    800015b4:	00f52023          	sw	a5,0(a0)
    800015b8:	02079713          	slli	a4,a5,0x20
    800015bc:	00074663          	bltz	a4,800015c8 <_ZN10Ksemaphore4waitEv+0x1c>
        block();
        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 1;
    800015c0:	00100513          	li	a0,1
}
    800015c4:	00008067          	ret
int Ksemaphore::wait() {
    800015c8:	ff010113          	addi	sp,sp,-16
    800015cc:	00113423          	sd	ra,8(sp)
    800015d0:	00813023          	sd	s0,0(sp)
    800015d4:	01010413          	addi	s0,sp,16
        block();
    800015d8:	00000097          	auipc	ra,0x0
    800015dc:	ef4080e7          	jalr	-268(ra) # 800014cc <_ZN10Ksemaphore5blockEv>
        TCB::dispatchWithoutScheduler();
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	244080e7          	jalr	580(ra) # 80002824 <_ZN3TCB24dispatchWithoutSchedulerEv>
        return 0;
    800015e8:	00000513          	li	a0,0
}
    800015ec:	00813083          	ld	ra,8(sp)
    800015f0:	00013403          	ld	s0,0(sp)
    800015f4:	01010113          	addi	sp,sp,16
    800015f8:	00008067          	ret

00000000800015fc <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    800015fc:	00052783          	lw	a5,0(a0)
    80001600:	0017879b          	addiw	a5,a5,1
    80001604:	0007871b          	sext.w	a4,a5
    80001608:	00f52023          	sw	a5,0(a0)
    8000160c:	00e05663          	blez	a4,80001618 <_ZN10Ksemaphore6signalEv+0x1c>
        unblock();
        return 0;
    }
    return 1;
    80001610:	00100513          	li	a0,1
}
    80001614:	00008067          	ret
int Ksemaphore::signal() {
    80001618:	ff010113          	addi	sp,sp,-16
    8000161c:	00113423          	sd	ra,8(sp)
    80001620:	00813023          	sd	s0,0(sp)
    80001624:	01010413          	addi	s0,sp,16
        unblock();
    80001628:	00000097          	auipc	ra,0x0
    8000162c:	f2c080e7          	jalr	-212(ra) # 80001554 <_ZN10Ksemaphore7unblockEv>
        return 0;
    80001630:	00000513          	li	a0,0
}
    80001634:	00813083          	ld	ra,8(sp)
    80001638:	00013403          	ld	s0,0(sp)
    8000163c:	01010113          	addi	sp,sp,16
    80001640:	00008067          	ret

0000000080001644 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    80001644:	fe010113          	addi	sp,sp,-32
    80001648:	00113c23          	sd	ra,24(sp)
    8000164c:	00813823          	sd	s0,16(sp)
    80001650:	00913423          	sd	s1,8(sp)
    80001654:	02010413          	addi	s0,sp,32
    80001658:	00050493          	mv	s1,a0
    8000165c:	0240006f          	j	80001680 <_ZN10Ksemaphore14closeSemaphoreEv+0x3c>
    80001660:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001664:	0007b503          	ld	a0,0(a5)
        num--;
    80001668:	0184a783          	lw	a5,24(s1)
    8000166c:	fff7879b          	addiw	a5,a5,-1
    80001670:	00f4ac23          	sw	a5,24(s1)
    TCB* tcb;
    while((tcb=blocked.removeFirst())!= nullptr){
    80001674:	02050263          	beqz	a0,80001698 <_ZN10Ksemaphore14closeSemaphoreEv+0x54>
//        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	5b0080e7          	jalr	1456(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001680:	0084b783          	ld	a5,8(s1)
    80001684:	00078a63          	beqz	a5,80001698 <_ZN10Ksemaphore14closeSemaphoreEv+0x54>
        head = head->next;
    80001688:	0087b703          	ld	a4,8(a5)
    8000168c:	00e4b423          	sd	a4,8(s1)
        if (!head) { tail = 0; }
    80001690:	fc071ae3          	bnez	a4,80001664 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    80001694:	fcdff06f          	j	80001660 <_ZN10Ksemaphore14closeSemaphoreEv+0x1c>
    }

    return 0;
}
    80001698:	00000513          	li	a0,0
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	02010113          	addi	sp,sp,32
    800016ac:	00008067          	ret

00000000800016b0 <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    800016b0:	ff010113          	addi	sp,sp,-16
    800016b4:	00113423          	sd	ra,8(sp)
    800016b8:	00813023          	sd	s0,0(sp)
    800016bc:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800016c0:	00001097          	auipc	ra,0x1
    800016c4:	7bc080e7          	jalr	1980(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
    return;
}
    800016c8:	00813083          	ld	ra,8(sp)
    800016cc:	00013403          	ld	s0,0(sp)
    800016d0:	01010113          	addi	sp,sp,16
    800016d4:	00008067          	ret

00000000800016d8 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    800016d8:	ff010113          	addi	sp,sp,-16
    800016dc:	00113423          	sd	ra,8(sp)
    800016e0:	00813023          	sd	s0,0(sp)
    800016e4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    800016e8:	02000513          	li	a0,32
    800016ec:	00001097          	auipc	ra,0x1
    800016f0:	6f4080e7          	jalr	1780(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
}
    800016f4:	00813083          	ld	ra,8(sp)
    800016f8:	00013403          	ld	s0,0(sp)
    800016fc:	01010113          	addi	sp,sp,16
    80001700:	00008067          	ret

0000000080001704 <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	02010413          	addi	s0,sp,32
    80001718:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    8000171c:	02000513          	li	a0,32
    80001720:	00000097          	auipc	ra,0x0
    80001724:	fb8080e7          	jalr	-72(ra) # 800016d8 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    80001728:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0), num(0){}
    8000172c:	00053423          	sd	zero,8(a0)
    80001730:	00053823          	sd	zero,16(a0)
    80001734:	00052c23          	sw	zero,24(a0)
}
    80001738:	01813083          	ld	ra,24(sp)
    8000173c:	01013403          	ld	s0,16(sp)
    80001740:	00813483          	ld	s1,8(sp)
    80001744:	02010113          	addi	sp,sp,32
    80001748:	00008067          	ret

000000008000174c <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    8000174c:	fe010113          	addi	sp,sp,-32
    80001750:	00113c23          	sd	ra,24(sp)
    80001754:	00813823          	sd	s0,16(sp)
    80001758:	00913423          	sd	s1,8(sp)
    8000175c:	01213023          	sd	s2,0(sp)
    80001760:	02010413          	addi	s0,sp,32
    80001764:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80001768:	00000913          	li	s2,0
    8000176c:	00c0006f          	j	80001778 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80001770:	00000097          	auipc	ra,0x0
    80001774:	b74080e7          	jalr	-1164(ra) # 800012e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 'A') {
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	c9c080e7          	jalr	-868(ra) # 80001414 <_Z4getcv>
    80001780:	0005059b          	sext.w	a1,a0
    80001784:	04100793          	li	a5,65
    80001788:	02f58a63          	beq	a1,a5,800017bc <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    8000178c:	0084b503          	ld	a0,8(s1)
    80001790:	00002097          	auipc	ra,0x2
    80001794:	01c080e7          	jalr	28(ra) # 800037ac <_ZN6Buffer3putEi>
        i++;
    80001798:	0019071b          	addiw	a4,s2,1
    8000179c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800017a0:	0004a683          	lw	a3,0(s1)
    800017a4:	0026979b          	slliw	a5,a3,0x2
    800017a8:	00d787bb          	addw	a5,a5,a3
    800017ac:	0017979b          	slliw	a5,a5,0x1
    800017b0:	02f767bb          	remw	a5,a4,a5
    800017b4:	fc0792e3          	bnez	a5,80001778 <_Z16producerKeyboardPv+0x2c>
    800017b8:	fb9ff06f          	j	80001770 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    800017bc:	00100793          	li	a5,1
    800017c0:	00006717          	auipc	a4,0x6
    800017c4:	e6f72023          	sw	a5,-416(a4) # 80007620 <threadEnd>
    data->buffer->put('!');
    800017c8:	02100593          	li	a1,33
    800017cc:	0084b503          	ld	a0,8(s1)
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	fdc080e7          	jalr	-36(ra) # 800037ac <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    800017d8:	0104b503          	ld	a0,16(s1)
    800017dc:	00000097          	auipc	ra,0x0
    800017e0:	c0c080e7          	jalr	-1012(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    800017e4:	01813083          	ld	ra,24(sp)
    800017e8:	01013403          	ld	s0,16(sp)
    800017ec:	00813483          	ld	s1,8(sp)
    800017f0:	00013903          	ld	s2,0(sp)
    800017f4:	02010113          	addi	sp,sp,32
    800017f8:	00008067          	ret

00000000800017fc <_Z8producerPv>:

void producer(void *arg) {
    800017fc:	fe010113          	addi	sp,sp,-32
    80001800:	00113c23          	sd	ra,24(sp)
    80001804:	00813823          	sd	s0,16(sp)
    80001808:	00913423          	sd	s1,8(sp)
    8000180c:	01213023          	sd	s2,0(sp)
    80001810:	02010413          	addi	s0,sp,32
    80001814:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001818:	00000913          	li	s2,0
    8000181c:	00c0006f          	j	80001828 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	ac4080e7          	jalr	-1340(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    80001828:	00006797          	auipc	a5,0x6
    8000182c:	df87a783          	lw	a5,-520(a5) # 80007620 <threadEnd>
    80001830:	02079e63          	bnez	a5,8000186c <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    80001834:	0004a583          	lw	a1,0(s1)
    80001838:	0305859b          	addiw	a1,a1,48
    8000183c:	0084b503          	ld	a0,8(s1)
    80001840:	00002097          	auipc	ra,0x2
    80001844:	f6c080e7          	jalr	-148(ra) # 800037ac <_ZN6Buffer3putEi>
        i++;
    80001848:	0019071b          	addiw	a4,s2,1
    8000184c:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001850:	0004a683          	lw	a3,0(s1)
    80001854:	0026979b          	slliw	a5,a3,0x2
    80001858:	00d787bb          	addw	a5,a5,a3
    8000185c:	0017979b          	slliw	a5,a5,0x1
    80001860:	02f767bb          	remw	a5,a4,a5
    80001864:	fc0792e3          	bnez	a5,80001828 <_Z8producerPv+0x2c>
    80001868:	fb9ff06f          	j	80001820 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    8000186c:	0104b503          	ld	a0,16(s1)
    80001870:	00000097          	auipc	ra,0x0
    80001874:	b78080e7          	jalr	-1160(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80001878:	01813083          	ld	ra,24(sp)
    8000187c:	01013403          	ld	s0,16(sp)
    80001880:	00813483          	ld	s1,8(sp)
    80001884:	00013903          	ld	s2,0(sp)
    80001888:	02010113          	addi	sp,sp,32
    8000188c:	00008067          	ret

0000000080001890 <_Z8consumerPv>:

void consumer(void *arg) {
    80001890:	fd010113          	addi	sp,sp,-48
    80001894:	02113423          	sd	ra,40(sp)
    80001898:	02813023          	sd	s0,32(sp)
    8000189c:	00913c23          	sd	s1,24(sp)
    800018a0:	01213823          	sd	s2,16(sp)
    800018a4:	01313423          	sd	s3,8(sp)
    800018a8:	03010413          	addi	s0,sp,48
    800018ac:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800018b0:	00000993          	li	s3,0
    800018b4:	01c0006f          	j	800018d0 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	a2c080e7          	jalr	-1492(ra) # 800012e4 <_Z15thread_dispatchv>
    800018c0:	0500006f          	j	80001910 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    800018c4:	00a00513          	li	a0,10
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	b74080e7          	jalr	-1164(ra) # 8000143c <_Z4putcc>
    while (!threadEnd) {
    800018d0:	00006797          	auipc	a5,0x6
    800018d4:	d507a783          	lw	a5,-688(a5) # 80007620 <threadEnd>
    800018d8:	06079063          	bnez	a5,80001938 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    800018dc:	00893503          	ld	a0,8(s2)
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	f5c080e7          	jalr	-164(ra) # 8000383c <_ZN6Buffer3getEv>
        i++;
    800018e8:	0019849b          	addiw	s1,s3,1
    800018ec:	0004899b          	sext.w	s3,s1
        putc(key);
    800018f0:	0ff57513          	andi	a0,a0,255
    800018f4:	00000097          	auipc	ra,0x0
    800018f8:	b48080e7          	jalr	-1208(ra) # 8000143c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800018fc:	00092703          	lw	a4,0(s2)
    80001900:	0027179b          	slliw	a5,a4,0x2
    80001904:	00e787bb          	addw	a5,a5,a4
    80001908:	02f4e7bb          	remw	a5,s1,a5
    8000190c:	fa0786e3          	beqz	a5,800018b8 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    80001910:	05000793          	li	a5,80
    80001914:	02f4e4bb          	remw	s1,s1,a5
    80001918:	fa049ce3          	bnez	s1,800018d0 <_Z8consumerPv+0x40>
    8000191c:	fa9ff06f          	j	800018c4 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    80001920:	00893503          	ld	a0,8(s2)
    80001924:	00002097          	auipc	ra,0x2
    80001928:	f18080e7          	jalr	-232(ra) # 8000383c <_ZN6Buffer3getEv>
        putc(key);
    8000192c:	0ff57513          	andi	a0,a0,255
    80001930:	00000097          	auipc	ra,0x0
    80001934:	b0c080e7          	jalr	-1268(ra) # 8000143c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    80001938:	00893503          	ld	a0,8(s2)
    8000193c:	00002097          	auipc	ra,0x2
    80001940:	f8c080e7          	jalr	-116(ra) # 800038c8 <_ZN6Buffer6getCntEv>
    80001944:	fca04ee3          	bgtz	a0,80001920 <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    80001948:	01093503          	ld	a0,16(s2)
    8000194c:	00000097          	auipc	ra,0x0
    80001950:	a9c080e7          	jalr	-1380(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80001954:	02813083          	ld	ra,40(sp)
    80001958:	02013403          	ld	s0,32(sp)
    8000195c:	01813483          	ld	s1,24(sp)
    80001960:	01013903          	ld	s2,16(sp)
    80001964:	00813983          	ld	s3,8(sp)
    80001968:	03010113          	addi	sp,sp,48
    8000196c:	00008067          	ret

0000000080001970 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80001970:	f9010113          	addi	sp,sp,-112
    80001974:	06113423          	sd	ra,104(sp)
    80001978:	06813023          	sd	s0,96(sp)
    8000197c:	04913c23          	sd	s1,88(sp)
    80001980:	05213823          	sd	s2,80(sp)
    80001984:	05313423          	sd	s3,72(sp)
    80001988:	05413023          	sd	s4,64(sp)
    8000198c:	03513c23          	sd	s5,56(sp)
    80001990:	03613823          	sd	s6,48(sp)
    80001994:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80001998:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    8000199c:	00004517          	auipc	a0,0x4
    800019a0:	68450513          	addi	a0,a0,1668 # 80006020 <CONSOLE_STATUS+0x10>
    800019a4:	00001097          	auipc	ra,0x1
    800019a8:	6c8080e7          	jalr	1736(ra) # 8000306c <_Z11printStringPKc>
    getString(input, 30);
    800019ac:	01e00593          	li	a1,30
    800019b0:	fa040493          	addi	s1,s0,-96
    800019b4:	00048513          	mv	a0,s1
    800019b8:	00001097          	auipc	ra,0x1
    800019bc:	730080e7          	jalr	1840(ra) # 800030e8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    800019c0:	00048513          	mv	a0,s1
    800019c4:	00001097          	auipc	ra,0x1
    800019c8:	7f0080e7          	jalr	2032(ra) # 800031b4 <_Z11stringToIntPKc>
    800019cc:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    800019d0:	00004517          	auipc	a0,0x4
    800019d4:	67050513          	addi	a0,a0,1648 # 80006040 <CONSOLE_STATUS+0x30>
    800019d8:	00001097          	auipc	ra,0x1
    800019dc:	694080e7          	jalr	1684(ra) # 8000306c <_Z11printStringPKc>
    getString(input, 30);
    800019e0:	01e00593          	li	a1,30
    800019e4:	00048513          	mv	a0,s1
    800019e8:	00001097          	auipc	ra,0x1
    800019ec:	700080e7          	jalr	1792(ra) # 800030e8 <_Z9getStringPci>
    n = stringToInt(input);
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	7c0080e7          	jalr	1984(ra) # 800031b4 <_Z11stringToIntPKc>
    800019fc:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    80001a00:	00004517          	auipc	a0,0x4
    80001a04:	66050513          	addi	a0,a0,1632 # 80006060 <CONSOLE_STATUS+0x50>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	664080e7          	jalr	1636(ra) # 8000306c <_Z11printStringPKc>
    80001a10:	00000613          	li	a2,0
    80001a14:	00a00593          	li	a1,10
    80001a18:	00090513          	mv	a0,s2
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	7e8080e7          	jalr	2024(ra) # 80003204 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    80001a24:	00004517          	auipc	a0,0x4
    80001a28:	65450513          	addi	a0,a0,1620 # 80006078 <CONSOLE_STATUS+0x68>
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	640080e7          	jalr	1600(ra) # 8000306c <_Z11printStringPKc>
    80001a34:	00000613          	li	a2,0
    80001a38:	00a00593          	li	a1,10
    80001a3c:	00048513          	mv	a0,s1
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	7c4080e7          	jalr	1988(ra) # 80003204 <_Z8printIntiii>
    printString(".\n");
    80001a48:	00004517          	auipc	a0,0x4
    80001a4c:	64850513          	addi	a0,a0,1608 # 80006090 <CONSOLE_STATUS+0x80>
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	61c080e7          	jalr	1564(ra) # 8000306c <_Z11printStringPKc>
    if(threadNum > n) {
    80001a58:	0324c463          	blt	s1,s2,80001a80 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80001a5c:	03205c63          	blez	s2,80001a94 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80001a60:	03800513          	li	a0,56
    80001a64:	00001097          	auipc	ra,0x1
    80001a68:	814080e7          	jalr	-2028(ra) # 80002278 <_Znwm>
    80001a6c:	00050a13          	mv	s4,a0
    80001a70:	00048593          	mv	a1,s1
    80001a74:	00002097          	auipc	ra,0x2
    80001a78:	c9c080e7          	jalr	-868(ra) # 80003710 <_ZN6BufferC1Ei>
    80001a7c:	0300006f          	j	80001aac <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001a80:	00004517          	auipc	a0,0x4
    80001a84:	61850513          	addi	a0,a0,1560 # 80006098 <CONSOLE_STATUS+0x88>
    80001a88:	00001097          	auipc	ra,0x1
    80001a8c:	5e4080e7          	jalr	1508(ra) # 8000306c <_Z11printStringPKc>
        return;
    80001a90:	0140006f          	j	80001aa4 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001a94:	00004517          	auipc	a0,0x4
    80001a98:	64450513          	addi	a0,a0,1604 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	5d0080e7          	jalr	1488(ra) # 8000306c <_Z11printStringPKc>
        return;
    80001aa4:	000b0113          	mv	sp,s6
    80001aa8:	1500006f          	j	80001bf8 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80001aac:	00000593          	li	a1,0
    80001ab0:	00006517          	auipc	a0,0x6
    80001ab4:	b7850513          	addi	a0,a0,-1160 # 80007628 <waitForAll>
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	8a8080e7          	jalr	-1880(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    thread_t threads[threadNum];
    80001ac0:	00391793          	slli	a5,s2,0x3
    80001ac4:	00f78793          	addi	a5,a5,15
    80001ac8:	ff07f793          	andi	a5,a5,-16
    80001acc:	40f10133          	sub	sp,sp,a5
    80001ad0:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80001ad4:	0019071b          	addiw	a4,s2,1
    80001ad8:	00171793          	slli	a5,a4,0x1
    80001adc:	00e787b3          	add	a5,a5,a4
    80001ae0:	00379793          	slli	a5,a5,0x3
    80001ae4:	00f78793          	addi	a5,a5,15
    80001ae8:	ff07f793          	andi	a5,a5,-16
    80001aec:	40f10133          	sub	sp,sp,a5
    80001af0:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80001af4:	00191613          	slli	a2,s2,0x1
    80001af8:	012607b3          	add	a5,a2,s2
    80001afc:	00379793          	slli	a5,a5,0x3
    80001b00:	00f987b3          	add	a5,s3,a5
    80001b04:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001b08:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80001b0c:	00006717          	auipc	a4,0x6
    80001b10:	b1c73703          	ld	a4,-1252(a4) # 80007628 <waitForAll>
    80001b14:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80001b18:	00078613          	mv	a2,a5
    80001b1c:	00000597          	auipc	a1,0x0
    80001b20:	d7458593          	addi	a1,a1,-652 # 80001890 <_Z8consumerPv>
    80001b24:	f9840513          	addi	a0,s0,-104
    80001b28:	fffff097          	auipc	ra,0xfffff
    80001b2c:	760080e7          	jalr	1888(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001b30:	00000493          	li	s1,0
    80001b34:	0280006f          	j	80001b5c <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80001b38:	00000597          	auipc	a1,0x0
    80001b3c:	c1458593          	addi	a1,a1,-1004 # 8000174c <_Z16producerKeyboardPv>
                      data + i);
    80001b40:	00179613          	slli	a2,a5,0x1
    80001b44:	00f60633          	add	a2,a2,a5
    80001b48:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80001b4c:	00c98633          	add	a2,s3,a2
    80001b50:	fffff097          	auipc	ra,0xfffff
    80001b54:	738080e7          	jalr	1848(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001b58:	0014849b          	addiw	s1,s1,1
    80001b5c:	0524d263          	bge	s1,s2,80001ba0 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80001b60:	00149793          	slli	a5,s1,0x1
    80001b64:	009787b3          	add	a5,a5,s1
    80001b68:	00379793          	slli	a5,a5,0x3
    80001b6c:	00f987b3          	add	a5,s3,a5
    80001b70:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001b74:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80001b78:	00006717          	auipc	a4,0x6
    80001b7c:	ab073703          	ld	a4,-1360(a4) # 80007628 <waitForAll>
    80001b80:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80001b84:	00048793          	mv	a5,s1
    80001b88:	00349513          	slli	a0,s1,0x3
    80001b8c:	00aa8533          	add	a0,s5,a0
    80001b90:	fa9054e3          	blez	s1,80001b38 <_Z22producerConsumer_C_APIv+0x1c8>
    80001b94:	00000597          	auipc	a1,0x0
    80001b98:	c6858593          	addi	a1,a1,-920 # 800017fc <_Z8producerPv>
    80001b9c:	fa5ff06f          	j	80001b40 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80001ba0:	fffff097          	auipc	ra,0xfffff
    80001ba4:	744080e7          	jalr	1860(ra) # 800012e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80001ba8:	00000493          	li	s1,0
    80001bac:	00994e63          	blt	s2,s1,80001bc8 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80001bb0:	00006517          	auipc	a0,0x6
    80001bb4:	a7853503          	ld	a0,-1416(a0) # 80007628 <waitForAll>
    80001bb8:	00000097          	auipc	ra,0x0
    80001bbc:	804080e7          	jalr	-2044(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80001bc0:	0014849b          	addiw	s1,s1,1
    80001bc4:	fe9ff06f          	j	80001bac <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80001bc8:	00006517          	auipc	a0,0x6
    80001bcc:	a6053503          	ld	a0,-1440(a0) # 80007628 <waitForAll>
    80001bd0:	fffff097          	auipc	ra,0xfffff
    80001bd4:	7c0080e7          	jalr	1984(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    delete buffer;
    80001bd8:	000a0e63          	beqz	s4,80001bf4 <_Z22producerConsumer_C_APIv+0x284>
    80001bdc:	000a0513          	mv	a0,s4
    80001be0:	00002097          	auipc	ra,0x2
    80001be4:	d70080e7          	jalr	-656(ra) # 80003950 <_ZN6BufferD1Ev>
    80001be8:	000a0513          	mv	a0,s4
    80001bec:	00000097          	auipc	ra,0x0
    80001bf0:	6dc080e7          	jalr	1756(ra) # 800022c8 <_ZdlPv>
    80001bf4:	000b0113          	mv	sp,s6

}
    80001bf8:	f9040113          	addi	sp,s0,-112
    80001bfc:	06813083          	ld	ra,104(sp)
    80001c00:	06013403          	ld	s0,96(sp)
    80001c04:	05813483          	ld	s1,88(sp)
    80001c08:	05013903          	ld	s2,80(sp)
    80001c0c:	04813983          	ld	s3,72(sp)
    80001c10:	04013a03          	ld	s4,64(sp)
    80001c14:	03813a83          	ld	s5,56(sp)
    80001c18:	03013b03          	ld	s6,48(sp)
    80001c1c:	07010113          	addi	sp,sp,112
    80001c20:	00008067          	ret
    80001c24:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80001c28:	000a0513          	mv	a0,s4
    80001c2c:	00000097          	auipc	ra,0x0
    80001c30:	69c080e7          	jalr	1692(ra) # 800022c8 <_ZdlPv>
    80001c34:	00048513          	mv	a0,s1
    80001c38:	00007097          	auipc	ra,0x7
    80001c3c:	b40080e7          	jalr	-1216(ra) # 80008778 <_Unwind_Resume>

0000000080001c40 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001c40:	ff010113          	addi	sp,sp,-16
    80001c44:	00113423          	sd	ra,8(sp)
    80001c48:	00813023          	sd	s0,0(sp)
    80001c4c:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80001c50:	00000097          	auipc	ra,0x0
    80001c54:	d20080e7          	jalr	-736(ra) # 80001970 <_Z22producerConsumer_C_APIv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001c58:	00813083          	ld	ra,8(sp)
    80001c5c:	00013403          	ld	s0,0(sp)
    80001c60:	01010113          	addi	sp,sp,16
    80001c64:	00008067          	ret

0000000080001c68 <_Z11workerBodyAPv>:
thread_t threads[3];




void workerBodyA(void* arg) {
    80001c68:	fe010113          	addi	sp,sp,-32
    80001c6c:	00113c23          	sd	ra,24(sp)
    80001c70:	00813823          	sd	s0,16(sp)
    80001c74:	00913423          	sd	s1,8(sp)
    80001c78:	02010413          	addi	s0,sp,32


//    join(threads[1]);
//    __putc('Q');
    for (uint64 i = 0; i < 2; i++) {
    80001c7c:	00000493          	li	s1,0
    80001c80:	0300006f          	j	80001cb0 <_Z11workerBodyAPv+0x48>

        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running)); printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    80001c84:	00168693          	addi	a3,a3,1
    80001c88:	000027b7          	lui	a5,0x2
    80001c8c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001c90:	00d7ee63          	bltu	a5,a3,80001cac <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001c94:	00000713          	li	a4,0
    80001c98:	000077b7          	lui	a5,0x7
    80001c9c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001ca0:	fee7e2e3          	bltu	a5,a4,80001c84 <_Z11workerBodyAPv+0x1c>
    80001ca4:	00170713          	addi	a4,a4,1
    80001ca8:	ff1ff06f          	j	80001c98 <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 2; i++) {
    80001cac:	00148493          	addi	s1,s1,1
    80001cb0:	00100793          	li	a5,1
    80001cb4:	0697ea63          	bltu	a5,s1,80001d28 <_Z11workerBodyAPv+0xc0>
        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running)); printString(" ");
    80001cb8:	00004517          	auipc	a0,0x4
    80001cbc:	45050513          	addi	a0,a0,1104 # 80006108 <CONSOLE_STATUS+0xf8>
    80001cc0:	00001097          	auipc	ra,0x1
    80001cc4:	3ac080e7          	jalr	940(ra) # 8000306c <_Z11printStringPKc>
    80001cc8:	00000613          	li	a2,0
    80001ccc:	00a00593          	li	a1,10
    80001cd0:	0004851b          	sext.w	a0,s1
    80001cd4:	00001097          	auipc	ra,0x1
    80001cd8:	530080e7          	jalr	1328(ra) # 80003204 <_Z8printIntiii>
    80001cdc:	00004517          	auipc	a0,0x4
    80001ce0:	37c50513          	addi	a0,a0,892 # 80006058 <CONSOLE_STATUS+0x48>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	388080e7          	jalr	904(ra) # 8000306c <_Z11printStringPKc>
    80001cec:	00006797          	auipc	a5,0x6
    80001cf0:	8d47b783          	ld	a5,-1836(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001cf4:	0007b503          	ld	a0,0(a5)
    80001cf8:	fffff097          	auipc	ra,0xfffff
    80001cfc:	76c080e7          	jalr	1900(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80001d00:	00000613          	li	a2,0
    80001d04:	00a00593          	li	a1,10
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	4fc080e7          	jalr	1276(ra) # 80003204 <_Z8printIntiii>
    80001d10:	00004517          	auipc	a0,0x4
    80001d14:	40050513          	addi	a0,a0,1024 # 80006110 <CONSOLE_STATUS+0x100>
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	354080e7          	jalr	852(ra) # 8000306c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001d20:	00000693          	li	a3,0
    80001d24:	f65ff06f          	j	80001c88 <_Z11workerBodyAPv+0x20>
//            thread_dispatch();
        }
    }
    printString("A finished!\n");
    80001d28:	00004517          	auipc	a0,0x4
    80001d2c:	3f050513          	addi	a0,a0,1008 # 80006118 <CONSOLE_STATUS+0x108>
    80001d30:	00001097          	auipc	ra,0x1
    80001d34:	33c080e7          	jalr	828(ra) # 8000306c <_Z11printStringPKc>
    ffinishedA = true;
    80001d38:	00100793          	li	a5,1
    80001d3c:	00006717          	auipc	a4,0x6
    80001d40:	8ef70a23          	sb	a5,-1804(a4) # 80007630 <ffinishedA>
}
    80001d44:	01813083          	ld	ra,24(sp)
    80001d48:	01013403          	ld	s0,16(sp)
    80001d4c:	00813483          	ld	s1,8(sp)
    80001d50:	02010113          	addi	sp,sp,32
    80001d54:	00008067          	ret

0000000080001d58 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80001d58:	fe010113          	addi	sp,sp,-32
    80001d5c:	00113c23          	sd	ra,24(sp)
    80001d60:	00813823          	sd	s0,16(sp)
    80001d64:	00913423          	sd	s1,8(sp)
    80001d68:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 2; i++) {
    80001d6c:	00000493          	li	s1,0
    80001d70:	0300006f          	j	80001da0 <_Z11workerBodyBPv+0x48>
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    80001d74:	00168693          	addi	a3,a3,1
    80001d78:	000027b7          	lui	a5,0x2
    80001d7c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001d80:	00d7ee63          	bltu	a5,a3,80001d9c <_Z11workerBodyBPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001d84:	00000713          	li	a4,0
    80001d88:	000077b7          	lui	a5,0x7
    80001d8c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001d90:	fee7e2e3          	bltu	a5,a4,80001d74 <_Z11workerBodyBPv+0x1c>
    80001d94:	00170713          	addi	a4,a4,1
    80001d98:	ff1ff06f          	j	80001d88 <_Z11workerBodyBPv+0x30>
    for (uint64 i = 0; i < 2; i++) {
    80001d9c:	00148493          	addi	s1,s1,1
    80001da0:	00100793          	li	a5,1
    80001da4:	0697ea63          	bltu	a5,s1,80001e18 <_Z11workerBodyBPv+0xc0>
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    80001da8:	00004517          	auipc	a0,0x4
    80001dac:	38050513          	addi	a0,a0,896 # 80006128 <CONSOLE_STATUS+0x118>
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	2bc080e7          	jalr	700(ra) # 8000306c <_Z11printStringPKc>
    80001db8:	00000613          	li	a2,0
    80001dbc:	00a00593          	li	a1,10
    80001dc0:	0004851b          	sext.w	a0,s1
    80001dc4:	00001097          	auipc	ra,0x1
    80001dc8:	440080e7          	jalr	1088(ra) # 80003204 <_Z8printIntiii>
    80001dcc:	00004517          	auipc	a0,0x4
    80001dd0:	28c50513          	addi	a0,a0,652 # 80006058 <CONSOLE_STATUS+0x48>
    80001dd4:	00001097          	auipc	ra,0x1
    80001dd8:	298080e7          	jalr	664(ra) # 8000306c <_Z11printStringPKc>
    80001ddc:	00005797          	auipc	a5,0x5
    80001de0:	7e47b783          	ld	a5,2020(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001de4:	0007b503          	ld	a0,0(a5)
    80001de8:	fffff097          	auipc	ra,0xfffff
    80001dec:	67c080e7          	jalr	1660(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80001df0:	00000613          	li	a2,0
    80001df4:	00a00593          	li	a1,10
    80001df8:	00001097          	auipc	ra,0x1
    80001dfc:	40c080e7          	jalr	1036(ra) # 80003204 <_Z8printIntiii>
    80001e00:	00004517          	auipc	a0,0x4
    80001e04:	31050513          	addi	a0,a0,784 # 80006110 <CONSOLE_STATUS+0x100>
    80001e08:	00001097          	auipc	ra,0x1
    80001e0c:	264080e7          	jalr	612(ra) # 8000306c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001e10:	00000693          	li	a3,0
    80001e14:	f65ff06f          	j	80001d78 <_Z11workerBodyBPv+0x20>
//            thread_dispatch();
        }
    }
    printString("B finished!\n");
    80001e18:	00004517          	auipc	a0,0x4
    80001e1c:	31850513          	addi	a0,a0,792 # 80006130 <CONSOLE_STATUS+0x120>
    80001e20:	00001097          	auipc	ra,0x1
    80001e24:	24c080e7          	jalr	588(ra) # 8000306c <_Z11printStringPKc>
    ffinishedB = true;
    80001e28:	00100793          	li	a5,1
    80001e2c:	00006717          	auipc	a4,0x6
    80001e30:	80f702a3          	sb	a5,-2043(a4) # 80007631 <ffinishedB>
}
    80001e34:	01813083          	ld	ra,24(sp)
    80001e38:	01013403          	ld	s0,16(sp)
    80001e3c:	00813483          	ld	s1,8(sp)
    80001e40:	02010113          	addi	sp,sp,32
    80001e44:	00008067          	ret

0000000080001e48 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    80001e48:	fe010113          	addi	sp,sp,-32
    80001e4c:	00113c23          	sd	ra,24(sp)
    80001e50:	00813823          	sd	s0,16(sp)
    80001e54:	00913423          	sd	s1,8(sp)
    80001e58:	02010413          	addi	s0,sp,32
    TCB::running->kill(threads[0]);
    80001e5c:	00005597          	auipc	a1,0x5
    80001e60:	7dc5b583          	ld	a1,2012(a1) # 80007638 <threads>
    80001e64:	00005797          	auipc	a5,0x5
    80001e68:	75c7b783          	ld	a5,1884(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001e6c:	0007b503          	ld	a0,0(a5)
    80001e70:	00001097          	auipc	ra,0x1
    80001e74:	c9c080e7          	jalr	-868(ra) # 80002b0c <_ZN3TCB4killEPS_>

    for (uint64 i = 0; i < 2; i++) {
    80001e78:	00000493          	li	s1,0
    80001e7c:	0300006f          	j	80001eac <_Z11workerBodyCPv+0x64>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    80001e80:	00168693          	addi	a3,a3,1
    80001e84:	000027b7          	lui	a5,0x2
    80001e88:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001e8c:	00d7ee63          	bltu	a5,a3,80001ea8 <_Z11workerBodyCPv+0x60>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001e90:	00000713          	li	a4,0
    80001e94:	000077b7          	lui	a5,0x7
    80001e98:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80001e9c:	fee7e2e3          	bltu	a5,a4,80001e80 <_Z11workerBodyCPv+0x38>
    80001ea0:	00170713          	addi	a4,a4,1
    80001ea4:	ff1ff06f          	j	80001e94 <_Z11workerBodyCPv+0x4c>
    for (uint64 i = 0; i < 2; i++) {
    80001ea8:	00148493          	addi	s1,s1,1
    80001eac:	00100793          	li	a5,1
    80001eb0:	0697ea63          	bltu	a5,s1,80001f24 <_Z11workerBodyCPv+0xdc>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    80001eb4:	00004517          	auipc	a0,0x4
    80001eb8:	28c50513          	addi	a0,a0,652 # 80006140 <CONSOLE_STATUS+0x130>
    80001ebc:	00001097          	auipc	ra,0x1
    80001ec0:	1b0080e7          	jalr	432(ra) # 8000306c <_Z11printStringPKc>
    80001ec4:	00000613          	li	a2,0
    80001ec8:	00a00593          	li	a1,10
    80001ecc:	0004851b          	sext.w	a0,s1
    80001ed0:	00001097          	auipc	ra,0x1
    80001ed4:	334080e7          	jalr	820(ra) # 80003204 <_Z8printIntiii>
    80001ed8:	00004517          	auipc	a0,0x4
    80001edc:	18050513          	addi	a0,a0,384 # 80006058 <CONSOLE_STATUS+0x48>
    80001ee0:	00001097          	auipc	ra,0x1
    80001ee4:	18c080e7          	jalr	396(ra) # 8000306c <_Z11printStringPKc>
    80001ee8:	00005797          	auipc	a5,0x5
    80001eec:	6d87b783          	ld	a5,1752(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001ef0:	0007b503          	ld	a0,0(a5)
    80001ef4:	fffff097          	auipc	ra,0xfffff
    80001ef8:	570080e7          	jalr	1392(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80001efc:	00000613          	li	a2,0
    80001f00:	00a00593          	li	a1,10
    80001f04:	00001097          	auipc	ra,0x1
    80001f08:	300080e7          	jalr	768(ra) # 80003204 <_Z8printIntiii>
    80001f0c:	00004517          	auipc	a0,0x4
    80001f10:	20450513          	addi	a0,a0,516 # 80006110 <CONSOLE_STATUS+0x100>
    80001f14:	00001097          	auipc	ra,0x1
    80001f18:	158080e7          	jalr	344(ra) # 8000306c <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001f1c:	00000693          	li	a3,0
    80001f20:	f65ff06f          	j	80001e84 <_Z11workerBodyCPv+0x3c>
//            thread_dispatch();
        }
    }
    printString("C finished!\n");
    80001f24:	00004517          	auipc	a0,0x4
    80001f28:	22450513          	addi	a0,a0,548 # 80006148 <CONSOLE_STATUS+0x138>
    80001f2c:	00001097          	auipc	ra,0x1
    80001f30:	140080e7          	jalr	320(ra) # 8000306c <_Z11printStringPKc>
    ffinishedC = true;
    80001f34:	00100793          	li	a5,1
    80001f38:	00005717          	auipc	a4,0x5
    80001f3c:	70f70c23          	sb	a5,1816(a4) # 80007650 <ffinishedC>
}
    80001f40:	01813083          	ld	ra,24(sp)
    80001f44:	01013403          	ld	s0,16(sp)
    80001f48:	00813483          	ld	s1,8(sp)
    80001f4c:	02010113          	addi	sp,sp,32
    80001f50:	00008067          	ret

0000000080001f54 <main>:


int main() {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMemoryAllocator();
    80001f64:	00001097          	auipc	ra,0x1
    80001f68:	0a8080e7          	jalr	168(ra) # 8000300c <_ZN15MemoryAllocator19initMemoryAllocatorEv>


    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001f6c:	00005797          	auipc	a5,0x5
    80001f70:	63c7b783          	ld	a5,1596(a5) # 800075a8 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001f74:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001f78:	00200793          	li	a5,2
    80001f7c:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001f80:	00000593          	li	a1,0
    80001f84:	00000513          	li	a0,0
    80001f88:	00001097          	auipc	ra,0x1
    80001f8c:	9ac080e7          	jalr	-1620(ra) # 80002934 <_ZN3TCB12createThreadEPFvPvES0_>
    80001f90:	00005797          	auipc	a5,0x5
    80001f94:	6307b783          	ld	a5,1584(a5) # 800075c0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001f98:	00a7b023          	sd	a0,0(a5)


    thread_create(&threads[0], workerBodyA, nullptr);
    80001f9c:	00000613          	li	a2,0
    80001fa0:	00000597          	auipc	a1,0x0
    80001fa4:	cc858593          	addi	a1,a1,-824 # 80001c68 <_Z11workerBodyAPv>
    80001fa8:	00005517          	auipc	a0,0x5
    80001fac:	69050513          	addi	a0,a0,1680 # 80007638 <threads>
    80001fb0:	fffff097          	auipc	ra,0xfffff
    80001fb4:	2d8080e7          	jalr	728(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001fb8:	00004517          	auipc	a0,0x4
    80001fbc:	1a050513          	addi	a0,a0,416 # 80006158 <CONSOLE_STATUS+0x148>
    80001fc0:	00001097          	auipc	ra,0x1
    80001fc4:	0ac080e7          	jalr	172(ra) # 8000306c <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80001fc8:	00000613          	li	a2,0
    80001fcc:	00000597          	auipc	a1,0x0
    80001fd0:	d8c58593          	addi	a1,a1,-628 # 80001d58 <_Z11workerBodyBPv>
    80001fd4:	00005517          	auipc	a0,0x5
    80001fd8:	66c50513          	addi	a0,a0,1644 # 80007640 <threads+0x8>
    80001fdc:	fffff097          	auipc	ra,0xfffff
    80001fe0:	2ac080e7          	jalr	684(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001fe4:	00004517          	auipc	a0,0x4
    80001fe8:	18c50513          	addi	a0,a0,396 # 80006170 <CONSOLE_STATUS+0x160>
    80001fec:	00001097          	auipc	ra,0x1
    80001ff0:	080080e7          	jalr	128(ra) # 8000306c <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80001ff4:	00000613          	li	a2,0
    80001ff8:	00000597          	auipc	a1,0x0
    80001ffc:	e5058593          	addi	a1,a1,-432 # 80001e48 <_Z11workerBodyCPv>
    80002000:	00005517          	auipc	a0,0x5
    80002004:	64850513          	addi	a0,a0,1608 # 80007648 <threads+0x10>
    80002008:	fffff097          	auipc	ra,0xfffff
    8000200c:	280080e7          	jalr	640(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002010:	00004517          	auipc	a0,0x4
    80002014:	17850513          	addi	a0,a0,376 # 80006188 <CONSOLE_STATUS+0x178>
    80002018:	00001097          	auipc	ra,0x1
    8000201c:	054080e7          	jalr	84(ra) # 8000306c <_Z11printStringPKc>
    80002020:	00c0006f          	j	8000202c <main+0xd8>

    while (!(ffinishedB && ffinishedC)) {
        thread_dispatch();
    80002024:	fffff097          	auipc	ra,0xfffff
    80002028:	2c0080e7          	jalr	704(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!(ffinishedB && ffinishedC)) {
    8000202c:	00005797          	auipc	a5,0x5
    80002030:	6057c783          	lbu	a5,1541(a5) # 80007631 <ffinishedB>
    80002034:	fe0788e3          	beqz	a5,80002024 <main+0xd0>
    80002038:	00005797          	auipc	a5,0x5
    8000203c:	6187c783          	lbu	a5,1560(a5) # 80007650 <ffinishedC>
    80002040:	fe0782e3          	beqz	a5,80002024 <main+0xd0>

//    userMain();

    return 0;

}
    80002044:	00000513          	li	a0,0
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN6ThreadD1Ev>:
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00813423          	sd	s0,8(sp)
    80002060:	01010413          	addi	s0,sp,16
    80002064:	00813403          	ld	s0,8(sp)
    80002068:	01010113          	addi	sp,sp,16
    8000206c:	00008067          	ret

0000000080002070 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002070:	ff010113          	addi	sp,sp,-16
    80002074:	00113423          	sd	ra,8(sp)
    80002078:	00813023          	sd	s0,0(sp)
    8000207c:	01010413          	addi	s0,sp,16
    80002080:	00005797          	auipc	a5,0x5
    80002084:	4f078793          	addi	a5,a5,1264 # 80007570 <_ZTV9Semaphore+0x10>
    80002088:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    8000208c:	00853503          	ld	a0,8(a0)
    80002090:	fffff097          	auipc	ra,0xfffff
    80002094:	300080e7          	jalr	768(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80002098:	00813083          	ld	ra,8(sp)
    8000209c:	00013403          	ld	s0,0(sp)
    800020a0:	01010113          	addi	sp,sp,16
    800020a4:	00008067          	ret

00000000800020a8 <_ZN6Thread5startEv>:
int Thread::start (){
    800020a8:	ff010113          	addi	sp,sp,-16
    800020ac:	00113423          	sd	ra,8(sp)
    800020b0:	00813023          	sd	s0,0(sp)
    800020b4:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    800020b8:	00850513          	addi	a0,a0,8
    800020bc:	fffff097          	auipc	ra,0xfffff
    800020c0:	248080e7          	jalr	584(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    800020c4:	00000513          	li	a0,0
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    800020d8:	ff010113          	addi	sp,sp,-16
    800020dc:	00113423          	sd	ra,8(sp)
    800020e0:	00813023          	sd	s0,0(sp)
    800020e4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    800020e8:	fffff097          	auipc	ra,0xfffff
    800020ec:	1fc080e7          	jalr	508(ra) # 800012e4 <_Z15thread_dispatchv>
}
    800020f0:	00813083          	ld	ra,8(sp)
    800020f4:	00013403          	ld	s0,0(sp)
    800020f8:	01010113          	addi	sp,sp,16
    800020fc:	00008067          	ret

0000000080002100 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002100:	ff010113          	addi	sp,sp,-16
    80002104:	00113423          	sd	ra,8(sp)
    80002108:	00813023          	sd	s0,0(sp)
    8000210c:	01010413          	addi	s0,sp,16
    80002110:	00005797          	auipc	a5,0x5
    80002114:	43878793          	addi	a5,a5,1080 # 80007548 <_ZTV6Thread+0x10>
    80002118:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    8000211c:	00850513          	addi	a0,a0,8
    80002120:	fffff097          	auipc	ra,0xfffff
    80002124:	20c080e7          	jalr	524(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80002128:	00813083          	ld	ra,8(sp)
    8000212c:	00013403          	ld	s0,0(sp)
    80002130:	01010113          	addi	sp,sp,16
    80002134:	00008067          	ret

0000000080002138 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80002138:	ff010113          	addi	sp,sp,-16
    8000213c:	00113423          	sd	ra,8(sp)
    80002140:	00813023          	sd	s0,0(sp)
    80002144:	01010413          	addi	s0,sp,16
    80002148:	00005797          	auipc	a5,0x5
    8000214c:	40078793          	addi	a5,a5,1024 # 80007548 <_ZTV6Thread+0x10>
    80002150:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    80002154:	00050613          	mv	a2,a0
    80002158:	00000597          	auipc	a1,0x0
    8000215c:	24058593          	addi	a1,a1,576 # 80002398 <_ZN6Thread9myWrapperEPv>
    80002160:	00850513          	addi	a0,a0,8
    80002164:	fffff097          	auipc	ra,0xfffff
    80002168:	1c8080e7          	jalr	456(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    8000216c:	00813083          	ld	ra,8(sp)
    80002170:	00013403          	ld	s0,0(sp)
    80002174:	01010113          	addi	sp,sp,16
    80002178:	00008067          	ret

000000008000217c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    8000217c:	ff010113          	addi	sp,sp,-16
    80002180:	00813423          	sd	s0,8(sp)
    80002184:	01010413          	addi	s0,sp,16
}
    80002188:	00000513          	li	a0,0
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    800021a8:	00005797          	auipc	a5,0x5
    800021ac:	3c878793          	addi	a5,a5,968 # 80007570 <_ZTV9Semaphore+0x10>
    800021b0:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    800021b4:	00850513          	addi	a0,a0,8
    800021b8:	fffff097          	auipc	ra,0xfffff
    800021bc:	1a8080e7          	jalr	424(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    800021c0:	00813083          	ld	ra,8(sp)
    800021c4:	00013403          	ld	s0,0(sp)
    800021c8:	01010113          	addi	sp,sp,16
    800021cc:	00008067          	ret

00000000800021d0 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    800021d0:	ff010113          	addi	sp,sp,-16
    800021d4:	00113423          	sd	ra,8(sp)
    800021d8:	00813023          	sd	s0,0(sp)
    800021dc:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    800021e0:	00853503          	ld	a0,8(a0)
    800021e4:	fffff097          	auipc	ra,0xfffff
    800021e8:	1d8080e7          	jalr	472(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    800021ec:	00813083          	ld	ra,8(sp)
    800021f0:	00013403          	ld	s0,0(sp)
    800021f4:	01010113          	addi	sp,sp,16
    800021f8:	00008067          	ret

00000000800021fc <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    800021fc:	ff010113          	addi	sp,sp,-16
    80002200:	00113423          	sd	ra,8(sp)
    80002204:	00813023          	sd	s0,0(sp)
    80002208:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    8000220c:	00853503          	ld	a0,8(a0)
    80002210:	fffff097          	auipc	ra,0xfffff
    80002214:	1d8080e7          	jalr	472(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80002218:	00813083          	ld	ra,8(sp)
    8000221c:	00013403          	ld	s0,0(sp)
    80002220:	01010113          	addi	sp,sp,16
    80002224:	00008067          	ret

0000000080002228 <_ZN7Console4getcEv>:

char Console::getc() {
    80002228:	ff010113          	addi	sp,sp,-16
    8000222c:	00113423          	sd	ra,8(sp)
    80002230:	00813023          	sd	s0,0(sp)
    80002234:	01010413          	addi	s0,sp,16
    return __getc();
    80002238:	00004097          	auipc	ra,0x4
    8000223c:	8f0080e7          	jalr	-1808(ra) # 80005b28 <__getc>
}
    80002240:	00813083          	ld	ra,8(sp)
    80002244:	00013403          	ld	s0,0(sp)
    80002248:	01010113          	addi	sp,sp,16
    8000224c:	00008067          	ret

0000000080002250 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80002250:	ff010113          	addi	sp,sp,-16
    80002254:	00113423          	sd	ra,8(sp)
    80002258:	00813023          	sd	s0,0(sp)
    8000225c:	01010413          	addi	s0,sp,16
    __putc(c);
    80002260:	00004097          	auipc	ra,0x4
    80002264:	88c080e7          	jalr	-1908(ra) # 80005aec <__putc>
}
    80002268:	00813083          	ld	ra,8(sp)
    8000226c:	00013403          	ld	s0,0(sp)
    80002270:	01010113          	addi	sp,sp,16
    80002274:	00008067          	ret

0000000080002278 <_Znwm>:

void *operator new(size_t n)
{
    80002278:	ff010113          	addi	sp,sp,-16
    8000227c:	00113423          	sd	ra,8(sp)
    80002280:	00813023          	sd	s0,0(sp)
    80002284:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002288:	00001097          	auipc	ra,0x1
    8000228c:	b58080e7          	jalr	-1192(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
//    return mem_alloc(n);
}
    80002290:	00813083          	ld	ra,8(sp)
    80002294:	00013403          	ld	s0,0(sp)
    80002298:	01010113          	addi	sp,sp,16
    8000229c:	00008067          	ret

00000000800022a0 <_Znam>:

void *operator new[](size_t n)
{
    800022a0:	ff010113          	addi	sp,sp,-16
    800022a4:	00113423          	sd	ra,8(sp)
    800022a8:	00813023          	sd	s0,0(sp)
    800022ac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    800022b0:	00001097          	auipc	ra,0x1
    800022b4:	b30080e7          	jalr	-1232(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
//   return mem_alloc(n);
}
    800022b8:	00813083          	ld	ra,8(sp)
    800022bc:	00013403          	ld	s0,0(sp)
    800022c0:	01010113          	addi	sp,sp,16
    800022c4:	00008067          	ret

00000000800022c8 <_ZdlPv>:

void operator delete(void *p)
{
    800022c8:	ff010113          	addi	sp,sp,-16
    800022cc:	00113423          	sd	ra,8(sp)
    800022d0:	00813023          	sd	s0,0(sp)
    800022d4:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800022d8:	00001097          	auipc	ra,0x1
    800022dc:	ba4080e7          	jalr	-1116(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    800022e0:	00813083          	ld	ra,8(sp)
    800022e4:	00013403          	ld	s0,0(sp)
    800022e8:	01010113          	addi	sp,sp,16
    800022ec:	00008067          	ret

00000000800022f0 <_ZN6ThreadD0Ev>:
    800022f0:	ff010113          	addi	sp,sp,-16
    800022f4:	00113423          	sd	ra,8(sp)
    800022f8:	00813023          	sd	s0,0(sp)
    800022fc:	01010413          	addi	s0,sp,16
    80002300:	00000097          	auipc	ra,0x0
    80002304:	fc8080e7          	jalr	-56(ra) # 800022c8 <_ZdlPv>
    80002308:	00813083          	ld	ra,8(sp)
    8000230c:	00013403          	ld	s0,0(sp)
    80002310:	01010113          	addi	sp,sp,16
    80002314:	00008067          	ret

0000000080002318 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80002318:	fe010113          	addi	sp,sp,-32
    8000231c:	00113c23          	sd	ra,24(sp)
    80002320:	00813823          	sd	s0,16(sp)
    80002324:	00913423          	sd	s1,8(sp)
    80002328:	02010413          	addi	s0,sp,32
    8000232c:	00050493          	mv	s1,a0
}
    80002330:	00000097          	auipc	ra,0x0
    80002334:	d40080e7          	jalr	-704(ra) # 80002070 <_ZN9SemaphoreD1Ev>
    80002338:	00048513          	mv	a0,s1
    8000233c:	00000097          	auipc	ra,0x0
    80002340:	f8c080e7          	jalr	-116(ra) # 800022c8 <_ZdlPv>
    80002344:	01813083          	ld	ra,24(sp)
    80002348:	01013403          	ld	s0,16(sp)
    8000234c:	00813483          	ld	s1,8(sp)
    80002350:	02010113          	addi	sp,sp,32
    80002354:	00008067          	ret

0000000080002358 <_ZdaPv>:

void operator delete[](void *p)
{
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00113423          	sd	ra,8(sp)
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002368:	00001097          	auipc	ra,0x1
    8000236c:	b14080e7          	jalr	-1260(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80002370:	00813083          	ld	ra,8(sp)
    80002374:	00013403          	ld	s0,0(sp)
    80002378:	01010113          	addi	sp,sp,16
    8000237c:	00008067          	ret

0000000080002380 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    80002380:	ff010113          	addi	sp,sp,-16
    80002384:	00813423          	sd	s0,8(sp)
    80002388:	01010413          	addi	s0,sp,16
    8000238c:	00813403          	ld	s0,8(sp)
    80002390:	01010113          	addi	sp,sp,16
    80002394:	00008067          	ret

0000000080002398 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80002398:	ff010113          	addi	sp,sp,-16
    8000239c:	00113423          	sd	ra,8(sp)
    800023a0:	00813023          	sd	s0,0(sp)
    800023a4:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    800023a8:	00053783          	ld	a5,0(a0)
    800023ac:	0107b783          	ld	a5,16(a5)
    800023b0:	000780e7          	jalr	a5
    }
    800023b4:	00813083          	ld	ra,8(sp)
    800023b8:	00013403          	ld	s0,0(sp)
    800023bc:	01010113          	addi	sp,sp,16
    800023c0:	00008067          	ret

00000000800023c4 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    800023c4:	ff010113          	addi	sp,sp,-16
    800023c8:	00813423          	sd	s0,8(sp)
    800023cc:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800023d0:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800023d4:	10200073          	sret
}
    800023d8:	00813403          	ld	s0,8(sp)
    800023dc:	01010113          	addi	sp,sp,16
    800023e0:	00008067          	ret

00000000800023e4 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    800023e4:	fb010113          	addi	sp,sp,-80
    800023e8:	04113423          	sd	ra,72(sp)
    800023ec:	04813023          	sd	s0,64(sp)
    800023f0:	02913c23          	sd	s1,56(sp)
    800023f4:	03213823          	sd	s2,48(sp)
    800023f8:	03313423          	sd	s3,40(sp)
    800023fc:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002400:	142027f3          	csrr	a5,scause
    80002404:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002408:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    8000240c:	ff870693          	addi	a3,a4,-8
    80002410:	00100793          	li	a5,1
    80002414:	02d7f863          	bgeu	a5,a3,80002444 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80002418:	fff00793          	li	a5,-1
    8000241c:	03f79793          	slli	a5,a5,0x3f
    80002420:	00178793          	addi	a5,a5,1
    80002424:	24f70463          	beq	a4,a5,8000266c <_ZN5Riscv20handleSupervisorTrapEv+0x288>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80002428:	fff00793          	li	a5,-1
    8000242c:	03f79793          	slli	a5,a5,0x3f
    80002430:	00978793          	addi	a5,a5,9
    80002434:	0cf71463          	bne	a4,a5,800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80002438:	00003097          	auipc	ra,0x3
    8000243c:	728080e7          	jalr	1832(ra) # 80005b60 <console_handler>
    }else
    {
        // unexpected trap cause
    }
    80002440:	0bc0006f          	j	800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002444:	141027f3          	csrr	a5,sepc
    80002448:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000244c:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    80002450:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002454:	100027f3          	csrr	a5,sstatus
    80002458:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    8000245c:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80002460:	00050793          	mv	a5,a0
    80002464:	faf43c23          	sd	a5,-72(s0)
    return a0;
    80002468:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    8000246c:	00100713          	li	a4,1
    80002470:	06e78a63          	beq	a5,a4,800024e4 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else if (a0 == 0x0000000000000002UL){
    80002474:	00200713          	li	a4,2
    80002478:	0ae78063          	beq	a5,a4,80002518 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
        else if (a0 == 0x0000000000000011UL){
    8000247c:	01100713          	li	a4,17
    80002480:	0ae78663          	beq	a5,a4,8000252c <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        else if (a0 == 0x0000000000000012UL){
    80002484:	01200713          	li	a4,18
    80002488:	0ce78a63          	beq	a5,a4,8000255c <_ZN5Riscv20handleSupervisorTrapEv+0x178>
        else if (a0 == 0x0000000000000013UL){
    8000248c:	01300713          	li	a4,19
    80002490:	0ce78e63          	beq	a5,a4,8000256c <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        else if (a0 == 0x0000000000000014UL){
    80002494:	01400713          	li	a4,20
    80002498:	0ee78663          	beq	a5,a4,80002584 <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if (a0 == 0x0000000000000015UL){
    8000249c:	01500713          	li	a4,21
    800024a0:	0ee78c63          	beq	a5,a4,80002598 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
        else if (a0 == 0x0000000000000021UL) {
    800024a4:	02100713          	li	a4,33
    800024a8:	12e78063          	beq	a5,a4,800025c8 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if (a0 == 0x0000000000000022UL) {
    800024ac:	02200713          	li	a4,34
    800024b0:	14e78463          	beq	a5,a4,800025f8 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if (a0 == 0x0000000000000023UL) {
    800024b4:	02300713          	li	a4,35
    800024b8:	16e78263          	beq	a5,a4,8000261c <_ZN5Riscv20handleSupervisorTrapEv+0x238>
        else if (a0 == 0x0000000000000024UL) {
    800024bc:	02400713          	li	a4,36
    800024c0:	16e78e63          	beq	a5,a4,8000263c <_ZN5Riscv20handleSupervisorTrapEv+0x258>
        else if (a0 == 0x0000000000000016UL){
    800024c4:	01600713          	li	a4,22
    800024c8:	18e78a63          	beq	a5,a4,8000265c <_ZN5Riscv20handleSupervisorTrapEv+0x278>
        else if (a0 == 0x0000000000000017UL){
    800024cc:	01700713          	li	a4,23
    800024d0:	02e79263          	bne	a5,a4,800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
    800024d4:	00058513          	mv	a0,a1
            t->join();
    800024d8:	00000097          	auipc	ra,0x0
    800024dc:	3dc080e7          	jalr	988(ra) # 800028b4 <_ZN3TCB4joinEv>
    800024e0:	0140006f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800024e4:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    800024e8:	00001097          	auipc	ra,0x1
    800024ec:	8f8080e7          	jalr	-1800(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800024f0:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800024f4:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    800024f8:	14149073          	csrw	sepc,s1
    800024fc:	04813083          	ld	ra,72(sp)
    80002500:	04013403          	ld	s0,64(sp)
    80002504:	03813483          	ld	s1,56(sp)
    80002508:	03013903          	ld	s2,48(sp)
    8000250c:	02813983          	ld	s3,40(sp)
    80002510:	05010113          	addi	sp,sp,80
    80002514:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002518:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    8000251c:	00001097          	auipc	ra,0x1
    80002520:	960080e7          	jalr	-1696(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002524:	00050513          	mv	a0,a0
    80002528:	fcdff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    8000252c:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002530:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002534:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    80002538:	00000097          	auipc	ra,0x0
    8000253c:	3fc080e7          	jalr	1020(ra) # 80002934 <_ZN3TCB12createThreadEPFvPvES0_>
    80002540:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002544:	00098863          	beqz	s3,80002554 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    80002548:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    8000254c:	00078513          	mv	a0,a5
    80002550:	fa5ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            a0=(tcb!= nullptr)?0 : -1;
    80002554:	fff00793          	li	a5,-1
    80002558:	ff5ff06f          	j	8000254c <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            a=TCB::exitThread();
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	28c080e7          	jalr	652(ra) # 800027e8 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002564:	00050513          	mv	a0,a0
    80002568:	f8dff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            TCB::timeSliceCounter = 0;
    8000256c:	00005797          	auipc	a5,0x5
    80002570:	0447b783          	ld	a5,68(a5) # 800075b0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002574:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002578:	00000097          	auipc	ra,0x0
    8000257c:	1d0080e7          	jalr	464(ra) # 80002748 <_ZN3TCB8dispatchEv>
    80002580:	f75ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002584:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    80002588:	0007b503          	ld	a0,0(a5)
    8000258c:	00000097          	auipc	ra,0x0
    80002590:	69c080e7          	jalr	1692(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
    80002594:	f61ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002598:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    8000259c:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800025a0:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    800025a4:	00000097          	auipc	ra,0x0
    800025a8:	48c080e7          	jalr	1164(ra) # 80002a30 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    800025ac:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800025b0:	00098863          	beqz	s3,800025c0 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
    800025b4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800025b8:	00078513          	mv	a0,a5
    800025bc:	f39ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            a0=(tcb!= nullptr)?0 : -1;
    800025c0:	fff00793          	li	a5,-1
    800025c4:	ff5ff06f          	j	800025b8 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800025c8:	00060513          	mv	a0,a2
    800025cc:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800025d0:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    800025d4:	fffff097          	auipc	ra,0xfffff
    800025d8:	130080e7          	jalr	304(ra) # 80001704 <_ZN10Ksemaphore15createSemaphoreEj>
    800025dc:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    800025e0:	00098863          	beqz	s3,800025f0 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    800025e4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    800025e8:	00078513          	mv	a0,a5
    800025ec:	f09ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            uint64 a= (sem!= nullptr)?0: -1;
    800025f0:	fff00793          	li	a5,-1
    800025f4:	ff5ff06f          	j	800025e8 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800025f8:	00058513          	mv	a0,a1
            if(sem== nullptr){
    800025fc:	00050c63          	beqz	a0,80002614 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
                sem->closeSemaphore();
    80002600:	fffff097          	auipc	ra,0xfffff
    80002604:	044080e7          	jalr	68(ra) # 80001644 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002608:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000260c:	00078513          	mv	a0,a5
    80002610:	ee5ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=1;
    80002614:	00100793          	li	a5,1
    80002618:	ff5ff06f          	j	8000260c <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    8000261c:	00088513          	mv	a0,a7
            if(a7!= nullptr){
    80002620:	00050a63          	beqz	a0,80002634 <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                a = a7->wait();
    80002624:	fffff097          	auipc	ra,0xfffff
    80002628:	f88080e7          	jalr	-120(ra) # 800015ac <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000262c:	00050513          	mv	a0,a0
    80002630:	ec5ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=-1;
    80002634:	fff00513          	li	a0,-1
    80002638:	ff5ff06f          	j	8000262c <_ZN5Riscv20handleSupervisorTrapEv+0x248>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(sem));
    8000263c:	00088513          	mv	a0,a7
            if(sem!= nullptr) {
    80002640:	00050a63          	beqz	a0,80002654 <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                a = sem->signal();
    80002644:	fffff097          	auipc	ra,0xfffff
    80002648:	fb8080e7          	jalr	-72(ra) # 800015fc <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000264c:	00050513          	mv	a0,a0
    80002650:	ea5ff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=1;
    80002654:	00100513          	li	a0,1
    80002658:	ff5ff06f          	j	8000264c <_ZN5Riscv20handleSupervisorTrapEv+0x268>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
    8000265c:	00058793          	mv	a5,a1

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}
    void* getArg() {return this->arg;}
    uint64 getId() {return this->id;}
    80002660:	0407b783          	ld	a5,64(a5)
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002664:	00078513          	mv	a0,a5
    80002668:	e8dff06f          	j	800024f4 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000266c:	00200793          	li	a5,2
    80002670:	1447b073          	csrc	sip,a5
}
    80002674:	e89ff06f          	j	800024fc <_ZN5Riscv20handleSupervisorTrapEv+0x118>

0000000080002678 <_Z41__static_initialization_and_destruction_0ii>:
        Scheduler::put(tmp);
    }
    tmp->setFinished(true);


}
    80002678:	00100793          	li	a5,1
    8000267c:	00f50463          	beq	a0,a5,80002684 <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002680:	00008067          	ret
    80002684:	000107b7          	lui	a5,0x10
    80002688:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000268c:	fef59ae3          	bne	a1,a5,80002680 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002690:	ff010113          	addi	sp,sp,-16
    80002694:	00113423          	sd	ra,8(sp)
    80002698:	00813023          	sd	s0,0(sp)
    8000269c:	01010413          	addi	s0,sp,16
Ksemaphore* TCB::semWaitAllThreads = Ksemaphore::createSemaphore(0);
    800026a0:	00000513          	li	a0,0
    800026a4:	fffff097          	auipc	ra,0xfffff
    800026a8:	060080e7          	jalr	96(ra) # 80001704 <_ZN10Ksemaphore15createSemaphoreEj>
    800026ac:	00005797          	auipc	a5,0x5
    800026b0:	faa7b623          	sd	a0,-84(a5) # 80007658 <_ZN3TCB17semWaitAllThreadsE>
}
    800026b4:	00813083          	ld	ra,8(sp)
    800026b8:	00013403          	ld	s0,0(sp)
    800026bc:	01010113          	addi	sp,sp,16
    800026c0:	00008067          	ret

00000000800026c4 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper(){
    800026c4:	fe010113          	addi	sp,sp,-32
    800026c8:	00113c23          	sd	ra,24(sp)
    800026cc:	00813823          	sd	s0,16(sp)
    800026d0:	00913423          	sd	s1,8(sp)
    800026d4:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800026d8:	00000097          	auipc	ra,0x0
    800026dc:	cec080e7          	jalr	-788(ra) # 800023c4 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800026e0:	00005497          	auipc	s1,0x5
    800026e4:	f7848493          	addi	s1,s1,-136 # 80007658 <_ZN3TCB17semWaitAllThreadsE>
    800026e8:	0084b783          	ld	a5,8(s1)
    800026ec:	0087b703          	ld	a4,8(a5)
    800026f0:	0107b503          	ld	a0,16(a5)
    800026f4:	000700e7          	jalr	a4
    running->setFinished(true);
    800026f8:	0084b783          	ld	a5,8(s1)
    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }
    800026fc:	00100713          	li	a4,1
    80002700:	02e78c23          	sb	a4,56(a5)
    __asm__ volatile ("li a0, 0x13");
    80002704:	01300513          	li	a0,19
    __asm__ volatile ("ecall");
    80002708:	00000073          	ecall
}
    8000270c:	01813083          	ld	ra,24(sp)
    80002710:	01013403          	ld	s0,16(sp)
    80002714:	00813483          	ld	s1,8(sp)
    80002718:	02010113          	addi	sp,sp,32
    8000271c:	00008067          	ret

0000000080002720 <_ZN3TCB14putInSchedulerEPS_>:
void TCB::putInScheduler(TCB *tcb) {
    80002720:	ff010113          	addi	sp,sp,-16
    80002724:	00113423          	sd	ra,8(sp)
    80002728:	00813023          	sd	s0,0(sp)
    8000272c:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    80002730:	00000097          	auipc	ra,0x0
    80002734:	4f8080e7          	jalr	1272(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
}
    80002738:	00813083          	ld	ra,8(sp)
    8000273c:	00013403          	ld	s0,0(sp)
    80002740:	01010113          	addi	sp,sp,16
    80002744:	00008067          	ret

0000000080002748 <_ZN3TCB8dispatchEv>:
{
    80002748:	fe010113          	addi	sp,sp,-32
    8000274c:	00113c23          	sd	ra,24(sp)
    80002750:	00813823          	sd	s0,16(sp)
    80002754:	00913423          	sd	s1,8(sp)
    80002758:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000275c:	00005497          	auipc	s1,0x5
    80002760:	f044b483          	ld	s1,-252(s1) # 80007660 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002764:	0384c783          	lbu	a5,56(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002768:	02078c63          	beqz	a5,800027a0 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000276c:	00000097          	auipc	ra,0x0
    80002770:	464080e7          	jalr	1124(ra) # 80002bd0 <_ZN9Scheduler3getEv>
    80002774:	00005797          	auipc	a5,0x5
    80002778:	eea7b623          	sd	a0,-276(a5) # 80007660 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    8000277c:	02050593          	addi	a1,a0,32
    80002780:	02048513          	addi	a0,s1,32
    80002784:	fffff097          	auipc	ra,0xfffff
    80002788:	a7c080e7          	jalr	-1412(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000278c:	01813083          	ld	ra,24(sp)
    80002790:	01013403          	ld	s0,16(sp)
    80002794:	00813483          	ld	s1,8(sp)
    80002798:	02010113          	addi	sp,sp,32
    8000279c:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800027a0:	00048513          	mv	a0,s1
    800027a4:	00000097          	auipc	ra,0x0
    800027a8:	484080e7          	jalr	1156(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
    800027ac:	fc1ff06f          	j	8000276c <_ZN3TCB8dispatchEv+0x24>

00000000800027b0 <_ZN3TCB5yieldEv>:
{
    800027b0:	ff010113          	addi	sp,sp,-16
    800027b4:	00113423          	sd	ra,8(sp)
    800027b8:	00813023          	sd	s0,0(sp)
    800027bc:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800027c0:	fffff097          	auipc	ra,0xfffff
    800027c4:	840080e7          	jalr	-1984(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	f80080e7          	jalr	-128(ra) # 80002748 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    800027d0:	fffff097          	auipc	ra,0xfffff
    800027d4:	8a8080e7          	jalr	-1880(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread() {
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00113423          	sd	ra,8(sp)
    800027f0:	00813023          	sd	s0,0(sp)
    800027f4:	01010413          	addi	s0,sp,16
    void setFinished(bool value) { finished = value; }
    800027f8:	00005797          	auipc	a5,0x5
    800027fc:	e687b783          	ld	a5,-408(a5) # 80007660 <_ZN3TCB7runningE>
    80002800:	00100713          	li	a4,1
    80002804:	02e78c23          	sb	a4,56(a5)
    dispatch();
    80002808:	00000097          	auipc	ra,0x0
    8000280c:	f40080e7          	jalr	-192(ra) # 80002748 <_ZN3TCB8dispatchEv>
}
    80002810:	00000513          	li	a0,0
    80002814:	00813083          	ld	ra,8(sp)
    80002818:	00013403          	ld	s0,0(sp)
    8000281c:	01010113          	addi	sp,sp,16
    80002820:	00008067          	ret

0000000080002824 <_ZN3TCB24dispatchWithoutSchedulerEv>:
void TCB::dispatchWithoutScheduler(){
    80002824:	fe010113          	addi	sp,sp,-32
    80002828:	00113c23          	sd	ra,24(sp)
    8000282c:	00813823          	sd	s0,16(sp)
    80002830:	00913423          	sd	s1,8(sp)
    80002834:	01213023          	sd	s2,0(sp)
    80002838:	02010413          	addi	s0,sp,32
    TCB *old = running;
    8000283c:	00005497          	auipc	s1,0x5
    80002840:	e1c48493          	addi	s1,s1,-484 # 80007658 <_ZN3TCB17semWaitAllThreadsE>
    80002844:	0084b903          	ld	s2,8(s1)
    running = Scheduler::get();
    80002848:	00000097          	auipc	ra,0x0
    8000284c:	388080e7          	jalr	904(ra) # 80002bd0 <_ZN9Scheduler3getEv>
    80002850:	00a4b423          	sd	a0,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002854:	02050593          	addi	a1,a0,32
    80002858:	02090513          	addi	a0,s2,32
    8000285c:	fffff097          	auipc	ra,0xfffff
    80002860:	9a4080e7          	jalr	-1628(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002864:	01813083          	ld	ra,24(sp)
    80002868:	01013403          	ld	s0,16(sp)
    8000286c:	00813483          	ld	s1,8(sp)
    80002870:	00013903          	ld	s2,0(sp)
    80002874:	02010113          	addi	sp,sp,32
    80002878:	00008067          	ret

000000008000287c <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    8000287c:	ff010113          	addi	sp,sp,-16
    80002880:	00113423          	sd	ra,8(sp)
    80002884:	00813023          	sd	s0,0(sp)
    80002888:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    8000288c:	ffffe097          	auipc	ra,0xffffe
    80002890:	774080e7          	jalr	1908(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    80002894:	00000097          	auipc	ra,0x0
    80002898:	f90080e7          	jalr	-112(ra) # 80002824 <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    8000289c:	ffffe097          	auipc	ra,0xffffe
    800028a0:	7dc080e7          	jalr	2012(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    800028a4:	00813083          	ld	ra,8(sp)
    800028a8:	00013403          	ld	s0,0(sp)
    800028ac:	01010113          	addi	sp,sp,16
    800028b0:	00008067          	ret

00000000800028b4 <_ZN3TCB4joinEv>:
void TCB::join() {
    800028b4:	ff010113          	addi	sp,sp,-16
    800028b8:	00113423          	sd	ra,8(sp)
    800028bc:	00813023          	sd	s0,0(sp)
    800028c0:	01010413          	addi	s0,sp,16
    sem->wait();
    800028c4:	00053503          	ld	a0,0(a0)
    800028c8:	fffff097          	auipc	ra,0xfffff
    800028cc:	ce4080e7          	jalr	-796(ra) # 800015ac <_ZN10Ksemaphore4waitEv>
}
    800028d0:	00813083          	ld	ra,8(sp)
    800028d4:	00013403          	ld	s0,0(sp)
    800028d8:	01010113          	addi	sp,sp,16
    800028dc:	00008067          	ret

00000000800028e0 <_ZN3TCBdlEPv>:
void TCB::operator delete(void *p) {
    800028e0:	ff010113          	addi	sp,sp,-16
    800028e4:	00113423          	sd	ra,8(sp)
    800028e8:	00813023          	sd	s0,0(sp)
    800028ec:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800028f0:	00000097          	auipc	ra,0x0
    800028f4:	58c080e7          	jalr	1420(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
}
    800028f8:	00813083          	ld	ra,8(sp)
    800028fc:	00013403          	ld	s0,0(sp)
    80002900:	01010113          	addi	sp,sp,16
    80002904:	00008067          	ret

0000000080002908 <_ZN3TCBnwEm>:
void *TCB::operator new(size_t n) {
    80002908:	ff010113          	addi	sp,sp,-16
    8000290c:	00113423          	sd	ra,8(sp)
    80002910:	00813023          	sd	s0,0(sp)
    80002914:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    80002918:	04800513          	li	a0,72
    8000291c:	00000097          	auipc	ra,0x0
    80002920:	4c4080e7          	jalr	1220(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
}
    80002924:	00813083          	ld	ra,8(sp)
    80002928:	00013403          	ld	s0,0(sp)
    8000292c:	01010113          	addi	sp,sp,16
    80002930:	00008067          	ret

0000000080002934 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002934:	fd010113          	addi	sp,sp,-48
    80002938:	02113423          	sd	ra,40(sp)
    8000293c:	02813023          	sd	s0,32(sp)
    80002940:	00913c23          	sd	s1,24(sp)
    80002944:	01213823          	sd	s2,16(sp)
    80002948:	01313423          	sd	s3,8(sp)
    8000294c:	03010413          	addi	s0,sp,48
    80002950:	00050913          	mv	s2,a0
    80002954:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002958:	04800513          	li	a0,72
    8000295c:	00000097          	auipc	ra,0x0
    80002960:	fac080e7          	jalr	-84(ra) # 80002908 <_ZN3TCBnwEm>
    80002964:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002968:	01253423          	sd	s2,8(a0)
        arg=argg;
    8000296c:	01353823          	sd	s3,16(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002970:	00090a63          	beqz	s2,80002984 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002974:	00008537          	lui	a0,0x8
    80002978:	00000097          	auipc	ra,0x0
    8000297c:	468080e7          	jalr	1128(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
    80002980:	0080006f          	j	80002988 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002984:	00000513          	li	a0,0
    80002988:	00a4bc23          	sd	a0,24(s1)
        context.ra = (uint64) &threadWrapper;
    8000298c:	00000797          	auipc	a5,0x0
    80002990:	d3878793          	addi	a5,a5,-712 # 800026c4 <_ZN3TCB13threadWrapperEv>
    80002994:	02f4b023          	sd	a5,32(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002998:	06050a63          	beqz	a0,80002a0c <_ZN3TCB12createThreadEPFvPvES0_+0xd8>
    8000299c:	000087b7          	lui	a5,0x8
    800029a0:	00f507b3          	add	a5,a0,a5
    800029a4:	02f4b423          	sd	a5,40(s1)
        timeSlice=timeSlicee;
    800029a8:	00200793          	li	a5,2
    800029ac:	02f4b823          	sd	a5,48(s1)
        finished= false;
    800029b0:	02048c23          	sb	zero,56(s1)
        id=threadId++;
    800029b4:	00005717          	auipc	a4,0x5
    800029b8:	ca470713          	addi	a4,a4,-860 # 80007658 <_ZN3TCB17semWaitAllThreadsE>
    800029bc:	01073783          	ld	a5,16(a4)
    800029c0:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    800029c4:	00d73823          	sd	a3,16(a4)
    800029c8:	04f4b023          	sd	a5,64(s1)
    t->sem = Ksemaphore::createSemaphore(0);
    800029cc:	00000513          	li	a0,0
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	d34080e7          	jalr	-716(ra) # 80001704 <_ZN10Ksemaphore15createSemaphoreEj>
    800029d8:	00a4b023          	sd	a0,0(s1)
    if (body != nullptr) {
    800029dc:	00090863          	beqz	s2,800029ec <_ZN3TCB12createThreadEPFvPvES0_+0xb8>
        Scheduler::put(t);
    800029e0:	00048513          	mv	a0,s1
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	244080e7          	jalr	580(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
}
    800029ec:	00048513          	mv	a0,s1
    800029f0:	02813083          	ld	ra,40(sp)
    800029f4:	02013403          	ld	s0,32(sp)
    800029f8:	01813483          	ld	s1,24(sp)
    800029fc:	01013903          	ld	s2,16(sp)
    80002a00:	00813983          	ld	s3,8(sp)
    80002a04:	03010113          	addi	sp,sp,48
    80002a08:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a0c:	00000793          	li	a5,0
    80002a10:	f95ff06f          	j	800029a4 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002a14:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002a18:	00048513          	mv	a0,s1
    80002a1c:	00000097          	auipc	ra,0x0
    80002a20:	ec4080e7          	jalr	-316(ra) # 800028e0 <_ZN3TCBdlEPv>
    80002a24:	00090513          	mv	a0,s2
    80002a28:	00006097          	auipc	ra,0x6
    80002a2c:	d50080e7          	jalr	-688(ra) # 80008778 <_Unwind_Resume>

0000000080002a30 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    80002a30:	fd010113          	addi	sp,sp,-48
    80002a34:	02113423          	sd	ra,40(sp)
    80002a38:	02813023          	sd	s0,32(sp)
    80002a3c:	00913c23          	sd	s1,24(sp)
    80002a40:	01213823          	sd	s2,16(sp)
    80002a44:	01313423          	sd	s3,8(sp)
    80002a48:	03010413          	addi	s0,sp,48
    80002a4c:	00050913          	mv	s2,a0
    80002a50:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002a54:	04800513          	li	a0,72
    80002a58:	00000097          	auipc	ra,0x0
    80002a5c:	eb0080e7          	jalr	-336(ra) # 80002908 <_ZN3TCBnwEm>
    80002a60:	00050493          	mv	s1,a0
        body = bodyy;
    80002a64:	01253423          	sd	s2,8(a0) # 8008 <_entry-0x7fff7ff8>
        arg=argg;
    80002a68:	01353823          	sd	s3,16(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002a6c:	00090a63          	beqz	s2,80002a80 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    80002a70:	00008537          	lui	a0,0x8
    80002a74:	00000097          	auipc	ra,0x0
    80002a78:	36c080e7          	jalr	876(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
    80002a7c:	0080006f          	j	80002a84 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    80002a80:	00000513          	li	a0,0
    80002a84:	00a4bc23          	sd	a0,24(s1)
        context.ra = (uint64) &threadWrapper;
    80002a88:	00000797          	auipc	a5,0x0
    80002a8c:	c3c78793          	addi	a5,a5,-964 # 800026c4 <_ZN3TCB13threadWrapperEv>
    80002a90:	02f4b023          	sd	a5,32(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002a94:	04050a63          	beqz	a0,80002ae8 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xb8>
    80002a98:	000087b7          	lui	a5,0x8
    80002a9c:	00f50533          	add	a0,a0,a5
    80002aa0:	02a4b423          	sd	a0,40(s1)
        timeSlice=timeSlicee;
    80002aa4:	00200793          	li	a5,2
    80002aa8:	02f4b823          	sd	a5,48(s1)
        finished= false;
    80002aac:	02048c23          	sb	zero,56(s1)
        id=threadId++;
    80002ab0:	00005717          	auipc	a4,0x5
    80002ab4:	ba870713          	addi	a4,a4,-1112 # 80007658 <_ZN3TCB17semWaitAllThreadsE>
    80002ab8:	01073783          	ld	a5,16(a4)
    80002abc:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80002ac0:	00d73823          	sd	a3,16(a4)
    80002ac4:	04f4b023          	sd	a5,64(s1)
}
    80002ac8:	00048513          	mv	a0,s1
    80002acc:	02813083          	ld	ra,40(sp)
    80002ad0:	02013403          	ld	s0,32(sp)
    80002ad4:	01813483          	ld	s1,24(sp)
    80002ad8:	01013903          	ld	s2,16(sp)
    80002adc:	00813983          	ld	s3,8(sp)
    80002ae0:	03010113          	addi	sp,sp,48
    80002ae4:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002ae8:	00000513          	li	a0,0
    80002aec:	fb5ff06f          	j	80002aa0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002af0:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002af4:	00048513          	mv	a0,s1
    80002af8:	00000097          	auipc	ra,0x0
    80002afc:	de8080e7          	jalr	-536(ra) # 800028e0 <_ZN3TCBdlEPv>
    80002b00:	00090513          	mv	a0,s2
    80002b04:	00006097          	auipc	ra,0x6
    80002b08:	c74080e7          	jalr	-908(ra) # 80008778 <_Unwind_Resume>

0000000080002b0c <_ZN3TCB4killEPS_>:
void TCB::kill(TCB* t) {
    80002b0c:	fe010113          	addi	sp,sp,-32
    80002b10:	00113c23          	sd	ra,24(sp)
    80002b14:	00813823          	sd	s0,16(sp)
    80002b18:	00913423          	sd	s1,8(sp)
    80002b1c:	02010413          	addi	s0,sp,32
    80002b20:	00058493          	mv	s1,a1
    while((tmp=Scheduler::get())!=t){
    80002b24:	00000097          	auipc	ra,0x0
    80002b28:	0ac080e7          	jalr	172(ra) # 80002bd0 <_ZN9Scheduler3getEv>
    80002b2c:	00950863          	beq	a0,s1,80002b3c <_ZN3TCB4killEPS_+0x30>
        Scheduler::put(tmp);
    80002b30:	00000097          	auipc	ra,0x0
    80002b34:	0f8080e7          	jalr	248(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
    while((tmp=Scheduler::get())!=t){
    80002b38:	fedff06f          	j	80002b24 <_ZN3TCB4killEPS_+0x18>
    void setFinished(bool value) { finished = value; }
    80002b3c:	00100793          	li	a5,1
    80002b40:	02f50c23          	sb	a5,56(a0) # 8038 <_entry-0x7fff7fc8>
}
    80002b44:	01813083          	ld	ra,24(sp)
    80002b48:	01013403          	ld	s0,16(sp)
    80002b4c:	00813483          	ld	s1,8(sp)
    80002b50:	02010113          	addi	sp,sp,32
    80002b54:	00008067          	ret

0000000080002b58 <_GLOBAL__sub_I__ZN3TCB7runningE>:
    80002b58:	ff010113          	addi	sp,sp,-16
    80002b5c:	00113423          	sd	ra,8(sp)
    80002b60:	00813023          	sd	s0,0(sp)
    80002b64:	01010413          	addi	s0,sp,16
    80002b68:	000105b7          	lui	a1,0x10
    80002b6c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002b70:	00100513          	li	a0,1
    80002b74:	00000097          	auipc	ra,0x0
    80002b78:	b04080e7          	jalr	-1276(ra) # 80002678 <_Z41__static_initialization_and_destruction_0ii>
    80002b7c:	00813083          	ld	ra,8(sp)
    80002b80:	00013403          	ld	s0,0(sp)
    80002b84:	01010113          	addi	sp,sp,16
    80002b88:	00008067          	ret

0000000080002b8c <_Z41__static_initialization_and_destruction_0ii>:
    bool a=false;
    TCB* t= Scheduler::get();
    if(isEmpty())a=true;
    Scheduler::put(t);
    return a;
}
    80002b8c:	ff010113          	addi	sp,sp,-16
    80002b90:	00813423          	sd	s0,8(sp)
    80002b94:	01010413          	addi	s0,sp,16
    80002b98:	00100793          	li	a5,1
    80002b9c:	00f50863          	beq	a0,a5,80002bac <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002ba0:	00813403          	ld	s0,8(sp)
    80002ba4:	01010113          	addi	sp,sp,16
    80002ba8:	00008067          	ret
    80002bac:	000107b7          	lui	a5,0x10
    80002bb0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002bb4:	fef596e3          	bne	a1,a5,80002ba0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002bb8:	00005797          	auipc	a5,0x5
    80002bbc:	ac078793          	addi	a5,a5,-1344 # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002bc0:	0007b023          	sd	zero,0(a5)
    80002bc4:	0007b423          	sd	zero,8(a5)
    80002bc8:	0007a823          	sw	zero,16(a5)
    80002bcc:	fd5ff06f          	j	80002ba0 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002bd0 <_ZN9Scheduler3getEv>:
{
    80002bd0:	ff010113          	addi	sp,sp,-16
    80002bd4:	00813423          	sd	s0,8(sp)
    80002bd8:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
    80002bdc:	00005517          	auipc	a0,0x5
    80002be0:	a9c53503          	ld	a0,-1380(a0) # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002be4:	02050663          	beqz	a0,80002c10 <_ZN9Scheduler3getEv+0x40>
        head = head->next;
    80002be8:	00853783          	ld	a5,8(a0)
    80002bec:	00005717          	auipc	a4,0x5
    80002bf0:	a8f73623          	sd	a5,-1396(a4) # 80007678 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002bf4:	02078463          	beqz	a5,80002c1c <_ZN9Scheduler3getEv+0x4c>
        T *ret = elem->data;
    80002bf8:	00053503          	ld	a0,0(a0)
        num--;
    80002bfc:	00005717          	auipc	a4,0x5
    80002c00:	a7c70713          	addi	a4,a4,-1412 # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002c04:	01072783          	lw	a5,16(a4)
    80002c08:	fff7879b          	addiw	a5,a5,-1
    80002c0c:	00f72823          	sw	a5,16(a4)
}
    80002c10:	00813403          	ld	s0,8(sp)
    80002c14:	01010113          	addi	sp,sp,16
    80002c18:	00008067          	ret
        if (!head) { tail = 0; }
    80002c1c:	00005797          	auipc	a5,0x5
    80002c20:	a607b223          	sd	zero,-1436(a5) # 80007680 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c24:	fd5ff06f          	j	80002bf8 <_ZN9Scheduler3getEv+0x28>

0000000080002c28 <_ZN9Scheduler3putEP3TCB>:
{
    80002c28:	fe010113          	addi	sp,sp,-32
    80002c2c:	00113c23          	sd	ra,24(sp)
    80002c30:	00813823          	sd	s0,16(sp)
    80002c34:	00913423          	sd	s1,8(sp)
    80002c38:	02010413          	addi	s0,sp,32
    80002c3c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002c40:	01000513          	li	a0,16
    80002c44:	fffff097          	auipc	ra,0xfffff
    80002c48:	634080e7          	jalr	1588(ra) # 80002278 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002c4c:	00953023          	sd	s1,0(a0)
    80002c50:	00053423          	sd	zero,8(a0)
        if (tail)
    80002c54:	00005797          	auipc	a5,0x5
    80002c58:	a2c7b783          	ld	a5,-1492(a5) # 80007680 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002c5c:	02078c63          	beqz	a5,80002c94 <_ZN9Scheduler3putEP3TCB+0x6c>
            tail->next = elem;
    80002c60:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002c64:	00005797          	auipc	a5,0x5
    80002c68:	a0a7be23          	sd	a0,-1508(a5) # 80007680 <_ZN9Scheduler16readyThreadQueueE+0x8>
        num++;
    80002c6c:	00005717          	auipc	a4,0x5
    80002c70:	a0c70713          	addi	a4,a4,-1524 # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002c74:	01072783          	lw	a5,16(a4)
    80002c78:	0017879b          	addiw	a5,a5,1
    80002c7c:	00f72823          	sw	a5,16(a4)
}
    80002c80:	01813083          	ld	ra,24(sp)
    80002c84:	01013403          	ld	s0,16(sp)
    80002c88:	00813483          	ld	s1,8(sp)
    80002c8c:	02010113          	addi	sp,sp,32
    80002c90:	00008067          	ret
            head = tail = elem;
    80002c94:	00005797          	auipc	a5,0x5
    80002c98:	9e478793          	addi	a5,a5,-1564 # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002c9c:	00a7b423          	sd	a0,8(a5)
    80002ca0:	00a7b023          	sd	a0,0(a5)
    80002ca4:	fc9ff06f          	j	80002c6c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002ca8 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002ca8:	ff010113          	addi	sp,sp,-16
    80002cac:	00813423          	sd	s0,8(sp)
    80002cb0:	01010413          	addi	s0,sp,16
}
    80002cb4:	00053503          	ld	a0,0(a0)
    80002cb8:	00813403          	ld	s0,8(sp)
    80002cbc:	01010113          	addi	sp,sp,16
    80002cc0:	00008067          	ret

0000000080002cc4 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    80002cc4:	ff010113          	addi	sp,sp,-16
    80002cc8:	00113423          	sd	ra,8(sp)
    80002ccc:	00813023          	sd	s0,0(sp)
    80002cd0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002cd4:	00000097          	auipc	ra,0x0
    80002cd8:	10c080e7          	jalr	268(ra) # 80002de0 <_ZN15MemoryAllocator6mallocEm>
}
    80002cdc:	00813083          	ld	ra,8(sp)
    80002ce0:	00013403          	ld	s0,0(sp)
    80002ce4:	01010113          	addi	sp,sp,16
    80002ce8:	00008067          	ret

0000000080002cec <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    80002cec:	ff010113          	addi	sp,sp,-16
    80002cf0:	00113423          	sd	ra,8(sp)
    80002cf4:	00813023          	sd	s0,0(sp)
    80002cf8:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	180080e7          	jalr	384(ra) # 80002e7c <_ZN15MemoryAllocator4freeEPv>
}
    80002d04:	00813083          	ld	ra,8(sp)
    80002d08:	00013403          	ld	s0,0(sp)
    80002d0c:	01010113          	addi	sp,sp,16
    80002d10:	00008067          	ret

0000000080002d14 <_ZN9Scheduler7isEmptyEv>:
bool Scheduler::isEmpty() {
    80002d14:	ff010113          	addi	sp,sp,-16
    80002d18:	00813423          	sd	s0,8(sp)
    80002d1c:	01010413          	addi	s0,sp,16
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002d20:	00005797          	auipc	a5,0x5
    80002d24:	9587b783          	ld	a5,-1704(a5) # 80007678 <_ZN9Scheduler16readyThreadQueueE>
    80002d28:	02078263          	beqz	a5,80002d4c <_ZN9Scheduler7isEmptyEv+0x38>
        return head->data;
    80002d2c:	0007b783          	ld	a5,0(a5)
    if(readyThreadQueue.peekFirst())a=false;
    80002d30:	00078a63          	beqz	a5,80002d44 <_ZN9Scheduler7isEmptyEv+0x30>
    80002d34:	00000513          	li	a0,0
}
    80002d38:	00813403          	ld	s0,8(sp)
    80002d3c:	01010113          	addi	sp,sp,16
    80002d40:	00008067          	ret
    bool a=true;
    80002d44:	00100513          	li	a0,1
    80002d48:	ff1ff06f          	j	80002d38 <_ZN9Scheduler7isEmptyEv+0x24>
    80002d4c:	00100513          	li	a0,1
    80002d50:	fe9ff06f          	j	80002d38 <_ZN9Scheduler7isEmptyEv+0x24>

0000000080002d54 <_ZN9Scheduler7oneLeftEv>:
bool Scheduler::oneLeft() {
    80002d54:	fe010113          	addi	sp,sp,-32
    80002d58:	00113c23          	sd	ra,24(sp)
    80002d5c:	00813823          	sd	s0,16(sp)
    80002d60:	00913423          	sd	s1,8(sp)
    80002d64:	01213023          	sd	s2,0(sp)
    80002d68:	02010413          	addi	s0,sp,32
    TCB* t= Scheduler::get();
    80002d6c:	00000097          	auipc	ra,0x0
    80002d70:	e64080e7          	jalr	-412(ra) # 80002bd0 <_ZN9Scheduler3getEv>
    80002d74:	00050913          	mv	s2,a0
    if(isEmpty())a=true;
    80002d78:	00000097          	auipc	ra,0x0
    80002d7c:	f9c080e7          	jalr	-100(ra) # 80002d14 <_ZN9Scheduler7isEmptyEv>
    80002d80:	00050493          	mv	s1,a0
    Scheduler::put(t);
    80002d84:	00090513          	mv	a0,s2
    80002d88:	00000097          	auipc	ra,0x0
    80002d8c:	ea0080e7          	jalr	-352(ra) # 80002c28 <_ZN9Scheduler3putEP3TCB>
}
    80002d90:	00048513          	mv	a0,s1
    80002d94:	01813083          	ld	ra,24(sp)
    80002d98:	01013403          	ld	s0,16(sp)
    80002d9c:	00813483          	ld	s1,8(sp)
    80002da0:	00013903          	ld	s2,0(sp)
    80002da4:	02010113          	addi	sp,sp,32
    80002da8:	00008067          	ret

0000000080002dac <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002dac:	ff010113          	addi	sp,sp,-16
    80002db0:	00113423          	sd	ra,8(sp)
    80002db4:	00813023          	sd	s0,0(sp)
    80002db8:	01010413          	addi	s0,sp,16
    80002dbc:	000105b7          	lui	a1,0x10
    80002dc0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002dc4:	00100513          	li	a0,1
    80002dc8:	00000097          	auipc	ra,0x0
    80002dcc:	dc4080e7          	jalr	-572(ra) # 80002b8c <_Z41__static_initialization_and_destruction_0ii>
    80002dd0:	00813083          	ld	ra,8(sp)
    80002dd4:	00013403          	ld	s0,0(sp)
    80002dd8:	01010113          	addi	sp,sp,16
    80002ddc:	00008067          	ret

0000000080002de0 <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    80002de0:	ff010113          	addi	sp,sp,-16
    80002de4:	00813423          	sd	s0,8(sp)
    80002de8:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002dec:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    80002df0:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002df4:	00005517          	auipc	a0,0x5
    80002df8:	89c53503          	ld	a0,-1892(a0) # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002dfc:	0440006f          	j	80002e40 <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80002e00:	40e787b3          	sub	a5,a5,a4
    80002e04:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80002e08:	fe878793          	addi	a5,a5,-24
    80002e0c:	00679793          	slli	a5,a5,0x6
    80002e10:	fe878793          	addi	a5,a5,-24
    80002e14:	00f507b3          	add	a5,a0,a5
    80002e18:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80002e1c:	01053783          	ld	a5,16(a0)
    80002e20:	fe878793          	addi	a5,a5,-24
    80002e24:	00679793          	slli	a5,a5,0x6
    80002e28:	ff078793          	addi	a5,a5,-16
    80002e2c:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80002e30:	00813403          	ld	s0,8(sp)
    80002e34:	01010113          	addi	sp,sp,16
    80002e38:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002e3c:	00053503          	ld	a0,0(a0)
    80002e40:	fe0508e3          	beqz	a0,80002e30 <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    80002e44:	01053783          	ld	a5,16(a0)
    80002e48:	faf76ce3          	bltu	a4,a5,80002e00 <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80002e4c:	fee798e3          	bne	a5,a4,80002e3c <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    80002e50:	00853783          	ld	a5,8(a0)
    80002e54:	00078663          	beqz	a5,80002e60 <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    80002e58:	00053683          	ld	a3,0(a0)
    80002e5c:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    80002e60:	00053783          	ld	a5,0(a0)
    80002e64:	00078663          	beqz	a5,80002e70 <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    80002e68:	00853683          	ld	a3,8(a0)
    80002e6c:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    80002e70:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    80002e74:	ff050513          	addi	a0,a0,-16
    80002e78:	fb9ff06f          	j	80002e30 <_ZN15MemoryAllocator6mallocEm+0x50>

0000000080002e7c <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    80002e7c:	ff010113          	addi	sp,sp,-16
    80002e80:	00813423          	sd	s0,8(sp)
    80002e84:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002e88:	14050663          	beqz	a0,80002fd4 <_ZN15MemoryAllocator4freeEPv+0x158>
    80002e8c:	00004797          	auipc	a5,0x4
    80002e90:	73c7b783          	ld	a5,1852(a5) # 800075c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002e94:	0007b783          	ld	a5,0(a5)
    80002e98:	14a7e263          	bltu	a5,a0,80002fdc <_ZN15MemoryAllocator4freeEPv+0x160>
    80002e9c:	00004797          	auipc	a5,0x4
    80002ea0:	7047b783          	ld	a5,1796(a5) # 800075a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002ea4:	0007b783          	ld	a5,0(a5)
    80002ea8:	14f56263          	bltu	a0,a5,80002fec <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    80002eac:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    80002eb0:	14070263          	beqz	a4,80002ff4 <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    80002eb4:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    80002eb8:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002ebc:	00004797          	auipc	a5,0x4
    80002ec0:	7d47b783          	ld	a5,2004(a5) # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002ec4:	0140006f          	j	80002ed8 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80002ec8:	00004697          	auipc	a3,0x4
    80002ecc:	7d06b683          	ld	a3,2000(a3) # 80007698 <_ZN15MemoryAllocator4tailE>
    80002ed0:	02f68e63          	beq	a3,a5,80002f0c <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002ed4:	0007b783          	ld	a5,0(a5)
    80002ed8:	04078863          	beqz	a5,80002f28 <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    80002edc:	fee7f6e3          	bgeu	a5,a4,80002ec8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002ee0:	0007b683          	ld	a3,0(a5)
    80002ee4:	fed772e3          	bgeu	a4,a3,80002ec8 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002ee8:	00004617          	auipc	a2,0x4
    80002eec:	7b063603          	ld	a2,1968(a2) # 80007698 <_ZN15MemoryAllocator4tailE>
    80002ef0:	fcf60ce3          	beq	a2,a5,80002ec8 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    80002ef4:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80002ef8:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80002efc:	0007b683          	ld	a3,0(a5)
    80002f00:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    80002f04:	00e7b023          	sd	a4,0(a5)
    80002f08:	fcdff06f          	j	80002ed4 <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80002f0c:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80002f10:	00004797          	auipc	a5,0x4
    80002f14:	78078793          	addi	a5,a5,1920 # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002f18:	0087b683          	ld	a3,8(a5)
    80002f1c:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80002f20:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    80002f24:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80002f28:	00004797          	auipc	a5,0x4
    80002f2c:	7687b783          	ld	a5,1896(a5) # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002f30:	02078e63          	beqz	a5,80002f6c <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    80002f34:	00053783          	ld	a5,0(a0)
    80002f38:	00078a63          	beqz	a5,80002f4c <_ZN15MemoryAllocator4freeEPv+0xd0>
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
    80002f3c:	0107b603          	ld	a2,16(a5)
    80002f40:	00661693          	slli	a3,a2,0x6
    80002f44:	00d786b3          	add	a3,a5,a3
    80002f48:	02e68a63          	beq	a3,a4,80002f7c <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    80002f4c:	00073783          	ld	a5,0(a4)
    80002f50:	0a078663          	beqz	a5,80002ffc <_ZN15MemoryAllocator4freeEPv+0x180>
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
    80002f54:	01073603          	ld	a2,16(a4)
    80002f58:	00661693          	slli	a3,a2,0x6
    80002f5c:	00d706b3          	add	a3,a4,a3
    80002f60:	04d78463          	beq	a5,a3,80002fa8 <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    80002f64:	00000513          	li	a0,0
    80002f68:	0780006f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    80002f6c:	00004797          	auipc	a5,0x4
    80002f70:	72e7b223          	sd	a4,1828(a5) # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    80002f74:	00000513          	li	a0,0
    80002f78:	0680006f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    80002f7c:	00853703          	ld	a4,8(a0)
    80002f80:	00e60633          	add	a2,a2,a4
    80002f84:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    80002f88:	00053703          	ld	a4,0(a0)
    80002f8c:	ff853783          	ld	a5,-8(a0)
    80002f90:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    80002f94:	00078663          	beqz	a5,80002fa0 <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    80002f98:	00053703          	ld	a4,0(a0)
    80002f9c:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    80002fa0:	00053703          	ld	a4,0(a0)
    80002fa4:	fa9ff06f          	j	80002f4c <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    80002fa8:	0107b683          	ld	a3,16(a5)
    80002fac:	00d60633          	add	a2,a2,a3
    80002fb0:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    80002fb4:	0007b783          	ld	a5,0(a5)
    80002fb8:	04078663          	beqz	a5,80003004 <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    80002fbc:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    80002fc0:	00073783          	ld	a5,0(a4)
    80002fc4:	0007b783          	ld	a5,0(a5)
    80002fc8:	00f73023          	sd	a5,0(a4)
    return 0;
    80002fcc:	00000513          	li	a0,0
    80002fd0:	0100006f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002fd4:	00100513          	li	a0,1
    80002fd8:	0080006f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
    80002fdc:	00100513          	li	a0,1
}
    80002fe0:	00813403          	ld	s0,8(sp)
    80002fe4:	01010113          	addi	sp,sp,16
    80002fe8:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002fec:	00100513          	li	a0,1
    80002ff0:	ff1ff06f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    80002ff4:	00100513          	li	a0,1
    80002ff8:	fe9ff06f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    80002ffc:	00000513          	li	a0,0
    80003000:	fe1ff06f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>
    80003004:	00000513          	li	a0,0
    80003008:	fd9ff06f          	j	80002fe0 <_ZN15MemoryAllocator4freeEPv+0x164>

000000008000300c <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    8000300c:	ff010113          	addi	sp,sp,-16
    80003010:	00813423          	sd	s0,8(sp)
    80003014:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80003018:	00004797          	auipc	a5,0x4
    8000301c:	5887b783          	ld	a5,1416(a5) # 800075a0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003020:	0007b703          	ld	a4,0(a5)
    80003024:	00004697          	auipc	a3,0x4
    80003028:	66c68693          	addi	a3,a3,1644 # 80007690 <_ZN15MemoryAllocator13freeBlockHeadE>
    8000302c:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80003030:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80003034:	00004797          	auipc	a5,0x4
    80003038:	5947b783          	ld	a5,1428(a5) # 800075c8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000303c:	0007b783          	ld	a5,0(a5)
    80003040:	40e787b3          	sub	a5,a5,a4
    80003044:	03f78793          	addi	a5,a5,63
    80003048:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    8000304c:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80003050:	00e6b423          	sd	a4,8(a3)
    freeBlockHead->next= nullptr;
    80003054:	00073023          	sd	zero,0(a4)
    freeBlockHead->prev= nullptr;
    80003058:	0006b783          	ld	a5,0(a3)
    8000305c:	0007b423          	sd	zero,8(a5)
}
    80003060:	00813403          	ld	s0,8(sp)
    80003064:	01010113          	addi	sp,sp,16
    80003068:	00008067          	ret

000000008000306c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000306c:	fe010113          	addi	sp,sp,-32
    80003070:	00113c23          	sd	ra,24(sp)
    80003074:	00813823          	sd	s0,16(sp)
    80003078:	00913423          	sd	s1,8(sp)
    8000307c:	02010413          	addi	s0,sp,32
    80003080:	00050493          	mv	s1,a0
    LOCK();
    80003084:	00100613          	li	a2,1
    80003088:	00000593          	li	a1,0
    8000308c:	00004517          	auipc	a0,0x4
    80003090:	61c50513          	addi	a0,a0,1564 # 800076a8 <lockPrint>
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	180080e7          	jalr	384(ra) # 80001214 <copy_and_swap>
    8000309c:	fe0514e3          	bnez	a0,80003084 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800030a0:	0004c503          	lbu	a0,0(s1)
    800030a4:	00050a63          	beqz	a0,800030b8 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800030a8:	ffffe097          	auipc	ra,0xffffe
    800030ac:	394080e7          	jalr	916(ra) # 8000143c <_Z4putcc>
        string++;
    800030b0:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800030b4:	fedff06f          	j	800030a0 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800030b8:	00000613          	li	a2,0
    800030bc:	00100593          	li	a1,1
    800030c0:	00004517          	auipc	a0,0x4
    800030c4:	5e850513          	addi	a0,a0,1512 # 800076a8 <lockPrint>
    800030c8:	ffffe097          	auipc	ra,0xffffe
    800030cc:	14c080e7          	jalr	332(ra) # 80001214 <copy_and_swap>
    800030d0:	fe0514e3          	bnez	a0,800030b8 <_Z11printStringPKc+0x4c>
}
    800030d4:	01813083          	ld	ra,24(sp)
    800030d8:	01013403          	ld	s0,16(sp)
    800030dc:	00813483          	ld	s1,8(sp)
    800030e0:	02010113          	addi	sp,sp,32
    800030e4:	00008067          	ret

00000000800030e8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800030e8:	fd010113          	addi	sp,sp,-48
    800030ec:	02113423          	sd	ra,40(sp)
    800030f0:	02813023          	sd	s0,32(sp)
    800030f4:	00913c23          	sd	s1,24(sp)
    800030f8:	01213823          	sd	s2,16(sp)
    800030fc:	01313423          	sd	s3,8(sp)
    80003100:	01413023          	sd	s4,0(sp)
    80003104:	03010413          	addi	s0,sp,48
    80003108:	00050993          	mv	s3,a0
    8000310c:	00058a13          	mv	s4,a1
    LOCK();
    80003110:	00100613          	li	a2,1
    80003114:	00000593          	li	a1,0
    80003118:	00004517          	auipc	a0,0x4
    8000311c:	59050513          	addi	a0,a0,1424 # 800076a8 <lockPrint>
    80003120:	ffffe097          	auipc	ra,0xffffe
    80003124:	0f4080e7          	jalr	244(ra) # 80001214 <copy_and_swap>
    80003128:	fe0514e3          	bnez	a0,80003110 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000312c:	00000913          	li	s2,0
    80003130:	00090493          	mv	s1,s2
    80003134:	0019091b          	addiw	s2,s2,1
    80003138:	03495a63          	bge	s2,s4,8000316c <_Z9getStringPci+0x84>
        cc = getc();
    8000313c:	ffffe097          	auipc	ra,0xffffe
    80003140:	2d8080e7          	jalr	728(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80003144:	02050463          	beqz	a0,8000316c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003148:	009984b3          	add	s1,s3,s1
    8000314c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003150:	00a00793          	li	a5,10
    80003154:	00f50a63          	beq	a0,a5,80003168 <_Z9getStringPci+0x80>
    80003158:	00d00793          	li	a5,13
    8000315c:	fcf51ae3          	bne	a0,a5,80003130 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003160:	00090493          	mv	s1,s2
    80003164:	0080006f          	j	8000316c <_Z9getStringPci+0x84>
    80003168:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000316c:	009984b3          	add	s1,s3,s1
    80003170:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80003174:	00000613          	li	a2,0
    80003178:	00100593          	li	a1,1
    8000317c:	00004517          	auipc	a0,0x4
    80003180:	52c50513          	addi	a0,a0,1324 # 800076a8 <lockPrint>
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	090080e7          	jalr	144(ra) # 80001214 <copy_and_swap>
    8000318c:	fe0514e3          	bnez	a0,80003174 <_Z9getStringPci+0x8c>
    return buf;
}
    80003190:	00098513          	mv	a0,s3
    80003194:	02813083          	ld	ra,40(sp)
    80003198:	02013403          	ld	s0,32(sp)
    8000319c:	01813483          	ld	s1,24(sp)
    800031a0:	01013903          	ld	s2,16(sp)
    800031a4:	00813983          	ld	s3,8(sp)
    800031a8:	00013a03          	ld	s4,0(sp)
    800031ac:	03010113          	addi	sp,sp,48
    800031b0:	00008067          	ret

00000000800031b4 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800031b4:	ff010113          	addi	sp,sp,-16
    800031b8:	00813423          	sd	s0,8(sp)
    800031bc:	01010413          	addi	s0,sp,16
    800031c0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800031c4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800031c8:	0006c603          	lbu	a2,0(a3)
    800031cc:	fd06071b          	addiw	a4,a2,-48
    800031d0:	0ff77713          	andi	a4,a4,255
    800031d4:	00900793          	li	a5,9
    800031d8:	02e7e063          	bltu	a5,a4,800031f8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800031dc:	0025179b          	slliw	a5,a0,0x2
    800031e0:	00a787bb          	addw	a5,a5,a0
    800031e4:	0017979b          	slliw	a5,a5,0x1
    800031e8:	00168693          	addi	a3,a3,1
    800031ec:	00c787bb          	addw	a5,a5,a2
    800031f0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800031f4:	fd5ff06f          	j	800031c8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800031f8:	00813403          	ld	s0,8(sp)
    800031fc:	01010113          	addi	sp,sp,16
    80003200:	00008067          	ret

0000000080003204 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80003204:	fc010113          	addi	sp,sp,-64
    80003208:	02113c23          	sd	ra,56(sp)
    8000320c:	02813823          	sd	s0,48(sp)
    80003210:	02913423          	sd	s1,40(sp)
    80003214:	03213023          	sd	s2,32(sp)
    80003218:	01313c23          	sd	s3,24(sp)
    8000321c:	04010413          	addi	s0,sp,64
    80003220:	00050493          	mv	s1,a0
    80003224:	00058913          	mv	s2,a1
    80003228:	00060993          	mv	s3,a2
    LOCK();
    8000322c:	00100613          	li	a2,1
    80003230:	00000593          	li	a1,0
    80003234:	00004517          	auipc	a0,0x4
    80003238:	47450513          	addi	a0,a0,1140 # 800076a8 <lockPrint>
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	fd8080e7          	jalr	-40(ra) # 80001214 <copy_and_swap>
    80003244:	fe0514e3          	bnez	a0,8000322c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003248:	00098463          	beqz	s3,80003250 <_Z8printIntiii+0x4c>
    8000324c:	0804c463          	bltz	s1,800032d4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003250:	0004851b          	sext.w	a0,s1
    neg = 0;
    80003254:	00000593          	li	a1,0
    }

    i = 0;
    80003258:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000325c:	0009079b          	sext.w	a5,s2
    80003260:	0325773b          	remuw	a4,a0,s2
    80003264:	00048613          	mv	a2,s1
    80003268:	0014849b          	addiw	s1,s1,1
    8000326c:	02071693          	slli	a3,a4,0x20
    80003270:	0206d693          	srli	a3,a3,0x20
    80003274:	00004717          	auipc	a4,0x4
    80003278:	30c70713          	addi	a4,a4,780 # 80007580 <digits>
    8000327c:	00d70733          	add	a4,a4,a3
    80003280:	00074683          	lbu	a3,0(a4)
    80003284:	fd040713          	addi	a4,s0,-48
    80003288:	00c70733          	add	a4,a4,a2
    8000328c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80003290:	0005071b          	sext.w	a4,a0
    80003294:	0325553b          	divuw	a0,a0,s2
    80003298:	fcf772e3          	bgeu	a4,a5,8000325c <_Z8printIntiii+0x58>
    if(neg)
    8000329c:	00058c63          	beqz	a1,800032b4 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800032a0:	fd040793          	addi	a5,s0,-48
    800032a4:	009784b3          	add	s1,a5,s1
    800032a8:	02d00793          	li	a5,45
    800032ac:	fef48823          	sb	a5,-16(s1)
    800032b0:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800032b4:	fff4849b          	addiw	s1,s1,-1
    800032b8:	0204c463          	bltz	s1,800032e0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800032bc:	fd040793          	addi	a5,s0,-48
    800032c0:	009787b3          	add	a5,a5,s1
    800032c4:	ff07c503          	lbu	a0,-16(a5)
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	174080e7          	jalr	372(ra) # 8000143c <_Z4putcc>
    800032d0:	fe5ff06f          	j	800032b4 <_Z8printIntiii+0xb0>
        x = -xx;
    800032d4:	4090053b          	negw	a0,s1
        neg = 1;
    800032d8:	00100593          	li	a1,1
        x = -xx;
    800032dc:	f7dff06f          	j	80003258 <_Z8printIntiii+0x54>

    UNLOCK();
    800032e0:	00000613          	li	a2,0
    800032e4:	00100593          	li	a1,1
    800032e8:	00004517          	auipc	a0,0x4
    800032ec:	3c050513          	addi	a0,a0,960 # 800076a8 <lockPrint>
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	f24080e7          	jalr	-220(ra) # 80001214 <copy_and_swap>
    800032f8:	fe0514e3          	bnez	a0,800032e0 <_Z8printIntiii+0xdc>
    800032fc:	03813083          	ld	ra,56(sp)
    80003300:	03013403          	ld	s0,48(sp)
    80003304:	02813483          	ld	s1,40(sp)
    80003308:	02013903          	ld	s2,32(sp)
    8000330c:	01813983          	ld	s3,24(sp)
    80003310:	04010113          	addi	sp,sp,64
    80003314:	00008067          	ret

0000000080003318 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003318:	fd010113          	addi	sp,sp,-48
    8000331c:	02113423          	sd	ra,40(sp)
    80003320:	02813023          	sd	s0,32(sp)
    80003324:	00913c23          	sd	s1,24(sp)
    80003328:	01213823          	sd	s2,16(sp)
    8000332c:	01313423          	sd	s3,8(sp)
    80003330:	03010413          	addi	s0,sp,48
    80003334:	00050493          	mv	s1,a0
    80003338:	00058913          	mv	s2,a1
    8000333c:	0015879b          	addiw	a5,a1,1
    80003340:	0007851b          	sext.w	a0,a5
    80003344:	00f4a023          	sw	a5,0(s1)
    80003348:	0004a823          	sw	zero,16(s1)
    8000334c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003350:	00251513          	slli	a0,a0,0x2
    80003354:	ffffe097          	auipc	ra,0xffffe
    80003358:	ee0080e7          	jalr	-288(ra) # 80001234 <_Z9mem_allocm>
    8000335c:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003360:	01000513          	li	a0,16
    80003364:	fffff097          	auipc	ra,0xfffff
    80003368:	f14080e7          	jalr	-236(ra) # 80002278 <_Znwm>
    8000336c:	00050993          	mv	s3,a0
    80003370:	00000593          	li	a1,0
    80003374:	fffff097          	auipc	ra,0xfffff
    80003378:	e24080e7          	jalr	-476(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    8000337c:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80003380:	01000513          	li	a0,16
    80003384:	fffff097          	auipc	ra,0xfffff
    80003388:	ef4080e7          	jalr	-268(ra) # 80002278 <_Znwm>
    8000338c:	00050993          	mv	s3,a0
    80003390:	00090593          	mv	a1,s2
    80003394:	fffff097          	auipc	ra,0xfffff
    80003398:	e04080e7          	jalr	-508(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    8000339c:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800033a0:	01000513          	li	a0,16
    800033a4:	fffff097          	auipc	ra,0xfffff
    800033a8:	ed4080e7          	jalr	-300(ra) # 80002278 <_Znwm>
    800033ac:	00050913          	mv	s2,a0
    800033b0:	00100593          	li	a1,1
    800033b4:	fffff097          	auipc	ra,0xfffff
    800033b8:	de4080e7          	jalr	-540(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    800033bc:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800033c0:	01000513          	li	a0,16
    800033c4:	fffff097          	auipc	ra,0xfffff
    800033c8:	eb4080e7          	jalr	-332(ra) # 80002278 <_Znwm>
    800033cc:	00050913          	mv	s2,a0
    800033d0:	00100593          	li	a1,1
    800033d4:	fffff097          	auipc	ra,0xfffff
    800033d8:	dc4080e7          	jalr	-572(ra) # 80002198 <_ZN9SemaphoreC1Ej>
    800033dc:	0324b823          	sd	s2,48(s1)
}
    800033e0:	02813083          	ld	ra,40(sp)
    800033e4:	02013403          	ld	s0,32(sp)
    800033e8:	01813483          	ld	s1,24(sp)
    800033ec:	01013903          	ld	s2,16(sp)
    800033f0:	00813983          	ld	s3,8(sp)
    800033f4:	03010113          	addi	sp,sp,48
    800033f8:	00008067          	ret
    800033fc:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003400:	00098513          	mv	a0,s3
    80003404:	fffff097          	auipc	ra,0xfffff
    80003408:	ec4080e7          	jalr	-316(ra) # 800022c8 <_ZdlPv>
    8000340c:	00048513          	mv	a0,s1
    80003410:	00005097          	auipc	ra,0x5
    80003414:	368080e7          	jalr	872(ra) # 80008778 <_Unwind_Resume>
    80003418:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    8000341c:	00098513          	mv	a0,s3
    80003420:	fffff097          	auipc	ra,0xfffff
    80003424:	ea8080e7          	jalr	-344(ra) # 800022c8 <_ZdlPv>
    80003428:	00048513          	mv	a0,s1
    8000342c:	00005097          	auipc	ra,0x5
    80003430:	34c080e7          	jalr	844(ra) # 80008778 <_Unwind_Resume>
    80003434:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003438:	00090513          	mv	a0,s2
    8000343c:	fffff097          	auipc	ra,0xfffff
    80003440:	e8c080e7          	jalr	-372(ra) # 800022c8 <_ZdlPv>
    80003444:	00048513          	mv	a0,s1
    80003448:	00005097          	auipc	ra,0x5
    8000344c:	330080e7          	jalr	816(ra) # 80008778 <_Unwind_Resume>
    80003450:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80003454:	00090513          	mv	a0,s2
    80003458:	fffff097          	auipc	ra,0xfffff
    8000345c:	e70080e7          	jalr	-400(ra) # 800022c8 <_ZdlPv>
    80003460:	00048513          	mv	a0,s1
    80003464:	00005097          	auipc	ra,0x5
    80003468:	314080e7          	jalr	788(ra) # 80008778 <_Unwind_Resume>

000000008000346c <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    8000346c:	fe010113          	addi	sp,sp,-32
    80003470:	00113c23          	sd	ra,24(sp)
    80003474:	00813823          	sd	s0,16(sp)
    80003478:	00913423          	sd	s1,8(sp)
    8000347c:	01213023          	sd	s2,0(sp)
    80003480:	02010413          	addi	s0,sp,32
    80003484:	00050493          	mv	s1,a0
    80003488:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    8000348c:	01853503          	ld	a0,24(a0)
    80003490:	fffff097          	auipc	ra,0xfffff
    80003494:	d40080e7          	jalr	-704(ra) # 800021d0 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80003498:	0304b503          	ld	a0,48(s1)
    8000349c:	fffff097          	auipc	ra,0xfffff
    800034a0:	d34080e7          	jalr	-716(ra) # 800021d0 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800034a4:	0084b783          	ld	a5,8(s1)
    800034a8:	0144a703          	lw	a4,20(s1)
    800034ac:	00271713          	slli	a4,a4,0x2
    800034b0:	00e787b3          	add	a5,a5,a4
    800034b4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800034b8:	0144a783          	lw	a5,20(s1)
    800034bc:	0017879b          	addiw	a5,a5,1
    800034c0:	0004a703          	lw	a4,0(s1)
    800034c4:	02e7e7bb          	remw	a5,a5,a4
    800034c8:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    800034cc:	0304b503          	ld	a0,48(s1)
    800034d0:	fffff097          	auipc	ra,0xfffff
    800034d4:	d2c080e7          	jalr	-724(ra) # 800021fc <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800034d8:	0204b503          	ld	a0,32(s1)
    800034dc:	fffff097          	auipc	ra,0xfffff
    800034e0:	d20080e7          	jalr	-736(ra) # 800021fc <_ZN9Semaphore6signalEv>

}
    800034e4:	01813083          	ld	ra,24(sp)
    800034e8:	01013403          	ld	s0,16(sp)
    800034ec:	00813483          	ld	s1,8(sp)
    800034f0:	00013903          	ld	s2,0(sp)
    800034f4:	02010113          	addi	sp,sp,32
    800034f8:	00008067          	ret

00000000800034fc <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800034fc:	fe010113          	addi	sp,sp,-32
    80003500:	00113c23          	sd	ra,24(sp)
    80003504:	00813823          	sd	s0,16(sp)
    80003508:	00913423          	sd	s1,8(sp)
    8000350c:	01213023          	sd	s2,0(sp)
    80003510:	02010413          	addi	s0,sp,32
    80003514:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003518:	02053503          	ld	a0,32(a0)
    8000351c:	fffff097          	auipc	ra,0xfffff
    80003520:	cb4080e7          	jalr	-844(ra) # 800021d0 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80003524:	0284b503          	ld	a0,40(s1)
    80003528:	fffff097          	auipc	ra,0xfffff
    8000352c:	ca8080e7          	jalr	-856(ra) # 800021d0 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003530:	0084b703          	ld	a4,8(s1)
    80003534:	0104a783          	lw	a5,16(s1)
    80003538:	00279693          	slli	a3,a5,0x2
    8000353c:	00d70733          	add	a4,a4,a3
    80003540:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003544:	0017879b          	addiw	a5,a5,1
    80003548:	0004a703          	lw	a4,0(s1)
    8000354c:	02e7e7bb          	remw	a5,a5,a4
    80003550:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80003554:	0284b503          	ld	a0,40(s1)
    80003558:	fffff097          	auipc	ra,0xfffff
    8000355c:	ca4080e7          	jalr	-860(ra) # 800021fc <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003560:	0184b503          	ld	a0,24(s1)
    80003564:	fffff097          	auipc	ra,0xfffff
    80003568:	c98080e7          	jalr	-872(ra) # 800021fc <_ZN9Semaphore6signalEv>

    return ret;
}
    8000356c:	00090513          	mv	a0,s2
    80003570:	01813083          	ld	ra,24(sp)
    80003574:	01013403          	ld	s0,16(sp)
    80003578:	00813483          	ld	s1,8(sp)
    8000357c:	00013903          	ld	s2,0(sp)
    80003580:	02010113          	addi	sp,sp,32
    80003584:	00008067          	ret

0000000080003588 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80003588:	fe010113          	addi	sp,sp,-32
    8000358c:	00113c23          	sd	ra,24(sp)
    80003590:	00813823          	sd	s0,16(sp)
    80003594:	00913423          	sd	s1,8(sp)
    80003598:	01213023          	sd	s2,0(sp)
    8000359c:	02010413          	addi	s0,sp,32
    800035a0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800035a4:	02853503          	ld	a0,40(a0)
    800035a8:	fffff097          	auipc	ra,0xfffff
    800035ac:	c28080e7          	jalr	-984(ra) # 800021d0 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800035b0:	0304b503          	ld	a0,48(s1)
    800035b4:	fffff097          	auipc	ra,0xfffff
    800035b8:	c1c080e7          	jalr	-996(ra) # 800021d0 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800035bc:	0144a783          	lw	a5,20(s1)
    800035c0:	0104a903          	lw	s2,16(s1)
    800035c4:	0327ce63          	blt	a5,s2,80003600 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    800035c8:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    800035cc:	0304b503          	ld	a0,48(s1)
    800035d0:	fffff097          	auipc	ra,0xfffff
    800035d4:	c2c080e7          	jalr	-980(ra) # 800021fc <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800035d8:	0284b503          	ld	a0,40(s1)
    800035dc:	fffff097          	auipc	ra,0xfffff
    800035e0:	c20080e7          	jalr	-992(ra) # 800021fc <_ZN9Semaphore6signalEv>

    return ret;
}
    800035e4:	00090513          	mv	a0,s2
    800035e8:	01813083          	ld	ra,24(sp)
    800035ec:	01013403          	ld	s0,16(sp)
    800035f0:	00813483          	ld	s1,8(sp)
    800035f4:	00013903          	ld	s2,0(sp)
    800035f8:	02010113          	addi	sp,sp,32
    800035fc:	00008067          	ret
        ret = cap - head + tail;
    80003600:	0004a703          	lw	a4,0(s1)
    80003604:	4127093b          	subw	s2,a4,s2
    80003608:	00f9093b          	addw	s2,s2,a5
    8000360c:	fc1ff06f          	j	800035cc <_ZN9BufferCPP6getCntEv+0x44>

0000000080003610 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003610:	fe010113          	addi	sp,sp,-32
    80003614:	00113c23          	sd	ra,24(sp)
    80003618:	00813823          	sd	s0,16(sp)
    8000361c:	00913423          	sd	s1,8(sp)
    80003620:	02010413          	addi	s0,sp,32
    80003624:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003628:	00a00513          	li	a0,10
    8000362c:	fffff097          	auipc	ra,0xfffff
    80003630:	c24080e7          	jalr	-988(ra) # 80002250 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003634:	00003517          	auipc	a0,0x3
    80003638:	b6c50513          	addi	a0,a0,-1172 # 800061a0 <CONSOLE_STATUS+0x190>
    8000363c:	00000097          	auipc	ra,0x0
    80003640:	a30080e7          	jalr	-1488(ra) # 8000306c <_Z11printStringPKc>
    while (getCnt()) {
    80003644:	00048513          	mv	a0,s1
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	f40080e7          	jalr	-192(ra) # 80003588 <_ZN9BufferCPP6getCntEv>
    80003650:	02050c63          	beqz	a0,80003688 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003654:	0084b783          	ld	a5,8(s1)
    80003658:	0104a703          	lw	a4,16(s1)
    8000365c:	00271713          	slli	a4,a4,0x2
    80003660:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003664:	0007c503          	lbu	a0,0(a5)
    80003668:	fffff097          	auipc	ra,0xfffff
    8000366c:	be8080e7          	jalr	-1048(ra) # 80002250 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003670:	0104a783          	lw	a5,16(s1)
    80003674:	0017879b          	addiw	a5,a5,1
    80003678:	0004a703          	lw	a4,0(s1)
    8000367c:	02e7e7bb          	remw	a5,a5,a4
    80003680:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003684:	fc1ff06f          	j	80003644 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003688:	02100513          	li	a0,33
    8000368c:	fffff097          	auipc	ra,0xfffff
    80003690:	bc4080e7          	jalr	-1084(ra) # 80002250 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003694:	00a00513          	li	a0,10
    80003698:	fffff097          	auipc	ra,0xfffff
    8000369c:	bb8080e7          	jalr	-1096(ra) # 80002250 <_ZN7Console4putcEc>
    mem_free(buffer);
    800036a0:	0084b503          	ld	a0,8(s1)
    800036a4:	ffffe097          	auipc	ra,0xffffe
    800036a8:	bb8080e7          	jalr	-1096(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    800036ac:	0204b503          	ld	a0,32(s1)
    800036b0:	00050863          	beqz	a0,800036c0 <_ZN9BufferCPPD1Ev+0xb0>
    800036b4:	00053783          	ld	a5,0(a0)
    800036b8:	0087b783          	ld	a5,8(a5)
    800036bc:	000780e7          	jalr	a5
    delete spaceAvailable;
    800036c0:	0184b503          	ld	a0,24(s1)
    800036c4:	00050863          	beqz	a0,800036d4 <_ZN9BufferCPPD1Ev+0xc4>
    800036c8:	00053783          	ld	a5,0(a0)
    800036cc:	0087b783          	ld	a5,8(a5)
    800036d0:	000780e7          	jalr	a5
    delete mutexTail;
    800036d4:	0304b503          	ld	a0,48(s1)
    800036d8:	00050863          	beqz	a0,800036e8 <_ZN9BufferCPPD1Ev+0xd8>
    800036dc:	00053783          	ld	a5,0(a0)
    800036e0:	0087b783          	ld	a5,8(a5)
    800036e4:	000780e7          	jalr	a5
    delete mutexHead;
    800036e8:	0284b503          	ld	a0,40(s1)
    800036ec:	00050863          	beqz	a0,800036fc <_ZN9BufferCPPD1Ev+0xec>
    800036f0:	00053783          	ld	a5,0(a0)
    800036f4:	0087b783          	ld	a5,8(a5)
    800036f8:	000780e7          	jalr	a5
}
    800036fc:	01813083          	ld	ra,24(sp)
    80003700:	01013403          	ld	s0,16(sp)
    80003704:	00813483          	ld	s1,8(sp)
    80003708:	02010113          	addi	sp,sp,32
    8000370c:	00008067          	ret

0000000080003710 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003710:	fe010113          	addi	sp,sp,-32
    80003714:	00113c23          	sd	ra,24(sp)
    80003718:	00813823          	sd	s0,16(sp)
    8000371c:	00913423          	sd	s1,8(sp)
    80003720:	01213023          	sd	s2,0(sp)
    80003724:	02010413          	addi	s0,sp,32
    80003728:	00050493          	mv	s1,a0
    8000372c:	00058913          	mv	s2,a1
    80003730:	0015879b          	addiw	a5,a1,1
    80003734:	0007851b          	sext.w	a0,a5
    80003738:	00f4a023          	sw	a5,0(s1)
    8000373c:	0004a823          	sw	zero,16(s1)
    80003740:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003744:	00251513          	slli	a0,a0,0x2
    80003748:	ffffe097          	auipc	ra,0xffffe
    8000374c:	aec080e7          	jalr	-1300(ra) # 80001234 <_Z9mem_allocm>
    80003750:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003754:	00000593          	li	a1,0
    80003758:	02048513          	addi	a0,s1,32
    8000375c:	ffffe097          	auipc	ra,0xffffe
    80003760:	c04080e7          	jalr	-1020(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    80003764:	00090593          	mv	a1,s2
    80003768:	01848513          	addi	a0,s1,24
    8000376c:	ffffe097          	auipc	ra,0xffffe
    80003770:	bf4080e7          	jalr	-1036(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    80003774:	00100593          	li	a1,1
    80003778:	02848513          	addi	a0,s1,40
    8000377c:	ffffe097          	auipc	ra,0xffffe
    80003780:	be4080e7          	jalr	-1052(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    80003784:	00100593          	li	a1,1
    80003788:	03048513          	addi	a0,s1,48
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	bd4080e7          	jalr	-1068(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80003794:	01813083          	ld	ra,24(sp)
    80003798:	01013403          	ld	s0,16(sp)
    8000379c:	00813483          	ld	s1,8(sp)
    800037a0:	00013903          	ld	s2,0(sp)
    800037a4:	02010113          	addi	sp,sp,32
    800037a8:	00008067          	ret

00000000800037ac <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800037ac:	fe010113          	addi	sp,sp,-32
    800037b0:	00113c23          	sd	ra,24(sp)
    800037b4:	00813823          	sd	s0,16(sp)
    800037b8:	00913423          	sd	s1,8(sp)
    800037bc:	01213023          	sd	s2,0(sp)
    800037c0:	02010413          	addi	s0,sp,32
    800037c4:	00050493          	mv	s1,a0
    800037c8:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800037cc:	01853503          	ld	a0,24(a0)
    800037d0:	ffffe097          	auipc	ra,0xffffe
    800037d4:	bec080e7          	jalr	-1044(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    800037d8:	0304b503          	ld	a0,48(s1)
    800037dc:	ffffe097          	auipc	ra,0xffffe
    800037e0:	be0080e7          	jalr	-1056(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    800037e4:	0084b783          	ld	a5,8(s1)
    800037e8:	0144a703          	lw	a4,20(s1)
    800037ec:	00271713          	slli	a4,a4,0x2
    800037f0:	00e787b3          	add	a5,a5,a4
    800037f4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800037f8:	0144a783          	lw	a5,20(s1)
    800037fc:	0017879b          	addiw	a5,a5,1
    80003800:	0004a703          	lw	a4,0(s1)
    80003804:	02e7e7bb          	remw	a5,a5,a4
    80003808:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    8000380c:	0304b503          	ld	a0,48(s1)
    80003810:	ffffe097          	auipc	ra,0xffffe
    80003814:	bd8080e7          	jalr	-1064(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80003818:	0204b503          	ld	a0,32(s1)
    8000381c:	ffffe097          	auipc	ra,0xffffe
    80003820:	bcc080e7          	jalr	-1076(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    80003824:	01813083          	ld	ra,24(sp)
    80003828:	01013403          	ld	s0,16(sp)
    8000382c:	00813483          	ld	s1,8(sp)
    80003830:	00013903          	ld	s2,0(sp)
    80003834:	02010113          	addi	sp,sp,32
    80003838:	00008067          	ret

000000008000383c <_ZN6Buffer3getEv>:

int Buffer::get() {
    8000383c:	fe010113          	addi	sp,sp,-32
    80003840:	00113c23          	sd	ra,24(sp)
    80003844:	00813823          	sd	s0,16(sp)
    80003848:	00913423          	sd	s1,8(sp)
    8000384c:	01213023          	sd	s2,0(sp)
    80003850:	02010413          	addi	s0,sp,32
    80003854:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003858:	02053503          	ld	a0,32(a0)
    8000385c:	ffffe097          	auipc	ra,0xffffe
    80003860:	b60080e7          	jalr	-1184(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    80003864:	0284b503          	ld	a0,40(s1)
    80003868:	ffffe097          	auipc	ra,0xffffe
    8000386c:	b54080e7          	jalr	-1196(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003870:	0084b703          	ld	a4,8(s1)
    80003874:	0104a783          	lw	a5,16(s1)
    80003878:	00279693          	slli	a3,a5,0x2
    8000387c:	00d70733          	add	a4,a4,a3
    80003880:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003884:	0017879b          	addiw	a5,a5,1
    80003888:	0004a703          	lw	a4,0(s1)
    8000388c:	02e7e7bb          	remw	a5,a5,a4
    80003890:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003894:	0284b503          	ld	a0,40(s1)
    80003898:	ffffe097          	auipc	ra,0xffffe
    8000389c:	b50080e7          	jalr	-1200(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    800038a0:	0184b503          	ld	a0,24(s1)
    800038a4:	ffffe097          	auipc	ra,0xffffe
    800038a8:	b44080e7          	jalr	-1212(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    800038ac:	00090513          	mv	a0,s2
    800038b0:	01813083          	ld	ra,24(sp)
    800038b4:	01013403          	ld	s0,16(sp)
    800038b8:	00813483          	ld	s1,8(sp)
    800038bc:	00013903          	ld	s2,0(sp)
    800038c0:	02010113          	addi	sp,sp,32
    800038c4:	00008067          	ret

00000000800038c8 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800038c8:	fe010113          	addi	sp,sp,-32
    800038cc:	00113c23          	sd	ra,24(sp)
    800038d0:	00813823          	sd	s0,16(sp)
    800038d4:	00913423          	sd	s1,8(sp)
    800038d8:	01213023          	sd	s2,0(sp)
    800038dc:	02010413          	addi	s0,sp,32
    800038e0:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800038e4:	02853503          	ld	a0,40(a0)
    800038e8:	ffffe097          	auipc	ra,0xffffe
    800038ec:	ad4080e7          	jalr	-1324(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    800038f0:	0304b503          	ld	a0,48(s1)
    800038f4:	ffffe097          	auipc	ra,0xffffe
    800038f8:	ac8080e7          	jalr	-1336(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    800038fc:	0144a783          	lw	a5,20(s1)
    80003900:	0104a903          	lw	s2,16(s1)
    80003904:	0327ce63          	blt	a5,s2,80003940 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003908:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    8000390c:	0304b503          	ld	a0,48(s1)
    80003910:	ffffe097          	auipc	ra,0xffffe
    80003914:	ad8080e7          	jalr	-1320(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80003918:	0284b503          	ld	a0,40(s1)
    8000391c:	ffffe097          	auipc	ra,0xffffe
    80003920:	acc080e7          	jalr	-1332(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003924:	00090513          	mv	a0,s2
    80003928:	01813083          	ld	ra,24(sp)
    8000392c:	01013403          	ld	s0,16(sp)
    80003930:	00813483          	ld	s1,8(sp)
    80003934:	00013903          	ld	s2,0(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret
        ret = cap - head + tail;
    80003940:	0004a703          	lw	a4,0(s1)
    80003944:	4127093b          	subw	s2,a4,s2
    80003948:	00f9093b          	addw	s2,s2,a5
    8000394c:	fc1ff06f          	j	8000390c <_ZN6Buffer6getCntEv+0x44>

0000000080003950 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003950:	fe010113          	addi	sp,sp,-32
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00813823          	sd	s0,16(sp)
    8000395c:	00913423          	sd	s1,8(sp)
    80003960:	02010413          	addi	s0,sp,32
    80003964:	00050493          	mv	s1,a0
    putc('\n');
    80003968:	00a00513          	li	a0,10
    8000396c:	ffffe097          	auipc	ra,0xffffe
    80003970:	ad0080e7          	jalr	-1328(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    80003974:	00003517          	auipc	a0,0x3
    80003978:	82c50513          	addi	a0,a0,-2004 # 800061a0 <CONSOLE_STATUS+0x190>
    8000397c:	fffff097          	auipc	ra,0xfffff
    80003980:	6f0080e7          	jalr	1776(ra) # 8000306c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003984:	00048513          	mv	a0,s1
    80003988:	00000097          	auipc	ra,0x0
    8000398c:	f40080e7          	jalr	-192(ra) # 800038c8 <_ZN6Buffer6getCntEv>
    80003990:	02a05c63          	blez	a0,800039c8 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003994:	0084b783          	ld	a5,8(s1)
    80003998:	0104a703          	lw	a4,16(s1)
    8000399c:	00271713          	slli	a4,a4,0x2
    800039a0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800039a4:	0007c503          	lbu	a0,0(a5)
    800039a8:	ffffe097          	auipc	ra,0xffffe
    800039ac:	a94080e7          	jalr	-1388(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    800039b0:	0104a783          	lw	a5,16(s1)
    800039b4:	0017879b          	addiw	a5,a5,1
    800039b8:	0004a703          	lw	a4,0(s1)
    800039bc:	02e7e7bb          	remw	a5,a5,a4
    800039c0:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800039c4:	fc1ff06f          	j	80003984 <_ZN6BufferD1Ev+0x34>
    putc('!');
    800039c8:	02100513          	li	a0,33
    800039cc:	ffffe097          	auipc	ra,0xffffe
    800039d0:	a70080e7          	jalr	-1424(ra) # 8000143c <_Z4putcc>
    putc('\n');
    800039d4:	00a00513          	li	a0,10
    800039d8:	ffffe097          	auipc	ra,0xffffe
    800039dc:	a64080e7          	jalr	-1436(ra) # 8000143c <_Z4putcc>
    mem_free(buffer);
    800039e0:	0084b503          	ld	a0,8(s1)
    800039e4:	ffffe097          	auipc	ra,0xffffe
    800039e8:	878080e7          	jalr	-1928(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800039ec:	0204b503          	ld	a0,32(s1)
    800039f0:	ffffe097          	auipc	ra,0xffffe
    800039f4:	9a0080e7          	jalr	-1632(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    800039f8:	0184b503          	ld	a0,24(s1)
    800039fc:	ffffe097          	auipc	ra,0xffffe
    80003a00:	994080e7          	jalr	-1644(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003a04:	0304b503          	ld	a0,48(s1)
    80003a08:	ffffe097          	auipc	ra,0xffffe
    80003a0c:	988080e7          	jalr	-1656(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003a10:	0284b503          	ld	a0,40(s1)
    80003a14:	ffffe097          	auipc	ra,0xffffe
    80003a18:	97c080e7          	jalr	-1668(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003a1c:	01813083          	ld	ra,24(sp)
    80003a20:	01013403          	ld	s0,16(sp)
    80003a24:	00813483          	ld	s1,8(sp)
    80003a28:	02010113          	addi	sp,sp,32
    80003a2c:	00008067          	ret

0000000080003a30 <start>:
    80003a30:	ff010113          	addi	sp,sp,-16
    80003a34:	00813423          	sd	s0,8(sp)
    80003a38:	01010413          	addi	s0,sp,16
    80003a3c:	300027f3          	csrr	a5,mstatus
    80003a40:	ffffe737          	lui	a4,0xffffe
    80003a44:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff5eef>
    80003a48:	00e7f7b3          	and	a5,a5,a4
    80003a4c:	00001737          	lui	a4,0x1
    80003a50:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003a54:	00e7e7b3          	or	a5,a5,a4
    80003a58:	30079073          	csrw	mstatus,a5
    80003a5c:	00000797          	auipc	a5,0x0
    80003a60:	16078793          	addi	a5,a5,352 # 80003bbc <system_main>
    80003a64:	34179073          	csrw	mepc,a5
    80003a68:	00000793          	li	a5,0
    80003a6c:	18079073          	csrw	satp,a5
    80003a70:	000107b7          	lui	a5,0x10
    80003a74:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003a78:	30279073          	csrw	medeleg,a5
    80003a7c:	30379073          	csrw	mideleg,a5
    80003a80:	104027f3          	csrr	a5,sie
    80003a84:	2227e793          	ori	a5,a5,546
    80003a88:	10479073          	csrw	sie,a5
    80003a8c:	fff00793          	li	a5,-1
    80003a90:	00a7d793          	srli	a5,a5,0xa
    80003a94:	3b079073          	csrw	pmpaddr0,a5
    80003a98:	00f00793          	li	a5,15
    80003a9c:	3a079073          	csrw	pmpcfg0,a5
    80003aa0:	f14027f3          	csrr	a5,mhartid
    80003aa4:	0200c737          	lui	a4,0x200c
    80003aa8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003aac:	0007869b          	sext.w	a3,a5
    80003ab0:	00269713          	slli	a4,a3,0x2
    80003ab4:	000f4637          	lui	a2,0xf4
    80003ab8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003abc:	00d70733          	add	a4,a4,a3
    80003ac0:	0037979b          	slliw	a5,a5,0x3
    80003ac4:	020046b7          	lui	a3,0x2004
    80003ac8:	00d787b3          	add	a5,a5,a3
    80003acc:	00c585b3          	add	a1,a1,a2
    80003ad0:	00371693          	slli	a3,a4,0x3
    80003ad4:	00004717          	auipc	a4,0x4
    80003ad8:	bdc70713          	addi	a4,a4,-1060 # 800076b0 <timer_scratch>
    80003adc:	00b7b023          	sd	a1,0(a5)
    80003ae0:	00d70733          	add	a4,a4,a3
    80003ae4:	00f73c23          	sd	a5,24(a4)
    80003ae8:	02c73023          	sd	a2,32(a4)
    80003aec:	34071073          	csrw	mscratch,a4
    80003af0:	00000797          	auipc	a5,0x0
    80003af4:	6e078793          	addi	a5,a5,1760 # 800041d0 <timervec>
    80003af8:	30579073          	csrw	mtvec,a5
    80003afc:	300027f3          	csrr	a5,mstatus
    80003b00:	0087e793          	ori	a5,a5,8
    80003b04:	30079073          	csrw	mstatus,a5
    80003b08:	304027f3          	csrr	a5,mie
    80003b0c:	0807e793          	ori	a5,a5,128
    80003b10:	30479073          	csrw	mie,a5
    80003b14:	f14027f3          	csrr	a5,mhartid
    80003b18:	0007879b          	sext.w	a5,a5
    80003b1c:	00078213          	mv	tp,a5
    80003b20:	30200073          	mret
    80003b24:	00813403          	ld	s0,8(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <timerinit>:
    80003b30:	ff010113          	addi	sp,sp,-16
    80003b34:	00813423          	sd	s0,8(sp)
    80003b38:	01010413          	addi	s0,sp,16
    80003b3c:	f14027f3          	csrr	a5,mhartid
    80003b40:	0200c737          	lui	a4,0x200c
    80003b44:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003b48:	0007869b          	sext.w	a3,a5
    80003b4c:	00269713          	slli	a4,a3,0x2
    80003b50:	000f4637          	lui	a2,0xf4
    80003b54:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003b58:	00d70733          	add	a4,a4,a3
    80003b5c:	0037979b          	slliw	a5,a5,0x3
    80003b60:	020046b7          	lui	a3,0x2004
    80003b64:	00d787b3          	add	a5,a5,a3
    80003b68:	00c585b3          	add	a1,a1,a2
    80003b6c:	00371693          	slli	a3,a4,0x3
    80003b70:	00004717          	auipc	a4,0x4
    80003b74:	b4070713          	addi	a4,a4,-1216 # 800076b0 <timer_scratch>
    80003b78:	00b7b023          	sd	a1,0(a5)
    80003b7c:	00d70733          	add	a4,a4,a3
    80003b80:	00f73c23          	sd	a5,24(a4)
    80003b84:	02c73023          	sd	a2,32(a4)
    80003b88:	34071073          	csrw	mscratch,a4
    80003b8c:	00000797          	auipc	a5,0x0
    80003b90:	64478793          	addi	a5,a5,1604 # 800041d0 <timervec>
    80003b94:	30579073          	csrw	mtvec,a5
    80003b98:	300027f3          	csrr	a5,mstatus
    80003b9c:	0087e793          	ori	a5,a5,8
    80003ba0:	30079073          	csrw	mstatus,a5
    80003ba4:	304027f3          	csrr	a5,mie
    80003ba8:	0807e793          	ori	a5,a5,128
    80003bac:	30479073          	csrw	mie,a5
    80003bb0:	00813403          	ld	s0,8(sp)
    80003bb4:	01010113          	addi	sp,sp,16
    80003bb8:	00008067          	ret

0000000080003bbc <system_main>:
    80003bbc:	fe010113          	addi	sp,sp,-32
    80003bc0:	00813823          	sd	s0,16(sp)
    80003bc4:	00913423          	sd	s1,8(sp)
    80003bc8:	00113c23          	sd	ra,24(sp)
    80003bcc:	02010413          	addi	s0,sp,32
    80003bd0:	00000097          	auipc	ra,0x0
    80003bd4:	0c4080e7          	jalr	196(ra) # 80003c94 <cpuid>
    80003bd8:	00004497          	auipc	s1,0x4
    80003bdc:	a1848493          	addi	s1,s1,-1512 # 800075f0 <started>
    80003be0:	02050263          	beqz	a0,80003c04 <system_main+0x48>
    80003be4:	0004a783          	lw	a5,0(s1)
    80003be8:	0007879b          	sext.w	a5,a5
    80003bec:	fe078ce3          	beqz	a5,80003be4 <system_main+0x28>
    80003bf0:	0ff0000f          	fence
    80003bf4:	00002517          	auipc	a0,0x2
    80003bf8:	5f450513          	addi	a0,a0,1524 # 800061e8 <CONSOLE_STATUS+0x1d8>
    80003bfc:	00001097          	auipc	ra,0x1
    80003c00:	a70080e7          	jalr	-1424(ra) # 8000466c <panic>
    80003c04:	00001097          	auipc	ra,0x1
    80003c08:	9c4080e7          	jalr	-1596(ra) # 800045c8 <consoleinit>
    80003c0c:	00001097          	auipc	ra,0x1
    80003c10:	150080e7          	jalr	336(ra) # 80004d5c <printfinit>
    80003c14:	00002517          	auipc	a0,0x2
    80003c18:	44450513          	addi	a0,a0,1092 # 80006058 <CONSOLE_STATUS+0x48>
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	aac080e7          	jalr	-1364(ra) # 800046c8 <__printf>
    80003c24:	00002517          	auipc	a0,0x2
    80003c28:	59450513          	addi	a0,a0,1428 # 800061b8 <CONSOLE_STATUS+0x1a8>
    80003c2c:	00001097          	auipc	ra,0x1
    80003c30:	a9c080e7          	jalr	-1380(ra) # 800046c8 <__printf>
    80003c34:	00002517          	auipc	a0,0x2
    80003c38:	42450513          	addi	a0,a0,1060 # 80006058 <CONSOLE_STATUS+0x48>
    80003c3c:	00001097          	auipc	ra,0x1
    80003c40:	a8c080e7          	jalr	-1396(ra) # 800046c8 <__printf>
    80003c44:	00001097          	auipc	ra,0x1
    80003c48:	4a4080e7          	jalr	1188(ra) # 800050e8 <kinit>
    80003c4c:	00000097          	auipc	ra,0x0
    80003c50:	148080e7          	jalr	328(ra) # 80003d94 <trapinit>
    80003c54:	00000097          	auipc	ra,0x0
    80003c58:	16c080e7          	jalr	364(ra) # 80003dc0 <trapinithart>
    80003c5c:	00000097          	auipc	ra,0x0
    80003c60:	5b4080e7          	jalr	1460(ra) # 80004210 <plicinit>
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	5d4080e7          	jalr	1492(ra) # 80004238 <plicinithart>
    80003c6c:	00000097          	auipc	ra,0x0
    80003c70:	078080e7          	jalr	120(ra) # 80003ce4 <userinit>
    80003c74:	0ff0000f          	fence
    80003c78:	00100793          	li	a5,1
    80003c7c:	00002517          	auipc	a0,0x2
    80003c80:	55450513          	addi	a0,a0,1364 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003c84:	00f4a023          	sw	a5,0(s1)
    80003c88:	00001097          	auipc	ra,0x1
    80003c8c:	a40080e7          	jalr	-1472(ra) # 800046c8 <__printf>
    80003c90:	0000006f          	j	80003c90 <system_main+0xd4>

0000000080003c94 <cpuid>:
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00813423          	sd	s0,8(sp)
    80003c9c:	01010413          	addi	s0,sp,16
    80003ca0:	00020513          	mv	a0,tp
    80003ca4:	00813403          	ld	s0,8(sp)
    80003ca8:	0005051b          	sext.w	a0,a0
    80003cac:	01010113          	addi	sp,sp,16
    80003cb0:	00008067          	ret

0000000080003cb4 <mycpu>:
    80003cb4:	ff010113          	addi	sp,sp,-16
    80003cb8:	00813423          	sd	s0,8(sp)
    80003cbc:	01010413          	addi	s0,sp,16
    80003cc0:	00020793          	mv	a5,tp
    80003cc4:	00813403          	ld	s0,8(sp)
    80003cc8:	0007879b          	sext.w	a5,a5
    80003ccc:	00779793          	slli	a5,a5,0x7
    80003cd0:	00005517          	auipc	a0,0x5
    80003cd4:	a1050513          	addi	a0,a0,-1520 # 800086e0 <cpus>
    80003cd8:	00f50533          	add	a0,a0,a5
    80003cdc:	01010113          	addi	sp,sp,16
    80003ce0:	00008067          	ret

0000000080003ce4 <userinit>:
    80003ce4:	ff010113          	addi	sp,sp,-16
    80003ce8:	00813423          	sd	s0,8(sp)
    80003cec:	01010413          	addi	s0,sp,16
    80003cf0:	00813403          	ld	s0,8(sp)
    80003cf4:	01010113          	addi	sp,sp,16
    80003cf8:	ffffe317          	auipc	t1,0xffffe
    80003cfc:	25c30067          	jr	604(t1) # 80001f54 <main>

0000000080003d00 <either_copyout>:
    80003d00:	ff010113          	addi	sp,sp,-16
    80003d04:	00813023          	sd	s0,0(sp)
    80003d08:	00113423          	sd	ra,8(sp)
    80003d0c:	01010413          	addi	s0,sp,16
    80003d10:	02051663          	bnez	a0,80003d3c <either_copyout+0x3c>
    80003d14:	00058513          	mv	a0,a1
    80003d18:	00060593          	mv	a1,a2
    80003d1c:	0006861b          	sext.w	a2,a3
    80003d20:	00002097          	auipc	ra,0x2
    80003d24:	c54080e7          	jalr	-940(ra) # 80005974 <__memmove>
    80003d28:	00813083          	ld	ra,8(sp)
    80003d2c:	00013403          	ld	s0,0(sp)
    80003d30:	00000513          	li	a0,0
    80003d34:	01010113          	addi	sp,sp,16
    80003d38:	00008067          	ret
    80003d3c:	00002517          	auipc	a0,0x2
    80003d40:	4d450513          	addi	a0,a0,1236 # 80006210 <CONSOLE_STATUS+0x200>
    80003d44:	00001097          	auipc	ra,0x1
    80003d48:	928080e7          	jalr	-1752(ra) # 8000466c <panic>

0000000080003d4c <either_copyin>:
    80003d4c:	ff010113          	addi	sp,sp,-16
    80003d50:	00813023          	sd	s0,0(sp)
    80003d54:	00113423          	sd	ra,8(sp)
    80003d58:	01010413          	addi	s0,sp,16
    80003d5c:	02059463          	bnez	a1,80003d84 <either_copyin+0x38>
    80003d60:	00060593          	mv	a1,a2
    80003d64:	0006861b          	sext.w	a2,a3
    80003d68:	00002097          	auipc	ra,0x2
    80003d6c:	c0c080e7          	jalr	-1012(ra) # 80005974 <__memmove>
    80003d70:	00813083          	ld	ra,8(sp)
    80003d74:	00013403          	ld	s0,0(sp)
    80003d78:	00000513          	li	a0,0
    80003d7c:	01010113          	addi	sp,sp,16
    80003d80:	00008067          	ret
    80003d84:	00002517          	auipc	a0,0x2
    80003d88:	4b450513          	addi	a0,a0,1204 # 80006238 <CONSOLE_STATUS+0x228>
    80003d8c:	00001097          	auipc	ra,0x1
    80003d90:	8e0080e7          	jalr	-1824(ra) # 8000466c <panic>

0000000080003d94 <trapinit>:
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00813423          	sd	s0,8(sp)
    80003d9c:	01010413          	addi	s0,sp,16
    80003da0:	00813403          	ld	s0,8(sp)
    80003da4:	00002597          	auipc	a1,0x2
    80003da8:	4bc58593          	addi	a1,a1,1212 # 80006260 <CONSOLE_STATUS+0x250>
    80003dac:	00005517          	auipc	a0,0x5
    80003db0:	9b450513          	addi	a0,a0,-1612 # 80008760 <tickslock>
    80003db4:	01010113          	addi	sp,sp,16
    80003db8:	00001317          	auipc	t1,0x1
    80003dbc:	5c030067          	jr	1472(t1) # 80005378 <initlock>

0000000080003dc0 <trapinithart>:
    80003dc0:	ff010113          	addi	sp,sp,-16
    80003dc4:	00813423          	sd	s0,8(sp)
    80003dc8:	01010413          	addi	s0,sp,16
    80003dcc:	00000797          	auipc	a5,0x0
    80003dd0:	2f478793          	addi	a5,a5,756 # 800040c0 <kernelvec>
    80003dd4:	10579073          	csrw	stvec,a5
    80003dd8:	00813403          	ld	s0,8(sp)
    80003ddc:	01010113          	addi	sp,sp,16
    80003de0:	00008067          	ret

0000000080003de4 <usertrap>:
    80003de4:	ff010113          	addi	sp,sp,-16
    80003de8:	00813423          	sd	s0,8(sp)
    80003dec:	01010413          	addi	s0,sp,16
    80003df0:	00813403          	ld	s0,8(sp)
    80003df4:	01010113          	addi	sp,sp,16
    80003df8:	00008067          	ret

0000000080003dfc <usertrapret>:
    80003dfc:	ff010113          	addi	sp,sp,-16
    80003e00:	00813423          	sd	s0,8(sp)
    80003e04:	01010413          	addi	s0,sp,16
    80003e08:	00813403          	ld	s0,8(sp)
    80003e0c:	01010113          	addi	sp,sp,16
    80003e10:	00008067          	ret

0000000080003e14 <kerneltrap>:
    80003e14:	fe010113          	addi	sp,sp,-32
    80003e18:	00813823          	sd	s0,16(sp)
    80003e1c:	00113c23          	sd	ra,24(sp)
    80003e20:	00913423          	sd	s1,8(sp)
    80003e24:	02010413          	addi	s0,sp,32
    80003e28:	142025f3          	csrr	a1,scause
    80003e2c:	100027f3          	csrr	a5,sstatus
    80003e30:	0027f793          	andi	a5,a5,2
    80003e34:	10079c63          	bnez	a5,80003f4c <kerneltrap+0x138>
    80003e38:	142027f3          	csrr	a5,scause
    80003e3c:	0207ce63          	bltz	a5,80003e78 <kerneltrap+0x64>
    80003e40:	00002517          	auipc	a0,0x2
    80003e44:	46850513          	addi	a0,a0,1128 # 800062a8 <CONSOLE_STATUS+0x298>
    80003e48:	00001097          	auipc	ra,0x1
    80003e4c:	880080e7          	jalr	-1920(ra) # 800046c8 <__printf>
    80003e50:	141025f3          	csrr	a1,sepc
    80003e54:	14302673          	csrr	a2,stval
    80003e58:	00002517          	auipc	a0,0x2
    80003e5c:	46050513          	addi	a0,a0,1120 # 800062b8 <CONSOLE_STATUS+0x2a8>
    80003e60:	00001097          	auipc	ra,0x1
    80003e64:	868080e7          	jalr	-1944(ra) # 800046c8 <__printf>
    80003e68:	00002517          	auipc	a0,0x2
    80003e6c:	46850513          	addi	a0,a0,1128 # 800062d0 <CONSOLE_STATUS+0x2c0>
    80003e70:	00000097          	auipc	ra,0x0
    80003e74:	7fc080e7          	jalr	2044(ra) # 8000466c <panic>
    80003e78:	0ff7f713          	andi	a4,a5,255
    80003e7c:	00900693          	li	a3,9
    80003e80:	04d70063          	beq	a4,a3,80003ec0 <kerneltrap+0xac>
    80003e84:	fff00713          	li	a4,-1
    80003e88:	03f71713          	slli	a4,a4,0x3f
    80003e8c:	00170713          	addi	a4,a4,1
    80003e90:	fae798e3          	bne	a5,a4,80003e40 <kerneltrap+0x2c>
    80003e94:	00000097          	auipc	ra,0x0
    80003e98:	e00080e7          	jalr	-512(ra) # 80003c94 <cpuid>
    80003e9c:	06050663          	beqz	a0,80003f08 <kerneltrap+0xf4>
    80003ea0:	144027f3          	csrr	a5,sip
    80003ea4:	ffd7f793          	andi	a5,a5,-3
    80003ea8:	14479073          	csrw	sip,a5
    80003eac:	01813083          	ld	ra,24(sp)
    80003eb0:	01013403          	ld	s0,16(sp)
    80003eb4:	00813483          	ld	s1,8(sp)
    80003eb8:	02010113          	addi	sp,sp,32
    80003ebc:	00008067          	ret
    80003ec0:	00000097          	auipc	ra,0x0
    80003ec4:	3c4080e7          	jalr	964(ra) # 80004284 <plic_claim>
    80003ec8:	00a00793          	li	a5,10
    80003ecc:	00050493          	mv	s1,a0
    80003ed0:	06f50863          	beq	a0,a5,80003f40 <kerneltrap+0x12c>
    80003ed4:	fc050ce3          	beqz	a0,80003eac <kerneltrap+0x98>
    80003ed8:	00050593          	mv	a1,a0
    80003edc:	00002517          	auipc	a0,0x2
    80003ee0:	3ac50513          	addi	a0,a0,940 # 80006288 <CONSOLE_STATUS+0x278>
    80003ee4:	00000097          	auipc	ra,0x0
    80003ee8:	7e4080e7          	jalr	2020(ra) # 800046c8 <__printf>
    80003eec:	01013403          	ld	s0,16(sp)
    80003ef0:	01813083          	ld	ra,24(sp)
    80003ef4:	00048513          	mv	a0,s1
    80003ef8:	00813483          	ld	s1,8(sp)
    80003efc:	02010113          	addi	sp,sp,32
    80003f00:	00000317          	auipc	t1,0x0
    80003f04:	3bc30067          	jr	956(t1) # 800042bc <plic_complete>
    80003f08:	00005517          	auipc	a0,0x5
    80003f0c:	85850513          	addi	a0,a0,-1960 # 80008760 <tickslock>
    80003f10:	00001097          	auipc	ra,0x1
    80003f14:	48c080e7          	jalr	1164(ra) # 8000539c <acquire>
    80003f18:	00003717          	auipc	a4,0x3
    80003f1c:	6dc70713          	addi	a4,a4,1756 # 800075f4 <ticks>
    80003f20:	00072783          	lw	a5,0(a4)
    80003f24:	00005517          	auipc	a0,0x5
    80003f28:	83c50513          	addi	a0,a0,-1988 # 80008760 <tickslock>
    80003f2c:	0017879b          	addiw	a5,a5,1
    80003f30:	00f72023          	sw	a5,0(a4)
    80003f34:	00001097          	auipc	ra,0x1
    80003f38:	534080e7          	jalr	1332(ra) # 80005468 <release>
    80003f3c:	f65ff06f          	j	80003ea0 <kerneltrap+0x8c>
    80003f40:	00001097          	auipc	ra,0x1
    80003f44:	090080e7          	jalr	144(ra) # 80004fd0 <uartintr>
    80003f48:	fa5ff06f          	j	80003eec <kerneltrap+0xd8>
    80003f4c:	00002517          	auipc	a0,0x2
    80003f50:	31c50513          	addi	a0,a0,796 # 80006268 <CONSOLE_STATUS+0x258>
    80003f54:	00000097          	auipc	ra,0x0
    80003f58:	718080e7          	jalr	1816(ra) # 8000466c <panic>

0000000080003f5c <clockintr>:
    80003f5c:	fe010113          	addi	sp,sp,-32
    80003f60:	00813823          	sd	s0,16(sp)
    80003f64:	00913423          	sd	s1,8(sp)
    80003f68:	00113c23          	sd	ra,24(sp)
    80003f6c:	02010413          	addi	s0,sp,32
    80003f70:	00004497          	auipc	s1,0x4
    80003f74:	7f048493          	addi	s1,s1,2032 # 80008760 <tickslock>
    80003f78:	00048513          	mv	a0,s1
    80003f7c:	00001097          	auipc	ra,0x1
    80003f80:	420080e7          	jalr	1056(ra) # 8000539c <acquire>
    80003f84:	00003717          	auipc	a4,0x3
    80003f88:	67070713          	addi	a4,a4,1648 # 800075f4 <ticks>
    80003f8c:	00072783          	lw	a5,0(a4)
    80003f90:	01013403          	ld	s0,16(sp)
    80003f94:	01813083          	ld	ra,24(sp)
    80003f98:	00048513          	mv	a0,s1
    80003f9c:	0017879b          	addiw	a5,a5,1
    80003fa0:	00813483          	ld	s1,8(sp)
    80003fa4:	00f72023          	sw	a5,0(a4)
    80003fa8:	02010113          	addi	sp,sp,32
    80003fac:	00001317          	auipc	t1,0x1
    80003fb0:	4bc30067          	jr	1212(t1) # 80005468 <release>

0000000080003fb4 <devintr>:
    80003fb4:	142027f3          	csrr	a5,scause
    80003fb8:	00000513          	li	a0,0
    80003fbc:	0007c463          	bltz	a5,80003fc4 <devintr+0x10>
    80003fc0:	00008067          	ret
    80003fc4:	fe010113          	addi	sp,sp,-32
    80003fc8:	00813823          	sd	s0,16(sp)
    80003fcc:	00113c23          	sd	ra,24(sp)
    80003fd0:	00913423          	sd	s1,8(sp)
    80003fd4:	02010413          	addi	s0,sp,32
    80003fd8:	0ff7f713          	andi	a4,a5,255
    80003fdc:	00900693          	li	a3,9
    80003fe0:	04d70c63          	beq	a4,a3,80004038 <devintr+0x84>
    80003fe4:	fff00713          	li	a4,-1
    80003fe8:	03f71713          	slli	a4,a4,0x3f
    80003fec:	00170713          	addi	a4,a4,1
    80003ff0:	00e78c63          	beq	a5,a4,80004008 <devintr+0x54>
    80003ff4:	01813083          	ld	ra,24(sp)
    80003ff8:	01013403          	ld	s0,16(sp)
    80003ffc:	00813483          	ld	s1,8(sp)
    80004000:	02010113          	addi	sp,sp,32
    80004004:	00008067          	ret
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	c8c080e7          	jalr	-884(ra) # 80003c94 <cpuid>
    80004010:	06050663          	beqz	a0,8000407c <devintr+0xc8>
    80004014:	144027f3          	csrr	a5,sip
    80004018:	ffd7f793          	andi	a5,a5,-3
    8000401c:	14479073          	csrw	sip,a5
    80004020:	01813083          	ld	ra,24(sp)
    80004024:	01013403          	ld	s0,16(sp)
    80004028:	00813483          	ld	s1,8(sp)
    8000402c:	00200513          	li	a0,2
    80004030:	02010113          	addi	sp,sp,32
    80004034:	00008067          	ret
    80004038:	00000097          	auipc	ra,0x0
    8000403c:	24c080e7          	jalr	588(ra) # 80004284 <plic_claim>
    80004040:	00a00793          	li	a5,10
    80004044:	00050493          	mv	s1,a0
    80004048:	06f50663          	beq	a0,a5,800040b4 <devintr+0x100>
    8000404c:	00100513          	li	a0,1
    80004050:	fa0482e3          	beqz	s1,80003ff4 <devintr+0x40>
    80004054:	00048593          	mv	a1,s1
    80004058:	00002517          	auipc	a0,0x2
    8000405c:	23050513          	addi	a0,a0,560 # 80006288 <CONSOLE_STATUS+0x278>
    80004060:	00000097          	auipc	ra,0x0
    80004064:	668080e7          	jalr	1640(ra) # 800046c8 <__printf>
    80004068:	00048513          	mv	a0,s1
    8000406c:	00000097          	auipc	ra,0x0
    80004070:	250080e7          	jalr	592(ra) # 800042bc <plic_complete>
    80004074:	00100513          	li	a0,1
    80004078:	f7dff06f          	j	80003ff4 <devintr+0x40>
    8000407c:	00004517          	auipc	a0,0x4
    80004080:	6e450513          	addi	a0,a0,1764 # 80008760 <tickslock>
    80004084:	00001097          	auipc	ra,0x1
    80004088:	318080e7          	jalr	792(ra) # 8000539c <acquire>
    8000408c:	00003717          	auipc	a4,0x3
    80004090:	56870713          	addi	a4,a4,1384 # 800075f4 <ticks>
    80004094:	00072783          	lw	a5,0(a4)
    80004098:	00004517          	auipc	a0,0x4
    8000409c:	6c850513          	addi	a0,a0,1736 # 80008760 <tickslock>
    800040a0:	0017879b          	addiw	a5,a5,1
    800040a4:	00f72023          	sw	a5,0(a4)
    800040a8:	00001097          	auipc	ra,0x1
    800040ac:	3c0080e7          	jalr	960(ra) # 80005468 <release>
    800040b0:	f65ff06f          	j	80004014 <devintr+0x60>
    800040b4:	00001097          	auipc	ra,0x1
    800040b8:	f1c080e7          	jalr	-228(ra) # 80004fd0 <uartintr>
    800040bc:	fadff06f          	j	80004068 <devintr+0xb4>

00000000800040c0 <kernelvec>:
    800040c0:	f0010113          	addi	sp,sp,-256
    800040c4:	00113023          	sd	ra,0(sp)
    800040c8:	00213423          	sd	sp,8(sp)
    800040cc:	00313823          	sd	gp,16(sp)
    800040d0:	00413c23          	sd	tp,24(sp)
    800040d4:	02513023          	sd	t0,32(sp)
    800040d8:	02613423          	sd	t1,40(sp)
    800040dc:	02713823          	sd	t2,48(sp)
    800040e0:	02813c23          	sd	s0,56(sp)
    800040e4:	04913023          	sd	s1,64(sp)
    800040e8:	04a13423          	sd	a0,72(sp)
    800040ec:	04b13823          	sd	a1,80(sp)
    800040f0:	04c13c23          	sd	a2,88(sp)
    800040f4:	06d13023          	sd	a3,96(sp)
    800040f8:	06e13423          	sd	a4,104(sp)
    800040fc:	06f13823          	sd	a5,112(sp)
    80004100:	07013c23          	sd	a6,120(sp)
    80004104:	09113023          	sd	a7,128(sp)
    80004108:	09213423          	sd	s2,136(sp)
    8000410c:	09313823          	sd	s3,144(sp)
    80004110:	09413c23          	sd	s4,152(sp)
    80004114:	0b513023          	sd	s5,160(sp)
    80004118:	0b613423          	sd	s6,168(sp)
    8000411c:	0b713823          	sd	s7,176(sp)
    80004120:	0b813c23          	sd	s8,184(sp)
    80004124:	0d913023          	sd	s9,192(sp)
    80004128:	0da13423          	sd	s10,200(sp)
    8000412c:	0db13823          	sd	s11,208(sp)
    80004130:	0dc13c23          	sd	t3,216(sp)
    80004134:	0fd13023          	sd	t4,224(sp)
    80004138:	0fe13423          	sd	t5,232(sp)
    8000413c:	0ff13823          	sd	t6,240(sp)
    80004140:	cd5ff0ef          	jal	ra,80003e14 <kerneltrap>
    80004144:	00013083          	ld	ra,0(sp)
    80004148:	00813103          	ld	sp,8(sp)
    8000414c:	01013183          	ld	gp,16(sp)
    80004150:	02013283          	ld	t0,32(sp)
    80004154:	02813303          	ld	t1,40(sp)
    80004158:	03013383          	ld	t2,48(sp)
    8000415c:	03813403          	ld	s0,56(sp)
    80004160:	04013483          	ld	s1,64(sp)
    80004164:	04813503          	ld	a0,72(sp)
    80004168:	05013583          	ld	a1,80(sp)
    8000416c:	05813603          	ld	a2,88(sp)
    80004170:	06013683          	ld	a3,96(sp)
    80004174:	06813703          	ld	a4,104(sp)
    80004178:	07013783          	ld	a5,112(sp)
    8000417c:	07813803          	ld	a6,120(sp)
    80004180:	08013883          	ld	a7,128(sp)
    80004184:	08813903          	ld	s2,136(sp)
    80004188:	09013983          	ld	s3,144(sp)
    8000418c:	09813a03          	ld	s4,152(sp)
    80004190:	0a013a83          	ld	s5,160(sp)
    80004194:	0a813b03          	ld	s6,168(sp)
    80004198:	0b013b83          	ld	s7,176(sp)
    8000419c:	0b813c03          	ld	s8,184(sp)
    800041a0:	0c013c83          	ld	s9,192(sp)
    800041a4:	0c813d03          	ld	s10,200(sp)
    800041a8:	0d013d83          	ld	s11,208(sp)
    800041ac:	0d813e03          	ld	t3,216(sp)
    800041b0:	0e013e83          	ld	t4,224(sp)
    800041b4:	0e813f03          	ld	t5,232(sp)
    800041b8:	0f013f83          	ld	t6,240(sp)
    800041bc:	10010113          	addi	sp,sp,256
    800041c0:	10200073          	sret
    800041c4:	00000013          	nop
    800041c8:	00000013          	nop
    800041cc:	00000013          	nop

00000000800041d0 <timervec>:
    800041d0:	34051573          	csrrw	a0,mscratch,a0
    800041d4:	00b53023          	sd	a1,0(a0)
    800041d8:	00c53423          	sd	a2,8(a0)
    800041dc:	00d53823          	sd	a3,16(a0)
    800041e0:	01853583          	ld	a1,24(a0)
    800041e4:	02053603          	ld	a2,32(a0)
    800041e8:	0005b683          	ld	a3,0(a1)
    800041ec:	00c686b3          	add	a3,a3,a2
    800041f0:	00d5b023          	sd	a3,0(a1)
    800041f4:	00200593          	li	a1,2
    800041f8:	14459073          	csrw	sip,a1
    800041fc:	01053683          	ld	a3,16(a0)
    80004200:	00853603          	ld	a2,8(a0)
    80004204:	00053583          	ld	a1,0(a0)
    80004208:	34051573          	csrrw	a0,mscratch,a0
    8000420c:	30200073          	mret

0000000080004210 <plicinit>:
    80004210:	ff010113          	addi	sp,sp,-16
    80004214:	00813423          	sd	s0,8(sp)
    80004218:	01010413          	addi	s0,sp,16
    8000421c:	00813403          	ld	s0,8(sp)
    80004220:	0c0007b7          	lui	a5,0xc000
    80004224:	00100713          	li	a4,1
    80004228:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000422c:	00e7a223          	sw	a4,4(a5)
    80004230:	01010113          	addi	sp,sp,16
    80004234:	00008067          	ret

0000000080004238 <plicinithart>:
    80004238:	ff010113          	addi	sp,sp,-16
    8000423c:	00813023          	sd	s0,0(sp)
    80004240:	00113423          	sd	ra,8(sp)
    80004244:	01010413          	addi	s0,sp,16
    80004248:	00000097          	auipc	ra,0x0
    8000424c:	a4c080e7          	jalr	-1460(ra) # 80003c94 <cpuid>
    80004250:	0085171b          	slliw	a4,a0,0x8
    80004254:	0c0027b7          	lui	a5,0xc002
    80004258:	00e787b3          	add	a5,a5,a4
    8000425c:	40200713          	li	a4,1026
    80004260:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80004264:	00813083          	ld	ra,8(sp)
    80004268:	00013403          	ld	s0,0(sp)
    8000426c:	00d5151b          	slliw	a0,a0,0xd
    80004270:	0c2017b7          	lui	a5,0xc201
    80004274:	00a78533          	add	a0,a5,a0
    80004278:	00052023          	sw	zero,0(a0)
    8000427c:	01010113          	addi	sp,sp,16
    80004280:	00008067          	ret

0000000080004284 <plic_claim>:
    80004284:	ff010113          	addi	sp,sp,-16
    80004288:	00813023          	sd	s0,0(sp)
    8000428c:	00113423          	sd	ra,8(sp)
    80004290:	01010413          	addi	s0,sp,16
    80004294:	00000097          	auipc	ra,0x0
    80004298:	a00080e7          	jalr	-1536(ra) # 80003c94 <cpuid>
    8000429c:	00813083          	ld	ra,8(sp)
    800042a0:	00013403          	ld	s0,0(sp)
    800042a4:	00d5151b          	slliw	a0,a0,0xd
    800042a8:	0c2017b7          	lui	a5,0xc201
    800042ac:	00a78533          	add	a0,a5,a0
    800042b0:	00452503          	lw	a0,4(a0)
    800042b4:	01010113          	addi	sp,sp,16
    800042b8:	00008067          	ret

00000000800042bc <plic_complete>:
    800042bc:	fe010113          	addi	sp,sp,-32
    800042c0:	00813823          	sd	s0,16(sp)
    800042c4:	00913423          	sd	s1,8(sp)
    800042c8:	00113c23          	sd	ra,24(sp)
    800042cc:	02010413          	addi	s0,sp,32
    800042d0:	00050493          	mv	s1,a0
    800042d4:	00000097          	auipc	ra,0x0
    800042d8:	9c0080e7          	jalr	-1600(ra) # 80003c94 <cpuid>
    800042dc:	01813083          	ld	ra,24(sp)
    800042e0:	01013403          	ld	s0,16(sp)
    800042e4:	00d5179b          	slliw	a5,a0,0xd
    800042e8:	0c201737          	lui	a4,0xc201
    800042ec:	00f707b3          	add	a5,a4,a5
    800042f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800042f4:	00813483          	ld	s1,8(sp)
    800042f8:	02010113          	addi	sp,sp,32
    800042fc:	00008067          	ret

0000000080004300 <consolewrite>:
    80004300:	fb010113          	addi	sp,sp,-80
    80004304:	04813023          	sd	s0,64(sp)
    80004308:	04113423          	sd	ra,72(sp)
    8000430c:	02913c23          	sd	s1,56(sp)
    80004310:	03213823          	sd	s2,48(sp)
    80004314:	03313423          	sd	s3,40(sp)
    80004318:	03413023          	sd	s4,32(sp)
    8000431c:	01513c23          	sd	s5,24(sp)
    80004320:	05010413          	addi	s0,sp,80
    80004324:	06c05c63          	blez	a2,8000439c <consolewrite+0x9c>
    80004328:	00060993          	mv	s3,a2
    8000432c:	00050a13          	mv	s4,a0
    80004330:	00058493          	mv	s1,a1
    80004334:	00000913          	li	s2,0
    80004338:	fff00a93          	li	s5,-1
    8000433c:	01c0006f          	j	80004358 <consolewrite+0x58>
    80004340:	fbf44503          	lbu	a0,-65(s0)
    80004344:	0019091b          	addiw	s2,s2,1
    80004348:	00148493          	addi	s1,s1,1
    8000434c:	00001097          	auipc	ra,0x1
    80004350:	a9c080e7          	jalr	-1380(ra) # 80004de8 <uartputc>
    80004354:	03298063          	beq	s3,s2,80004374 <consolewrite+0x74>
    80004358:	00048613          	mv	a2,s1
    8000435c:	00100693          	li	a3,1
    80004360:	000a0593          	mv	a1,s4
    80004364:	fbf40513          	addi	a0,s0,-65
    80004368:	00000097          	auipc	ra,0x0
    8000436c:	9e4080e7          	jalr	-1564(ra) # 80003d4c <either_copyin>
    80004370:	fd5518e3          	bne	a0,s5,80004340 <consolewrite+0x40>
    80004374:	04813083          	ld	ra,72(sp)
    80004378:	04013403          	ld	s0,64(sp)
    8000437c:	03813483          	ld	s1,56(sp)
    80004380:	02813983          	ld	s3,40(sp)
    80004384:	02013a03          	ld	s4,32(sp)
    80004388:	01813a83          	ld	s5,24(sp)
    8000438c:	00090513          	mv	a0,s2
    80004390:	03013903          	ld	s2,48(sp)
    80004394:	05010113          	addi	sp,sp,80
    80004398:	00008067          	ret
    8000439c:	00000913          	li	s2,0
    800043a0:	fd5ff06f          	j	80004374 <consolewrite+0x74>

00000000800043a4 <consoleread>:
    800043a4:	f9010113          	addi	sp,sp,-112
    800043a8:	06813023          	sd	s0,96(sp)
    800043ac:	04913c23          	sd	s1,88(sp)
    800043b0:	05213823          	sd	s2,80(sp)
    800043b4:	05313423          	sd	s3,72(sp)
    800043b8:	05413023          	sd	s4,64(sp)
    800043bc:	03513c23          	sd	s5,56(sp)
    800043c0:	03613823          	sd	s6,48(sp)
    800043c4:	03713423          	sd	s7,40(sp)
    800043c8:	03813023          	sd	s8,32(sp)
    800043cc:	06113423          	sd	ra,104(sp)
    800043d0:	01913c23          	sd	s9,24(sp)
    800043d4:	07010413          	addi	s0,sp,112
    800043d8:	00060b93          	mv	s7,a2
    800043dc:	00050913          	mv	s2,a0
    800043e0:	00058c13          	mv	s8,a1
    800043e4:	00060b1b          	sext.w	s6,a2
    800043e8:	00004497          	auipc	s1,0x4
    800043ec:	3a048493          	addi	s1,s1,928 # 80008788 <cons>
    800043f0:	00400993          	li	s3,4
    800043f4:	fff00a13          	li	s4,-1
    800043f8:	00a00a93          	li	s5,10
    800043fc:	05705e63          	blez	s7,80004458 <consoleread+0xb4>
    80004400:	09c4a703          	lw	a4,156(s1)
    80004404:	0984a783          	lw	a5,152(s1)
    80004408:	0007071b          	sext.w	a4,a4
    8000440c:	08e78463          	beq	a5,a4,80004494 <consoleread+0xf0>
    80004410:	07f7f713          	andi	a4,a5,127
    80004414:	00e48733          	add	a4,s1,a4
    80004418:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000441c:	0017869b          	addiw	a3,a5,1
    80004420:	08d4ac23          	sw	a3,152(s1)
    80004424:	00070c9b          	sext.w	s9,a4
    80004428:	0b370663          	beq	a4,s3,800044d4 <consoleread+0x130>
    8000442c:	00100693          	li	a3,1
    80004430:	f9f40613          	addi	a2,s0,-97
    80004434:	000c0593          	mv	a1,s8
    80004438:	00090513          	mv	a0,s2
    8000443c:	f8e40fa3          	sb	a4,-97(s0)
    80004440:	00000097          	auipc	ra,0x0
    80004444:	8c0080e7          	jalr	-1856(ra) # 80003d00 <either_copyout>
    80004448:	01450863          	beq	a0,s4,80004458 <consoleread+0xb4>
    8000444c:	001c0c13          	addi	s8,s8,1
    80004450:	fffb8b9b          	addiw	s7,s7,-1
    80004454:	fb5c94e3          	bne	s9,s5,800043fc <consoleread+0x58>
    80004458:	000b851b          	sext.w	a0,s7
    8000445c:	06813083          	ld	ra,104(sp)
    80004460:	06013403          	ld	s0,96(sp)
    80004464:	05813483          	ld	s1,88(sp)
    80004468:	05013903          	ld	s2,80(sp)
    8000446c:	04813983          	ld	s3,72(sp)
    80004470:	04013a03          	ld	s4,64(sp)
    80004474:	03813a83          	ld	s5,56(sp)
    80004478:	02813b83          	ld	s7,40(sp)
    8000447c:	02013c03          	ld	s8,32(sp)
    80004480:	01813c83          	ld	s9,24(sp)
    80004484:	40ab053b          	subw	a0,s6,a0
    80004488:	03013b03          	ld	s6,48(sp)
    8000448c:	07010113          	addi	sp,sp,112
    80004490:	00008067          	ret
    80004494:	00001097          	auipc	ra,0x1
    80004498:	1d8080e7          	jalr	472(ra) # 8000566c <push_on>
    8000449c:	0984a703          	lw	a4,152(s1)
    800044a0:	09c4a783          	lw	a5,156(s1)
    800044a4:	0007879b          	sext.w	a5,a5
    800044a8:	fef70ce3          	beq	a4,a5,800044a0 <consoleread+0xfc>
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	234080e7          	jalr	564(ra) # 800056e0 <pop_on>
    800044b4:	0984a783          	lw	a5,152(s1)
    800044b8:	07f7f713          	andi	a4,a5,127
    800044bc:	00e48733          	add	a4,s1,a4
    800044c0:	01874703          	lbu	a4,24(a4)
    800044c4:	0017869b          	addiw	a3,a5,1
    800044c8:	08d4ac23          	sw	a3,152(s1)
    800044cc:	00070c9b          	sext.w	s9,a4
    800044d0:	f5371ee3          	bne	a4,s3,8000442c <consoleread+0x88>
    800044d4:	000b851b          	sext.w	a0,s7
    800044d8:	f96bf2e3          	bgeu	s7,s6,8000445c <consoleread+0xb8>
    800044dc:	08f4ac23          	sw	a5,152(s1)
    800044e0:	f7dff06f          	j	8000445c <consoleread+0xb8>

00000000800044e4 <consputc>:
    800044e4:	10000793          	li	a5,256
    800044e8:	00f50663          	beq	a0,a5,800044f4 <consputc+0x10>
    800044ec:	00001317          	auipc	t1,0x1
    800044f0:	9f430067          	jr	-1548(t1) # 80004ee0 <uartputc_sync>
    800044f4:	ff010113          	addi	sp,sp,-16
    800044f8:	00113423          	sd	ra,8(sp)
    800044fc:	00813023          	sd	s0,0(sp)
    80004500:	01010413          	addi	s0,sp,16
    80004504:	00800513          	li	a0,8
    80004508:	00001097          	auipc	ra,0x1
    8000450c:	9d8080e7          	jalr	-1576(ra) # 80004ee0 <uartputc_sync>
    80004510:	02000513          	li	a0,32
    80004514:	00001097          	auipc	ra,0x1
    80004518:	9cc080e7          	jalr	-1588(ra) # 80004ee0 <uartputc_sync>
    8000451c:	00013403          	ld	s0,0(sp)
    80004520:	00813083          	ld	ra,8(sp)
    80004524:	00800513          	li	a0,8
    80004528:	01010113          	addi	sp,sp,16
    8000452c:	00001317          	auipc	t1,0x1
    80004530:	9b430067          	jr	-1612(t1) # 80004ee0 <uartputc_sync>

0000000080004534 <consoleintr>:
    80004534:	fe010113          	addi	sp,sp,-32
    80004538:	00813823          	sd	s0,16(sp)
    8000453c:	00913423          	sd	s1,8(sp)
    80004540:	01213023          	sd	s2,0(sp)
    80004544:	00113c23          	sd	ra,24(sp)
    80004548:	02010413          	addi	s0,sp,32
    8000454c:	00004917          	auipc	s2,0x4
    80004550:	23c90913          	addi	s2,s2,572 # 80008788 <cons>
    80004554:	00050493          	mv	s1,a0
    80004558:	00090513          	mv	a0,s2
    8000455c:	00001097          	auipc	ra,0x1
    80004560:	e40080e7          	jalr	-448(ra) # 8000539c <acquire>
    80004564:	02048c63          	beqz	s1,8000459c <consoleintr+0x68>
    80004568:	0a092783          	lw	a5,160(s2)
    8000456c:	09892703          	lw	a4,152(s2)
    80004570:	07f00693          	li	a3,127
    80004574:	40e7873b          	subw	a4,a5,a4
    80004578:	02e6e263          	bltu	a3,a4,8000459c <consoleintr+0x68>
    8000457c:	00d00713          	li	a4,13
    80004580:	04e48063          	beq	s1,a4,800045c0 <consoleintr+0x8c>
    80004584:	07f7f713          	andi	a4,a5,127
    80004588:	00e90733          	add	a4,s2,a4
    8000458c:	0017879b          	addiw	a5,a5,1
    80004590:	0af92023          	sw	a5,160(s2)
    80004594:	00970c23          	sb	s1,24(a4)
    80004598:	08f92e23          	sw	a5,156(s2)
    8000459c:	01013403          	ld	s0,16(sp)
    800045a0:	01813083          	ld	ra,24(sp)
    800045a4:	00813483          	ld	s1,8(sp)
    800045a8:	00013903          	ld	s2,0(sp)
    800045ac:	00004517          	auipc	a0,0x4
    800045b0:	1dc50513          	addi	a0,a0,476 # 80008788 <cons>
    800045b4:	02010113          	addi	sp,sp,32
    800045b8:	00001317          	auipc	t1,0x1
    800045bc:	eb030067          	jr	-336(t1) # 80005468 <release>
    800045c0:	00a00493          	li	s1,10
    800045c4:	fc1ff06f          	j	80004584 <consoleintr+0x50>

00000000800045c8 <consoleinit>:
    800045c8:	fe010113          	addi	sp,sp,-32
    800045cc:	00113c23          	sd	ra,24(sp)
    800045d0:	00813823          	sd	s0,16(sp)
    800045d4:	00913423          	sd	s1,8(sp)
    800045d8:	02010413          	addi	s0,sp,32
    800045dc:	00004497          	auipc	s1,0x4
    800045e0:	1ac48493          	addi	s1,s1,428 # 80008788 <cons>
    800045e4:	00048513          	mv	a0,s1
    800045e8:	00002597          	auipc	a1,0x2
    800045ec:	cf858593          	addi	a1,a1,-776 # 800062e0 <CONSOLE_STATUS+0x2d0>
    800045f0:	00001097          	auipc	ra,0x1
    800045f4:	d88080e7          	jalr	-632(ra) # 80005378 <initlock>
    800045f8:	00000097          	auipc	ra,0x0
    800045fc:	7ac080e7          	jalr	1964(ra) # 80004da4 <uartinit>
    80004600:	01813083          	ld	ra,24(sp)
    80004604:	01013403          	ld	s0,16(sp)
    80004608:	00000797          	auipc	a5,0x0
    8000460c:	d9c78793          	addi	a5,a5,-612 # 800043a4 <consoleread>
    80004610:	0af4bc23          	sd	a5,184(s1)
    80004614:	00000797          	auipc	a5,0x0
    80004618:	cec78793          	addi	a5,a5,-788 # 80004300 <consolewrite>
    8000461c:	0cf4b023          	sd	a5,192(s1)
    80004620:	00813483          	ld	s1,8(sp)
    80004624:	02010113          	addi	sp,sp,32
    80004628:	00008067          	ret

000000008000462c <console_read>:
    8000462c:	ff010113          	addi	sp,sp,-16
    80004630:	00813423          	sd	s0,8(sp)
    80004634:	01010413          	addi	s0,sp,16
    80004638:	00813403          	ld	s0,8(sp)
    8000463c:	00004317          	auipc	t1,0x4
    80004640:	20433303          	ld	t1,516(t1) # 80008840 <devsw+0x10>
    80004644:	01010113          	addi	sp,sp,16
    80004648:	00030067          	jr	t1

000000008000464c <console_write>:
    8000464c:	ff010113          	addi	sp,sp,-16
    80004650:	00813423          	sd	s0,8(sp)
    80004654:	01010413          	addi	s0,sp,16
    80004658:	00813403          	ld	s0,8(sp)
    8000465c:	00004317          	auipc	t1,0x4
    80004660:	1ec33303          	ld	t1,492(t1) # 80008848 <devsw+0x18>
    80004664:	01010113          	addi	sp,sp,16
    80004668:	00030067          	jr	t1

000000008000466c <panic>:
    8000466c:	fe010113          	addi	sp,sp,-32
    80004670:	00113c23          	sd	ra,24(sp)
    80004674:	00813823          	sd	s0,16(sp)
    80004678:	00913423          	sd	s1,8(sp)
    8000467c:	02010413          	addi	s0,sp,32
    80004680:	00050493          	mv	s1,a0
    80004684:	00002517          	auipc	a0,0x2
    80004688:	c6450513          	addi	a0,a0,-924 # 800062e8 <CONSOLE_STATUS+0x2d8>
    8000468c:	00004797          	auipc	a5,0x4
    80004690:	2407ae23          	sw	zero,604(a5) # 800088e8 <pr+0x18>
    80004694:	00000097          	auipc	ra,0x0
    80004698:	034080e7          	jalr	52(ra) # 800046c8 <__printf>
    8000469c:	00048513          	mv	a0,s1
    800046a0:	00000097          	auipc	ra,0x0
    800046a4:	028080e7          	jalr	40(ra) # 800046c8 <__printf>
    800046a8:	00002517          	auipc	a0,0x2
    800046ac:	9b050513          	addi	a0,a0,-1616 # 80006058 <CONSOLE_STATUS+0x48>
    800046b0:	00000097          	auipc	ra,0x0
    800046b4:	018080e7          	jalr	24(ra) # 800046c8 <__printf>
    800046b8:	00100793          	li	a5,1
    800046bc:	00003717          	auipc	a4,0x3
    800046c0:	f2f72e23          	sw	a5,-196(a4) # 800075f8 <panicked>
    800046c4:	0000006f          	j	800046c4 <panic+0x58>

00000000800046c8 <__printf>:
    800046c8:	f3010113          	addi	sp,sp,-208
    800046cc:	08813023          	sd	s0,128(sp)
    800046d0:	07313423          	sd	s3,104(sp)
    800046d4:	09010413          	addi	s0,sp,144
    800046d8:	05813023          	sd	s8,64(sp)
    800046dc:	08113423          	sd	ra,136(sp)
    800046e0:	06913c23          	sd	s1,120(sp)
    800046e4:	07213823          	sd	s2,112(sp)
    800046e8:	07413023          	sd	s4,96(sp)
    800046ec:	05513c23          	sd	s5,88(sp)
    800046f0:	05613823          	sd	s6,80(sp)
    800046f4:	05713423          	sd	s7,72(sp)
    800046f8:	03913c23          	sd	s9,56(sp)
    800046fc:	03a13823          	sd	s10,48(sp)
    80004700:	03b13423          	sd	s11,40(sp)
    80004704:	00004317          	auipc	t1,0x4
    80004708:	1cc30313          	addi	t1,t1,460 # 800088d0 <pr>
    8000470c:	01832c03          	lw	s8,24(t1)
    80004710:	00b43423          	sd	a1,8(s0)
    80004714:	00c43823          	sd	a2,16(s0)
    80004718:	00d43c23          	sd	a3,24(s0)
    8000471c:	02e43023          	sd	a4,32(s0)
    80004720:	02f43423          	sd	a5,40(s0)
    80004724:	03043823          	sd	a6,48(s0)
    80004728:	03143c23          	sd	a7,56(s0)
    8000472c:	00050993          	mv	s3,a0
    80004730:	4a0c1663          	bnez	s8,80004bdc <__printf+0x514>
    80004734:	60098c63          	beqz	s3,80004d4c <__printf+0x684>
    80004738:	0009c503          	lbu	a0,0(s3)
    8000473c:	00840793          	addi	a5,s0,8
    80004740:	f6f43c23          	sd	a5,-136(s0)
    80004744:	00000493          	li	s1,0
    80004748:	22050063          	beqz	a0,80004968 <__printf+0x2a0>
    8000474c:	00002a37          	lui	s4,0x2
    80004750:	00018ab7          	lui	s5,0x18
    80004754:	000f4b37          	lui	s6,0xf4
    80004758:	00989bb7          	lui	s7,0x989
    8000475c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004760:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004764:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004768:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000476c:	00148c9b          	addiw	s9,s1,1
    80004770:	02500793          	li	a5,37
    80004774:	01998933          	add	s2,s3,s9
    80004778:	38f51263          	bne	a0,a5,80004afc <__printf+0x434>
    8000477c:	00094783          	lbu	a5,0(s2)
    80004780:	00078c9b          	sext.w	s9,a5
    80004784:	1e078263          	beqz	a5,80004968 <__printf+0x2a0>
    80004788:	0024849b          	addiw	s1,s1,2
    8000478c:	07000713          	li	a4,112
    80004790:	00998933          	add	s2,s3,s1
    80004794:	38e78a63          	beq	a5,a4,80004b28 <__printf+0x460>
    80004798:	20f76863          	bltu	a4,a5,800049a8 <__printf+0x2e0>
    8000479c:	42a78863          	beq	a5,a0,80004bcc <__printf+0x504>
    800047a0:	06400713          	li	a4,100
    800047a4:	40e79663          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800047a8:	f7843783          	ld	a5,-136(s0)
    800047ac:	0007a603          	lw	a2,0(a5)
    800047b0:	00878793          	addi	a5,a5,8
    800047b4:	f6f43c23          	sd	a5,-136(s0)
    800047b8:	42064a63          	bltz	a2,80004bec <__printf+0x524>
    800047bc:	00a00713          	li	a4,10
    800047c0:	02e677bb          	remuw	a5,a2,a4
    800047c4:	00002d97          	auipc	s11,0x2
    800047c8:	b4cd8d93          	addi	s11,s11,-1204 # 80006310 <digits>
    800047cc:	00900593          	li	a1,9
    800047d0:	0006051b          	sext.w	a0,a2
    800047d4:	00000c93          	li	s9,0
    800047d8:	02079793          	slli	a5,a5,0x20
    800047dc:	0207d793          	srli	a5,a5,0x20
    800047e0:	00fd87b3          	add	a5,s11,a5
    800047e4:	0007c783          	lbu	a5,0(a5)
    800047e8:	02e656bb          	divuw	a3,a2,a4
    800047ec:	f8f40023          	sb	a5,-128(s0)
    800047f0:	14c5d863          	bge	a1,a2,80004940 <__printf+0x278>
    800047f4:	06300593          	li	a1,99
    800047f8:	00100c93          	li	s9,1
    800047fc:	02e6f7bb          	remuw	a5,a3,a4
    80004800:	02079793          	slli	a5,a5,0x20
    80004804:	0207d793          	srli	a5,a5,0x20
    80004808:	00fd87b3          	add	a5,s11,a5
    8000480c:	0007c783          	lbu	a5,0(a5)
    80004810:	02e6d73b          	divuw	a4,a3,a4
    80004814:	f8f400a3          	sb	a5,-127(s0)
    80004818:	12a5f463          	bgeu	a1,a0,80004940 <__printf+0x278>
    8000481c:	00a00693          	li	a3,10
    80004820:	00900593          	li	a1,9
    80004824:	02d777bb          	remuw	a5,a4,a3
    80004828:	02079793          	slli	a5,a5,0x20
    8000482c:	0207d793          	srli	a5,a5,0x20
    80004830:	00fd87b3          	add	a5,s11,a5
    80004834:	0007c503          	lbu	a0,0(a5)
    80004838:	02d757bb          	divuw	a5,a4,a3
    8000483c:	f8a40123          	sb	a0,-126(s0)
    80004840:	48e5f263          	bgeu	a1,a4,80004cc4 <__printf+0x5fc>
    80004844:	06300513          	li	a0,99
    80004848:	02d7f5bb          	remuw	a1,a5,a3
    8000484c:	02059593          	slli	a1,a1,0x20
    80004850:	0205d593          	srli	a1,a1,0x20
    80004854:	00bd85b3          	add	a1,s11,a1
    80004858:	0005c583          	lbu	a1,0(a1)
    8000485c:	02d7d7bb          	divuw	a5,a5,a3
    80004860:	f8b401a3          	sb	a1,-125(s0)
    80004864:	48e57263          	bgeu	a0,a4,80004ce8 <__printf+0x620>
    80004868:	3e700513          	li	a0,999
    8000486c:	02d7f5bb          	remuw	a1,a5,a3
    80004870:	02059593          	slli	a1,a1,0x20
    80004874:	0205d593          	srli	a1,a1,0x20
    80004878:	00bd85b3          	add	a1,s11,a1
    8000487c:	0005c583          	lbu	a1,0(a1)
    80004880:	02d7d7bb          	divuw	a5,a5,a3
    80004884:	f8b40223          	sb	a1,-124(s0)
    80004888:	46e57663          	bgeu	a0,a4,80004cf4 <__printf+0x62c>
    8000488c:	02d7f5bb          	remuw	a1,a5,a3
    80004890:	02059593          	slli	a1,a1,0x20
    80004894:	0205d593          	srli	a1,a1,0x20
    80004898:	00bd85b3          	add	a1,s11,a1
    8000489c:	0005c583          	lbu	a1,0(a1)
    800048a0:	02d7d7bb          	divuw	a5,a5,a3
    800048a4:	f8b402a3          	sb	a1,-123(s0)
    800048a8:	46ea7863          	bgeu	s4,a4,80004d18 <__printf+0x650>
    800048ac:	02d7f5bb          	remuw	a1,a5,a3
    800048b0:	02059593          	slli	a1,a1,0x20
    800048b4:	0205d593          	srli	a1,a1,0x20
    800048b8:	00bd85b3          	add	a1,s11,a1
    800048bc:	0005c583          	lbu	a1,0(a1)
    800048c0:	02d7d7bb          	divuw	a5,a5,a3
    800048c4:	f8b40323          	sb	a1,-122(s0)
    800048c8:	3eeaf863          	bgeu	s5,a4,80004cb8 <__printf+0x5f0>
    800048cc:	02d7f5bb          	remuw	a1,a5,a3
    800048d0:	02059593          	slli	a1,a1,0x20
    800048d4:	0205d593          	srli	a1,a1,0x20
    800048d8:	00bd85b3          	add	a1,s11,a1
    800048dc:	0005c583          	lbu	a1,0(a1)
    800048e0:	02d7d7bb          	divuw	a5,a5,a3
    800048e4:	f8b403a3          	sb	a1,-121(s0)
    800048e8:	42eb7e63          	bgeu	s6,a4,80004d24 <__printf+0x65c>
    800048ec:	02d7f5bb          	remuw	a1,a5,a3
    800048f0:	02059593          	slli	a1,a1,0x20
    800048f4:	0205d593          	srli	a1,a1,0x20
    800048f8:	00bd85b3          	add	a1,s11,a1
    800048fc:	0005c583          	lbu	a1,0(a1)
    80004900:	02d7d7bb          	divuw	a5,a5,a3
    80004904:	f8b40423          	sb	a1,-120(s0)
    80004908:	42ebfc63          	bgeu	s7,a4,80004d40 <__printf+0x678>
    8000490c:	02079793          	slli	a5,a5,0x20
    80004910:	0207d793          	srli	a5,a5,0x20
    80004914:	00fd8db3          	add	s11,s11,a5
    80004918:	000dc703          	lbu	a4,0(s11)
    8000491c:	00a00793          	li	a5,10
    80004920:	00900c93          	li	s9,9
    80004924:	f8e404a3          	sb	a4,-119(s0)
    80004928:	00065c63          	bgez	a2,80004940 <__printf+0x278>
    8000492c:	f9040713          	addi	a4,s0,-112
    80004930:	00f70733          	add	a4,a4,a5
    80004934:	02d00693          	li	a3,45
    80004938:	fed70823          	sb	a3,-16(a4)
    8000493c:	00078c93          	mv	s9,a5
    80004940:	f8040793          	addi	a5,s0,-128
    80004944:	01978cb3          	add	s9,a5,s9
    80004948:	f7f40d13          	addi	s10,s0,-129
    8000494c:	000cc503          	lbu	a0,0(s9)
    80004950:	fffc8c93          	addi	s9,s9,-1
    80004954:	00000097          	auipc	ra,0x0
    80004958:	b90080e7          	jalr	-1136(ra) # 800044e4 <consputc>
    8000495c:	ffac98e3          	bne	s9,s10,8000494c <__printf+0x284>
    80004960:	00094503          	lbu	a0,0(s2)
    80004964:	e00514e3          	bnez	a0,8000476c <__printf+0xa4>
    80004968:	1a0c1663          	bnez	s8,80004b14 <__printf+0x44c>
    8000496c:	08813083          	ld	ra,136(sp)
    80004970:	08013403          	ld	s0,128(sp)
    80004974:	07813483          	ld	s1,120(sp)
    80004978:	07013903          	ld	s2,112(sp)
    8000497c:	06813983          	ld	s3,104(sp)
    80004980:	06013a03          	ld	s4,96(sp)
    80004984:	05813a83          	ld	s5,88(sp)
    80004988:	05013b03          	ld	s6,80(sp)
    8000498c:	04813b83          	ld	s7,72(sp)
    80004990:	04013c03          	ld	s8,64(sp)
    80004994:	03813c83          	ld	s9,56(sp)
    80004998:	03013d03          	ld	s10,48(sp)
    8000499c:	02813d83          	ld	s11,40(sp)
    800049a0:	0d010113          	addi	sp,sp,208
    800049a4:	00008067          	ret
    800049a8:	07300713          	li	a4,115
    800049ac:	1ce78a63          	beq	a5,a4,80004b80 <__printf+0x4b8>
    800049b0:	07800713          	li	a4,120
    800049b4:	1ee79e63          	bne	a5,a4,80004bb0 <__printf+0x4e8>
    800049b8:	f7843783          	ld	a5,-136(s0)
    800049bc:	0007a703          	lw	a4,0(a5)
    800049c0:	00878793          	addi	a5,a5,8
    800049c4:	f6f43c23          	sd	a5,-136(s0)
    800049c8:	28074263          	bltz	a4,80004c4c <__printf+0x584>
    800049cc:	00002d97          	auipc	s11,0x2
    800049d0:	944d8d93          	addi	s11,s11,-1724 # 80006310 <digits>
    800049d4:	00f77793          	andi	a5,a4,15
    800049d8:	00fd87b3          	add	a5,s11,a5
    800049dc:	0007c683          	lbu	a3,0(a5)
    800049e0:	00f00613          	li	a2,15
    800049e4:	0007079b          	sext.w	a5,a4
    800049e8:	f8d40023          	sb	a3,-128(s0)
    800049ec:	0047559b          	srliw	a1,a4,0x4
    800049f0:	0047569b          	srliw	a3,a4,0x4
    800049f4:	00000c93          	li	s9,0
    800049f8:	0ee65063          	bge	a2,a4,80004ad8 <__printf+0x410>
    800049fc:	00f6f693          	andi	a3,a3,15
    80004a00:	00dd86b3          	add	a3,s11,a3
    80004a04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004a08:	0087d79b          	srliw	a5,a5,0x8
    80004a0c:	00100c93          	li	s9,1
    80004a10:	f8d400a3          	sb	a3,-127(s0)
    80004a14:	0cb67263          	bgeu	a2,a1,80004ad8 <__printf+0x410>
    80004a18:	00f7f693          	andi	a3,a5,15
    80004a1c:	00dd86b3          	add	a3,s11,a3
    80004a20:	0006c583          	lbu	a1,0(a3)
    80004a24:	00f00613          	li	a2,15
    80004a28:	0047d69b          	srliw	a3,a5,0x4
    80004a2c:	f8b40123          	sb	a1,-126(s0)
    80004a30:	0047d593          	srli	a1,a5,0x4
    80004a34:	28f67e63          	bgeu	a2,a5,80004cd0 <__printf+0x608>
    80004a38:	00f6f693          	andi	a3,a3,15
    80004a3c:	00dd86b3          	add	a3,s11,a3
    80004a40:	0006c503          	lbu	a0,0(a3)
    80004a44:	0087d813          	srli	a6,a5,0x8
    80004a48:	0087d69b          	srliw	a3,a5,0x8
    80004a4c:	f8a401a3          	sb	a0,-125(s0)
    80004a50:	28b67663          	bgeu	a2,a1,80004cdc <__printf+0x614>
    80004a54:	00f6f693          	andi	a3,a3,15
    80004a58:	00dd86b3          	add	a3,s11,a3
    80004a5c:	0006c583          	lbu	a1,0(a3)
    80004a60:	00c7d513          	srli	a0,a5,0xc
    80004a64:	00c7d69b          	srliw	a3,a5,0xc
    80004a68:	f8b40223          	sb	a1,-124(s0)
    80004a6c:	29067a63          	bgeu	a2,a6,80004d00 <__printf+0x638>
    80004a70:	00f6f693          	andi	a3,a3,15
    80004a74:	00dd86b3          	add	a3,s11,a3
    80004a78:	0006c583          	lbu	a1,0(a3)
    80004a7c:	0107d813          	srli	a6,a5,0x10
    80004a80:	0107d69b          	srliw	a3,a5,0x10
    80004a84:	f8b402a3          	sb	a1,-123(s0)
    80004a88:	28a67263          	bgeu	a2,a0,80004d0c <__printf+0x644>
    80004a8c:	00f6f693          	andi	a3,a3,15
    80004a90:	00dd86b3          	add	a3,s11,a3
    80004a94:	0006c683          	lbu	a3,0(a3)
    80004a98:	0147d79b          	srliw	a5,a5,0x14
    80004a9c:	f8d40323          	sb	a3,-122(s0)
    80004aa0:	21067663          	bgeu	a2,a6,80004cac <__printf+0x5e4>
    80004aa4:	02079793          	slli	a5,a5,0x20
    80004aa8:	0207d793          	srli	a5,a5,0x20
    80004aac:	00fd8db3          	add	s11,s11,a5
    80004ab0:	000dc683          	lbu	a3,0(s11)
    80004ab4:	00800793          	li	a5,8
    80004ab8:	00700c93          	li	s9,7
    80004abc:	f8d403a3          	sb	a3,-121(s0)
    80004ac0:	00075c63          	bgez	a4,80004ad8 <__printf+0x410>
    80004ac4:	f9040713          	addi	a4,s0,-112
    80004ac8:	00f70733          	add	a4,a4,a5
    80004acc:	02d00693          	li	a3,45
    80004ad0:	fed70823          	sb	a3,-16(a4)
    80004ad4:	00078c93          	mv	s9,a5
    80004ad8:	f8040793          	addi	a5,s0,-128
    80004adc:	01978cb3          	add	s9,a5,s9
    80004ae0:	f7f40d13          	addi	s10,s0,-129
    80004ae4:	000cc503          	lbu	a0,0(s9)
    80004ae8:	fffc8c93          	addi	s9,s9,-1
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	9f8080e7          	jalr	-1544(ra) # 800044e4 <consputc>
    80004af4:	ff9d18e3          	bne	s10,s9,80004ae4 <__printf+0x41c>
    80004af8:	0100006f          	j	80004b08 <__printf+0x440>
    80004afc:	00000097          	auipc	ra,0x0
    80004b00:	9e8080e7          	jalr	-1560(ra) # 800044e4 <consputc>
    80004b04:	000c8493          	mv	s1,s9
    80004b08:	00094503          	lbu	a0,0(s2)
    80004b0c:	c60510e3          	bnez	a0,8000476c <__printf+0xa4>
    80004b10:	e40c0ee3          	beqz	s8,8000496c <__printf+0x2a4>
    80004b14:	00004517          	auipc	a0,0x4
    80004b18:	dbc50513          	addi	a0,a0,-580 # 800088d0 <pr>
    80004b1c:	00001097          	auipc	ra,0x1
    80004b20:	94c080e7          	jalr	-1716(ra) # 80005468 <release>
    80004b24:	e49ff06f          	j	8000496c <__printf+0x2a4>
    80004b28:	f7843783          	ld	a5,-136(s0)
    80004b2c:	03000513          	li	a0,48
    80004b30:	01000d13          	li	s10,16
    80004b34:	00878713          	addi	a4,a5,8
    80004b38:	0007bc83          	ld	s9,0(a5)
    80004b3c:	f6e43c23          	sd	a4,-136(s0)
    80004b40:	00000097          	auipc	ra,0x0
    80004b44:	9a4080e7          	jalr	-1628(ra) # 800044e4 <consputc>
    80004b48:	07800513          	li	a0,120
    80004b4c:	00000097          	auipc	ra,0x0
    80004b50:	998080e7          	jalr	-1640(ra) # 800044e4 <consputc>
    80004b54:	00001d97          	auipc	s11,0x1
    80004b58:	7bcd8d93          	addi	s11,s11,1980 # 80006310 <digits>
    80004b5c:	03ccd793          	srli	a5,s9,0x3c
    80004b60:	00fd87b3          	add	a5,s11,a5
    80004b64:	0007c503          	lbu	a0,0(a5)
    80004b68:	fffd0d1b          	addiw	s10,s10,-1
    80004b6c:	004c9c93          	slli	s9,s9,0x4
    80004b70:	00000097          	auipc	ra,0x0
    80004b74:	974080e7          	jalr	-1676(ra) # 800044e4 <consputc>
    80004b78:	fe0d12e3          	bnez	s10,80004b5c <__printf+0x494>
    80004b7c:	f8dff06f          	j	80004b08 <__printf+0x440>
    80004b80:	f7843783          	ld	a5,-136(s0)
    80004b84:	0007bc83          	ld	s9,0(a5)
    80004b88:	00878793          	addi	a5,a5,8
    80004b8c:	f6f43c23          	sd	a5,-136(s0)
    80004b90:	000c9a63          	bnez	s9,80004ba4 <__printf+0x4dc>
    80004b94:	1080006f          	j	80004c9c <__printf+0x5d4>
    80004b98:	001c8c93          	addi	s9,s9,1
    80004b9c:	00000097          	auipc	ra,0x0
    80004ba0:	948080e7          	jalr	-1720(ra) # 800044e4 <consputc>
    80004ba4:	000cc503          	lbu	a0,0(s9)
    80004ba8:	fe0518e3          	bnez	a0,80004b98 <__printf+0x4d0>
    80004bac:	f5dff06f          	j	80004b08 <__printf+0x440>
    80004bb0:	02500513          	li	a0,37
    80004bb4:	00000097          	auipc	ra,0x0
    80004bb8:	930080e7          	jalr	-1744(ra) # 800044e4 <consputc>
    80004bbc:	000c8513          	mv	a0,s9
    80004bc0:	00000097          	auipc	ra,0x0
    80004bc4:	924080e7          	jalr	-1756(ra) # 800044e4 <consputc>
    80004bc8:	f41ff06f          	j	80004b08 <__printf+0x440>
    80004bcc:	02500513          	li	a0,37
    80004bd0:	00000097          	auipc	ra,0x0
    80004bd4:	914080e7          	jalr	-1772(ra) # 800044e4 <consputc>
    80004bd8:	f31ff06f          	j	80004b08 <__printf+0x440>
    80004bdc:	00030513          	mv	a0,t1
    80004be0:	00000097          	auipc	ra,0x0
    80004be4:	7bc080e7          	jalr	1980(ra) # 8000539c <acquire>
    80004be8:	b4dff06f          	j	80004734 <__printf+0x6c>
    80004bec:	40c0053b          	negw	a0,a2
    80004bf0:	00a00713          	li	a4,10
    80004bf4:	02e576bb          	remuw	a3,a0,a4
    80004bf8:	00001d97          	auipc	s11,0x1
    80004bfc:	718d8d93          	addi	s11,s11,1816 # 80006310 <digits>
    80004c00:	ff700593          	li	a1,-9
    80004c04:	02069693          	slli	a3,a3,0x20
    80004c08:	0206d693          	srli	a3,a3,0x20
    80004c0c:	00dd86b3          	add	a3,s11,a3
    80004c10:	0006c683          	lbu	a3,0(a3)
    80004c14:	02e557bb          	divuw	a5,a0,a4
    80004c18:	f8d40023          	sb	a3,-128(s0)
    80004c1c:	10b65e63          	bge	a2,a1,80004d38 <__printf+0x670>
    80004c20:	06300593          	li	a1,99
    80004c24:	02e7f6bb          	remuw	a3,a5,a4
    80004c28:	02069693          	slli	a3,a3,0x20
    80004c2c:	0206d693          	srli	a3,a3,0x20
    80004c30:	00dd86b3          	add	a3,s11,a3
    80004c34:	0006c683          	lbu	a3,0(a3)
    80004c38:	02e7d73b          	divuw	a4,a5,a4
    80004c3c:	00200793          	li	a5,2
    80004c40:	f8d400a3          	sb	a3,-127(s0)
    80004c44:	bca5ece3          	bltu	a1,a0,8000481c <__printf+0x154>
    80004c48:	ce5ff06f          	j	8000492c <__printf+0x264>
    80004c4c:	40e007bb          	negw	a5,a4
    80004c50:	00001d97          	auipc	s11,0x1
    80004c54:	6c0d8d93          	addi	s11,s11,1728 # 80006310 <digits>
    80004c58:	00f7f693          	andi	a3,a5,15
    80004c5c:	00dd86b3          	add	a3,s11,a3
    80004c60:	0006c583          	lbu	a1,0(a3)
    80004c64:	ff100613          	li	a2,-15
    80004c68:	0047d69b          	srliw	a3,a5,0x4
    80004c6c:	f8b40023          	sb	a1,-128(s0)
    80004c70:	0047d59b          	srliw	a1,a5,0x4
    80004c74:	0ac75e63          	bge	a4,a2,80004d30 <__printf+0x668>
    80004c78:	00f6f693          	andi	a3,a3,15
    80004c7c:	00dd86b3          	add	a3,s11,a3
    80004c80:	0006c603          	lbu	a2,0(a3)
    80004c84:	00f00693          	li	a3,15
    80004c88:	0087d79b          	srliw	a5,a5,0x8
    80004c8c:	f8c400a3          	sb	a2,-127(s0)
    80004c90:	d8b6e4e3          	bltu	a3,a1,80004a18 <__printf+0x350>
    80004c94:	00200793          	li	a5,2
    80004c98:	e2dff06f          	j	80004ac4 <__printf+0x3fc>
    80004c9c:	00001c97          	auipc	s9,0x1
    80004ca0:	654c8c93          	addi	s9,s9,1620 # 800062f0 <CONSOLE_STATUS+0x2e0>
    80004ca4:	02800513          	li	a0,40
    80004ca8:	ef1ff06f          	j	80004b98 <__printf+0x4d0>
    80004cac:	00700793          	li	a5,7
    80004cb0:	00600c93          	li	s9,6
    80004cb4:	e0dff06f          	j	80004ac0 <__printf+0x3f8>
    80004cb8:	00700793          	li	a5,7
    80004cbc:	00600c93          	li	s9,6
    80004cc0:	c69ff06f          	j	80004928 <__printf+0x260>
    80004cc4:	00300793          	li	a5,3
    80004cc8:	00200c93          	li	s9,2
    80004ccc:	c5dff06f          	j	80004928 <__printf+0x260>
    80004cd0:	00300793          	li	a5,3
    80004cd4:	00200c93          	li	s9,2
    80004cd8:	de9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004cdc:	00400793          	li	a5,4
    80004ce0:	00300c93          	li	s9,3
    80004ce4:	dddff06f          	j	80004ac0 <__printf+0x3f8>
    80004ce8:	00400793          	li	a5,4
    80004cec:	00300c93          	li	s9,3
    80004cf0:	c39ff06f          	j	80004928 <__printf+0x260>
    80004cf4:	00500793          	li	a5,5
    80004cf8:	00400c93          	li	s9,4
    80004cfc:	c2dff06f          	j	80004928 <__printf+0x260>
    80004d00:	00500793          	li	a5,5
    80004d04:	00400c93          	li	s9,4
    80004d08:	db9ff06f          	j	80004ac0 <__printf+0x3f8>
    80004d0c:	00600793          	li	a5,6
    80004d10:	00500c93          	li	s9,5
    80004d14:	dadff06f          	j	80004ac0 <__printf+0x3f8>
    80004d18:	00600793          	li	a5,6
    80004d1c:	00500c93          	li	s9,5
    80004d20:	c09ff06f          	j	80004928 <__printf+0x260>
    80004d24:	00800793          	li	a5,8
    80004d28:	00700c93          	li	s9,7
    80004d2c:	bfdff06f          	j	80004928 <__printf+0x260>
    80004d30:	00100793          	li	a5,1
    80004d34:	d91ff06f          	j	80004ac4 <__printf+0x3fc>
    80004d38:	00100793          	li	a5,1
    80004d3c:	bf1ff06f          	j	8000492c <__printf+0x264>
    80004d40:	00900793          	li	a5,9
    80004d44:	00800c93          	li	s9,8
    80004d48:	be1ff06f          	j	80004928 <__printf+0x260>
    80004d4c:	00001517          	auipc	a0,0x1
    80004d50:	5ac50513          	addi	a0,a0,1452 # 800062f8 <CONSOLE_STATUS+0x2e8>
    80004d54:	00000097          	auipc	ra,0x0
    80004d58:	918080e7          	jalr	-1768(ra) # 8000466c <panic>

0000000080004d5c <printfinit>:
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00813823          	sd	s0,16(sp)
    80004d64:	00913423          	sd	s1,8(sp)
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	02010413          	addi	s0,sp,32
    80004d70:	00004497          	auipc	s1,0x4
    80004d74:	b6048493          	addi	s1,s1,-1184 # 800088d0 <pr>
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	00001597          	auipc	a1,0x1
    80004d80:	58c58593          	addi	a1,a1,1420 # 80006308 <CONSOLE_STATUS+0x2f8>
    80004d84:	00000097          	auipc	ra,0x0
    80004d88:	5f4080e7          	jalr	1524(ra) # 80005378 <initlock>
    80004d8c:	01813083          	ld	ra,24(sp)
    80004d90:	01013403          	ld	s0,16(sp)
    80004d94:	0004ac23          	sw	zero,24(s1)
    80004d98:	00813483          	ld	s1,8(sp)
    80004d9c:	02010113          	addi	sp,sp,32
    80004da0:	00008067          	ret

0000000080004da4 <uartinit>:
    80004da4:	ff010113          	addi	sp,sp,-16
    80004da8:	00813423          	sd	s0,8(sp)
    80004dac:	01010413          	addi	s0,sp,16
    80004db0:	100007b7          	lui	a5,0x10000
    80004db4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004db8:	f8000713          	li	a4,-128
    80004dbc:	00e781a3          	sb	a4,3(a5)
    80004dc0:	00300713          	li	a4,3
    80004dc4:	00e78023          	sb	a4,0(a5)
    80004dc8:	000780a3          	sb	zero,1(a5)
    80004dcc:	00e781a3          	sb	a4,3(a5)
    80004dd0:	00700693          	li	a3,7
    80004dd4:	00d78123          	sb	a3,2(a5)
    80004dd8:	00e780a3          	sb	a4,1(a5)
    80004ddc:	00813403          	ld	s0,8(sp)
    80004de0:	01010113          	addi	sp,sp,16
    80004de4:	00008067          	ret

0000000080004de8 <uartputc>:
    80004de8:	00003797          	auipc	a5,0x3
    80004dec:	8107a783          	lw	a5,-2032(a5) # 800075f8 <panicked>
    80004df0:	00078463          	beqz	a5,80004df8 <uartputc+0x10>
    80004df4:	0000006f          	j	80004df4 <uartputc+0xc>
    80004df8:	fd010113          	addi	sp,sp,-48
    80004dfc:	02813023          	sd	s0,32(sp)
    80004e00:	00913c23          	sd	s1,24(sp)
    80004e04:	01213823          	sd	s2,16(sp)
    80004e08:	01313423          	sd	s3,8(sp)
    80004e0c:	02113423          	sd	ra,40(sp)
    80004e10:	03010413          	addi	s0,sp,48
    80004e14:	00002917          	auipc	s2,0x2
    80004e18:	7ec90913          	addi	s2,s2,2028 # 80007600 <uart_tx_r>
    80004e1c:	00093783          	ld	a5,0(s2)
    80004e20:	00002497          	auipc	s1,0x2
    80004e24:	7e848493          	addi	s1,s1,2024 # 80007608 <uart_tx_w>
    80004e28:	0004b703          	ld	a4,0(s1)
    80004e2c:	02078693          	addi	a3,a5,32
    80004e30:	00050993          	mv	s3,a0
    80004e34:	02e69c63          	bne	a3,a4,80004e6c <uartputc+0x84>
    80004e38:	00001097          	auipc	ra,0x1
    80004e3c:	834080e7          	jalr	-1996(ra) # 8000566c <push_on>
    80004e40:	00093783          	ld	a5,0(s2)
    80004e44:	0004b703          	ld	a4,0(s1)
    80004e48:	02078793          	addi	a5,a5,32
    80004e4c:	00e79463          	bne	a5,a4,80004e54 <uartputc+0x6c>
    80004e50:	0000006f          	j	80004e50 <uartputc+0x68>
    80004e54:	00001097          	auipc	ra,0x1
    80004e58:	88c080e7          	jalr	-1908(ra) # 800056e0 <pop_on>
    80004e5c:	00093783          	ld	a5,0(s2)
    80004e60:	0004b703          	ld	a4,0(s1)
    80004e64:	02078693          	addi	a3,a5,32
    80004e68:	fce688e3          	beq	a3,a4,80004e38 <uartputc+0x50>
    80004e6c:	01f77693          	andi	a3,a4,31
    80004e70:	00004597          	auipc	a1,0x4
    80004e74:	a8058593          	addi	a1,a1,-1408 # 800088f0 <uart_tx_buf>
    80004e78:	00d586b3          	add	a3,a1,a3
    80004e7c:	00170713          	addi	a4,a4,1
    80004e80:	01368023          	sb	s3,0(a3)
    80004e84:	00e4b023          	sd	a4,0(s1)
    80004e88:	10000637          	lui	a2,0x10000
    80004e8c:	02f71063          	bne	a4,a5,80004eac <uartputc+0xc4>
    80004e90:	0340006f          	j	80004ec4 <uartputc+0xdc>
    80004e94:	00074703          	lbu	a4,0(a4)
    80004e98:	00f93023          	sd	a5,0(s2)
    80004e9c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004ea0:	00093783          	ld	a5,0(s2)
    80004ea4:	0004b703          	ld	a4,0(s1)
    80004ea8:	00f70e63          	beq	a4,a5,80004ec4 <uartputc+0xdc>
    80004eac:	00564683          	lbu	a3,5(a2)
    80004eb0:	01f7f713          	andi	a4,a5,31
    80004eb4:	00e58733          	add	a4,a1,a4
    80004eb8:	0206f693          	andi	a3,a3,32
    80004ebc:	00178793          	addi	a5,a5,1
    80004ec0:	fc069ae3          	bnez	a3,80004e94 <uartputc+0xac>
    80004ec4:	02813083          	ld	ra,40(sp)
    80004ec8:	02013403          	ld	s0,32(sp)
    80004ecc:	01813483          	ld	s1,24(sp)
    80004ed0:	01013903          	ld	s2,16(sp)
    80004ed4:	00813983          	ld	s3,8(sp)
    80004ed8:	03010113          	addi	sp,sp,48
    80004edc:	00008067          	ret

0000000080004ee0 <uartputc_sync>:
    80004ee0:	ff010113          	addi	sp,sp,-16
    80004ee4:	00813423          	sd	s0,8(sp)
    80004ee8:	01010413          	addi	s0,sp,16
    80004eec:	00002717          	auipc	a4,0x2
    80004ef0:	70c72703          	lw	a4,1804(a4) # 800075f8 <panicked>
    80004ef4:	02071663          	bnez	a4,80004f20 <uartputc_sync+0x40>
    80004ef8:	00050793          	mv	a5,a0
    80004efc:	100006b7          	lui	a3,0x10000
    80004f00:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004f04:	02077713          	andi	a4,a4,32
    80004f08:	fe070ce3          	beqz	a4,80004f00 <uartputc_sync+0x20>
    80004f0c:	0ff7f793          	andi	a5,a5,255
    80004f10:	00f68023          	sb	a5,0(a3)
    80004f14:	00813403          	ld	s0,8(sp)
    80004f18:	01010113          	addi	sp,sp,16
    80004f1c:	00008067          	ret
    80004f20:	0000006f          	j	80004f20 <uartputc_sync+0x40>

0000000080004f24 <uartstart>:
    80004f24:	ff010113          	addi	sp,sp,-16
    80004f28:	00813423          	sd	s0,8(sp)
    80004f2c:	01010413          	addi	s0,sp,16
    80004f30:	00002617          	auipc	a2,0x2
    80004f34:	6d060613          	addi	a2,a2,1744 # 80007600 <uart_tx_r>
    80004f38:	00002517          	auipc	a0,0x2
    80004f3c:	6d050513          	addi	a0,a0,1744 # 80007608 <uart_tx_w>
    80004f40:	00063783          	ld	a5,0(a2)
    80004f44:	00053703          	ld	a4,0(a0)
    80004f48:	04f70263          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f4c:	100005b7          	lui	a1,0x10000
    80004f50:	00004817          	auipc	a6,0x4
    80004f54:	9a080813          	addi	a6,a6,-1632 # 800088f0 <uart_tx_buf>
    80004f58:	01c0006f          	j	80004f74 <uartstart+0x50>
    80004f5c:	0006c703          	lbu	a4,0(a3)
    80004f60:	00f63023          	sd	a5,0(a2)
    80004f64:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004f68:	00063783          	ld	a5,0(a2)
    80004f6c:	00053703          	ld	a4,0(a0)
    80004f70:	00f70e63          	beq	a4,a5,80004f8c <uartstart+0x68>
    80004f74:	01f7f713          	andi	a4,a5,31
    80004f78:	00e806b3          	add	a3,a6,a4
    80004f7c:	0055c703          	lbu	a4,5(a1)
    80004f80:	00178793          	addi	a5,a5,1
    80004f84:	02077713          	andi	a4,a4,32
    80004f88:	fc071ae3          	bnez	a4,80004f5c <uartstart+0x38>
    80004f8c:	00813403          	ld	s0,8(sp)
    80004f90:	01010113          	addi	sp,sp,16
    80004f94:	00008067          	ret

0000000080004f98 <uartgetc>:
    80004f98:	ff010113          	addi	sp,sp,-16
    80004f9c:	00813423          	sd	s0,8(sp)
    80004fa0:	01010413          	addi	s0,sp,16
    80004fa4:	10000737          	lui	a4,0x10000
    80004fa8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80004fac:	0017f793          	andi	a5,a5,1
    80004fb0:	00078c63          	beqz	a5,80004fc8 <uartgetc+0x30>
    80004fb4:	00074503          	lbu	a0,0(a4)
    80004fb8:	0ff57513          	andi	a0,a0,255
    80004fbc:	00813403          	ld	s0,8(sp)
    80004fc0:	01010113          	addi	sp,sp,16
    80004fc4:	00008067          	ret
    80004fc8:	fff00513          	li	a0,-1
    80004fcc:	ff1ff06f          	j	80004fbc <uartgetc+0x24>

0000000080004fd0 <uartintr>:
    80004fd0:	100007b7          	lui	a5,0x10000
    80004fd4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004fd8:	0017f793          	andi	a5,a5,1
    80004fdc:	0a078463          	beqz	a5,80005084 <uartintr+0xb4>
    80004fe0:	fe010113          	addi	sp,sp,-32
    80004fe4:	00813823          	sd	s0,16(sp)
    80004fe8:	00913423          	sd	s1,8(sp)
    80004fec:	00113c23          	sd	ra,24(sp)
    80004ff0:	02010413          	addi	s0,sp,32
    80004ff4:	100004b7          	lui	s1,0x10000
    80004ff8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004ffc:	0ff57513          	andi	a0,a0,255
    80005000:	fffff097          	auipc	ra,0xfffff
    80005004:	534080e7          	jalr	1332(ra) # 80004534 <consoleintr>
    80005008:	0054c783          	lbu	a5,5(s1)
    8000500c:	0017f793          	andi	a5,a5,1
    80005010:	fe0794e3          	bnez	a5,80004ff8 <uartintr+0x28>
    80005014:	00002617          	auipc	a2,0x2
    80005018:	5ec60613          	addi	a2,a2,1516 # 80007600 <uart_tx_r>
    8000501c:	00002517          	auipc	a0,0x2
    80005020:	5ec50513          	addi	a0,a0,1516 # 80007608 <uart_tx_w>
    80005024:	00063783          	ld	a5,0(a2)
    80005028:	00053703          	ld	a4,0(a0)
    8000502c:	04f70263          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005030:	100005b7          	lui	a1,0x10000
    80005034:	00004817          	auipc	a6,0x4
    80005038:	8bc80813          	addi	a6,a6,-1860 # 800088f0 <uart_tx_buf>
    8000503c:	01c0006f          	j	80005058 <uartintr+0x88>
    80005040:	0006c703          	lbu	a4,0(a3)
    80005044:	00f63023          	sd	a5,0(a2)
    80005048:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000504c:	00063783          	ld	a5,0(a2)
    80005050:	00053703          	ld	a4,0(a0)
    80005054:	00f70e63          	beq	a4,a5,80005070 <uartintr+0xa0>
    80005058:	01f7f713          	andi	a4,a5,31
    8000505c:	00e806b3          	add	a3,a6,a4
    80005060:	0055c703          	lbu	a4,5(a1)
    80005064:	00178793          	addi	a5,a5,1
    80005068:	02077713          	andi	a4,a4,32
    8000506c:	fc071ae3          	bnez	a4,80005040 <uartintr+0x70>
    80005070:	01813083          	ld	ra,24(sp)
    80005074:	01013403          	ld	s0,16(sp)
    80005078:	00813483          	ld	s1,8(sp)
    8000507c:	02010113          	addi	sp,sp,32
    80005080:	00008067          	ret
    80005084:	00002617          	auipc	a2,0x2
    80005088:	57c60613          	addi	a2,a2,1404 # 80007600 <uart_tx_r>
    8000508c:	00002517          	auipc	a0,0x2
    80005090:	57c50513          	addi	a0,a0,1404 # 80007608 <uart_tx_w>
    80005094:	00063783          	ld	a5,0(a2)
    80005098:	00053703          	ld	a4,0(a0)
    8000509c:	04f70263          	beq	a4,a5,800050e0 <uartintr+0x110>
    800050a0:	100005b7          	lui	a1,0x10000
    800050a4:	00004817          	auipc	a6,0x4
    800050a8:	84c80813          	addi	a6,a6,-1972 # 800088f0 <uart_tx_buf>
    800050ac:	01c0006f          	j	800050c8 <uartintr+0xf8>
    800050b0:	0006c703          	lbu	a4,0(a3)
    800050b4:	00f63023          	sd	a5,0(a2)
    800050b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800050bc:	00063783          	ld	a5,0(a2)
    800050c0:	00053703          	ld	a4,0(a0)
    800050c4:	02f70063          	beq	a4,a5,800050e4 <uartintr+0x114>
    800050c8:	01f7f713          	andi	a4,a5,31
    800050cc:	00e806b3          	add	a3,a6,a4
    800050d0:	0055c703          	lbu	a4,5(a1)
    800050d4:	00178793          	addi	a5,a5,1
    800050d8:	02077713          	andi	a4,a4,32
    800050dc:	fc071ae3          	bnez	a4,800050b0 <uartintr+0xe0>
    800050e0:	00008067          	ret
    800050e4:	00008067          	ret

00000000800050e8 <kinit>:
    800050e8:	fc010113          	addi	sp,sp,-64
    800050ec:	02913423          	sd	s1,40(sp)
    800050f0:	fffff7b7          	lui	a5,0xfffff
    800050f4:	00005497          	auipc	s1,0x5
    800050f8:	81b48493          	addi	s1,s1,-2021 # 8000990f <end+0xfff>
    800050fc:	02813823          	sd	s0,48(sp)
    80005100:	01313c23          	sd	s3,24(sp)
    80005104:	00f4f4b3          	and	s1,s1,a5
    80005108:	02113c23          	sd	ra,56(sp)
    8000510c:	03213023          	sd	s2,32(sp)
    80005110:	01413823          	sd	s4,16(sp)
    80005114:	01513423          	sd	s5,8(sp)
    80005118:	04010413          	addi	s0,sp,64
    8000511c:	000017b7          	lui	a5,0x1
    80005120:	01100993          	li	s3,17
    80005124:	00f487b3          	add	a5,s1,a5
    80005128:	01b99993          	slli	s3,s3,0x1b
    8000512c:	06f9e063          	bltu	s3,a5,8000518c <kinit+0xa4>
    80005130:	00003a97          	auipc	s5,0x3
    80005134:	7e0a8a93          	addi	s5,s5,2016 # 80008910 <end>
    80005138:	0754ec63          	bltu	s1,s5,800051b0 <kinit+0xc8>
    8000513c:	0734fa63          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005140:	00088a37          	lui	s4,0x88
    80005144:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005148:	00002917          	auipc	s2,0x2
    8000514c:	4c890913          	addi	s2,s2,1224 # 80007610 <kmem>
    80005150:	00ca1a13          	slli	s4,s4,0xc
    80005154:	0140006f          	j	80005168 <kinit+0x80>
    80005158:	000017b7          	lui	a5,0x1
    8000515c:	00f484b3          	add	s1,s1,a5
    80005160:	0554e863          	bltu	s1,s5,800051b0 <kinit+0xc8>
    80005164:	0534f663          	bgeu	s1,s3,800051b0 <kinit+0xc8>
    80005168:	00001637          	lui	a2,0x1
    8000516c:	00100593          	li	a1,1
    80005170:	00048513          	mv	a0,s1
    80005174:	00000097          	auipc	ra,0x0
    80005178:	5e4080e7          	jalr	1508(ra) # 80005758 <__memset>
    8000517c:	00093783          	ld	a5,0(s2)
    80005180:	00f4b023          	sd	a5,0(s1)
    80005184:	00993023          	sd	s1,0(s2)
    80005188:	fd4498e3          	bne	s1,s4,80005158 <kinit+0x70>
    8000518c:	03813083          	ld	ra,56(sp)
    80005190:	03013403          	ld	s0,48(sp)
    80005194:	02813483          	ld	s1,40(sp)
    80005198:	02013903          	ld	s2,32(sp)
    8000519c:	01813983          	ld	s3,24(sp)
    800051a0:	01013a03          	ld	s4,16(sp)
    800051a4:	00813a83          	ld	s5,8(sp)
    800051a8:	04010113          	addi	sp,sp,64
    800051ac:	00008067          	ret
    800051b0:	00001517          	auipc	a0,0x1
    800051b4:	17850513          	addi	a0,a0,376 # 80006328 <digits+0x18>
    800051b8:	fffff097          	auipc	ra,0xfffff
    800051bc:	4b4080e7          	jalr	1204(ra) # 8000466c <panic>

00000000800051c0 <freerange>:
    800051c0:	fc010113          	addi	sp,sp,-64
    800051c4:	000017b7          	lui	a5,0x1
    800051c8:	02913423          	sd	s1,40(sp)
    800051cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800051d0:	009504b3          	add	s1,a0,s1
    800051d4:	fffff537          	lui	a0,0xfffff
    800051d8:	02813823          	sd	s0,48(sp)
    800051dc:	02113c23          	sd	ra,56(sp)
    800051e0:	03213023          	sd	s2,32(sp)
    800051e4:	01313c23          	sd	s3,24(sp)
    800051e8:	01413823          	sd	s4,16(sp)
    800051ec:	01513423          	sd	s5,8(sp)
    800051f0:	01613023          	sd	s6,0(sp)
    800051f4:	04010413          	addi	s0,sp,64
    800051f8:	00a4f4b3          	and	s1,s1,a0
    800051fc:	00f487b3          	add	a5,s1,a5
    80005200:	06f5e463          	bltu	a1,a5,80005268 <freerange+0xa8>
    80005204:	00003a97          	auipc	s5,0x3
    80005208:	70ca8a93          	addi	s5,s5,1804 # 80008910 <end>
    8000520c:	0954e263          	bltu	s1,s5,80005290 <freerange+0xd0>
    80005210:	01100993          	li	s3,17
    80005214:	01b99993          	slli	s3,s3,0x1b
    80005218:	0734fc63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    8000521c:	00058a13          	mv	s4,a1
    80005220:	00002917          	auipc	s2,0x2
    80005224:	3f090913          	addi	s2,s2,1008 # 80007610 <kmem>
    80005228:	00002b37          	lui	s6,0x2
    8000522c:	0140006f          	j	80005240 <freerange+0x80>
    80005230:	000017b7          	lui	a5,0x1
    80005234:	00f484b3          	add	s1,s1,a5
    80005238:	0554ec63          	bltu	s1,s5,80005290 <freerange+0xd0>
    8000523c:	0534fa63          	bgeu	s1,s3,80005290 <freerange+0xd0>
    80005240:	00001637          	lui	a2,0x1
    80005244:	00100593          	li	a1,1
    80005248:	00048513          	mv	a0,s1
    8000524c:	00000097          	auipc	ra,0x0
    80005250:	50c080e7          	jalr	1292(ra) # 80005758 <__memset>
    80005254:	00093703          	ld	a4,0(s2)
    80005258:	016487b3          	add	a5,s1,s6
    8000525c:	00e4b023          	sd	a4,0(s1)
    80005260:	00993023          	sd	s1,0(s2)
    80005264:	fcfa76e3          	bgeu	s4,a5,80005230 <freerange+0x70>
    80005268:	03813083          	ld	ra,56(sp)
    8000526c:	03013403          	ld	s0,48(sp)
    80005270:	02813483          	ld	s1,40(sp)
    80005274:	02013903          	ld	s2,32(sp)
    80005278:	01813983          	ld	s3,24(sp)
    8000527c:	01013a03          	ld	s4,16(sp)
    80005280:	00813a83          	ld	s5,8(sp)
    80005284:	00013b03          	ld	s6,0(sp)
    80005288:	04010113          	addi	sp,sp,64
    8000528c:	00008067          	ret
    80005290:	00001517          	auipc	a0,0x1
    80005294:	09850513          	addi	a0,a0,152 # 80006328 <digits+0x18>
    80005298:	fffff097          	auipc	ra,0xfffff
    8000529c:	3d4080e7          	jalr	980(ra) # 8000466c <panic>

00000000800052a0 <kfree>:
    800052a0:	fe010113          	addi	sp,sp,-32
    800052a4:	00813823          	sd	s0,16(sp)
    800052a8:	00113c23          	sd	ra,24(sp)
    800052ac:	00913423          	sd	s1,8(sp)
    800052b0:	02010413          	addi	s0,sp,32
    800052b4:	03451793          	slli	a5,a0,0x34
    800052b8:	04079c63          	bnez	a5,80005310 <kfree+0x70>
    800052bc:	00003797          	auipc	a5,0x3
    800052c0:	65478793          	addi	a5,a5,1620 # 80008910 <end>
    800052c4:	00050493          	mv	s1,a0
    800052c8:	04f56463          	bltu	a0,a5,80005310 <kfree+0x70>
    800052cc:	01100793          	li	a5,17
    800052d0:	01b79793          	slli	a5,a5,0x1b
    800052d4:	02f57e63          	bgeu	a0,a5,80005310 <kfree+0x70>
    800052d8:	00001637          	lui	a2,0x1
    800052dc:	00100593          	li	a1,1
    800052e0:	00000097          	auipc	ra,0x0
    800052e4:	478080e7          	jalr	1144(ra) # 80005758 <__memset>
    800052e8:	00002797          	auipc	a5,0x2
    800052ec:	32878793          	addi	a5,a5,808 # 80007610 <kmem>
    800052f0:	0007b703          	ld	a4,0(a5)
    800052f4:	01813083          	ld	ra,24(sp)
    800052f8:	01013403          	ld	s0,16(sp)
    800052fc:	00e4b023          	sd	a4,0(s1)
    80005300:	0097b023          	sd	s1,0(a5)
    80005304:	00813483          	ld	s1,8(sp)
    80005308:	02010113          	addi	sp,sp,32
    8000530c:	00008067          	ret
    80005310:	00001517          	auipc	a0,0x1
    80005314:	01850513          	addi	a0,a0,24 # 80006328 <digits+0x18>
    80005318:	fffff097          	auipc	ra,0xfffff
    8000531c:	354080e7          	jalr	852(ra) # 8000466c <panic>

0000000080005320 <kalloc>:
    80005320:	fe010113          	addi	sp,sp,-32
    80005324:	00813823          	sd	s0,16(sp)
    80005328:	00913423          	sd	s1,8(sp)
    8000532c:	00113c23          	sd	ra,24(sp)
    80005330:	02010413          	addi	s0,sp,32
    80005334:	00002797          	auipc	a5,0x2
    80005338:	2dc78793          	addi	a5,a5,732 # 80007610 <kmem>
    8000533c:	0007b483          	ld	s1,0(a5)
    80005340:	02048063          	beqz	s1,80005360 <kalloc+0x40>
    80005344:	0004b703          	ld	a4,0(s1)
    80005348:	00001637          	lui	a2,0x1
    8000534c:	00500593          	li	a1,5
    80005350:	00048513          	mv	a0,s1
    80005354:	00e7b023          	sd	a4,0(a5)
    80005358:	00000097          	auipc	ra,0x0
    8000535c:	400080e7          	jalr	1024(ra) # 80005758 <__memset>
    80005360:	01813083          	ld	ra,24(sp)
    80005364:	01013403          	ld	s0,16(sp)
    80005368:	00048513          	mv	a0,s1
    8000536c:	00813483          	ld	s1,8(sp)
    80005370:	02010113          	addi	sp,sp,32
    80005374:	00008067          	ret

0000000080005378 <initlock>:
    80005378:	ff010113          	addi	sp,sp,-16
    8000537c:	00813423          	sd	s0,8(sp)
    80005380:	01010413          	addi	s0,sp,16
    80005384:	00813403          	ld	s0,8(sp)
    80005388:	00b53423          	sd	a1,8(a0)
    8000538c:	00052023          	sw	zero,0(a0)
    80005390:	00053823          	sd	zero,16(a0)
    80005394:	01010113          	addi	sp,sp,16
    80005398:	00008067          	ret

000000008000539c <acquire>:
    8000539c:	fe010113          	addi	sp,sp,-32
    800053a0:	00813823          	sd	s0,16(sp)
    800053a4:	00913423          	sd	s1,8(sp)
    800053a8:	00113c23          	sd	ra,24(sp)
    800053ac:	01213023          	sd	s2,0(sp)
    800053b0:	02010413          	addi	s0,sp,32
    800053b4:	00050493          	mv	s1,a0
    800053b8:	10002973          	csrr	s2,sstatus
    800053bc:	100027f3          	csrr	a5,sstatus
    800053c0:	ffd7f793          	andi	a5,a5,-3
    800053c4:	10079073          	csrw	sstatus,a5
    800053c8:	fffff097          	auipc	ra,0xfffff
    800053cc:	8ec080e7          	jalr	-1812(ra) # 80003cb4 <mycpu>
    800053d0:	07852783          	lw	a5,120(a0)
    800053d4:	06078e63          	beqz	a5,80005450 <acquire+0xb4>
    800053d8:	fffff097          	auipc	ra,0xfffff
    800053dc:	8dc080e7          	jalr	-1828(ra) # 80003cb4 <mycpu>
    800053e0:	07852783          	lw	a5,120(a0)
    800053e4:	0004a703          	lw	a4,0(s1)
    800053e8:	0017879b          	addiw	a5,a5,1
    800053ec:	06f52c23          	sw	a5,120(a0)
    800053f0:	04071063          	bnez	a4,80005430 <acquire+0x94>
    800053f4:	00100713          	li	a4,1
    800053f8:	00070793          	mv	a5,a4
    800053fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005400:	0007879b          	sext.w	a5,a5
    80005404:	fe079ae3          	bnez	a5,800053f8 <acquire+0x5c>
    80005408:	0ff0000f          	fence
    8000540c:	fffff097          	auipc	ra,0xfffff
    80005410:	8a8080e7          	jalr	-1880(ra) # 80003cb4 <mycpu>
    80005414:	01813083          	ld	ra,24(sp)
    80005418:	01013403          	ld	s0,16(sp)
    8000541c:	00a4b823          	sd	a0,16(s1)
    80005420:	00013903          	ld	s2,0(sp)
    80005424:	00813483          	ld	s1,8(sp)
    80005428:	02010113          	addi	sp,sp,32
    8000542c:	00008067          	ret
    80005430:	0104b903          	ld	s2,16(s1)
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	880080e7          	jalr	-1920(ra) # 80003cb4 <mycpu>
    8000543c:	faa91ce3          	bne	s2,a0,800053f4 <acquire+0x58>
    80005440:	00001517          	auipc	a0,0x1
    80005444:	ef050513          	addi	a0,a0,-272 # 80006330 <digits+0x20>
    80005448:	fffff097          	auipc	ra,0xfffff
    8000544c:	224080e7          	jalr	548(ra) # 8000466c <panic>
    80005450:	00195913          	srli	s2,s2,0x1
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	860080e7          	jalr	-1952(ra) # 80003cb4 <mycpu>
    8000545c:	00197913          	andi	s2,s2,1
    80005460:	07252e23          	sw	s2,124(a0)
    80005464:	f75ff06f          	j	800053d8 <acquire+0x3c>

0000000080005468 <release>:
    80005468:	fe010113          	addi	sp,sp,-32
    8000546c:	00813823          	sd	s0,16(sp)
    80005470:	00113c23          	sd	ra,24(sp)
    80005474:	00913423          	sd	s1,8(sp)
    80005478:	01213023          	sd	s2,0(sp)
    8000547c:	02010413          	addi	s0,sp,32
    80005480:	00052783          	lw	a5,0(a0)
    80005484:	00079a63          	bnez	a5,80005498 <release+0x30>
    80005488:	00001517          	auipc	a0,0x1
    8000548c:	eb050513          	addi	a0,a0,-336 # 80006338 <digits+0x28>
    80005490:	fffff097          	auipc	ra,0xfffff
    80005494:	1dc080e7          	jalr	476(ra) # 8000466c <panic>
    80005498:	01053903          	ld	s2,16(a0)
    8000549c:	00050493          	mv	s1,a0
    800054a0:	fffff097          	auipc	ra,0xfffff
    800054a4:	814080e7          	jalr	-2028(ra) # 80003cb4 <mycpu>
    800054a8:	fea910e3          	bne	s2,a0,80005488 <release+0x20>
    800054ac:	0004b823          	sd	zero,16(s1)
    800054b0:	0ff0000f          	fence
    800054b4:	0f50000f          	fence	iorw,ow
    800054b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800054bc:	ffffe097          	auipc	ra,0xffffe
    800054c0:	7f8080e7          	jalr	2040(ra) # 80003cb4 <mycpu>
    800054c4:	100027f3          	csrr	a5,sstatus
    800054c8:	0027f793          	andi	a5,a5,2
    800054cc:	04079a63          	bnez	a5,80005520 <release+0xb8>
    800054d0:	07852783          	lw	a5,120(a0)
    800054d4:	02f05e63          	blez	a5,80005510 <release+0xa8>
    800054d8:	fff7871b          	addiw	a4,a5,-1
    800054dc:	06e52c23          	sw	a4,120(a0)
    800054e0:	00071c63          	bnez	a4,800054f8 <release+0x90>
    800054e4:	07c52783          	lw	a5,124(a0)
    800054e8:	00078863          	beqz	a5,800054f8 <release+0x90>
    800054ec:	100027f3          	csrr	a5,sstatus
    800054f0:	0027e793          	ori	a5,a5,2
    800054f4:	10079073          	csrw	sstatus,a5
    800054f8:	01813083          	ld	ra,24(sp)
    800054fc:	01013403          	ld	s0,16(sp)
    80005500:	00813483          	ld	s1,8(sp)
    80005504:	00013903          	ld	s2,0(sp)
    80005508:	02010113          	addi	sp,sp,32
    8000550c:	00008067          	ret
    80005510:	00001517          	auipc	a0,0x1
    80005514:	e4850513          	addi	a0,a0,-440 # 80006358 <digits+0x48>
    80005518:	fffff097          	auipc	ra,0xfffff
    8000551c:	154080e7          	jalr	340(ra) # 8000466c <panic>
    80005520:	00001517          	auipc	a0,0x1
    80005524:	e2050513          	addi	a0,a0,-480 # 80006340 <digits+0x30>
    80005528:	fffff097          	auipc	ra,0xfffff
    8000552c:	144080e7          	jalr	324(ra) # 8000466c <panic>

0000000080005530 <holding>:
    80005530:	00052783          	lw	a5,0(a0)
    80005534:	00079663          	bnez	a5,80005540 <holding+0x10>
    80005538:	00000513          	li	a0,0
    8000553c:	00008067          	ret
    80005540:	fe010113          	addi	sp,sp,-32
    80005544:	00813823          	sd	s0,16(sp)
    80005548:	00913423          	sd	s1,8(sp)
    8000554c:	00113c23          	sd	ra,24(sp)
    80005550:	02010413          	addi	s0,sp,32
    80005554:	01053483          	ld	s1,16(a0)
    80005558:	ffffe097          	auipc	ra,0xffffe
    8000555c:	75c080e7          	jalr	1884(ra) # 80003cb4 <mycpu>
    80005560:	01813083          	ld	ra,24(sp)
    80005564:	01013403          	ld	s0,16(sp)
    80005568:	40a48533          	sub	a0,s1,a0
    8000556c:	00153513          	seqz	a0,a0
    80005570:	00813483          	ld	s1,8(sp)
    80005574:	02010113          	addi	sp,sp,32
    80005578:	00008067          	ret

000000008000557c <push_off>:
    8000557c:	fe010113          	addi	sp,sp,-32
    80005580:	00813823          	sd	s0,16(sp)
    80005584:	00113c23          	sd	ra,24(sp)
    80005588:	00913423          	sd	s1,8(sp)
    8000558c:	02010413          	addi	s0,sp,32
    80005590:	100024f3          	csrr	s1,sstatus
    80005594:	100027f3          	csrr	a5,sstatus
    80005598:	ffd7f793          	andi	a5,a5,-3
    8000559c:	10079073          	csrw	sstatus,a5
    800055a0:	ffffe097          	auipc	ra,0xffffe
    800055a4:	714080e7          	jalr	1812(ra) # 80003cb4 <mycpu>
    800055a8:	07852783          	lw	a5,120(a0)
    800055ac:	02078663          	beqz	a5,800055d8 <push_off+0x5c>
    800055b0:	ffffe097          	auipc	ra,0xffffe
    800055b4:	704080e7          	jalr	1796(ra) # 80003cb4 <mycpu>
    800055b8:	07852783          	lw	a5,120(a0)
    800055bc:	01813083          	ld	ra,24(sp)
    800055c0:	01013403          	ld	s0,16(sp)
    800055c4:	0017879b          	addiw	a5,a5,1
    800055c8:	06f52c23          	sw	a5,120(a0)
    800055cc:	00813483          	ld	s1,8(sp)
    800055d0:	02010113          	addi	sp,sp,32
    800055d4:	00008067          	ret
    800055d8:	0014d493          	srli	s1,s1,0x1
    800055dc:	ffffe097          	auipc	ra,0xffffe
    800055e0:	6d8080e7          	jalr	1752(ra) # 80003cb4 <mycpu>
    800055e4:	0014f493          	andi	s1,s1,1
    800055e8:	06952e23          	sw	s1,124(a0)
    800055ec:	fc5ff06f          	j	800055b0 <push_off+0x34>

00000000800055f0 <pop_off>:
    800055f0:	ff010113          	addi	sp,sp,-16
    800055f4:	00813023          	sd	s0,0(sp)
    800055f8:	00113423          	sd	ra,8(sp)
    800055fc:	01010413          	addi	s0,sp,16
    80005600:	ffffe097          	auipc	ra,0xffffe
    80005604:	6b4080e7          	jalr	1716(ra) # 80003cb4 <mycpu>
    80005608:	100027f3          	csrr	a5,sstatus
    8000560c:	0027f793          	andi	a5,a5,2
    80005610:	04079663          	bnez	a5,8000565c <pop_off+0x6c>
    80005614:	07852783          	lw	a5,120(a0)
    80005618:	02f05a63          	blez	a5,8000564c <pop_off+0x5c>
    8000561c:	fff7871b          	addiw	a4,a5,-1
    80005620:	06e52c23          	sw	a4,120(a0)
    80005624:	00071c63          	bnez	a4,8000563c <pop_off+0x4c>
    80005628:	07c52783          	lw	a5,124(a0)
    8000562c:	00078863          	beqz	a5,8000563c <pop_off+0x4c>
    80005630:	100027f3          	csrr	a5,sstatus
    80005634:	0027e793          	ori	a5,a5,2
    80005638:	10079073          	csrw	sstatus,a5
    8000563c:	00813083          	ld	ra,8(sp)
    80005640:	00013403          	ld	s0,0(sp)
    80005644:	01010113          	addi	sp,sp,16
    80005648:	00008067          	ret
    8000564c:	00001517          	auipc	a0,0x1
    80005650:	d0c50513          	addi	a0,a0,-756 # 80006358 <digits+0x48>
    80005654:	fffff097          	auipc	ra,0xfffff
    80005658:	018080e7          	jalr	24(ra) # 8000466c <panic>
    8000565c:	00001517          	auipc	a0,0x1
    80005660:	ce450513          	addi	a0,a0,-796 # 80006340 <digits+0x30>
    80005664:	fffff097          	auipc	ra,0xfffff
    80005668:	008080e7          	jalr	8(ra) # 8000466c <panic>

000000008000566c <push_on>:
    8000566c:	fe010113          	addi	sp,sp,-32
    80005670:	00813823          	sd	s0,16(sp)
    80005674:	00113c23          	sd	ra,24(sp)
    80005678:	00913423          	sd	s1,8(sp)
    8000567c:	02010413          	addi	s0,sp,32
    80005680:	100024f3          	csrr	s1,sstatus
    80005684:	100027f3          	csrr	a5,sstatus
    80005688:	0027e793          	ori	a5,a5,2
    8000568c:	10079073          	csrw	sstatus,a5
    80005690:	ffffe097          	auipc	ra,0xffffe
    80005694:	624080e7          	jalr	1572(ra) # 80003cb4 <mycpu>
    80005698:	07852783          	lw	a5,120(a0)
    8000569c:	02078663          	beqz	a5,800056c8 <push_on+0x5c>
    800056a0:	ffffe097          	auipc	ra,0xffffe
    800056a4:	614080e7          	jalr	1556(ra) # 80003cb4 <mycpu>
    800056a8:	07852783          	lw	a5,120(a0)
    800056ac:	01813083          	ld	ra,24(sp)
    800056b0:	01013403          	ld	s0,16(sp)
    800056b4:	0017879b          	addiw	a5,a5,1
    800056b8:	06f52c23          	sw	a5,120(a0)
    800056bc:	00813483          	ld	s1,8(sp)
    800056c0:	02010113          	addi	sp,sp,32
    800056c4:	00008067          	ret
    800056c8:	0014d493          	srli	s1,s1,0x1
    800056cc:	ffffe097          	auipc	ra,0xffffe
    800056d0:	5e8080e7          	jalr	1512(ra) # 80003cb4 <mycpu>
    800056d4:	0014f493          	andi	s1,s1,1
    800056d8:	06952e23          	sw	s1,124(a0)
    800056dc:	fc5ff06f          	j	800056a0 <push_on+0x34>

00000000800056e0 <pop_on>:
    800056e0:	ff010113          	addi	sp,sp,-16
    800056e4:	00813023          	sd	s0,0(sp)
    800056e8:	00113423          	sd	ra,8(sp)
    800056ec:	01010413          	addi	s0,sp,16
    800056f0:	ffffe097          	auipc	ra,0xffffe
    800056f4:	5c4080e7          	jalr	1476(ra) # 80003cb4 <mycpu>
    800056f8:	100027f3          	csrr	a5,sstatus
    800056fc:	0027f793          	andi	a5,a5,2
    80005700:	04078463          	beqz	a5,80005748 <pop_on+0x68>
    80005704:	07852783          	lw	a5,120(a0)
    80005708:	02f05863          	blez	a5,80005738 <pop_on+0x58>
    8000570c:	fff7879b          	addiw	a5,a5,-1
    80005710:	06f52c23          	sw	a5,120(a0)
    80005714:	07853783          	ld	a5,120(a0)
    80005718:	00079863          	bnez	a5,80005728 <pop_on+0x48>
    8000571c:	100027f3          	csrr	a5,sstatus
    80005720:	ffd7f793          	andi	a5,a5,-3
    80005724:	10079073          	csrw	sstatus,a5
    80005728:	00813083          	ld	ra,8(sp)
    8000572c:	00013403          	ld	s0,0(sp)
    80005730:	01010113          	addi	sp,sp,16
    80005734:	00008067          	ret
    80005738:	00001517          	auipc	a0,0x1
    8000573c:	c4850513          	addi	a0,a0,-952 # 80006380 <digits+0x70>
    80005740:	fffff097          	auipc	ra,0xfffff
    80005744:	f2c080e7          	jalr	-212(ra) # 8000466c <panic>
    80005748:	00001517          	auipc	a0,0x1
    8000574c:	c1850513          	addi	a0,a0,-1000 # 80006360 <digits+0x50>
    80005750:	fffff097          	auipc	ra,0xfffff
    80005754:	f1c080e7          	jalr	-228(ra) # 8000466c <panic>

0000000080005758 <__memset>:
    80005758:	ff010113          	addi	sp,sp,-16
    8000575c:	00813423          	sd	s0,8(sp)
    80005760:	01010413          	addi	s0,sp,16
    80005764:	1a060e63          	beqz	a2,80005920 <__memset+0x1c8>
    80005768:	40a007b3          	neg	a5,a0
    8000576c:	0077f793          	andi	a5,a5,7
    80005770:	00778693          	addi	a3,a5,7
    80005774:	00b00813          	li	a6,11
    80005778:	0ff5f593          	andi	a1,a1,255
    8000577c:	fff6071b          	addiw	a4,a2,-1
    80005780:	1b06e663          	bltu	a3,a6,8000592c <__memset+0x1d4>
    80005784:	1cd76463          	bltu	a4,a3,8000594c <__memset+0x1f4>
    80005788:	1a078e63          	beqz	a5,80005944 <__memset+0x1ec>
    8000578c:	00b50023          	sb	a1,0(a0)
    80005790:	00100713          	li	a4,1
    80005794:	1ae78463          	beq	a5,a4,8000593c <__memset+0x1e4>
    80005798:	00b500a3          	sb	a1,1(a0)
    8000579c:	00200713          	li	a4,2
    800057a0:	1ae78a63          	beq	a5,a4,80005954 <__memset+0x1fc>
    800057a4:	00b50123          	sb	a1,2(a0)
    800057a8:	00300713          	li	a4,3
    800057ac:	18e78463          	beq	a5,a4,80005934 <__memset+0x1dc>
    800057b0:	00b501a3          	sb	a1,3(a0)
    800057b4:	00400713          	li	a4,4
    800057b8:	1ae78263          	beq	a5,a4,8000595c <__memset+0x204>
    800057bc:	00b50223          	sb	a1,4(a0)
    800057c0:	00500713          	li	a4,5
    800057c4:	1ae78063          	beq	a5,a4,80005964 <__memset+0x20c>
    800057c8:	00b502a3          	sb	a1,5(a0)
    800057cc:	00700713          	li	a4,7
    800057d0:	18e79e63          	bne	a5,a4,8000596c <__memset+0x214>
    800057d4:	00b50323          	sb	a1,6(a0)
    800057d8:	00700e93          	li	t4,7
    800057dc:	00859713          	slli	a4,a1,0x8
    800057e0:	00e5e733          	or	a4,a1,a4
    800057e4:	01059e13          	slli	t3,a1,0x10
    800057e8:	01c76e33          	or	t3,a4,t3
    800057ec:	01859313          	slli	t1,a1,0x18
    800057f0:	006e6333          	or	t1,t3,t1
    800057f4:	02059893          	slli	a7,a1,0x20
    800057f8:	40f60e3b          	subw	t3,a2,a5
    800057fc:	011368b3          	or	a7,t1,a7
    80005800:	02859813          	slli	a6,a1,0x28
    80005804:	0108e833          	or	a6,a7,a6
    80005808:	03059693          	slli	a3,a1,0x30
    8000580c:	003e589b          	srliw	a7,t3,0x3
    80005810:	00d866b3          	or	a3,a6,a3
    80005814:	03859713          	slli	a4,a1,0x38
    80005818:	00389813          	slli	a6,a7,0x3
    8000581c:	00f507b3          	add	a5,a0,a5
    80005820:	00e6e733          	or	a4,a3,a4
    80005824:	000e089b          	sext.w	a7,t3
    80005828:	00f806b3          	add	a3,a6,a5
    8000582c:	00e7b023          	sd	a4,0(a5)
    80005830:	00878793          	addi	a5,a5,8
    80005834:	fed79ce3          	bne	a5,a3,8000582c <__memset+0xd4>
    80005838:	ff8e7793          	andi	a5,t3,-8
    8000583c:	0007871b          	sext.w	a4,a5
    80005840:	01d787bb          	addw	a5,a5,t4
    80005844:	0ce88e63          	beq	a7,a4,80005920 <__memset+0x1c8>
    80005848:	00f50733          	add	a4,a0,a5
    8000584c:	00b70023          	sb	a1,0(a4)
    80005850:	0017871b          	addiw	a4,a5,1
    80005854:	0cc77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005858:	00e50733          	add	a4,a0,a4
    8000585c:	00b70023          	sb	a1,0(a4)
    80005860:	0027871b          	addiw	a4,a5,2
    80005864:	0ac77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005868:	00e50733          	add	a4,a0,a4
    8000586c:	00b70023          	sb	a1,0(a4)
    80005870:	0037871b          	addiw	a4,a5,3
    80005874:	0ac77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005878:	00e50733          	add	a4,a0,a4
    8000587c:	00b70023          	sb	a1,0(a4)
    80005880:	0047871b          	addiw	a4,a5,4
    80005884:	08c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005888:	00e50733          	add	a4,a0,a4
    8000588c:	00b70023          	sb	a1,0(a4)
    80005890:	0057871b          	addiw	a4,a5,5
    80005894:	08c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005898:	00e50733          	add	a4,a0,a4
    8000589c:	00b70023          	sb	a1,0(a4)
    800058a0:	0067871b          	addiw	a4,a5,6
    800058a4:	06c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058a8:	00e50733          	add	a4,a0,a4
    800058ac:	00b70023          	sb	a1,0(a4)
    800058b0:	0077871b          	addiw	a4,a5,7
    800058b4:	06c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058b8:	00e50733          	add	a4,a0,a4
    800058bc:	00b70023          	sb	a1,0(a4)
    800058c0:	0087871b          	addiw	a4,a5,8
    800058c4:	04c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058c8:	00e50733          	add	a4,a0,a4
    800058cc:	00b70023          	sb	a1,0(a4)
    800058d0:	0097871b          	addiw	a4,a5,9
    800058d4:	04c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058d8:	00e50733          	add	a4,a0,a4
    800058dc:	00b70023          	sb	a1,0(a4)
    800058e0:	00a7871b          	addiw	a4,a5,10
    800058e4:	02c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058e8:	00e50733          	add	a4,a0,a4
    800058ec:	00b70023          	sb	a1,0(a4)
    800058f0:	00b7871b          	addiw	a4,a5,11
    800058f4:	02c77663          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    800058f8:	00e50733          	add	a4,a0,a4
    800058fc:	00b70023          	sb	a1,0(a4)
    80005900:	00c7871b          	addiw	a4,a5,12
    80005904:	00c77e63          	bgeu	a4,a2,80005920 <__memset+0x1c8>
    80005908:	00e50733          	add	a4,a0,a4
    8000590c:	00b70023          	sb	a1,0(a4)
    80005910:	00d7879b          	addiw	a5,a5,13
    80005914:	00c7f663          	bgeu	a5,a2,80005920 <__memset+0x1c8>
    80005918:	00f507b3          	add	a5,a0,a5
    8000591c:	00b78023          	sb	a1,0(a5)
    80005920:	00813403          	ld	s0,8(sp)
    80005924:	01010113          	addi	sp,sp,16
    80005928:	00008067          	ret
    8000592c:	00b00693          	li	a3,11
    80005930:	e55ff06f          	j	80005784 <__memset+0x2c>
    80005934:	00300e93          	li	t4,3
    80005938:	ea5ff06f          	j	800057dc <__memset+0x84>
    8000593c:	00100e93          	li	t4,1
    80005940:	e9dff06f          	j	800057dc <__memset+0x84>
    80005944:	00000e93          	li	t4,0
    80005948:	e95ff06f          	j	800057dc <__memset+0x84>
    8000594c:	00000793          	li	a5,0
    80005950:	ef9ff06f          	j	80005848 <__memset+0xf0>
    80005954:	00200e93          	li	t4,2
    80005958:	e85ff06f          	j	800057dc <__memset+0x84>
    8000595c:	00400e93          	li	t4,4
    80005960:	e7dff06f          	j	800057dc <__memset+0x84>
    80005964:	00500e93          	li	t4,5
    80005968:	e75ff06f          	j	800057dc <__memset+0x84>
    8000596c:	00600e93          	li	t4,6
    80005970:	e6dff06f          	j	800057dc <__memset+0x84>

0000000080005974 <__memmove>:
    80005974:	ff010113          	addi	sp,sp,-16
    80005978:	00813423          	sd	s0,8(sp)
    8000597c:	01010413          	addi	s0,sp,16
    80005980:	0e060863          	beqz	a2,80005a70 <__memmove+0xfc>
    80005984:	fff6069b          	addiw	a3,a2,-1
    80005988:	0006881b          	sext.w	a6,a3
    8000598c:	0ea5e863          	bltu	a1,a0,80005a7c <__memmove+0x108>
    80005990:	00758713          	addi	a4,a1,7
    80005994:	00a5e7b3          	or	a5,a1,a0
    80005998:	40a70733          	sub	a4,a4,a0
    8000599c:	0077f793          	andi	a5,a5,7
    800059a0:	00f73713          	sltiu	a4,a4,15
    800059a4:	00174713          	xori	a4,a4,1
    800059a8:	0017b793          	seqz	a5,a5
    800059ac:	00e7f7b3          	and	a5,a5,a4
    800059b0:	10078863          	beqz	a5,80005ac0 <__memmove+0x14c>
    800059b4:	00900793          	li	a5,9
    800059b8:	1107f463          	bgeu	a5,a6,80005ac0 <__memmove+0x14c>
    800059bc:	0036581b          	srliw	a6,a2,0x3
    800059c0:	fff8081b          	addiw	a6,a6,-1
    800059c4:	02081813          	slli	a6,a6,0x20
    800059c8:	01d85893          	srli	a7,a6,0x1d
    800059cc:	00858813          	addi	a6,a1,8
    800059d0:	00058793          	mv	a5,a1
    800059d4:	00050713          	mv	a4,a0
    800059d8:	01088833          	add	a6,a7,a6
    800059dc:	0007b883          	ld	a7,0(a5)
    800059e0:	00878793          	addi	a5,a5,8
    800059e4:	00870713          	addi	a4,a4,8
    800059e8:	ff173c23          	sd	a7,-8(a4)
    800059ec:	ff0798e3          	bne	a5,a6,800059dc <__memmove+0x68>
    800059f0:	ff867713          	andi	a4,a2,-8
    800059f4:	02071793          	slli	a5,a4,0x20
    800059f8:	0207d793          	srli	a5,a5,0x20
    800059fc:	00f585b3          	add	a1,a1,a5
    80005a00:	40e686bb          	subw	a3,a3,a4
    80005a04:	00f507b3          	add	a5,a0,a5
    80005a08:	06e60463          	beq	a2,a4,80005a70 <__memmove+0xfc>
    80005a0c:	0005c703          	lbu	a4,0(a1)
    80005a10:	00e78023          	sb	a4,0(a5)
    80005a14:	04068e63          	beqz	a3,80005a70 <__memmove+0xfc>
    80005a18:	0015c603          	lbu	a2,1(a1)
    80005a1c:	00100713          	li	a4,1
    80005a20:	00c780a3          	sb	a2,1(a5)
    80005a24:	04e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a28:	0025c603          	lbu	a2,2(a1)
    80005a2c:	00200713          	li	a4,2
    80005a30:	00c78123          	sb	a2,2(a5)
    80005a34:	02e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a38:	0035c603          	lbu	a2,3(a1)
    80005a3c:	00300713          	li	a4,3
    80005a40:	00c781a3          	sb	a2,3(a5)
    80005a44:	02e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a48:	0045c603          	lbu	a2,4(a1)
    80005a4c:	00400713          	li	a4,4
    80005a50:	00c78223          	sb	a2,4(a5)
    80005a54:	00e68e63          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a58:	0055c603          	lbu	a2,5(a1)
    80005a5c:	00500713          	li	a4,5
    80005a60:	00c782a3          	sb	a2,5(a5)
    80005a64:	00e68663          	beq	a3,a4,80005a70 <__memmove+0xfc>
    80005a68:	0065c703          	lbu	a4,6(a1)
    80005a6c:	00e78323          	sb	a4,6(a5)
    80005a70:	00813403          	ld	s0,8(sp)
    80005a74:	01010113          	addi	sp,sp,16
    80005a78:	00008067          	ret
    80005a7c:	02061713          	slli	a4,a2,0x20
    80005a80:	02075713          	srli	a4,a4,0x20
    80005a84:	00e587b3          	add	a5,a1,a4
    80005a88:	f0f574e3          	bgeu	a0,a5,80005990 <__memmove+0x1c>
    80005a8c:	02069613          	slli	a2,a3,0x20
    80005a90:	02065613          	srli	a2,a2,0x20
    80005a94:	fff64613          	not	a2,a2
    80005a98:	00e50733          	add	a4,a0,a4
    80005a9c:	00c78633          	add	a2,a5,a2
    80005aa0:	fff7c683          	lbu	a3,-1(a5)
    80005aa4:	fff78793          	addi	a5,a5,-1
    80005aa8:	fff70713          	addi	a4,a4,-1
    80005aac:	00d70023          	sb	a3,0(a4)
    80005ab0:	fec798e3          	bne	a5,a2,80005aa0 <__memmove+0x12c>
    80005ab4:	00813403          	ld	s0,8(sp)
    80005ab8:	01010113          	addi	sp,sp,16
    80005abc:	00008067          	ret
    80005ac0:	02069713          	slli	a4,a3,0x20
    80005ac4:	02075713          	srli	a4,a4,0x20
    80005ac8:	00170713          	addi	a4,a4,1
    80005acc:	00e50733          	add	a4,a0,a4
    80005ad0:	00050793          	mv	a5,a0
    80005ad4:	0005c683          	lbu	a3,0(a1)
    80005ad8:	00178793          	addi	a5,a5,1
    80005adc:	00158593          	addi	a1,a1,1
    80005ae0:	fed78fa3          	sb	a3,-1(a5)
    80005ae4:	fee798e3          	bne	a5,a4,80005ad4 <__memmove+0x160>
    80005ae8:	f89ff06f          	j	80005a70 <__memmove+0xfc>

0000000080005aec <__putc>:
    80005aec:	fe010113          	addi	sp,sp,-32
    80005af0:	00813823          	sd	s0,16(sp)
    80005af4:	00113c23          	sd	ra,24(sp)
    80005af8:	02010413          	addi	s0,sp,32
    80005afc:	00050793          	mv	a5,a0
    80005b00:	fef40593          	addi	a1,s0,-17
    80005b04:	00100613          	li	a2,1
    80005b08:	00000513          	li	a0,0
    80005b0c:	fef407a3          	sb	a5,-17(s0)
    80005b10:	fffff097          	auipc	ra,0xfffff
    80005b14:	b3c080e7          	jalr	-1220(ra) # 8000464c <console_write>
    80005b18:	01813083          	ld	ra,24(sp)
    80005b1c:	01013403          	ld	s0,16(sp)
    80005b20:	02010113          	addi	sp,sp,32
    80005b24:	00008067          	ret

0000000080005b28 <__getc>:
    80005b28:	fe010113          	addi	sp,sp,-32
    80005b2c:	00813823          	sd	s0,16(sp)
    80005b30:	00113c23          	sd	ra,24(sp)
    80005b34:	02010413          	addi	s0,sp,32
    80005b38:	fe840593          	addi	a1,s0,-24
    80005b3c:	00100613          	li	a2,1
    80005b40:	00000513          	li	a0,0
    80005b44:	fffff097          	auipc	ra,0xfffff
    80005b48:	ae8080e7          	jalr	-1304(ra) # 8000462c <console_read>
    80005b4c:	fe844503          	lbu	a0,-24(s0)
    80005b50:	01813083          	ld	ra,24(sp)
    80005b54:	01013403          	ld	s0,16(sp)
    80005b58:	02010113          	addi	sp,sp,32
    80005b5c:	00008067          	ret

0000000080005b60 <console_handler>:
    80005b60:	fe010113          	addi	sp,sp,-32
    80005b64:	00813823          	sd	s0,16(sp)
    80005b68:	00113c23          	sd	ra,24(sp)
    80005b6c:	00913423          	sd	s1,8(sp)
    80005b70:	02010413          	addi	s0,sp,32
    80005b74:	14202773          	csrr	a4,scause
    80005b78:	100027f3          	csrr	a5,sstatus
    80005b7c:	0027f793          	andi	a5,a5,2
    80005b80:	06079e63          	bnez	a5,80005bfc <console_handler+0x9c>
    80005b84:	00074c63          	bltz	a4,80005b9c <console_handler+0x3c>
    80005b88:	01813083          	ld	ra,24(sp)
    80005b8c:	01013403          	ld	s0,16(sp)
    80005b90:	00813483          	ld	s1,8(sp)
    80005b94:	02010113          	addi	sp,sp,32
    80005b98:	00008067          	ret
    80005b9c:	0ff77713          	andi	a4,a4,255
    80005ba0:	00900793          	li	a5,9
    80005ba4:	fef712e3          	bne	a4,a5,80005b88 <console_handler+0x28>
    80005ba8:	ffffe097          	auipc	ra,0xffffe
    80005bac:	6dc080e7          	jalr	1756(ra) # 80004284 <plic_claim>
    80005bb0:	00a00793          	li	a5,10
    80005bb4:	00050493          	mv	s1,a0
    80005bb8:	02f50c63          	beq	a0,a5,80005bf0 <console_handler+0x90>
    80005bbc:	fc0506e3          	beqz	a0,80005b88 <console_handler+0x28>
    80005bc0:	00050593          	mv	a1,a0
    80005bc4:	00000517          	auipc	a0,0x0
    80005bc8:	6c450513          	addi	a0,a0,1732 # 80006288 <CONSOLE_STATUS+0x278>
    80005bcc:	fffff097          	auipc	ra,0xfffff
    80005bd0:	afc080e7          	jalr	-1284(ra) # 800046c8 <__printf>
    80005bd4:	01013403          	ld	s0,16(sp)
    80005bd8:	01813083          	ld	ra,24(sp)
    80005bdc:	00048513          	mv	a0,s1
    80005be0:	00813483          	ld	s1,8(sp)
    80005be4:	02010113          	addi	sp,sp,32
    80005be8:	ffffe317          	auipc	t1,0xffffe
    80005bec:	6d430067          	jr	1748(t1) # 800042bc <plic_complete>
    80005bf0:	fffff097          	auipc	ra,0xfffff
    80005bf4:	3e0080e7          	jalr	992(ra) # 80004fd0 <uartintr>
    80005bf8:	fddff06f          	j	80005bd4 <console_handler+0x74>
    80005bfc:	00000517          	auipc	a0,0x0
    80005c00:	78c50513          	addi	a0,a0,1932 # 80006388 <digits+0x78>
    80005c04:	fffff097          	auipc	ra,0xfffff
    80005c08:	a68080e7          	jalr	-1432(ra) # 8000466c <panic>
	...
