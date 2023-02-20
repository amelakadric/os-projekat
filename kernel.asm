
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00009117          	auipc	sp,0x9
    80000004:	88813103          	ld	sp,-1912(sp) # 80008888 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	64d030ef          	jal	ra,80003e68 <start>

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
    80001170:	70c010ef          	jal	ra,8000287c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001428:	b44080e7          	jalr	-1212(ra) # 80005f68 <__getc>
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
    80001450:	ae0080e7          	jalr	-1312(ra) # 80005f2c <__putc>
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
    800014cc:	fe010113          	addi	sp,sp,-32
    800014d0:	00113c23          	sd	ra,24(sp)
    800014d4:	00813823          	sd	s0,16(sp)
    800014d8:	00913423          	sd	s1,8(sp)
    800014dc:	01213023          	sd	s2,0(sp)
    800014e0:	02010413          	addi	s0,sp,32
    800014e4:	00050493          	mv	s1,a0
    TCB* tr=TCB::running;
    800014e8:	00007797          	auipc	a5,0x7
    800014ec:	3b07b783          	ld	a5,944(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    800014f0:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800014f4:	01000513          	li	a0,16
    800014f8:	00001097          	auipc	ra,0x1
    800014fc:	218080e7          	jalr	536(ra) # 80002710 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001500:	01253023          	sd	s2,0(a0)
    80001504:	00053423          	sd	zero,8(a0)
        if (tail)
    80001508:	0104b783          	ld	a5,16(s1)
    8000150c:	02078263          	beqz	a5,80001530 <_ZN10Ksemaphore5blockEv+0x64>
        {
            tail->next = elem;
    80001510:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001514:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(tr);
}
    80001518:	01813083          	ld	ra,24(sp)
    8000151c:	01013403          	ld	s0,16(sp)
    80001520:	00813483          	ld	s1,8(sp)
    80001524:	00013903          	ld	s2,0(sp)
    80001528:	02010113          	addi	sp,sp,32
    8000152c:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001530:	00a4b823          	sd	a0,16(s1)
    80001534:	00a4b423          	sd	a0,8(s1)
    80001538:	fe1ff06f          	j	80001518 <_ZN10Ksemaphore5blockEv+0x4c>

000000008000153c <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00113423          	sd	ra,8(sp)
    80001544:	00813023          	sd	s0,0(sp)
    80001548:	01010413          	addi	s0,sp,16
    8000154c:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001550:	00853503          	ld	a0,8(a0)
    80001554:	00050a63          	beqz	a0,80001568 <_ZN10Ksemaphore7unblockEv+0x2c>

        Elem *elem = head;
        head = head->next;
    80001558:	00853703          	ld	a4,8(a0)
    8000155c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001560:	02070063          	beqz	a4,80001580 <_ZN10Ksemaphore7unblockEv+0x44>

        T *ret = elem->data;
    80001564:	00053503          	ld	a0,0(a0)
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    80001568:	00002097          	auipc	ra,0x2
    8000156c:	b0c080e7          	jalr	-1268(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
}
    80001570:	00813083          	ld	ra,8(sp)
    80001574:	00013403          	ld	s0,0(sp)
    80001578:	01010113          	addi	sp,sp,16
    8000157c:	00008067          	ret
        if (!head) { tail = 0; }
    80001580:	0007b823          	sd	zero,16(a5)
    80001584:	fe1ff06f          	j	80001564 <_ZN10Ksemaphore7unblockEv+0x28>

0000000080001588 <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    80001588:	00052783          	lw	a5,0(a0)
    8000158c:	fff7879b          	addiw	a5,a5,-1
    80001590:	00f52023          	sw	a5,0(a0)
    80001594:	02079713          	slli	a4,a5,0x20
    80001598:	00074663          	bltz	a4,800015a4 <_ZN10Ksemaphore4waitEv+0x1c>
        block();
        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 1;
    8000159c:	00100513          	li	a0,1
}
    800015a0:	00008067          	ret
int Ksemaphore::wait() {
    800015a4:	ff010113          	addi	sp,sp,-16
    800015a8:	00113423          	sd	ra,8(sp)
    800015ac:	00813023          	sd	s0,0(sp)
    800015b0:	01010413          	addi	s0,sp,16
        block();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	f18080e7          	jalr	-232(ra) # 800014cc <_ZN10Ksemaphore5blockEv>
        TCB::dispatchWithoutScheduler();
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	700080e7          	jalr	1792(ra) # 80002cbc <_ZN3TCB24dispatchWithoutSchedulerEv>
        return 0;
    800015c4:	00000513          	li	a0,0
}
    800015c8:	00813083          	ld	ra,8(sp)
    800015cc:	00013403          	ld	s0,0(sp)
    800015d0:	01010113          	addi	sp,sp,16
    800015d4:	00008067          	ret

00000000800015d8 <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    800015d8:	00052783          	lw	a5,0(a0)
    800015dc:	0017879b          	addiw	a5,a5,1
    800015e0:	0007871b          	sext.w	a4,a5
    800015e4:	00f52023          	sw	a5,0(a0)
    800015e8:	00e05663          	blez	a4,800015f4 <_ZN10Ksemaphore6signalEv+0x1c>
        unblock();
        return 0;
    }
    return 1;
    800015ec:	00100513          	li	a0,1
}
    800015f0:	00008067          	ret
int Ksemaphore::signal() {
    800015f4:	ff010113          	addi	sp,sp,-16
    800015f8:	00113423          	sd	ra,8(sp)
    800015fc:	00813023          	sd	s0,0(sp)
    80001600:	01010413          	addi	s0,sp,16
        unblock();
    80001604:	00000097          	auipc	ra,0x0
    80001608:	f38080e7          	jalr	-200(ra) # 8000153c <_ZN10Ksemaphore7unblockEv>
        return 0;
    8000160c:	00000513          	li	a0,0
}
    80001610:	00813083          	ld	ra,8(sp)
    80001614:	00013403          	ld	s0,0(sp)
    80001618:	01010113          	addi	sp,sp,16
    8000161c:	00008067          	ret

0000000080001620 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    80001620:	fe010113          	addi	sp,sp,-32
    80001624:	00113c23          	sd	ra,24(sp)
    80001628:	00813823          	sd	s0,16(sp)
    8000162c:	00913423          	sd	s1,8(sp)
    80001630:	02010413          	addi	s0,sp,32
    80001634:	00050493          	mv	s1,a0
    80001638:	0180006f          	j	80001650 <_ZN10Ksemaphore14closeSemaphoreEv+0x30>
    8000163c:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001640:	0007b503          	ld	a0,0(a5)
    TCB* tcb;
    while((tcb=blocked.removeFirst())!= nullptr){
    80001644:	02050263          	beqz	a0,80001668 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
//        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    80001648:	00002097          	auipc	ra,0x2
    8000164c:	a2c080e7          	jalr	-1492(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
        if (!head) { return 0; }
    80001650:	0084b783          	ld	a5,8(s1)
    80001654:	00078a63          	beqz	a5,80001668 <_ZN10Ksemaphore14closeSemaphoreEv+0x48>
        head = head->next;
    80001658:	0087b703          	ld	a4,8(a5)
    8000165c:	00e4b423          	sd	a4,8(s1)
        if (!head) { tail = 0; }
    80001660:	fe0710e3          	bnez	a4,80001640 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    80001664:	fd9ff06f          	j	8000163c <_ZN10Ksemaphore14closeSemaphoreEv+0x1c>
    }

    return 0;
}
    80001668:	00000513          	li	a0,0
    8000166c:	01813083          	ld	ra,24(sp)
    80001670:	01013403          	ld	s0,16(sp)
    80001674:	00813483          	ld	s1,8(sp)
    80001678:	02010113          	addi	sp,sp,32
    8000167c:	00008067          	ret

0000000080001680 <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    80001680:	ff010113          	addi	sp,sp,-16
    80001684:	00113423          	sd	ra,8(sp)
    80001688:	00813023          	sd	s0,0(sp)
    8000168c:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001690:	00002097          	auipc	ra,0x2
    80001694:	c24080e7          	jalr	-988(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001698:	00813083          	ld	ra,8(sp)
    8000169c:	00013403          	ld	s0,0(sp)
    800016a0:	01010113          	addi	sp,sp,16
    800016a4:	00008067          	ret

00000000800016a8 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    800016a8:	ff010113          	addi	sp,sp,-16
    800016ac:	00113423          	sd	ra,8(sp)
    800016b0:	00813023          	sd	s0,0(sp)
    800016b4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    800016b8:	01800513          	li	a0,24
    800016bc:	00002097          	auipc	ra,0x2
    800016c0:	b5c080e7          	jalr	-1188(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
}
    800016c4:	00813083          	ld	ra,8(sp)
    800016c8:	00013403          	ld	s0,0(sp)
    800016cc:	01010113          	addi	sp,sp,16
    800016d0:	00008067          	ret

00000000800016d4 <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    800016d4:	fe010113          	addi	sp,sp,-32
    800016d8:	00113c23          	sd	ra,24(sp)
    800016dc:	00813823          	sd	s0,16(sp)
    800016e0:	00913423          	sd	s1,8(sp)
    800016e4:	02010413          	addi	s0,sp,32
    800016e8:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    800016ec:	01800513          	li	a0,24
    800016f0:	00000097          	auipc	ra,0x0
    800016f4:	fb8080e7          	jalr	-72(ra) # 800016a8 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    800016f8:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016fc:	00053423          	sd	zero,8(a0)
    80001700:	00053823          	sd	zero,16(a0)
}
    80001704:	01813083          	ld	ra,24(sp)
    80001708:	01013403          	ld	s0,16(sp)
    8000170c:	00813483          	ld	s1,8(sp)
    80001710:	02010113          	addi	sp,sp,32
    80001714:	00008067          	ret

0000000080001718 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80001718:	fe010113          	addi	sp,sp,-32
    8000171c:	00113c23          	sd	ra,24(sp)
    80001720:	00813823          	sd	s0,16(sp)
    80001724:	00913423          	sd	s1,8(sp)
    80001728:	01213023          	sd	s2,0(sp)
    8000172c:	02010413          	addi	s0,sp,32
    80001730:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001734:	00100793          	li	a5,1
    80001738:	02a7f863          	bgeu	a5,a0,80001768 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000173c:	00a00793          	li	a5,10
    80001740:	02f577b3          	remu	a5,a0,a5
    80001744:	02078e63          	beqz	a5,80001780 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001748:	fff48513          	addi	a0,s1,-1
    8000174c:	00000097          	auipc	ra,0x0
    80001750:	fcc080e7          	jalr	-52(ra) # 80001718 <_Z9fibonaccim>
    80001754:	00050913          	mv	s2,a0
    80001758:	ffe48513          	addi	a0,s1,-2
    8000175c:	00000097          	auipc	ra,0x0
    80001760:	fbc080e7          	jalr	-68(ra) # 80001718 <_Z9fibonaccim>
    80001764:	00a90533          	add	a0,s2,a0
}
    80001768:	01813083          	ld	ra,24(sp)
    8000176c:	01013403          	ld	s0,16(sp)
    80001770:	00813483          	ld	s1,8(sp)
    80001774:	00013903          	ld	s2,0(sp)
    80001778:	02010113          	addi	sp,sp,32
    8000177c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001780:	00000097          	auipc	ra,0x0
    80001784:	b64080e7          	jalr	-1180(ra) # 800012e4 <_Z15thread_dispatchv>
    80001788:	fc1ff06f          	j	80001748 <_Z9fibonaccim+0x30>

000000008000178c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000178c:	fe010113          	addi	sp,sp,-32
    80001790:	00113c23          	sd	ra,24(sp)
    80001794:	00813823          	sd	s0,16(sp)
    80001798:	00913423          	sd	s1,8(sp)
    8000179c:	01213023          	sd	s2,0(sp)
    800017a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800017a4:	00000913          	li	s2,0
    800017a8:	0380006f          	j	800017e0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800017ac:	00000097          	auipc	ra,0x0
    800017b0:	b38080e7          	jalr	-1224(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800017b4:	00148493          	addi	s1,s1,1
    800017b8:	000027b7          	lui	a5,0x2
    800017bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800017c0:	0097ee63          	bltu	a5,s1,800017dc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800017c4:	00000713          	li	a4,0
    800017c8:	000077b7          	lui	a5,0x7
    800017cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800017d0:	fce7eee3          	bltu	a5,a4,800017ac <_ZN7WorkerA11workerBodyAEPv+0x20>
    800017d4:	00170713          	addi	a4,a4,1
    800017d8:	ff1ff06f          	j	800017c8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800017dc:	00190913          	addi	s2,s2,1
    800017e0:	00900793          	li	a5,9
    800017e4:	0527e063          	bltu	a5,s2,80001824 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800017e8:	00006517          	auipc	a0,0x6
    800017ec:	83850513          	addi	a0,a0,-1992 # 80007020 <CONSOLE_STATUS+0x10>
    800017f0:	00002097          	auipc	ra,0x2
    800017f4:	cb4080e7          	jalr	-844(ra) # 800034a4 <_Z11printStringPKc>
    800017f8:	00000613          	li	a2,0
    800017fc:	00a00593          	li	a1,10
    80001800:	0009051b          	sext.w	a0,s2
    80001804:	00002097          	auipc	ra,0x2
    80001808:	e38080e7          	jalr	-456(ra) # 8000363c <_Z8printIntiii>
    8000180c:	00006517          	auipc	a0,0x6
    80001810:	a4c50513          	addi	a0,a0,-1460 # 80007258 <CONSOLE_STATUS+0x248>
    80001814:	00002097          	auipc	ra,0x2
    80001818:	c90080e7          	jalr	-880(ra) # 800034a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000181c:	00000493          	li	s1,0
    80001820:	f99ff06f          	j	800017b8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001824:	00006517          	auipc	a0,0x6
    80001828:	80450513          	addi	a0,a0,-2044 # 80007028 <CONSOLE_STATUS+0x18>
    8000182c:	00002097          	auipc	ra,0x2
    80001830:	c78080e7          	jalr	-904(ra) # 800034a4 <_Z11printStringPKc>
    finishedA = true;
    80001834:	00100793          	li	a5,1
    80001838:	00007717          	auipc	a4,0x7
    8000183c:	0cf70423          	sb	a5,200(a4) # 80008900 <finishedA>
}
    80001840:	01813083          	ld	ra,24(sp)
    80001844:	01013403          	ld	s0,16(sp)
    80001848:	00813483          	ld	s1,8(sp)
    8000184c:	00013903          	ld	s2,0(sp)
    80001850:	02010113          	addi	sp,sp,32
    80001854:	00008067          	ret

0000000080001858 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001858:	fe010113          	addi	sp,sp,-32
    8000185c:	00113c23          	sd	ra,24(sp)
    80001860:	00813823          	sd	s0,16(sp)
    80001864:	00913423          	sd	s1,8(sp)
    80001868:	01213023          	sd	s2,0(sp)
    8000186c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001870:	00000913          	li	s2,0
    80001874:	0380006f          	j	800018ac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001878:	00000097          	auipc	ra,0x0
    8000187c:	a6c080e7          	jalr	-1428(ra) # 800012e4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001880:	00148493          	addi	s1,s1,1
    80001884:	000027b7          	lui	a5,0x2
    80001888:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000188c:	0097ee63          	bltu	a5,s1,800018a8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001890:	00000713          	li	a4,0
    80001894:	000077b7          	lui	a5,0x7
    80001898:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000189c:	fce7eee3          	bltu	a5,a4,80001878 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800018a0:	00170713          	addi	a4,a4,1
    800018a4:	ff1ff06f          	j	80001894 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800018a8:	00190913          	addi	s2,s2,1
    800018ac:	00f00793          	li	a5,15
    800018b0:	0527e063          	bltu	a5,s2,800018f0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800018b4:	00005517          	auipc	a0,0x5
    800018b8:	78450513          	addi	a0,a0,1924 # 80007038 <CONSOLE_STATUS+0x28>
    800018bc:	00002097          	auipc	ra,0x2
    800018c0:	be8080e7          	jalr	-1048(ra) # 800034a4 <_Z11printStringPKc>
    800018c4:	00000613          	li	a2,0
    800018c8:	00a00593          	li	a1,10
    800018cc:	0009051b          	sext.w	a0,s2
    800018d0:	00002097          	auipc	ra,0x2
    800018d4:	d6c080e7          	jalr	-660(ra) # 8000363c <_Z8printIntiii>
    800018d8:	00006517          	auipc	a0,0x6
    800018dc:	98050513          	addi	a0,a0,-1664 # 80007258 <CONSOLE_STATUS+0x248>
    800018e0:	00002097          	auipc	ra,0x2
    800018e4:	bc4080e7          	jalr	-1084(ra) # 800034a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800018e8:	00000493          	li	s1,0
    800018ec:	f99ff06f          	j	80001884 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800018f0:	00005517          	auipc	a0,0x5
    800018f4:	75050513          	addi	a0,a0,1872 # 80007040 <CONSOLE_STATUS+0x30>
    800018f8:	00002097          	auipc	ra,0x2
    800018fc:	bac080e7          	jalr	-1108(ra) # 800034a4 <_Z11printStringPKc>
    finishedB = true;
    80001900:	00100793          	li	a5,1
    80001904:	00007717          	auipc	a4,0x7
    80001908:	fef70ea3          	sb	a5,-3(a4) # 80008901 <finishedB>
    thread_dispatch();
    8000190c:	00000097          	auipc	ra,0x0
    80001910:	9d8080e7          	jalr	-1576(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001914:	01813083          	ld	ra,24(sp)
    80001918:	01013403          	ld	s0,16(sp)
    8000191c:	00813483          	ld	s1,8(sp)
    80001920:	00013903          	ld	s2,0(sp)
    80001924:	02010113          	addi	sp,sp,32
    80001928:	00008067          	ret

000000008000192c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000192c:	fe010113          	addi	sp,sp,-32
    80001930:	00113c23          	sd	ra,24(sp)
    80001934:	00813823          	sd	s0,16(sp)
    80001938:	00913423          	sd	s1,8(sp)
    8000193c:	01213023          	sd	s2,0(sp)
    80001940:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001944:	00000493          	li	s1,0
    80001948:	0400006f          	j	80001988 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000194c:	00005517          	auipc	a0,0x5
    80001950:	70450513          	addi	a0,a0,1796 # 80007050 <CONSOLE_STATUS+0x40>
    80001954:	00002097          	auipc	ra,0x2
    80001958:	b50080e7          	jalr	-1200(ra) # 800034a4 <_Z11printStringPKc>
    8000195c:	00000613          	li	a2,0
    80001960:	00a00593          	li	a1,10
    80001964:	00048513          	mv	a0,s1
    80001968:	00002097          	auipc	ra,0x2
    8000196c:	cd4080e7          	jalr	-812(ra) # 8000363c <_Z8printIntiii>
    80001970:	00006517          	auipc	a0,0x6
    80001974:	8e850513          	addi	a0,a0,-1816 # 80007258 <CONSOLE_STATUS+0x248>
    80001978:	00002097          	auipc	ra,0x2
    8000197c:	b2c080e7          	jalr	-1236(ra) # 800034a4 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001980:	0014849b          	addiw	s1,s1,1
    80001984:	0ff4f493          	andi	s1,s1,255
    80001988:	00200793          	li	a5,2
    8000198c:	fc97f0e3          	bgeu	a5,s1,8000194c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001990:	00005517          	auipc	a0,0x5
    80001994:	6c850513          	addi	a0,a0,1736 # 80007058 <CONSOLE_STATUS+0x48>
    80001998:	00002097          	auipc	ra,0x2
    8000199c:	b0c080e7          	jalr	-1268(ra) # 800034a4 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800019a0:	00700313          	li	t1,7
    thread_dispatch();
    800019a4:	00000097          	auipc	ra,0x0
    800019a8:	940080e7          	jalr	-1728(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800019ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800019b0:	00005517          	auipc	a0,0x5
    800019b4:	6b850513          	addi	a0,a0,1720 # 80007068 <CONSOLE_STATUS+0x58>
    800019b8:	00002097          	auipc	ra,0x2
    800019bc:	aec080e7          	jalr	-1300(ra) # 800034a4 <_Z11printStringPKc>
    800019c0:	00000613          	li	a2,0
    800019c4:	00a00593          	li	a1,10
    800019c8:	0009051b          	sext.w	a0,s2
    800019cc:	00002097          	auipc	ra,0x2
    800019d0:	c70080e7          	jalr	-912(ra) # 8000363c <_Z8printIntiii>
    800019d4:	00006517          	auipc	a0,0x6
    800019d8:	88450513          	addi	a0,a0,-1916 # 80007258 <CONSOLE_STATUS+0x248>
    800019dc:	00002097          	auipc	ra,0x2
    800019e0:	ac8080e7          	jalr	-1336(ra) # 800034a4 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800019e4:	00c00513          	li	a0,12
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	d30080e7          	jalr	-720(ra) # 80001718 <_Z9fibonaccim>
    800019f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800019f4:	00005517          	auipc	a0,0x5
    800019f8:	67c50513          	addi	a0,a0,1660 # 80007070 <CONSOLE_STATUS+0x60>
    800019fc:	00002097          	auipc	ra,0x2
    80001a00:	aa8080e7          	jalr	-1368(ra) # 800034a4 <_Z11printStringPKc>
    80001a04:	00000613          	li	a2,0
    80001a08:	00a00593          	li	a1,10
    80001a0c:	0009051b          	sext.w	a0,s2
    80001a10:	00002097          	auipc	ra,0x2
    80001a14:	c2c080e7          	jalr	-980(ra) # 8000363c <_Z8printIntiii>
    80001a18:	00006517          	auipc	a0,0x6
    80001a1c:	84050513          	addi	a0,a0,-1984 # 80007258 <CONSOLE_STATUS+0x248>
    80001a20:	00002097          	auipc	ra,0x2
    80001a24:	a84080e7          	jalr	-1404(ra) # 800034a4 <_Z11printStringPKc>
    80001a28:	0400006f          	j	80001a68 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80001a2c:	00005517          	auipc	a0,0x5
    80001a30:	62450513          	addi	a0,a0,1572 # 80007050 <CONSOLE_STATUS+0x40>
    80001a34:	00002097          	auipc	ra,0x2
    80001a38:	a70080e7          	jalr	-1424(ra) # 800034a4 <_Z11printStringPKc>
    80001a3c:	00000613          	li	a2,0
    80001a40:	00a00593          	li	a1,10
    80001a44:	00048513          	mv	a0,s1
    80001a48:	00002097          	auipc	ra,0x2
    80001a4c:	bf4080e7          	jalr	-1036(ra) # 8000363c <_Z8printIntiii>
    80001a50:	00006517          	auipc	a0,0x6
    80001a54:	80850513          	addi	a0,a0,-2040 # 80007258 <CONSOLE_STATUS+0x248>
    80001a58:	00002097          	auipc	ra,0x2
    80001a5c:	a4c080e7          	jalr	-1460(ra) # 800034a4 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001a60:	0014849b          	addiw	s1,s1,1
    80001a64:	0ff4f493          	andi	s1,s1,255
    80001a68:	00500793          	li	a5,5
    80001a6c:	fc97f0e3          	bgeu	a5,s1,80001a2c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80001a70:	00005517          	auipc	a0,0x5
    80001a74:	5b850513          	addi	a0,a0,1464 # 80007028 <CONSOLE_STATUS+0x18>
    80001a78:	00002097          	auipc	ra,0x2
    80001a7c:	a2c080e7          	jalr	-1492(ra) # 800034a4 <_Z11printStringPKc>
    finishedC = true;
    80001a80:	00100793          	li	a5,1
    80001a84:	00007717          	auipc	a4,0x7
    80001a88:	e6f70f23          	sb	a5,-386(a4) # 80008902 <finishedC>
    thread_dispatch();
    80001a8c:	00000097          	auipc	ra,0x0
    80001a90:	858080e7          	jalr	-1960(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001a94:	01813083          	ld	ra,24(sp)
    80001a98:	01013403          	ld	s0,16(sp)
    80001a9c:	00813483          	ld	s1,8(sp)
    80001aa0:	00013903          	ld	s2,0(sp)
    80001aa4:	02010113          	addi	sp,sp,32
    80001aa8:	00008067          	ret

0000000080001aac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    80001aac:	fe010113          	addi	sp,sp,-32
    80001ab0:	00113c23          	sd	ra,24(sp)
    80001ab4:	00813823          	sd	s0,16(sp)
    80001ab8:	00913423          	sd	s1,8(sp)
    80001abc:	01213023          	sd	s2,0(sp)
    80001ac0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001ac4:	00a00493          	li	s1,10
    80001ac8:	0400006f          	j	80001b08 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001acc:	00005517          	auipc	a0,0x5
    80001ad0:	5b450513          	addi	a0,a0,1460 # 80007080 <CONSOLE_STATUS+0x70>
    80001ad4:	00002097          	auipc	ra,0x2
    80001ad8:	9d0080e7          	jalr	-1584(ra) # 800034a4 <_Z11printStringPKc>
    80001adc:	00000613          	li	a2,0
    80001ae0:	00a00593          	li	a1,10
    80001ae4:	00048513          	mv	a0,s1
    80001ae8:	00002097          	auipc	ra,0x2
    80001aec:	b54080e7          	jalr	-1196(ra) # 8000363c <_Z8printIntiii>
    80001af0:	00005517          	auipc	a0,0x5
    80001af4:	76850513          	addi	a0,a0,1896 # 80007258 <CONSOLE_STATUS+0x248>
    80001af8:	00002097          	auipc	ra,0x2
    80001afc:	9ac080e7          	jalr	-1620(ra) # 800034a4 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001b00:	0014849b          	addiw	s1,s1,1
    80001b04:	0ff4f493          	andi	s1,s1,255
    80001b08:	00c00793          	li	a5,12
    80001b0c:	fc97f0e3          	bgeu	a5,s1,80001acc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001b10:	00005517          	auipc	a0,0x5
    80001b14:	57850513          	addi	a0,a0,1400 # 80007088 <CONSOLE_STATUS+0x78>
    80001b18:	00002097          	auipc	ra,0x2
    80001b1c:	98c080e7          	jalr	-1652(ra) # 800034a4 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001b20:	00500313          	li	t1,5
    thread_dispatch();
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	7c0080e7          	jalr	1984(ra) # 800012e4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    80001b2c:	01000513          	li	a0,16
    80001b30:	00000097          	auipc	ra,0x0
    80001b34:	be8080e7          	jalr	-1048(ra) # 80001718 <_Z9fibonaccim>
    80001b38:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80001b3c:	00005517          	auipc	a0,0x5
    80001b40:	55c50513          	addi	a0,a0,1372 # 80007098 <CONSOLE_STATUS+0x88>
    80001b44:	00002097          	auipc	ra,0x2
    80001b48:	960080e7          	jalr	-1696(ra) # 800034a4 <_Z11printStringPKc>
    80001b4c:	00000613          	li	a2,0
    80001b50:	00a00593          	li	a1,10
    80001b54:	0009051b          	sext.w	a0,s2
    80001b58:	00002097          	auipc	ra,0x2
    80001b5c:	ae4080e7          	jalr	-1308(ra) # 8000363c <_Z8printIntiii>
    80001b60:	00005517          	auipc	a0,0x5
    80001b64:	6f850513          	addi	a0,a0,1784 # 80007258 <CONSOLE_STATUS+0x248>
    80001b68:	00002097          	auipc	ra,0x2
    80001b6c:	93c080e7          	jalr	-1732(ra) # 800034a4 <_Z11printStringPKc>
    80001b70:	0400006f          	j	80001bb0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001b74:	00005517          	auipc	a0,0x5
    80001b78:	50c50513          	addi	a0,a0,1292 # 80007080 <CONSOLE_STATUS+0x70>
    80001b7c:	00002097          	auipc	ra,0x2
    80001b80:	928080e7          	jalr	-1752(ra) # 800034a4 <_Z11printStringPKc>
    80001b84:	00000613          	li	a2,0
    80001b88:	00a00593          	li	a1,10
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00002097          	auipc	ra,0x2
    80001b94:	aac080e7          	jalr	-1364(ra) # 8000363c <_Z8printIntiii>
    80001b98:	00005517          	auipc	a0,0x5
    80001b9c:	6c050513          	addi	a0,a0,1728 # 80007258 <CONSOLE_STATUS+0x248>
    80001ba0:	00002097          	auipc	ra,0x2
    80001ba4:	904080e7          	jalr	-1788(ra) # 800034a4 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001ba8:	0014849b          	addiw	s1,s1,1
    80001bac:	0ff4f493          	andi	s1,s1,255
    80001bb0:	00f00793          	li	a5,15
    80001bb4:	fc97f0e3          	bgeu	a5,s1,80001b74 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    80001bb8:	00005517          	auipc	a0,0x5
    80001bbc:	4f050513          	addi	a0,a0,1264 # 800070a8 <CONSOLE_STATUS+0x98>
    80001bc0:	00002097          	auipc	ra,0x2
    80001bc4:	8e4080e7          	jalr	-1820(ra) # 800034a4 <_Z11printStringPKc>
    finishedD = true;
    80001bc8:	00100793          	li	a5,1
    80001bcc:	00007717          	auipc	a4,0x7
    80001bd0:	d2f70ba3          	sb	a5,-713(a4) # 80008903 <finishedD>
    thread_dispatch();
    80001bd4:	fffff097          	auipc	ra,0xfffff
    80001bd8:	710080e7          	jalr	1808(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001bdc:	01813083          	ld	ra,24(sp)
    80001be0:	01013403          	ld	s0,16(sp)
    80001be4:	00813483          	ld	s1,8(sp)
    80001be8:	00013903          	ld	s2,0(sp)
    80001bec:	02010113          	addi	sp,sp,32
    80001bf0:	00008067          	ret

0000000080001bf4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    80001bf4:	fc010113          	addi	sp,sp,-64
    80001bf8:	02113c23          	sd	ra,56(sp)
    80001bfc:	02813823          	sd	s0,48(sp)
    80001c00:	02913423          	sd	s1,40(sp)
    80001c04:	03213023          	sd	s2,32(sp)
    80001c08:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    80001c0c:	01000513          	li	a0,16
    80001c10:	00001097          	auipc	ra,0x1
    80001c14:	b00080e7          	jalr	-1280(ra) # 80002710 <_Znwm>
    80001c18:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    80001c1c:	00001097          	auipc	ra,0x1
    80001c20:	9b4080e7          	jalr	-1612(ra) # 800025d0 <_ZN6ThreadC1Ev>
    80001c24:	00007797          	auipc	a5,0x7
    80001c28:	b4c78793          	addi	a5,a5,-1204 # 80008770 <_ZTV7WorkerA+0x10>
    80001c2c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001c30:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001c34:	00005517          	auipc	a0,0x5
    80001c38:	48450513          	addi	a0,a0,1156 # 800070b8 <CONSOLE_STATUS+0xa8>
    80001c3c:	00002097          	auipc	ra,0x2
    80001c40:	868080e7          	jalr	-1944(ra) # 800034a4 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001c44:	01000513          	li	a0,16
    80001c48:	00001097          	auipc	ra,0x1
    80001c4c:	ac8080e7          	jalr	-1336(ra) # 80002710 <_Znwm>
    80001c50:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001c54:	00001097          	auipc	ra,0x1
    80001c58:	97c080e7          	jalr	-1668(ra) # 800025d0 <_ZN6ThreadC1Ev>
    80001c5c:	00007797          	auipc	a5,0x7
    80001c60:	b3c78793          	addi	a5,a5,-1220 # 80008798 <_ZTV7WorkerB+0x10>
    80001c64:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001c68:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    80001c6c:	00005517          	auipc	a0,0x5
    80001c70:	46450513          	addi	a0,a0,1124 # 800070d0 <CONSOLE_STATUS+0xc0>
    80001c74:	00002097          	auipc	ra,0x2
    80001c78:	830080e7          	jalr	-2000(ra) # 800034a4 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    80001c7c:	01000513          	li	a0,16
    80001c80:	00001097          	auipc	ra,0x1
    80001c84:	a90080e7          	jalr	-1392(ra) # 80002710 <_Znwm>
    80001c88:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    80001c8c:	00001097          	auipc	ra,0x1
    80001c90:	944080e7          	jalr	-1724(ra) # 800025d0 <_ZN6ThreadC1Ev>
    80001c94:	00007797          	auipc	a5,0x7
    80001c98:	b2c78793          	addi	a5,a5,-1236 # 800087c0 <_ZTV7WorkerC+0x10>
    80001c9c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    80001ca0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    80001ca4:	00005517          	auipc	a0,0x5
    80001ca8:	44450513          	addi	a0,a0,1092 # 800070e8 <CONSOLE_STATUS+0xd8>
    80001cac:	00001097          	auipc	ra,0x1
    80001cb0:	7f8080e7          	jalr	2040(ra) # 800034a4 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    80001cb4:	01000513          	li	a0,16
    80001cb8:	00001097          	auipc	ra,0x1
    80001cbc:	a58080e7          	jalr	-1448(ra) # 80002710 <_Znwm>
    80001cc0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	90c080e7          	jalr	-1780(ra) # 800025d0 <_ZN6ThreadC1Ev>
    80001ccc:	00007797          	auipc	a5,0x7
    80001cd0:	b1c78793          	addi	a5,a5,-1252 # 800087e8 <_ZTV7WorkerD+0x10>
    80001cd4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    80001cd8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    80001cdc:	00005517          	auipc	a0,0x5
    80001ce0:	42450513          	addi	a0,a0,1060 # 80007100 <CONSOLE_STATUS+0xf0>
    80001ce4:	00001097          	auipc	ra,0x1
    80001ce8:	7c0080e7          	jalr	1984(ra) # 800034a4 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    80001cec:	00000493          	li	s1,0
    80001cf0:	00300793          	li	a5,3
    80001cf4:	0297c663          	blt	a5,s1,80001d20 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    80001cf8:	00349793          	slli	a5,s1,0x3
    80001cfc:	fe040713          	addi	a4,s0,-32
    80001d00:	00f707b3          	add	a5,a4,a5
    80001d04:	fe07b503          	ld	a0,-32(a5)
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	838080e7          	jalr	-1992(ra) # 80002540 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001d10:	0014849b          	addiw	s1,s1,1
    80001d14:	fddff06f          	j	80001cf0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001d18:	00001097          	auipc	ra,0x1
    80001d1c:	858080e7          	jalr	-1960(ra) # 80002570 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001d20:	00007797          	auipc	a5,0x7
    80001d24:	be07c783          	lbu	a5,-1056(a5) # 80008900 <finishedA>
    80001d28:	fe0788e3          	beqz	a5,80001d18 <_Z20Threads_CPP_API_testv+0x124>
    80001d2c:	00007797          	auipc	a5,0x7
    80001d30:	bd57c783          	lbu	a5,-1067(a5) # 80008901 <finishedB>
    80001d34:	fe0782e3          	beqz	a5,80001d18 <_Z20Threads_CPP_API_testv+0x124>
    80001d38:	00007797          	auipc	a5,0x7
    80001d3c:	bca7c783          	lbu	a5,-1078(a5) # 80008902 <finishedC>
    80001d40:	fc078ce3          	beqz	a5,80001d18 <_Z20Threads_CPP_API_testv+0x124>
    80001d44:	00007797          	auipc	a5,0x7
    80001d48:	bbf7c783          	lbu	a5,-1089(a5) # 80008903 <finishedD>
    80001d4c:	fc0786e3          	beqz	a5,80001d18 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001d50:	fc040493          	addi	s1,s0,-64
    80001d54:	0080006f          	j	80001d5c <_Z20Threads_CPP_API_testv+0x168>
    80001d58:	00848493          	addi	s1,s1,8
    80001d5c:	fe040793          	addi	a5,s0,-32
    80001d60:	08f48663          	beq	s1,a5,80001dec <_Z20Threads_CPP_API_testv+0x1f8>
    80001d64:	0004b503          	ld	a0,0(s1)
    80001d68:	fe0508e3          	beqz	a0,80001d58 <_Z20Threads_CPP_API_testv+0x164>
    80001d6c:	00053783          	ld	a5,0(a0)
    80001d70:	0087b783          	ld	a5,8(a5)
    80001d74:	000780e7          	jalr	a5
    80001d78:	fe1ff06f          	j	80001d58 <_Z20Threads_CPP_API_testv+0x164>
    80001d7c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001d80:	00048513          	mv	a0,s1
    80001d84:	00001097          	auipc	ra,0x1
    80001d88:	9dc080e7          	jalr	-1572(ra) # 80002760 <_ZdlPv>
    80001d8c:	00090513          	mv	a0,s2
    80001d90:	00008097          	auipc	ra,0x8
    80001d94:	ca8080e7          	jalr	-856(ra) # 80009a38 <_Unwind_Resume>
    80001d98:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001d9c:	00048513          	mv	a0,s1
    80001da0:	00001097          	auipc	ra,0x1
    80001da4:	9c0080e7          	jalr	-1600(ra) # 80002760 <_ZdlPv>
    80001da8:	00090513          	mv	a0,s2
    80001dac:	00008097          	auipc	ra,0x8
    80001db0:	c8c080e7          	jalr	-884(ra) # 80009a38 <_Unwind_Resume>
    80001db4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001db8:	00048513          	mv	a0,s1
    80001dbc:	00001097          	auipc	ra,0x1
    80001dc0:	9a4080e7          	jalr	-1628(ra) # 80002760 <_ZdlPv>
    80001dc4:	00090513          	mv	a0,s2
    80001dc8:	00008097          	auipc	ra,0x8
    80001dcc:	c70080e7          	jalr	-912(ra) # 80009a38 <_Unwind_Resume>
    80001dd0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001dd4:	00048513          	mv	a0,s1
    80001dd8:	00001097          	auipc	ra,0x1
    80001ddc:	988080e7          	jalr	-1656(ra) # 80002760 <_ZdlPv>
    80001de0:	00090513          	mv	a0,s2
    80001de4:	00008097          	auipc	ra,0x8
    80001de8:	c54080e7          	jalr	-940(ra) # 80009a38 <_Unwind_Resume>
}
    80001dec:	03813083          	ld	ra,56(sp)
    80001df0:	03013403          	ld	s0,48(sp)
    80001df4:	02813483          	ld	s1,40(sp)
    80001df8:	02013903          	ld	s2,32(sp)
    80001dfc:	04010113          	addi	sp,sp,64
    80001e00:	00008067          	ret

0000000080001e04 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001e04:	ff010113          	addi	sp,sp,-16
    80001e08:	00113423          	sd	ra,8(sp)
    80001e0c:	00813023          	sd	s0,0(sp)
    80001e10:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001e14:	00000097          	auipc	ra,0x0
    80001e18:	de0080e7          	jalr	-544(ra) # 80001bf4 <_Z20Threads_CPP_API_testv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta
//
    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001e1c:	00813083          	ld	ra,8(sp)
    80001e20:	00013403          	ld	s0,0(sp)
    80001e24:	01010113          	addi	sp,sp,16
    80001e28:	00008067          	ret

0000000080001e2c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001e2c:	ff010113          	addi	sp,sp,-16
    80001e30:	00113423          	sd	ra,8(sp)
    80001e34:	00813023          	sd	s0,0(sp)
    80001e38:	01010413          	addi	s0,sp,16
    80001e3c:	00007797          	auipc	a5,0x7
    80001e40:	93478793          	addi	a5,a5,-1740 # 80008770 <_ZTV7WorkerA+0x10>
    80001e44:	00f53023          	sd	a5,0(a0)
    80001e48:	00000097          	auipc	ra,0x0
    80001e4c:	6a8080e7          	jalr	1704(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001e50:	00813083          	ld	ra,8(sp)
    80001e54:	00013403          	ld	s0,0(sp)
    80001e58:	01010113          	addi	sp,sp,16
    80001e5c:	00008067          	ret

0000000080001e60 <_ZN7WorkerAD0Ev>:
    80001e60:	fe010113          	addi	sp,sp,-32
    80001e64:	00113c23          	sd	ra,24(sp)
    80001e68:	00813823          	sd	s0,16(sp)
    80001e6c:	00913423          	sd	s1,8(sp)
    80001e70:	02010413          	addi	s0,sp,32
    80001e74:	00050493          	mv	s1,a0
    80001e78:	00007797          	auipc	a5,0x7
    80001e7c:	8f878793          	addi	a5,a5,-1800 # 80008770 <_ZTV7WorkerA+0x10>
    80001e80:	00f53023          	sd	a5,0(a0)
    80001e84:	00000097          	auipc	ra,0x0
    80001e88:	66c080e7          	jalr	1644(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001e8c:	00048513          	mv	a0,s1
    80001e90:	00001097          	auipc	ra,0x1
    80001e94:	8d0080e7          	jalr	-1840(ra) # 80002760 <_ZdlPv>
    80001e98:	01813083          	ld	ra,24(sp)
    80001e9c:	01013403          	ld	s0,16(sp)
    80001ea0:	00813483          	ld	s1,8(sp)
    80001ea4:	02010113          	addi	sp,sp,32
    80001ea8:	00008067          	ret

0000000080001eac <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001eac:	ff010113          	addi	sp,sp,-16
    80001eb0:	00113423          	sd	ra,8(sp)
    80001eb4:	00813023          	sd	s0,0(sp)
    80001eb8:	01010413          	addi	s0,sp,16
    80001ebc:	00007797          	auipc	a5,0x7
    80001ec0:	8dc78793          	addi	a5,a5,-1828 # 80008798 <_ZTV7WorkerB+0x10>
    80001ec4:	00f53023          	sd	a5,0(a0)
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	628080e7          	jalr	1576(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001ed0:	00813083          	ld	ra,8(sp)
    80001ed4:	00013403          	ld	s0,0(sp)
    80001ed8:	01010113          	addi	sp,sp,16
    80001edc:	00008067          	ret

0000000080001ee0 <_ZN7WorkerBD0Ev>:
    80001ee0:	fe010113          	addi	sp,sp,-32
    80001ee4:	00113c23          	sd	ra,24(sp)
    80001ee8:	00813823          	sd	s0,16(sp)
    80001eec:	00913423          	sd	s1,8(sp)
    80001ef0:	02010413          	addi	s0,sp,32
    80001ef4:	00050493          	mv	s1,a0
    80001ef8:	00007797          	auipc	a5,0x7
    80001efc:	8a078793          	addi	a5,a5,-1888 # 80008798 <_ZTV7WorkerB+0x10>
    80001f00:	00f53023          	sd	a5,0(a0)
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	5ec080e7          	jalr	1516(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001f0c:	00048513          	mv	a0,s1
    80001f10:	00001097          	auipc	ra,0x1
    80001f14:	850080e7          	jalr	-1968(ra) # 80002760 <_ZdlPv>
    80001f18:	01813083          	ld	ra,24(sp)
    80001f1c:	01013403          	ld	s0,16(sp)
    80001f20:	00813483          	ld	s1,8(sp)
    80001f24:	02010113          	addi	sp,sp,32
    80001f28:	00008067          	ret

0000000080001f2c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    80001f3c:	00007797          	auipc	a5,0x7
    80001f40:	88478793          	addi	a5,a5,-1916 # 800087c0 <_ZTV7WorkerC+0x10>
    80001f44:	00f53023          	sd	a5,0(a0)
    80001f48:	00000097          	auipc	ra,0x0
    80001f4c:	5a8080e7          	jalr	1448(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001f50:	00813083          	ld	ra,8(sp)
    80001f54:	00013403          	ld	s0,0(sp)
    80001f58:	01010113          	addi	sp,sp,16
    80001f5c:	00008067          	ret

0000000080001f60 <_ZN7WorkerCD0Ev>:
    80001f60:	fe010113          	addi	sp,sp,-32
    80001f64:	00113c23          	sd	ra,24(sp)
    80001f68:	00813823          	sd	s0,16(sp)
    80001f6c:	00913423          	sd	s1,8(sp)
    80001f70:	02010413          	addi	s0,sp,32
    80001f74:	00050493          	mv	s1,a0
    80001f78:	00007797          	auipc	a5,0x7
    80001f7c:	84878793          	addi	a5,a5,-1976 # 800087c0 <_ZTV7WorkerC+0x10>
    80001f80:	00f53023          	sd	a5,0(a0)
    80001f84:	00000097          	auipc	ra,0x0
    80001f88:	56c080e7          	jalr	1388(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001f8c:	00048513          	mv	a0,s1
    80001f90:	00000097          	auipc	ra,0x0
    80001f94:	7d0080e7          	jalr	2000(ra) # 80002760 <_ZdlPv>
    80001f98:	01813083          	ld	ra,24(sp)
    80001f9c:	01013403          	ld	s0,16(sp)
    80001fa0:	00813483          	ld	s1,8(sp)
    80001fa4:	02010113          	addi	sp,sp,32
    80001fa8:	00008067          	ret

0000000080001fac <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001fac:	ff010113          	addi	sp,sp,-16
    80001fb0:	00113423          	sd	ra,8(sp)
    80001fb4:	00813023          	sd	s0,0(sp)
    80001fb8:	01010413          	addi	s0,sp,16
    80001fbc:	00007797          	auipc	a5,0x7
    80001fc0:	82c78793          	addi	a5,a5,-2004 # 800087e8 <_ZTV7WorkerD+0x10>
    80001fc4:	00f53023          	sd	a5,0(a0)
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	528080e7          	jalr	1320(ra) # 800024f0 <_ZN6ThreadD1Ev>
    80001fd0:	00813083          	ld	ra,8(sp)
    80001fd4:	00013403          	ld	s0,0(sp)
    80001fd8:	01010113          	addi	sp,sp,16
    80001fdc:	00008067          	ret

0000000080001fe0 <_ZN7WorkerDD0Ev>:
    80001fe0:	fe010113          	addi	sp,sp,-32
    80001fe4:	00113c23          	sd	ra,24(sp)
    80001fe8:	00813823          	sd	s0,16(sp)
    80001fec:	00913423          	sd	s1,8(sp)
    80001ff0:	02010413          	addi	s0,sp,32
    80001ff4:	00050493          	mv	s1,a0
    80001ff8:	00006797          	auipc	a5,0x6
    80001ffc:	7f078793          	addi	a5,a5,2032 # 800087e8 <_ZTV7WorkerD+0x10>
    80002000:	00f53023          	sd	a5,0(a0)
    80002004:	00000097          	auipc	ra,0x0
    80002008:	4ec080e7          	jalr	1260(ra) # 800024f0 <_ZN6ThreadD1Ev>
    8000200c:	00048513          	mv	a0,s1
    80002010:	00000097          	auipc	ra,0x0
    80002014:	750080e7          	jalr	1872(ra) # 80002760 <_ZdlPv>
    80002018:	01813083          	ld	ra,24(sp)
    8000201c:	01013403          	ld	s0,16(sp)
    80002020:	00813483          	ld	s1,8(sp)
    80002024:	02010113          	addi	sp,sp,32
    80002028:	00008067          	ret

000000008000202c <_ZN7WorkerA3runEv>:
    void run() override {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00113423          	sd	ra,8(sp)
    80002034:	00813023          	sd	s0,0(sp)
    80002038:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    8000203c:	00000593          	li	a1,0
    80002040:	fffff097          	auipc	ra,0xfffff
    80002044:	74c080e7          	jalr	1868(ra) # 8000178c <_ZN7WorkerA11workerBodyAEPv>
    }
    80002048:	00813083          	ld	ra,8(sp)
    8000204c:	00013403          	ld	s0,0(sp)
    80002050:	01010113          	addi	sp,sp,16
    80002054:	00008067          	ret

0000000080002058 <_ZN7WorkerB3runEv>:
    void run() override {
    80002058:	ff010113          	addi	sp,sp,-16
    8000205c:	00113423          	sd	ra,8(sp)
    80002060:	00813023          	sd	s0,0(sp)
    80002064:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80002068:	00000593          	li	a1,0
    8000206c:	fffff097          	auipc	ra,0xfffff
    80002070:	7ec080e7          	jalr	2028(ra) # 80001858 <_ZN7WorkerB11workerBodyBEPv>
    }
    80002074:	00813083          	ld	ra,8(sp)
    80002078:	00013403          	ld	s0,0(sp)
    8000207c:	01010113          	addi	sp,sp,16
    80002080:	00008067          	ret

0000000080002084 <_ZN7WorkerC3runEv>:
    void run() override {
    80002084:	ff010113          	addi	sp,sp,-16
    80002088:	00113423          	sd	ra,8(sp)
    8000208c:	00813023          	sd	s0,0(sp)
    80002090:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80002094:	00000593          	li	a1,0
    80002098:	00000097          	auipc	ra,0x0
    8000209c:	894080e7          	jalr	-1900(ra) # 8000192c <_ZN7WorkerC11workerBodyCEPv>
    }
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN7WorkerD3runEv>:
    void run() override {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    800020c0:	00000593          	li	a1,0
    800020c4:	00000097          	auipc	ra,0x0
    800020c8:	9e8080e7          	jalr	-1560(ra) # 80001aac <_ZN7WorkerD11workerBodyDEPv>
    }
    800020cc:	00813083          	ld	ra,8(sp)
    800020d0:	00013403          	ld	s0,0(sp)
    800020d4:	01010113          	addi	sp,sp,16
    800020d8:	00008067          	ret

00000000800020dc <_Z11workerBodyAPv>:
bool ffinishedC = false;

Ksemaphore* semA;


void workerBodyA(void* arg) {
    800020dc:	fe010113          	addi	sp,sp,-32
    800020e0:	00113c23          	sd	ra,24(sp)
    800020e4:	00813823          	sd	s0,16(sp)
    800020e8:	00913423          	sd	s1,8(sp)
    800020ec:	02010413          	addi	s0,sp,32

//    join(TCB::running);

    for (uint64 i = 0; i < 5; i++) {
    800020f0:	00000493          	li	s1,0
    800020f4:	0300006f          	j	80002124 <_Z11workerBodyAPv+0x48>

        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running)); printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    800020f8:	00168693          	addi	a3,a3,1
    800020fc:	000027b7          	lui	a5,0x2
    80002100:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80002104:	00d7ee63          	bltu	a5,a3,80002120 <_Z11workerBodyAPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80002108:	00000713          	li	a4,0
    8000210c:	000077b7          	lui	a5,0x7
    80002110:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002114:	fee7e2e3          	bltu	a5,a4,800020f8 <_Z11workerBodyAPv+0x1c>
    80002118:	00170713          	addi	a4,a4,1
    8000211c:	ff1ff06f          	j	8000210c <_Z11workerBodyAPv+0x30>
    for (uint64 i = 0; i < 5; i++) {
    80002120:	00148493          	addi	s1,s1,1
    80002124:	00400793          	li	a5,4
    80002128:	0697ea63          	bltu	a5,s1,8000219c <_Z11workerBodyAPv+0xc0>
        printString("A: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running)); printString(" ");
    8000212c:	00005517          	auipc	a0,0x5
    80002130:	ef450513          	addi	a0,a0,-268 # 80007020 <CONSOLE_STATUS+0x10>
    80002134:	00001097          	auipc	ra,0x1
    80002138:	370080e7          	jalr	880(ra) # 800034a4 <_Z11printStringPKc>
    8000213c:	00000613          	li	a2,0
    80002140:	00a00593          	li	a1,10
    80002144:	0004851b          	sext.w	a0,s1
    80002148:	00001097          	auipc	ra,0x1
    8000214c:	4f4080e7          	jalr	1268(ra) # 8000363c <_Z8printIntiii>
    80002150:	00005517          	auipc	a0,0x5
    80002154:	10850513          	addi	a0,a0,264 # 80007258 <CONSOLE_STATUS+0x248>
    80002158:	00001097          	auipc	ra,0x1
    8000215c:	34c080e7          	jalr	844(ra) # 800034a4 <_Z11printStringPKc>
    80002160:	00006797          	auipc	a5,0x6
    80002164:	7387b783          	ld	a5,1848(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002168:	0007b503          	ld	a0,0(a5)
    8000216c:	fffff097          	auipc	ra,0xfffff
    80002170:	2f8080e7          	jalr	760(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002174:	00000613          	li	a2,0
    80002178:	00a00593          	li	a1,10
    8000217c:	00001097          	auipc	ra,0x1
    80002180:	4c0080e7          	jalr	1216(ra) # 8000363c <_Z8printIntiii>
    80002184:	00005517          	auipc	a0,0x5
    80002188:	f9450513          	addi	a0,a0,-108 # 80007118 <CONSOLE_STATUS+0x108>
    8000218c:	00001097          	auipc	ra,0x1
    80002190:	318080e7          	jalr	792(ra) # 800034a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002194:	00000693          	li	a3,0
    80002198:	f65ff06f          	j	800020fc <_Z11workerBodyAPv+0x20>
//            thread_dispatch();
        }
    }
    printString("A finished!\n");
    8000219c:	00005517          	auipc	a0,0x5
    800021a0:	e8c50513          	addi	a0,a0,-372 # 80007028 <CONSOLE_STATUS+0x18>
    800021a4:	00001097          	auipc	ra,0x1
    800021a8:	300080e7          	jalr	768(ra) # 800034a4 <_Z11printStringPKc>
    ffinishedA = true;
    800021ac:	00100793          	li	a5,1
    800021b0:	00006717          	auipc	a4,0x6
    800021b4:	74f70c23          	sb	a5,1880(a4) # 80008908 <ffinishedA>
}
    800021b8:	01813083          	ld	ra,24(sp)
    800021bc:	01013403          	ld	s0,16(sp)
    800021c0:	00813483          	ld	s1,8(sp)
    800021c4:	02010113          	addi	sp,sp,32
    800021c8:	00008067          	ret

00000000800021cc <_Z11workerBodyCPv>:
    }
    printString("B finished!\n");
    ffinishedB = true;
}

void workerBodyC(void* arg) {
    800021cc:	fe010113          	addi	sp,sp,-32
    800021d0:	00113c23          	sd	ra,24(sp)
    800021d4:	00813823          	sd	s0,16(sp)
    800021d8:	00913423          	sd	s1,8(sp)
    800021dc:	02010413          	addi	s0,sp,32

    for (uint64 i = 0; i < 5; i++) {
    800021e0:	00000493          	li	s1,0
    800021e4:	0300006f          	j	80002214 <_Z11workerBodyCPv+0x48>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
        for (uint64 j = 0; j < 10000; j++) {
    800021e8:	00168693          	addi	a3,a3,1
    800021ec:	000027b7          	lui	a5,0x2
    800021f0:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800021f4:	00d7ee63          	bltu	a5,a3,80002210 <_Z11workerBodyCPv+0x44>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800021f8:	00000713          	li	a4,0
    800021fc:	000077b7          	lui	a5,0x7
    80002200:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002204:	fee7e2e3          	bltu	a5,a4,800021e8 <_Z11workerBodyCPv+0x1c>
    80002208:	00170713          	addi	a4,a4,1
    8000220c:	ff1ff06f          	j	800021fc <_Z11workerBodyCPv+0x30>
    for (uint64 i = 0; i < 5; i++) {
    80002210:	00148493          	addi	s1,s1,1
    80002214:	00400793          	li	a5,4
    80002218:	0697ea63          	bltu	a5,s1,8000228c <_Z11workerBodyCPv+0xc0>
        printString("C: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    8000221c:	00005517          	auipc	a0,0x5
    80002220:	e3450513          	addi	a0,a0,-460 # 80007050 <CONSOLE_STATUS+0x40>
    80002224:	00001097          	auipc	ra,0x1
    80002228:	280080e7          	jalr	640(ra) # 800034a4 <_Z11printStringPKc>
    8000222c:	00000613          	li	a2,0
    80002230:	00a00593          	li	a1,10
    80002234:	0004851b          	sext.w	a0,s1
    80002238:	00001097          	auipc	ra,0x1
    8000223c:	404080e7          	jalr	1028(ra) # 8000363c <_Z8printIntiii>
    80002240:	00005517          	auipc	a0,0x5
    80002244:	01850513          	addi	a0,a0,24 # 80007258 <CONSOLE_STATUS+0x248>
    80002248:	00001097          	auipc	ra,0x1
    8000224c:	25c080e7          	jalr	604(ra) # 800034a4 <_Z11printStringPKc>
    80002250:	00006797          	auipc	a5,0x6
    80002254:	6487b783          	ld	a5,1608(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002258:	0007b503          	ld	a0,0(a5)
    8000225c:	fffff097          	auipc	ra,0xfffff
    80002260:	208080e7          	jalr	520(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002264:	00000613          	li	a2,0
    80002268:	00a00593          	li	a1,10
    8000226c:	00001097          	auipc	ra,0x1
    80002270:	3d0080e7          	jalr	976(ra) # 8000363c <_Z8printIntiii>
    80002274:	00005517          	auipc	a0,0x5
    80002278:	ea450513          	addi	a0,a0,-348 # 80007118 <CONSOLE_STATUS+0x108>
    8000227c:	00001097          	auipc	ra,0x1
    80002280:	228080e7          	jalr	552(ra) # 800034a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002284:	00000693          	li	a3,0
    80002288:	f65ff06f          	j	800021ec <_Z11workerBodyCPv+0x20>
//            thread_dispatch();
        }
    }
    printString("C finished!\n");
    8000228c:	00005517          	auipc	a0,0x5
    80002290:	e9450513          	addi	a0,a0,-364 # 80007120 <CONSOLE_STATUS+0x110>
    80002294:	00001097          	auipc	ra,0x1
    80002298:	210080e7          	jalr	528(ra) # 800034a4 <_Z11printStringPKc>
    ffinishedC = true;
    8000229c:	00100793          	li	a5,1
    800022a0:	00006717          	auipc	a4,0x6
    800022a4:	66f704a3          	sb	a5,1641(a4) # 80008909 <ffinishedC>
}
    800022a8:	01813083          	ld	ra,24(sp)
    800022ac:	01013403          	ld	s0,16(sp)
    800022b0:	00813483          	ld	s1,8(sp)
    800022b4:	02010113          	addi	sp,sp,32
    800022b8:	00008067          	ret

00000000800022bc <_Z11workerBodyBPv>:
void workerBodyB(void* arg) {
    800022bc:	fe010113          	addi	sp,sp,-32
    800022c0:	00113c23          	sd	ra,24(sp)
    800022c4:	00813823          	sd	s0,16(sp)
    800022c8:	00913423          	sd	s1,8(sp)
    800022cc:	02010413          	addi	s0,sp,32
    join(TCB::running);
    800022d0:	00006797          	auipc	a5,0x6
    800022d4:	5c87b783          	ld	a5,1480(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    800022d8:	0007b503          	ld	a0,0(a5)
    800022dc:	fffff097          	auipc	ra,0xfffff
    800022e0:	1cc080e7          	jalr	460(ra) # 800014a8 <_Z4joinP3TCB>
    for (uint64 i = 0; i < 5; i++) {
    800022e4:	00000493          	li	s1,0
    800022e8:	0300006f          	j	80002318 <_Z11workerBodyBPv+0x5c>
        for (uint64 j = 0; j < 10000; j++) {
    800022ec:	00168693          	addi	a3,a3,1
    800022f0:	000027b7          	lui	a5,0x2
    800022f4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800022f8:	00d7ee63          	bltu	a5,a3,80002314 <_Z11workerBodyBPv+0x58>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800022fc:	00000713          	li	a4,0
    80002300:	000077b7          	lui	a5,0x7
    80002304:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80002308:	fee7e2e3          	bltu	a5,a4,800022ec <_Z11workerBodyBPv+0x30>
    8000230c:	00170713          	addi	a4,a4,1
    80002310:	ff1ff06f          	j	80002300 <_Z11workerBodyBPv+0x44>
    for (uint64 i = 0; i < 5; i++) {
    80002314:	00148493          	addi	s1,s1,1
    80002318:	00400793          	li	a5,4
    8000231c:	0697ea63          	bltu	a5,s1,80002390 <_Z11workerBodyBPv+0xd4>
        printString("B: i="); printInt(i); printString("\n"); printInt(getThreadId(TCB::running));printString(" ");
    80002320:	00005517          	auipc	a0,0x5
    80002324:	d1850513          	addi	a0,a0,-744 # 80007038 <CONSOLE_STATUS+0x28>
    80002328:	00001097          	auipc	ra,0x1
    8000232c:	17c080e7          	jalr	380(ra) # 800034a4 <_Z11printStringPKc>
    80002330:	00000613          	li	a2,0
    80002334:	00a00593          	li	a1,10
    80002338:	0004851b          	sext.w	a0,s1
    8000233c:	00001097          	auipc	ra,0x1
    80002340:	300080e7          	jalr	768(ra) # 8000363c <_Z8printIntiii>
    80002344:	00005517          	auipc	a0,0x5
    80002348:	f1450513          	addi	a0,a0,-236 # 80007258 <CONSOLE_STATUS+0x248>
    8000234c:	00001097          	auipc	ra,0x1
    80002350:	158080e7          	jalr	344(ra) # 800034a4 <_Z11printStringPKc>
    80002354:	00006797          	auipc	a5,0x6
    80002358:	5447b783          	ld	a5,1348(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000235c:	0007b503          	ld	a0,0(a5)
    80002360:	fffff097          	auipc	ra,0xfffff
    80002364:	104080e7          	jalr	260(ra) # 80001464 <_Z11getThreadIdP3TCB>
    80002368:	00000613          	li	a2,0
    8000236c:	00a00593          	li	a1,10
    80002370:	00001097          	auipc	ra,0x1
    80002374:	2cc080e7          	jalr	716(ra) # 8000363c <_Z8printIntiii>
    80002378:	00005517          	auipc	a0,0x5
    8000237c:	da050513          	addi	a0,a0,-608 # 80007118 <CONSOLE_STATUS+0x108>
    80002380:	00001097          	auipc	ra,0x1
    80002384:	124080e7          	jalr	292(ra) # 800034a4 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80002388:	00000693          	li	a3,0
    8000238c:	f65ff06f          	j	800022f0 <_Z11workerBodyBPv+0x34>
    printString("B finished!\n");
    80002390:	00005517          	auipc	a0,0x5
    80002394:	cb050513          	addi	a0,a0,-848 # 80007040 <CONSOLE_STATUS+0x30>
    80002398:	00001097          	auipc	ra,0x1
    8000239c:	10c080e7          	jalr	268(ra) # 800034a4 <_Z11printStringPKc>
    ffinishedB = true;
    800023a0:	00100793          	li	a5,1
    800023a4:	00006717          	auipc	a4,0x6
    800023a8:	56f70323          	sb	a5,1382(a4) # 8000890a <ffinishedB>
}
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00008067          	ret

00000000800023c0 <main>:


int main() {
    800023c0:	fd010113          	addi	sp,sp,-48
    800023c4:	02113423          	sd	ra,40(sp)
    800023c8:	02813023          	sd	s0,32(sp)
    800023cc:	03010413          	addi	s0,sp,48
    MemoryAllocator::initMemoryAllocator();
    800023d0:	00001097          	auipc	ra,0x1
    800023d4:	074080e7          	jalr	116(ra) # 80003444 <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    800023d8:	00000593          	li	a1,0
    800023dc:	00000513          	li	a0,0
    800023e0:	00001097          	auipc	ra,0x1
    800023e4:	a14080e7          	jalr	-1516(ra) # 80002df4 <_ZN3TCB12createThreadEPFvPvES0_>
    800023e8:	00006797          	auipc	a5,0x6
    800023ec:	4b07b783          	ld	a5,1200(a5) # 80008898 <_GLOBAL_OFFSET_TABLE_+0x30>
    800023f0:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    800023f4:	00006797          	auipc	a5,0x6
    800023f8:	4847b783          	ld	a5,1156(a5) # 80008878 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    800023fc:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80002400:	00200793          	li	a5,2
    80002404:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    thread_t threads[3];
    thread_create(&threads[0], workerBodyA, nullptr);
    80002408:	00000613          	li	a2,0
    8000240c:	00000597          	auipc	a1,0x0
    80002410:	cd058593          	addi	a1,a1,-816 # 800020dc <_Z11workerBodyAPv>
    80002414:	fd840513          	addi	a0,s0,-40
    80002418:	fffff097          	auipc	ra,0xfffff
    8000241c:	e70080e7          	jalr	-400(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80002420:	00005517          	auipc	a0,0x5
    80002424:	c9850513          	addi	a0,a0,-872 # 800070b8 <CONSOLE_STATUS+0xa8>
    80002428:	00001097          	auipc	ra,0x1
    8000242c:	07c080e7          	jalr	124(ra) # 800034a4 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80002430:	00000613          	li	a2,0
    80002434:	00000597          	auipc	a1,0x0
    80002438:	e8858593          	addi	a1,a1,-376 # 800022bc <_Z11workerBodyBPv>
    8000243c:	fe040513          	addi	a0,s0,-32
    80002440:	fffff097          	auipc	ra,0xfffff
    80002444:	e48080e7          	jalr	-440(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80002448:	00005517          	auipc	a0,0x5
    8000244c:	c8850513          	addi	a0,a0,-888 # 800070d0 <CONSOLE_STATUS+0xc0>
    80002450:	00001097          	auipc	ra,0x1
    80002454:	054080e7          	jalr	84(ra) # 800034a4 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80002458:	00000613          	li	a2,0
    8000245c:	00000597          	auipc	a1,0x0
    80002460:	d7058593          	addi	a1,a1,-656 # 800021cc <_Z11workerBodyCPv>
    80002464:	fe840513          	addi	a0,s0,-24
    80002468:	fffff097          	auipc	ra,0xfffff
    8000246c:	e20080e7          	jalr	-480(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80002470:	00005517          	auipc	a0,0x5
    80002474:	c7850513          	addi	a0,a0,-904 # 800070e8 <CONSOLE_STATUS+0xd8>
    80002478:	00001097          	auipc	ra,0x1
    8000247c:	02c080e7          	jalr	44(ra) # 800034a4 <_Z11printStringPKc>

    while (!Scheduler::isEmpty()) {
    80002480:	00001097          	auipc	ra,0x1
    80002484:	ccc080e7          	jalr	-820(ra) # 8000314c <_ZN9Scheduler7isEmptyEv>
    80002488:	00051863          	bnez	a0,80002498 <main+0xd8>
        thread_dispatch();
    8000248c:	fffff097          	auipc	ra,0xfffff
    80002490:	e58080e7          	jalr	-424(ra) # 800012e4 <_Z15thread_dispatchv>
    80002494:	fedff06f          	j	80002480 <main+0xc0>
    }

    TCB::semWaitAllThreads->signal();
    80002498:	00006797          	auipc	a5,0x6
    8000249c:	3f87b783          	ld	a5,1016(a5) # 80008890 <_GLOBAL_OFFSET_TABLE_+0x28>
    800024a0:	0007b503          	ld	a0,0(a5)
    800024a4:	fffff097          	auipc	ra,0xfffff
    800024a8:	134080e7          	jalr	308(ra) # 800015d8 <_ZN10Ksemaphore6signalEv>
    800024ac:	00c0006f          	j	800024b8 <main+0xf8>
    while (!(ffinishedA && ffinishedB && ffinishedC)) {
        thread_dispatch();
    800024b0:	fffff097          	auipc	ra,0xfffff
    800024b4:	e34080e7          	jalr	-460(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!(ffinishedA && ffinishedB && ffinishedC)) {
    800024b8:	00006797          	auipc	a5,0x6
    800024bc:	4507c783          	lbu	a5,1104(a5) # 80008908 <ffinishedA>
    800024c0:	fe0788e3          	beqz	a5,800024b0 <main+0xf0>
    800024c4:	00006797          	auipc	a5,0x6
    800024c8:	4467c783          	lbu	a5,1094(a5) # 8000890a <ffinishedB>
    800024cc:	fe0782e3          	beqz	a5,800024b0 <main+0xf0>
    800024d0:	00006797          	auipc	a5,0x6
    800024d4:	4397c783          	lbu	a5,1081(a5) # 80008909 <ffinishedC>
    800024d8:	fc078ce3          	beqz	a5,800024b0 <main+0xf0>

//    userMain();

    return 0;

}
    800024dc:	00000513          	li	a0,0
    800024e0:	02813083          	ld	ra,40(sp)
    800024e4:	02013403          	ld	s0,32(sp)
    800024e8:	03010113          	addi	sp,sp,48
    800024ec:	00008067          	ret

00000000800024f0 <_ZN6ThreadD1Ev>:
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    800024f0:	ff010113          	addi	sp,sp,-16
    800024f4:	00813423          	sd	s0,8(sp)
    800024f8:	01010413          	addi	s0,sp,16
    800024fc:	00813403          	ld	s0,8(sp)
    80002500:	01010113          	addi	sp,sp,16
    80002504:	00008067          	ret

0000000080002508 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80002508:	ff010113          	addi	sp,sp,-16
    8000250c:	00113423          	sd	ra,8(sp)
    80002510:	00813023          	sd	s0,0(sp)
    80002514:	01010413          	addi	s0,sp,16
    80002518:	00006797          	auipc	a5,0x6
    8000251c:	32878793          	addi	a5,a5,808 # 80008840 <_ZTV9Semaphore+0x10>
    80002520:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80002524:	00853503          	ld	a0,8(a0)
    80002528:	fffff097          	auipc	ra,0xfffff
    8000252c:	e68080e7          	jalr	-408(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80002530:	00813083          	ld	ra,8(sp)
    80002534:	00013403          	ld	s0,0(sp)
    80002538:	01010113          	addi	sp,sp,16
    8000253c:	00008067          	ret

0000000080002540 <_ZN6Thread5startEv>:
int Thread::start (){
    80002540:	ff010113          	addi	sp,sp,-16
    80002544:	00113423          	sd	ra,8(sp)
    80002548:	00813023          	sd	s0,0(sp)
    8000254c:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    80002550:	00850513          	addi	a0,a0,8
    80002554:	fffff097          	auipc	ra,0xfffff
    80002558:	db0080e7          	jalr	-592(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    8000255c:	00000513          	li	a0,0
    80002560:	00813083          	ld	ra,8(sp)
    80002564:	00013403          	ld	s0,0(sp)
    80002568:	01010113          	addi	sp,sp,16
    8000256c:	00008067          	ret

0000000080002570 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80002570:	ff010113          	addi	sp,sp,-16
    80002574:	00113423          	sd	ra,8(sp)
    80002578:	00813023          	sd	s0,0(sp)
    8000257c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80002580:	fffff097          	auipc	ra,0xfffff
    80002584:	d64080e7          	jalr	-668(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80002588:	00813083          	ld	ra,8(sp)
    8000258c:	00013403          	ld	s0,0(sp)
    80002590:	01010113          	addi	sp,sp,16
    80002594:	00008067          	ret

0000000080002598 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80002598:	ff010113          	addi	sp,sp,-16
    8000259c:	00113423          	sd	ra,8(sp)
    800025a0:	00813023          	sd	s0,0(sp)
    800025a4:	01010413          	addi	s0,sp,16
    800025a8:	00006797          	auipc	a5,0x6
    800025ac:	27078793          	addi	a5,a5,624 # 80008818 <_ZTV6Thread+0x10>
    800025b0:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    800025b4:	00850513          	addi	a0,a0,8
    800025b8:	fffff097          	auipc	ra,0xfffff
    800025bc:	d74080e7          	jalr	-652(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    800025c0:	00813083          	ld	ra,8(sp)
    800025c4:	00013403          	ld	s0,0(sp)
    800025c8:	01010113          	addi	sp,sp,16
    800025cc:	00008067          	ret

00000000800025d0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    800025d0:	ff010113          	addi	sp,sp,-16
    800025d4:	00113423          	sd	ra,8(sp)
    800025d8:	00813023          	sd	s0,0(sp)
    800025dc:	01010413          	addi	s0,sp,16
    800025e0:	00006797          	auipc	a5,0x6
    800025e4:	23878793          	addi	a5,a5,568 # 80008818 <_ZTV6Thread+0x10>
    800025e8:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    800025ec:	00050613          	mv	a2,a0
    800025f0:	00000597          	auipc	a1,0x0
    800025f4:	24058593          	addi	a1,a1,576 # 80002830 <_ZN6Thread9myWrapperEPv>
    800025f8:	00850513          	addi	a0,a0,8
    800025fc:	fffff097          	auipc	ra,0xfffff
    80002600:	d30080e7          	jalr	-720(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80002604:	00813083          	ld	ra,8(sp)
    80002608:	00013403          	ld	s0,0(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80002614:	ff010113          	addi	sp,sp,-16
    80002618:	00813423          	sd	s0,8(sp)
    8000261c:	01010413          	addi	s0,sp,16
}
    80002620:	00000513          	li	a0,0
    80002624:	00813403          	ld	s0,8(sp)
    80002628:	01010113          	addi	sp,sp,16
    8000262c:	00008067          	ret

0000000080002630 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80002630:	ff010113          	addi	sp,sp,-16
    80002634:	00113423          	sd	ra,8(sp)
    80002638:	00813023          	sd	s0,0(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00006797          	auipc	a5,0x6
    80002644:	20078793          	addi	a5,a5,512 # 80008840 <_ZTV9Semaphore+0x10>
    80002648:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    8000264c:	00850513          	addi	a0,a0,8
    80002650:	fffff097          	auipc	ra,0xfffff
    80002654:	d10080e7          	jalr	-752(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80002658:	00813083          	ld	ra,8(sp)
    8000265c:	00013403          	ld	s0,0(sp)
    80002660:	01010113          	addi	sp,sp,16
    80002664:	00008067          	ret

0000000080002668 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002668:	ff010113          	addi	sp,sp,-16
    8000266c:	00113423          	sd	ra,8(sp)
    80002670:	00813023          	sd	s0,0(sp)
    80002674:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80002678:	00853503          	ld	a0,8(a0)
    8000267c:	fffff097          	auipc	ra,0xfffff
    80002680:	d40080e7          	jalr	-704(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    80002684:	00813083          	ld	ra,8(sp)
    80002688:	00013403          	ld	s0,0(sp)
    8000268c:	01010113          	addi	sp,sp,16
    80002690:	00008067          	ret

0000000080002694 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80002694:	ff010113          	addi	sp,sp,-16
    80002698:	00113423          	sd	ra,8(sp)
    8000269c:	00813023          	sd	s0,0(sp)
    800026a0:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    800026a4:	00853503          	ld	a0,8(a0)
    800026a8:	fffff097          	auipc	ra,0xfffff
    800026ac:	d40080e7          	jalr	-704(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    800026b0:	00813083          	ld	ra,8(sp)
    800026b4:	00013403          	ld	s0,0(sp)
    800026b8:	01010113          	addi	sp,sp,16
    800026bc:	00008067          	ret

00000000800026c0 <_ZN7Console4getcEv>:

char Console::getc() {
    800026c0:	ff010113          	addi	sp,sp,-16
    800026c4:	00113423          	sd	ra,8(sp)
    800026c8:	00813023          	sd	s0,0(sp)
    800026cc:	01010413          	addi	s0,sp,16
    return __getc();
    800026d0:	00004097          	auipc	ra,0x4
    800026d4:	898080e7          	jalr	-1896(ra) # 80005f68 <__getc>
}
    800026d8:	00813083          	ld	ra,8(sp)
    800026dc:	00013403          	ld	s0,0(sp)
    800026e0:	01010113          	addi	sp,sp,16
    800026e4:	00008067          	ret

00000000800026e8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800026e8:	ff010113          	addi	sp,sp,-16
    800026ec:	00113423          	sd	ra,8(sp)
    800026f0:	00813023          	sd	s0,0(sp)
    800026f4:	01010413          	addi	s0,sp,16
    __putc(c);
    800026f8:	00004097          	auipc	ra,0x4
    800026fc:	834080e7          	jalr	-1996(ra) # 80005f2c <__putc>
}
    80002700:	00813083          	ld	ra,8(sp)
    80002704:	00013403          	ld	s0,0(sp)
    80002708:	01010113          	addi	sp,sp,16
    8000270c:	00008067          	ret

0000000080002710 <_Znwm>:

void *operator new(size_t n)
{
    80002710:	ff010113          	addi	sp,sp,-16
    80002714:	00113423          	sd	ra,8(sp)
    80002718:	00813023          	sd	s0,0(sp)
    8000271c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002720:	00001097          	auipc	ra,0x1
    80002724:	af8080e7          	jalr	-1288(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
//    return mem_alloc(n);
}
    80002728:	00813083          	ld	ra,8(sp)
    8000272c:	00013403          	ld	s0,0(sp)
    80002730:	01010113          	addi	sp,sp,16
    80002734:	00008067          	ret

0000000080002738 <_Znam>:

void *operator new[](size_t n)
{
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00113423          	sd	ra,8(sp)
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002748:	00001097          	auipc	ra,0x1
    8000274c:	ad0080e7          	jalr	-1328(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
//   return mem_alloc(n);
}
    80002750:	00813083          	ld	ra,8(sp)
    80002754:	00013403          	ld	s0,0(sp)
    80002758:	01010113          	addi	sp,sp,16
    8000275c:	00008067          	ret

0000000080002760 <_ZdlPv>:

void operator delete(void *p)
{
    80002760:	ff010113          	addi	sp,sp,-16
    80002764:	00113423          	sd	ra,8(sp)
    80002768:	00813023          	sd	s0,0(sp)
    8000276c:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002770:	00001097          	auipc	ra,0x1
    80002774:	b44080e7          	jalr	-1212(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80002778:	00813083          	ld	ra,8(sp)
    8000277c:	00013403          	ld	s0,0(sp)
    80002780:	01010113          	addi	sp,sp,16
    80002784:	00008067          	ret

0000000080002788 <_ZN6ThreadD0Ev>:
    80002788:	ff010113          	addi	sp,sp,-16
    8000278c:	00113423          	sd	ra,8(sp)
    80002790:	00813023          	sd	s0,0(sp)
    80002794:	01010413          	addi	s0,sp,16
    80002798:	00000097          	auipc	ra,0x0
    8000279c:	fc8080e7          	jalr	-56(ra) # 80002760 <_ZdlPv>
    800027a0:	00813083          	ld	ra,8(sp)
    800027a4:	00013403          	ld	s0,0(sp)
    800027a8:	01010113          	addi	sp,sp,16
    800027ac:	00008067          	ret

00000000800027b0 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    800027b0:	fe010113          	addi	sp,sp,-32
    800027b4:	00113c23          	sd	ra,24(sp)
    800027b8:	00813823          	sd	s0,16(sp)
    800027bc:	00913423          	sd	s1,8(sp)
    800027c0:	02010413          	addi	s0,sp,32
    800027c4:	00050493          	mv	s1,a0
}
    800027c8:	00000097          	auipc	ra,0x0
    800027cc:	d40080e7          	jalr	-704(ra) # 80002508 <_ZN9SemaphoreD1Ev>
    800027d0:	00048513          	mv	a0,s1
    800027d4:	00000097          	auipc	ra,0x0
    800027d8:	f8c080e7          	jalr	-116(ra) # 80002760 <_ZdlPv>
    800027dc:	01813083          	ld	ra,24(sp)
    800027e0:	01013403          	ld	s0,16(sp)
    800027e4:	00813483          	ld	s1,8(sp)
    800027e8:	02010113          	addi	sp,sp,32
    800027ec:	00008067          	ret

00000000800027f0 <_ZdaPv>:

void operator delete[](void *p)
{
    800027f0:	ff010113          	addi	sp,sp,-16
    800027f4:	00113423          	sd	ra,8(sp)
    800027f8:	00813023          	sd	s0,0(sp)
    800027fc:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002800:	00001097          	auipc	ra,0x1
    80002804:	ab4080e7          	jalr	-1356(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80002808:	00813083          	ld	ra,8(sp)
    8000280c:	00013403          	ld	s0,0(sp)
    80002810:	01010113          	addi	sp,sp,16
    80002814:	00008067          	ret

0000000080002818 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    80002818:	ff010113          	addi	sp,sp,-16
    8000281c:	00813423          	sd	s0,8(sp)
    80002820:	01010413          	addi	s0,sp,16
    80002824:	00813403          	ld	s0,8(sp)
    80002828:	01010113          	addi	sp,sp,16
    8000282c:	00008067          	ret

0000000080002830 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80002830:	ff010113          	addi	sp,sp,-16
    80002834:	00113423          	sd	ra,8(sp)
    80002838:	00813023          	sd	s0,0(sp)
    8000283c:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    80002840:	00053783          	ld	a5,0(a0)
    80002844:	0107b783          	ld	a5,16(a5)
    80002848:	000780e7          	jalr	a5
    }
    8000284c:	00813083          	ld	ra,8(sp)
    80002850:	00013403          	ld	s0,0(sp)
    80002854:	01010113          	addi	sp,sp,16
    80002858:	00008067          	ret

000000008000285c <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    8000285c:	ff010113          	addi	sp,sp,-16
    80002860:	00813423          	sd	s0,8(sp)
    80002864:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002868:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    8000286c:	10200073          	sret
}
    80002870:	00813403          	ld	s0,8(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret

000000008000287c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000287c:	fb010113          	addi	sp,sp,-80
    80002880:	04113423          	sd	ra,72(sp)
    80002884:	04813023          	sd	s0,64(sp)
    80002888:	02913c23          	sd	s1,56(sp)
    8000288c:	03213823          	sd	s2,48(sp)
    80002890:	03313423          	sd	s3,40(sp)
    80002894:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002898:	142027f3          	csrr	a5,scause
    8000289c:	faf43823          	sd	a5,-80(s0)
    return scause;
    800028a0:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    800028a4:	ff870693          	addi	a3,a4,-8
    800028a8:	00100793          	li	a5,1
    800028ac:	02d7f863          	bgeu	a5,a3,800028dc <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    800028b0:	fff00793          	li	a5,-1
    800028b4:	03f79793          	slli	a5,a5,0x3f
    800028b8:	00178793          	addi	a5,a5,1
    800028bc:	24f70463          	beq	a4,a5,80002b04 <_ZN5Riscv20handleSupervisorTrapEv+0x288>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    800028c0:	fff00793          	li	a5,-1
    800028c4:	03f79793          	slli	a5,a5,0x3f
    800028c8:	00978793          	addi	a5,a5,9
    800028cc:	0cf71463          	bne	a4,a5,80002994 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    800028d0:	00003097          	auipc	ra,0x3
    800028d4:	6d0080e7          	jalr	1744(ra) # 80005fa0 <console_handler>
    }else
    {
        // unexpected trap cause
    }
    800028d8:	0bc0006f          	j	80002994 <_ZN5Riscv20handleSupervisorTrapEv+0x118>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800028dc:	141027f3          	csrr	a5,sepc
    800028e0:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800028e4:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800028e8:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800028ec:	100027f3          	csrr	a5,sstatus
    800028f0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800028f4:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800028f8:	00050793          	mv	a5,a0
    800028fc:	faf43c23          	sd	a5,-72(s0)
    return a0;
    80002900:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    80002904:	00100713          	li	a4,1
    80002908:	06e78a63          	beq	a5,a4,8000297c <_ZN5Riscv20handleSupervisorTrapEv+0x100>
        else if (a0 == 0x0000000000000002UL){
    8000290c:	00200713          	li	a4,2
    80002910:	0ae78063          	beq	a5,a4,800029b0 <_ZN5Riscv20handleSupervisorTrapEv+0x134>
        else if (a0 == 0x0000000000000011UL){
    80002914:	01100713          	li	a4,17
    80002918:	0ae78663          	beq	a5,a4,800029c4 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        else if (a0 == 0x0000000000000012UL){
    8000291c:	01200713          	li	a4,18
    80002920:	0ce78a63          	beq	a5,a4,800029f4 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
        else if (a0 == 0x0000000000000013UL){
    80002924:	01300713          	li	a4,19
    80002928:	0ce78e63          	beq	a5,a4,80002a04 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
        else if (a0 == 0x0000000000000014UL){
    8000292c:	01400713          	li	a4,20
    80002930:	0ee78663          	beq	a5,a4,80002a1c <_ZN5Riscv20handleSupervisorTrapEv+0x1a0>
        else if (a0 == 0x0000000000000015UL){
    80002934:	01500713          	li	a4,21
    80002938:	0ee78c63          	beq	a5,a4,80002a30 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
        else if (a0 == 0x0000000000000021UL) {
    8000293c:	02100713          	li	a4,33
    80002940:	12e78063          	beq	a5,a4,80002a60 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if (a0 == 0x0000000000000022UL) {
    80002944:	02200713          	li	a4,34
    80002948:	14e78463          	beq	a5,a4,80002a90 <_ZN5Riscv20handleSupervisorTrapEv+0x214>
        else if (a0 == 0x0000000000000023UL) {
    8000294c:	02300713          	li	a4,35
    80002950:	16e78263          	beq	a5,a4,80002ab4 <_ZN5Riscv20handleSupervisorTrapEv+0x238>
        else if (a0 == 0x0000000000000024UL) {
    80002954:	02400713          	li	a4,36
    80002958:	16e78e63          	beq	a5,a4,80002ad4 <_ZN5Riscv20handleSupervisorTrapEv+0x258>
        else if (a0 == 0x0000000000000016UL){
    8000295c:	01600713          	li	a4,22
    80002960:	18e78a63          	beq	a5,a4,80002af4 <_ZN5Riscv20handleSupervisorTrapEv+0x278>
        else if (a0 == 0x0000000000000017UL){
    80002964:	01700713          	li	a4,23
    80002968:	02e79263          	bne	a5,a4,8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
    8000296c:	00058513          	mv	a0,a1
            t->join();
    80002970:	00000097          	auipc	ra,0x0
    80002974:	3dc080e7          	jalr	988(ra) # 80002d4c <_ZN3TCB4joinEv>
    80002978:	0140006f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    8000297c:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    80002980:	00001097          	auipc	ra,0x1
    80002984:	898080e7          	jalr	-1896(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002988:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    8000298c:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002990:	14149073          	csrw	sepc,s1
    80002994:	04813083          	ld	ra,72(sp)
    80002998:	04013403          	ld	s0,64(sp)
    8000299c:	03813483          	ld	s1,56(sp)
    800029a0:	03013903          	ld	s2,48(sp)
    800029a4:	02813983          	ld	s3,40(sp)
    800029a8:	05010113          	addi	sp,sp,80
    800029ac:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800029b0:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    800029b4:	00001097          	auipc	ra,0x1
    800029b8:	900080e7          	jalr	-1792(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800029bc:	00050513          	mv	a0,a0
    800029c0:	fcdff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800029c4:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800029c8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800029cc:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    800029d0:	00000097          	auipc	ra,0x0
    800029d4:	424080e7          	jalr	1060(ra) # 80002df4 <_ZN3TCB12createThreadEPFvPvES0_>
    800029d8:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800029dc:	00098863          	beqz	s3,800029ec <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    800029e0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800029e4:	00078513          	mv	a0,a5
    800029e8:	fa5ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            a0=(tcb!= nullptr)?0 : -1;
    800029ec:	fff00793          	li	a5,-1
    800029f0:	ff5ff06f          	j	800029e4 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            a=TCB::exitThread();
    800029f4:	00000097          	auipc	ra,0x0
    800029f8:	28c080e7          	jalr	652(ra) # 80002c80 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800029fc:	00050513          	mv	a0,a0
    80002a00:	f8dff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            TCB::timeSliceCounter = 0;
    80002a04:	00006797          	auipc	a5,0x6
    80002a08:	e7c7b783          	ld	a5,-388(a5) # 80008880 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002a0c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002a10:	00000097          	auipc	ra,0x0
    80002a14:	174080e7          	jalr	372(ra) # 80002b84 <_ZN3TCB8dispatchEv>
    80002a18:	f75ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002a1c:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    80002a20:	0007b503          	ld	a0,0(a5)
    80002a24:	00000097          	auipc	ra,0x0
    80002a28:	650080e7          	jalr	1616(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
    80002a2c:	f61ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002a30:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002a34:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002a38:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    80002a3c:	00000097          	auipc	ra,0x0
    80002a40:	4a4080e7          	jalr	1188(ra) # 80002ee0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    80002a44:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002a48:	00098863          	beqz	s3,80002a58 <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
    80002a4c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002a50:	00078513          	mv	a0,a5
    80002a54:	f39ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            a0=(tcb!= nullptr)?0 : -1;
    80002a58:	fff00793          	li	a5,-1
    80002a5c:	ff5ff06f          	j	80002a50 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002a60:	00060513          	mv	a0,a2
    80002a64:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002a68:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    80002a6c:	fffff097          	auipc	ra,0xfffff
    80002a70:	c68080e7          	jalr	-920(ra) # 800016d4 <_ZN10Ksemaphore15createSemaphoreEj>
    80002a74:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002a78:	00098863          	beqz	s3,80002a88 <_ZN5Riscv20handleSupervisorTrapEv+0x20c>
    80002a7c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002a80:	00078513          	mv	a0,a5
    80002a84:	f09ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
            uint64 a= (sem!= nullptr)?0: -1;
    80002a88:	fff00793          	li	a5,-1
    80002a8c:	ff5ff06f          	j	80002a80 <_ZN5Riscv20handleSupervisorTrapEv+0x204>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002a90:	00058513          	mv	a0,a1
            if(sem== nullptr){
    80002a94:	00050c63          	beqz	a0,80002aac <_ZN5Riscv20handleSupervisorTrapEv+0x230>
                sem->closeSemaphore();
    80002a98:	fffff097          	auipc	ra,0xfffff
    80002a9c:	b88080e7          	jalr	-1144(ra) # 80001620 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002aa0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002aa4:	00078513          	mv	a0,a5
    80002aa8:	ee5ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=1;
    80002aac:	00100793          	li	a5,1
    80002ab0:	ff5ff06f          	j	80002aa4 <_ZN5Riscv20handleSupervisorTrapEv+0x228>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002ab4:	00088513          	mv	a0,a7
            if(a7!= nullptr){
    80002ab8:	00050a63          	beqz	a0,80002acc <_ZN5Riscv20handleSupervisorTrapEv+0x250>
                a = a7->wait();
    80002abc:	fffff097          	auipc	ra,0xfffff
    80002ac0:	acc080e7          	jalr	-1332(ra) # 80001588 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002ac4:	00050513          	mv	a0,a0
    80002ac8:	ec5ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=-1;
    80002acc:	fff00513          	li	a0,-1
    80002ad0:	ff5ff06f          	j	80002ac4 <_ZN5Riscv20handleSupervisorTrapEv+0x248>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(sem));
    80002ad4:	00088513          	mv	a0,a7
            if(sem!= nullptr) {
    80002ad8:	00050a63          	beqz	a0,80002aec <_ZN5Riscv20handleSupervisorTrapEv+0x270>
                a = sem->signal();
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	afc080e7          	jalr	-1284(ra) # 800015d8 <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002ae4:	00050513          	mv	a0,a0
    80002ae8:	ea5ff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
                a=1;
    80002aec:	00100513          	li	a0,1
    80002af0:	ff5ff06f          	j	80002ae4 <_ZN5Riscv20handleSupervisorTrapEv+0x268>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(t));
    80002af4:	00058793          	mv	a5,a1

    uint64 getTimeSlice() const { return timeSlice; }

    Body getBody() { return this->body;}
    void* getArg() {return this->arg;}
    uint64 getId() {return this->id;}
    80002af8:	0387b783          	ld	a5,56(a5)
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002afc:	00078513          	mv	a0,a5
    80002b00:	e8dff06f          	j	8000298c <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002b04:	00200793          	li	a5,2
    80002b08:	1447b073          	csrc	sip,a5
}
    80002b0c:	e89ff06f          	j	80002994 <_ZN5Riscv20handleSupervisorTrapEv+0x118>

0000000080002b10 <_Z41__static_initialization_and_destruction_0ii>:
}

void *TCB::operator new(size_t n) {
    return MemoryAllocator::malloc(sizeof (TCB));

}
    80002b10:	00100793          	li	a5,1
    80002b14:	00f50463          	beq	a0,a5,80002b1c <_Z41__static_initialization_and_destruction_0ii+0xc>
    80002b18:	00008067          	ret
    80002b1c:	000107b7          	lui	a5,0x10
    80002b20:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002b24:	fef59ae3          	bne	a1,a5,80002b18 <_Z41__static_initialization_and_destruction_0ii+0x8>
    80002b28:	ff010113          	addi	sp,sp,-16
    80002b2c:	00113423          	sd	ra,8(sp)
    80002b30:	00813023          	sd	s0,0(sp)
    80002b34:	01010413          	addi	s0,sp,16
Ksemaphore* TCB::semWaitAllThreads = Ksemaphore::createSemaphore(0);
    80002b38:	00000513          	li	a0,0
    80002b3c:	fffff097          	auipc	ra,0xfffff
    80002b40:	b98080e7          	jalr	-1128(ra) # 800016d4 <_ZN10Ksemaphore15createSemaphoreEj>
    80002b44:	00006797          	auipc	a5,0x6
    80002b48:	dca7ba23          	sd	a0,-556(a5) # 80008918 <_ZN3TCB17semWaitAllThreadsE>
}
    80002b4c:	00813083          	ld	ra,8(sp)
    80002b50:	00013403          	ld	s0,0(sp)
    80002b54:	01010113          	addi	sp,sp,16
    80002b58:	00008067          	ret

0000000080002b5c <_ZN3TCB14putInSchedulerEPS_>:
void TCB::putInScheduler(TCB *tcb) {
    80002b5c:	ff010113          	addi	sp,sp,-16
    80002b60:	00113423          	sd	ra,8(sp)
    80002b64:	00813023          	sd	s0,0(sp)
    80002b68:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    80002b6c:	00000097          	auipc	ra,0x0
    80002b70:	508080e7          	jalr	1288(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
}
    80002b74:	00813083          	ld	ra,8(sp)
    80002b78:	00013403          	ld	s0,0(sp)
    80002b7c:	01010113          	addi	sp,sp,16
    80002b80:	00008067          	ret

0000000080002b84 <_ZN3TCB8dispatchEv>:
{
    80002b84:	fe010113          	addi	sp,sp,-32
    80002b88:	00113c23          	sd	ra,24(sp)
    80002b8c:	00813823          	sd	s0,16(sp)
    80002b90:	00913423          	sd	s1,8(sp)
    80002b94:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002b98:	00006497          	auipc	s1,0x6
    80002b9c:	d884b483          	ld	s1,-632(s1) # 80008920 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    80002ba0:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002ba4:	02078c63          	beqz	a5,80002bdc <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002ba8:	00000097          	auipc	ra,0x0
    80002bac:	488080e7          	jalr	1160(ra) # 80003030 <_ZN9Scheduler3getEv>
    80002bb0:	00006797          	auipc	a5,0x6
    80002bb4:	d6a7b823          	sd	a0,-656(a5) # 80008920 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    80002bb8:	01850593          	addi	a1,a0,24
    80002bbc:	01848513          	addi	a0,s1,24
    80002bc0:	ffffe097          	auipc	ra,0xffffe
    80002bc4:	640080e7          	jalr	1600(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002bc8:	01813083          	ld	ra,24(sp)
    80002bcc:	01013403          	ld	s0,16(sp)
    80002bd0:	00813483          	ld	s1,8(sp)
    80002bd4:	02010113          	addi	sp,sp,32
    80002bd8:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002bdc:	00048513          	mv	a0,s1
    80002be0:	00000097          	auipc	ra,0x0
    80002be4:	494080e7          	jalr	1172(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
    80002be8:	fc1ff06f          	j	80002ba8 <_ZN3TCB8dispatchEv+0x24>

0000000080002bec <_ZN3TCB5yieldEv>:
{
    80002bec:	ff010113          	addi	sp,sp,-16
    80002bf0:	00113423          	sd	ra,8(sp)
    80002bf4:	00813023          	sd	s0,0(sp)
    80002bf8:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	404080e7          	jalr	1028(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002c04:	00000097          	auipc	ra,0x0
    80002c08:	f80080e7          	jalr	-128(ra) # 80002b84 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002c0c:	ffffe097          	auipc	ra,0xffffe
    80002c10:	46c080e7          	jalr	1132(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002c14:	00813083          	ld	ra,8(sp)
    80002c18:	00013403          	ld	s0,0(sp)
    80002c1c:	01010113          	addi	sp,sp,16
    80002c20:	00008067          	ret

0000000080002c24 <_ZN3TCB13threadWrapperEv>:
void TCB::threadWrapper(){
    80002c24:	fe010113          	addi	sp,sp,-32
    80002c28:	00113c23          	sd	ra,24(sp)
    80002c2c:	00813823          	sd	s0,16(sp)
    80002c30:	00913423          	sd	s1,8(sp)
    80002c34:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002c38:	00000097          	auipc	ra,0x0
    80002c3c:	c24080e7          	jalr	-988(ra) # 8000285c <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002c40:	00006497          	auipc	s1,0x6
    80002c44:	cd848493          	addi	s1,s1,-808 # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002c48:	0084b783          	ld	a5,8(s1)
    80002c4c:	0007b703          	ld	a4,0(a5)
    80002c50:	0087b503          	ld	a0,8(a5)
    80002c54:	000700e7          	jalr	a4
    running->setFinished(true);
    80002c58:	0084b783          	ld	a5,8(s1)


    void setFinished(bool value) { finished = value; }
    80002c5c:	00100713          	li	a4,1
    80002c60:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002c64:	00000097          	auipc	ra,0x0
    80002c68:	f88080e7          	jalr	-120(ra) # 80002bec <_ZN3TCB5yieldEv>
}
    80002c6c:	01813083          	ld	ra,24(sp)
    80002c70:	01013403          	ld	s0,16(sp)
    80002c74:	00813483          	ld	s1,8(sp)
    80002c78:	02010113          	addi	sp,sp,32
    80002c7c:	00008067          	ret

0000000080002c80 <_ZN3TCB10exitThreadEv>:
int TCB::exitThread() {
    80002c80:	ff010113          	addi	sp,sp,-16
    80002c84:	00113423          	sd	ra,8(sp)
    80002c88:	00813023          	sd	s0,0(sp)
    80002c8c:	01010413          	addi	s0,sp,16
    80002c90:	00006797          	auipc	a5,0x6
    80002c94:	c907b783          	ld	a5,-880(a5) # 80008920 <_ZN3TCB7runningE>
    80002c98:	00100713          	li	a4,1
    80002c9c:	02e78823          	sb	a4,48(a5)
    dispatch();
    80002ca0:	00000097          	auipc	ra,0x0
    80002ca4:	ee4080e7          	jalr	-284(ra) # 80002b84 <_ZN3TCB8dispatchEv>
}
    80002ca8:	00000513          	li	a0,0
    80002cac:	00813083          	ld	ra,8(sp)
    80002cb0:	00013403          	ld	s0,0(sp)
    80002cb4:	01010113          	addi	sp,sp,16
    80002cb8:	00008067          	ret

0000000080002cbc <_ZN3TCB24dispatchWithoutSchedulerEv>:
void TCB::dispatchWithoutScheduler(){
    80002cbc:	fe010113          	addi	sp,sp,-32
    80002cc0:	00113c23          	sd	ra,24(sp)
    80002cc4:	00813823          	sd	s0,16(sp)
    80002cc8:	00913423          	sd	s1,8(sp)
    80002ccc:	01213023          	sd	s2,0(sp)
    80002cd0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002cd4:	00006497          	auipc	s1,0x6
    80002cd8:	c4448493          	addi	s1,s1,-956 # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002cdc:	0084b903          	ld	s2,8(s1)
    running = Scheduler::get();
    80002ce0:	00000097          	auipc	ra,0x0
    80002ce4:	350080e7          	jalr	848(ra) # 80003030 <_ZN9Scheduler3getEv>
    80002ce8:	00a4b423          	sd	a0,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002cec:	01850593          	addi	a1,a0,24
    80002cf0:	01890513          	addi	a0,s2,24
    80002cf4:	ffffe097          	auipc	ra,0xffffe
    80002cf8:	50c080e7          	jalr	1292(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002cfc:	01813083          	ld	ra,24(sp)
    80002d00:	01013403          	ld	s0,16(sp)
    80002d04:	00813483          	ld	s1,8(sp)
    80002d08:	00013903          	ld	s2,0(sp)
    80002d0c:	02010113          	addi	sp,sp,32
    80002d10:	00008067          	ret

0000000080002d14 <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002d14:	ff010113          	addi	sp,sp,-16
    80002d18:	00113423          	sd	ra,8(sp)
    80002d1c:	00813023          	sd	s0,0(sp)
    80002d20:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002d24:	ffffe097          	auipc	ra,0xffffe
    80002d28:	2dc080e7          	jalr	732(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    80002d2c:	00000097          	auipc	ra,0x0
    80002d30:	f90080e7          	jalr	-112(ra) # 80002cbc <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    80002d34:	ffffe097          	auipc	ra,0xffffe
    80002d38:	344080e7          	jalr	836(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002d3c:	00813083          	ld	ra,8(sp)
    80002d40:	00013403          	ld	s0,0(sp)
    80002d44:	01010113          	addi	sp,sp,16
    80002d48:	00008067          	ret

0000000080002d4c <_ZN3TCB4joinEv>:
void TCB::join() {
    80002d4c:	ff010113          	addi	sp,sp,-16
    80002d50:	00113423          	sd	ra,8(sp)
    80002d54:	00813023          	sd	s0,0(sp)
    80002d58:	01010413          	addi	s0,sp,16
    if(semWaitAllThreads== nullptr)semWaitAllThreads=Ksemaphore::createSemaphore(0);
    80002d5c:	00006797          	auipc	a5,0x6
    80002d60:	bbc7b783          	ld	a5,-1092(a5) # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002d64:	02078263          	beqz	a5,80002d88 <_ZN3TCB4joinEv+0x3c>
    semWaitAllThreads->wait();
    80002d68:	00006517          	auipc	a0,0x6
    80002d6c:	bb053503          	ld	a0,-1104(a0) # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	818080e7          	jalr	-2024(ra) # 80001588 <_ZN10Ksemaphore4waitEv>
}
    80002d78:	00813083          	ld	ra,8(sp)
    80002d7c:	00013403          	ld	s0,0(sp)
    80002d80:	01010113          	addi	sp,sp,16
    80002d84:	00008067          	ret
    if(semWaitAllThreads== nullptr)semWaitAllThreads=Ksemaphore::createSemaphore(0);
    80002d88:	00000513          	li	a0,0
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	948080e7          	jalr	-1720(ra) # 800016d4 <_ZN10Ksemaphore15createSemaphoreEj>
    80002d94:	00006797          	auipc	a5,0x6
    80002d98:	b8a7b223          	sd	a0,-1148(a5) # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002d9c:	fcdff06f          	j	80002d68 <_ZN3TCB4joinEv+0x1c>

0000000080002da0 <_ZN3TCBdlEPv>:
void TCB::operator delete(void *p) {
    80002da0:	ff010113          	addi	sp,sp,-16
    80002da4:	00113423          	sd	ra,8(sp)
    80002da8:	00813023          	sd	s0,0(sp)
    80002dac:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	504080e7          	jalr	1284(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
}
    80002db8:	00813083          	ld	ra,8(sp)
    80002dbc:	00013403          	ld	s0,0(sp)
    80002dc0:	01010113          	addi	sp,sp,16
    80002dc4:	00008067          	ret

0000000080002dc8 <_ZN3TCBnwEm>:
void *TCB::operator new(size_t n) {
    80002dc8:	ff010113          	addi	sp,sp,-16
    80002dcc:	00113423          	sd	ra,8(sp)
    80002dd0:	00813023          	sd	s0,0(sp)
    80002dd4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    80002dd8:	04000513          	li	a0,64
    80002ddc:	00000097          	auipc	ra,0x0
    80002de0:	43c080e7          	jalr	1084(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
}
    80002de4:	00813083          	ld	ra,8(sp)
    80002de8:	00013403          	ld	s0,0(sp)
    80002dec:	01010113          	addi	sp,sp,16
    80002df0:	00008067          	ret

0000000080002df4 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    80002df4:	fd010113          	addi	sp,sp,-48
    80002df8:	02113423          	sd	ra,40(sp)
    80002dfc:	02813023          	sd	s0,32(sp)
    80002e00:	00913c23          	sd	s1,24(sp)
    80002e04:	01213823          	sd	s2,16(sp)
    80002e08:	01313423          	sd	s3,8(sp)
    80002e0c:	03010413          	addi	s0,sp,48
    80002e10:	00050913          	mv	s2,a0
    80002e14:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002e18:	04000513          	li	a0,64
    80002e1c:	00000097          	auipc	ra,0x0
    80002e20:	fac080e7          	jalr	-84(ra) # 80002dc8 <_ZN3TCBnwEm>
    80002e24:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002e28:	01253023          	sd	s2,0(a0)
        arg=argg;
    80002e2c:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002e30:	00090a63          	beqz	s2,80002e44 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002e34:	00008537          	lui	a0,0x8
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	3e0080e7          	jalr	992(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
    80002e40:	0080006f          	j	80002e48 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002e44:	00000513          	li	a0,0
    80002e48:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002e4c:	00000797          	auipc	a5,0x0
    80002e50:	dd878793          	addi	a5,a5,-552 # 80002c24 <_ZN3TCB13threadWrapperEv>
    80002e54:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002e58:	06050263          	beqz	a0,80002ebc <_ZN3TCB12createThreadEPFvPvES0_+0xc8>
    80002e5c:	000087b7          	lui	a5,0x8
    80002e60:	00f507b3          	add	a5,a0,a5
    80002e64:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002e68:	00200793          	li	a5,2
    80002e6c:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002e70:	02048823          	sb	zero,48(s1)
        id=threadId++;
    80002e74:	00006717          	auipc	a4,0x6
    80002e78:	aa470713          	addi	a4,a4,-1372 # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002e7c:	01073783          	ld	a5,16(a4)
    80002e80:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80002e84:	00d73823          	sd	a3,16(a4)
    80002e88:	02f4bc23          	sd	a5,56(s1)
    if (body != nullptr) {
    80002e8c:	00090863          	beqz	s2,80002e9c <_ZN3TCB12createThreadEPFvPvES0_+0xa8>
        Scheduler::put(t);
    80002e90:	00048513          	mv	a0,s1
    80002e94:	00000097          	auipc	ra,0x0
    80002e98:	1e0080e7          	jalr	480(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
}
    80002e9c:	00048513          	mv	a0,s1
    80002ea0:	02813083          	ld	ra,40(sp)
    80002ea4:	02013403          	ld	s0,32(sp)
    80002ea8:	01813483          	ld	s1,24(sp)
    80002eac:	01013903          	ld	s2,16(sp)
    80002eb0:	00813983          	ld	s3,8(sp)
    80002eb4:	03010113          	addi	sp,sp,48
    80002eb8:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002ebc:	00000793          	li	a5,0
    80002ec0:	fa5ff06f          	j	80002e64 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002ec4:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002ec8:	00048513          	mv	a0,s1
    80002ecc:	00000097          	auipc	ra,0x0
    80002ed0:	ed4080e7          	jalr	-300(ra) # 80002da0 <_ZN3TCBdlEPv>
    80002ed4:	00090513          	mv	a0,s2
    80002ed8:	00007097          	auipc	ra,0x7
    80002edc:	b60080e7          	jalr	-1184(ra) # 80009a38 <_Unwind_Resume>

0000000080002ee0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    80002ee0:	fd010113          	addi	sp,sp,-48
    80002ee4:	02113423          	sd	ra,40(sp)
    80002ee8:	02813023          	sd	s0,32(sp)
    80002eec:	00913c23          	sd	s1,24(sp)
    80002ef0:	01213823          	sd	s2,16(sp)
    80002ef4:	01313423          	sd	s3,8(sp)
    80002ef8:	03010413          	addi	s0,sp,48
    80002efc:	00050913          	mv	s2,a0
    80002f00:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002f04:	04000513          	li	a0,64
    80002f08:	00000097          	auipc	ra,0x0
    80002f0c:	ec0080e7          	jalr	-320(ra) # 80002dc8 <_ZN3TCBnwEm>
    80002f10:	00050493          	mv	s1,a0
        body = bodyy;
    80002f14:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    80002f18:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    80002f1c:	00090a63          	beqz	s2,80002f30 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    80002f20:	00008537          	lui	a0,0x8
    80002f24:	00000097          	auipc	ra,0x0
    80002f28:	2f4080e7          	jalr	756(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
    80002f2c:	0080006f          	j	80002f34 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    80002f30:	00000513          	li	a0,0
    80002f34:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002f38:	00000797          	auipc	a5,0x0
    80002f3c:	cec78793          	addi	a5,a5,-788 # 80002c24 <_ZN3TCB13threadWrapperEv>
    80002f40:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002f44:	04050a63          	beqz	a0,80002f98 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xb8>
    80002f48:	000087b7          	lui	a5,0x8
    80002f4c:	00f50533          	add	a0,a0,a5
    80002f50:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    80002f54:	00200793          	li	a5,2
    80002f58:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002f5c:	02048823          	sb	zero,48(s1)
        id=threadId++;
    80002f60:	00006717          	auipc	a4,0x6
    80002f64:	9b870713          	addi	a4,a4,-1608 # 80008918 <_ZN3TCB17semWaitAllThreadsE>
    80002f68:	01073783          	ld	a5,16(a4)
    80002f6c:	00178693          	addi	a3,a5,1 # 8001 <_entry-0x7fff7fff>
    80002f70:	00d73823          	sd	a3,16(a4)
    80002f74:	02f4bc23          	sd	a5,56(s1)
}
    80002f78:	00048513          	mv	a0,s1
    80002f7c:	02813083          	ld	ra,40(sp)
    80002f80:	02013403          	ld	s0,32(sp)
    80002f84:	01813483          	ld	s1,24(sp)
    80002f88:	01013903          	ld	s2,16(sp)
    80002f8c:	00813983          	ld	s3,8(sp)
    80002f90:	03010113          	addi	sp,sp,48
    80002f94:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002f98:	00000513          	li	a0,0
    80002f9c:	fb5ff06f          	j	80002f50 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002fa0:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002fa4:	00048513          	mv	a0,s1
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	df8080e7          	jalr	-520(ra) # 80002da0 <_ZN3TCBdlEPv>
    80002fb0:	00090513          	mv	a0,s2
    80002fb4:	00007097          	auipc	ra,0x7
    80002fb8:	a84080e7          	jalr	-1404(ra) # 80009a38 <_Unwind_Resume>

0000000080002fbc <_GLOBAL__sub_I__ZN3TCB7runningE>:
}
    80002fbc:	ff010113          	addi	sp,sp,-16
    80002fc0:	00113423          	sd	ra,8(sp)
    80002fc4:	00813023          	sd	s0,0(sp)
    80002fc8:	01010413          	addi	s0,sp,16
    80002fcc:	000105b7          	lui	a1,0x10
    80002fd0:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002fd4:	00100513          	li	a0,1
    80002fd8:	00000097          	auipc	ra,0x0
    80002fdc:	b38080e7          	jalr	-1224(ra) # 80002b10 <_Z41__static_initialization_and_destruction_0ii>
    80002fe0:	00813083          	ld	ra,8(sp)
    80002fe4:	00013403          	ld	s0,0(sp)
    80002fe8:	01010113          	addi	sp,sp,16
    80002fec:	00008067          	ret

0000000080002ff0 <_Z41__static_initialization_and_destruction_0ii>:
    bool a=false;
    TCB* t= Scheduler::get();
    if(isEmpty())a=true;
    Scheduler::put(t);
    return a;
}
    80002ff0:	ff010113          	addi	sp,sp,-16
    80002ff4:	00813423          	sd	s0,8(sp)
    80002ff8:	01010413          	addi	s0,sp,16
    80002ffc:	00100793          	li	a5,1
    80003000:	00f50863          	beq	a0,a5,80003010 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80003004:	00813403          	ld	s0,8(sp)
    80003008:	01010113          	addi	sp,sp,16
    8000300c:	00008067          	ret
    80003010:	000107b7          	lui	a5,0x10
    80003014:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003018:	fef596e3          	bne	a1,a5,80003004 <_Z41__static_initialization_and_destruction_0ii+0x14>
    8000301c:	00006797          	auipc	a5,0x6
    80003020:	91c78793          	addi	a5,a5,-1764 # 80008938 <_ZN9Scheduler16readyThreadQueueE>
    80003024:	0007b023          	sd	zero,0(a5)
    80003028:	0007b423          	sd	zero,8(a5)
    8000302c:	fd9ff06f          	j	80003004 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080003030 <_ZN9Scheduler3getEv>:
{
    80003030:	ff010113          	addi	sp,sp,-16
    80003034:	00813423          	sd	s0,8(sp)
    80003038:	01010413          	addi	s0,sp,16
        if (!head) { return 0; }
    8000303c:	00006517          	auipc	a0,0x6
    80003040:	8fc53503          	ld	a0,-1796(a0) # 80008938 <_ZN9Scheduler16readyThreadQueueE>
    80003044:	00050c63          	beqz	a0,8000305c <_ZN9Scheduler3getEv+0x2c>
        head = head->next;
    80003048:	00853783          	ld	a5,8(a0)
    8000304c:	00006717          	auipc	a4,0x6
    80003050:	8ef73623          	sd	a5,-1812(a4) # 80008938 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80003054:	00078a63          	beqz	a5,80003068 <_ZN9Scheduler3getEv+0x38>
        T *ret = elem->data;
    80003058:	00053503          	ld	a0,0(a0)
}
    8000305c:	00813403          	ld	s0,8(sp)
    80003060:	01010113          	addi	sp,sp,16
    80003064:	00008067          	ret
        if (!head) { tail = 0; }
    80003068:	00006797          	auipc	a5,0x6
    8000306c:	8c07bc23          	sd	zero,-1832(a5) # 80008940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80003070:	fe9ff06f          	j	80003058 <_ZN9Scheduler3getEv+0x28>

0000000080003074 <_ZN9Scheduler3putEP3TCB>:
{
    80003074:	fe010113          	addi	sp,sp,-32
    80003078:	00113c23          	sd	ra,24(sp)
    8000307c:	00813823          	sd	s0,16(sp)
    80003080:	00913423          	sd	s1,8(sp)
    80003084:	02010413          	addi	s0,sp,32
    80003088:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000308c:	01000513          	li	a0,16
    80003090:	fffff097          	auipc	ra,0xfffff
    80003094:	680080e7          	jalr	1664(ra) # 80002710 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80003098:	00953023          	sd	s1,0(a0)
    8000309c:	00053423          	sd	zero,8(a0)
        if (tail)
    800030a0:	00006797          	auipc	a5,0x6
    800030a4:	8a07b783          	ld	a5,-1888(a5) # 80008940 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800030a8:	02078263          	beqz	a5,800030cc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800030ac:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800030b0:	00006797          	auipc	a5,0x6
    800030b4:	88a7b823          	sd	a0,-1904(a5) # 80008940 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800030b8:	01813083          	ld	ra,24(sp)
    800030bc:	01013403          	ld	s0,16(sp)
    800030c0:	00813483          	ld	s1,8(sp)
    800030c4:	02010113          	addi	sp,sp,32
    800030c8:	00008067          	ret
            head = tail = elem;
    800030cc:	00006797          	auipc	a5,0x6
    800030d0:	86c78793          	addi	a5,a5,-1940 # 80008938 <_ZN9Scheduler16readyThreadQueueE>
    800030d4:	00a7b423          	sd	a0,8(a5)
    800030d8:	00a7b023          	sd	a0,0(a5)
    800030dc:	fddff06f          	j	800030b8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800030e0 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    800030e0:	ff010113          	addi	sp,sp,-16
    800030e4:	00813423          	sd	s0,8(sp)
    800030e8:	01010413          	addi	s0,sp,16
}
    800030ec:	00053503          	ld	a0,0(a0)
    800030f0:	00813403          	ld	s0,8(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret

00000000800030fc <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    800030fc:	ff010113          	addi	sp,sp,-16
    80003100:	00113423          	sd	ra,8(sp)
    80003104:	00813023          	sd	s0,0(sp)
    80003108:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    8000310c:	00000097          	auipc	ra,0x0
    80003110:	10c080e7          	jalr	268(ra) # 80003218 <_ZN15MemoryAllocator6mallocEm>
}
    80003114:	00813083          	ld	ra,8(sp)
    80003118:	00013403          	ld	s0,0(sp)
    8000311c:	01010113          	addi	sp,sp,16
    80003120:	00008067          	ret

0000000080003124 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    80003124:	ff010113          	addi	sp,sp,-16
    80003128:	00113423          	sd	ra,8(sp)
    8000312c:	00813023          	sd	s0,0(sp)
    80003130:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80003134:	00000097          	auipc	ra,0x0
    80003138:	180080e7          	jalr	384(ra) # 800032b4 <_ZN15MemoryAllocator4freeEPv>
}
    8000313c:	00813083          	ld	ra,8(sp)
    80003140:	00013403          	ld	s0,0(sp)
    80003144:	01010113          	addi	sp,sp,16
    80003148:	00008067          	ret

000000008000314c <_ZN9Scheduler7isEmptyEv>:
bool Scheduler::isEmpty() {
    8000314c:	ff010113          	addi	sp,sp,-16
    80003150:	00813423          	sd	s0,8(sp)
    80003154:	01010413          	addi	s0,sp,16
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80003158:	00005797          	auipc	a5,0x5
    8000315c:	7e07b783          	ld	a5,2016(a5) # 80008938 <_ZN9Scheduler16readyThreadQueueE>
    80003160:	02078263          	beqz	a5,80003184 <_ZN9Scheduler7isEmptyEv+0x38>
        return head->data;
    80003164:	0007b783          	ld	a5,0(a5)
    if(readyThreadQueue.peekFirst())a=false;
    80003168:	00078a63          	beqz	a5,8000317c <_ZN9Scheduler7isEmptyEv+0x30>
    8000316c:	00000513          	li	a0,0
}
    80003170:	00813403          	ld	s0,8(sp)
    80003174:	01010113          	addi	sp,sp,16
    80003178:	00008067          	ret
    bool a=true;
    8000317c:	00100513          	li	a0,1
    80003180:	ff1ff06f          	j	80003170 <_ZN9Scheduler7isEmptyEv+0x24>
    80003184:	00100513          	li	a0,1
    80003188:	fe9ff06f          	j	80003170 <_ZN9Scheduler7isEmptyEv+0x24>

000000008000318c <_ZN9Scheduler7oneLeftEv>:
bool Scheduler::oneLeft() {
    8000318c:	fe010113          	addi	sp,sp,-32
    80003190:	00113c23          	sd	ra,24(sp)
    80003194:	00813823          	sd	s0,16(sp)
    80003198:	00913423          	sd	s1,8(sp)
    8000319c:	01213023          	sd	s2,0(sp)
    800031a0:	02010413          	addi	s0,sp,32
    TCB* t= Scheduler::get();
    800031a4:	00000097          	auipc	ra,0x0
    800031a8:	e8c080e7          	jalr	-372(ra) # 80003030 <_ZN9Scheduler3getEv>
    800031ac:	00050913          	mv	s2,a0
    if(isEmpty())a=true;
    800031b0:	00000097          	auipc	ra,0x0
    800031b4:	f9c080e7          	jalr	-100(ra) # 8000314c <_ZN9Scheduler7isEmptyEv>
    800031b8:	00050493          	mv	s1,a0
    Scheduler::put(t);
    800031bc:	00090513          	mv	a0,s2
    800031c0:	00000097          	auipc	ra,0x0
    800031c4:	eb4080e7          	jalr	-332(ra) # 80003074 <_ZN9Scheduler3putEP3TCB>
}
    800031c8:	00048513          	mv	a0,s1
    800031cc:	01813083          	ld	ra,24(sp)
    800031d0:	01013403          	ld	s0,16(sp)
    800031d4:	00813483          	ld	s1,8(sp)
    800031d8:	00013903          	ld	s2,0(sp)
    800031dc:	02010113          	addi	sp,sp,32
    800031e0:	00008067          	ret

00000000800031e4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800031e4:	ff010113          	addi	sp,sp,-16
    800031e8:	00113423          	sd	ra,8(sp)
    800031ec:	00813023          	sd	s0,0(sp)
    800031f0:	01010413          	addi	s0,sp,16
    800031f4:	000105b7          	lui	a1,0x10
    800031f8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800031fc:	00100513          	li	a0,1
    80003200:	00000097          	auipc	ra,0x0
    80003204:	df0080e7          	jalr	-528(ra) # 80002ff0 <_Z41__static_initialization_and_destruction_0ii>
    80003208:	00813083          	ld	ra,8(sp)
    8000320c:	00013403          	ld	s0,0(sp)
    80003210:	01010113          	addi	sp,sp,16
    80003214:	00008067          	ret

0000000080003218 <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    80003218:	ff010113          	addi	sp,sp,-16
    8000321c:	00813423          	sd	s0,8(sp)
    80003220:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80003224:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    80003228:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    8000322c:	00005517          	auipc	a0,0x5
    80003230:	71c53503          	ld	a0,1820(a0) # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003234:	0440006f          	j	80003278 <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80003238:	40e787b3          	sub	a5,a5,a4
    8000323c:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80003240:	fe878793          	addi	a5,a5,-24
    80003244:	00679793          	slli	a5,a5,0x6
    80003248:	fe878793          	addi	a5,a5,-24
    8000324c:	00f507b3          	add	a5,a0,a5
    80003250:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80003254:	01053783          	ld	a5,16(a0)
    80003258:	fe878793          	addi	a5,a5,-24
    8000325c:	00679793          	slli	a5,a5,0x6
    80003260:	ff078793          	addi	a5,a5,-16
    80003264:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80003268:	00813403          	ld	s0,8(sp)
    8000326c:	01010113          	addi	sp,sp,16
    80003270:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80003274:	00053503          	ld	a0,0(a0)
    80003278:	fe0508e3          	beqz	a0,80003268 <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    8000327c:	01053783          	ld	a5,16(a0)
    80003280:	faf76ce3          	bltu	a4,a5,80003238 <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80003284:	fee798e3          	bne	a5,a4,80003274 <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    80003288:	00853783          	ld	a5,8(a0)
    8000328c:	00078663          	beqz	a5,80003298 <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    80003290:	00053683          	ld	a3,0(a0)
    80003294:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    80003298:	00053783          	ld	a5,0(a0)
    8000329c:	00078663          	beqz	a5,800032a8 <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    800032a0:	00853683          	ld	a3,8(a0)
    800032a4:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    800032a8:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    800032ac:	ff050513          	addi	a0,a0,-16
    800032b0:	fb9ff06f          	j	80003268 <_ZN15MemoryAllocator6mallocEm+0x50>

00000000800032b4 <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    800032b4:	ff010113          	addi	sp,sp,-16
    800032b8:	00813423          	sd	s0,8(sp)
    800032bc:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    800032c0:	14050663          	beqz	a0,8000340c <_ZN15MemoryAllocator4freeEPv+0x158>
    800032c4:	00005797          	auipc	a5,0x5
    800032c8:	5dc7b783          	ld	a5,1500(a5) # 800088a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800032cc:	0007b783          	ld	a5,0(a5)
    800032d0:	14a7e263          	bltu	a5,a0,80003414 <_ZN15MemoryAllocator4freeEPv+0x160>
    800032d4:	00005797          	auipc	a5,0x5
    800032d8:	59c7b783          	ld	a5,1436(a5) # 80008870 <_GLOBAL_OFFSET_TABLE_+0x8>
    800032dc:	0007b783          	ld	a5,0(a5)
    800032e0:	14f56263          	bltu	a0,a5,80003424 <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    800032e4:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    800032e8:	14070263          	beqz	a4,8000342c <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    800032ec:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    800032f0:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    800032f4:	00005797          	auipc	a5,0x5
    800032f8:	6547b783          	ld	a5,1620(a5) # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
    800032fc:	0140006f          	j	80003310 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80003300:	00005697          	auipc	a3,0x5
    80003304:	6506b683          	ld	a3,1616(a3) # 80008950 <_ZN15MemoryAllocator4tailE>
    80003308:	02f68e63          	beq	a3,a5,80003344 <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    8000330c:	0007b783          	ld	a5,0(a5)
    80003310:	04078863          	beqz	a5,80003360 <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    80003314:	fee7f6e3          	bgeu	a5,a4,80003300 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80003318:	0007b683          	ld	a3,0(a5)
    8000331c:	fed772e3          	bgeu	a4,a3,80003300 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80003320:	00005617          	auipc	a2,0x5
    80003324:	63063603          	ld	a2,1584(a2) # 80008950 <_ZN15MemoryAllocator4tailE>
    80003328:	fcf60ce3          	beq	a2,a5,80003300 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    8000332c:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80003330:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80003334:	0007b683          	ld	a3,0(a5)
    80003338:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    8000333c:	00e7b023          	sd	a4,0(a5)
    80003340:	fcdff06f          	j	8000330c <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80003344:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80003348:	00005797          	auipc	a5,0x5
    8000334c:	60078793          	addi	a5,a5,1536 # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003350:	0087b683          	ld	a3,8(a5)
    80003354:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80003358:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    8000335c:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80003360:	00005797          	auipc	a5,0x5
    80003364:	5e87b783          	ld	a5,1512(a5) # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003368:	02078e63          	beqz	a5,800033a4 <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    8000336c:	00053783          	ld	a5,0(a0)
    80003370:	00078a63          	beqz	a5,80003384 <_ZN15MemoryAllocator4freeEPv+0xd0>
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
    80003374:	0107b603          	ld	a2,16(a5)
    80003378:	00661693          	slli	a3,a2,0x6
    8000337c:	00d786b3          	add	a3,a5,a3
    80003380:	02e68a63          	beq	a3,a4,800033b4 <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    80003384:	00073783          	ld	a5,0(a4)
    80003388:	0a078663          	beqz	a5,80003434 <_ZN15MemoryAllocator4freeEPv+0x180>
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
    8000338c:	01073603          	ld	a2,16(a4)
    80003390:	00661693          	slli	a3,a2,0x6
    80003394:	00d706b3          	add	a3,a4,a3
    80003398:	04d78463          	beq	a5,a3,800033e0 <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    8000339c:	00000513          	li	a0,0
    800033a0:	0780006f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    800033a4:	00005797          	auipc	a5,0x5
    800033a8:	5ae7b223          	sd	a4,1444(a5) # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    800033ac:	00000513          	li	a0,0
    800033b0:	0680006f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    800033b4:	00853703          	ld	a4,8(a0)
    800033b8:	00e60633          	add	a2,a2,a4
    800033bc:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    800033c0:	00053703          	ld	a4,0(a0)
    800033c4:	ff853783          	ld	a5,-8(a0)
    800033c8:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    800033cc:	00078663          	beqz	a5,800033d8 <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    800033d0:	00053703          	ld	a4,0(a0)
    800033d4:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    800033d8:	00053703          	ld	a4,0(a0)
    800033dc:	fa9ff06f          	j	80003384 <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    800033e0:	0107b683          	ld	a3,16(a5)
    800033e4:	00d60633          	add	a2,a2,a3
    800033e8:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    800033ec:	0007b783          	ld	a5,0(a5)
    800033f0:	04078663          	beqz	a5,8000343c <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    800033f4:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    800033f8:	00073783          	ld	a5,0(a4)
    800033fc:	0007b783          	ld	a5,0(a5)
    80003400:	00f73023          	sd	a5,0(a4)
    return 0;
    80003404:	00000513          	li	a0,0
    80003408:	0100006f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    8000340c:	00100513          	li	a0,1
    80003410:	0080006f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
    80003414:	00100513          	li	a0,1
}
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80003424:	00100513          	li	a0,1
    80003428:	ff1ff06f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    8000342c:	00100513          	li	a0,1
    80003430:	fe9ff06f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    80003434:	00000513          	li	a0,0
    80003438:	fe1ff06f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>
    8000343c:	00000513          	li	a0,0
    80003440:	fd9ff06f          	j	80003418 <_ZN15MemoryAllocator4freeEPv+0x164>

0000000080003444 <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    80003444:	ff010113          	addi	sp,sp,-16
    80003448:	00813423          	sd	s0,8(sp)
    8000344c:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80003450:	00005797          	auipc	a5,0x5
    80003454:	4207b783          	ld	a5,1056(a5) # 80008870 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003458:	0007b703          	ld	a4,0(a5)
    8000345c:	00005697          	auipc	a3,0x5
    80003460:	4ec68693          	addi	a3,a3,1260 # 80008948 <_ZN15MemoryAllocator13freeBlockHeadE>
    80003464:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80003468:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    8000346c:	00005797          	auipc	a5,0x5
    80003470:	4347b783          	ld	a5,1076(a5) # 800088a0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80003474:	0007b783          	ld	a5,0(a5)
    80003478:	40e787b3          	sub	a5,a5,a4
    8000347c:	03f78793          	addi	a5,a5,63
    80003480:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    80003484:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80003488:	00e6b423          	sd	a4,8(a3)
    freeBlockHead->next= nullptr;
    8000348c:	00073023          	sd	zero,0(a4)
    freeBlockHead->prev= nullptr;
    80003490:	0006b783          	ld	a5,0(a3)
    80003494:	0007b423          	sd	zero,8(a5)
}
    80003498:	00813403          	ld	s0,8(sp)
    8000349c:	01010113          	addi	sp,sp,16
    800034a0:	00008067          	ret

00000000800034a4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800034a4:	fe010113          	addi	sp,sp,-32
    800034a8:	00113c23          	sd	ra,24(sp)
    800034ac:	00813823          	sd	s0,16(sp)
    800034b0:	00913423          	sd	s1,8(sp)
    800034b4:	02010413          	addi	s0,sp,32
    800034b8:	00050493          	mv	s1,a0
    LOCK();
    800034bc:	00100613          	li	a2,1
    800034c0:	00000593          	li	a1,0
    800034c4:	00005517          	auipc	a0,0x5
    800034c8:	49c50513          	addi	a0,a0,1180 # 80008960 <lockPrint>
    800034cc:	ffffe097          	auipc	ra,0xffffe
    800034d0:	d48080e7          	jalr	-696(ra) # 80001214 <copy_and_swap>
    800034d4:	fe0514e3          	bnez	a0,800034bc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800034d8:	0004c503          	lbu	a0,0(s1)
    800034dc:	00050a63          	beqz	a0,800034f0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800034e0:	ffffe097          	auipc	ra,0xffffe
    800034e4:	f5c080e7          	jalr	-164(ra) # 8000143c <_Z4putcc>
        string++;
    800034e8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800034ec:	fedff06f          	j	800034d8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800034f0:	00000613          	li	a2,0
    800034f4:	00100593          	li	a1,1
    800034f8:	00005517          	auipc	a0,0x5
    800034fc:	46850513          	addi	a0,a0,1128 # 80008960 <lockPrint>
    80003500:	ffffe097          	auipc	ra,0xffffe
    80003504:	d14080e7          	jalr	-748(ra) # 80001214 <copy_and_swap>
    80003508:	fe0514e3          	bnez	a0,800034f0 <_Z11printStringPKc+0x4c>
}
    8000350c:	01813083          	ld	ra,24(sp)
    80003510:	01013403          	ld	s0,16(sp)
    80003514:	00813483          	ld	s1,8(sp)
    80003518:	02010113          	addi	sp,sp,32
    8000351c:	00008067          	ret

0000000080003520 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80003520:	fd010113          	addi	sp,sp,-48
    80003524:	02113423          	sd	ra,40(sp)
    80003528:	02813023          	sd	s0,32(sp)
    8000352c:	00913c23          	sd	s1,24(sp)
    80003530:	01213823          	sd	s2,16(sp)
    80003534:	01313423          	sd	s3,8(sp)
    80003538:	01413023          	sd	s4,0(sp)
    8000353c:	03010413          	addi	s0,sp,48
    80003540:	00050993          	mv	s3,a0
    80003544:	00058a13          	mv	s4,a1
    LOCK();
    80003548:	00100613          	li	a2,1
    8000354c:	00000593          	li	a1,0
    80003550:	00005517          	auipc	a0,0x5
    80003554:	41050513          	addi	a0,a0,1040 # 80008960 <lockPrint>
    80003558:	ffffe097          	auipc	ra,0xffffe
    8000355c:	cbc080e7          	jalr	-836(ra) # 80001214 <copy_and_swap>
    80003560:	fe0514e3          	bnez	a0,80003548 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80003564:	00000913          	li	s2,0
    80003568:	00090493          	mv	s1,s2
    8000356c:	0019091b          	addiw	s2,s2,1
    80003570:	03495a63          	bge	s2,s4,800035a4 <_Z9getStringPci+0x84>
        cc = getc();
    80003574:	ffffe097          	auipc	ra,0xffffe
    80003578:	ea0080e7          	jalr	-352(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    8000357c:	02050463          	beqz	a0,800035a4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80003580:	009984b3          	add	s1,s3,s1
    80003584:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80003588:	00a00793          	li	a5,10
    8000358c:	00f50a63          	beq	a0,a5,800035a0 <_Z9getStringPci+0x80>
    80003590:	00d00793          	li	a5,13
    80003594:	fcf51ae3          	bne	a0,a5,80003568 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80003598:	00090493          	mv	s1,s2
    8000359c:	0080006f          	j	800035a4 <_Z9getStringPci+0x84>
    800035a0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800035a4:	009984b3          	add	s1,s3,s1
    800035a8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800035ac:	00000613          	li	a2,0
    800035b0:	00100593          	li	a1,1
    800035b4:	00005517          	auipc	a0,0x5
    800035b8:	3ac50513          	addi	a0,a0,940 # 80008960 <lockPrint>
    800035bc:	ffffe097          	auipc	ra,0xffffe
    800035c0:	c58080e7          	jalr	-936(ra) # 80001214 <copy_and_swap>
    800035c4:	fe0514e3          	bnez	a0,800035ac <_Z9getStringPci+0x8c>
    return buf;
}
    800035c8:	00098513          	mv	a0,s3
    800035cc:	02813083          	ld	ra,40(sp)
    800035d0:	02013403          	ld	s0,32(sp)
    800035d4:	01813483          	ld	s1,24(sp)
    800035d8:	01013903          	ld	s2,16(sp)
    800035dc:	00813983          	ld	s3,8(sp)
    800035e0:	00013a03          	ld	s4,0(sp)
    800035e4:	03010113          	addi	sp,sp,48
    800035e8:	00008067          	ret

00000000800035ec <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    800035ec:	ff010113          	addi	sp,sp,-16
    800035f0:	00813423          	sd	s0,8(sp)
    800035f4:	01010413          	addi	s0,sp,16
    800035f8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800035fc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80003600:	0006c603          	lbu	a2,0(a3)
    80003604:	fd06071b          	addiw	a4,a2,-48
    80003608:	0ff77713          	andi	a4,a4,255
    8000360c:	00900793          	li	a5,9
    80003610:	02e7e063          	bltu	a5,a4,80003630 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80003614:	0025179b          	slliw	a5,a0,0x2
    80003618:	00a787bb          	addw	a5,a5,a0
    8000361c:	0017979b          	slliw	a5,a5,0x1
    80003620:	00168693          	addi	a3,a3,1
    80003624:	00c787bb          	addw	a5,a5,a2
    80003628:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    8000362c:	fd5ff06f          	j	80003600 <_Z11stringToIntPKc+0x14>
    return n;
}
    80003630:	00813403          	ld	s0,8(sp)
    80003634:	01010113          	addi	sp,sp,16
    80003638:	00008067          	ret

000000008000363c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    8000363c:	fc010113          	addi	sp,sp,-64
    80003640:	02113c23          	sd	ra,56(sp)
    80003644:	02813823          	sd	s0,48(sp)
    80003648:	02913423          	sd	s1,40(sp)
    8000364c:	03213023          	sd	s2,32(sp)
    80003650:	01313c23          	sd	s3,24(sp)
    80003654:	04010413          	addi	s0,sp,64
    80003658:	00050493          	mv	s1,a0
    8000365c:	00058913          	mv	s2,a1
    80003660:	00060993          	mv	s3,a2
    LOCK();
    80003664:	00100613          	li	a2,1
    80003668:	00000593          	li	a1,0
    8000366c:	00005517          	auipc	a0,0x5
    80003670:	2f450513          	addi	a0,a0,756 # 80008960 <lockPrint>
    80003674:	ffffe097          	auipc	ra,0xffffe
    80003678:	ba0080e7          	jalr	-1120(ra) # 80001214 <copy_and_swap>
    8000367c:	fe0514e3          	bnez	a0,80003664 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80003680:	00098463          	beqz	s3,80003688 <_Z8printIntiii+0x4c>
    80003684:	0804c463          	bltz	s1,8000370c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80003688:	0004851b          	sext.w	a0,s1
    neg = 0;
    8000368c:	00000593          	li	a1,0
    }

    i = 0;
    80003690:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80003694:	0009079b          	sext.w	a5,s2
    80003698:	0325773b          	remuw	a4,a0,s2
    8000369c:	00048613          	mv	a2,s1
    800036a0:	0014849b          	addiw	s1,s1,1
    800036a4:	02071693          	slli	a3,a4,0x20
    800036a8:	0206d693          	srli	a3,a3,0x20
    800036ac:	00005717          	auipc	a4,0x5
    800036b0:	1a470713          	addi	a4,a4,420 # 80008850 <digits>
    800036b4:	00d70733          	add	a4,a4,a3
    800036b8:	00074683          	lbu	a3,0(a4)
    800036bc:	fd040713          	addi	a4,s0,-48
    800036c0:	00c70733          	add	a4,a4,a2
    800036c4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800036c8:	0005071b          	sext.w	a4,a0
    800036cc:	0325553b          	divuw	a0,a0,s2
    800036d0:	fcf772e3          	bgeu	a4,a5,80003694 <_Z8printIntiii+0x58>
    if(neg)
    800036d4:	00058c63          	beqz	a1,800036ec <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800036d8:	fd040793          	addi	a5,s0,-48
    800036dc:	009784b3          	add	s1,a5,s1
    800036e0:	02d00793          	li	a5,45
    800036e4:	fef48823          	sb	a5,-16(s1)
    800036e8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    800036ec:	fff4849b          	addiw	s1,s1,-1
    800036f0:	0204c463          	bltz	s1,80003718 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    800036f4:	fd040793          	addi	a5,s0,-48
    800036f8:	009787b3          	add	a5,a5,s1
    800036fc:	ff07c503          	lbu	a0,-16(a5)
    80003700:	ffffe097          	auipc	ra,0xffffe
    80003704:	d3c080e7          	jalr	-708(ra) # 8000143c <_Z4putcc>
    80003708:	fe5ff06f          	j	800036ec <_Z8printIntiii+0xb0>
        x = -xx;
    8000370c:	4090053b          	negw	a0,s1
        neg = 1;
    80003710:	00100593          	li	a1,1
        x = -xx;
    80003714:	f7dff06f          	j	80003690 <_Z8printIntiii+0x54>

    UNLOCK();
    80003718:	00000613          	li	a2,0
    8000371c:	00100593          	li	a1,1
    80003720:	00005517          	auipc	a0,0x5
    80003724:	24050513          	addi	a0,a0,576 # 80008960 <lockPrint>
    80003728:	ffffe097          	auipc	ra,0xffffe
    8000372c:	aec080e7          	jalr	-1300(ra) # 80001214 <copy_and_swap>
    80003730:	fe0514e3          	bnez	a0,80003718 <_Z8printIntiii+0xdc>
    80003734:	03813083          	ld	ra,56(sp)
    80003738:	03013403          	ld	s0,48(sp)
    8000373c:	02813483          	ld	s1,40(sp)
    80003740:	02013903          	ld	s2,32(sp)
    80003744:	01813983          	ld	s3,24(sp)
    80003748:	04010113          	addi	sp,sp,64
    8000374c:	00008067          	ret

0000000080003750 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003750:	fd010113          	addi	sp,sp,-48
    80003754:	02113423          	sd	ra,40(sp)
    80003758:	02813023          	sd	s0,32(sp)
    8000375c:	00913c23          	sd	s1,24(sp)
    80003760:	01213823          	sd	s2,16(sp)
    80003764:	01313423          	sd	s3,8(sp)
    80003768:	03010413          	addi	s0,sp,48
    8000376c:	00050493          	mv	s1,a0
    80003770:	00058913          	mv	s2,a1
    80003774:	0015879b          	addiw	a5,a1,1
    80003778:	0007851b          	sext.w	a0,a5
    8000377c:	00f4a023          	sw	a5,0(s1)
    80003780:	0004a823          	sw	zero,16(s1)
    80003784:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003788:	00251513          	slli	a0,a0,0x2
    8000378c:	ffffe097          	auipc	ra,0xffffe
    80003790:	aa8080e7          	jalr	-1368(ra) # 80001234 <_Z9mem_allocm>
    80003794:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80003798:	01000513          	li	a0,16
    8000379c:	fffff097          	auipc	ra,0xfffff
    800037a0:	f74080e7          	jalr	-140(ra) # 80002710 <_Znwm>
    800037a4:	00050993          	mv	s3,a0
    800037a8:	00000593          	li	a1,0
    800037ac:	fffff097          	auipc	ra,0xfffff
    800037b0:	e84080e7          	jalr	-380(ra) # 80002630 <_ZN9SemaphoreC1Ej>
    800037b4:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    800037b8:	01000513          	li	a0,16
    800037bc:	fffff097          	auipc	ra,0xfffff
    800037c0:	f54080e7          	jalr	-172(ra) # 80002710 <_Znwm>
    800037c4:	00050993          	mv	s3,a0
    800037c8:	00090593          	mv	a1,s2
    800037cc:	fffff097          	auipc	ra,0xfffff
    800037d0:	e64080e7          	jalr	-412(ra) # 80002630 <_ZN9SemaphoreC1Ej>
    800037d4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    800037d8:	01000513          	li	a0,16
    800037dc:	fffff097          	auipc	ra,0xfffff
    800037e0:	f34080e7          	jalr	-204(ra) # 80002710 <_Znwm>
    800037e4:	00050913          	mv	s2,a0
    800037e8:	00100593          	li	a1,1
    800037ec:	fffff097          	auipc	ra,0xfffff
    800037f0:	e44080e7          	jalr	-444(ra) # 80002630 <_ZN9SemaphoreC1Ej>
    800037f4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    800037f8:	01000513          	li	a0,16
    800037fc:	fffff097          	auipc	ra,0xfffff
    80003800:	f14080e7          	jalr	-236(ra) # 80002710 <_Znwm>
    80003804:	00050913          	mv	s2,a0
    80003808:	00100593          	li	a1,1
    8000380c:	fffff097          	auipc	ra,0xfffff
    80003810:	e24080e7          	jalr	-476(ra) # 80002630 <_ZN9SemaphoreC1Ej>
    80003814:	0324b823          	sd	s2,48(s1)
}
    80003818:	02813083          	ld	ra,40(sp)
    8000381c:	02013403          	ld	s0,32(sp)
    80003820:	01813483          	ld	s1,24(sp)
    80003824:	01013903          	ld	s2,16(sp)
    80003828:	00813983          	ld	s3,8(sp)
    8000382c:	03010113          	addi	sp,sp,48
    80003830:	00008067          	ret
    80003834:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80003838:	00098513          	mv	a0,s3
    8000383c:	fffff097          	auipc	ra,0xfffff
    80003840:	f24080e7          	jalr	-220(ra) # 80002760 <_ZdlPv>
    80003844:	00048513          	mv	a0,s1
    80003848:	00006097          	auipc	ra,0x6
    8000384c:	1f0080e7          	jalr	496(ra) # 80009a38 <_Unwind_Resume>
    80003850:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80003854:	00098513          	mv	a0,s3
    80003858:	fffff097          	auipc	ra,0xfffff
    8000385c:	f08080e7          	jalr	-248(ra) # 80002760 <_ZdlPv>
    80003860:	00048513          	mv	a0,s1
    80003864:	00006097          	auipc	ra,0x6
    80003868:	1d4080e7          	jalr	468(ra) # 80009a38 <_Unwind_Resume>
    8000386c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80003870:	00090513          	mv	a0,s2
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	eec080e7          	jalr	-276(ra) # 80002760 <_ZdlPv>
    8000387c:	00048513          	mv	a0,s1
    80003880:	00006097          	auipc	ra,0x6
    80003884:	1b8080e7          	jalr	440(ra) # 80009a38 <_Unwind_Resume>
    80003888:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    8000388c:	00090513          	mv	a0,s2
    80003890:	fffff097          	auipc	ra,0xfffff
    80003894:	ed0080e7          	jalr	-304(ra) # 80002760 <_ZdlPv>
    80003898:	00048513          	mv	a0,s1
    8000389c:	00006097          	auipc	ra,0x6
    800038a0:	19c080e7          	jalr	412(ra) # 80009a38 <_Unwind_Resume>

00000000800038a4 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    800038a4:	fe010113          	addi	sp,sp,-32
    800038a8:	00113c23          	sd	ra,24(sp)
    800038ac:	00813823          	sd	s0,16(sp)
    800038b0:	00913423          	sd	s1,8(sp)
    800038b4:	01213023          	sd	s2,0(sp)
    800038b8:	02010413          	addi	s0,sp,32
    800038bc:	00050493          	mv	s1,a0
    800038c0:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    800038c4:	01853503          	ld	a0,24(a0)
    800038c8:	fffff097          	auipc	ra,0xfffff
    800038cc:	da0080e7          	jalr	-608(ra) # 80002668 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    800038d0:	0304b503          	ld	a0,48(s1)
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	d94080e7          	jalr	-620(ra) # 80002668 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    800038dc:	0084b783          	ld	a5,8(s1)
    800038e0:	0144a703          	lw	a4,20(s1)
    800038e4:	00271713          	slli	a4,a4,0x2
    800038e8:	00e787b3          	add	a5,a5,a4
    800038ec:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800038f0:	0144a783          	lw	a5,20(s1)
    800038f4:	0017879b          	addiw	a5,a5,1
    800038f8:	0004a703          	lw	a4,0(s1)
    800038fc:	02e7e7bb          	remw	a5,a5,a4
    80003900:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80003904:	0304b503          	ld	a0,48(s1)
    80003908:	fffff097          	auipc	ra,0xfffff
    8000390c:	d8c080e7          	jalr	-628(ra) # 80002694 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80003910:	0204b503          	ld	a0,32(s1)
    80003914:	fffff097          	auipc	ra,0xfffff
    80003918:	d80080e7          	jalr	-640(ra) # 80002694 <_ZN9Semaphore6signalEv>

}
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	00813483          	ld	s1,8(sp)
    80003928:	00013903          	ld	s2,0(sp)
    8000392c:	02010113          	addi	sp,sp,32
    80003930:	00008067          	ret

0000000080003934 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80003934:	fe010113          	addi	sp,sp,-32
    80003938:	00113c23          	sd	ra,24(sp)
    8000393c:	00813823          	sd	s0,16(sp)
    80003940:	00913423          	sd	s1,8(sp)
    80003944:	01213023          	sd	s2,0(sp)
    80003948:	02010413          	addi	s0,sp,32
    8000394c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80003950:	02053503          	ld	a0,32(a0)
    80003954:	fffff097          	auipc	ra,0xfffff
    80003958:	d14080e7          	jalr	-748(ra) # 80002668 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    8000395c:	0284b503          	ld	a0,40(s1)
    80003960:	fffff097          	auipc	ra,0xfffff
    80003964:	d08080e7          	jalr	-760(ra) # 80002668 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80003968:	0084b703          	ld	a4,8(s1)
    8000396c:	0104a783          	lw	a5,16(s1)
    80003970:	00279693          	slli	a3,a5,0x2
    80003974:	00d70733          	add	a4,a4,a3
    80003978:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000397c:	0017879b          	addiw	a5,a5,1
    80003980:	0004a703          	lw	a4,0(s1)
    80003984:	02e7e7bb          	remw	a5,a5,a4
    80003988:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    8000398c:	0284b503          	ld	a0,40(s1)
    80003990:	fffff097          	auipc	ra,0xfffff
    80003994:	d04080e7          	jalr	-764(ra) # 80002694 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80003998:	0184b503          	ld	a0,24(s1)
    8000399c:	fffff097          	auipc	ra,0xfffff
    800039a0:	cf8080e7          	jalr	-776(ra) # 80002694 <_ZN9Semaphore6signalEv>

    return ret;
}
    800039a4:	00090513          	mv	a0,s2
    800039a8:	01813083          	ld	ra,24(sp)
    800039ac:	01013403          	ld	s0,16(sp)
    800039b0:	00813483          	ld	s1,8(sp)
    800039b4:	00013903          	ld	s2,0(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret

00000000800039c0 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    800039c0:	fe010113          	addi	sp,sp,-32
    800039c4:	00113c23          	sd	ra,24(sp)
    800039c8:	00813823          	sd	s0,16(sp)
    800039cc:	00913423          	sd	s1,8(sp)
    800039d0:	01213023          	sd	s2,0(sp)
    800039d4:	02010413          	addi	s0,sp,32
    800039d8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    800039dc:	02853503          	ld	a0,40(a0)
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	c88080e7          	jalr	-888(ra) # 80002668 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    800039e8:	0304b503          	ld	a0,48(s1)
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	c7c080e7          	jalr	-900(ra) # 80002668 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    800039f4:	0144a783          	lw	a5,20(s1)
    800039f8:	0104a903          	lw	s2,16(s1)
    800039fc:	0327ce63          	blt	a5,s2,80003a38 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80003a00:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80003a04:	0304b503          	ld	a0,48(s1)
    80003a08:	fffff097          	auipc	ra,0xfffff
    80003a0c:	c8c080e7          	jalr	-884(ra) # 80002694 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80003a10:	0284b503          	ld	a0,40(s1)
    80003a14:	fffff097          	auipc	ra,0xfffff
    80003a18:	c80080e7          	jalr	-896(ra) # 80002694 <_ZN9Semaphore6signalEv>

    return ret;
}
    80003a1c:	00090513          	mv	a0,s2
    80003a20:	01813083          	ld	ra,24(sp)
    80003a24:	01013403          	ld	s0,16(sp)
    80003a28:	00813483          	ld	s1,8(sp)
    80003a2c:	00013903          	ld	s2,0(sp)
    80003a30:	02010113          	addi	sp,sp,32
    80003a34:	00008067          	ret
        ret = cap - head + tail;
    80003a38:	0004a703          	lw	a4,0(s1)
    80003a3c:	4127093b          	subw	s2,a4,s2
    80003a40:	00f9093b          	addw	s2,s2,a5
    80003a44:	fc1ff06f          	j	80003a04 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003a48 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003a48:	fe010113          	addi	sp,sp,-32
    80003a4c:	00113c23          	sd	ra,24(sp)
    80003a50:	00813823          	sd	s0,16(sp)
    80003a54:	00913423          	sd	s1,8(sp)
    80003a58:	02010413          	addi	s0,sp,32
    80003a5c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003a60:	00a00513          	li	a0,10
    80003a64:	fffff097          	auipc	ra,0xfffff
    80003a68:	c84080e7          	jalr	-892(ra) # 800026e8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80003a6c:	00003517          	auipc	a0,0x3
    80003a70:	6c450513          	addi	a0,a0,1732 # 80007130 <CONSOLE_STATUS+0x120>
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	a30080e7          	jalr	-1488(ra) # 800034a4 <_Z11printStringPKc>
    while (getCnt()) {
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	f40080e7          	jalr	-192(ra) # 800039c0 <_ZN9BufferCPP6getCntEv>
    80003a88:	02050c63          	beqz	a0,80003ac0 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80003a8c:	0084b783          	ld	a5,8(s1)
    80003a90:	0104a703          	lw	a4,16(s1)
    80003a94:	00271713          	slli	a4,a4,0x2
    80003a98:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80003a9c:	0007c503          	lbu	a0,0(a5)
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	c48080e7          	jalr	-952(ra) # 800026e8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003aa8:	0104a783          	lw	a5,16(s1)
    80003aac:	0017879b          	addiw	a5,a5,1
    80003ab0:	0004a703          	lw	a4,0(s1)
    80003ab4:	02e7e7bb          	remw	a5,a5,a4
    80003ab8:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80003abc:	fc1ff06f          	j	80003a7c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003ac0:	02100513          	li	a0,33
    80003ac4:	fffff097          	auipc	ra,0xfffff
    80003ac8:	c24080e7          	jalr	-988(ra) # 800026e8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80003acc:	00a00513          	li	a0,10
    80003ad0:	fffff097          	auipc	ra,0xfffff
    80003ad4:	c18080e7          	jalr	-1000(ra) # 800026e8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003ad8:	0084b503          	ld	a0,8(s1)
    80003adc:	ffffd097          	auipc	ra,0xffffd
    80003ae0:	780080e7          	jalr	1920(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    80003ae4:	0204b503          	ld	a0,32(s1)
    80003ae8:	00050863          	beqz	a0,80003af8 <_ZN9BufferCPPD1Ev+0xb0>
    80003aec:	00053783          	ld	a5,0(a0)
    80003af0:	0087b783          	ld	a5,8(a5)
    80003af4:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003af8:	0184b503          	ld	a0,24(s1)
    80003afc:	00050863          	beqz	a0,80003b0c <_ZN9BufferCPPD1Ev+0xc4>
    80003b00:	00053783          	ld	a5,0(a0)
    80003b04:	0087b783          	ld	a5,8(a5)
    80003b08:	000780e7          	jalr	a5
    delete mutexTail;
    80003b0c:	0304b503          	ld	a0,48(s1)
    80003b10:	00050863          	beqz	a0,80003b20 <_ZN9BufferCPPD1Ev+0xd8>
    80003b14:	00053783          	ld	a5,0(a0)
    80003b18:	0087b783          	ld	a5,8(a5)
    80003b1c:	000780e7          	jalr	a5
    delete mutexHead;
    80003b20:	0284b503          	ld	a0,40(s1)
    80003b24:	00050863          	beqz	a0,80003b34 <_ZN9BufferCPPD1Ev+0xec>
    80003b28:	00053783          	ld	a5,0(a0)
    80003b2c:	0087b783          	ld	a5,8(a5)
    80003b30:	000780e7          	jalr	a5
}
    80003b34:	01813083          	ld	ra,24(sp)
    80003b38:	01013403          	ld	s0,16(sp)
    80003b3c:	00813483          	ld	s1,8(sp)
    80003b40:	02010113          	addi	sp,sp,32
    80003b44:	00008067          	ret

0000000080003b48 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003b48:	fe010113          	addi	sp,sp,-32
    80003b4c:	00113c23          	sd	ra,24(sp)
    80003b50:	00813823          	sd	s0,16(sp)
    80003b54:	00913423          	sd	s1,8(sp)
    80003b58:	01213023          	sd	s2,0(sp)
    80003b5c:	02010413          	addi	s0,sp,32
    80003b60:	00050493          	mv	s1,a0
    80003b64:	00058913          	mv	s2,a1
    80003b68:	0015879b          	addiw	a5,a1,1
    80003b6c:	0007851b          	sext.w	a0,a5
    80003b70:	00f4a023          	sw	a5,0(s1)
    80003b74:	0004a823          	sw	zero,16(s1)
    80003b78:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80003b7c:	00251513          	slli	a0,a0,0x2
    80003b80:	ffffd097          	auipc	ra,0xffffd
    80003b84:	6b4080e7          	jalr	1716(ra) # 80001234 <_Z9mem_allocm>
    80003b88:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80003b8c:	00000593          	li	a1,0
    80003b90:	02048513          	addi	a0,s1,32
    80003b94:	ffffd097          	auipc	ra,0xffffd
    80003b98:	7cc080e7          	jalr	1996(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    80003b9c:	00090593          	mv	a1,s2
    80003ba0:	01848513          	addi	a0,s1,24
    80003ba4:	ffffd097          	auipc	ra,0xffffd
    80003ba8:	7bc080e7          	jalr	1980(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    80003bac:	00100593          	li	a1,1
    80003bb0:	02848513          	addi	a0,s1,40
    80003bb4:	ffffd097          	auipc	ra,0xffffd
    80003bb8:	7ac080e7          	jalr	1964(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    80003bbc:	00100593          	li	a1,1
    80003bc0:	03048513          	addi	a0,s1,48
    80003bc4:	ffffd097          	auipc	ra,0xffffd
    80003bc8:	79c080e7          	jalr	1948(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80003bcc:	01813083          	ld	ra,24(sp)
    80003bd0:	01013403          	ld	s0,16(sp)
    80003bd4:	00813483          	ld	s1,8(sp)
    80003bd8:	00013903          	ld	s2,0(sp)
    80003bdc:	02010113          	addi	sp,sp,32
    80003be0:	00008067          	ret

0000000080003be4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003be4:	fe010113          	addi	sp,sp,-32
    80003be8:	00113c23          	sd	ra,24(sp)
    80003bec:	00813823          	sd	s0,16(sp)
    80003bf0:	00913423          	sd	s1,8(sp)
    80003bf4:	01213023          	sd	s2,0(sp)
    80003bf8:	02010413          	addi	s0,sp,32
    80003bfc:	00050493          	mv	s1,a0
    80003c00:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003c04:	01853503          	ld	a0,24(a0)
    80003c08:	ffffd097          	auipc	ra,0xffffd
    80003c0c:	7b4080e7          	jalr	1972(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80003c10:	0304b503          	ld	a0,48(s1)
    80003c14:	ffffd097          	auipc	ra,0xffffd
    80003c18:	7a8080e7          	jalr	1960(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80003c1c:	0084b783          	ld	a5,8(s1)
    80003c20:	0144a703          	lw	a4,20(s1)
    80003c24:	00271713          	slli	a4,a4,0x2
    80003c28:	00e787b3          	add	a5,a5,a4
    80003c2c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003c30:	0144a783          	lw	a5,20(s1)
    80003c34:	0017879b          	addiw	a5,a5,1
    80003c38:	0004a703          	lw	a4,0(s1)
    80003c3c:	02e7e7bb          	remw	a5,a5,a4
    80003c40:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003c44:	0304b503          	ld	a0,48(s1)
    80003c48:	ffffd097          	auipc	ra,0xffffd
    80003c4c:	7a0080e7          	jalr	1952(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80003c50:	0204b503          	ld	a0,32(s1)
    80003c54:	ffffd097          	auipc	ra,0xffffd
    80003c58:	794080e7          	jalr	1940(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    80003c5c:	01813083          	ld	ra,24(sp)
    80003c60:	01013403          	ld	s0,16(sp)
    80003c64:	00813483          	ld	s1,8(sp)
    80003c68:	00013903          	ld	s2,0(sp)
    80003c6c:	02010113          	addi	sp,sp,32
    80003c70:	00008067          	ret

0000000080003c74 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003c74:	fe010113          	addi	sp,sp,-32
    80003c78:	00113c23          	sd	ra,24(sp)
    80003c7c:	00813823          	sd	s0,16(sp)
    80003c80:	00913423          	sd	s1,8(sp)
    80003c84:	01213023          	sd	s2,0(sp)
    80003c88:	02010413          	addi	s0,sp,32
    80003c8c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003c90:	02053503          	ld	a0,32(a0)
    80003c94:	ffffd097          	auipc	ra,0xffffd
    80003c98:	728080e7          	jalr	1832(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    80003c9c:	0284b503          	ld	a0,40(s1)
    80003ca0:	ffffd097          	auipc	ra,0xffffd
    80003ca4:	71c080e7          	jalr	1820(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003ca8:	0084b703          	ld	a4,8(s1)
    80003cac:	0104a783          	lw	a5,16(s1)
    80003cb0:	00279693          	slli	a3,a5,0x2
    80003cb4:	00d70733          	add	a4,a4,a3
    80003cb8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003cbc:	0017879b          	addiw	a5,a5,1
    80003cc0:	0004a703          	lw	a4,0(s1)
    80003cc4:	02e7e7bb          	remw	a5,a5,a4
    80003cc8:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003ccc:	0284b503          	ld	a0,40(s1)
    80003cd0:	ffffd097          	auipc	ra,0xffffd
    80003cd4:	718080e7          	jalr	1816(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80003cd8:	0184b503          	ld	a0,24(s1)
    80003cdc:	ffffd097          	auipc	ra,0xffffd
    80003ce0:	70c080e7          	jalr	1804(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003ce4:	00090513          	mv	a0,s2
    80003ce8:	01813083          	ld	ra,24(sp)
    80003cec:	01013403          	ld	s0,16(sp)
    80003cf0:	00813483          	ld	s1,8(sp)
    80003cf4:	00013903          	ld	s2,0(sp)
    80003cf8:	02010113          	addi	sp,sp,32
    80003cfc:	00008067          	ret

0000000080003d00 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003d00:	fe010113          	addi	sp,sp,-32
    80003d04:	00113c23          	sd	ra,24(sp)
    80003d08:	00813823          	sd	s0,16(sp)
    80003d0c:	00913423          	sd	s1,8(sp)
    80003d10:	01213023          	sd	s2,0(sp)
    80003d14:	02010413          	addi	s0,sp,32
    80003d18:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003d1c:	02853503          	ld	a0,40(a0)
    80003d20:	ffffd097          	auipc	ra,0xffffd
    80003d24:	69c080e7          	jalr	1692(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80003d28:	0304b503          	ld	a0,48(s1)
    80003d2c:	ffffd097          	auipc	ra,0xffffd
    80003d30:	690080e7          	jalr	1680(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003d34:	0144a783          	lw	a5,20(s1)
    80003d38:	0104a903          	lw	s2,16(s1)
    80003d3c:	0327ce63          	blt	a5,s2,80003d78 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003d40:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003d44:	0304b503          	ld	a0,48(s1)
    80003d48:	ffffd097          	auipc	ra,0xffffd
    80003d4c:	6a0080e7          	jalr	1696(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80003d50:	0284b503          	ld	a0,40(s1)
    80003d54:	ffffd097          	auipc	ra,0xffffd
    80003d58:	694080e7          	jalr	1684(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003d5c:	00090513          	mv	a0,s2
    80003d60:	01813083          	ld	ra,24(sp)
    80003d64:	01013403          	ld	s0,16(sp)
    80003d68:	00813483          	ld	s1,8(sp)
    80003d6c:	00013903          	ld	s2,0(sp)
    80003d70:	02010113          	addi	sp,sp,32
    80003d74:	00008067          	ret
        ret = cap - head + tail;
    80003d78:	0004a703          	lw	a4,0(s1)
    80003d7c:	4127093b          	subw	s2,a4,s2
    80003d80:	00f9093b          	addw	s2,s2,a5
    80003d84:	fc1ff06f          	j	80003d44 <_ZN6Buffer6getCntEv+0x44>

0000000080003d88 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003d88:	fe010113          	addi	sp,sp,-32
    80003d8c:	00113c23          	sd	ra,24(sp)
    80003d90:	00813823          	sd	s0,16(sp)
    80003d94:	00913423          	sd	s1,8(sp)
    80003d98:	02010413          	addi	s0,sp,32
    80003d9c:	00050493          	mv	s1,a0
    putc('\n');
    80003da0:	00a00513          	li	a0,10
    80003da4:	ffffd097          	auipc	ra,0xffffd
    80003da8:	698080e7          	jalr	1688(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    80003dac:	00003517          	auipc	a0,0x3
    80003db0:	38450513          	addi	a0,a0,900 # 80007130 <CONSOLE_STATUS+0x120>
    80003db4:	fffff097          	auipc	ra,0xfffff
    80003db8:	6f0080e7          	jalr	1776(ra) # 800034a4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003dbc:	00048513          	mv	a0,s1
    80003dc0:	00000097          	auipc	ra,0x0
    80003dc4:	f40080e7          	jalr	-192(ra) # 80003d00 <_ZN6Buffer6getCntEv>
    80003dc8:	02a05c63          	blez	a0,80003e00 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003dcc:	0084b783          	ld	a5,8(s1)
    80003dd0:	0104a703          	lw	a4,16(s1)
    80003dd4:	00271713          	slli	a4,a4,0x2
    80003dd8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003ddc:	0007c503          	lbu	a0,0(a5)
    80003de0:	ffffd097          	auipc	ra,0xffffd
    80003de4:	65c080e7          	jalr	1628(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    80003de8:	0104a783          	lw	a5,16(s1)
    80003dec:	0017879b          	addiw	a5,a5,1
    80003df0:	0004a703          	lw	a4,0(s1)
    80003df4:	02e7e7bb          	remw	a5,a5,a4
    80003df8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003dfc:	fc1ff06f          	j	80003dbc <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003e00:	02100513          	li	a0,33
    80003e04:	ffffd097          	auipc	ra,0xffffd
    80003e08:	638080e7          	jalr	1592(ra) # 8000143c <_Z4putcc>
    putc('\n');
    80003e0c:	00a00513          	li	a0,10
    80003e10:	ffffd097          	auipc	ra,0xffffd
    80003e14:	62c080e7          	jalr	1580(ra) # 8000143c <_Z4putcc>
    mem_free(buffer);
    80003e18:	0084b503          	ld	a0,8(s1)
    80003e1c:	ffffd097          	auipc	ra,0xffffd
    80003e20:	440080e7          	jalr	1088(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003e24:	0204b503          	ld	a0,32(s1)
    80003e28:	ffffd097          	auipc	ra,0xffffd
    80003e2c:	568080e7          	jalr	1384(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    80003e30:	0184b503          	ld	a0,24(s1)
    80003e34:	ffffd097          	auipc	ra,0xffffd
    80003e38:	55c080e7          	jalr	1372(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003e3c:	0304b503          	ld	a0,48(s1)
    80003e40:	ffffd097          	auipc	ra,0xffffd
    80003e44:	550080e7          	jalr	1360(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003e48:	0284b503          	ld	a0,40(s1)
    80003e4c:	ffffd097          	auipc	ra,0xffffd
    80003e50:	544080e7          	jalr	1348(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003e54:	01813083          	ld	ra,24(sp)
    80003e58:	01013403          	ld	s0,16(sp)
    80003e5c:	00813483          	ld	s1,8(sp)
    80003e60:	02010113          	addi	sp,sp,32
    80003e64:	00008067          	ret

0000000080003e68 <start>:
    80003e68:	ff010113          	addi	sp,sp,-16
    80003e6c:	00813423          	sd	s0,8(sp)
    80003e70:	01010413          	addi	s0,sp,16
    80003e74:	300027f3          	csrr	a5,mstatus
    80003e78:	ffffe737          	lui	a4,0xffffe
    80003e7c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff4c2f>
    80003e80:	00e7f7b3          	and	a5,a5,a4
    80003e84:	00001737          	lui	a4,0x1
    80003e88:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003e8c:	00e7e7b3          	or	a5,a5,a4
    80003e90:	30079073          	csrw	mstatus,a5
    80003e94:	00000797          	auipc	a5,0x0
    80003e98:	16078793          	addi	a5,a5,352 # 80003ff4 <system_main>
    80003e9c:	34179073          	csrw	mepc,a5
    80003ea0:	00000793          	li	a5,0
    80003ea4:	18079073          	csrw	satp,a5
    80003ea8:	000107b7          	lui	a5,0x10
    80003eac:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003eb0:	30279073          	csrw	medeleg,a5
    80003eb4:	30379073          	csrw	mideleg,a5
    80003eb8:	104027f3          	csrr	a5,sie
    80003ebc:	2227e793          	ori	a5,a5,546
    80003ec0:	10479073          	csrw	sie,a5
    80003ec4:	fff00793          	li	a5,-1
    80003ec8:	00a7d793          	srli	a5,a5,0xa
    80003ecc:	3b079073          	csrw	pmpaddr0,a5
    80003ed0:	00f00793          	li	a5,15
    80003ed4:	3a079073          	csrw	pmpcfg0,a5
    80003ed8:	f14027f3          	csrr	a5,mhartid
    80003edc:	0200c737          	lui	a4,0x200c
    80003ee0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003ee4:	0007869b          	sext.w	a3,a5
    80003ee8:	00269713          	slli	a4,a3,0x2
    80003eec:	000f4637          	lui	a2,0xf4
    80003ef0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003ef4:	00d70733          	add	a4,a4,a3
    80003ef8:	0037979b          	slliw	a5,a5,0x3
    80003efc:	020046b7          	lui	a3,0x2004
    80003f00:	00d787b3          	add	a5,a5,a3
    80003f04:	00c585b3          	add	a1,a1,a2
    80003f08:	00371693          	slli	a3,a4,0x3
    80003f0c:	00005717          	auipc	a4,0x5
    80003f10:	a6470713          	addi	a4,a4,-1436 # 80008970 <timer_scratch>
    80003f14:	00b7b023          	sd	a1,0(a5)
    80003f18:	00d70733          	add	a4,a4,a3
    80003f1c:	00f73c23          	sd	a5,24(a4)
    80003f20:	02c73023          	sd	a2,32(a4)
    80003f24:	34071073          	csrw	mscratch,a4
    80003f28:	00000797          	auipc	a5,0x0
    80003f2c:	6e878793          	addi	a5,a5,1768 # 80004610 <timervec>
    80003f30:	30579073          	csrw	mtvec,a5
    80003f34:	300027f3          	csrr	a5,mstatus
    80003f38:	0087e793          	ori	a5,a5,8
    80003f3c:	30079073          	csrw	mstatus,a5
    80003f40:	304027f3          	csrr	a5,mie
    80003f44:	0807e793          	ori	a5,a5,128
    80003f48:	30479073          	csrw	mie,a5
    80003f4c:	f14027f3          	csrr	a5,mhartid
    80003f50:	0007879b          	sext.w	a5,a5
    80003f54:	00078213          	mv	tp,a5
    80003f58:	30200073          	mret
    80003f5c:	00813403          	ld	s0,8(sp)
    80003f60:	01010113          	addi	sp,sp,16
    80003f64:	00008067          	ret

0000000080003f68 <timerinit>:
    80003f68:	ff010113          	addi	sp,sp,-16
    80003f6c:	00813423          	sd	s0,8(sp)
    80003f70:	01010413          	addi	s0,sp,16
    80003f74:	f14027f3          	csrr	a5,mhartid
    80003f78:	0200c737          	lui	a4,0x200c
    80003f7c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003f80:	0007869b          	sext.w	a3,a5
    80003f84:	00269713          	slli	a4,a3,0x2
    80003f88:	000f4637          	lui	a2,0xf4
    80003f8c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003f90:	00d70733          	add	a4,a4,a3
    80003f94:	0037979b          	slliw	a5,a5,0x3
    80003f98:	020046b7          	lui	a3,0x2004
    80003f9c:	00d787b3          	add	a5,a5,a3
    80003fa0:	00c585b3          	add	a1,a1,a2
    80003fa4:	00371693          	slli	a3,a4,0x3
    80003fa8:	00005717          	auipc	a4,0x5
    80003fac:	9c870713          	addi	a4,a4,-1592 # 80008970 <timer_scratch>
    80003fb0:	00b7b023          	sd	a1,0(a5)
    80003fb4:	00d70733          	add	a4,a4,a3
    80003fb8:	00f73c23          	sd	a5,24(a4)
    80003fbc:	02c73023          	sd	a2,32(a4)
    80003fc0:	34071073          	csrw	mscratch,a4
    80003fc4:	00000797          	auipc	a5,0x0
    80003fc8:	64c78793          	addi	a5,a5,1612 # 80004610 <timervec>
    80003fcc:	30579073          	csrw	mtvec,a5
    80003fd0:	300027f3          	csrr	a5,mstatus
    80003fd4:	0087e793          	ori	a5,a5,8
    80003fd8:	30079073          	csrw	mstatus,a5
    80003fdc:	304027f3          	csrr	a5,mie
    80003fe0:	0807e793          	ori	a5,a5,128
    80003fe4:	30479073          	csrw	mie,a5
    80003fe8:	00813403          	ld	s0,8(sp)
    80003fec:	01010113          	addi	sp,sp,16
    80003ff0:	00008067          	ret

0000000080003ff4 <system_main>:
    80003ff4:	fe010113          	addi	sp,sp,-32
    80003ff8:	00813823          	sd	s0,16(sp)
    80003ffc:	00913423          	sd	s1,8(sp)
    80004000:	00113c23          	sd	ra,24(sp)
    80004004:	02010413          	addi	s0,sp,32
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	0c4080e7          	jalr	196(ra) # 800040cc <cpuid>
    80004010:	00005497          	auipc	s1,0x5
    80004014:	8c048493          	addi	s1,s1,-1856 # 800088d0 <started>
    80004018:	02050263          	beqz	a0,8000403c <system_main+0x48>
    8000401c:	0004a783          	lw	a5,0(s1)
    80004020:	0007879b          	sext.w	a5,a5
    80004024:	fe078ce3          	beqz	a5,8000401c <system_main+0x28>
    80004028:	0ff0000f          	fence
    8000402c:	00003517          	auipc	a0,0x3
    80004030:	14c50513          	addi	a0,a0,332 # 80007178 <CONSOLE_STATUS+0x168>
    80004034:	00001097          	auipc	ra,0x1
    80004038:	a78080e7          	jalr	-1416(ra) # 80004aac <panic>
    8000403c:	00001097          	auipc	ra,0x1
    80004040:	9cc080e7          	jalr	-1588(ra) # 80004a08 <consoleinit>
    80004044:	00001097          	auipc	ra,0x1
    80004048:	158080e7          	jalr	344(ra) # 8000519c <printfinit>
    8000404c:	00003517          	auipc	a0,0x3
    80004050:	20c50513          	addi	a0,a0,524 # 80007258 <CONSOLE_STATUS+0x248>
    80004054:	00001097          	auipc	ra,0x1
    80004058:	ab4080e7          	jalr	-1356(ra) # 80004b08 <__printf>
    8000405c:	00003517          	auipc	a0,0x3
    80004060:	0ec50513          	addi	a0,a0,236 # 80007148 <CONSOLE_STATUS+0x138>
    80004064:	00001097          	auipc	ra,0x1
    80004068:	aa4080e7          	jalr	-1372(ra) # 80004b08 <__printf>
    8000406c:	00003517          	auipc	a0,0x3
    80004070:	1ec50513          	addi	a0,a0,492 # 80007258 <CONSOLE_STATUS+0x248>
    80004074:	00001097          	auipc	ra,0x1
    80004078:	a94080e7          	jalr	-1388(ra) # 80004b08 <__printf>
    8000407c:	00001097          	auipc	ra,0x1
    80004080:	4ac080e7          	jalr	1196(ra) # 80005528 <kinit>
    80004084:	00000097          	auipc	ra,0x0
    80004088:	148080e7          	jalr	328(ra) # 800041cc <trapinit>
    8000408c:	00000097          	auipc	ra,0x0
    80004090:	16c080e7          	jalr	364(ra) # 800041f8 <trapinithart>
    80004094:	00000097          	auipc	ra,0x0
    80004098:	5bc080e7          	jalr	1468(ra) # 80004650 <plicinit>
    8000409c:	00000097          	auipc	ra,0x0
    800040a0:	5dc080e7          	jalr	1500(ra) # 80004678 <plicinithart>
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	078080e7          	jalr	120(ra) # 8000411c <userinit>
    800040ac:	0ff0000f          	fence
    800040b0:	00100793          	li	a5,1
    800040b4:	00003517          	auipc	a0,0x3
    800040b8:	0ac50513          	addi	a0,a0,172 # 80007160 <CONSOLE_STATUS+0x150>
    800040bc:	00f4a023          	sw	a5,0(s1)
    800040c0:	00001097          	auipc	ra,0x1
    800040c4:	a48080e7          	jalr	-1464(ra) # 80004b08 <__printf>
    800040c8:	0000006f          	j	800040c8 <system_main+0xd4>

00000000800040cc <cpuid>:
    800040cc:	ff010113          	addi	sp,sp,-16
    800040d0:	00813423          	sd	s0,8(sp)
    800040d4:	01010413          	addi	s0,sp,16
    800040d8:	00020513          	mv	a0,tp
    800040dc:	00813403          	ld	s0,8(sp)
    800040e0:	0005051b          	sext.w	a0,a0
    800040e4:	01010113          	addi	sp,sp,16
    800040e8:	00008067          	ret

00000000800040ec <mycpu>:
    800040ec:	ff010113          	addi	sp,sp,-16
    800040f0:	00813423          	sd	s0,8(sp)
    800040f4:	01010413          	addi	s0,sp,16
    800040f8:	00020793          	mv	a5,tp
    800040fc:	00813403          	ld	s0,8(sp)
    80004100:	0007879b          	sext.w	a5,a5
    80004104:	00779793          	slli	a5,a5,0x7
    80004108:	00006517          	auipc	a0,0x6
    8000410c:	89850513          	addi	a0,a0,-1896 # 800099a0 <cpus>
    80004110:	00f50533          	add	a0,a0,a5
    80004114:	01010113          	addi	sp,sp,16
    80004118:	00008067          	ret

000000008000411c <userinit>:
    8000411c:	ff010113          	addi	sp,sp,-16
    80004120:	00813423          	sd	s0,8(sp)
    80004124:	01010413          	addi	s0,sp,16
    80004128:	00813403          	ld	s0,8(sp)
    8000412c:	01010113          	addi	sp,sp,16
    80004130:	ffffe317          	auipc	t1,0xffffe
    80004134:	29030067          	jr	656(t1) # 800023c0 <main>

0000000080004138 <either_copyout>:
    80004138:	ff010113          	addi	sp,sp,-16
    8000413c:	00813023          	sd	s0,0(sp)
    80004140:	00113423          	sd	ra,8(sp)
    80004144:	01010413          	addi	s0,sp,16
    80004148:	02051663          	bnez	a0,80004174 <either_copyout+0x3c>
    8000414c:	00058513          	mv	a0,a1
    80004150:	00060593          	mv	a1,a2
    80004154:	0006861b          	sext.w	a2,a3
    80004158:	00002097          	auipc	ra,0x2
    8000415c:	c5c080e7          	jalr	-932(ra) # 80005db4 <__memmove>
    80004160:	00813083          	ld	ra,8(sp)
    80004164:	00013403          	ld	s0,0(sp)
    80004168:	00000513          	li	a0,0
    8000416c:	01010113          	addi	sp,sp,16
    80004170:	00008067          	ret
    80004174:	00003517          	auipc	a0,0x3
    80004178:	02c50513          	addi	a0,a0,44 # 800071a0 <CONSOLE_STATUS+0x190>
    8000417c:	00001097          	auipc	ra,0x1
    80004180:	930080e7          	jalr	-1744(ra) # 80004aac <panic>

0000000080004184 <either_copyin>:
    80004184:	ff010113          	addi	sp,sp,-16
    80004188:	00813023          	sd	s0,0(sp)
    8000418c:	00113423          	sd	ra,8(sp)
    80004190:	01010413          	addi	s0,sp,16
    80004194:	02059463          	bnez	a1,800041bc <either_copyin+0x38>
    80004198:	00060593          	mv	a1,a2
    8000419c:	0006861b          	sext.w	a2,a3
    800041a0:	00002097          	auipc	ra,0x2
    800041a4:	c14080e7          	jalr	-1004(ra) # 80005db4 <__memmove>
    800041a8:	00813083          	ld	ra,8(sp)
    800041ac:	00013403          	ld	s0,0(sp)
    800041b0:	00000513          	li	a0,0
    800041b4:	01010113          	addi	sp,sp,16
    800041b8:	00008067          	ret
    800041bc:	00003517          	auipc	a0,0x3
    800041c0:	00c50513          	addi	a0,a0,12 # 800071c8 <CONSOLE_STATUS+0x1b8>
    800041c4:	00001097          	auipc	ra,0x1
    800041c8:	8e8080e7          	jalr	-1816(ra) # 80004aac <panic>

00000000800041cc <trapinit>:
    800041cc:	ff010113          	addi	sp,sp,-16
    800041d0:	00813423          	sd	s0,8(sp)
    800041d4:	01010413          	addi	s0,sp,16
    800041d8:	00813403          	ld	s0,8(sp)
    800041dc:	00003597          	auipc	a1,0x3
    800041e0:	01458593          	addi	a1,a1,20 # 800071f0 <CONSOLE_STATUS+0x1e0>
    800041e4:	00006517          	auipc	a0,0x6
    800041e8:	83c50513          	addi	a0,a0,-1988 # 80009a20 <tickslock>
    800041ec:	01010113          	addi	sp,sp,16
    800041f0:	00001317          	auipc	t1,0x1
    800041f4:	5c830067          	jr	1480(t1) # 800057b8 <initlock>

00000000800041f8 <trapinithart>:
    800041f8:	ff010113          	addi	sp,sp,-16
    800041fc:	00813423          	sd	s0,8(sp)
    80004200:	01010413          	addi	s0,sp,16
    80004204:	00000797          	auipc	a5,0x0
    80004208:	2fc78793          	addi	a5,a5,764 # 80004500 <kernelvec>
    8000420c:	10579073          	csrw	stvec,a5
    80004210:	00813403          	ld	s0,8(sp)
    80004214:	01010113          	addi	sp,sp,16
    80004218:	00008067          	ret

000000008000421c <usertrap>:
    8000421c:	ff010113          	addi	sp,sp,-16
    80004220:	00813423          	sd	s0,8(sp)
    80004224:	01010413          	addi	s0,sp,16
    80004228:	00813403          	ld	s0,8(sp)
    8000422c:	01010113          	addi	sp,sp,16
    80004230:	00008067          	ret

0000000080004234 <usertrapret>:
    80004234:	ff010113          	addi	sp,sp,-16
    80004238:	00813423          	sd	s0,8(sp)
    8000423c:	01010413          	addi	s0,sp,16
    80004240:	00813403          	ld	s0,8(sp)
    80004244:	01010113          	addi	sp,sp,16
    80004248:	00008067          	ret

000000008000424c <kerneltrap>:
    8000424c:	fe010113          	addi	sp,sp,-32
    80004250:	00813823          	sd	s0,16(sp)
    80004254:	00113c23          	sd	ra,24(sp)
    80004258:	00913423          	sd	s1,8(sp)
    8000425c:	02010413          	addi	s0,sp,32
    80004260:	142025f3          	csrr	a1,scause
    80004264:	100027f3          	csrr	a5,sstatus
    80004268:	0027f793          	andi	a5,a5,2
    8000426c:	10079c63          	bnez	a5,80004384 <kerneltrap+0x138>
    80004270:	142027f3          	csrr	a5,scause
    80004274:	0207ce63          	bltz	a5,800042b0 <kerneltrap+0x64>
    80004278:	00003517          	auipc	a0,0x3
    8000427c:	fc050513          	addi	a0,a0,-64 # 80007238 <CONSOLE_STATUS+0x228>
    80004280:	00001097          	auipc	ra,0x1
    80004284:	888080e7          	jalr	-1912(ra) # 80004b08 <__printf>
    80004288:	141025f3          	csrr	a1,sepc
    8000428c:	14302673          	csrr	a2,stval
    80004290:	00003517          	auipc	a0,0x3
    80004294:	fb850513          	addi	a0,a0,-72 # 80007248 <CONSOLE_STATUS+0x238>
    80004298:	00001097          	auipc	ra,0x1
    8000429c:	870080e7          	jalr	-1936(ra) # 80004b08 <__printf>
    800042a0:	00003517          	auipc	a0,0x3
    800042a4:	fc050513          	addi	a0,a0,-64 # 80007260 <CONSOLE_STATUS+0x250>
    800042a8:	00001097          	auipc	ra,0x1
    800042ac:	804080e7          	jalr	-2044(ra) # 80004aac <panic>
    800042b0:	0ff7f713          	andi	a4,a5,255
    800042b4:	00900693          	li	a3,9
    800042b8:	04d70063          	beq	a4,a3,800042f8 <kerneltrap+0xac>
    800042bc:	fff00713          	li	a4,-1
    800042c0:	03f71713          	slli	a4,a4,0x3f
    800042c4:	00170713          	addi	a4,a4,1
    800042c8:	fae798e3          	bne	a5,a4,80004278 <kerneltrap+0x2c>
    800042cc:	00000097          	auipc	ra,0x0
    800042d0:	e00080e7          	jalr	-512(ra) # 800040cc <cpuid>
    800042d4:	06050663          	beqz	a0,80004340 <kerneltrap+0xf4>
    800042d8:	144027f3          	csrr	a5,sip
    800042dc:	ffd7f793          	andi	a5,a5,-3
    800042e0:	14479073          	csrw	sip,a5
    800042e4:	01813083          	ld	ra,24(sp)
    800042e8:	01013403          	ld	s0,16(sp)
    800042ec:	00813483          	ld	s1,8(sp)
    800042f0:	02010113          	addi	sp,sp,32
    800042f4:	00008067          	ret
    800042f8:	00000097          	auipc	ra,0x0
    800042fc:	3cc080e7          	jalr	972(ra) # 800046c4 <plic_claim>
    80004300:	00a00793          	li	a5,10
    80004304:	00050493          	mv	s1,a0
    80004308:	06f50863          	beq	a0,a5,80004378 <kerneltrap+0x12c>
    8000430c:	fc050ce3          	beqz	a0,800042e4 <kerneltrap+0x98>
    80004310:	00050593          	mv	a1,a0
    80004314:	00003517          	auipc	a0,0x3
    80004318:	f0450513          	addi	a0,a0,-252 # 80007218 <CONSOLE_STATUS+0x208>
    8000431c:	00000097          	auipc	ra,0x0
    80004320:	7ec080e7          	jalr	2028(ra) # 80004b08 <__printf>
    80004324:	01013403          	ld	s0,16(sp)
    80004328:	01813083          	ld	ra,24(sp)
    8000432c:	00048513          	mv	a0,s1
    80004330:	00813483          	ld	s1,8(sp)
    80004334:	02010113          	addi	sp,sp,32
    80004338:	00000317          	auipc	t1,0x0
    8000433c:	3c430067          	jr	964(t1) # 800046fc <plic_complete>
    80004340:	00005517          	auipc	a0,0x5
    80004344:	6e050513          	addi	a0,a0,1760 # 80009a20 <tickslock>
    80004348:	00001097          	auipc	ra,0x1
    8000434c:	494080e7          	jalr	1172(ra) # 800057dc <acquire>
    80004350:	00004717          	auipc	a4,0x4
    80004354:	58470713          	addi	a4,a4,1412 # 800088d4 <ticks>
    80004358:	00072783          	lw	a5,0(a4)
    8000435c:	00005517          	auipc	a0,0x5
    80004360:	6c450513          	addi	a0,a0,1732 # 80009a20 <tickslock>
    80004364:	0017879b          	addiw	a5,a5,1
    80004368:	00f72023          	sw	a5,0(a4)
    8000436c:	00001097          	auipc	ra,0x1
    80004370:	53c080e7          	jalr	1340(ra) # 800058a8 <release>
    80004374:	f65ff06f          	j	800042d8 <kerneltrap+0x8c>
    80004378:	00001097          	auipc	ra,0x1
    8000437c:	098080e7          	jalr	152(ra) # 80005410 <uartintr>
    80004380:	fa5ff06f          	j	80004324 <kerneltrap+0xd8>
    80004384:	00003517          	auipc	a0,0x3
    80004388:	e7450513          	addi	a0,a0,-396 # 800071f8 <CONSOLE_STATUS+0x1e8>
    8000438c:	00000097          	auipc	ra,0x0
    80004390:	720080e7          	jalr	1824(ra) # 80004aac <panic>

0000000080004394 <clockintr>:
    80004394:	fe010113          	addi	sp,sp,-32
    80004398:	00813823          	sd	s0,16(sp)
    8000439c:	00913423          	sd	s1,8(sp)
    800043a0:	00113c23          	sd	ra,24(sp)
    800043a4:	02010413          	addi	s0,sp,32
    800043a8:	00005497          	auipc	s1,0x5
    800043ac:	67848493          	addi	s1,s1,1656 # 80009a20 <tickslock>
    800043b0:	00048513          	mv	a0,s1
    800043b4:	00001097          	auipc	ra,0x1
    800043b8:	428080e7          	jalr	1064(ra) # 800057dc <acquire>
    800043bc:	00004717          	auipc	a4,0x4
    800043c0:	51870713          	addi	a4,a4,1304 # 800088d4 <ticks>
    800043c4:	00072783          	lw	a5,0(a4)
    800043c8:	01013403          	ld	s0,16(sp)
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	00048513          	mv	a0,s1
    800043d4:	0017879b          	addiw	a5,a5,1
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	00f72023          	sw	a5,0(a4)
    800043e0:	02010113          	addi	sp,sp,32
    800043e4:	00001317          	auipc	t1,0x1
    800043e8:	4c430067          	jr	1220(t1) # 800058a8 <release>

00000000800043ec <devintr>:
    800043ec:	142027f3          	csrr	a5,scause
    800043f0:	00000513          	li	a0,0
    800043f4:	0007c463          	bltz	a5,800043fc <devintr+0x10>
    800043f8:	00008067          	ret
    800043fc:	fe010113          	addi	sp,sp,-32
    80004400:	00813823          	sd	s0,16(sp)
    80004404:	00113c23          	sd	ra,24(sp)
    80004408:	00913423          	sd	s1,8(sp)
    8000440c:	02010413          	addi	s0,sp,32
    80004410:	0ff7f713          	andi	a4,a5,255
    80004414:	00900693          	li	a3,9
    80004418:	04d70c63          	beq	a4,a3,80004470 <devintr+0x84>
    8000441c:	fff00713          	li	a4,-1
    80004420:	03f71713          	slli	a4,a4,0x3f
    80004424:	00170713          	addi	a4,a4,1
    80004428:	00e78c63          	beq	a5,a4,80004440 <devintr+0x54>
    8000442c:	01813083          	ld	ra,24(sp)
    80004430:	01013403          	ld	s0,16(sp)
    80004434:	00813483          	ld	s1,8(sp)
    80004438:	02010113          	addi	sp,sp,32
    8000443c:	00008067          	ret
    80004440:	00000097          	auipc	ra,0x0
    80004444:	c8c080e7          	jalr	-884(ra) # 800040cc <cpuid>
    80004448:	06050663          	beqz	a0,800044b4 <devintr+0xc8>
    8000444c:	144027f3          	csrr	a5,sip
    80004450:	ffd7f793          	andi	a5,a5,-3
    80004454:	14479073          	csrw	sip,a5
    80004458:	01813083          	ld	ra,24(sp)
    8000445c:	01013403          	ld	s0,16(sp)
    80004460:	00813483          	ld	s1,8(sp)
    80004464:	00200513          	li	a0,2
    80004468:	02010113          	addi	sp,sp,32
    8000446c:	00008067          	ret
    80004470:	00000097          	auipc	ra,0x0
    80004474:	254080e7          	jalr	596(ra) # 800046c4 <plic_claim>
    80004478:	00a00793          	li	a5,10
    8000447c:	00050493          	mv	s1,a0
    80004480:	06f50663          	beq	a0,a5,800044ec <devintr+0x100>
    80004484:	00100513          	li	a0,1
    80004488:	fa0482e3          	beqz	s1,8000442c <devintr+0x40>
    8000448c:	00048593          	mv	a1,s1
    80004490:	00003517          	auipc	a0,0x3
    80004494:	d8850513          	addi	a0,a0,-632 # 80007218 <CONSOLE_STATUS+0x208>
    80004498:	00000097          	auipc	ra,0x0
    8000449c:	670080e7          	jalr	1648(ra) # 80004b08 <__printf>
    800044a0:	00048513          	mv	a0,s1
    800044a4:	00000097          	auipc	ra,0x0
    800044a8:	258080e7          	jalr	600(ra) # 800046fc <plic_complete>
    800044ac:	00100513          	li	a0,1
    800044b0:	f7dff06f          	j	8000442c <devintr+0x40>
    800044b4:	00005517          	auipc	a0,0x5
    800044b8:	56c50513          	addi	a0,a0,1388 # 80009a20 <tickslock>
    800044bc:	00001097          	auipc	ra,0x1
    800044c0:	320080e7          	jalr	800(ra) # 800057dc <acquire>
    800044c4:	00004717          	auipc	a4,0x4
    800044c8:	41070713          	addi	a4,a4,1040 # 800088d4 <ticks>
    800044cc:	00072783          	lw	a5,0(a4)
    800044d0:	00005517          	auipc	a0,0x5
    800044d4:	55050513          	addi	a0,a0,1360 # 80009a20 <tickslock>
    800044d8:	0017879b          	addiw	a5,a5,1
    800044dc:	00f72023          	sw	a5,0(a4)
    800044e0:	00001097          	auipc	ra,0x1
    800044e4:	3c8080e7          	jalr	968(ra) # 800058a8 <release>
    800044e8:	f65ff06f          	j	8000444c <devintr+0x60>
    800044ec:	00001097          	auipc	ra,0x1
    800044f0:	f24080e7          	jalr	-220(ra) # 80005410 <uartintr>
    800044f4:	fadff06f          	j	800044a0 <devintr+0xb4>
	...

0000000080004500 <kernelvec>:
    80004500:	f0010113          	addi	sp,sp,-256
    80004504:	00113023          	sd	ra,0(sp)
    80004508:	00213423          	sd	sp,8(sp)
    8000450c:	00313823          	sd	gp,16(sp)
    80004510:	00413c23          	sd	tp,24(sp)
    80004514:	02513023          	sd	t0,32(sp)
    80004518:	02613423          	sd	t1,40(sp)
    8000451c:	02713823          	sd	t2,48(sp)
    80004520:	02813c23          	sd	s0,56(sp)
    80004524:	04913023          	sd	s1,64(sp)
    80004528:	04a13423          	sd	a0,72(sp)
    8000452c:	04b13823          	sd	a1,80(sp)
    80004530:	04c13c23          	sd	a2,88(sp)
    80004534:	06d13023          	sd	a3,96(sp)
    80004538:	06e13423          	sd	a4,104(sp)
    8000453c:	06f13823          	sd	a5,112(sp)
    80004540:	07013c23          	sd	a6,120(sp)
    80004544:	09113023          	sd	a7,128(sp)
    80004548:	09213423          	sd	s2,136(sp)
    8000454c:	09313823          	sd	s3,144(sp)
    80004550:	09413c23          	sd	s4,152(sp)
    80004554:	0b513023          	sd	s5,160(sp)
    80004558:	0b613423          	sd	s6,168(sp)
    8000455c:	0b713823          	sd	s7,176(sp)
    80004560:	0b813c23          	sd	s8,184(sp)
    80004564:	0d913023          	sd	s9,192(sp)
    80004568:	0da13423          	sd	s10,200(sp)
    8000456c:	0db13823          	sd	s11,208(sp)
    80004570:	0dc13c23          	sd	t3,216(sp)
    80004574:	0fd13023          	sd	t4,224(sp)
    80004578:	0fe13423          	sd	t5,232(sp)
    8000457c:	0ff13823          	sd	t6,240(sp)
    80004580:	ccdff0ef          	jal	ra,8000424c <kerneltrap>
    80004584:	00013083          	ld	ra,0(sp)
    80004588:	00813103          	ld	sp,8(sp)
    8000458c:	01013183          	ld	gp,16(sp)
    80004590:	02013283          	ld	t0,32(sp)
    80004594:	02813303          	ld	t1,40(sp)
    80004598:	03013383          	ld	t2,48(sp)
    8000459c:	03813403          	ld	s0,56(sp)
    800045a0:	04013483          	ld	s1,64(sp)
    800045a4:	04813503          	ld	a0,72(sp)
    800045a8:	05013583          	ld	a1,80(sp)
    800045ac:	05813603          	ld	a2,88(sp)
    800045b0:	06013683          	ld	a3,96(sp)
    800045b4:	06813703          	ld	a4,104(sp)
    800045b8:	07013783          	ld	a5,112(sp)
    800045bc:	07813803          	ld	a6,120(sp)
    800045c0:	08013883          	ld	a7,128(sp)
    800045c4:	08813903          	ld	s2,136(sp)
    800045c8:	09013983          	ld	s3,144(sp)
    800045cc:	09813a03          	ld	s4,152(sp)
    800045d0:	0a013a83          	ld	s5,160(sp)
    800045d4:	0a813b03          	ld	s6,168(sp)
    800045d8:	0b013b83          	ld	s7,176(sp)
    800045dc:	0b813c03          	ld	s8,184(sp)
    800045e0:	0c013c83          	ld	s9,192(sp)
    800045e4:	0c813d03          	ld	s10,200(sp)
    800045e8:	0d013d83          	ld	s11,208(sp)
    800045ec:	0d813e03          	ld	t3,216(sp)
    800045f0:	0e013e83          	ld	t4,224(sp)
    800045f4:	0e813f03          	ld	t5,232(sp)
    800045f8:	0f013f83          	ld	t6,240(sp)
    800045fc:	10010113          	addi	sp,sp,256
    80004600:	10200073          	sret
    80004604:	00000013          	nop
    80004608:	00000013          	nop
    8000460c:	00000013          	nop

0000000080004610 <timervec>:
    80004610:	34051573          	csrrw	a0,mscratch,a0
    80004614:	00b53023          	sd	a1,0(a0)
    80004618:	00c53423          	sd	a2,8(a0)
    8000461c:	00d53823          	sd	a3,16(a0)
    80004620:	01853583          	ld	a1,24(a0)
    80004624:	02053603          	ld	a2,32(a0)
    80004628:	0005b683          	ld	a3,0(a1)
    8000462c:	00c686b3          	add	a3,a3,a2
    80004630:	00d5b023          	sd	a3,0(a1)
    80004634:	00200593          	li	a1,2
    80004638:	14459073          	csrw	sip,a1
    8000463c:	01053683          	ld	a3,16(a0)
    80004640:	00853603          	ld	a2,8(a0)
    80004644:	00053583          	ld	a1,0(a0)
    80004648:	34051573          	csrrw	a0,mscratch,a0
    8000464c:	30200073          	mret

0000000080004650 <plicinit>:
    80004650:	ff010113          	addi	sp,sp,-16
    80004654:	00813423          	sd	s0,8(sp)
    80004658:	01010413          	addi	s0,sp,16
    8000465c:	00813403          	ld	s0,8(sp)
    80004660:	0c0007b7          	lui	a5,0xc000
    80004664:	00100713          	li	a4,1
    80004668:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000466c:	00e7a223          	sw	a4,4(a5)
    80004670:	01010113          	addi	sp,sp,16
    80004674:	00008067          	ret

0000000080004678 <plicinithart>:
    80004678:	ff010113          	addi	sp,sp,-16
    8000467c:	00813023          	sd	s0,0(sp)
    80004680:	00113423          	sd	ra,8(sp)
    80004684:	01010413          	addi	s0,sp,16
    80004688:	00000097          	auipc	ra,0x0
    8000468c:	a44080e7          	jalr	-1468(ra) # 800040cc <cpuid>
    80004690:	0085171b          	slliw	a4,a0,0x8
    80004694:	0c0027b7          	lui	a5,0xc002
    80004698:	00e787b3          	add	a5,a5,a4
    8000469c:	40200713          	li	a4,1026
    800046a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800046a4:	00813083          	ld	ra,8(sp)
    800046a8:	00013403          	ld	s0,0(sp)
    800046ac:	00d5151b          	slliw	a0,a0,0xd
    800046b0:	0c2017b7          	lui	a5,0xc201
    800046b4:	00a78533          	add	a0,a5,a0
    800046b8:	00052023          	sw	zero,0(a0)
    800046bc:	01010113          	addi	sp,sp,16
    800046c0:	00008067          	ret

00000000800046c4 <plic_claim>:
    800046c4:	ff010113          	addi	sp,sp,-16
    800046c8:	00813023          	sd	s0,0(sp)
    800046cc:	00113423          	sd	ra,8(sp)
    800046d0:	01010413          	addi	s0,sp,16
    800046d4:	00000097          	auipc	ra,0x0
    800046d8:	9f8080e7          	jalr	-1544(ra) # 800040cc <cpuid>
    800046dc:	00813083          	ld	ra,8(sp)
    800046e0:	00013403          	ld	s0,0(sp)
    800046e4:	00d5151b          	slliw	a0,a0,0xd
    800046e8:	0c2017b7          	lui	a5,0xc201
    800046ec:	00a78533          	add	a0,a5,a0
    800046f0:	00452503          	lw	a0,4(a0)
    800046f4:	01010113          	addi	sp,sp,16
    800046f8:	00008067          	ret

00000000800046fc <plic_complete>:
    800046fc:	fe010113          	addi	sp,sp,-32
    80004700:	00813823          	sd	s0,16(sp)
    80004704:	00913423          	sd	s1,8(sp)
    80004708:	00113c23          	sd	ra,24(sp)
    8000470c:	02010413          	addi	s0,sp,32
    80004710:	00050493          	mv	s1,a0
    80004714:	00000097          	auipc	ra,0x0
    80004718:	9b8080e7          	jalr	-1608(ra) # 800040cc <cpuid>
    8000471c:	01813083          	ld	ra,24(sp)
    80004720:	01013403          	ld	s0,16(sp)
    80004724:	00d5179b          	slliw	a5,a0,0xd
    80004728:	0c201737          	lui	a4,0xc201
    8000472c:	00f707b3          	add	a5,a4,a5
    80004730:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80004734:	00813483          	ld	s1,8(sp)
    80004738:	02010113          	addi	sp,sp,32
    8000473c:	00008067          	ret

0000000080004740 <consolewrite>:
    80004740:	fb010113          	addi	sp,sp,-80
    80004744:	04813023          	sd	s0,64(sp)
    80004748:	04113423          	sd	ra,72(sp)
    8000474c:	02913c23          	sd	s1,56(sp)
    80004750:	03213823          	sd	s2,48(sp)
    80004754:	03313423          	sd	s3,40(sp)
    80004758:	03413023          	sd	s4,32(sp)
    8000475c:	01513c23          	sd	s5,24(sp)
    80004760:	05010413          	addi	s0,sp,80
    80004764:	06c05c63          	blez	a2,800047dc <consolewrite+0x9c>
    80004768:	00060993          	mv	s3,a2
    8000476c:	00050a13          	mv	s4,a0
    80004770:	00058493          	mv	s1,a1
    80004774:	00000913          	li	s2,0
    80004778:	fff00a93          	li	s5,-1
    8000477c:	01c0006f          	j	80004798 <consolewrite+0x58>
    80004780:	fbf44503          	lbu	a0,-65(s0)
    80004784:	0019091b          	addiw	s2,s2,1
    80004788:	00148493          	addi	s1,s1,1
    8000478c:	00001097          	auipc	ra,0x1
    80004790:	a9c080e7          	jalr	-1380(ra) # 80005228 <uartputc>
    80004794:	03298063          	beq	s3,s2,800047b4 <consolewrite+0x74>
    80004798:	00048613          	mv	a2,s1
    8000479c:	00100693          	li	a3,1
    800047a0:	000a0593          	mv	a1,s4
    800047a4:	fbf40513          	addi	a0,s0,-65
    800047a8:	00000097          	auipc	ra,0x0
    800047ac:	9dc080e7          	jalr	-1572(ra) # 80004184 <either_copyin>
    800047b0:	fd5518e3          	bne	a0,s5,80004780 <consolewrite+0x40>
    800047b4:	04813083          	ld	ra,72(sp)
    800047b8:	04013403          	ld	s0,64(sp)
    800047bc:	03813483          	ld	s1,56(sp)
    800047c0:	02813983          	ld	s3,40(sp)
    800047c4:	02013a03          	ld	s4,32(sp)
    800047c8:	01813a83          	ld	s5,24(sp)
    800047cc:	00090513          	mv	a0,s2
    800047d0:	03013903          	ld	s2,48(sp)
    800047d4:	05010113          	addi	sp,sp,80
    800047d8:	00008067          	ret
    800047dc:	00000913          	li	s2,0
    800047e0:	fd5ff06f          	j	800047b4 <consolewrite+0x74>

00000000800047e4 <consoleread>:
    800047e4:	f9010113          	addi	sp,sp,-112
    800047e8:	06813023          	sd	s0,96(sp)
    800047ec:	04913c23          	sd	s1,88(sp)
    800047f0:	05213823          	sd	s2,80(sp)
    800047f4:	05313423          	sd	s3,72(sp)
    800047f8:	05413023          	sd	s4,64(sp)
    800047fc:	03513c23          	sd	s5,56(sp)
    80004800:	03613823          	sd	s6,48(sp)
    80004804:	03713423          	sd	s7,40(sp)
    80004808:	03813023          	sd	s8,32(sp)
    8000480c:	06113423          	sd	ra,104(sp)
    80004810:	01913c23          	sd	s9,24(sp)
    80004814:	07010413          	addi	s0,sp,112
    80004818:	00060b93          	mv	s7,a2
    8000481c:	00050913          	mv	s2,a0
    80004820:	00058c13          	mv	s8,a1
    80004824:	00060b1b          	sext.w	s6,a2
    80004828:	00005497          	auipc	s1,0x5
    8000482c:	22048493          	addi	s1,s1,544 # 80009a48 <cons>
    80004830:	00400993          	li	s3,4
    80004834:	fff00a13          	li	s4,-1
    80004838:	00a00a93          	li	s5,10
    8000483c:	05705e63          	blez	s7,80004898 <consoleread+0xb4>
    80004840:	09c4a703          	lw	a4,156(s1)
    80004844:	0984a783          	lw	a5,152(s1)
    80004848:	0007071b          	sext.w	a4,a4
    8000484c:	08e78463          	beq	a5,a4,800048d4 <consoleread+0xf0>
    80004850:	07f7f713          	andi	a4,a5,127
    80004854:	00e48733          	add	a4,s1,a4
    80004858:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000485c:	0017869b          	addiw	a3,a5,1
    80004860:	08d4ac23          	sw	a3,152(s1)
    80004864:	00070c9b          	sext.w	s9,a4
    80004868:	0b370663          	beq	a4,s3,80004914 <consoleread+0x130>
    8000486c:	00100693          	li	a3,1
    80004870:	f9f40613          	addi	a2,s0,-97
    80004874:	000c0593          	mv	a1,s8
    80004878:	00090513          	mv	a0,s2
    8000487c:	f8e40fa3          	sb	a4,-97(s0)
    80004880:	00000097          	auipc	ra,0x0
    80004884:	8b8080e7          	jalr	-1864(ra) # 80004138 <either_copyout>
    80004888:	01450863          	beq	a0,s4,80004898 <consoleread+0xb4>
    8000488c:	001c0c13          	addi	s8,s8,1
    80004890:	fffb8b9b          	addiw	s7,s7,-1
    80004894:	fb5c94e3          	bne	s9,s5,8000483c <consoleread+0x58>
    80004898:	000b851b          	sext.w	a0,s7
    8000489c:	06813083          	ld	ra,104(sp)
    800048a0:	06013403          	ld	s0,96(sp)
    800048a4:	05813483          	ld	s1,88(sp)
    800048a8:	05013903          	ld	s2,80(sp)
    800048ac:	04813983          	ld	s3,72(sp)
    800048b0:	04013a03          	ld	s4,64(sp)
    800048b4:	03813a83          	ld	s5,56(sp)
    800048b8:	02813b83          	ld	s7,40(sp)
    800048bc:	02013c03          	ld	s8,32(sp)
    800048c0:	01813c83          	ld	s9,24(sp)
    800048c4:	40ab053b          	subw	a0,s6,a0
    800048c8:	03013b03          	ld	s6,48(sp)
    800048cc:	07010113          	addi	sp,sp,112
    800048d0:	00008067          	ret
    800048d4:	00001097          	auipc	ra,0x1
    800048d8:	1d8080e7          	jalr	472(ra) # 80005aac <push_on>
    800048dc:	0984a703          	lw	a4,152(s1)
    800048e0:	09c4a783          	lw	a5,156(s1)
    800048e4:	0007879b          	sext.w	a5,a5
    800048e8:	fef70ce3          	beq	a4,a5,800048e0 <consoleread+0xfc>
    800048ec:	00001097          	auipc	ra,0x1
    800048f0:	234080e7          	jalr	564(ra) # 80005b20 <pop_on>
    800048f4:	0984a783          	lw	a5,152(s1)
    800048f8:	07f7f713          	andi	a4,a5,127
    800048fc:	00e48733          	add	a4,s1,a4
    80004900:	01874703          	lbu	a4,24(a4)
    80004904:	0017869b          	addiw	a3,a5,1
    80004908:	08d4ac23          	sw	a3,152(s1)
    8000490c:	00070c9b          	sext.w	s9,a4
    80004910:	f5371ee3          	bne	a4,s3,8000486c <consoleread+0x88>
    80004914:	000b851b          	sext.w	a0,s7
    80004918:	f96bf2e3          	bgeu	s7,s6,8000489c <consoleread+0xb8>
    8000491c:	08f4ac23          	sw	a5,152(s1)
    80004920:	f7dff06f          	j	8000489c <consoleread+0xb8>

0000000080004924 <consputc>:
    80004924:	10000793          	li	a5,256
    80004928:	00f50663          	beq	a0,a5,80004934 <consputc+0x10>
    8000492c:	00001317          	auipc	t1,0x1
    80004930:	9f430067          	jr	-1548(t1) # 80005320 <uartputc_sync>
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	01010413          	addi	s0,sp,16
    80004944:	00800513          	li	a0,8
    80004948:	00001097          	auipc	ra,0x1
    8000494c:	9d8080e7          	jalr	-1576(ra) # 80005320 <uartputc_sync>
    80004950:	02000513          	li	a0,32
    80004954:	00001097          	auipc	ra,0x1
    80004958:	9cc080e7          	jalr	-1588(ra) # 80005320 <uartputc_sync>
    8000495c:	00013403          	ld	s0,0(sp)
    80004960:	00813083          	ld	ra,8(sp)
    80004964:	00800513          	li	a0,8
    80004968:	01010113          	addi	sp,sp,16
    8000496c:	00001317          	auipc	t1,0x1
    80004970:	9b430067          	jr	-1612(t1) # 80005320 <uartputc_sync>

0000000080004974 <consoleintr>:
    80004974:	fe010113          	addi	sp,sp,-32
    80004978:	00813823          	sd	s0,16(sp)
    8000497c:	00913423          	sd	s1,8(sp)
    80004980:	01213023          	sd	s2,0(sp)
    80004984:	00113c23          	sd	ra,24(sp)
    80004988:	02010413          	addi	s0,sp,32
    8000498c:	00005917          	auipc	s2,0x5
    80004990:	0bc90913          	addi	s2,s2,188 # 80009a48 <cons>
    80004994:	00050493          	mv	s1,a0
    80004998:	00090513          	mv	a0,s2
    8000499c:	00001097          	auipc	ra,0x1
    800049a0:	e40080e7          	jalr	-448(ra) # 800057dc <acquire>
    800049a4:	02048c63          	beqz	s1,800049dc <consoleintr+0x68>
    800049a8:	0a092783          	lw	a5,160(s2)
    800049ac:	09892703          	lw	a4,152(s2)
    800049b0:	07f00693          	li	a3,127
    800049b4:	40e7873b          	subw	a4,a5,a4
    800049b8:	02e6e263          	bltu	a3,a4,800049dc <consoleintr+0x68>
    800049bc:	00d00713          	li	a4,13
    800049c0:	04e48063          	beq	s1,a4,80004a00 <consoleintr+0x8c>
    800049c4:	07f7f713          	andi	a4,a5,127
    800049c8:	00e90733          	add	a4,s2,a4
    800049cc:	0017879b          	addiw	a5,a5,1
    800049d0:	0af92023          	sw	a5,160(s2)
    800049d4:	00970c23          	sb	s1,24(a4)
    800049d8:	08f92e23          	sw	a5,156(s2)
    800049dc:	01013403          	ld	s0,16(sp)
    800049e0:	01813083          	ld	ra,24(sp)
    800049e4:	00813483          	ld	s1,8(sp)
    800049e8:	00013903          	ld	s2,0(sp)
    800049ec:	00005517          	auipc	a0,0x5
    800049f0:	05c50513          	addi	a0,a0,92 # 80009a48 <cons>
    800049f4:	02010113          	addi	sp,sp,32
    800049f8:	00001317          	auipc	t1,0x1
    800049fc:	eb030067          	jr	-336(t1) # 800058a8 <release>
    80004a00:	00a00493          	li	s1,10
    80004a04:	fc1ff06f          	j	800049c4 <consoleintr+0x50>

0000000080004a08 <consoleinit>:
    80004a08:	fe010113          	addi	sp,sp,-32
    80004a0c:	00113c23          	sd	ra,24(sp)
    80004a10:	00813823          	sd	s0,16(sp)
    80004a14:	00913423          	sd	s1,8(sp)
    80004a18:	02010413          	addi	s0,sp,32
    80004a1c:	00005497          	auipc	s1,0x5
    80004a20:	02c48493          	addi	s1,s1,44 # 80009a48 <cons>
    80004a24:	00048513          	mv	a0,s1
    80004a28:	00003597          	auipc	a1,0x3
    80004a2c:	84858593          	addi	a1,a1,-1976 # 80007270 <CONSOLE_STATUS+0x260>
    80004a30:	00001097          	auipc	ra,0x1
    80004a34:	d88080e7          	jalr	-632(ra) # 800057b8 <initlock>
    80004a38:	00000097          	auipc	ra,0x0
    80004a3c:	7ac080e7          	jalr	1964(ra) # 800051e4 <uartinit>
    80004a40:	01813083          	ld	ra,24(sp)
    80004a44:	01013403          	ld	s0,16(sp)
    80004a48:	00000797          	auipc	a5,0x0
    80004a4c:	d9c78793          	addi	a5,a5,-612 # 800047e4 <consoleread>
    80004a50:	0af4bc23          	sd	a5,184(s1)
    80004a54:	00000797          	auipc	a5,0x0
    80004a58:	cec78793          	addi	a5,a5,-788 # 80004740 <consolewrite>
    80004a5c:	0cf4b023          	sd	a5,192(s1)
    80004a60:	00813483          	ld	s1,8(sp)
    80004a64:	02010113          	addi	sp,sp,32
    80004a68:	00008067          	ret

0000000080004a6c <console_read>:
    80004a6c:	ff010113          	addi	sp,sp,-16
    80004a70:	00813423          	sd	s0,8(sp)
    80004a74:	01010413          	addi	s0,sp,16
    80004a78:	00813403          	ld	s0,8(sp)
    80004a7c:	00005317          	auipc	t1,0x5
    80004a80:	08433303          	ld	t1,132(t1) # 80009b00 <devsw+0x10>
    80004a84:	01010113          	addi	sp,sp,16
    80004a88:	00030067          	jr	t1

0000000080004a8c <console_write>:
    80004a8c:	ff010113          	addi	sp,sp,-16
    80004a90:	00813423          	sd	s0,8(sp)
    80004a94:	01010413          	addi	s0,sp,16
    80004a98:	00813403          	ld	s0,8(sp)
    80004a9c:	00005317          	auipc	t1,0x5
    80004aa0:	06c33303          	ld	t1,108(t1) # 80009b08 <devsw+0x18>
    80004aa4:	01010113          	addi	sp,sp,16
    80004aa8:	00030067          	jr	t1

0000000080004aac <panic>:
    80004aac:	fe010113          	addi	sp,sp,-32
    80004ab0:	00113c23          	sd	ra,24(sp)
    80004ab4:	00813823          	sd	s0,16(sp)
    80004ab8:	00913423          	sd	s1,8(sp)
    80004abc:	02010413          	addi	s0,sp,32
    80004ac0:	00050493          	mv	s1,a0
    80004ac4:	00002517          	auipc	a0,0x2
    80004ac8:	7b450513          	addi	a0,a0,1972 # 80007278 <CONSOLE_STATUS+0x268>
    80004acc:	00005797          	auipc	a5,0x5
    80004ad0:	0c07ae23          	sw	zero,220(a5) # 80009ba8 <pr+0x18>
    80004ad4:	00000097          	auipc	ra,0x0
    80004ad8:	034080e7          	jalr	52(ra) # 80004b08 <__printf>
    80004adc:	00048513          	mv	a0,s1
    80004ae0:	00000097          	auipc	ra,0x0
    80004ae4:	028080e7          	jalr	40(ra) # 80004b08 <__printf>
    80004ae8:	00002517          	auipc	a0,0x2
    80004aec:	77050513          	addi	a0,a0,1904 # 80007258 <CONSOLE_STATUS+0x248>
    80004af0:	00000097          	auipc	ra,0x0
    80004af4:	018080e7          	jalr	24(ra) # 80004b08 <__printf>
    80004af8:	00100793          	li	a5,1
    80004afc:	00004717          	auipc	a4,0x4
    80004b00:	dcf72e23          	sw	a5,-548(a4) # 800088d8 <panicked>
    80004b04:	0000006f          	j	80004b04 <panic+0x58>

0000000080004b08 <__printf>:
    80004b08:	f3010113          	addi	sp,sp,-208
    80004b0c:	08813023          	sd	s0,128(sp)
    80004b10:	07313423          	sd	s3,104(sp)
    80004b14:	09010413          	addi	s0,sp,144
    80004b18:	05813023          	sd	s8,64(sp)
    80004b1c:	08113423          	sd	ra,136(sp)
    80004b20:	06913c23          	sd	s1,120(sp)
    80004b24:	07213823          	sd	s2,112(sp)
    80004b28:	07413023          	sd	s4,96(sp)
    80004b2c:	05513c23          	sd	s5,88(sp)
    80004b30:	05613823          	sd	s6,80(sp)
    80004b34:	05713423          	sd	s7,72(sp)
    80004b38:	03913c23          	sd	s9,56(sp)
    80004b3c:	03a13823          	sd	s10,48(sp)
    80004b40:	03b13423          	sd	s11,40(sp)
    80004b44:	00005317          	auipc	t1,0x5
    80004b48:	04c30313          	addi	t1,t1,76 # 80009b90 <pr>
    80004b4c:	01832c03          	lw	s8,24(t1)
    80004b50:	00b43423          	sd	a1,8(s0)
    80004b54:	00c43823          	sd	a2,16(s0)
    80004b58:	00d43c23          	sd	a3,24(s0)
    80004b5c:	02e43023          	sd	a4,32(s0)
    80004b60:	02f43423          	sd	a5,40(s0)
    80004b64:	03043823          	sd	a6,48(s0)
    80004b68:	03143c23          	sd	a7,56(s0)
    80004b6c:	00050993          	mv	s3,a0
    80004b70:	4a0c1663          	bnez	s8,8000501c <__printf+0x514>
    80004b74:	60098c63          	beqz	s3,8000518c <__printf+0x684>
    80004b78:	0009c503          	lbu	a0,0(s3)
    80004b7c:	00840793          	addi	a5,s0,8
    80004b80:	f6f43c23          	sd	a5,-136(s0)
    80004b84:	00000493          	li	s1,0
    80004b88:	22050063          	beqz	a0,80004da8 <__printf+0x2a0>
    80004b8c:	00002a37          	lui	s4,0x2
    80004b90:	00018ab7          	lui	s5,0x18
    80004b94:	000f4b37          	lui	s6,0xf4
    80004b98:	00989bb7          	lui	s7,0x989
    80004b9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004ba0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004ba4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004ba8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80004bac:	00148c9b          	addiw	s9,s1,1
    80004bb0:	02500793          	li	a5,37
    80004bb4:	01998933          	add	s2,s3,s9
    80004bb8:	38f51263          	bne	a0,a5,80004f3c <__printf+0x434>
    80004bbc:	00094783          	lbu	a5,0(s2)
    80004bc0:	00078c9b          	sext.w	s9,a5
    80004bc4:	1e078263          	beqz	a5,80004da8 <__printf+0x2a0>
    80004bc8:	0024849b          	addiw	s1,s1,2
    80004bcc:	07000713          	li	a4,112
    80004bd0:	00998933          	add	s2,s3,s1
    80004bd4:	38e78a63          	beq	a5,a4,80004f68 <__printf+0x460>
    80004bd8:	20f76863          	bltu	a4,a5,80004de8 <__printf+0x2e0>
    80004bdc:	42a78863          	beq	a5,a0,8000500c <__printf+0x504>
    80004be0:	06400713          	li	a4,100
    80004be4:	40e79663          	bne	a5,a4,80004ff0 <__printf+0x4e8>
    80004be8:	f7843783          	ld	a5,-136(s0)
    80004bec:	0007a603          	lw	a2,0(a5)
    80004bf0:	00878793          	addi	a5,a5,8
    80004bf4:	f6f43c23          	sd	a5,-136(s0)
    80004bf8:	42064a63          	bltz	a2,8000502c <__printf+0x524>
    80004bfc:	00a00713          	li	a4,10
    80004c00:	02e677bb          	remuw	a5,a2,a4
    80004c04:	00002d97          	auipc	s11,0x2
    80004c08:	69cd8d93          	addi	s11,s11,1692 # 800072a0 <digits>
    80004c0c:	00900593          	li	a1,9
    80004c10:	0006051b          	sext.w	a0,a2
    80004c14:	00000c93          	li	s9,0
    80004c18:	02079793          	slli	a5,a5,0x20
    80004c1c:	0207d793          	srli	a5,a5,0x20
    80004c20:	00fd87b3          	add	a5,s11,a5
    80004c24:	0007c783          	lbu	a5,0(a5)
    80004c28:	02e656bb          	divuw	a3,a2,a4
    80004c2c:	f8f40023          	sb	a5,-128(s0)
    80004c30:	14c5d863          	bge	a1,a2,80004d80 <__printf+0x278>
    80004c34:	06300593          	li	a1,99
    80004c38:	00100c93          	li	s9,1
    80004c3c:	02e6f7bb          	remuw	a5,a3,a4
    80004c40:	02079793          	slli	a5,a5,0x20
    80004c44:	0207d793          	srli	a5,a5,0x20
    80004c48:	00fd87b3          	add	a5,s11,a5
    80004c4c:	0007c783          	lbu	a5,0(a5)
    80004c50:	02e6d73b          	divuw	a4,a3,a4
    80004c54:	f8f400a3          	sb	a5,-127(s0)
    80004c58:	12a5f463          	bgeu	a1,a0,80004d80 <__printf+0x278>
    80004c5c:	00a00693          	li	a3,10
    80004c60:	00900593          	li	a1,9
    80004c64:	02d777bb          	remuw	a5,a4,a3
    80004c68:	02079793          	slli	a5,a5,0x20
    80004c6c:	0207d793          	srli	a5,a5,0x20
    80004c70:	00fd87b3          	add	a5,s11,a5
    80004c74:	0007c503          	lbu	a0,0(a5)
    80004c78:	02d757bb          	divuw	a5,a4,a3
    80004c7c:	f8a40123          	sb	a0,-126(s0)
    80004c80:	48e5f263          	bgeu	a1,a4,80005104 <__printf+0x5fc>
    80004c84:	06300513          	li	a0,99
    80004c88:	02d7f5bb          	remuw	a1,a5,a3
    80004c8c:	02059593          	slli	a1,a1,0x20
    80004c90:	0205d593          	srli	a1,a1,0x20
    80004c94:	00bd85b3          	add	a1,s11,a1
    80004c98:	0005c583          	lbu	a1,0(a1)
    80004c9c:	02d7d7bb          	divuw	a5,a5,a3
    80004ca0:	f8b401a3          	sb	a1,-125(s0)
    80004ca4:	48e57263          	bgeu	a0,a4,80005128 <__printf+0x620>
    80004ca8:	3e700513          	li	a0,999
    80004cac:	02d7f5bb          	remuw	a1,a5,a3
    80004cb0:	02059593          	slli	a1,a1,0x20
    80004cb4:	0205d593          	srli	a1,a1,0x20
    80004cb8:	00bd85b3          	add	a1,s11,a1
    80004cbc:	0005c583          	lbu	a1,0(a1)
    80004cc0:	02d7d7bb          	divuw	a5,a5,a3
    80004cc4:	f8b40223          	sb	a1,-124(s0)
    80004cc8:	46e57663          	bgeu	a0,a4,80005134 <__printf+0x62c>
    80004ccc:	02d7f5bb          	remuw	a1,a5,a3
    80004cd0:	02059593          	slli	a1,a1,0x20
    80004cd4:	0205d593          	srli	a1,a1,0x20
    80004cd8:	00bd85b3          	add	a1,s11,a1
    80004cdc:	0005c583          	lbu	a1,0(a1)
    80004ce0:	02d7d7bb          	divuw	a5,a5,a3
    80004ce4:	f8b402a3          	sb	a1,-123(s0)
    80004ce8:	46ea7863          	bgeu	s4,a4,80005158 <__printf+0x650>
    80004cec:	02d7f5bb          	remuw	a1,a5,a3
    80004cf0:	02059593          	slli	a1,a1,0x20
    80004cf4:	0205d593          	srli	a1,a1,0x20
    80004cf8:	00bd85b3          	add	a1,s11,a1
    80004cfc:	0005c583          	lbu	a1,0(a1)
    80004d00:	02d7d7bb          	divuw	a5,a5,a3
    80004d04:	f8b40323          	sb	a1,-122(s0)
    80004d08:	3eeaf863          	bgeu	s5,a4,800050f8 <__printf+0x5f0>
    80004d0c:	02d7f5bb          	remuw	a1,a5,a3
    80004d10:	02059593          	slli	a1,a1,0x20
    80004d14:	0205d593          	srli	a1,a1,0x20
    80004d18:	00bd85b3          	add	a1,s11,a1
    80004d1c:	0005c583          	lbu	a1,0(a1)
    80004d20:	02d7d7bb          	divuw	a5,a5,a3
    80004d24:	f8b403a3          	sb	a1,-121(s0)
    80004d28:	42eb7e63          	bgeu	s6,a4,80005164 <__printf+0x65c>
    80004d2c:	02d7f5bb          	remuw	a1,a5,a3
    80004d30:	02059593          	slli	a1,a1,0x20
    80004d34:	0205d593          	srli	a1,a1,0x20
    80004d38:	00bd85b3          	add	a1,s11,a1
    80004d3c:	0005c583          	lbu	a1,0(a1)
    80004d40:	02d7d7bb          	divuw	a5,a5,a3
    80004d44:	f8b40423          	sb	a1,-120(s0)
    80004d48:	42ebfc63          	bgeu	s7,a4,80005180 <__printf+0x678>
    80004d4c:	02079793          	slli	a5,a5,0x20
    80004d50:	0207d793          	srli	a5,a5,0x20
    80004d54:	00fd8db3          	add	s11,s11,a5
    80004d58:	000dc703          	lbu	a4,0(s11)
    80004d5c:	00a00793          	li	a5,10
    80004d60:	00900c93          	li	s9,9
    80004d64:	f8e404a3          	sb	a4,-119(s0)
    80004d68:	00065c63          	bgez	a2,80004d80 <__printf+0x278>
    80004d6c:	f9040713          	addi	a4,s0,-112
    80004d70:	00f70733          	add	a4,a4,a5
    80004d74:	02d00693          	li	a3,45
    80004d78:	fed70823          	sb	a3,-16(a4)
    80004d7c:	00078c93          	mv	s9,a5
    80004d80:	f8040793          	addi	a5,s0,-128
    80004d84:	01978cb3          	add	s9,a5,s9
    80004d88:	f7f40d13          	addi	s10,s0,-129
    80004d8c:	000cc503          	lbu	a0,0(s9)
    80004d90:	fffc8c93          	addi	s9,s9,-1
    80004d94:	00000097          	auipc	ra,0x0
    80004d98:	b90080e7          	jalr	-1136(ra) # 80004924 <consputc>
    80004d9c:	ffac98e3          	bne	s9,s10,80004d8c <__printf+0x284>
    80004da0:	00094503          	lbu	a0,0(s2)
    80004da4:	e00514e3          	bnez	a0,80004bac <__printf+0xa4>
    80004da8:	1a0c1663          	bnez	s8,80004f54 <__printf+0x44c>
    80004dac:	08813083          	ld	ra,136(sp)
    80004db0:	08013403          	ld	s0,128(sp)
    80004db4:	07813483          	ld	s1,120(sp)
    80004db8:	07013903          	ld	s2,112(sp)
    80004dbc:	06813983          	ld	s3,104(sp)
    80004dc0:	06013a03          	ld	s4,96(sp)
    80004dc4:	05813a83          	ld	s5,88(sp)
    80004dc8:	05013b03          	ld	s6,80(sp)
    80004dcc:	04813b83          	ld	s7,72(sp)
    80004dd0:	04013c03          	ld	s8,64(sp)
    80004dd4:	03813c83          	ld	s9,56(sp)
    80004dd8:	03013d03          	ld	s10,48(sp)
    80004ddc:	02813d83          	ld	s11,40(sp)
    80004de0:	0d010113          	addi	sp,sp,208
    80004de4:	00008067          	ret
    80004de8:	07300713          	li	a4,115
    80004dec:	1ce78a63          	beq	a5,a4,80004fc0 <__printf+0x4b8>
    80004df0:	07800713          	li	a4,120
    80004df4:	1ee79e63          	bne	a5,a4,80004ff0 <__printf+0x4e8>
    80004df8:	f7843783          	ld	a5,-136(s0)
    80004dfc:	0007a703          	lw	a4,0(a5)
    80004e00:	00878793          	addi	a5,a5,8
    80004e04:	f6f43c23          	sd	a5,-136(s0)
    80004e08:	28074263          	bltz	a4,8000508c <__printf+0x584>
    80004e0c:	00002d97          	auipc	s11,0x2
    80004e10:	494d8d93          	addi	s11,s11,1172 # 800072a0 <digits>
    80004e14:	00f77793          	andi	a5,a4,15
    80004e18:	00fd87b3          	add	a5,s11,a5
    80004e1c:	0007c683          	lbu	a3,0(a5)
    80004e20:	00f00613          	li	a2,15
    80004e24:	0007079b          	sext.w	a5,a4
    80004e28:	f8d40023          	sb	a3,-128(s0)
    80004e2c:	0047559b          	srliw	a1,a4,0x4
    80004e30:	0047569b          	srliw	a3,a4,0x4
    80004e34:	00000c93          	li	s9,0
    80004e38:	0ee65063          	bge	a2,a4,80004f18 <__printf+0x410>
    80004e3c:	00f6f693          	andi	a3,a3,15
    80004e40:	00dd86b3          	add	a3,s11,a3
    80004e44:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004e48:	0087d79b          	srliw	a5,a5,0x8
    80004e4c:	00100c93          	li	s9,1
    80004e50:	f8d400a3          	sb	a3,-127(s0)
    80004e54:	0cb67263          	bgeu	a2,a1,80004f18 <__printf+0x410>
    80004e58:	00f7f693          	andi	a3,a5,15
    80004e5c:	00dd86b3          	add	a3,s11,a3
    80004e60:	0006c583          	lbu	a1,0(a3)
    80004e64:	00f00613          	li	a2,15
    80004e68:	0047d69b          	srliw	a3,a5,0x4
    80004e6c:	f8b40123          	sb	a1,-126(s0)
    80004e70:	0047d593          	srli	a1,a5,0x4
    80004e74:	28f67e63          	bgeu	a2,a5,80005110 <__printf+0x608>
    80004e78:	00f6f693          	andi	a3,a3,15
    80004e7c:	00dd86b3          	add	a3,s11,a3
    80004e80:	0006c503          	lbu	a0,0(a3)
    80004e84:	0087d813          	srli	a6,a5,0x8
    80004e88:	0087d69b          	srliw	a3,a5,0x8
    80004e8c:	f8a401a3          	sb	a0,-125(s0)
    80004e90:	28b67663          	bgeu	a2,a1,8000511c <__printf+0x614>
    80004e94:	00f6f693          	andi	a3,a3,15
    80004e98:	00dd86b3          	add	a3,s11,a3
    80004e9c:	0006c583          	lbu	a1,0(a3)
    80004ea0:	00c7d513          	srli	a0,a5,0xc
    80004ea4:	00c7d69b          	srliw	a3,a5,0xc
    80004ea8:	f8b40223          	sb	a1,-124(s0)
    80004eac:	29067a63          	bgeu	a2,a6,80005140 <__printf+0x638>
    80004eb0:	00f6f693          	andi	a3,a3,15
    80004eb4:	00dd86b3          	add	a3,s11,a3
    80004eb8:	0006c583          	lbu	a1,0(a3)
    80004ebc:	0107d813          	srli	a6,a5,0x10
    80004ec0:	0107d69b          	srliw	a3,a5,0x10
    80004ec4:	f8b402a3          	sb	a1,-123(s0)
    80004ec8:	28a67263          	bgeu	a2,a0,8000514c <__printf+0x644>
    80004ecc:	00f6f693          	andi	a3,a3,15
    80004ed0:	00dd86b3          	add	a3,s11,a3
    80004ed4:	0006c683          	lbu	a3,0(a3)
    80004ed8:	0147d79b          	srliw	a5,a5,0x14
    80004edc:	f8d40323          	sb	a3,-122(s0)
    80004ee0:	21067663          	bgeu	a2,a6,800050ec <__printf+0x5e4>
    80004ee4:	02079793          	slli	a5,a5,0x20
    80004ee8:	0207d793          	srli	a5,a5,0x20
    80004eec:	00fd8db3          	add	s11,s11,a5
    80004ef0:	000dc683          	lbu	a3,0(s11)
    80004ef4:	00800793          	li	a5,8
    80004ef8:	00700c93          	li	s9,7
    80004efc:	f8d403a3          	sb	a3,-121(s0)
    80004f00:	00075c63          	bgez	a4,80004f18 <__printf+0x410>
    80004f04:	f9040713          	addi	a4,s0,-112
    80004f08:	00f70733          	add	a4,a4,a5
    80004f0c:	02d00693          	li	a3,45
    80004f10:	fed70823          	sb	a3,-16(a4)
    80004f14:	00078c93          	mv	s9,a5
    80004f18:	f8040793          	addi	a5,s0,-128
    80004f1c:	01978cb3          	add	s9,a5,s9
    80004f20:	f7f40d13          	addi	s10,s0,-129
    80004f24:	000cc503          	lbu	a0,0(s9)
    80004f28:	fffc8c93          	addi	s9,s9,-1
    80004f2c:	00000097          	auipc	ra,0x0
    80004f30:	9f8080e7          	jalr	-1544(ra) # 80004924 <consputc>
    80004f34:	ff9d18e3          	bne	s10,s9,80004f24 <__printf+0x41c>
    80004f38:	0100006f          	j	80004f48 <__printf+0x440>
    80004f3c:	00000097          	auipc	ra,0x0
    80004f40:	9e8080e7          	jalr	-1560(ra) # 80004924 <consputc>
    80004f44:	000c8493          	mv	s1,s9
    80004f48:	00094503          	lbu	a0,0(s2)
    80004f4c:	c60510e3          	bnez	a0,80004bac <__printf+0xa4>
    80004f50:	e40c0ee3          	beqz	s8,80004dac <__printf+0x2a4>
    80004f54:	00005517          	auipc	a0,0x5
    80004f58:	c3c50513          	addi	a0,a0,-964 # 80009b90 <pr>
    80004f5c:	00001097          	auipc	ra,0x1
    80004f60:	94c080e7          	jalr	-1716(ra) # 800058a8 <release>
    80004f64:	e49ff06f          	j	80004dac <__printf+0x2a4>
    80004f68:	f7843783          	ld	a5,-136(s0)
    80004f6c:	03000513          	li	a0,48
    80004f70:	01000d13          	li	s10,16
    80004f74:	00878713          	addi	a4,a5,8
    80004f78:	0007bc83          	ld	s9,0(a5)
    80004f7c:	f6e43c23          	sd	a4,-136(s0)
    80004f80:	00000097          	auipc	ra,0x0
    80004f84:	9a4080e7          	jalr	-1628(ra) # 80004924 <consputc>
    80004f88:	07800513          	li	a0,120
    80004f8c:	00000097          	auipc	ra,0x0
    80004f90:	998080e7          	jalr	-1640(ra) # 80004924 <consputc>
    80004f94:	00002d97          	auipc	s11,0x2
    80004f98:	30cd8d93          	addi	s11,s11,780 # 800072a0 <digits>
    80004f9c:	03ccd793          	srli	a5,s9,0x3c
    80004fa0:	00fd87b3          	add	a5,s11,a5
    80004fa4:	0007c503          	lbu	a0,0(a5)
    80004fa8:	fffd0d1b          	addiw	s10,s10,-1
    80004fac:	004c9c93          	slli	s9,s9,0x4
    80004fb0:	00000097          	auipc	ra,0x0
    80004fb4:	974080e7          	jalr	-1676(ra) # 80004924 <consputc>
    80004fb8:	fe0d12e3          	bnez	s10,80004f9c <__printf+0x494>
    80004fbc:	f8dff06f          	j	80004f48 <__printf+0x440>
    80004fc0:	f7843783          	ld	a5,-136(s0)
    80004fc4:	0007bc83          	ld	s9,0(a5)
    80004fc8:	00878793          	addi	a5,a5,8
    80004fcc:	f6f43c23          	sd	a5,-136(s0)
    80004fd0:	000c9a63          	bnez	s9,80004fe4 <__printf+0x4dc>
    80004fd4:	1080006f          	j	800050dc <__printf+0x5d4>
    80004fd8:	001c8c93          	addi	s9,s9,1
    80004fdc:	00000097          	auipc	ra,0x0
    80004fe0:	948080e7          	jalr	-1720(ra) # 80004924 <consputc>
    80004fe4:	000cc503          	lbu	a0,0(s9)
    80004fe8:	fe0518e3          	bnez	a0,80004fd8 <__printf+0x4d0>
    80004fec:	f5dff06f          	j	80004f48 <__printf+0x440>
    80004ff0:	02500513          	li	a0,37
    80004ff4:	00000097          	auipc	ra,0x0
    80004ff8:	930080e7          	jalr	-1744(ra) # 80004924 <consputc>
    80004ffc:	000c8513          	mv	a0,s9
    80005000:	00000097          	auipc	ra,0x0
    80005004:	924080e7          	jalr	-1756(ra) # 80004924 <consputc>
    80005008:	f41ff06f          	j	80004f48 <__printf+0x440>
    8000500c:	02500513          	li	a0,37
    80005010:	00000097          	auipc	ra,0x0
    80005014:	914080e7          	jalr	-1772(ra) # 80004924 <consputc>
    80005018:	f31ff06f          	j	80004f48 <__printf+0x440>
    8000501c:	00030513          	mv	a0,t1
    80005020:	00000097          	auipc	ra,0x0
    80005024:	7bc080e7          	jalr	1980(ra) # 800057dc <acquire>
    80005028:	b4dff06f          	j	80004b74 <__printf+0x6c>
    8000502c:	40c0053b          	negw	a0,a2
    80005030:	00a00713          	li	a4,10
    80005034:	02e576bb          	remuw	a3,a0,a4
    80005038:	00002d97          	auipc	s11,0x2
    8000503c:	268d8d93          	addi	s11,s11,616 # 800072a0 <digits>
    80005040:	ff700593          	li	a1,-9
    80005044:	02069693          	slli	a3,a3,0x20
    80005048:	0206d693          	srli	a3,a3,0x20
    8000504c:	00dd86b3          	add	a3,s11,a3
    80005050:	0006c683          	lbu	a3,0(a3)
    80005054:	02e557bb          	divuw	a5,a0,a4
    80005058:	f8d40023          	sb	a3,-128(s0)
    8000505c:	10b65e63          	bge	a2,a1,80005178 <__printf+0x670>
    80005060:	06300593          	li	a1,99
    80005064:	02e7f6bb          	remuw	a3,a5,a4
    80005068:	02069693          	slli	a3,a3,0x20
    8000506c:	0206d693          	srli	a3,a3,0x20
    80005070:	00dd86b3          	add	a3,s11,a3
    80005074:	0006c683          	lbu	a3,0(a3)
    80005078:	02e7d73b          	divuw	a4,a5,a4
    8000507c:	00200793          	li	a5,2
    80005080:	f8d400a3          	sb	a3,-127(s0)
    80005084:	bca5ece3          	bltu	a1,a0,80004c5c <__printf+0x154>
    80005088:	ce5ff06f          	j	80004d6c <__printf+0x264>
    8000508c:	40e007bb          	negw	a5,a4
    80005090:	00002d97          	auipc	s11,0x2
    80005094:	210d8d93          	addi	s11,s11,528 # 800072a0 <digits>
    80005098:	00f7f693          	andi	a3,a5,15
    8000509c:	00dd86b3          	add	a3,s11,a3
    800050a0:	0006c583          	lbu	a1,0(a3)
    800050a4:	ff100613          	li	a2,-15
    800050a8:	0047d69b          	srliw	a3,a5,0x4
    800050ac:	f8b40023          	sb	a1,-128(s0)
    800050b0:	0047d59b          	srliw	a1,a5,0x4
    800050b4:	0ac75e63          	bge	a4,a2,80005170 <__printf+0x668>
    800050b8:	00f6f693          	andi	a3,a3,15
    800050bc:	00dd86b3          	add	a3,s11,a3
    800050c0:	0006c603          	lbu	a2,0(a3)
    800050c4:	00f00693          	li	a3,15
    800050c8:	0087d79b          	srliw	a5,a5,0x8
    800050cc:	f8c400a3          	sb	a2,-127(s0)
    800050d0:	d8b6e4e3          	bltu	a3,a1,80004e58 <__printf+0x350>
    800050d4:	00200793          	li	a5,2
    800050d8:	e2dff06f          	j	80004f04 <__printf+0x3fc>
    800050dc:	00002c97          	auipc	s9,0x2
    800050e0:	1a4c8c93          	addi	s9,s9,420 # 80007280 <CONSOLE_STATUS+0x270>
    800050e4:	02800513          	li	a0,40
    800050e8:	ef1ff06f          	j	80004fd8 <__printf+0x4d0>
    800050ec:	00700793          	li	a5,7
    800050f0:	00600c93          	li	s9,6
    800050f4:	e0dff06f          	j	80004f00 <__printf+0x3f8>
    800050f8:	00700793          	li	a5,7
    800050fc:	00600c93          	li	s9,6
    80005100:	c69ff06f          	j	80004d68 <__printf+0x260>
    80005104:	00300793          	li	a5,3
    80005108:	00200c93          	li	s9,2
    8000510c:	c5dff06f          	j	80004d68 <__printf+0x260>
    80005110:	00300793          	li	a5,3
    80005114:	00200c93          	li	s9,2
    80005118:	de9ff06f          	j	80004f00 <__printf+0x3f8>
    8000511c:	00400793          	li	a5,4
    80005120:	00300c93          	li	s9,3
    80005124:	dddff06f          	j	80004f00 <__printf+0x3f8>
    80005128:	00400793          	li	a5,4
    8000512c:	00300c93          	li	s9,3
    80005130:	c39ff06f          	j	80004d68 <__printf+0x260>
    80005134:	00500793          	li	a5,5
    80005138:	00400c93          	li	s9,4
    8000513c:	c2dff06f          	j	80004d68 <__printf+0x260>
    80005140:	00500793          	li	a5,5
    80005144:	00400c93          	li	s9,4
    80005148:	db9ff06f          	j	80004f00 <__printf+0x3f8>
    8000514c:	00600793          	li	a5,6
    80005150:	00500c93          	li	s9,5
    80005154:	dadff06f          	j	80004f00 <__printf+0x3f8>
    80005158:	00600793          	li	a5,6
    8000515c:	00500c93          	li	s9,5
    80005160:	c09ff06f          	j	80004d68 <__printf+0x260>
    80005164:	00800793          	li	a5,8
    80005168:	00700c93          	li	s9,7
    8000516c:	bfdff06f          	j	80004d68 <__printf+0x260>
    80005170:	00100793          	li	a5,1
    80005174:	d91ff06f          	j	80004f04 <__printf+0x3fc>
    80005178:	00100793          	li	a5,1
    8000517c:	bf1ff06f          	j	80004d6c <__printf+0x264>
    80005180:	00900793          	li	a5,9
    80005184:	00800c93          	li	s9,8
    80005188:	be1ff06f          	j	80004d68 <__printf+0x260>
    8000518c:	00002517          	auipc	a0,0x2
    80005190:	0fc50513          	addi	a0,a0,252 # 80007288 <CONSOLE_STATUS+0x278>
    80005194:	00000097          	auipc	ra,0x0
    80005198:	918080e7          	jalr	-1768(ra) # 80004aac <panic>

000000008000519c <printfinit>:
    8000519c:	fe010113          	addi	sp,sp,-32
    800051a0:	00813823          	sd	s0,16(sp)
    800051a4:	00913423          	sd	s1,8(sp)
    800051a8:	00113c23          	sd	ra,24(sp)
    800051ac:	02010413          	addi	s0,sp,32
    800051b0:	00005497          	auipc	s1,0x5
    800051b4:	9e048493          	addi	s1,s1,-1568 # 80009b90 <pr>
    800051b8:	00048513          	mv	a0,s1
    800051bc:	00002597          	auipc	a1,0x2
    800051c0:	0dc58593          	addi	a1,a1,220 # 80007298 <CONSOLE_STATUS+0x288>
    800051c4:	00000097          	auipc	ra,0x0
    800051c8:	5f4080e7          	jalr	1524(ra) # 800057b8 <initlock>
    800051cc:	01813083          	ld	ra,24(sp)
    800051d0:	01013403          	ld	s0,16(sp)
    800051d4:	0004ac23          	sw	zero,24(s1)
    800051d8:	00813483          	ld	s1,8(sp)
    800051dc:	02010113          	addi	sp,sp,32
    800051e0:	00008067          	ret

00000000800051e4 <uartinit>:
    800051e4:	ff010113          	addi	sp,sp,-16
    800051e8:	00813423          	sd	s0,8(sp)
    800051ec:	01010413          	addi	s0,sp,16
    800051f0:	100007b7          	lui	a5,0x10000
    800051f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800051f8:	f8000713          	li	a4,-128
    800051fc:	00e781a3          	sb	a4,3(a5)
    80005200:	00300713          	li	a4,3
    80005204:	00e78023          	sb	a4,0(a5)
    80005208:	000780a3          	sb	zero,1(a5)
    8000520c:	00e781a3          	sb	a4,3(a5)
    80005210:	00700693          	li	a3,7
    80005214:	00d78123          	sb	a3,2(a5)
    80005218:	00e780a3          	sb	a4,1(a5)
    8000521c:	00813403          	ld	s0,8(sp)
    80005220:	01010113          	addi	sp,sp,16
    80005224:	00008067          	ret

0000000080005228 <uartputc>:
    80005228:	00003797          	auipc	a5,0x3
    8000522c:	6b07a783          	lw	a5,1712(a5) # 800088d8 <panicked>
    80005230:	00078463          	beqz	a5,80005238 <uartputc+0x10>
    80005234:	0000006f          	j	80005234 <uartputc+0xc>
    80005238:	fd010113          	addi	sp,sp,-48
    8000523c:	02813023          	sd	s0,32(sp)
    80005240:	00913c23          	sd	s1,24(sp)
    80005244:	01213823          	sd	s2,16(sp)
    80005248:	01313423          	sd	s3,8(sp)
    8000524c:	02113423          	sd	ra,40(sp)
    80005250:	03010413          	addi	s0,sp,48
    80005254:	00003917          	auipc	s2,0x3
    80005258:	68c90913          	addi	s2,s2,1676 # 800088e0 <uart_tx_r>
    8000525c:	00093783          	ld	a5,0(s2)
    80005260:	00003497          	auipc	s1,0x3
    80005264:	68848493          	addi	s1,s1,1672 # 800088e8 <uart_tx_w>
    80005268:	0004b703          	ld	a4,0(s1)
    8000526c:	02078693          	addi	a3,a5,32
    80005270:	00050993          	mv	s3,a0
    80005274:	02e69c63          	bne	a3,a4,800052ac <uartputc+0x84>
    80005278:	00001097          	auipc	ra,0x1
    8000527c:	834080e7          	jalr	-1996(ra) # 80005aac <push_on>
    80005280:	00093783          	ld	a5,0(s2)
    80005284:	0004b703          	ld	a4,0(s1)
    80005288:	02078793          	addi	a5,a5,32
    8000528c:	00e79463          	bne	a5,a4,80005294 <uartputc+0x6c>
    80005290:	0000006f          	j	80005290 <uartputc+0x68>
    80005294:	00001097          	auipc	ra,0x1
    80005298:	88c080e7          	jalr	-1908(ra) # 80005b20 <pop_on>
    8000529c:	00093783          	ld	a5,0(s2)
    800052a0:	0004b703          	ld	a4,0(s1)
    800052a4:	02078693          	addi	a3,a5,32
    800052a8:	fce688e3          	beq	a3,a4,80005278 <uartputc+0x50>
    800052ac:	01f77693          	andi	a3,a4,31
    800052b0:	00005597          	auipc	a1,0x5
    800052b4:	90058593          	addi	a1,a1,-1792 # 80009bb0 <uart_tx_buf>
    800052b8:	00d586b3          	add	a3,a1,a3
    800052bc:	00170713          	addi	a4,a4,1
    800052c0:	01368023          	sb	s3,0(a3)
    800052c4:	00e4b023          	sd	a4,0(s1)
    800052c8:	10000637          	lui	a2,0x10000
    800052cc:	02f71063          	bne	a4,a5,800052ec <uartputc+0xc4>
    800052d0:	0340006f          	j	80005304 <uartputc+0xdc>
    800052d4:	00074703          	lbu	a4,0(a4)
    800052d8:	00f93023          	sd	a5,0(s2)
    800052dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800052e0:	00093783          	ld	a5,0(s2)
    800052e4:	0004b703          	ld	a4,0(s1)
    800052e8:	00f70e63          	beq	a4,a5,80005304 <uartputc+0xdc>
    800052ec:	00564683          	lbu	a3,5(a2)
    800052f0:	01f7f713          	andi	a4,a5,31
    800052f4:	00e58733          	add	a4,a1,a4
    800052f8:	0206f693          	andi	a3,a3,32
    800052fc:	00178793          	addi	a5,a5,1
    80005300:	fc069ae3          	bnez	a3,800052d4 <uartputc+0xac>
    80005304:	02813083          	ld	ra,40(sp)
    80005308:	02013403          	ld	s0,32(sp)
    8000530c:	01813483          	ld	s1,24(sp)
    80005310:	01013903          	ld	s2,16(sp)
    80005314:	00813983          	ld	s3,8(sp)
    80005318:	03010113          	addi	sp,sp,48
    8000531c:	00008067          	ret

0000000080005320 <uartputc_sync>:
    80005320:	ff010113          	addi	sp,sp,-16
    80005324:	00813423          	sd	s0,8(sp)
    80005328:	01010413          	addi	s0,sp,16
    8000532c:	00003717          	auipc	a4,0x3
    80005330:	5ac72703          	lw	a4,1452(a4) # 800088d8 <panicked>
    80005334:	02071663          	bnez	a4,80005360 <uartputc_sync+0x40>
    80005338:	00050793          	mv	a5,a0
    8000533c:	100006b7          	lui	a3,0x10000
    80005340:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80005344:	02077713          	andi	a4,a4,32
    80005348:	fe070ce3          	beqz	a4,80005340 <uartputc_sync+0x20>
    8000534c:	0ff7f793          	andi	a5,a5,255
    80005350:	00f68023          	sb	a5,0(a3)
    80005354:	00813403          	ld	s0,8(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret
    80005360:	0000006f          	j	80005360 <uartputc_sync+0x40>

0000000080005364 <uartstart>:
    80005364:	ff010113          	addi	sp,sp,-16
    80005368:	00813423          	sd	s0,8(sp)
    8000536c:	01010413          	addi	s0,sp,16
    80005370:	00003617          	auipc	a2,0x3
    80005374:	57060613          	addi	a2,a2,1392 # 800088e0 <uart_tx_r>
    80005378:	00003517          	auipc	a0,0x3
    8000537c:	57050513          	addi	a0,a0,1392 # 800088e8 <uart_tx_w>
    80005380:	00063783          	ld	a5,0(a2)
    80005384:	00053703          	ld	a4,0(a0)
    80005388:	04f70263          	beq	a4,a5,800053cc <uartstart+0x68>
    8000538c:	100005b7          	lui	a1,0x10000
    80005390:	00005817          	auipc	a6,0x5
    80005394:	82080813          	addi	a6,a6,-2016 # 80009bb0 <uart_tx_buf>
    80005398:	01c0006f          	j	800053b4 <uartstart+0x50>
    8000539c:	0006c703          	lbu	a4,0(a3)
    800053a0:	00f63023          	sd	a5,0(a2)
    800053a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800053a8:	00063783          	ld	a5,0(a2)
    800053ac:	00053703          	ld	a4,0(a0)
    800053b0:	00f70e63          	beq	a4,a5,800053cc <uartstart+0x68>
    800053b4:	01f7f713          	andi	a4,a5,31
    800053b8:	00e806b3          	add	a3,a6,a4
    800053bc:	0055c703          	lbu	a4,5(a1)
    800053c0:	00178793          	addi	a5,a5,1
    800053c4:	02077713          	andi	a4,a4,32
    800053c8:	fc071ae3          	bnez	a4,8000539c <uartstart+0x38>
    800053cc:	00813403          	ld	s0,8(sp)
    800053d0:	01010113          	addi	sp,sp,16
    800053d4:	00008067          	ret

00000000800053d8 <uartgetc>:
    800053d8:	ff010113          	addi	sp,sp,-16
    800053dc:	00813423          	sd	s0,8(sp)
    800053e0:	01010413          	addi	s0,sp,16
    800053e4:	10000737          	lui	a4,0x10000
    800053e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800053ec:	0017f793          	andi	a5,a5,1
    800053f0:	00078c63          	beqz	a5,80005408 <uartgetc+0x30>
    800053f4:	00074503          	lbu	a0,0(a4)
    800053f8:	0ff57513          	andi	a0,a0,255
    800053fc:	00813403          	ld	s0,8(sp)
    80005400:	01010113          	addi	sp,sp,16
    80005404:	00008067          	ret
    80005408:	fff00513          	li	a0,-1
    8000540c:	ff1ff06f          	j	800053fc <uartgetc+0x24>

0000000080005410 <uartintr>:
    80005410:	100007b7          	lui	a5,0x10000
    80005414:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80005418:	0017f793          	andi	a5,a5,1
    8000541c:	0a078463          	beqz	a5,800054c4 <uartintr+0xb4>
    80005420:	fe010113          	addi	sp,sp,-32
    80005424:	00813823          	sd	s0,16(sp)
    80005428:	00913423          	sd	s1,8(sp)
    8000542c:	00113c23          	sd	ra,24(sp)
    80005430:	02010413          	addi	s0,sp,32
    80005434:	100004b7          	lui	s1,0x10000
    80005438:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000543c:	0ff57513          	andi	a0,a0,255
    80005440:	fffff097          	auipc	ra,0xfffff
    80005444:	534080e7          	jalr	1332(ra) # 80004974 <consoleintr>
    80005448:	0054c783          	lbu	a5,5(s1)
    8000544c:	0017f793          	andi	a5,a5,1
    80005450:	fe0794e3          	bnez	a5,80005438 <uartintr+0x28>
    80005454:	00003617          	auipc	a2,0x3
    80005458:	48c60613          	addi	a2,a2,1164 # 800088e0 <uart_tx_r>
    8000545c:	00003517          	auipc	a0,0x3
    80005460:	48c50513          	addi	a0,a0,1164 # 800088e8 <uart_tx_w>
    80005464:	00063783          	ld	a5,0(a2)
    80005468:	00053703          	ld	a4,0(a0)
    8000546c:	04f70263          	beq	a4,a5,800054b0 <uartintr+0xa0>
    80005470:	100005b7          	lui	a1,0x10000
    80005474:	00004817          	auipc	a6,0x4
    80005478:	73c80813          	addi	a6,a6,1852 # 80009bb0 <uart_tx_buf>
    8000547c:	01c0006f          	j	80005498 <uartintr+0x88>
    80005480:	0006c703          	lbu	a4,0(a3)
    80005484:	00f63023          	sd	a5,0(a2)
    80005488:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000548c:	00063783          	ld	a5,0(a2)
    80005490:	00053703          	ld	a4,0(a0)
    80005494:	00f70e63          	beq	a4,a5,800054b0 <uartintr+0xa0>
    80005498:	01f7f713          	andi	a4,a5,31
    8000549c:	00e806b3          	add	a3,a6,a4
    800054a0:	0055c703          	lbu	a4,5(a1)
    800054a4:	00178793          	addi	a5,a5,1
    800054a8:	02077713          	andi	a4,a4,32
    800054ac:	fc071ae3          	bnez	a4,80005480 <uartintr+0x70>
    800054b0:	01813083          	ld	ra,24(sp)
    800054b4:	01013403          	ld	s0,16(sp)
    800054b8:	00813483          	ld	s1,8(sp)
    800054bc:	02010113          	addi	sp,sp,32
    800054c0:	00008067          	ret
    800054c4:	00003617          	auipc	a2,0x3
    800054c8:	41c60613          	addi	a2,a2,1052 # 800088e0 <uart_tx_r>
    800054cc:	00003517          	auipc	a0,0x3
    800054d0:	41c50513          	addi	a0,a0,1052 # 800088e8 <uart_tx_w>
    800054d4:	00063783          	ld	a5,0(a2)
    800054d8:	00053703          	ld	a4,0(a0)
    800054dc:	04f70263          	beq	a4,a5,80005520 <uartintr+0x110>
    800054e0:	100005b7          	lui	a1,0x10000
    800054e4:	00004817          	auipc	a6,0x4
    800054e8:	6cc80813          	addi	a6,a6,1740 # 80009bb0 <uart_tx_buf>
    800054ec:	01c0006f          	j	80005508 <uartintr+0xf8>
    800054f0:	0006c703          	lbu	a4,0(a3)
    800054f4:	00f63023          	sd	a5,0(a2)
    800054f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800054fc:	00063783          	ld	a5,0(a2)
    80005500:	00053703          	ld	a4,0(a0)
    80005504:	02f70063          	beq	a4,a5,80005524 <uartintr+0x114>
    80005508:	01f7f713          	andi	a4,a5,31
    8000550c:	00e806b3          	add	a3,a6,a4
    80005510:	0055c703          	lbu	a4,5(a1)
    80005514:	00178793          	addi	a5,a5,1
    80005518:	02077713          	andi	a4,a4,32
    8000551c:	fc071ae3          	bnez	a4,800054f0 <uartintr+0xe0>
    80005520:	00008067          	ret
    80005524:	00008067          	ret

0000000080005528 <kinit>:
    80005528:	fc010113          	addi	sp,sp,-64
    8000552c:	02913423          	sd	s1,40(sp)
    80005530:	fffff7b7          	lui	a5,0xfffff
    80005534:	00005497          	auipc	s1,0x5
    80005538:	69b48493          	addi	s1,s1,1691 # 8000abcf <end+0xfff>
    8000553c:	02813823          	sd	s0,48(sp)
    80005540:	01313c23          	sd	s3,24(sp)
    80005544:	00f4f4b3          	and	s1,s1,a5
    80005548:	02113c23          	sd	ra,56(sp)
    8000554c:	03213023          	sd	s2,32(sp)
    80005550:	01413823          	sd	s4,16(sp)
    80005554:	01513423          	sd	s5,8(sp)
    80005558:	04010413          	addi	s0,sp,64
    8000555c:	000017b7          	lui	a5,0x1
    80005560:	01100993          	li	s3,17
    80005564:	00f487b3          	add	a5,s1,a5
    80005568:	01b99993          	slli	s3,s3,0x1b
    8000556c:	06f9e063          	bltu	s3,a5,800055cc <kinit+0xa4>
    80005570:	00004a97          	auipc	s5,0x4
    80005574:	660a8a93          	addi	s5,s5,1632 # 80009bd0 <end>
    80005578:	0754ec63          	bltu	s1,s5,800055f0 <kinit+0xc8>
    8000557c:	0734fa63          	bgeu	s1,s3,800055f0 <kinit+0xc8>
    80005580:	00088a37          	lui	s4,0x88
    80005584:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80005588:	00003917          	auipc	s2,0x3
    8000558c:	36890913          	addi	s2,s2,872 # 800088f0 <kmem>
    80005590:	00ca1a13          	slli	s4,s4,0xc
    80005594:	0140006f          	j	800055a8 <kinit+0x80>
    80005598:	000017b7          	lui	a5,0x1
    8000559c:	00f484b3          	add	s1,s1,a5
    800055a0:	0554e863          	bltu	s1,s5,800055f0 <kinit+0xc8>
    800055a4:	0534f663          	bgeu	s1,s3,800055f0 <kinit+0xc8>
    800055a8:	00001637          	lui	a2,0x1
    800055ac:	00100593          	li	a1,1
    800055b0:	00048513          	mv	a0,s1
    800055b4:	00000097          	auipc	ra,0x0
    800055b8:	5e4080e7          	jalr	1508(ra) # 80005b98 <__memset>
    800055bc:	00093783          	ld	a5,0(s2)
    800055c0:	00f4b023          	sd	a5,0(s1)
    800055c4:	00993023          	sd	s1,0(s2)
    800055c8:	fd4498e3          	bne	s1,s4,80005598 <kinit+0x70>
    800055cc:	03813083          	ld	ra,56(sp)
    800055d0:	03013403          	ld	s0,48(sp)
    800055d4:	02813483          	ld	s1,40(sp)
    800055d8:	02013903          	ld	s2,32(sp)
    800055dc:	01813983          	ld	s3,24(sp)
    800055e0:	01013a03          	ld	s4,16(sp)
    800055e4:	00813a83          	ld	s5,8(sp)
    800055e8:	04010113          	addi	sp,sp,64
    800055ec:	00008067          	ret
    800055f0:	00002517          	auipc	a0,0x2
    800055f4:	cc850513          	addi	a0,a0,-824 # 800072b8 <digits+0x18>
    800055f8:	fffff097          	auipc	ra,0xfffff
    800055fc:	4b4080e7          	jalr	1204(ra) # 80004aac <panic>

0000000080005600 <freerange>:
    80005600:	fc010113          	addi	sp,sp,-64
    80005604:	000017b7          	lui	a5,0x1
    80005608:	02913423          	sd	s1,40(sp)
    8000560c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80005610:	009504b3          	add	s1,a0,s1
    80005614:	fffff537          	lui	a0,0xfffff
    80005618:	02813823          	sd	s0,48(sp)
    8000561c:	02113c23          	sd	ra,56(sp)
    80005620:	03213023          	sd	s2,32(sp)
    80005624:	01313c23          	sd	s3,24(sp)
    80005628:	01413823          	sd	s4,16(sp)
    8000562c:	01513423          	sd	s5,8(sp)
    80005630:	01613023          	sd	s6,0(sp)
    80005634:	04010413          	addi	s0,sp,64
    80005638:	00a4f4b3          	and	s1,s1,a0
    8000563c:	00f487b3          	add	a5,s1,a5
    80005640:	06f5e463          	bltu	a1,a5,800056a8 <freerange+0xa8>
    80005644:	00004a97          	auipc	s5,0x4
    80005648:	58ca8a93          	addi	s5,s5,1420 # 80009bd0 <end>
    8000564c:	0954e263          	bltu	s1,s5,800056d0 <freerange+0xd0>
    80005650:	01100993          	li	s3,17
    80005654:	01b99993          	slli	s3,s3,0x1b
    80005658:	0734fc63          	bgeu	s1,s3,800056d0 <freerange+0xd0>
    8000565c:	00058a13          	mv	s4,a1
    80005660:	00003917          	auipc	s2,0x3
    80005664:	29090913          	addi	s2,s2,656 # 800088f0 <kmem>
    80005668:	00002b37          	lui	s6,0x2
    8000566c:	0140006f          	j	80005680 <freerange+0x80>
    80005670:	000017b7          	lui	a5,0x1
    80005674:	00f484b3          	add	s1,s1,a5
    80005678:	0554ec63          	bltu	s1,s5,800056d0 <freerange+0xd0>
    8000567c:	0534fa63          	bgeu	s1,s3,800056d0 <freerange+0xd0>
    80005680:	00001637          	lui	a2,0x1
    80005684:	00100593          	li	a1,1
    80005688:	00048513          	mv	a0,s1
    8000568c:	00000097          	auipc	ra,0x0
    80005690:	50c080e7          	jalr	1292(ra) # 80005b98 <__memset>
    80005694:	00093703          	ld	a4,0(s2)
    80005698:	016487b3          	add	a5,s1,s6
    8000569c:	00e4b023          	sd	a4,0(s1)
    800056a0:	00993023          	sd	s1,0(s2)
    800056a4:	fcfa76e3          	bgeu	s4,a5,80005670 <freerange+0x70>
    800056a8:	03813083          	ld	ra,56(sp)
    800056ac:	03013403          	ld	s0,48(sp)
    800056b0:	02813483          	ld	s1,40(sp)
    800056b4:	02013903          	ld	s2,32(sp)
    800056b8:	01813983          	ld	s3,24(sp)
    800056bc:	01013a03          	ld	s4,16(sp)
    800056c0:	00813a83          	ld	s5,8(sp)
    800056c4:	00013b03          	ld	s6,0(sp)
    800056c8:	04010113          	addi	sp,sp,64
    800056cc:	00008067          	ret
    800056d0:	00002517          	auipc	a0,0x2
    800056d4:	be850513          	addi	a0,a0,-1048 # 800072b8 <digits+0x18>
    800056d8:	fffff097          	auipc	ra,0xfffff
    800056dc:	3d4080e7          	jalr	980(ra) # 80004aac <panic>

00000000800056e0 <kfree>:
    800056e0:	fe010113          	addi	sp,sp,-32
    800056e4:	00813823          	sd	s0,16(sp)
    800056e8:	00113c23          	sd	ra,24(sp)
    800056ec:	00913423          	sd	s1,8(sp)
    800056f0:	02010413          	addi	s0,sp,32
    800056f4:	03451793          	slli	a5,a0,0x34
    800056f8:	04079c63          	bnez	a5,80005750 <kfree+0x70>
    800056fc:	00004797          	auipc	a5,0x4
    80005700:	4d478793          	addi	a5,a5,1236 # 80009bd0 <end>
    80005704:	00050493          	mv	s1,a0
    80005708:	04f56463          	bltu	a0,a5,80005750 <kfree+0x70>
    8000570c:	01100793          	li	a5,17
    80005710:	01b79793          	slli	a5,a5,0x1b
    80005714:	02f57e63          	bgeu	a0,a5,80005750 <kfree+0x70>
    80005718:	00001637          	lui	a2,0x1
    8000571c:	00100593          	li	a1,1
    80005720:	00000097          	auipc	ra,0x0
    80005724:	478080e7          	jalr	1144(ra) # 80005b98 <__memset>
    80005728:	00003797          	auipc	a5,0x3
    8000572c:	1c878793          	addi	a5,a5,456 # 800088f0 <kmem>
    80005730:	0007b703          	ld	a4,0(a5)
    80005734:	01813083          	ld	ra,24(sp)
    80005738:	01013403          	ld	s0,16(sp)
    8000573c:	00e4b023          	sd	a4,0(s1)
    80005740:	0097b023          	sd	s1,0(a5)
    80005744:	00813483          	ld	s1,8(sp)
    80005748:	02010113          	addi	sp,sp,32
    8000574c:	00008067          	ret
    80005750:	00002517          	auipc	a0,0x2
    80005754:	b6850513          	addi	a0,a0,-1176 # 800072b8 <digits+0x18>
    80005758:	fffff097          	auipc	ra,0xfffff
    8000575c:	354080e7          	jalr	852(ra) # 80004aac <panic>

0000000080005760 <kalloc>:
    80005760:	fe010113          	addi	sp,sp,-32
    80005764:	00813823          	sd	s0,16(sp)
    80005768:	00913423          	sd	s1,8(sp)
    8000576c:	00113c23          	sd	ra,24(sp)
    80005770:	02010413          	addi	s0,sp,32
    80005774:	00003797          	auipc	a5,0x3
    80005778:	17c78793          	addi	a5,a5,380 # 800088f0 <kmem>
    8000577c:	0007b483          	ld	s1,0(a5)
    80005780:	02048063          	beqz	s1,800057a0 <kalloc+0x40>
    80005784:	0004b703          	ld	a4,0(s1)
    80005788:	00001637          	lui	a2,0x1
    8000578c:	00500593          	li	a1,5
    80005790:	00048513          	mv	a0,s1
    80005794:	00e7b023          	sd	a4,0(a5)
    80005798:	00000097          	auipc	ra,0x0
    8000579c:	400080e7          	jalr	1024(ra) # 80005b98 <__memset>
    800057a0:	01813083          	ld	ra,24(sp)
    800057a4:	01013403          	ld	s0,16(sp)
    800057a8:	00048513          	mv	a0,s1
    800057ac:	00813483          	ld	s1,8(sp)
    800057b0:	02010113          	addi	sp,sp,32
    800057b4:	00008067          	ret

00000000800057b8 <initlock>:
    800057b8:	ff010113          	addi	sp,sp,-16
    800057bc:	00813423          	sd	s0,8(sp)
    800057c0:	01010413          	addi	s0,sp,16
    800057c4:	00813403          	ld	s0,8(sp)
    800057c8:	00b53423          	sd	a1,8(a0)
    800057cc:	00052023          	sw	zero,0(a0)
    800057d0:	00053823          	sd	zero,16(a0)
    800057d4:	01010113          	addi	sp,sp,16
    800057d8:	00008067          	ret

00000000800057dc <acquire>:
    800057dc:	fe010113          	addi	sp,sp,-32
    800057e0:	00813823          	sd	s0,16(sp)
    800057e4:	00913423          	sd	s1,8(sp)
    800057e8:	00113c23          	sd	ra,24(sp)
    800057ec:	01213023          	sd	s2,0(sp)
    800057f0:	02010413          	addi	s0,sp,32
    800057f4:	00050493          	mv	s1,a0
    800057f8:	10002973          	csrr	s2,sstatus
    800057fc:	100027f3          	csrr	a5,sstatus
    80005800:	ffd7f793          	andi	a5,a5,-3
    80005804:	10079073          	csrw	sstatus,a5
    80005808:	fffff097          	auipc	ra,0xfffff
    8000580c:	8e4080e7          	jalr	-1820(ra) # 800040ec <mycpu>
    80005810:	07852783          	lw	a5,120(a0)
    80005814:	06078e63          	beqz	a5,80005890 <acquire+0xb4>
    80005818:	fffff097          	auipc	ra,0xfffff
    8000581c:	8d4080e7          	jalr	-1836(ra) # 800040ec <mycpu>
    80005820:	07852783          	lw	a5,120(a0)
    80005824:	0004a703          	lw	a4,0(s1)
    80005828:	0017879b          	addiw	a5,a5,1
    8000582c:	06f52c23          	sw	a5,120(a0)
    80005830:	04071063          	bnez	a4,80005870 <acquire+0x94>
    80005834:	00100713          	li	a4,1
    80005838:	00070793          	mv	a5,a4
    8000583c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80005840:	0007879b          	sext.w	a5,a5
    80005844:	fe079ae3          	bnez	a5,80005838 <acquire+0x5c>
    80005848:	0ff0000f          	fence
    8000584c:	fffff097          	auipc	ra,0xfffff
    80005850:	8a0080e7          	jalr	-1888(ra) # 800040ec <mycpu>
    80005854:	01813083          	ld	ra,24(sp)
    80005858:	01013403          	ld	s0,16(sp)
    8000585c:	00a4b823          	sd	a0,16(s1)
    80005860:	00013903          	ld	s2,0(sp)
    80005864:	00813483          	ld	s1,8(sp)
    80005868:	02010113          	addi	sp,sp,32
    8000586c:	00008067          	ret
    80005870:	0104b903          	ld	s2,16(s1)
    80005874:	fffff097          	auipc	ra,0xfffff
    80005878:	878080e7          	jalr	-1928(ra) # 800040ec <mycpu>
    8000587c:	faa91ce3          	bne	s2,a0,80005834 <acquire+0x58>
    80005880:	00002517          	auipc	a0,0x2
    80005884:	a4050513          	addi	a0,a0,-1472 # 800072c0 <digits+0x20>
    80005888:	fffff097          	auipc	ra,0xfffff
    8000588c:	224080e7          	jalr	548(ra) # 80004aac <panic>
    80005890:	00195913          	srli	s2,s2,0x1
    80005894:	fffff097          	auipc	ra,0xfffff
    80005898:	858080e7          	jalr	-1960(ra) # 800040ec <mycpu>
    8000589c:	00197913          	andi	s2,s2,1
    800058a0:	07252e23          	sw	s2,124(a0)
    800058a4:	f75ff06f          	j	80005818 <acquire+0x3c>

00000000800058a8 <release>:
    800058a8:	fe010113          	addi	sp,sp,-32
    800058ac:	00813823          	sd	s0,16(sp)
    800058b0:	00113c23          	sd	ra,24(sp)
    800058b4:	00913423          	sd	s1,8(sp)
    800058b8:	01213023          	sd	s2,0(sp)
    800058bc:	02010413          	addi	s0,sp,32
    800058c0:	00052783          	lw	a5,0(a0)
    800058c4:	00079a63          	bnez	a5,800058d8 <release+0x30>
    800058c8:	00002517          	auipc	a0,0x2
    800058cc:	a0050513          	addi	a0,a0,-1536 # 800072c8 <digits+0x28>
    800058d0:	fffff097          	auipc	ra,0xfffff
    800058d4:	1dc080e7          	jalr	476(ra) # 80004aac <panic>
    800058d8:	01053903          	ld	s2,16(a0)
    800058dc:	00050493          	mv	s1,a0
    800058e0:	fffff097          	auipc	ra,0xfffff
    800058e4:	80c080e7          	jalr	-2036(ra) # 800040ec <mycpu>
    800058e8:	fea910e3          	bne	s2,a0,800058c8 <release+0x20>
    800058ec:	0004b823          	sd	zero,16(s1)
    800058f0:	0ff0000f          	fence
    800058f4:	0f50000f          	fence	iorw,ow
    800058f8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800058fc:	ffffe097          	auipc	ra,0xffffe
    80005900:	7f0080e7          	jalr	2032(ra) # 800040ec <mycpu>
    80005904:	100027f3          	csrr	a5,sstatus
    80005908:	0027f793          	andi	a5,a5,2
    8000590c:	04079a63          	bnez	a5,80005960 <release+0xb8>
    80005910:	07852783          	lw	a5,120(a0)
    80005914:	02f05e63          	blez	a5,80005950 <release+0xa8>
    80005918:	fff7871b          	addiw	a4,a5,-1
    8000591c:	06e52c23          	sw	a4,120(a0)
    80005920:	00071c63          	bnez	a4,80005938 <release+0x90>
    80005924:	07c52783          	lw	a5,124(a0)
    80005928:	00078863          	beqz	a5,80005938 <release+0x90>
    8000592c:	100027f3          	csrr	a5,sstatus
    80005930:	0027e793          	ori	a5,a5,2
    80005934:	10079073          	csrw	sstatus,a5
    80005938:	01813083          	ld	ra,24(sp)
    8000593c:	01013403          	ld	s0,16(sp)
    80005940:	00813483          	ld	s1,8(sp)
    80005944:	00013903          	ld	s2,0(sp)
    80005948:	02010113          	addi	sp,sp,32
    8000594c:	00008067          	ret
    80005950:	00002517          	auipc	a0,0x2
    80005954:	99850513          	addi	a0,a0,-1640 # 800072e8 <digits+0x48>
    80005958:	fffff097          	auipc	ra,0xfffff
    8000595c:	154080e7          	jalr	340(ra) # 80004aac <panic>
    80005960:	00002517          	auipc	a0,0x2
    80005964:	97050513          	addi	a0,a0,-1680 # 800072d0 <digits+0x30>
    80005968:	fffff097          	auipc	ra,0xfffff
    8000596c:	144080e7          	jalr	324(ra) # 80004aac <panic>

0000000080005970 <holding>:
    80005970:	00052783          	lw	a5,0(a0)
    80005974:	00079663          	bnez	a5,80005980 <holding+0x10>
    80005978:	00000513          	li	a0,0
    8000597c:	00008067          	ret
    80005980:	fe010113          	addi	sp,sp,-32
    80005984:	00813823          	sd	s0,16(sp)
    80005988:	00913423          	sd	s1,8(sp)
    8000598c:	00113c23          	sd	ra,24(sp)
    80005990:	02010413          	addi	s0,sp,32
    80005994:	01053483          	ld	s1,16(a0)
    80005998:	ffffe097          	auipc	ra,0xffffe
    8000599c:	754080e7          	jalr	1876(ra) # 800040ec <mycpu>
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	40a48533          	sub	a0,s1,a0
    800059ac:	00153513          	seqz	a0,a0
    800059b0:	00813483          	ld	s1,8(sp)
    800059b4:	02010113          	addi	sp,sp,32
    800059b8:	00008067          	ret

00000000800059bc <push_off>:
    800059bc:	fe010113          	addi	sp,sp,-32
    800059c0:	00813823          	sd	s0,16(sp)
    800059c4:	00113c23          	sd	ra,24(sp)
    800059c8:	00913423          	sd	s1,8(sp)
    800059cc:	02010413          	addi	s0,sp,32
    800059d0:	100024f3          	csrr	s1,sstatus
    800059d4:	100027f3          	csrr	a5,sstatus
    800059d8:	ffd7f793          	andi	a5,a5,-3
    800059dc:	10079073          	csrw	sstatus,a5
    800059e0:	ffffe097          	auipc	ra,0xffffe
    800059e4:	70c080e7          	jalr	1804(ra) # 800040ec <mycpu>
    800059e8:	07852783          	lw	a5,120(a0)
    800059ec:	02078663          	beqz	a5,80005a18 <push_off+0x5c>
    800059f0:	ffffe097          	auipc	ra,0xffffe
    800059f4:	6fc080e7          	jalr	1788(ra) # 800040ec <mycpu>
    800059f8:	07852783          	lw	a5,120(a0)
    800059fc:	01813083          	ld	ra,24(sp)
    80005a00:	01013403          	ld	s0,16(sp)
    80005a04:	0017879b          	addiw	a5,a5,1
    80005a08:	06f52c23          	sw	a5,120(a0)
    80005a0c:	00813483          	ld	s1,8(sp)
    80005a10:	02010113          	addi	sp,sp,32
    80005a14:	00008067          	ret
    80005a18:	0014d493          	srli	s1,s1,0x1
    80005a1c:	ffffe097          	auipc	ra,0xffffe
    80005a20:	6d0080e7          	jalr	1744(ra) # 800040ec <mycpu>
    80005a24:	0014f493          	andi	s1,s1,1
    80005a28:	06952e23          	sw	s1,124(a0)
    80005a2c:	fc5ff06f          	j	800059f0 <push_off+0x34>

0000000080005a30 <pop_off>:
    80005a30:	ff010113          	addi	sp,sp,-16
    80005a34:	00813023          	sd	s0,0(sp)
    80005a38:	00113423          	sd	ra,8(sp)
    80005a3c:	01010413          	addi	s0,sp,16
    80005a40:	ffffe097          	auipc	ra,0xffffe
    80005a44:	6ac080e7          	jalr	1708(ra) # 800040ec <mycpu>
    80005a48:	100027f3          	csrr	a5,sstatus
    80005a4c:	0027f793          	andi	a5,a5,2
    80005a50:	04079663          	bnez	a5,80005a9c <pop_off+0x6c>
    80005a54:	07852783          	lw	a5,120(a0)
    80005a58:	02f05a63          	blez	a5,80005a8c <pop_off+0x5c>
    80005a5c:	fff7871b          	addiw	a4,a5,-1
    80005a60:	06e52c23          	sw	a4,120(a0)
    80005a64:	00071c63          	bnez	a4,80005a7c <pop_off+0x4c>
    80005a68:	07c52783          	lw	a5,124(a0)
    80005a6c:	00078863          	beqz	a5,80005a7c <pop_off+0x4c>
    80005a70:	100027f3          	csrr	a5,sstatus
    80005a74:	0027e793          	ori	a5,a5,2
    80005a78:	10079073          	csrw	sstatus,a5
    80005a7c:	00813083          	ld	ra,8(sp)
    80005a80:	00013403          	ld	s0,0(sp)
    80005a84:	01010113          	addi	sp,sp,16
    80005a88:	00008067          	ret
    80005a8c:	00002517          	auipc	a0,0x2
    80005a90:	85c50513          	addi	a0,a0,-1956 # 800072e8 <digits+0x48>
    80005a94:	fffff097          	auipc	ra,0xfffff
    80005a98:	018080e7          	jalr	24(ra) # 80004aac <panic>
    80005a9c:	00002517          	auipc	a0,0x2
    80005aa0:	83450513          	addi	a0,a0,-1996 # 800072d0 <digits+0x30>
    80005aa4:	fffff097          	auipc	ra,0xfffff
    80005aa8:	008080e7          	jalr	8(ra) # 80004aac <panic>

0000000080005aac <push_on>:
    80005aac:	fe010113          	addi	sp,sp,-32
    80005ab0:	00813823          	sd	s0,16(sp)
    80005ab4:	00113c23          	sd	ra,24(sp)
    80005ab8:	00913423          	sd	s1,8(sp)
    80005abc:	02010413          	addi	s0,sp,32
    80005ac0:	100024f3          	csrr	s1,sstatus
    80005ac4:	100027f3          	csrr	a5,sstatus
    80005ac8:	0027e793          	ori	a5,a5,2
    80005acc:	10079073          	csrw	sstatus,a5
    80005ad0:	ffffe097          	auipc	ra,0xffffe
    80005ad4:	61c080e7          	jalr	1564(ra) # 800040ec <mycpu>
    80005ad8:	07852783          	lw	a5,120(a0)
    80005adc:	02078663          	beqz	a5,80005b08 <push_on+0x5c>
    80005ae0:	ffffe097          	auipc	ra,0xffffe
    80005ae4:	60c080e7          	jalr	1548(ra) # 800040ec <mycpu>
    80005ae8:	07852783          	lw	a5,120(a0)
    80005aec:	01813083          	ld	ra,24(sp)
    80005af0:	01013403          	ld	s0,16(sp)
    80005af4:	0017879b          	addiw	a5,a5,1
    80005af8:	06f52c23          	sw	a5,120(a0)
    80005afc:	00813483          	ld	s1,8(sp)
    80005b00:	02010113          	addi	sp,sp,32
    80005b04:	00008067          	ret
    80005b08:	0014d493          	srli	s1,s1,0x1
    80005b0c:	ffffe097          	auipc	ra,0xffffe
    80005b10:	5e0080e7          	jalr	1504(ra) # 800040ec <mycpu>
    80005b14:	0014f493          	andi	s1,s1,1
    80005b18:	06952e23          	sw	s1,124(a0)
    80005b1c:	fc5ff06f          	j	80005ae0 <push_on+0x34>

0000000080005b20 <pop_on>:
    80005b20:	ff010113          	addi	sp,sp,-16
    80005b24:	00813023          	sd	s0,0(sp)
    80005b28:	00113423          	sd	ra,8(sp)
    80005b2c:	01010413          	addi	s0,sp,16
    80005b30:	ffffe097          	auipc	ra,0xffffe
    80005b34:	5bc080e7          	jalr	1468(ra) # 800040ec <mycpu>
    80005b38:	100027f3          	csrr	a5,sstatus
    80005b3c:	0027f793          	andi	a5,a5,2
    80005b40:	04078463          	beqz	a5,80005b88 <pop_on+0x68>
    80005b44:	07852783          	lw	a5,120(a0)
    80005b48:	02f05863          	blez	a5,80005b78 <pop_on+0x58>
    80005b4c:	fff7879b          	addiw	a5,a5,-1
    80005b50:	06f52c23          	sw	a5,120(a0)
    80005b54:	07853783          	ld	a5,120(a0)
    80005b58:	00079863          	bnez	a5,80005b68 <pop_on+0x48>
    80005b5c:	100027f3          	csrr	a5,sstatus
    80005b60:	ffd7f793          	andi	a5,a5,-3
    80005b64:	10079073          	csrw	sstatus,a5
    80005b68:	00813083          	ld	ra,8(sp)
    80005b6c:	00013403          	ld	s0,0(sp)
    80005b70:	01010113          	addi	sp,sp,16
    80005b74:	00008067          	ret
    80005b78:	00001517          	auipc	a0,0x1
    80005b7c:	79850513          	addi	a0,a0,1944 # 80007310 <digits+0x70>
    80005b80:	fffff097          	auipc	ra,0xfffff
    80005b84:	f2c080e7          	jalr	-212(ra) # 80004aac <panic>
    80005b88:	00001517          	auipc	a0,0x1
    80005b8c:	76850513          	addi	a0,a0,1896 # 800072f0 <digits+0x50>
    80005b90:	fffff097          	auipc	ra,0xfffff
    80005b94:	f1c080e7          	jalr	-228(ra) # 80004aac <panic>

0000000080005b98 <__memset>:
    80005b98:	ff010113          	addi	sp,sp,-16
    80005b9c:	00813423          	sd	s0,8(sp)
    80005ba0:	01010413          	addi	s0,sp,16
    80005ba4:	1a060e63          	beqz	a2,80005d60 <__memset+0x1c8>
    80005ba8:	40a007b3          	neg	a5,a0
    80005bac:	0077f793          	andi	a5,a5,7
    80005bb0:	00778693          	addi	a3,a5,7
    80005bb4:	00b00813          	li	a6,11
    80005bb8:	0ff5f593          	andi	a1,a1,255
    80005bbc:	fff6071b          	addiw	a4,a2,-1
    80005bc0:	1b06e663          	bltu	a3,a6,80005d6c <__memset+0x1d4>
    80005bc4:	1cd76463          	bltu	a4,a3,80005d8c <__memset+0x1f4>
    80005bc8:	1a078e63          	beqz	a5,80005d84 <__memset+0x1ec>
    80005bcc:	00b50023          	sb	a1,0(a0)
    80005bd0:	00100713          	li	a4,1
    80005bd4:	1ae78463          	beq	a5,a4,80005d7c <__memset+0x1e4>
    80005bd8:	00b500a3          	sb	a1,1(a0)
    80005bdc:	00200713          	li	a4,2
    80005be0:	1ae78a63          	beq	a5,a4,80005d94 <__memset+0x1fc>
    80005be4:	00b50123          	sb	a1,2(a0)
    80005be8:	00300713          	li	a4,3
    80005bec:	18e78463          	beq	a5,a4,80005d74 <__memset+0x1dc>
    80005bf0:	00b501a3          	sb	a1,3(a0)
    80005bf4:	00400713          	li	a4,4
    80005bf8:	1ae78263          	beq	a5,a4,80005d9c <__memset+0x204>
    80005bfc:	00b50223          	sb	a1,4(a0)
    80005c00:	00500713          	li	a4,5
    80005c04:	1ae78063          	beq	a5,a4,80005da4 <__memset+0x20c>
    80005c08:	00b502a3          	sb	a1,5(a0)
    80005c0c:	00700713          	li	a4,7
    80005c10:	18e79e63          	bne	a5,a4,80005dac <__memset+0x214>
    80005c14:	00b50323          	sb	a1,6(a0)
    80005c18:	00700e93          	li	t4,7
    80005c1c:	00859713          	slli	a4,a1,0x8
    80005c20:	00e5e733          	or	a4,a1,a4
    80005c24:	01059e13          	slli	t3,a1,0x10
    80005c28:	01c76e33          	or	t3,a4,t3
    80005c2c:	01859313          	slli	t1,a1,0x18
    80005c30:	006e6333          	or	t1,t3,t1
    80005c34:	02059893          	slli	a7,a1,0x20
    80005c38:	40f60e3b          	subw	t3,a2,a5
    80005c3c:	011368b3          	or	a7,t1,a7
    80005c40:	02859813          	slli	a6,a1,0x28
    80005c44:	0108e833          	or	a6,a7,a6
    80005c48:	03059693          	slli	a3,a1,0x30
    80005c4c:	003e589b          	srliw	a7,t3,0x3
    80005c50:	00d866b3          	or	a3,a6,a3
    80005c54:	03859713          	slli	a4,a1,0x38
    80005c58:	00389813          	slli	a6,a7,0x3
    80005c5c:	00f507b3          	add	a5,a0,a5
    80005c60:	00e6e733          	or	a4,a3,a4
    80005c64:	000e089b          	sext.w	a7,t3
    80005c68:	00f806b3          	add	a3,a6,a5
    80005c6c:	00e7b023          	sd	a4,0(a5)
    80005c70:	00878793          	addi	a5,a5,8
    80005c74:	fed79ce3          	bne	a5,a3,80005c6c <__memset+0xd4>
    80005c78:	ff8e7793          	andi	a5,t3,-8
    80005c7c:	0007871b          	sext.w	a4,a5
    80005c80:	01d787bb          	addw	a5,a5,t4
    80005c84:	0ce88e63          	beq	a7,a4,80005d60 <__memset+0x1c8>
    80005c88:	00f50733          	add	a4,a0,a5
    80005c8c:	00b70023          	sb	a1,0(a4)
    80005c90:	0017871b          	addiw	a4,a5,1
    80005c94:	0cc77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005c98:	00e50733          	add	a4,a0,a4
    80005c9c:	00b70023          	sb	a1,0(a4)
    80005ca0:	0027871b          	addiw	a4,a5,2
    80005ca4:	0ac77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005ca8:	00e50733          	add	a4,a0,a4
    80005cac:	00b70023          	sb	a1,0(a4)
    80005cb0:	0037871b          	addiw	a4,a5,3
    80005cb4:	0ac77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cb8:	00e50733          	add	a4,a0,a4
    80005cbc:	00b70023          	sb	a1,0(a4)
    80005cc0:	0047871b          	addiw	a4,a5,4
    80005cc4:	08c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cc8:	00e50733          	add	a4,a0,a4
    80005ccc:	00b70023          	sb	a1,0(a4)
    80005cd0:	0057871b          	addiw	a4,a5,5
    80005cd4:	08c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cd8:	00e50733          	add	a4,a0,a4
    80005cdc:	00b70023          	sb	a1,0(a4)
    80005ce0:	0067871b          	addiw	a4,a5,6
    80005ce4:	06c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005ce8:	00e50733          	add	a4,a0,a4
    80005cec:	00b70023          	sb	a1,0(a4)
    80005cf0:	0077871b          	addiw	a4,a5,7
    80005cf4:	06c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005cf8:	00e50733          	add	a4,a0,a4
    80005cfc:	00b70023          	sb	a1,0(a4)
    80005d00:	0087871b          	addiw	a4,a5,8
    80005d04:	04c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d08:	00e50733          	add	a4,a0,a4
    80005d0c:	00b70023          	sb	a1,0(a4)
    80005d10:	0097871b          	addiw	a4,a5,9
    80005d14:	04c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d18:	00e50733          	add	a4,a0,a4
    80005d1c:	00b70023          	sb	a1,0(a4)
    80005d20:	00a7871b          	addiw	a4,a5,10
    80005d24:	02c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d28:	00e50733          	add	a4,a0,a4
    80005d2c:	00b70023          	sb	a1,0(a4)
    80005d30:	00b7871b          	addiw	a4,a5,11
    80005d34:	02c77663          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d38:	00e50733          	add	a4,a0,a4
    80005d3c:	00b70023          	sb	a1,0(a4)
    80005d40:	00c7871b          	addiw	a4,a5,12
    80005d44:	00c77e63          	bgeu	a4,a2,80005d60 <__memset+0x1c8>
    80005d48:	00e50733          	add	a4,a0,a4
    80005d4c:	00b70023          	sb	a1,0(a4)
    80005d50:	00d7879b          	addiw	a5,a5,13
    80005d54:	00c7f663          	bgeu	a5,a2,80005d60 <__memset+0x1c8>
    80005d58:	00f507b3          	add	a5,a0,a5
    80005d5c:	00b78023          	sb	a1,0(a5)
    80005d60:	00813403          	ld	s0,8(sp)
    80005d64:	01010113          	addi	sp,sp,16
    80005d68:	00008067          	ret
    80005d6c:	00b00693          	li	a3,11
    80005d70:	e55ff06f          	j	80005bc4 <__memset+0x2c>
    80005d74:	00300e93          	li	t4,3
    80005d78:	ea5ff06f          	j	80005c1c <__memset+0x84>
    80005d7c:	00100e93          	li	t4,1
    80005d80:	e9dff06f          	j	80005c1c <__memset+0x84>
    80005d84:	00000e93          	li	t4,0
    80005d88:	e95ff06f          	j	80005c1c <__memset+0x84>
    80005d8c:	00000793          	li	a5,0
    80005d90:	ef9ff06f          	j	80005c88 <__memset+0xf0>
    80005d94:	00200e93          	li	t4,2
    80005d98:	e85ff06f          	j	80005c1c <__memset+0x84>
    80005d9c:	00400e93          	li	t4,4
    80005da0:	e7dff06f          	j	80005c1c <__memset+0x84>
    80005da4:	00500e93          	li	t4,5
    80005da8:	e75ff06f          	j	80005c1c <__memset+0x84>
    80005dac:	00600e93          	li	t4,6
    80005db0:	e6dff06f          	j	80005c1c <__memset+0x84>

0000000080005db4 <__memmove>:
    80005db4:	ff010113          	addi	sp,sp,-16
    80005db8:	00813423          	sd	s0,8(sp)
    80005dbc:	01010413          	addi	s0,sp,16
    80005dc0:	0e060863          	beqz	a2,80005eb0 <__memmove+0xfc>
    80005dc4:	fff6069b          	addiw	a3,a2,-1
    80005dc8:	0006881b          	sext.w	a6,a3
    80005dcc:	0ea5e863          	bltu	a1,a0,80005ebc <__memmove+0x108>
    80005dd0:	00758713          	addi	a4,a1,7
    80005dd4:	00a5e7b3          	or	a5,a1,a0
    80005dd8:	40a70733          	sub	a4,a4,a0
    80005ddc:	0077f793          	andi	a5,a5,7
    80005de0:	00f73713          	sltiu	a4,a4,15
    80005de4:	00174713          	xori	a4,a4,1
    80005de8:	0017b793          	seqz	a5,a5
    80005dec:	00e7f7b3          	and	a5,a5,a4
    80005df0:	10078863          	beqz	a5,80005f00 <__memmove+0x14c>
    80005df4:	00900793          	li	a5,9
    80005df8:	1107f463          	bgeu	a5,a6,80005f00 <__memmove+0x14c>
    80005dfc:	0036581b          	srliw	a6,a2,0x3
    80005e00:	fff8081b          	addiw	a6,a6,-1
    80005e04:	02081813          	slli	a6,a6,0x20
    80005e08:	01d85893          	srli	a7,a6,0x1d
    80005e0c:	00858813          	addi	a6,a1,8
    80005e10:	00058793          	mv	a5,a1
    80005e14:	00050713          	mv	a4,a0
    80005e18:	01088833          	add	a6,a7,a6
    80005e1c:	0007b883          	ld	a7,0(a5)
    80005e20:	00878793          	addi	a5,a5,8
    80005e24:	00870713          	addi	a4,a4,8
    80005e28:	ff173c23          	sd	a7,-8(a4)
    80005e2c:	ff0798e3          	bne	a5,a6,80005e1c <__memmove+0x68>
    80005e30:	ff867713          	andi	a4,a2,-8
    80005e34:	02071793          	slli	a5,a4,0x20
    80005e38:	0207d793          	srli	a5,a5,0x20
    80005e3c:	00f585b3          	add	a1,a1,a5
    80005e40:	40e686bb          	subw	a3,a3,a4
    80005e44:	00f507b3          	add	a5,a0,a5
    80005e48:	06e60463          	beq	a2,a4,80005eb0 <__memmove+0xfc>
    80005e4c:	0005c703          	lbu	a4,0(a1)
    80005e50:	00e78023          	sb	a4,0(a5)
    80005e54:	04068e63          	beqz	a3,80005eb0 <__memmove+0xfc>
    80005e58:	0015c603          	lbu	a2,1(a1)
    80005e5c:	00100713          	li	a4,1
    80005e60:	00c780a3          	sb	a2,1(a5)
    80005e64:	04e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e68:	0025c603          	lbu	a2,2(a1)
    80005e6c:	00200713          	li	a4,2
    80005e70:	00c78123          	sb	a2,2(a5)
    80005e74:	02e68e63          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e78:	0035c603          	lbu	a2,3(a1)
    80005e7c:	00300713          	li	a4,3
    80005e80:	00c781a3          	sb	a2,3(a5)
    80005e84:	02e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e88:	0045c603          	lbu	a2,4(a1)
    80005e8c:	00400713          	li	a4,4
    80005e90:	00c78223          	sb	a2,4(a5)
    80005e94:	00e68e63          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005e98:	0055c603          	lbu	a2,5(a1)
    80005e9c:	00500713          	li	a4,5
    80005ea0:	00c782a3          	sb	a2,5(a5)
    80005ea4:	00e68663          	beq	a3,a4,80005eb0 <__memmove+0xfc>
    80005ea8:	0065c703          	lbu	a4,6(a1)
    80005eac:	00e78323          	sb	a4,6(a5)
    80005eb0:	00813403          	ld	s0,8(sp)
    80005eb4:	01010113          	addi	sp,sp,16
    80005eb8:	00008067          	ret
    80005ebc:	02061713          	slli	a4,a2,0x20
    80005ec0:	02075713          	srli	a4,a4,0x20
    80005ec4:	00e587b3          	add	a5,a1,a4
    80005ec8:	f0f574e3          	bgeu	a0,a5,80005dd0 <__memmove+0x1c>
    80005ecc:	02069613          	slli	a2,a3,0x20
    80005ed0:	02065613          	srli	a2,a2,0x20
    80005ed4:	fff64613          	not	a2,a2
    80005ed8:	00e50733          	add	a4,a0,a4
    80005edc:	00c78633          	add	a2,a5,a2
    80005ee0:	fff7c683          	lbu	a3,-1(a5)
    80005ee4:	fff78793          	addi	a5,a5,-1
    80005ee8:	fff70713          	addi	a4,a4,-1
    80005eec:	00d70023          	sb	a3,0(a4)
    80005ef0:	fec798e3          	bne	a5,a2,80005ee0 <__memmove+0x12c>
    80005ef4:	00813403          	ld	s0,8(sp)
    80005ef8:	01010113          	addi	sp,sp,16
    80005efc:	00008067          	ret
    80005f00:	02069713          	slli	a4,a3,0x20
    80005f04:	02075713          	srli	a4,a4,0x20
    80005f08:	00170713          	addi	a4,a4,1
    80005f0c:	00e50733          	add	a4,a0,a4
    80005f10:	00050793          	mv	a5,a0
    80005f14:	0005c683          	lbu	a3,0(a1)
    80005f18:	00178793          	addi	a5,a5,1
    80005f1c:	00158593          	addi	a1,a1,1
    80005f20:	fed78fa3          	sb	a3,-1(a5)
    80005f24:	fee798e3          	bne	a5,a4,80005f14 <__memmove+0x160>
    80005f28:	f89ff06f          	j	80005eb0 <__memmove+0xfc>

0000000080005f2c <__putc>:
    80005f2c:	fe010113          	addi	sp,sp,-32
    80005f30:	00813823          	sd	s0,16(sp)
    80005f34:	00113c23          	sd	ra,24(sp)
    80005f38:	02010413          	addi	s0,sp,32
    80005f3c:	00050793          	mv	a5,a0
    80005f40:	fef40593          	addi	a1,s0,-17
    80005f44:	00100613          	li	a2,1
    80005f48:	00000513          	li	a0,0
    80005f4c:	fef407a3          	sb	a5,-17(s0)
    80005f50:	fffff097          	auipc	ra,0xfffff
    80005f54:	b3c080e7          	jalr	-1220(ra) # 80004a8c <console_write>
    80005f58:	01813083          	ld	ra,24(sp)
    80005f5c:	01013403          	ld	s0,16(sp)
    80005f60:	02010113          	addi	sp,sp,32
    80005f64:	00008067          	ret

0000000080005f68 <__getc>:
    80005f68:	fe010113          	addi	sp,sp,-32
    80005f6c:	00813823          	sd	s0,16(sp)
    80005f70:	00113c23          	sd	ra,24(sp)
    80005f74:	02010413          	addi	s0,sp,32
    80005f78:	fe840593          	addi	a1,s0,-24
    80005f7c:	00100613          	li	a2,1
    80005f80:	00000513          	li	a0,0
    80005f84:	fffff097          	auipc	ra,0xfffff
    80005f88:	ae8080e7          	jalr	-1304(ra) # 80004a6c <console_read>
    80005f8c:	fe844503          	lbu	a0,-24(s0)
    80005f90:	01813083          	ld	ra,24(sp)
    80005f94:	01013403          	ld	s0,16(sp)
    80005f98:	02010113          	addi	sp,sp,32
    80005f9c:	00008067          	ret

0000000080005fa0 <console_handler>:
    80005fa0:	fe010113          	addi	sp,sp,-32
    80005fa4:	00813823          	sd	s0,16(sp)
    80005fa8:	00113c23          	sd	ra,24(sp)
    80005fac:	00913423          	sd	s1,8(sp)
    80005fb0:	02010413          	addi	s0,sp,32
    80005fb4:	14202773          	csrr	a4,scause
    80005fb8:	100027f3          	csrr	a5,sstatus
    80005fbc:	0027f793          	andi	a5,a5,2
    80005fc0:	06079e63          	bnez	a5,8000603c <console_handler+0x9c>
    80005fc4:	00074c63          	bltz	a4,80005fdc <console_handler+0x3c>
    80005fc8:	01813083          	ld	ra,24(sp)
    80005fcc:	01013403          	ld	s0,16(sp)
    80005fd0:	00813483          	ld	s1,8(sp)
    80005fd4:	02010113          	addi	sp,sp,32
    80005fd8:	00008067          	ret
    80005fdc:	0ff77713          	andi	a4,a4,255
    80005fe0:	00900793          	li	a5,9
    80005fe4:	fef712e3          	bne	a4,a5,80005fc8 <console_handler+0x28>
    80005fe8:	ffffe097          	auipc	ra,0xffffe
    80005fec:	6dc080e7          	jalr	1756(ra) # 800046c4 <plic_claim>
    80005ff0:	00a00793          	li	a5,10
    80005ff4:	00050493          	mv	s1,a0
    80005ff8:	02f50c63          	beq	a0,a5,80006030 <console_handler+0x90>
    80005ffc:	fc0506e3          	beqz	a0,80005fc8 <console_handler+0x28>
    80006000:	00050593          	mv	a1,a0
    80006004:	00001517          	auipc	a0,0x1
    80006008:	21450513          	addi	a0,a0,532 # 80007218 <CONSOLE_STATUS+0x208>
    8000600c:	fffff097          	auipc	ra,0xfffff
    80006010:	afc080e7          	jalr	-1284(ra) # 80004b08 <__printf>
    80006014:	01013403          	ld	s0,16(sp)
    80006018:	01813083          	ld	ra,24(sp)
    8000601c:	00048513          	mv	a0,s1
    80006020:	00813483          	ld	s1,8(sp)
    80006024:	02010113          	addi	sp,sp,32
    80006028:	ffffe317          	auipc	t1,0xffffe
    8000602c:	6d430067          	jr	1748(t1) # 800046fc <plic_complete>
    80006030:	fffff097          	auipc	ra,0xfffff
    80006034:	3e0080e7          	jalr	992(ra) # 80005410 <uartintr>
    80006038:	fddff06f          	j	80006014 <console_handler+0x74>
    8000603c:	00001517          	auipc	a0,0x1
    80006040:	2dc50513          	addi	a0,a0,732 # 80007318 <digits+0x78>
    80006044:	fffff097          	auipc	ra,0xfffff
    80006048:	a68080e7          	jalr	-1432(ra) # 80004aac <panic>
	...
