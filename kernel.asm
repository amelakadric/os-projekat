
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	37813103          	ld	sp,888(sp) # 80007378 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	3cc030ef          	jal	ra,800033e8 <start>

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
    80001170:	6e1000ef          	jal	ra,80002050 <_ZN5Riscv20handleSupervisorTrapEv>

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
    __asm__ volatile("mv a1, %0"::"r"(size));
    80001240:	00050593          	mv	a1,a0
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
    __asm__ volatile("mv a2, %0"::"r"(r));
    80001268:	00050613          	mv	a2,a0
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
    80001390:	fe010113          	addi	sp,sp,-32
    80001394:	00113c23          	sd	ra,24(sp)
    80001398:	00813823          	sd	s0,16(sp)
    8000139c:	00913423          	sd	s1,8(sp)
    800013a0:	02010413          	addi	s0,sp,32
    800013a4:	00050493          	mv	s1,a0
    __putc('c');
    800013a8:	06300513          	li	a0,99
    800013ac:	00004097          	auipc	ra,0x4
    800013b0:	100080e7          	jalr	256(ra) # 800054ac <__putc>
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800013b4:	00048593          	mv	a1,s1
    __asm__ volatile("li a0, 0x22");
    800013b8:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    800013bc:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800013c0:	00050513          	mv	a0,a0

    return a0;
}
    800013c4:	0005051b          	sext.w	a0,a0
    800013c8:	01813083          	ld	ra,24(sp)
    800013cc:	01013403          	ld	s0,16(sp)
    800013d0:	00813483          	ld	s1,8(sp)
    800013d4:	02010113          	addi	sp,sp,32
    800013d8:	00008067          	ret

00000000800013dc <_Z8sem_waitP10Ksemaphore>:

int sem_wait (sem_t id){
    800013dc:	ff010113          	addi	sp,sp,-16
    800013e0:	00813423          	sd	s0,8(sp)
    800013e4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    800013e8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    800013ec:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    800013f0:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800013f4:	00050513          	mv	a0,a0

    return a0;

}
    800013f8:	0005051b          	sext.w	a0,a0
    800013fc:	00813403          	ld	s0,8(sp)
    80001400:	01010113          	addi	sp,sp,16
    80001404:	00008067          	ret

0000000080001408 <_Z10sem_signalP10Ksemaphore>:

int sem_signal(sem_t id){
    80001408:	ff010113          	addi	sp,sp,-16
    8000140c:	00813423          	sd	s0,8(sp)
    80001410:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    80001414:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80001418:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    8000141c:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001420:	00050513          	mv	a0,a0

    return a0;
}
    80001424:	0005051b          	sext.w	a0,a0
    80001428:	00813403          	ld	s0,8(sp)
    8000142c:	01010113          	addi	sp,sp,16
    80001430:	00008067          	ret

0000000080001434 <_Z4getcv>:

char getc(){
    80001434:	ff010113          	addi	sp,sp,-16
    80001438:	00113423          	sd	ra,8(sp)
    8000143c:	00813023          	sd	s0,0(sp)
    80001440:	01010413          	addi	s0,sp,16
    return __getc();
    80001444:	00004097          	auipc	ra,0x4
    80001448:	0a4080e7          	jalr	164(ra) # 800054e8 <__getc>
}
    8000144c:	00813083          	ld	ra,8(sp)
    80001450:	00013403          	ld	s0,0(sp)
    80001454:	01010113          	addi	sp,sp,16
    80001458:	00008067          	ret

000000008000145c <_Z4putcc>:
void putc(char c){
    8000145c:	ff010113          	addi	sp,sp,-16
    80001460:	00113423          	sd	ra,8(sp)
    80001464:	00813023          	sd	s0,0(sp)
    80001468:	01010413          	addi	s0,sp,16
    __putc(c);
    8000146c:	00004097          	auipc	ra,0x4
    80001470:	040080e7          	jalr	64(ra) # 800054ac <__putc>
}
    80001474:	00813083          	ld	ra,8(sp)
    80001478:	00013403          	ld	s0,0(sp)
    8000147c:	01010113          	addi	sp,sp,16
    80001480:	00008067          	ret

0000000080001484 <_ZN10Ksemaphore5blockEv>:
#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    80001484:	fe010113          	addi	sp,sp,-32
    80001488:	00113c23          	sd	ra,24(sp)
    8000148c:	00813823          	sd	s0,16(sp)
    80001490:	00913423          	sd	s1,8(sp)
    80001494:	01213023          	sd	s2,0(sp)
    80001498:	02010413          	addi	s0,sp,32
    8000149c:	00050493          	mv	s1,a0
    blocked.addLast(TCB::running);
    800014a0:	00006797          	auipc	a5,0x6
    800014a4:	ee87b783          	ld	a5,-280(a5) # 80007388 <_GLOBAL_OFFSET_TABLE_+0x30>
    800014a8:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    800014ac:	01000513          	li	a0,16
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	804080e7          	jalr	-2044(ra) # 80001cb4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800014b8:	01253023          	sd	s2,0(a0)
    800014bc:	00053423          	sd	zero,8(a0)
        if (tail)
    800014c0:	0104b783          	ld	a5,16(s1)
    800014c4:	02078263          	beqz	a5,800014e8 <_ZN10Ksemaphore5blockEv+0x64>
        {
            tail->next = elem;
    800014c8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014cc:	00a4b823          	sd	a0,16(s1)
}
    800014d0:	01813083          	ld	ra,24(sp)
    800014d4:	01013403          	ld	s0,16(sp)
    800014d8:	00813483          	ld	s1,8(sp)
    800014dc:	00013903          	ld	s2,0(sp)
    800014e0:	02010113          	addi	sp,sp,32
    800014e4:	00008067          	ret
        } else
        {
            head = tail = elem;
    800014e8:	00a4b823          	sd	a0,16(s1)
    800014ec:	00a4b423          	sd	a0,8(s1)
    800014f0:	fe1ff06f          	j	800014d0 <_ZN10Ksemaphore5blockEv+0x4c>

00000000800014f4 <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    800014f4:	fe010113          	addi	sp,sp,-32
    800014f8:	00113c23          	sd	ra,24(sp)
    800014fc:	00813823          	sd	s0,16(sp)
    80001500:	00913423          	sd	s1,8(sp)
    80001504:	02010413          	addi	s0,sp,32
    80001508:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000150c:	00853503          	ld	a0,8(a0)
    80001510:	04050263          	beqz	a0,80001554 <_ZN10Ksemaphore7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001514:	00853703          	ld	a4,8(a0)
    80001518:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    8000151c:	02070863          	beqz	a4,8000154c <_ZN10Ksemaphore7unblockEv+0x58>

        T *ret = elem->data;
    80001520:	00053483          	ld	s1,0(a0)
        delete elem;
    80001524:	00000097          	auipc	ra,0x0
    80001528:	7e0080e7          	jalr	2016(ra) # 80001d04 <_ZdlPv>
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    8000152c:	00048513          	mv	a0,s1
    80001530:	00001097          	auipc	ra,0x1
    80001534:	1f0080e7          	jalr	496(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
}
    80001538:	01813083          	ld	ra,24(sp)
    8000153c:	01013403          	ld	s0,16(sp)
    80001540:	00813483          	ld	s1,8(sp)
    80001544:	02010113          	addi	sp,sp,32
    80001548:	00008067          	ret
        if (!head) { tail = 0; }
    8000154c:	0007b823          	sd	zero,16(a5)
    80001550:	fd1ff06f          	j	80001520 <_ZN10Ksemaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001554:	00050493          	mv	s1,a0
    80001558:	fd5ff06f          	j	8000152c <_ZN10Ksemaphore7unblockEv+0x38>

000000008000155c <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    8000155c:	00052783          	lw	a5,0(a0)
    80001560:	fff7879b          	addiw	a5,a5,-1
    80001564:	00f52023          	sw	a5,0(a0)
    80001568:	02079713          	slli	a4,a5,0x20
    8000156c:	02075c63          	bgez	a4,800015a4 <_ZN10Ksemaphore4waitEv+0x48>
int Ksemaphore::wait() {
    80001570:	ff010113          	addi	sp,sp,-16
    80001574:	00113423          	sd	ra,8(sp)
    80001578:	00813023          	sd	s0,0(sp)
    8000157c:	01010413          	addi	s0,sp,16
        block();
    80001580:	00000097          	auipc	ra,0x0
    80001584:	f04080e7          	jalr	-252(ra) # 80001484 <_ZN10Ksemaphore5blockEv>
        TCB::yieldWithoutScheduler();
    80001588:	00001097          	auipc	ra,0x1
    8000158c:	ecc080e7          	jalr	-308(ra) # 80002454 <_ZN3TCB21yieldWithoutSchedulerEv>
//        TCB::dispatchWithoutScheduler();
        return 0;
    80001590:	00000513          	li	a0,0
    }
    return -1;
}
    80001594:	00813083          	ld	ra,8(sp)
    80001598:	00013403          	ld	s0,0(sp)
    8000159c:	01010113          	addi	sp,sp,16
    800015a0:	00008067          	ret
    return -1;
    800015a4:	fff00513          	li	a0,-1
}
    800015a8:	00008067          	ret

00000000800015ac <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    800015ac:	00052783          	lw	a5,0(a0)
    800015b0:	0017879b          	addiw	a5,a5,1
    800015b4:	0007871b          	sext.w	a4,a5
    800015b8:	00f52023          	sw	a5,0(a0)
    800015bc:	02e04863          	bgtz	a4,800015ec <_ZN10Ksemaphore6signalEv+0x40>
int Ksemaphore::signal() {
    800015c0:	ff010113          	addi	sp,sp,-16
    800015c4:	00113423          	sd	ra,8(sp)
    800015c8:	00813023          	sd	s0,0(sp)
    800015cc:	01010413          	addi	s0,sp,16
        unblock();
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	f24080e7          	jalr	-220(ra) # 800014f4 <_ZN10Ksemaphore7unblockEv>
        return 0;
    800015d8:	00000513          	li	a0,0
    }
    return -1;
}
    800015dc:	00813083          	ld	ra,8(sp)
    800015e0:	00013403          	ld	s0,0(sp)
    800015e4:	01010113          	addi	sp,sp,16
    800015e8:	00008067          	ret
    return -1;
    800015ec:	fff00513          	li	a0,-1
}
    800015f0:	00008067          	ret

00000000800015f4 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    800015f4:	fe010113          	addi	sp,sp,-32
    800015f8:	00113c23          	sd	ra,24(sp)
    800015fc:	00813823          	sd	s0,16(sp)
    80001600:	00913423          	sd	s1,8(sp)
    80001604:	01213023          	sd	s2,0(sp)
    80001608:	02010413          	addi	s0,sp,32
    8000160c:	00050493          	mv	s1,a0
    80001610:	0200006f          	j	80001630 <_ZN10Ksemaphore14closeSemaphoreEv+0x3c>
        if (!head) { tail = 0; }
    80001614:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001618:	00053903          	ld	s2,0(a0)
        delete elem;
    8000161c:	00000097          	auipc	ra,0x0
    80001620:	6e8080e7          	jalr	1768(ra) # 80001d04 <_ZdlPv>
    TCB* tcb;
    while(this->blocked.peekFirst()!= nullptr){
        tcb=this->blocked.removeFirst();
        Scheduler::put(tcb);
    80001624:	00090513          	mv	a0,s2
    80001628:	00001097          	auipc	ra,0x1
    8000162c:	0f8080e7          	jalr	248(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80001630:	0084b503          	ld	a0,8(s1)
    80001634:	00050e63          	beqz	a0,80001650 <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        return head->data;
    80001638:	00053783          	ld	a5,0(a0)
    while(this->blocked.peekFirst()!= nullptr){
    8000163c:	00078a63          	beqz	a5,80001650 <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        head = head->next;
    80001640:	00853783          	ld	a5,8(a0)
    80001644:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001648:	fc0798e3          	bnez	a5,80001618 <_ZN10Ksemaphore14closeSemaphoreEv+0x24>
    8000164c:	fc9ff06f          	j	80001614 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    }
    return 0;
}
    80001650:	00000513          	li	a0,0
    80001654:	01813083          	ld	ra,24(sp)
    80001658:	01013403          	ld	s0,16(sp)
    8000165c:	00813483          	ld	s1,8(sp)
    80001660:	00013903          	ld	s2,0(sp)
    80001664:	02010113          	addi	sp,sp,32
    80001668:	00008067          	ret

000000008000166c <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    8000166c:	ff010113          	addi	sp,sp,-16
    80001670:	00113423          	sd	ra,8(sp)
    80001674:	00813023          	sd	s0,0(sp)
    80001678:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000167c:	00001097          	auipc	ra,0x1
    80001680:	24c080e7          	jalr	588(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001684:	00813083          	ld	ra,8(sp)
    80001688:	00013403          	ld	s0,0(sp)
    8000168c:	01010113          	addi	sp,sp,16
    80001690:	00008067          	ret

0000000080001694 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    80001694:	ff010113          	addi	sp,sp,-16
    80001698:	00113423          	sd	ra,8(sp)
    8000169c:	00813023          	sd	s0,0(sp)
    800016a0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    800016a4:	01800513          	li	a0,24
    800016a8:	00001097          	auipc	ra,0x1
    800016ac:	184080e7          	jalr	388(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
}
    800016b0:	00813083          	ld	ra,8(sp)
    800016b4:	00013403          	ld	s0,0(sp)
    800016b8:	01010113          	addi	sp,sp,16
    800016bc:	00008067          	ret

00000000800016c0 <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    800016c0:	fe010113          	addi	sp,sp,-32
    800016c4:	00113c23          	sd	ra,24(sp)
    800016c8:	00813823          	sd	s0,16(sp)
    800016cc:	00913423          	sd	s1,8(sp)
    800016d0:	02010413          	addi	s0,sp,32
    800016d4:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    800016d8:	01800513          	li	a0,24
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	fb8080e7          	jalr	-72(ra) # 80001694 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    800016e4:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016e8:	00053423          	sd	zero,8(a0)
    800016ec:	00053823          	sd	zero,16(a0)
}
    800016f0:	01813083          	ld	ra,24(sp)
    800016f4:	01013403          	ld	s0,16(sp)
    800016f8:	00813483          	ld	s1,8(sp)
    800016fc:	02010113          	addi	sp,sp,32
    80001700:	00008067          	ret

0000000080001704 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80001704:	fe010113          	addi	sp,sp,-32
    80001708:	00113c23          	sd	ra,24(sp)
    8000170c:	00813823          	sd	s0,16(sp)
    80001710:	00913423          	sd	s1,8(sp)
    80001714:	01213023          	sd	s2,0(sp)
    80001718:	02010413          	addi	s0,sp,32
    8000171c:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    80001720:	00000913          	li	s2,0
    80001724:	00c0006f          	j	80001730 <_Z16producerKeyboardPv+0x2c>
    while ((key = __getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80001728:	00000097          	auipc	ra,0x0
    8000172c:	bbc080e7          	jalr	-1092(ra) # 800012e4 <_Z15thread_dispatchv>
    while ((key = __getc()) != 'A') {
    80001730:	00004097          	auipc	ra,0x4
    80001734:	db8080e7          	jalr	-584(ra) # 800054e8 <__getc>
    80001738:	0005059b          	sext.w	a1,a0
    8000173c:	04100793          	li	a5,65
    80001740:	02f58a63          	beq	a1,a5,80001774 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80001744:	0084b503          	ld	a0,8(s1)
    80001748:	00002097          	auipc	ra,0x2
    8000174c:	a1c080e7          	jalr	-1508(ra) # 80003164 <_ZN6Buffer3putEi>
        i++;
    80001750:	0019071b          	addiw	a4,s2,1
    80001754:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001758:	0004a683          	lw	a3,0(s1)
    8000175c:	0026979b          	slliw	a5,a3,0x2
    80001760:	00d787bb          	addw	a5,a5,a3
    80001764:	0017979b          	slliw	a5,a5,0x1
    80001768:	02f767bb          	remw	a5,a4,a5
    8000176c:	fc0792e3          	bnez	a5,80001730 <_Z16producerKeyboardPv+0x2c>
    80001770:	fb9ff06f          	j	80001728 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80001774:	00100793          	li	a5,1
    80001778:	00006717          	auipc	a4,0x6
    8000177c:	c6f72423          	sw	a5,-920(a4) # 800073e0 <threadEnd>
    data->buffer->put('!');
    80001780:	02100593          	li	a1,33
    80001784:	0084b503          	ld	a0,8(s1)
    80001788:	00002097          	auipc	ra,0x2
    8000178c:	9dc080e7          	jalr	-1572(ra) # 80003164 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80001790:	0104b503          	ld	a0,16(s1)
    80001794:	00000097          	auipc	ra,0x0
    80001798:	c74080e7          	jalr	-908(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>
}
    8000179c:	01813083          	ld	ra,24(sp)
    800017a0:	01013403          	ld	s0,16(sp)
    800017a4:	00813483          	ld	s1,8(sp)
    800017a8:	00013903          	ld	s2,0(sp)
    800017ac:	02010113          	addi	sp,sp,32
    800017b0:	00008067          	ret

00000000800017b4 <_Z8producerPv>:

void producer(void *arg) {
    800017b4:	fe010113          	addi	sp,sp,-32
    800017b8:	00113c23          	sd	ra,24(sp)
    800017bc:	00813823          	sd	s0,16(sp)
    800017c0:	00913423          	sd	s1,8(sp)
    800017c4:	01213023          	sd	s2,0(sp)
    800017c8:	02010413          	addi	s0,sp,32
    800017cc:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800017d0:	00000913          	li	s2,0
    800017d4:	00c0006f          	j	800017e0 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	b0c080e7          	jalr	-1268(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800017e0:	00006797          	auipc	a5,0x6
    800017e4:	c007a783          	lw	a5,-1024(a5) # 800073e0 <threadEnd>
    800017e8:	02079e63          	bnez	a5,80001824 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800017ec:	0004a583          	lw	a1,0(s1)
    800017f0:	0305859b          	addiw	a1,a1,48
    800017f4:	0084b503          	ld	a0,8(s1)
    800017f8:	00002097          	auipc	ra,0x2
    800017fc:	96c080e7          	jalr	-1684(ra) # 80003164 <_ZN6Buffer3putEi>
        i++;
    80001800:	0019071b          	addiw	a4,s2,1
    80001804:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001808:	0004a683          	lw	a3,0(s1)
    8000180c:	0026979b          	slliw	a5,a3,0x2
    80001810:	00d787bb          	addw	a5,a5,a3
    80001814:	0017979b          	slliw	a5,a5,0x1
    80001818:	02f767bb          	remw	a5,a4,a5
    8000181c:	fc0792e3          	bnez	a5,800017e0 <_Z8producerPv+0x2c>
    80001820:	fb9ff06f          	j	800017d8 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80001824:	0104b503          	ld	a0,16(s1)
    80001828:	00000097          	auipc	ra,0x0
    8000182c:	be0080e7          	jalr	-1056(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>
}
    80001830:	01813083          	ld	ra,24(sp)
    80001834:	01013403          	ld	s0,16(sp)
    80001838:	00813483          	ld	s1,8(sp)
    8000183c:	00013903          	ld	s2,0(sp)
    80001840:	02010113          	addi	sp,sp,32
    80001844:	00008067          	ret

0000000080001848 <_Z8consumerPv>:

void consumer(void *arg) {
    80001848:	fd010113          	addi	sp,sp,-48
    8000184c:	02113423          	sd	ra,40(sp)
    80001850:	02813023          	sd	s0,32(sp)
    80001854:	00913c23          	sd	s1,24(sp)
    80001858:	01213823          	sd	s2,16(sp)
    8000185c:	01313423          	sd	s3,8(sp)
    80001860:	03010413          	addi	s0,sp,48
    80001864:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001868:	00000993          	li	s3,0
    8000186c:	01c0006f          	j	80001888 <_Z8consumerPv+0x40>
        i++;

        __putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80001870:	00000097          	auipc	ra,0x0
    80001874:	a74080e7          	jalr	-1420(ra) # 800012e4 <_Z15thread_dispatchv>
    80001878:	0500006f          	j	800018c8 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            __putc('\n');
    8000187c:	00a00513          	li	a0,10
    80001880:	00004097          	auipc	ra,0x4
    80001884:	c2c080e7          	jalr	-980(ra) # 800054ac <__putc>
    while (!threadEnd) {
    80001888:	00006797          	auipc	a5,0x6
    8000188c:	b587a783          	lw	a5,-1192(a5) # 800073e0 <threadEnd>
    80001890:	06079063          	bnez	a5,800018f0 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80001894:	00893503          	ld	a0,8(s2)
    80001898:	00002097          	auipc	ra,0x2
    8000189c:	95c080e7          	jalr	-1700(ra) # 800031f4 <_ZN6Buffer3getEv>
        i++;
    800018a0:	0019849b          	addiw	s1,s3,1
    800018a4:	0004899b          	sext.w	s3,s1
        __putc(key);
    800018a8:	0ff57513          	andi	a0,a0,255
    800018ac:	00004097          	auipc	ra,0x4
    800018b0:	c00080e7          	jalr	-1024(ra) # 800054ac <__putc>
        if (i % (5 * data->id) == 0) {
    800018b4:	00092703          	lw	a4,0(s2)
    800018b8:	0027179b          	slliw	a5,a4,0x2
    800018bc:	00e787bb          	addw	a5,a5,a4
    800018c0:	02f4e7bb          	remw	a5,s1,a5
    800018c4:	fa0786e3          	beqz	a5,80001870 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800018c8:	05000793          	li	a5,80
    800018cc:	02f4e4bb          	remw	s1,s1,a5
    800018d0:	fa049ce3          	bnez	s1,80001888 <_Z8consumerPv+0x40>
    800018d4:	fa9ff06f          	j	8000187c <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800018d8:	00893503          	ld	a0,8(s2)
    800018dc:	00002097          	auipc	ra,0x2
    800018e0:	918080e7          	jalr	-1768(ra) # 800031f4 <_ZN6Buffer3getEv>
        __putc(key);
    800018e4:	0ff57513          	andi	a0,a0,255
    800018e8:	00004097          	auipc	ra,0x4
    800018ec:	bc4080e7          	jalr	-1084(ra) # 800054ac <__putc>
    while (data->buffer->getCnt() > 0) {
    800018f0:	00893503          	ld	a0,8(s2)
    800018f4:	00002097          	auipc	ra,0x2
    800018f8:	98c080e7          	jalr	-1652(ra) # 80003280 <_ZN6Buffer6getCntEv>
    800018fc:	fca04ee3          	bgtz	a0,800018d8 <_Z8consumerPv+0x90>
    }
  sem_signal(data->wait);
    80001900:	01093503          	ld	a0,16(s2)
    80001904:	00000097          	auipc	ra,0x0
    80001908:	b04080e7          	jalr	-1276(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>
}
    8000190c:	02813083          	ld	ra,40(sp)
    80001910:	02013403          	ld	s0,32(sp)
    80001914:	01813483          	ld	s1,24(sp)
    80001918:	01013903          	ld	s2,16(sp)
    8000191c:	00813983          	ld	s3,8(sp)
    80001920:	03010113          	addi	sp,sp,48
    80001924:	00008067          	ret

0000000080001928 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80001928:	f9010113          	addi	sp,sp,-112
    8000192c:	06113423          	sd	ra,104(sp)
    80001930:	06813023          	sd	s0,96(sp)
    80001934:	04913c23          	sd	s1,88(sp)
    80001938:	05213823          	sd	s2,80(sp)
    8000193c:	05313423          	sd	s3,72(sp)
    80001940:	05413023          	sd	s4,64(sp)
    80001944:	03513c23          	sd	s5,56(sp)
    80001948:	03613823          	sd	s6,48(sp)
    8000194c:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80001950:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80001954:	00004517          	auipc	a0,0x4
    80001958:	6cc50513          	addi	a0,a0,1740 # 80006020 <CONSOLE_STATUS+0x10>
    8000195c:	00001097          	auipc	ra,0x1
    80001960:	168080e7          	jalr	360(ra) # 80002ac4 <_Z11printStringPKc>
    getString(input, 30);
    80001964:	01e00593          	li	a1,30
    80001968:	fa040493          	addi	s1,s0,-96
    8000196c:	00048513          	mv	a0,s1
    80001970:	00001097          	auipc	ra,0x1
    80001974:	1d0080e7          	jalr	464(ra) # 80002b40 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80001978:	00048513          	mv	a0,s1
    8000197c:	00001097          	auipc	ra,0x1
    80001980:	290080e7          	jalr	656(ra) # 80002c0c <_Z11stringToIntPKc>
    80001984:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80001988:	00004517          	auipc	a0,0x4
    8000198c:	6b850513          	addi	a0,a0,1720 # 80006040 <CONSOLE_STATUS+0x30>
    80001990:	00001097          	auipc	ra,0x1
    80001994:	134080e7          	jalr	308(ra) # 80002ac4 <_Z11printStringPKc>
    getString(input, 30);
    80001998:	01e00593          	li	a1,30
    8000199c:	00048513          	mv	a0,s1
    800019a0:	00001097          	auipc	ra,0x1
    800019a4:	1a0080e7          	jalr	416(ra) # 80002b40 <_Z9getStringPci>
    n = stringToInt(input);
    800019a8:	00048513          	mv	a0,s1
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	260080e7          	jalr	608(ra) # 80002c0c <_Z11stringToIntPKc>
    800019b4:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800019b8:	00004517          	auipc	a0,0x4
    800019bc:	6a850513          	addi	a0,a0,1704 # 80006060 <CONSOLE_STATUS+0x50>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	104080e7          	jalr	260(ra) # 80002ac4 <_Z11printStringPKc>
    800019c8:	00000613          	li	a2,0
    800019cc:	00a00593          	li	a1,10
    800019d0:	00090513          	mv	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	288080e7          	jalr	648(ra) # 80002c5c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800019dc:	00004517          	auipc	a0,0x4
    800019e0:	69c50513          	addi	a0,a0,1692 # 80006078 <CONSOLE_STATUS+0x68>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	0e0080e7          	jalr	224(ra) # 80002ac4 <_Z11printStringPKc>
    800019ec:	00000613          	li	a2,0
    800019f0:	00a00593          	li	a1,10
    800019f4:	00048513          	mv	a0,s1
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	264080e7          	jalr	612(ra) # 80002c5c <_Z8printIntiii>
    printString(".\n");
    80001a00:	00004517          	auipc	a0,0x4
    80001a04:	69050513          	addi	a0,a0,1680 # 80006090 <CONSOLE_STATUS+0x80>
    80001a08:	00001097          	auipc	ra,0x1
    80001a0c:	0bc080e7          	jalr	188(ra) # 80002ac4 <_Z11printStringPKc>
    if(threadNum > n) {
    80001a10:	0324c463          	blt	s1,s2,80001a38 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80001a14:	03205c63          	blez	s2,80001a4c <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80001a18:	03800513          	li	a0,56
    80001a1c:	00000097          	auipc	ra,0x0
    80001a20:	298080e7          	jalr	664(ra) # 80001cb4 <_Znwm>
    80001a24:	00050a13          	mv	s4,a0
    80001a28:	00048593          	mv	a1,s1
    80001a2c:	00001097          	auipc	ra,0x1
    80001a30:	69c080e7          	jalr	1692(ra) # 800030c8 <_ZN6BufferC1Ei>
    80001a34:	0300006f          	j	80001a64 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001a38:	00004517          	auipc	a0,0x4
    80001a3c:	66050513          	addi	a0,a0,1632 # 80006098 <CONSOLE_STATUS+0x88>
    80001a40:	00001097          	auipc	ra,0x1
    80001a44:	084080e7          	jalr	132(ra) # 80002ac4 <_Z11printStringPKc>
        return;
    80001a48:	0140006f          	j	80001a5c <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001a4c:	00004517          	auipc	a0,0x4
    80001a50:	68c50513          	addi	a0,a0,1676 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001a54:	00001097          	auipc	ra,0x1
    80001a58:	070080e7          	jalr	112(ra) # 80002ac4 <_Z11printStringPKc>
        return;
    80001a5c:	000b0113          	mv	sp,s6
    80001a60:	1500006f          	j	80001bb0 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80001a64:	00000593          	li	a1,0
    80001a68:	00006517          	auipc	a0,0x6
    80001a6c:	98050513          	addi	a0,a0,-1664 # 800073e8 <waitForAll>
    80001a70:	00000097          	auipc	ra,0x0
    80001a74:	8f0080e7          	jalr	-1808(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    thread_t threads[threadNum];
    80001a78:	00391793          	slli	a5,s2,0x3
    80001a7c:	00f78793          	addi	a5,a5,15
    80001a80:	ff07f793          	andi	a5,a5,-16
    80001a84:	40f10133          	sub	sp,sp,a5
    80001a88:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80001a8c:	0019071b          	addiw	a4,s2,1
    80001a90:	00171793          	slli	a5,a4,0x1
    80001a94:	00e787b3          	add	a5,a5,a4
    80001a98:	00379793          	slli	a5,a5,0x3
    80001a9c:	00f78793          	addi	a5,a5,15
    80001aa0:	ff07f793          	andi	a5,a5,-16
    80001aa4:	40f10133          	sub	sp,sp,a5
    80001aa8:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80001aac:	00191613          	slli	a2,s2,0x1
    80001ab0:	012607b3          	add	a5,a2,s2
    80001ab4:	00379793          	slli	a5,a5,0x3
    80001ab8:	00f987b3          	add	a5,s3,a5
    80001abc:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001ac0:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80001ac4:	00006717          	auipc	a4,0x6
    80001ac8:	92473703          	ld	a4,-1756(a4) # 800073e8 <waitForAll>
    80001acc:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80001ad0:	00078613          	mv	a2,a5
    80001ad4:	00000597          	auipc	a1,0x0
    80001ad8:	d7458593          	addi	a1,a1,-652 # 80001848 <_Z8consumerPv>
    80001adc:	f9840513          	addi	a0,s0,-104
    80001ae0:	fffff097          	auipc	ra,0xfffff
    80001ae4:	7a8080e7          	jalr	1960(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001ae8:	00000493          	li	s1,0
    80001aec:	0280006f          	j	80001b14 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80001af0:	00000597          	auipc	a1,0x0
    80001af4:	c1458593          	addi	a1,a1,-1004 # 80001704 <_Z16producerKeyboardPv>
                      data + i);
    80001af8:	00179613          	slli	a2,a5,0x1
    80001afc:	00f60633          	add	a2,a2,a5
    80001b00:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80001b04:	00c98633          	add	a2,s3,a2
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	780080e7          	jalr	1920(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001b10:	0014849b          	addiw	s1,s1,1
    80001b14:	0524d263          	bge	s1,s2,80001b58 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80001b18:	00149793          	slli	a5,s1,0x1
    80001b1c:	009787b3          	add	a5,a5,s1
    80001b20:	00379793          	slli	a5,a5,0x3
    80001b24:	00f987b3          	add	a5,s3,a5
    80001b28:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001b2c:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80001b30:	00006717          	auipc	a4,0x6
    80001b34:	8b873703          	ld	a4,-1864(a4) # 800073e8 <waitForAll>
    80001b38:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80001b3c:	00048793          	mv	a5,s1
    80001b40:	00349513          	slli	a0,s1,0x3
    80001b44:	00aa8533          	add	a0,s5,a0
    80001b48:	fa04c4e3          	bltz	s1,80001af0 <_Z22producerConsumer_C_APIv+0x1c8>
    80001b4c:	00000597          	auipc	a1,0x0
    80001b50:	c6858593          	addi	a1,a1,-920 # 800017b4 <_Z8producerPv>
    80001b54:	fa5ff06f          	j	80001af8 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80001b58:	fffff097          	auipc	ra,0xfffff
    80001b5c:	78c080e7          	jalr	1932(ra) # 800012e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80001b60:	00000493          	li	s1,0
    80001b64:	00994e63          	blt	s2,s1,80001b80 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80001b68:	00006517          	auipc	a0,0x6
    80001b6c:	88053503          	ld	a0,-1920(a0) # 800073e8 <waitForAll>
    80001b70:	00000097          	auipc	ra,0x0
    80001b74:	86c080e7          	jalr	-1940(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80001b78:	0014849b          	addiw	s1,s1,1
    80001b7c:	fe9ff06f          	j	80001b64 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80001b80:	00006517          	auipc	a0,0x6
    80001b84:	86853503          	ld	a0,-1944(a0) # 800073e8 <waitForAll>
    80001b88:	00000097          	auipc	ra,0x0
    80001b8c:	808080e7          	jalr	-2040(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    delete buffer;
    80001b90:	000a0e63          	beqz	s4,80001bac <_Z22producerConsumer_C_APIv+0x284>
    80001b94:	000a0513          	mv	a0,s4
    80001b98:	00001097          	auipc	ra,0x1
    80001b9c:	770080e7          	jalr	1904(ra) # 80003308 <_ZN6BufferD1Ev>
    80001ba0:	000a0513          	mv	a0,s4
    80001ba4:	00000097          	auipc	ra,0x0
    80001ba8:	160080e7          	jalr	352(ra) # 80001d04 <_ZdlPv>
    80001bac:	000b0113          	mv	sp,s6

}
    80001bb0:	f9040113          	addi	sp,s0,-112
    80001bb4:	06813083          	ld	ra,104(sp)
    80001bb8:	06013403          	ld	s0,96(sp)
    80001bbc:	05813483          	ld	s1,88(sp)
    80001bc0:	05013903          	ld	s2,80(sp)
    80001bc4:	04813983          	ld	s3,72(sp)
    80001bc8:	04013a03          	ld	s4,64(sp)
    80001bcc:	03813a83          	ld	s5,56(sp)
    80001bd0:	03013b03          	ld	s6,48(sp)
    80001bd4:	07010113          	addi	sp,sp,112
    80001bd8:	00008067          	ret
    80001bdc:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80001be0:	000a0513          	mv	a0,s4
    80001be4:	00000097          	auipc	ra,0x0
    80001be8:	120080e7          	jalr	288(ra) # 80001d04 <_ZdlPv>
    80001bec:	00048513          	mv	a0,s1
    80001bf0:	00007097          	auipc	ra,0x7
    80001bf4:	908080e7          	jalr	-1784(ra) # 800084f8 <_Unwind_Resume>

0000000080001bf8 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001bf8:	ff010113          	addi	sp,sp,-16
    80001bfc:	00113423          	sd	ra,8(sp)
    80001c00:	00813023          	sd	s0,0(sp)
    80001c04:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80001c08:	00000097          	auipc	ra,0x0
    80001c0c:	d20080e7          	jalr	-736(ra) # 80001928 <_Z22producerConsumer_C_APIv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001c10:	00813083          	ld	ra,8(sp)
    80001c14:	00013403          	ld	s0,0(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

int main() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00113423          	sd	ra,8(sp)
    80001c28:	00813023          	sd	s0,0(sp)
    80001c2c:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMemoryAllocator();
    80001c30:	00001097          	auipc	ra,0x1
    80001c34:	e24080e7          	jalr	-476(ra) # 80002a54 <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001c38:	00000593          	li	a1,0
    80001c3c:	00000513          	li	a0,0
    80001c40:	00001097          	auipc	ra,0x1
    80001c44:	8a0080e7          	jalr	-1888(ra) # 800024e0 <_ZN3TCB12createThreadEPFvPvES0_>
    80001c48:	00005797          	auipc	a5,0x5
    80001c4c:	7407b783          	ld	a5,1856(a5) # 80007388 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001c50:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c54:	00005797          	auipc	a5,0x5
    80001c58:	7147b783          	ld	a5,1812(a5) # 80007368 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c5c:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c60:	00200793          	li	a5,2
    80001c64:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain(); // puca u dispatch kad se menja kontekst scause 5, ne znam je li scheduler::get=null? za cpp api niti
    80001c68:	00000097          	auipc	ra,0x0
    80001c6c:	f90080e7          	jalr	-112(ra) # 80001bf8 <_Z8userMainv>

    return 0;

}
    80001c70:	00000513          	li	a0,0
    80001c74:	00813083          	ld	ra,8(sp)
    80001c78:	00013403          	ld	s0,0(sp)
    80001c7c:	01010113          	addi	sp,sp,16
    80001c80:	00008067          	ret

0000000080001c84 <_ZN6ThreadD1Ev>:


void* operator new (size_t n);
void operator delete (void* p);

class Thread {
    80001c84:	ff010113          	addi	sp,sp,-16
    80001c88:	00813423          	sd	s0,8(sp)
    80001c8c:	01010413          	addi	s0,sp,16
    80001c90:	00813403          	ld	s0,8(sp)
    80001c94:	01010113          	addi	sp,sp,16
    80001c98:	00008067          	ret

0000000080001c9c <_ZN9SemaphoreD1Ev>:

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {
    80001c9c:	ff010113          	addi	sp,sp,-16
    80001ca0:	00813423          	sd	s0,8(sp)
    80001ca4:	01010413          	addi	s0,sp,16
//    sem_close(myHandle);
}
    80001ca8:	00813403          	ld	s0,8(sp)
    80001cac:	01010113          	addi	sp,sp,16
    80001cb0:	00008067          	ret

0000000080001cb4 <_Znwm>:
{
    80001cb4:	ff010113          	addi	sp,sp,-16
    80001cb8:	00113423          	sd	ra,8(sp)
    80001cbc:	00813023          	sd	s0,0(sp)
    80001cc0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80001cc4:	00001097          	auipc	ra,0x1
    80001cc8:	b68080e7          	jalr	-1176(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
}
    80001ccc:	00813083          	ld	ra,8(sp)
    80001cd0:	00013403          	ld	s0,0(sp)
    80001cd4:	01010113          	addi	sp,sp,16
    80001cd8:	00008067          	ret

0000000080001cdc <_Znam>:
{
    80001cdc:	ff010113          	addi	sp,sp,-16
    80001ce0:	00113423          	sd	ra,8(sp)
    80001ce4:	00813023          	sd	s0,0(sp)
    80001ce8:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80001cec:	00001097          	auipc	ra,0x1
    80001cf0:	b40080e7          	jalr	-1216(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
}
    80001cf4:	00813083          	ld	ra,8(sp)
    80001cf8:	00013403          	ld	s0,0(sp)
    80001cfc:	01010113          	addi	sp,sp,16
    80001d00:	00008067          	ret

0000000080001d04 <_ZdlPv>:
{
    80001d04:	ff010113          	addi	sp,sp,-16
    80001d08:	00113423          	sd	ra,8(sp)
    80001d0c:	00813023          	sd	s0,0(sp)
    80001d10:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001d14:	00001097          	auipc	ra,0x1
    80001d18:	bb4080e7          	jalr	-1100(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
}
    80001d1c:	00813083          	ld	ra,8(sp)
    80001d20:	00013403          	ld	s0,0(sp)
    80001d24:	01010113          	addi	sp,sp,16
    80001d28:	00008067          	ret

0000000080001d2c <_ZN6ThreadD0Ev>:
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	00813023          	sd	s0,0(sp)
    80001d38:	01010413          	addi	s0,sp,16
    80001d3c:	00000097          	auipc	ra,0x0
    80001d40:	fc8080e7          	jalr	-56(ra) # 80001d04 <_ZdlPv>
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
}
    80001d64:	00000097          	auipc	ra,0x0
    80001d68:	fa0080e7          	jalr	-96(ra) # 80001d04 <_ZdlPv>
    80001d6c:	00813083          	ld	ra,8(sp)
    80001d70:	00013403          	ld	s0,0(sp)
    80001d74:	01010113          	addi	sp,sp,16
    80001d78:	00008067          	ret

0000000080001d7c <_ZdaPv>:
{
    80001d7c:	ff010113          	addi	sp,sp,-16
    80001d80:	00113423          	sd	ra,8(sp)
    80001d84:	00813023          	sd	s0,0(sp)
    80001d88:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001d8c:	00001097          	auipc	ra,0x1
    80001d90:	b3c080e7          	jalr	-1220(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
}
    80001d94:	00813083          	ld	ra,8(sp)
    80001d98:	00013403          	ld	s0,0(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN6Thread5startEv>:
int Thread::start (){
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00113423          	sd	ra,8(sp)
    80001dac:	00813023          	sd	s0,0(sp)
    80001db0:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    80001db4:	00850513          	addi	a0,a0,8
    80001db8:	fffff097          	auipc	ra,0xfffff
    80001dbc:	54c080e7          	jalr	1356(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    80001dc0:	00000513          	li	a0,0
    80001dc4:	00813083          	ld	ra,8(sp)
    80001dc8:	00013403          	ld	s0,0(sp)
    80001dcc:	01010113          	addi	sp,sp,16
    80001dd0:	00008067          	ret

0000000080001dd4 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80001dd4:	ff010113          	addi	sp,sp,-16
    80001dd8:	00113423          	sd	ra,8(sp)
    80001ddc:	00813023          	sd	s0,0(sp)
    80001de0:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001de4:	fffff097          	auipc	ra,0xfffff
    80001de8:	500080e7          	jalr	1280(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001dec:	00813083          	ld	ra,8(sp)
    80001df0:	00013403          	ld	s0,0(sp)
    80001df4:	01010113          	addi	sp,sp,16
    80001df8:	00008067          	ret

0000000080001dfc <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001dfc:	ff010113          	addi	sp,sp,-16
    80001e00:	00113423          	sd	ra,8(sp)
    80001e04:	00813023          	sd	s0,0(sp)
    80001e08:	01010413          	addi	s0,sp,16
    80001e0c:	00005797          	auipc	a5,0x5
    80001e10:	4fc78793          	addi	a5,a5,1276 # 80007308 <_ZTV6Thread+0x10>
    80001e14:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    80001e18:	00850513          	addi	a0,a0,8
    80001e1c:	fffff097          	auipc	ra,0xfffff
    80001e20:	510080e7          	jalr	1296(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80001e24:	00813083          	ld	ra,8(sp)
    80001e28:	00013403          	ld	s0,0(sp)
    80001e2c:	01010113          	addi	sp,sp,16
    80001e30:	00008067          	ret

0000000080001e34 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001e34:	ff010113          	addi	sp,sp,-16
    80001e38:	00113423          	sd	ra,8(sp)
    80001e3c:	00813023          	sd	s0,0(sp)
    80001e40:	01010413          	addi	s0,sp,16
    80001e44:	00005797          	auipc	a5,0x5
    80001e48:	4c478793          	addi	a5,a5,1220 # 80007308 <_ZTV6Thread+0x10>
    80001e4c:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    80001e50:	00050613          	mv	a2,a0
    80001e54:	00000597          	auipc	a1,0x0
    80001e58:	14058593          	addi	a1,a1,320 # 80001f94 <_ZN6Thread9myWrapperEPv>
    80001e5c:	00850513          	addi	a0,a0,8
    80001e60:	fffff097          	auipc	ra,0xfffff
    80001e64:	4cc080e7          	jalr	1228(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00813423          	sd	s0,8(sp)
    80001e80:	01010413          	addi	s0,sp,16
}
    80001e84:	00000513          	li	a0,0
    80001e88:	00813403          	ld	s0,8(sp)
    80001e8c:	01010113          	addi	sp,sp,16
    80001e90:	00008067          	ret

0000000080001e94 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001e94:	ff010113          	addi	sp,sp,-16
    80001e98:	00113423          	sd	ra,8(sp)
    80001e9c:	00813023          	sd	s0,0(sp)
    80001ea0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001ea4:	00853503          	ld	a0,8(a0)
    80001ea8:	fffff097          	auipc	ra,0xfffff
    80001eac:	534080e7          	jalr	1332(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>
}
    80001eb0:	00813083          	ld	ra,8(sp)
    80001eb4:	00013403          	ld	s0,0(sp)
    80001eb8:	01010113          	addi	sp,sp,16
    80001ebc:	00008067          	ret

0000000080001ec0 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001ec0:	ff010113          	addi	sp,sp,-16
    80001ec4:	00113423          	sd	ra,8(sp)
    80001ec8:	00813023          	sd	s0,0(sp)
    80001ecc:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001ed0:	00853503          	ld	a0,8(a0)
    80001ed4:	fffff097          	auipc	ra,0xfffff
    80001ed8:	534080e7          	jalr	1332(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>
}
    80001edc:	00813083          	ld	ra,8(sp)
    80001ee0:	00013403          	ld	s0,0(sp)
    80001ee4:	01010113          	addi	sp,sp,16
    80001ee8:	00008067          	ret

0000000080001eec <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001eec:	fe010113          	addi	sp,sp,-32
    80001ef0:	00113c23          	sd	ra,24(sp)
    80001ef4:	00813823          	sd	s0,16(sp)
    80001ef8:	00913423          	sd	s1,8(sp)
    80001efc:	02010413          	addi	s0,sp,32
    80001f00:	00050493          	mv	s1,a0
    80001f04:	00000097          	auipc	ra,0x0
    80001f08:	f30080e7          	jalr	-208(ra) # 80001e34 <_ZN6ThreadC1Ev>
    80001f0c:	00005797          	auipc	a5,0x5
    80001f10:	3cc78793          	addi	a5,a5,972 # 800072d8 <_ZTV14PeriodicThread+0x10>
    80001f14:	00f4b023          	sd	a5,0(s1)

}
    80001f18:	01813083          	ld	ra,24(sp)
    80001f1c:	01013403          	ld	s0,16(sp)
    80001f20:	00813483          	ld	s1,8(sp)
    80001f24:	02010113          	addi	sp,sp,32
    80001f28:	00008067          	ret

0000000080001f2c <_ZN7Console4getcEv>:

char Console::getc() {
    80001f2c:	ff010113          	addi	sp,sp,-16
    80001f30:	00113423          	sd	ra,8(sp)
    80001f34:	00813023          	sd	s0,0(sp)
    80001f38:	01010413          	addi	s0,sp,16
    return __getc();
    80001f3c:	00003097          	auipc	ra,0x3
    80001f40:	5ac080e7          	jalr	1452(ra) # 800054e8 <__getc>
}
    80001f44:	00813083          	ld	ra,8(sp)
    80001f48:	00013403          	ld	s0,0(sp)
    80001f4c:	01010113          	addi	sp,sp,16
    80001f50:	00008067          	ret

0000000080001f54 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001f54:	ff010113          	addi	sp,sp,-16
    80001f58:	00113423          	sd	ra,8(sp)
    80001f5c:	00813023          	sd	s0,0(sp)
    80001f60:	01010413          	addi	s0,sp,16
    __putc(c);
    80001f64:	00003097          	auipc	ra,0x3
    80001f68:	548080e7          	jalr	1352(ra) # 800054ac <__putc>
}
    80001f6c:	00813083          	ld	ra,8(sp)
    80001f70:	00013403          	ld	s0,0(sp)
    80001f74:	01010113          	addi	sp,sp,16
    80001f78:	00008067          	ret

0000000080001f7c <_ZN6Thread3runEv>:
    static int sleep (time_t);
//    static  void myWrapper();

protected:
    Thread ();
    virtual void run (){}
    80001f7c:	ff010113          	addi	sp,sp,-16
    80001f80:	00813423          	sd	s0,8(sp)
    80001f84:	01010413          	addi	s0,sp,16
    80001f88:	00813403          	ld	s0,8(sp)
    80001f8c:	01010113          	addi	sp,sp,16
    80001f90:	00008067          	ret

0000000080001f94 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80001f94:	ff010113          	addi	sp,sp,-16
    80001f98:	00113423          	sd	ra,8(sp)
    80001f9c:	00813023          	sd	s0,0(sp)
    80001fa0:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    80001fa4:	00053783          	ld	a5,0(a0)
    80001fa8:	0107b783          	ld	a5,16(a5)
    80001fac:	000780e7          	jalr	a5
    }
    80001fb0:	00813083          	ld	ra,8(sp)
    80001fb4:	00013403          	ld	s0,0(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN14PeriodicThread18periodicActivationEv>:


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00813423          	sd	s0,8(sp)
    80001fc8:	01010413          	addi	s0,sp,16
    80001fcc:	00813403          	ld	s0,8(sp)
    80001fd0:	01010113          	addi	sp,sp,16
    80001fd4:	00008067          	ret

0000000080001fd8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001fd8:	ff010113          	addi	sp,sp,-16
    80001fdc:	00813423          	sd	s0,8(sp)
    80001fe0:	01010413          	addi	s0,sp,16
    80001fe4:	00005797          	auipc	a5,0x5
    80001fe8:	2f478793          	addi	a5,a5,756 # 800072d8 <_ZTV14PeriodicThread+0x10>
    80001fec:	00f53023          	sd	a5,0(a0)
    80001ff0:	00813403          	ld	s0,8(sp)
    80001ff4:	01010113          	addi	sp,sp,16
    80001ff8:	00008067          	ret

0000000080001ffc <_ZN14PeriodicThreadD0Ev>:
    80001ffc:	ff010113          	addi	sp,sp,-16
    80002000:	00113423          	sd	ra,8(sp)
    80002004:	00813023          	sd	s0,0(sp)
    80002008:	01010413          	addi	s0,sp,16
    8000200c:	00005797          	auipc	a5,0x5
    80002010:	2cc78793          	addi	a5,a5,716 # 800072d8 <_ZTV14PeriodicThread+0x10>
    80002014:	00f53023          	sd	a5,0(a0)
    80002018:	00000097          	auipc	ra,0x0
    8000201c:	cec080e7          	jalr	-788(ra) # 80001d04 <_ZdlPv>
    80002020:	00813083          	ld	ra,8(sp)
    80002024:	00013403          	ld	s0,0(sp)
    80002028:	01010113          	addi	sp,sp,16
    8000202c:	00008067          	ret

0000000080002030 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80002030:	ff010113          	addi	sp,sp,-16
    80002034:	00813423          	sd	s0,8(sp)
    80002038:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000203c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002040:	10200073          	sret
}
    80002044:	00813403          	ld	s0,8(sp)
    80002048:	01010113          	addi	sp,sp,16
    8000204c:	00008067          	ret

0000000080002050 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002050:	fb010113          	addi	sp,sp,-80
    80002054:	04113423          	sd	ra,72(sp)
    80002058:	04813023          	sd	s0,64(sp)
    8000205c:	02913c23          	sd	s1,56(sp)
    80002060:	03213823          	sd	s2,48(sp)
    80002064:	03313423          	sd	s3,40(sp)
    80002068:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    8000206c:	142027f3          	csrr	a5,scause
    80002070:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002074:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002078:	ff870693          	addi	a3,a4,-8
    8000207c:	00100793          	li	a5,1
    80002080:	02d7f863          	bgeu	a5,a3,800020b0 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80002084:	fff00793          	li	a5,-1
    80002088:	03f79793          	slli	a5,a5,0x3f
    8000208c:	00178793          	addi	a5,a5,1
    80002090:	20f70063          	beq	a4,a5,80002290 <_ZN5Riscv20handleSupervisorTrapEv+0x240>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80002094:	fff00793          	li	a5,-1
    80002098:	03f79793          	slli	a5,a5,0x3f
    8000209c:	00978793          	addi	a5,a5,9
    800020a0:	0af71e63          	bne	a4,a5,8000215c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    800020a4:	00003097          	auipc	ra,0x3
    800020a8:	47c080e7          	jalr	1148(ra) # 80005520 <console_handler>
    } else
    {
        // unexpected trap cause
    }
    800020ac:	0b00006f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020b0:	141027f3          	csrr	a5,sepc
    800020b4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800020b8:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    800020bc:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020c0:	100027f3          	csrr	a5,sstatus
    800020c4:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800020c8:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800020cc:	00050793          	mv	a5,a0
    800020d0:	faf43c23          	sd	a5,-72(s0)
    return a0;
    800020d4:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    800020d8:	00100713          	li	a4,1
    800020dc:	06e78463          	beq	a5,a4,80002144 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        else if (a0 == 0x0000000000000002UL){
    800020e0:	00200713          	li	a4,2
    800020e4:	08e78a63          	beq	a5,a4,80002178 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        else if (a0 == 0x0000000000000011UL){
    800020e8:	01100713          	li	a4,17
    800020ec:	0ae78063          	beq	a5,a4,8000218c <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        else if (a0 == 0x0000000000000012UL){
    800020f0:	01200713          	li	a4,18
    800020f4:	0ce78463          	beq	a5,a4,800021bc <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
        else if (a0 == 0x0000000000000013UL){
    800020f8:	01300713          	li	a4,19
    800020fc:	0ce78863          	beq	a5,a4,800021cc <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        else if (a0 == 0x0000000000000014UL){
    80002100:	01400713          	li	a4,20
    80002104:	0ee78063          	beq	a5,a4,800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if (a0 == 0x0000000000000015UL){
    80002108:	01500713          	li	a4,21
    8000210c:	0ee78663          	beq	a5,a4,800021f8 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
        else if (a0 == 0x0000000000000021UL) {
    80002110:	02100713          	li	a4,33
    80002114:	10e78a63          	beq	a5,a4,80002228 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if (a0 == 0x0000000000000022UL) {
    80002118:	02200713          	li	a4,34
    8000211c:	12e78e63          	beq	a5,a4,80002258 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
        else if (a0 == 0x0000000000000023UL) {
    80002120:	02300713          	li	a4,35
    80002124:	14e78c63          	beq	a5,a4,8000227c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
        else if (a0 == 0x0000000000000024UL) {
    80002128:	02400713          	li	a4,36
    8000212c:	02e79463          	bne	a5,a4,80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002130:	00058513          	mv	a0,a1
            a=sem->signal();
    80002134:	fffff097          	auipc	ra,0xfffff
    80002138:	478080e7          	jalr	1144(ra) # 800015ac <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000213c:	00050513          	mv	a0,a0
    80002140:	0140006f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
    80002144:	00058513          	mv	a0,a1
            a=MemoryAllocator::malloc(a1);
    80002148:	00000097          	auipc	ra,0x0
    8000214c:	6e4080e7          	jalr	1764(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002150:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002154:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002158:	14149073          	csrw	sepc,s1
    8000215c:	04813083          	ld	ra,72(sp)
    80002160:	04013403          	ld	s0,64(sp)
    80002164:	03813483          	ld	s1,56(sp)
    80002168:	03013903          	ld	s2,48(sp)
    8000216c:	02813983          	ld	s3,40(sp)
    80002170:	05010113          	addi	sp,sp,80
    80002174:	00008067          	ret
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002178:	00060513          	mv	a0,a2
            a=MemoryAllocator::free(a2);
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	74c080e7          	jalr	1868(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002184:	00050513          	mv	a0,a0
    80002188:	fcdff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    8000218c:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002190:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002194:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    80002198:	00000097          	auipc	ra,0x0
    8000219c:	348080e7          	jalr	840(ra) # 800024e0 <_ZN3TCB12createThreadEPFvPvES0_>
    800021a0:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800021a4:	00098863          	beqz	s3,800021b4 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    800021a8:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800021ac:	00078513          	mv	a0,a5
    800021b0:	fa5ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    800021b4:	fff00793          	li	a5,-1
    800021b8:	ff5ff06f          	j	800021ac <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            a=TCB::exitThread();
    800021bc:	00000097          	auipc	ra,0x0
    800021c0:	204080e7          	jalr	516(ra) # 800023c0 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800021c4:	00050513          	mv	a0,a0
    800021c8:	f8dff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::timeSliceCounter = 0;
    800021cc:	00005797          	auipc	a5,0x5
    800021d0:	1a47b783          	ld	a5,420(a5) # 80007370 <_GLOBAL_OFFSET_TABLE_+0x18>
    800021d4:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800021d8:	00000097          	auipc	ra,0x0
    800021dc:	0ec080e7          	jalr	236(ra) # 800022c4 <_ZN3TCB8dispatchEv>
    800021e0:	f75ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800021e4:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    800021e8:	0007b503          	ld	a0,0(a5)
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	534080e7          	jalr	1332(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
    800021f4:	f61ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800021f8:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800021fc:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002200:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    80002204:	00000097          	auipc	ra,0x0
    80002208:	3b0080e7          	jalr	944(ra) # 800025b4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    8000220c:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002210:	00098863          	beqz	s3,80002220 <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    80002214:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002218:	00078513          	mv	a0,a5
    8000221c:	f39ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    80002220:	fff00793          	li	a5,-1
    80002224:	ff5ff06f          	j	80002218 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002228:	00060513          	mv	a0,a2
    8000222c:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002230:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    80002234:	fffff097          	auipc	ra,0xfffff
    80002238:	48c080e7          	jalr	1164(ra) # 800016c0 <_ZN10Ksemaphore15createSemaphoreEj>
    8000223c:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002240:	00098863          	beqz	s3,80002250 <_ZN5Riscv20handleSupervisorTrapEv+0x200>
    80002244:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002248:	00078513          	mv	a0,a5
    8000224c:	f09ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            uint64 a= (sem!= nullptr)?0: -1;
    80002250:	fff00793          	li	a5,-1
    80002254:	ff5ff06f          	j	80002248 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002258:	00058513          	mv	a0,a1
            if(sem== nullptr){
    8000225c:	00050c63          	beqz	a0,80002274 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
                sem->closeSemaphore();
    80002260:	fffff097          	auipc	ra,0xfffff
    80002264:	394080e7          	jalr	916(ra) # 800015f4 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002268:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000226c:	00078513          	mv	a0,a5
    80002270:	ee5ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                a=-1;
    80002274:	fff00793          	li	a5,-1
    80002278:	ff5ff06f          	j	8000226c <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
    8000227c:	00058513          	mv	a0,a1
                a = a1->wait();
    80002280:	fffff097          	auipc	ra,0xfffff
    80002284:	2dc080e7          	jalr	732(ra) # 8000155c <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002288:	00050513          	mv	a0,a0
    8000228c:	ec9ff06f          	j	80002154 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002290:	00200793          	li	a5,2
    80002294:	1447b073          	csrc	sip,a5
}
    80002298:	ec5ff06f          	j	8000215c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>

000000008000229c <_ZN3TCB14putInSchedulerEPS_>:
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    8000229c:	ff010113          	addi	sp,sp,-16
    800022a0:	00113423          	sd	ra,8(sp)
    800022a4:	00813023          	sd	s0,0(sp)
    800022a8:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	474080e7          	jalr	1140(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
}
    800022b4:	00813083          	ld	ra,8(sp)
    800022b8:	00013403          	ld	s0,0(sp)
    800022bc:	01010113          	addi	sp,sp,16
    800022c0:	00008067          	ret

00000000800022c4 <_ZN3TCB8dispatchEv>:
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
    800022c4:	fe010113          	addi	sp,sp,-32
    800022c8:	00113c23          	sd	ra,24(sp)
    800022cc:	00813823          	sd	s0,16(sp)
    800022d0:	00913423          	sd	s1,8(sp)
    800022d4:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    800022d8:	00005497          	auipc	s1,0x5
    800022dc:	1184b483          	ld	s1,280(s1) # 800073f0 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    800022e0:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800022e4:	02078c63          	beqz	a5,8000231c <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800022e8:	00000097          	auipc	ra,0x0
    800022ec:	3d0080e7          	jalr	976(ra) # 800026b8 <_ZN9Scheduler3getEv>
    800022f0:	00005797          	auipc	a5,0x5
    800022f4:	10a7b023          	sd	a0,256(a5) # 800073f0 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    800022f8:	01850593          	addi	a1,a0,24
    800022fc:	01848513          	addi	a0,s1,24
    80002300:	fffff097          	auipc	ra,0xfffff
    80002304:	f00080e7          	jalr	-256(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002308:	01813083          	ld	ra,24(sp)
    8000230c:	01013403          	ld	s0,16(sp)
    80002310:	00813483          	ld	s1,8(sp)
    80002314:	02010113          	addi	sp,sp,32
    80002318:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    8000231c:	00048513          	mv	a0,s1
    80002320:	00000097          	auipc	ra,0x0
    80002324:	400080e7          	jalr	1024(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
    80002328:	fc1ff06f          	j	800022e8 <_ZN3TCB8dispatchEv+0x24>

000000008000232c <_ZN3TCB5yieldEv>:
{
    8000232c:	ff010113          	addi	sp,sp,-16
    80002330:	00113423          	sd	ra,8(sp)
    80002334:	00813023          	sd	s0,0(sp)
    80002338:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    8000233c:	fffff097          	auipc	ra,0xfffff
    80002340:	cc4080e7          	jalr	-828(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002344:	00000097          	auipc	ra,0x0
    80002348:	f80080e7          	jalr	-128(ra) # 800022c4 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    8000234c:	fffff097          	auipc	ra,0xfffff
    80002350:	d2c080e7          	jalr	-724(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002354:	00813083          	ld	ra,8(sp)
    80002358:	00013403          	ld	s0,0(sp)
    8000235c:	01010113          	addi	sp,sp,16
    80002360:	00008067          	ret

0000000080002364 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper(){
    80002364:	fe010113          	addi	sp,sp,-32
    80002368:	00113c23          	sd	ra,24(sp)
    8000236c:	00813823          	sd	s0,16(sp)
    80002370:	00913423          	sd	s1,8(sp)
    80002374:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002378:	00000097          	auipc	ra,0x0
    8000237c:	cb8080e7          	jalr	-840(ra) # 80002030 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002380:	00005497          	auipc	s1,0x5
    80002384:	07048493          	addi	s1,s1,112 # 800073f0 <_ZN3TCB7runningE>
    80002388:	0004b783          	ld	a5,0(s1)
    8000238c:	0007b703          	ld	a4,0(a5)
    80002390:	0087b503          	ld	a0,8(a5)
    80002394:	000700e7          	jalr	a4
    running->setFinished(true);
    80002398:	0004b783          	ld	a5,0(s1)


    void setFinished(bool value) { finished = value; }
    8000239c:	00100713          	li	a4,1
    800023a0:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800023a4:	00000097          	auipc	ra,0x0
    800023a8:	f88080e7          	jalr	-120(ra) # 8000232c <_ZN3TCB5yieldEv>
}
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	02010113          	addi	sp,sp,32
    800023bc:	00008067          	ret

00000000800023c0 <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    800023c0:	ff010113          	addi	sp,sp,-16
    800023c4:	00113423          	sd	ra,8(sp)
    800023c8:	00813023          	sd	s0,0(sp)
    800023cc:	01010413          	addi	s0,sp,16
    800023d0:	00005797          	auipc	a5,0x5
    800023d4:	0207b783          	ld	a5,32(a5) # 800073f0 <_ZN3TCB7runningE>
    800023d8:	00100713          	li	a4,1
    800023dc:	02e78823          	sb	a4,48(a5)
    running->setFinished(true);
    dispatch();
    800023e0:	00000097          	auipc	ra,0x0
    800023e4:	ee4080e7          	jalr	-284(ra) # 800022c4 <_ZN3TCB8dispatchEv>
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}
    800023e8:	00000513          	li	a0,0
    800023ec:	00813083          	ld	ra,8(sp)
    800023f0:	00013403          	ld	s0,0(sp)
    800023f4:	01010113          	addi	sp,sp,16
    800023f8:	00008067          	ret

00000000800023fc <_ZN3TCB24dispatchWithoutSchedulerEv>:


void TCB::dispatchWithoutScheduler(){
    800023fc:	fe010113          	addi	sp,sp,-32
    80002400:	00113c23          	sd	ra,24(sp)
    80002404:	00813823          	sd	s0,16(sp)
    80002408:	00913423          	sd	s1,8(sp)
    8000240c:	01213023          	sd	s2,0(sp)
    80002410:	02010413          	addi	s0,sp,32
    TCB *old = running;
    80002414:	00005497          	auipc	s1,0x5
    80002418:	fdc48493          	addi	s1,s1,-36 # 800073f0 <_ZN3TCB7runningE>
    8000241c:	0004b903          	ld	s2,0(s1)
    running = Scheduler::get();
    80002420:	00000097          	auipc	ra,0x0
    80002424:	298080e7          	jalr	664(ra) # 800026b8 <_ZN9Scheduler3getEv>
    80002428:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    8000242c:	01850593          	addi	a1,a0,24
    80002430:	01890513          	addi	a0,s2,24
    80002434:	fffff097          	auipc	ra,0xfffff
    80002438:	dcc080e7          	jalr	-564(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00813483          	ld	s1,8(sp)
    80002448:	00013903          	ld	s2,0(sp)
    8000244c:	02010113          	addi	sp,sp,32
    80002450:	00008067          	ret

0000000080002454 <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002454:	ff010113          	addi	sp,sp,-16
    80002458:	00113423          	sd	ra,8(sp)
    8000245c:	00813023          	sd	s0,0(sp)
    80002460:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002464:	fffff097          	auipc	ra,0xfffff
    80002468:	b9c080e7          	jalr	-1124(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	f90080e7          	jalr	-112(ra) # 800023fc <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    80002474:	fffff097          	auipc	ra,0xfffff
    80002478:	c04080e7          	jalr	-1020(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    8000247c:	00813083          	ld	ra,8(sp)
    80002480:	00013403          	ld	s0,0(sp)
    80002484:	01010113          	addi	sp,sp,16
    80002488:	00008067          	ret

000000008000248c <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) {
    8000248c:	ff010113          	addi	sp,sp,-16
    80002490:	00113423          	sd	ra,8(sp)
    80002494:	00813023          	sd	s0,0(sp)
    80002498:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	42c080e7          	jalr	1068(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
    return;

}
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t n) {
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00113423          	sd	ra,8(sp)
    800024bc:	00813023          	sd	s0,0(sp)
    800024c0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    800024c4:	03800513          	li	a0,56
    800024c8:	00000097          	auipc	ra,0x0
    800024cc:	364080e7          	jalr	868(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>

}
    800024d0:	00813083          	ld	ra,8(sp)
    800024d4:	00013403          	ld	s0,0(sp)
    800024d8:	01010113          	addi	sp,sp,16
    800024dc:	00008067          	ret

00000000800024e0 <_ZN3TCB12createThreadEPFvPvES0_>:
{
    800024e0:	fd010113          	addi	sp,sp,-48
    800024e4:	02113423          	sd	ra,40(sp)
    800024e8:	02813023          	sd	s0,32(sp)
    800024ec:	00913c23          	sd	s1,24(sp)
    800024f0:	01213823          	sd	s2,16(sp)
    800024f4:	01313423          	sd	s3,8(sp)
    800024f8:	03010413          	addi	s0,sp,48
    800024fc:	00050913          	mv	s2,a0
    80002500:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002504:	03800513          	li	a0,56
    80002508:	00000097          	auipc	ra,0x0
    8000250c:	fac080e7          	jalr	-84(ra) # 800024b4 <_ZN3TCBnwEm>
    80002510:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    80002514:	01253023          	sd	s2,0(a0)
        arg=argg;
    80002518:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    8000251c:	00090a63          	beqz	s2,80002530 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002520:	00008537          	lui	a0,0x8
    80002524:	00000097          	auipc	ra,0x0
    80002528:	308080e7          	jalr	776(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
    8000252c:	0080006f          	j	80002534 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002530:	00000513          	li	a0,0
    80002534:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    80002538:	00000797          	auipc	a5,0x0
    8000253c:	e2c78793          	addi	a5,a5,-468 # 80002364 <_ZN3TCB13threadWrapperEv>
    80002540:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002544:	04050663          	beqz	a0,80002590 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80002548:	000087b7          	lui	a5,0x8
    8000254c:	00f507b3          	add	a5,a0,a5
    80002550:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002554:	00200793          	li	a5,2
    80002558:	02f4b423          	sd	a5,40(s1)
        finished= false;
    8000255c:	02048823          	sb	zero,48(s1)
    if (body != nullptr) {
    80002560:	00090863          	beqz	s2,80002570 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
        Scheduler::put(t);
    80002564:	00048513          	mv	a0,s1
    80002568:	00000097          	auipc	ra,0x0
    8000256c:	1b8080e7          	jalr	440(ra) # 80002720 <_ZN9Scheduler3putEP3TCB>
}
    80002570:	00048513          	mv	a0,s1
    80002574:	02813083          	ld	ra,40(sp)
    80002578:	02013403          	ld	s0,32(sp)
    8000257c:	01813483          	ld	s1,24(sp)
    80002580:	01013903          	ld	s2,16(sp)
    80002584:	00813983          	ld	s3,8(sp)
    80002588:	03010113          	addi	sp,sp,48
    8000258c:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002590:	00000793          	li	a5,0
    80002594:	fbdff06f          	j	80002550 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002598:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    8000259c:	00048513          	mv	a0,s1
    800025a0:	00000097          	auipc	ra,0x0
    800025a4:	eec080e7          	jalr	-276(ra) # 8000248c <_ZN3TCBdlEPv>
    800025a8:	00090513          	mv	a0,s2
    800025ac:	00006097          	auipc	ra,0x6
    800025b0:	f4c080e7          	jalr	-180(ra) # 800084f8 <_Unwind_Resume>

00000000800025b4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    800025b4:	fd010113          	addi	sp,sp,-48
    800025b8:	02113423          	sd	ra,40(sp)
    800025bc:	02813023          	sd	s0,32(sp)
    800025c0:	00913c23          	sd	s1,24(sp)
    800025c4:	01213823          	sd	s2,16(sp)
    800025c8:	01313423          	sd	s3,8(sp)
    800025cc:	03010413          	addi	s0,sp,48
    800025d0:	00050913          	mv	s2,a0
    800025d4:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    800025d8:	03800513          	li	a0,56
    800025dc:	00000097          	auipc	ra,0x0
    800025e0:	ed8080e7          	jalr	-296(ra) # 800024b4 <_ZN3TCBnwEm>
    800025e4:	00050493          	mv	s1,a0
        body = bodyy;
    800025e8:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    800025ec:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    800025f0:	00090a63          	beqz	s2,80002604 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    800025f4:	00008537          	lui	a0,0x8
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	234080e7          	jalr	564(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
    80002600:	0080006f          	j	80002608 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    80002604:	00000513          	li	a0,0
    80002608:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    8000260c:	00000797          	auipc	a5,0x0
    80002610:	d5878793          	addi	a5,a5,-680 # 80002364 <_ZN3TCB13threadWrapperEv>
    80002614:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002618:	02050e63          	beqz	a0,80002654 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xa0>
    8000261c:	000087b7          	lui	a5,0x8
    80002620:	00f50533          	add	a0,a0,a5
    80002624:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    80002628:	00200793          	li	a5,2
    8000262c:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002630:	02048823          	sb	zero,48(s1)
}
    80002634:	00048513          	mv	a0,s1
    80002638:	02813083          	ld	ra,40(sp)
    8000263c:	02013403          	ld	s0,32(sp)
    80002640:	01813483          	ld	s1,24(sp)
    80002644:	01013903          	ld	s2,16(sp)
    80002648:	00813983          	ld	s3,8(sp)
    8000264c:	03010113          	addi	sp,sp,48
    80002650:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002654:	00000513          	li	a0,0
    80002658:	fcdff06f          	j	80002624 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    8000265c:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002660:	00048513          	mv	a0,s1
    80002664:	00000097          	auipc	ra,0x0
    80002668:	e28080e7          	jalr	-472(ra) # 8000248c <_ZN3TCBdlEPv>
    8000266c:	00090513          	mv	a0,s2
    80002670:	00006097          	auipc	ra,0x6
    80002674:	e88080e7          	jalr	-376(ra) # 800084f8 <_Unwind_Resume>

0000000080002678 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}
    80002678:	ff010113          	addi	sp,sp,-16
    8000267c:	00813423          	sd	s0,8(sp)
    80002680:	01010413          	addi	s0,sp,16
    80002684:	00100793          	li	a5,1
    80002688:	00f50863          	beq	a0,a5,80002698 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000268c:	00813403          	ld	s0,8(sp)
    80002690:	01010113          	addi	sp,sp,16
    80002694:	00008067          	ret
    80002698:	000107b7          	lui	a5,0x10
    8000269c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800026a0:	fef596e3          	bne	a1,a5,8000268c <_Z41__static_initialization_and_destruction_0ii+0x14>
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	d5c78793          	addi	a5,a5,-676 # 80007400 <_ZN9Scheduler16readyThreadQueueE>
    800026ac:	0007b023          	sd	zero,0(a5)
    800026b0:	0007b423          	sd	zero,8(a5)
    800026b4:	fd9ff06f          	j	8000268c <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800026b8 <_ZN9Scheduler3getEv>:
{
    800026b8:	fe010113          	addi	sp,sp,-32
    800026bc:	00113c23          	sd	ra,24(sp)
    800026c0:	00813823          	sd	s0,16(sp)
    800026c4:	00913423          	sd	s1,8(sp)
    800026c8:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800026cc:	00005517          	auipc	a0,0x5
    800026d0:	d3453503          	ld	a0,-716(a0) # 80007400 <_ZN9Scheduler16readyThreadQueueE>
    800026d4:	04050263          	beqz	a0,80002718 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800026d8:	00853783          	ld	a5,8(a0)
    800026dc:	00005717          	auipc	a4,0x5
    800026e0:	d2f73223          	sd	a5,-732(a4) # 80007400 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800026e4:	02078463          	beqz	a5,8000270c <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800026e8:	00053483          	ld	s1,0(a0)
        delete elem;
    800026ec:	fffff097          	auipc	ra,0xfffff
    800026f0:	618080e7          	jalr	1560(ra) # 80001d04 <_ZdlPv>
}
    800026f4:	00048513          	mv	a0,s1
    800026f8:	01813083          	ld	ra,24(sp)
    800026fc:	01013403          	ld	s0,16(sp)
    80002700:	00813483          	ld	s1,8(sp)
    80002704:	02010113          	addi	sp,sp,32
    80002708:	00008067          	ret
        if (!head) { tail = 0; }
    8000270c:	00005797          	auipc	a5,0x5
    80002710:	ce07be23          	sd	zero,-772(a5) # 80007408 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002714:	fd5ff06f          	j	800026e8 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002718:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000271c:	fd9ff06f          	j	800026f4 <_ZN9Scheduler3getEv+0x3c>

0000000080002720 <_ZN9Scheduler3putEP3TCB>:
{
    80002720:	fe010113          	addi	sp,sp,-32
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	00813823          	sd	s0,16(sp)
    8000272c:	00913423          	sd	s1,8(sp)
    80002730:	02010413          	addi	s0,sp,32
    80002734:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002738:	01000513          	li	a0,16
    8000273c:	fffff097          	auipc	ra,0xfffff
    80002740:	578080e7          	jalr	1400(ra) # 80001cb4 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002744:	00953023          	sd	s1,0(a0)
    80002748:	00053423          	sd	zero,8(a0)
        if (tail)
    8000274c:	00005797          	auipc	a5,0x5
    80002750:	cbc7b783          	ld	a5,-836(a5) # 80007408 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002754:	02078263          	beqz	a5,80002778 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002758:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    8000275c:	00005797          	auipc	a5,0x5
    80002760:	caa7b623          	sd	a0,-852(a5) # 80007408 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002764:	01813083          	ld	ra,24(sp)
    80002768:	01013403          	ld	s0,16(sp)
    8000276c:	00813483          	ld	s1,8(sp)
    80002770:	02010113          	addi	sp,sp,32
    80002774:	00008067          	ret
            head = tail = elem;
    80002778:	00005797          	auipc	a5,0x5
    8000277c:	c8878793          	addi	a5,a5,-888 # 80007400 <_ZN9Scheduler16readyThreadQueueE>
    80002780:	00a7b423          	sd	a0,8(a5)
    80002784:	00a7b023          	sd	a0,0(a5)
    80002788:	fddff06f          	j	80002764 <_ZN9Scheduler3putEP3TCB+0x44>

000000008000278c <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00813423          	sd	s0,8(sp)
    80002794:	01010413          	addi	s0,sp,16
}
    80002798:	00053503          	ld	a0,0(a0)
    8000279c:	00813403          	ld	s0,8(sp)
    800027a0:	01010113          	addi	sp,sp,16
    800027a4:	00008067          	ret

00000000800027a8 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    800027a8:	ff010113          	addi	sp,sp,-16
    800027ac:	00113423          	sd	ra,8(sp)
    800027b0:	00813023          	sd	s0,0(sp)
    800027b4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    800027b8:	00000097          	auipc	ra,0x0
    800027bc:	074080e7          	jalr	116(ra) # 8000282c <_ZN15MemoryAllocator6mallocEm>
}
    800027c0:	00813083          	ld	ra,8(sp)
    800027c4:	00013403          	ld	s0,0(sp)
    800027c8:	01010113          	addi	sp,sp,16
    800027cc:	00008067          	ret

00000000800027d0 <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    800027d0:	ff010113          	addi	sp,sp,-16
    800027d4:	00113423          	sd	ra,8(sp)
    800027d8:	00813023          	sd	s0,0(sp)
    800027dc:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    800027e0:	00000097          	auipc	ra,0x0
    800027e4:	0e8080e7          	jalr	232(ra) # 800028c8 <_ZN15MemoryAllocator4freeEPv>
}
    800027e8:	00813083          	ld	ra,8(sp)
    800027ec:	00013403          	ld	s0,0(sp)
    800027f0:	01010113          	addi	sp,sp,16
    800027f4:	00008067          	ret

00000000800027f8 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800027f8:	ff010113          	addi	sp,sp,-16
    800027fc:	00113423          	sd	ra,8(sp)
    80002800:	00813023          	sd	s0,0(sp)
    80002804:	01010413          	addi	s0,sp,16
    80002808:	000105b7          	lui	a1,0x10
    8000280c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002810:	00100513          	li	a0,1
    80002814:	00000097          	auipc	ra,0x0
    80002818:	e64080e7          	jalr	-412(ra) # 80002678 <_Z41__static_initialization_and_destruction_0ii>
    8000281c:	00813083          	ld	ra,8(sp)
    80002820:	00013403          	ld	s0,0(sp)
    80002824:	01010113          	addi	sp,sp,16
    80002828:	00008067          	ret

000000008000282c <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    8000282c:	ff010113          	addi	sp,sp,-16
    80002830:	00813423          	sd	s0,8(sp)
    80002834:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002838:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    8000283c:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002840:	00005517          	auipc	a0,0x5
    80002844:	bd053503          	ld	a0,-1072(a0) # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002848:	0440006f          	j	8000288c <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    8000284c:	40e787b3          	sub	a5,a5,a4
    80002850:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80002854:	fe878793          	addi	a5,a5,-24
    80002858:	00679793          	slli	a5,a5,0x6
    8000285c:	fe878793          	addi	a5,a5,-24
    80002860:	00f507b3          	add	a5,a0,a5
    80002864:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80002868:	01053783          	ld	a5,16(a0)
    8000286c:	fe878793          	addi	a5,a5,-24
    80002870:	00679793          	slli	a5,a5,0x6
    80002874:	ff078793          	addi	a5,a5,-16
    80002878:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    8000287c:	00813403          	ld	s0,8(sp)
    80002880:	01010113          	addi	sp,sp,16
    80002884:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002888:	00053503          	ld	a0,0(a0)
    8000288c:	fe0508e3          	beqz	a0,8000287c <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    80002890:	01053783          	ld	a5,16(a0)
    80002894:	faf76ce3          	bltu	a4,a5,8000284c <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80002898:	fee798e3          	bne	a5,a4,80002888 <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    8000289c:	00853783          	ld	a5,8(a0)
    800028a0:	00078663          	beqz	a5,800028ac <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    800028a4:	00053683          	ld	a3,0(a0)
    800028a8:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    800028ac:	00053783          	ld	a5,0(a0)
    800028b0:	00078663          	beqz	a5,800028bc <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    800028b4:	00853683          	ld	a3,8(a0)
    800028b8:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    800028bc:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    800028c0:	ff050513          	addi	a0,a0,-16
    800028c4:	fb9ff06f          	j	8000287c <_ZN15MemoryAllocator6mallocEm+0x50>

00000000800028c8 <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    800028c8:	ff010113          	addi	sp,sp,-16
    800028cc:	00813423          	sd	s0,8(sp)
    800028d0:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    800028d4:	14050463          	beqz	a0,80002a1c <_ZN15MemoryAllocator4freeEPv+0x154>
    800028d8:	00005797          	auipc	a5,0x5
    800028dc:	ab87b783          	ld	a5,-1352(a5) # 80007390 <_GLOBAL_OFFSET_TABLE_+0x38>
    800028e0:	0007b783          	ld	a5,0(a5)
    800028e4:	14a7e063          	bltu	a5,a0,80002a24 <_ZN15MemoryAllocator4freeEPv+0x15c>
    800028e8:	00005797          	auipc	a5,0x5
    800028ec:	a787b783          	ld	a5,-1416(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x8>
    800028f0:	0007b783          	ld	a5,0(a5)
    800028f4:	14f56063          	bltu	a0,a5,80002a34 <_ZN15MemoryAllocator4freeEPv+0x16c>
    char* block=(char*)p-sizeof(size_t);
    800028f8:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    800028fc:	14070063          	beqz	a4,80002a3c <_ZN15MemoryAllocator4freeEPv+0x174>
    size_t size = *(size_t*)block;
    80002900:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    80002904:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002908:	00005797          	auipc	a5,0x5
    8000290c:	b087b783          	ld	a5,-1272(a5) # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002910:	0140006f          	j	80002924 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    80002914:	00005697          	auipc	a3,0x5
    80002918:	b046b683          	ld	a3,-1276(a3) # 80007418 <_ZN15MemoryAllocator4tailE>
    8000291c:	02f68e63          	beq	a3,a5,80002958 <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    80002920:	0007b783          	ld	a5,0(a5)
    80002924:	04078663          	beqz	a5,80002970 <_ZN15MemoryAllocator4freeEPv+0xa8>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    80002928:	fee7f6e3          	bgeu	a5,a4,80002914 <_ZN15MemoryAllocator4freeEPv+0x4c>
    8000292c:	0007b683          	ld	a3,0(a5)
    80002930:	fed772e3          	bgeu	a4,a3,80002914 <_ZN15MemoryAllocator4freeEPv+0x4c>
    80002934:	00005617          	auipc	a2,0x5
    80002938:	ae463603          	ld	a2,-1308(a2) # 80007418 <_ZN15MemoryAllocator4tailE>
    8000293c:	fcf60ce3          	beq	a2,a5,80002914 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    80002940:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80002944:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80002948:	0007b683          	ld	a3,0(a5)
    8000294c:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    80002950:	00e7b023          	sd	a4,0(a5)
    80002954:	fcdff06f          	j	80002920 <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80002958:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    8000295c:	00005797          	auipc	a5,0x5
    80002960:	ab478793          	addi	a5,a5,-1356 # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002964:	0087b683          	ld	a3,8(a5)
    80002968:	00d53023          	sd	a3,0(a0)
            tail=newFreeBlock;
    8000296c:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80002970:	00005797          	auipc	a5,0x5
    80002974:	aa07b783          	ld	a5,-1376(a5) # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002978:	02078e63          	beqz	a5,800029b4 <_ZN15MemoryAllocator4freeEPv+0xec>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    8000297c:	00053783          	ld	a5,0(a0)
    80002980:	00078a63          	beqz	a5,80002994 <_ZN15MemoryAllocator4freeEPv+0xcc>
        if ((char *) newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE == (char *) newFreeBlock) {
    80002984:	0107b603          	ld	a2,16(a5)
    80002988:	00661693          	slli	a3,a2,0x6
    8000298c:	00d786b3          	add	a3,a5,a3
    80002990:	02e68a63          	beq	a3,a4,800029c4 <_ZN15MemoryAllocator4freeEPv+0xfc>
                newFreeBlock->next->prev = newFreeBlock->prev;
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next) {
    80002994:	00073783          	ld	a5,0(a4)
    80002998:	0a078663          	beqz	a5,80002a44 <_ZN15MemoryAllocator4freeEPv+0x17c>
        if ((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE == (char *) newFreeBlock->next) {
    8000299c:	01073603          	ld	a2,16(a4)
    800029a0:	00661693          	slli	a3,a2,0x6
    800029a4:	00d706b3          	add	a3,a4,a3
    800029a8:	04d78463          	beq	a5,a3,800029f0 <_ZN15MemoryAllocator4freeEPv+0x128>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    800029ac:	00000513          	li	a0,0
    800029b0:	0780006f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
        freeBlockHead=newFreeBlock;
    800029b4:	00005797          	auipc	a5,0x5
    800029b8:	a4e7be23          	sd	a4,-1444(a5) # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    800029bc:	00000513          	li	a0,0
    800029c0:	0680006f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
            newFreeBlock->prev->size += newFreeBlock->size;
    800029c4:	00853703          	ld	a4,8(a0)
    800029c8:	00e60633          	add	a2,a2,a4
    800029cc:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    800029d0:	00053703          	ld	a4,0(a0)
    800029d4:	ff853783          	ld	a5,-8(a0)
    800029d8:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next)
    800029dc:	00078663          	beqz	a5,800029e8 <_ZN15MemoryAllocator4freeEPv+0x120>
                newFreeBlock->next->prev = newFreeBlock->prev;
    800029e0:	00053703          	ld	a4,0(a0)
    800029e4:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    800029e8:	00053703          	ld	a4,0(a0)
    800029ec:	fa9ff06f          	j	80002994 <_ZN15MemoryAllocator4freeEPv+0xcc>
            newFreeBlock->size += newFreeBlock->next->size;
    800029f0:	0107b683          	ld	a3,16(a5)
    800029f4:	00d60633          	add	a2,a2,a3
    800029f8:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    800029fc:	0007b783          	ld	a5,0(a5)
    80002a00:	04078663          	beqz	a5,80002a4c <_ZN15MemoryAllocator4freeEPv+0x184>
                nextBlock->next->prev = newFreeBlock;
    80002a04:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    80002a08:	00073783          	ld	a5,0(a4)
    80002a0c:	0007b783          	ld	a5,0(a5)
    80002a10:	00f73023          	sd	a5,0(a4)
    return 0;
    80002a14:	00000513          	li	a0,0
    80002a18:	0100006f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002a1c:	00100513          	li	a0,1
    80002a20:	0080006f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
    80002a24:	00100513          	li	a0,1
}
    80002a28:	00813403          	ld	s0,8(sp)
    80002a2c:	01010113          	addi	sp,sp,16
    80002a30:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002a34:	00100513          	li	a0,1
    80002a38:	ff1ff06f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
    if(block== nullptr)return 1;
    80002a3c:	00100513          	li	a0,1
    80002a40:	fe9ff06f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
    return 0;
    80002a44:	00000513          	li	a0,0
    80002a48:	fe1ff06f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>
    80002a4c:	00000513          	li	a0,0
    80002a50:	fd9ff06f          	j	80002a28 <_ZN15MemoryAllocator4freeEPv+0x160>

0000000080002a54 <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    80002a54:	ff010113          	addi	sp,sp,-16
    80002a58:	00813423          	sd	s0,8(sp)
    80002a5c:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80002a60:	00005797          	auipc	a5,0x5
    80002a64:	9007b783          	ld	a5,-1792(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a68:	0007b703          	ld	a4,0(a5)
    80002a6c:	00005697          	auipc	a3,0x5
    80002a70:	9a468693          	addi	a3,a3,-1628 # 80007410 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002a74:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80002a78:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80002a7c:	00005797          	auipc	a5,0x5
    80002a80:	9147b783          	ld	a5,-1772(a5) # 80007390 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002a84:	0007b783          	ld	a5,0(a5)
    80002a88:	40e787b3          	sub	a5,a5,a4
    80002a8c:	03f78793          	addi	a5,a5,63
    80002a90:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    80002a94:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80002a98:	00e6b423          	sd	a4,8(a3)
}
    80002a9c:	00813403          	ld	s0,8(sp)
    80002aa0:	01010113          	addi	sp,sp,16
    80002aa4:	00008067          	ret

0000000080002aa8 <_Z9mainStariv>:
//#include "../lib/console.h"
//#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"


int mainStari(){
    80002aa8:	ff010113          	addi	sp,sp,-16
    80002aac:	00813423          	sd	s0,8(sp)
    80002ab0:	01010413          	addi	s0,sp,16
//        __putc(character + 30);
//    }
//    MemoryAllocator* mem = MemoryAllocator::getInstance();

    return 0;
    80002ab4:	00000513          	li	a0,0
    80002ab8:	00813403          	ld	s0,8(sp)
    80002abc:	01010113          	addi	sp,sp,16
    80002ac0:	00008067          	ret

0000000080002ac4 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002ac4:	fe010113          	addi	sp,sp,-32
    80002ac8:	00113c23          	sd	ra,24(sp)
    80002acc:	00813823          	sd	s0,16(sp)
    80002ad0:	00913423          	sd	s1,8(sp)
    80002ad4:	02010413          	addi	s0,sp,32
    80002ad8:	00050493          	mv	s1,a0
    LOCK();
    80002adc:	00100613          	li	a2,1
    80002ae0:	00000593          	li	a1,0
    80002ae4:	00005517          	auipc	a0,0x5
    80002ae8:	94450513          	addi	a0,a0,-1724 # 80007428 <lockPrint>
    80002aec:	ffffe097          	auipc	ra,0xffffe
    80002af0:	728080e7          	jalr	1832(ra) # 80001214 <copy_and_swap>
    80002af4:	fe0514e3          	bnez	a0,80002adc <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002af8:	0004c503          	lbu	a0,0(s1)
    80002afc:	00050a63          	beqz	a0,80002b10 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	95c080e7          	jalr	-1700(ra) # 8000145c <_Z4putcc>
        string++;
    80002b08:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002b0c:	fedff06f          	j	80002af8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002b10:	00000613          	li	a2,0
    80002b14:	00100593          	li	a1,1
    80002b18:	00005517          	auipc	a0,0x5
    80002b1c:	91050513          	addi	a0,a0,-1776 # 80007428 <lockPrint>
    80002b20:	ffffe097          	auipc	ra,0xffffe
    80002b24:	6f4080e7          	jalr	1780(ra) # 80001214 <copy_and_swap>
    80002b28:	fe0514e3          	bnez	a0,80002b10 <_Z11printStringPKc+0x4c>
}
    80002b2c:	01813083          	ld	ra,24(sp)
    80002b30:	01013403          	ld	s0,16(sp)
    80002b34:	00813483          	ld	s1,8(sp)
    80002b38:	02010113          	addi	sp,sp,32
    80002b3c:	00008067          	ret

0000000080002b40 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002b40:	fd010113          	addi	sp,sp,-48
    80002b44:	02113423          	sd	ra,40(sp)
    80002b48:	02813023          	sd	s0,32(sp)
    80002b4c:	00913c23          	sd	s1,24(sp)
    80002b50:	01213823          	sd	s2,16(sp)
    80002b54:	01313423          	sd	s3,8(sp)
    80002b58:	01413023          	sd	s4,0(sp)
    80002b5c:	03010413          	addi	s0,sp,48
    80002b60:	00050993          	mv	s3,a0
    80002b64:	00058a13          	mv	s4,a1
    LOCK();
    80002b68:	00100613          	li	a2,1
    80002b6c:	00000593          	li	a1,0
    80002b70:	00005517          	auipc	a0,0x5
    80002b74:	8b850513          	addi	a0,a0,-1864 # 80007428 <lockPrint>
    80002b78:	ffffe097          	auipc	ra,0xffffe
    80002b7c:	69c080e7          	jalr	1692(ra) # 80001214 <copy_and_swap>
    80002b80:	fe0514e3          	bnez	a0,80002b68 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002b84:	00000913          	li	s2,0
    80002b88:	00090493          	mv	s1,s2
    80002b8c:	0019091b          	addiw	s2,s2,1
    80002b90:	03495a63          	bge	s2,s4,80002bc4 <_Z9getStringPci+0x84>
        cc = getc();
    80002b94:	fffff097          	auipc	ra,0xfffff
    80002b98:	8a0080e7          	jalr	-1888(ra) # 80001434 <_Z4getcv>
        if(cc < 1)
    80002b9c:	02050463          	beqz	a0,80002bc4 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002ba0:	009984b3          	add	s1,s3,s1
    80002ba4:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002ba8:	00a00793          	li	a5,10
    80002bac:	00f50a63          	beq	a0,a5,80002bc0 <_Z9getStringPci+0x80>
    80002bb0:	00d00793          	li	a5,13
    80002bb4:	fcf51ae3          	bne	a0,a5,80002b88 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002bb8:	00090493          	mv	s1,s2
    80002bbc:	0080006f          	j	80002bc4 <_Z9getStringPci+0x84>
    80002bc0:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002bc4:	009984b3          	add	s1,s3,s1
    80002bc8:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002bcc:	00000613          	li	a2,0
    80002bd0:	00100593          	li	a1,1
    80002bd4:	00005517          	auipc	a0,0x5
    80002bd8:	85450513          	addi	a0,a0,-1964 # 80007428 <lockPrint>
    80002bdc:	ffffe097          	auipc	ra,0xffffe
    80002be0:	638080e7          	jalr	1592(ra) # 80001214 <copy_and_swap>
    80002be4:	fe0514e3          	bnez	a0,80002bcc <_Z9getStringPci+0x8c>
    return buf;
}
    80002be8:	00098513          	mv	a0,s3
    80002bec:	02813083          	ld	ra,40(sp)
    80002bf0:	02013403          	ld	s0,32(sp)
    80002bf4:	01813483          	ld	s1,24(sp)
    80002bf8:	01013903          	ld	s2,16(sp)
    80002bfc:	00813983          	ld	s3,8(sp)
    80002c00:	00013a03          	ld	s4,0(sp)
    80002c04:	03010113          	addi	sp,sp,48
    80002c08:	00008067          	ret

0000000080002c0c <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002c0c:	ff010113          	addi	sp,sp,-16
    80002c10:	00813423          	sd	s0,8(sp)
    80002c14:	01010413          	addi	s0,sp,16
    80002c18:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002c1c:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002c20:	0006c603          	lbu	a2,0(a3)
    80002c24:	fd06071b          	addiw	a4,a2,-48
    80002c28:	0ff77713          	andi	a4,a4,255
    80002c2c:	00900793          	li	a5,9
    80002c30:	02e7e063          	bltu	a5,a4,80002c50 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002c34:	0025179b          	slliw	a5,a0,0x2
    80002c38:	00a787bb          	addw	a5,a5,a0
    80002c3c:	0017979b          	slliw	a5,a5,0x1
    80002c40:	00168693          	addi	a3,a3,1
    80002c44:	00c787bb          	addw	a5,a5,a2
    80002c48:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002c4c:	fd5ff06f          	j	80002c20 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002c50:	00813403          	ld	s0,8(sp)
    80002c54:	01010113          	addi	sp,sp,16
    80002c58:	00008067          	ret

0000000080002c5c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002c5c:	fc010113          	addi	sp,sp,-64
    80002c60:	02113c23          	sd	ra,56(sp)
    80002c64:	02813823          	sd	s0,48(sp)
    80002c68:	02913423          	sd	s1,40(sp)
    80002c6c:	03213023          	sd	s2,32(sp)
    80002c70:	01313c23          	sd	s3,24(sp)
    80002c74:	04010413          	addi	s0,sp,64
    80002c78:	00050493          	mv	s1,a0
    80002c7c:	00058913          	mv	s2,a1
    80002c80:	00060993          	mv	s3,a2
    LOCK();
    80002c84:	00100613          	li	a2,1
    80002c88:	00000593          	li	a1,0
    80002c8c:	00004517          	auipc	a0,0x4
    80002c90:	79c50513          	addi	a0,a0,1948 # 80007428 <lockPrint>
    80002c94:	ffffe097          	auipc	ra,0xffffe
    80002c98:	580080e7          	jalr	1408(ra) # 80001214 <copy_and_swap>
    80002c9c:	fe0514e3          	bnez	a0,80002c84 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002ca0:	00098463          	beqz	s3,80002ca8 <_Z8printIntiii+0x4c>
    80002ca4:	0804c463          	bltz	s1,80002d2c <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002ca8:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002cac:	00000593          	li	a1,0
    }

    i = 0;
    80002cb0:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002cb4:	0009079b          	sext.w	a5,s2
    80002cb8:	0325773b          	remuw	a4,a0,s2
    80002cbc:	00048613          	mv	a2,s1
    80002cc0:	0014849b          	addiw	s1,s1,1
    80002cc4:	02071693          	slli	a3,a4,0x20
    80002cc8:	0206d693          	srli	a3,a3,0x20
    80002ccc:	00004717          	auipc	a4,0x4
    80002cd0:	67470713          	addi	a4,a4,1652 # 80007340 <digits>
    80002cd4:	00d70733          	add	a4,a4,a3
    80002cd8:	00074683          	lbu	a3,0(a4)
    80002cdc:	fd040713          	addi	a4,s0,-48
    80002ce0:	00c70733          	add	a4,a4,a2
    80002ce4:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002ce8:	0005071b          	sext.w	a4,a0
    80002cec:	0325553b          	divuw	a0,a0,s2
    80002cf0:	fcf772e3          	bgeu	a4,a5,80002cb4 <_Z8printIntiii+0x58>
    if(neg)
    80002cf4:	00058c63          	beqz	a1,80002d0c <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002cf8:	fd040793          	addi	a5,s0,-48
    80002cfc:	009784b3          	add	s1,a5,s1
    80002d00:	02d00793          	li	a5,45
    80002d04:	fef48823          	sb	a5,-16(s1)
    80002d08:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002d0c:	fff4849b          	addiw	s1,s1,-1
    80002d10:	0204c463          	bltz	s1,80002d38 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002d14:	fd040793          	addi	a5,s0,-48
    80002d18:	009787b3          	add	a5,a5,s1
    80002d1c:	ff07c503          	lbu	a0,-16(a5)
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	73c080e7          	jalr	1852(ra) # 8000145c <_Z4putcc>
    80002d28:	fe5ff06f          	j	80002d0c <_Z8printIntiii+0xb0>
        x = -xx;
    80002d2c:	4090053b          	negw	a0,s1
        neg = 1;
    80002d30:	00100593          	li	a1,1
        x = -xx;
    80002d34:	f7dff06f          	j	80002cb0 <_Z8printIntiii+0x54>

    UNLOCK();
    80002d38:	00000613          	li	a2,0
    80002d3c:	00100593          	li	a1,1
    80002d40:	00004517          	auipc	a0,0x4
    80002d44:	6e850513          	addi	a0,a0,1768 # 80007428 <lockPrint>
    80002d48:	ffffe097          	auipc	ra,0xffffe
    80002d4c:	4cc080e7          	jalr	1228(ra) # 80001214 <copy_and_swap>
    80002d50:	fe0514e3          	bnez	a0,80002d38 <_Z8printIntiii+0xdc>
    80002d54:	03813083          	ld	ra,56(sp)
    80002d58:	03013403          	ld	s0,48(sp)
    80002d5c:	02813483          	ld	s1,40(sp)
    80002d60:	02013903          	ld	s2,32(sp)
    80002d64:	01813983          	ld	s3,24(sp)
    80002d68:	04010113          	addi	sp,sp,64
    80002d6c:	00008067          	ret

0000000080002d70 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002d70:	fe010113          	addi	sp,sp,-32
    80002d74:	00113c23          	sd	ra,24(sp)
    80002d78:	00813823          	sd	s0,16(sp)
    80002d7c:	00913423          	sd	s1,8(sp)
    80002d80:	01213023          	sd	s2,0(sp)
    80002d84:	02010413          	addi	s0,sp,32
    80002d88:	00050493          	mv	s1,a0
    80002d8c:	0015859b          	addiw	a1,a1,1
    80002d90:	0005851b          	sext.w	a0,a1
    80002d94:	00b4a023          	sw	a1,0(s1)
    80002d98:	0004a823          	sw	zero,16(s1)
    80002d9c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002da0:	00251513          	slli	a0,a0,0x2
    80002da4:	ffffe097          	auipc	ra,0xffffe
    80002da8:	490080e7          	jalr	1168(ra) # 80001234 <_Z9mem_allocm>
    80002dac:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002db0:	01000513          	li	a0,16
    80002db4:	fffff097          	auipc	ra,0xfffff
    80002db8:	f00080e7          	jalr	-256(ra) # 80001cb4 <_Znwm>
};


class Semaphore {
public:
    Semaphore (unsigned init = 1){
    80002dbc:	00004917          	auipc	s2,0x4
    80002dc0:	5c493903          	ld	s2,1476(s2) # 80007380 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002dc4:	01090913          	addi	s2,s2,16
    80002dc8:	01253023          	sd	s2,0(a0)
    80002dcc:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002dd0:	01000513          	li	a0,16
    80002dd4:	fffff097          	auipc	ra,0xfffff
    80002dd8:	ee0080e7          	jalr	-288(ra) # 80001cb4 <_Znwm>
    80002ddc:	01253023          	sd	s2,0(a0)
    80002de0:	00a4bc23          	sd	a0,24(s1)
    mutexHead = new Semaphore(1);
    80002de4:	01000513          	li	a0,16
    80002de8:	fffff097          	auipc	ra,0xfffff
    80002dec:	ecc080e7          	jalr	-308(ra) # 80001cb4 <_Znwm>
    80002df0:	01253023          	sd	s2,0(a0)
    80002df4:	02a4b423          	sd	a0,40(s1)
    mutexTail = new Semaphore(1);
    80002df8:	01000513          	li	a0,16
    80002dfc:	fffff097          	auipc	ra,0xfffff
    80002e00:	eb8080e7          	jalr	-328(ra) # 80001cb4 <_Znwm>
    80002e04:	01253023          	sd	s2,0(a0)
    80002e08:	02a4b823          	sd	a0,48(s1)
}
    80002e0c:	01813083          	ld	ra,24(sp)
    80002e10:	01013403          	ld	s0,16(sp)
    80002e14:	00813483          	ld	s1,8(sp)
    80002e18:	00013903          	ld	s2,0(sp)
    80002e1c:	02010113          	addi	sp,sp,32
    80002e20:	00008067          	ret

0000000080002e24 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002e24:	fe010113          	addi	sp,sp,-32
    80002e28:	00113c23          	sd	ra,24(sp)
    80002e2c:	00813823          	sd	s0,16(sp)
    80002e30:	00913423          	sd	s1,8(sp)
    80002e34:	01213023          	sd	s2,0(sp)
    80002e38:	02010413          	addi	s0,sp,32
    80002e3c:	00050493          	mv	s1,a0
    80002e40:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002e44:	01853503          	ld	a0,24(a0)
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	04c080e7          	jalr	76(ra) # 80001e94 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002e50:	0304b503          	ld	a0,48(s1)
    80002e54:	fffff097          	auipc	ra,0xfffff
    80002e58:	040080e7          	jalr	64(ra) # 80001e94 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002e5c:	0084b783          	ld	a5,8(s1)
    80002e60:	0144a703          	lw	a4,20(s1)
    80002e64:	00271713          	slli	a4,a4,0x2
    80002e68:	00e787b3          	add	a5,a5,a4
    80002e6c:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002e70:	0144a783          	lw	a5,20(s1)
    80002e74:	0017879b          	addiw	a5,a5,1
    80002e78:	0004a703          	lw	a4,0(s1)
    80002e7c:	02e7e7bb          	remw	a5,a5,a4
    80002e80:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002e84:	0304b503          	ld	a0,48(s1)
    80002e88:	fffff097          	auipc	ra,0xfffff
    80002e8c:	038080e7          	jalr	56(ra) # 80001ec0 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002e90:	0204b503          	ld	a0,32(s1)
    80002e94:	fffff097          	auipc	ra,0xfffff
    80002e98:	02c080e7          	jalr	44(ra) # 80001ec0 <_ZN9Semaphore6signalEv>

}
    80002e9c:	01813083          	ld	ra,24(sp)
    80002ea0:	01013403          	ld	s0,16(sp)
    80002ea4:	00813483          	ld	s1,8(sp)
    80002ea8:	00013903          	ld	s2,0(sp)
    80002eac:	02010113          	addi	sp,sp,32
    80002eb0:	00008067          	ret

0000000080002eb4 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002eb4:	fe010113          	addi	sp,sp,-32
    80002eb8:	00113c23          	sd	ra,24(sp)
    80002ebc:	00813823          	sd	s0,16(sp)
    80002ec0:	00913423          	sd	s1,8(sp)
    80002ec4:	01213023          	sd	s2,0(sp)
    80002ec8:	02010413          	addi	s0,sp,32
    80002ecc:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002ed0:	02053503          	ld	a0,32(a0)
    80002ed4:	fffff097          	auipc	ra,0xfffff
    80002ed8:	fc0080e7          	jalr	-64(ra) # 80001e94 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002edc:	0284b503          	ld	a0,40(s1)
    80002ee0:	fffff097          	auipc	ra,0xfffff
    80002ee4:	fb4080e7          	jalr	-76(ra) # 80001e94 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002ee8:	0084b703          	ld	a4,8(s1)
    80002eec:	0104a783          	lw	a5,16(s1)
    80002ef0:	00279693          	slli	a3,a5,0x2
    80002ef4:	00d70733          	add	a4,a4,a3
    80002ef8:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002efc:	0017879b          	addiw	a5,a5,1
    80002f00:	0004a703          	lw	a4,0(s1)
    80002f04:	02e7e7bb          	remw	a5,a5,a4
    80002f08:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002f0c:	0284b503          	ld	a0,40(s1)
    80002f10:	fffff097          	auipc	ra,0xfffff
    80002f14:	fb0080e7          	jalr	-80(ra) # 80001ec0 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002f18:	0184b503          	ld	a0,24(s1)
    80002f1c:	fffff097          	auipc	ra,0xfffff
    80002f20:	fa4080e7          	jalr	-92(ra) # 80001ec0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002f24:	00090513          	mv	a0,s2
    80002f28:	01813083          	ld	ra,24(sp)
    80002f2c:	01013403          	ld	s0,16(sp)
    80002f30:	00813483          	ld	s1,8(sp)
    80002f34:	00013903          	ld	s2,0(sp)
    80002f38:	02010113          	addi	sp,sp,32
    80002f3c:	00008067          	ret

0000000080002f40 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002f40:	fe010113          	addi	sp,sp,-32
    80002f44:	00113c23          	sd	ra,24(sp)
    80002f48:	00813823          	sd	s0,16(sp)
    80002f4c:	00913423          	sd	s1,8(sp)
    80002f50:	01213023          	sd	s2,0(sp)
    80002f54:	02010413          	addi	s0,sp,32
    80002f58:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002f5c:	02853503          	ld	a0,40(a0)
    80002f60:	fffff097          	auipc	ra,0xfffff
    80002f64:	f34080e7          	jalr	-204(ra) # 80001e94 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002f68:	0304b503          	ld	a0,48(s1)
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	f28080e7          	jalr	-216(ra) # 80001e94 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002f74:	0144a783          	lw	a5,20(s1)
    80002f78:	0104a903          	lw	s2,16(s1)
    80002f7c:	0327ce63          	blt	a5,s2,80002fb8 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002f80:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002f84:	0304b503          	ld	a0,48(s1)
    80002f88:	fffff097          	auipc	ra,0xfffff
    80002f8c:	f38080e7          	jalr	-200(ra) # 80001ec0 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002f90:	0284b503          	ld	a0,40(s1)
    80002f94:	fffff097          	auipc	ra,0xfffff
    80002f98:	f2c080e7          	jalr	-212(ra) # 80001ec0 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002f9c:	00090513          	mv	a0,s2
    80002fa0:	01813083          	ld	ra,24(sp)
    80002fa4:	01013403          	ld	s0,16(sp)
    80002fa8:	00813483          	ld	s1,8(sp)
    80002fac:	00013903          	ld	s2,0(sp)
    80002fb0:	02010113          	addi	sp,sp,32
    80002fb4:	00008067          	ret
        ret = cap - head + tail;
    80002fb8:	0004a703          	lw	a4,0(s1)
    80002fbc:	4127093b          	subw	s2,a4,s2
    80002fc0:	00f9093b          	addw	s2,s2,a5
    80002fc4:	fc1ff06f          	j	80002f84 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002fc8 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002fc8:	fe010113          	addi	sp,sp,-32
    80002fcc:	00113c23          	sd	ra,24(sp)
    80002fd0:	00813823          	sd	s0,16(sp)
    80002fd4:	00913423          	sd	s1,8(sp)
    80002fd8:	02010413          	addi	s0,sp,32
    80002fdc:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002fe0:	00a00513          	li	a0,10
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	f70080e7          	jalr	-144(ra) # 80001f54 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002fec:	00003517          	auipc	a0,0x3
    80002ff0:	11c50513          	addi	a0,a0,284 # 80006108 <CONSOLE_STATUS+0xf8>
    80002ff4:	00000097          	auipc	ra,0x0
    80002ff8:	ad0080e7          	jalr	-1328(ra) # 80002ac4 <_Z11printStringPKc>
    while (getCnt()) {
    80002ffc:	00048513          	mv	a0,s1
    80003000:	00000097          	auipc	ra,0x0
    80003004:	f40080e7          	jalr	-192(ra) # 80002f40 <_ZN9BufferCPP6getCntEv>
    80003008:	02050c63          	beqz	a0,80003040 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000300c:	0084b783          	ld	a5,8(s1)
    80003010:	0104a703          	lw	a4,16(s1)
    80003014:	00271713          	slli	a4,a4,0x2
    80003018:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000301c:	0007c503          	lbu	a0,0(a5)
    80003020:	fffff097          	auipc	ra,0xfffff
    80003024:	f34080e7          	jalr	-204(ra) # 80001f54 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003028:	0104a783          	lw	a5,16(s1)
    8000302c:	0017879b          	addiw	a5,a5,1
    80003030:	0004a703          	lw	a4,0(s1)
    80003034:	02e7e7bb          	remw	a5,a5,a4
    80003038:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000303c:	fc1ff06f          	j	80002ffc <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003040:	02100513          	li	a0,33
    80003044:	fffff097          	auipc	ra,0xfffff
    80003048:	f10080e7          	jalr	-240(ra) # 80001f54 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000304c:	00a00513          	li	a0,10
    80003050:	fffff097          	auipc	ra,0xfffff
    80003054:	f04080e7          	jalr	-252(ra) # 80001f54 <_ZN7Console4putcEc>
    mem_free(buffer);
    80003058:	0084b503          	ld	a0,8(s1)
    8000305c:	ffffe097          	auipc	ra,0xffffe
    80003060:	200080e7          	jalr	512(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    80003064:	0204b503          	ld	a0,32(s1)
    80003068:	00050863          	beqz	a0,80003078 <_ZN9BufferCPPD1Ev+0xb0>
    8000306c:	00053783          	ld	a5,0(a0)
    80003070:	0087b783          	ld	a5,8(a5)
    80003074:	000780e7          	jalr	a5
    delete spaceAvailable;
    80003078:	0184b503          	ld	a0,24(s1)
    8000307c:	00050863          	beqz	a0,8000308c <_ZN9BufferCPPD1Ev+0xc4>
    80003080:	00053783          	ld	a5,0(a0)
    80003084:	0087b783          	ld	a5,8(a5)
    80003088:	000780e7          	jalr	a5
    delete mutexTail;
    8000308c:	0304b503          	ld	a0,48(s1)
    80003090:	00050863          	beqz	a0,800030a0 <_ZN9BufferCPPD1Ev+0xd8>
    80003094:	00053783          	ld	a5,0(a0)
    80003098:	0087b783          	ld	a5,8(a5)
    8000309c:	000780e7          	jalr	a5
    delete mutexHead;
    800030a0:	0284b503          	ld	a0,40(s1)
    800030a4:	00050863          	beqz	a0,800030b4 <_ZN9BufferCPPD1Ev+0xec>
    800030a8:	00053783          	ld	a5,0(a0)
    800030ac:	0087b783          	ld	a5,8(a5)
    800030b0:	000780e7          	jalr	a5
}
    800030b4:	01813083          	ld	ra,24(sp)
    800030b8:	01013403          	ld	s0,16(sp)
    800030bc:	00813483          	ld	s1,8(sp)
    800030c0:	02010113          	addi	sp,sp,32
    800030c4:	00008067          	ret

00000000800030c8 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800030c8:	fe010113          	addi	sp,sp,-32
    800030cc:	00113c23          	sd	ra,24(sp)
    800030d0:	00813823          	sd	s0,16(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	01213023          	sd	s2,0(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00050493          	mv	s1,a0
    800030e4:	00058913          	mv	s2,a1
    800030e8:	0015879b          	addiw	a5,a1,1
    800030ec:	0007851b          	sext.w	a0,a5
    800030f0:	00f4a023          	sw	a5,0(s1)
    800030f4:	0004a823          	sw	zero,16(s1)
    800030f8:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    800030fc:	00251513          	slli	a0,a0,0x2
    80003100:	ffffe097          	auipc	ra,0xffffe
    80003104:	134080e7          	jalr	308(ra) # 80001234 <_Z9mem_allocm>
    80003108:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000310c:	00000593          	li	a1,0
    80003110:	02048513          	addi	a0,s1,32
    80003114:	ffffe097          	auipc	ra,0xffffe
    80003118:	24c080e7          	jalr	588(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    8000311c:	00090593          	mv	a1,s2
    80003120:	01848513          	addi	a0,s1,24
    80003124:	ffffe097          	auipc	ra,0xffffe
    80003128:	23c080e7          	jalr	572(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    8000312c:	00100593          	li	a1,1
    80003130:	02848513          	addi	a0,s1,40
    80003134:	ffffe097          	auipc	ra,0xffffe
    80003138:	22c080e7          	jalr	556(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    8000313c:	00100593          	li	a1,1
    80003140:	03048513          	addi	a0,s1,48
    80003144:	ffffe097          	auipc	ra,0xffffe
    80003148:	21c080e7          	jalr	540(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    8000314c:	01813083          	ld	ra,24(sp)
    80003150:	01013403          	ld	s0,16(sp)
    80003154:	00813483          	ld	s1,8(sp)
    80003158:	00013903          	ld	s2,0(sp)
    8000315c:	02010113          	addi	sp,sp,32
    80003160:	00008067          	ret

0000000080003164 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003164:	fe010113          	addi	sp,sp,-32
    80003168:	00113c23          	sd	ra,24(sp)
    8000316c:	00813823          	sd	s0,16(sp)
    80003170:	00913423          	sd	s1,8(sp)
    80003174:	01213023          	sd	s2,0(sp)
    80003178:	02010413          	addi	s0,sp,32
    8000317c:	00050493          	mv	s1,a0
    80003180:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003184:	01853503          	ld	a0,24(a0)
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	254080e7          	jalr	596(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80003190:	0304b503          	ld	a0,48(s1)
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	248080e7          	jalr	584(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    8000319c:	0084b783          	ld	a5,8(s1)
    800031a0:	0144a703          	lw	a4,20(s1)
    800031a4:	00271713          	slli	a4,a4,0x2
    800031a8:	00e787b3          	add	a5,a5,a4
    800031ac:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    800031b0:	0144a783          	lw	a5,20(s1)
    800031b4:	0017879b          	addiw	a5,a5,1
    800031b8:	0004a703          	lw	a4,0(s1)
    800031bc:	02e7e7bb          	remw	a5,a5,a4
    800031c0:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800031c4:	0304b503          	ld	a0,48(s1)
    800031c8:	ffffe097          	auipc	ra,0xffffe
    800031cc:	240080e7          	jalr	576(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    800031d0:	0204b503          	ld	a0,32(s1)
    800031d4:	ffffe097          	auipc	ra,0xffffe
    800031d8:	234080e7          	jalr	564(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>

}
    800031dc:	01813083          	ld	ra,24(sp)
    800031e0:	01013403          	ld	s0,16(sp)
    800031e4:	00813483          	ld	s1,8(sp)
    800031e8:	00013903          	ld	s2,0(sp)
    800031ec:	02010113          	addi	sp,sp,32
    800031f0:	00008067          	ret

00000000800031f4 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800031f4:	fe010113          	addi	sp,sp,-32
    800031f8:	00113c23          	sd	ra,24(sp)
    800031fc:	00813823          	sd	s0,16(sp)
    80003200:	00913423          	sd	s1,8(sp)
    80003204:	01213023          	sd	s2,0(sp)
    80003208:	02010413          	addi	s0,sp,32
    8000320c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003210:	02053503          	ld	a0,32(a0)
    80003214:	ffffe097          	auipc	ra,0xffffe
    80003218:	1c8080e7          	jalr	456(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    8000321c:	0284b503          	ld	a0,40(s1)
    80003220:	ffffe097          	auipc	ra,0xffffe
    80003224:	1bc080e7          	jalr	444(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003228:	0084b703          	ld	a4,8(s1)
    8000322c:	0104a783          	lw	a5,16(s1)
    80003230:	00279693          	slli	a3,a5,0x2
    80003234:	00d70733          	add	a4,a4,a3
    80003238:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000323c:	0017879b          	addiw	a5,a5,1
    80003240:	0004a703          	lw	a4,0(s1)
    80003244:	02e7e7bb          	remw	a5,a5,a4
    80003248:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000324c:	0284b503          	ld	a0,40(s1)
    80003250:	ffffe097          	auipc	ra,0xffffe
    80003254:	1b8080e7          	jalr	440(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80003258:	0184b503          	ld	a0,24(s1)
    8000325c:	ffffe097          	auipc	ra,0xffffe
    80003260:	1ac080e7          	jalr	428(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003264:	00090513          	mv	a0,s2
    80003268:	01813083          	ld	ra,24(sp)
    8000326c:	01013403          	ld	s0,16(sp)
    80003270:	00813483          	ld	s1,8(sp)
    80003274:	00013903          	ld	s2,0(sp)
    80003278:	02010113          	addi	sp,sp,32
    8000327c:	00008067          	ret

0000000080003280 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80003280:	fe010113          	addi	sp,sp,-32
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	00813823          	sd	s0,16(sp)
    8000328c:	00913423          	sd	s1,8(sp)
    80003290:	01213023          	sd	s2,0(sp)
    80003294:	02010413          	addi	s0,sp,32
    80003298:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    8000329c:	02853503          	ld	a0,40(a0)
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	13c080e7          	jalr	316(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    800032a8:	0304b503          	ld	a0,48(s1)
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	130080e7          	jalr	304(ra) # 800013dc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    800032b4:	0144a783          	lw	a5,20(s1)
    800032b8:	0104a903          	lw	s2,16(s1)
    800032bc:	0327ce63          	blt	a5,s2,800032f8 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    800032c0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800032c4:	0304b503          	ld	a0,48(s1)
    800032c8:	ffffe097          	auipc	ra,0xffffe
    800032cc:	140080e7          	jalr	320(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    800032d0:	0284b503          	ld	a0,40(s1)
    800032d4:	ffffe097          	auipc	ra,0xffffe
    800032d8:	134080e7          	jalr	308(ra) # 80001408 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    800032dc:	00090513          	mv	a0,s2
    800032e0:	01813083          	ld	ra,24(sp)
    800032e4:	01013403          	ld	s0,16(sp)
    800032e8:	00813483          	ld	s1,8(sp)
    800032ec:	00013903          	ld	s2,0(sp)
    800032f0:	02010113          	addi	sp,sp,32
    800032f4:	00008067          	ret
        ret = cap - head + tail;
    800032f8:	0004a703          	lw	a4,0(s1)
    800032fc:	4127093b          	subw	s2,a4,s2
    80003300:	00f9093b          	addw	s2,s2,a5
    80003304:	fc1ff06f          	j	800032c4 <_ZN6Buffer6getCntEv+0x44>

0000000080003308 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003308:	fe010113          	addi	sp,sp,-32
    8000330c:	00113c23          	sd	ra,24(sp)
    80003310:	00813823          	sd	s0,16(sp)
    80003314:	00913423          	sd	s1,8(sp)
    80003318:	02010413          	addi	s0,sp,32
    8000331c:	00050493          	mv	s1,a0
    putc('\n');
    80003320:	00a00513          	li	a0,10
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	138080e7          	jalr	312(ra) # 8000145c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000332c:	00003517          	auipc	a0,0x3
    80003330:	ddc50513          	addi	a0,a0,-548 # 80006108 <CONSOLE_STATUS+0xf8>
    80003334:	fffff097          	auipc	ra,0xfffff
    80003338:	790080e7          	jalr	1936(ra) # 80002ac4 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000333c:	00048513          	mv	a0,s1
    80003340:	00000097          	auipc	ra,0x0
    80003344:	f40080e7          	jalr	-192(ra) # 80003280 <_ZN6Buffer6getCntEv>
    80003348:	02a05c63          	blez	a0,80003380 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000334c:	0084b783          	ld	a5,8(s1)
    80003350:	0104a703          	lw	a4,16(s1)
    80003354:	00271713          	slli	a4,a4,0x2
    80003358:	00e787b3          	add	a5,a5,a4
        putc(ch);
    8000335c:	0007c503          	lbu	a0,0(a5)
    80003360:	ffffe097          	auipc	ra,0xffffe
    80003364:	0fc080e7          	jalr	252(ra) # 8000145c <_Z4putcc>
        head = (head + 1) % cap;
    80003368:	0104a783          	lw	a5,16(s1)
    8000336c:	0017879b          	addiw	a5,a5,1
    80003370:	0004a703          	lw	a4,0(s1)
    80003374:	02e7e7bb          	remw	a5,a5,a4
    80003378:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    8000337c:	fc1ff06f          	j	8000333c <_ZN6BufferD1Ev+0x34>
    __putc('!');
    80003380:	02100513          	li	a0,33
    80003384:	00002097          	auipc	ra,0x2
    80003388:	128080e7          	jalr	296(ra) # 800054ac <__putc>
    __putc('\n');
    8000338c:	00a00513          	li	a0,10
    80003390:	00002097          	auipc	ra,0x2
    80003394:	11c080e7          	jalr	284(ra) # 800054ac <__putc>
    mem_free(buffer);
    80003398:	0084b503          	ld	a0,8(s1)
    8000339c:	ffffe097          	auipc	ra,0xffffe
    800033a0:	ec0080e7          	jalr	-320(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800033a4:	0204b503          	ld	a0,32(s1)
    800033a8:	ffffe097          	auipc	ra,0xffffe
    800033ac:	fe8080e7          	jalr	-24(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    800033b0:	0184b503          	ld	a0,24(s1)
    800033b4:	ffffe097          	auipc	ra,0xffffe
    800033b8:	fdc080e7          	jalr	-36(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    800033bc:	0304b503          	ld	a0,48(s1)
    800033c0:	ffffe097          	auipc	ra,0xffffe
    800033c4:	fd0080e7          	jalr	-48(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    800033c8:	0284b503          	ld	a0,40(s1)
    800033cc:	ffffe097          	auipc	ra,0xffffe
    800033d0:	fc4080e7          	jalr	-60(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    800033d4:	01813083          	ld	ra,24(sp)
    800033d8:	01013403          	ld	s0,16(sp)
    800033dc:	00813483          	ld	s1,8(sp)
    800033e0:	02010113          	addi	sp,sp,32
    800033e4:	00008067          	ret

00000000800033e8 <start>:
    800033e8:	ff010113          	addi	sp,sp,-16
    800033ec:	00813423          	sd	s0,8(sp)
    800033f0:	01010413          	addi	s0,sp,16
    800033f4:	300027f3          	csrr	a5,mstatus
    800033f8:	ffffe737          	lui	a4,0xffffe
    800033fc:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff616f>
    80003400:	00e7f7b3          	and	a5,a5,a4
    80003404:	00001737          	lui	a4,0x1
    80003408:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000340c:	00e7e7b3          	or	a5,a5,a4
    80003410:	30079073          	csrw	mstatus,a5
    80003414:	00000797          	auipc	a5,0x0
    80003418:	16078793          	addi	a5,a5,352 # 80003574 <system_main>
    8000341c:	34179073          	csrw	mepc,a5
    80003420:	00000793          	li	a5,0
    80003424:	18079073          	csrw	satp,a5
    80003428:	000107b7          	lui	a5,0x10
    8000342c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003430:	30279073          	csrw	medeleg,a5
    80003434:	30379073          	csrw	mideleg,a5
    80003438:	104027f3          	csrr	a5,sie
    8000343c:	2227e793          	ori	a5,a5,546
    80003440:	10479073          	csrw	sie,a5
    80003444:	fff00793          	li	a5,-1
    80003448:	00a7d793          	srli	a5,a5,0xa
    8000344c:	3b079073          	csrw	pmpaddr0,a5
    80003450:	00f00793          	li	a5,15
    80003454:	3a079073          	csrw	pmpcfg0,a5
    80003458:	f14027f3          	csrr	a5,mhartid
    8000345c:	0200c737          	lui	a4,0x200c
    80003460:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003464:	0007869b          	sext.w	a3,a5
    80003468:	00269713          	slli	a4,a3,0x2
    8000346c:	000f4637          	lui	a2,0xf4
    80003470:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003474:	00d70733          	add	a4,a4,a3
    80003478:	0037979b          	slliw	a5,a5,0x3
    8000347c:	020046b7          	lui	a3,0x2004
    80003480:	00d787b3          	add	a5,a5,a3
    80003484:	00c585b3          	add	a1,a1,a2
    80003488:	00371693          	slli	a3,a4,0x3
    8000348c:	00004717          	auipc	a4,0x4
    80003490:	fa470713          	addi	a4,a4,-92 # 80007430 <timer_scratch>
    80003494:	00b7b023          	sd	a1,0(a5)
    80003498:	00d70733          	add	a4,a4,a3
    8000349c:	00f73c23          	sd	a5,24(a4)
    800034a0:	02c73023          	sd	a2,32(a4)
    800034a4:	34071073          	csrw	mscratch,a4
    800034a8:	00000797          	auipc	a5,0x0
    800034ac:	6e878793          	addi	a5,a5,1768 # 80003b90 <timervec>
    800034b0:	30579073          	csrw	mtvec,a5
    800034b4:	300027f3          	csrr	a5,mstatus
    800034b8:	0087e793          	ori	a5,a5,8
    800034bc:	30079073          	csrw	mstatus,a5
    800034c0:	304027f3          	csrr	a5,mie
    800034c4:	0807e793          	ori	a5,a5,128
    800034c8:	30479073          	csrw	mie,a5
    800034cc:	f14027f3          	csrr	a5,mhartid
    800034d0:	0007879b          	sext.w	a5,a5
    800034d4:	00078213          	mv	tp,a5
    800034d8:	30200073          	mret
    800034dc:	00813403          	ld	s0,8(sp)
    800034e0:	01010113          	addi	sp,sp,16
    800034e4:	00008067          	ret

00000000800034e8 <timerinit>:
    800034e8:	ff010113          	addi	sp,sp,-16
    800034ec:	00813423          	sd	s0,8(sp)
    800034f0:	01010413          	addi	s0,sp,16
    800034f4:	f14027f3          	csrr	a5,mhartid
    800034f8:	0200c737          	lui	a4,0x200c
    800034fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003500:	0007869b          	sext.w	a3,a5
    80003504:	00269713          	slli	a4,a3,0x2
    80003508:	000f4637          	lui	a2,0xf4
    8000350c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003510:	00d70733          	add	a4,a4,a3
    80003514:	0037979b          	slliw	a5,a5,0x3
    80003518:	020046b7          	lui	a3,0x2004
    8000351c:	00d787b3          	add	a5,a5,a3
    80003520:	00c585b3          	add	a1,a1,a2
    80003524:	00371693          	slli	a3,a4,0x3
    80003528:	00004717          	auipc	a4,0x4
    8000352c:	f0870713          	addi	a4,a4,-248 # 80007430 <timer_scratch>
    80003530:	00b7b023          	sd	a1,0(a5)
    80003534:	00d70733          	add	a4,a4,a3
    80003538:	00f73c23          	sd	a5,24(a4)
    8000353c:	02c73023          	sd	a2,32(a4)
    80003540:	34071073          	csrw	mscratch,a4
    80003544:	00000797          	auipc	a5,0x0
    80003548:	64c78793          	addi	a5,a5,1612 # 80003b90 <timervec>
    8000354c:	30579073          	csrw	mtvec,a5
    80003550:	300027f3          	csrr	a5,mstatus
    80003554:	0087e793          	ori	a5,a5,8
    80003558:	30079073          	csrw	mstatus,a5
    8000355c:	304027f3          	csrr	a5,mie
    80003560:	0807e793          	ori	a5,a5,128
    80003564:	30479073          	csrw	mie,a5
    80003568:	00813403          	ld	s0,8(sp)
    8000356c:	01010113          	addi	sp,sp,16
    80003570:	00008067          	ret

0000000080003574 <system_main>:
    80003574:	fe010113          	addi	sp,sp,-32
    80003578:	00813823          	sd	s0,16(sp)
    8000357c:	00913423          	sd	s1,8(sp)
    80003580:	00113c23          	sd	ra,24(sp)
    80003584:	02010413          	addi	s0,sp,32
    80003588:	00000097          	auipc	ra,0x0
    8000358c:	0c4080e7          	jalr	196(ra) # 8000364c <cpuid>
    80003590:	00004497          	auipc	s1,0x4
    80003594:	e2048493          	addi	s1,s1,-480 # 800073b0 <started>
    80003598:	02050263          	beqz	a0,800035bc <system_main+0x48>
    8000359c:	0004a783          	lw	a5,0(s1)
    800035a0:	0007879b          	sext.w	a5,a5
    800035a4:	fe078ce3          	beqz	a5,8000359c <system_main+0x28>
    800035a8:	0ff0000f          	fence
    800035ac:	00003517          	auipc	a0,0x3
    800035b0:	ba450513          	addi	a0,a0,-1116 # 80006150 <CONSOLE_STATUS+0x140>
    800035b4:	00001097          	auipc	ra,0x1
    800035b8:	a78080e7          	jalr	-1416(ra) # 8000402c <panic>
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	9cc080e7          	jalr	-1588(ra) # 80003f88 <consoleinit>
    800035c4:	00001097          	auipc	ra,0x1
    800035c8:	158080e7          	jalr	344(ra) # 8000471c <printfinit>
    800035cc:	00003517          	auipc	a0,0x3
    800035d0:	a8c50513          	addi	a0,a0,-1396 # 80006058 <CONSOLE_STATUS+0x48>
    800035d4:	00001097          	auipc	ra,0x1
    800035d8:	ab4080e7          	jalr	-1356(ra) # 80004088 <__printf>
    800035dc:	00003517          	auipc	a0,0x3
    800035e0:	b4450513          	addi	a0,a0,-1212 # 80006120 <CONSOLE_STATUS+0x110>
    800035e4:	00001097          	auipc	ra,0x1
    800035e8:	aa4080e7          	jalr	-1372(ra) # 80004088 <__printf>
    800035ec:	00003517          	auipc	a0,0x3
    800035f0:	a6c50513          	addi	a0,a0,-1428 # 80006058 <CONSOLE_STATUS+0x48>
    800035f4:	00001097          	auipc	ra,0x1
    800035f8:	a94080e7          	jalr	-1388(ra) # 80004088 <__printf>
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	4ac080e7          	jalr	1196(ra) # 80004aa8 <kinit>
    80003604:	00000097          	auipc	ra,0x0
    80003608:	148080e7          	jalr	328(ra) # 8000374c <trapinit>
    8000360c:	00000097          	auipc	ra,0x0
    80003610:	16c080e7          	jalr	364(ra) # 80003778 <trapinithart>
    80003614:	00000097          	auipc	ra,0x0
    80003618:	5bc080e7          	jalr	1468(ra) # 80003bd0 <plicinit>
    8000361c:	00000097          	auipc	ra,0x0
    80003620:	5dc080e7          	jalr	1500(ra) # 80003bf8 <plicinithart>
    80003624:	00000097          	auipc	ra,0x0
    80003628:	078080e7          	jalr	120(ra) # 8000369c <userinit>
    8000362c:	0ff0000f          	fence
    80003630:	00100793          	li	a5,1
    80003634:	00003517          	auipc	a0,0x3
    80003638:	b0450513          	addi	a0,a0,-1276 # 80006138 <CONSOLE_STATUS+0x128>
    8000363c:	00f4a023          	sw	a5,0(s1)
    80003640:	00001097          	auipc	ra,0x1
    80003644:	a48080e7          	jalr	-1464(ra) # 80004088 <__printf>
    80003648:	0000006f          	j	80003648 <system_main+0xd4>

000000008000364c <cpuid>:
    8000364c:	ff010113          	addi	sp,sp,-16
    80003650:	00813423          	sd	s0,8(sp)
    80003654:	01010413          	addi	s0,sp,16
    80003658:	00020513          	mv	a0,tp
    8000365c:	00813403          	ld	s0,8(sp)
    80003660:	0005051b          	sext.w	a0,a0
    80003664:	01010113          	addi	sp,sp,16
    80003668:	00008067          	ret

000000008000366c <mycpu>:
    8000366c:	ff010113          	addi	sp,sp,-16
    80003670:	00813423          	sd	s0,8(sp)
    80003674:	01010413          	addi	s0,sp,16
    80003678:	00020793          	mv	a5,tp
    8000367c:	00813403          	ld	s0,8(sp)
    80003680:	0007879b          	sext.w	a5,a5
    80003684:	00779793          	slli	a5,a5,0x7
    80003688:	00005517          	auipc	a0,0x5
    8000368c:	dd850513          	addi	a0,a0,-552 # 80008460 <cpus>
    80003690:	00f50533          	add	a0,a0,a5
    80003694:	01010113          	addi	sp,sp,16
    80003698:	00008067          	ret

000000008000369c <userinit>:
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00813423          	sd	s0,8(sp)
    800036a4:	01010413          	addi	s0,sp,16
    800036a8:	00813403          	ld	s0,8(sp)
    800036ac:	01010113          	addi	sp,sp,16
    800036b0:	ffffe317          	auipc	t1,0xffffe
    800036b4:	57030067          	jr	1392(t1) # 80001c20 <main>

00000000800036b8 <either_copyout>:
    800036b8:	ff010113          	addi	sp,sp,-16
    800036bc:	00813023          	sd	s0,0(sp)
    800036c0:	00113423          	sd	ra,8(sp)
    800036c4:	01010413          	addi	s0,sp,16
    800036c8:	02051663          	bnez	a0,800036f4 <either_copyout+0x3c>
    800036cc:	00058513          	mv	a0,a1
    800036d0:	00060593          	mv	a1,a2
    800036d4:	0006861b          	sext.w	a2,a3
    800036d8:	00002097          	auipc	ra,0x2
    800036dc:	c5c080e7          	jalr	-932(ra) # 80005334 <__memmove>
    800036e0:	00813083          	ld	ra,8(sp)
    800036e4:	00013403          	ld	s0,0(sp)
    800036e8:	00000513          	li	a0,0
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret
    800036f4:	00003517          	auipc	a0,0x3
    800036f8:	a8450513          	addi	a0,a0,-1404 # 80006178 <CONSOLE_STATUS+0x168>
    800036fc:	00001097          	auipc	ra,0x1
    80003700:	930080e7          	jalr	-1744(ra) # 8000402c <panic>

0000000080003704 <either_copyin>:
    80003704:	ff010113          	addi	sp,sp,-16
    80003708:	00813023          	sd	s0,0(sp)
    8000370c:	00113423          	sd	ra,8(sp)
    80003710:	01010413          	addi	s0,sp,16
    80003714:	02059463          	bnez	a1,8000373c <either_copyin+0x38>
    80003718:	00060593          	mv	a1,a2
    8000371c:	0006861b          	sext.w	a2,a3
    80003720:	00002097          	auipc	ra,0x2
    80003724:	c14080e7          	jalr	-1004(ra) # 80005334 <__memmove>
    80003728:	00813083          	ld	ra,8(sp)
    8000372c:	00013403          	ld	s0,0(sp)
    80003730:	00000513          	li	a0,0
    80003734:	01010113          	addi	sp,sp,16
    80003738:	00008067          	ret
    8000373c:	00003517          	auipc	a0,0x3
    80003740:	a6450513          	addi	a0,a0,-1436 # 800061a0 <CONSOLE_STATUS+0x190>
    80003744:	00001097          	auipc	ra,0x1
    80003748:	8e8080e7          	jalr	-1816(ra) # 8000402c <panic>

000000008000374c <trapinit>:
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00813423          	sd	s0,8(sp)
    80003754:	01010413          	addi	s0,sp,16
    80003758:	00813403          	ld	s0,8(sp)
    8000375c:	00003597          	auipc	a1,0x3
    80003760:	a6c58593          	addi	a1,a1,-1428 # 800061c8 <CONSOLE_STATUS+0x1b8>
    80003764:	00005517          	auipc	a0,0x5
    80003768:	d7c50513          	addi	a0,a0,-644 # 800084e0 <tickslock>
    8000376c:	01010113          	addi	sp,sp,16
    80003770:	00001317          	auipc	t1,0x1
    80003774:	5c830067          	jr	1480(t1) # 80004d38 <initlock>

0000000080003778 <trapinithart>:
    80003778:	ff010113          	addi	sp,sp,-16
    8000377c:	00813423          	sd	s0,8(sp)
    80003780:	01010413          	addi	s0,sp,16
    80003784:	00000797          	auipc	a5,0x0
    80003788:	2fc78793          	addi	a5,a5,764 # 80003a80 <kernelvec>
    8000378c:	10579073          	csrw	stvec,a5
    80003790:	00813403          	ld	s0,8(sp)
    80003794:	01010113          	addi	sp,sp,16
    80003798:	00008067          	ret

000000008000379c <usertrap>:
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
    800037a8:	00813403          	ld	s0,8(sp)
    800037ac:	01010113          	addi	sp,sp,16
    800037b0:	00008067          	ret

00000000800037b4 <usertrapret>:
    800037b4:	ff010113          	addi	sp,sp,-16
    800037b8:	00813423          	sd	s0,8(sp)
    800037bc:	01010413          	addi	s0,sp,16
    800037c0:	00813403          	ld	s0,8(sp)
    800037c4:	01010113          	addi	sp,sp,16
    800037c8:	00008067          	ret

00000000800037cc <kerneltrap>:
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00813823          	sd	s0,16(sp)
    800037d4:	00113c23          	sd	ra,24(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    800037e0:	142025f3          	csrr	a1,scause
    800037e4:	100027f3          	csrr	a5,sstatus
    800037e8:	0027f793          	andi	a5,a5,2
    800037ec:	10079c63          	bnez	a5,80003904 <kerneltrap+0x138>
    800037f0:	142027f3          	csrr	a5,scause
    800037f4:	0207ce63          	bltz	a5,80003830 <kerneltrap+0x64>
    800037f8:	00003517          	auipc	a0,0x3
    800037fc:	a1850513          	addi	a0,a0,-1512 # 80006210 <CONSOLE_STATUS+0x200>
    80003800:	00001097          	auipc	ra,0x1
    80003804:	888080e7          	jalr	-1912(ra) # 80004088 <__printf>
    80003808:	141025f3          	csrr	a1,sepc
    8000380c:	14302673          	csrr	a2,stval
    80003810:	00003517          	auipc	a0,0x3
    80003814:	a1050513          	addi	a0,a0,-1520 # 80006220 <CONSOLE_STATUS+0x210>
    80003818:	00001097          	auipc	ra,0x1
    8000381c:	870080e7          	jalr	-1936(ra) # 80004088 <__printf>
    80003820:	00003517          	auipc	a0,0x3
    80003824:	a1850513          	addi	a0,a0,-1512 # 80006238 <CONSOLE_STATUS+0x228>
    80003828:	00001097          	auipc	ra,0x1
    8000382c:	804080e7          	jalr	-2044(ra) # 8000402c <panic>
    80003830:	0ff7f713          	andi	a4,a5,255
    80003834:	00900693          	li	a3,9
    80003838:	04d70063          	beq	a4,a3,80003878 <kerneltrap+0xac>
    8000383c:	fff00713          	li	a4,-1
    80003840:	03f71713          	slli	a4,a4,0x3f
    80003844:	00170713          	addi	a4,a4,1
    80003848:	fae798e3          	bne	a5,a4,800037f8 <kerneltrap+0x2c>
    8000384c:	00000097          	auipc	ra,0x0
    80003850:	e00080e7          	jalr	-512(ra) # 8000364c <cpuid>
    80003854:	06050663          	beqz	a0,800038c0 <kerneltrap+0xf4>
    80003858:	144027f3          	csrr	a5,sip
    8000385c:	ffd7f793          	andi	a5,a5,-3
    80003860:	14479073          	csrw	sip,a5
    80003864:	01813083          	ld	ra,24(sp)
    80003868:	01013403          	ld	s0,16(sp)
    8000386c:	00813483          	ld	s1,8(sp)
    80003870:	02010113          	addi	sp,sp,32
    80003874:	00008067          	ret
    80003878:	00000097          	auipc	ra,0x0
    8000387c:	3cc080e7          	jalr	972(ra) # 80003c44 <plic_claim>
    80003880:	00a00793          	li	a5,10
    80003884:	00050493          	mv	s1,a0
    80003888:	06f50863          	beq	a0,a5,800038f8 <kerneltrap+0x12c>
    8000388c:	fc050ce3          	beqz	a0,80003864 <kerneltrap+0x98>
    80003890:	00050593          	mv	a1,a0
    80003894:	00003517          	auipc	a0,0x3
    80003898:	95c50513          	addi	a0,a0,-1700 # 800061f0 <CONSOLE_STATUS+0x1e0>
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	7ec080e7          	jalr	2028(ra) # 80004088 <__printf>
    800038a4:	01013403          	ld	s0,16(sp)
    800038a8:	01813083          	ld	ra,24(sp)
    800038ac:	00048513          	mv	a0,s1
    800038b0:	00813483          	ld	s1,8(sp)
    800038b4:	02010113          	addi	sp,sp,32
    800038b8:	00000317          	auipc	t1,0x0
    800038bc:	3c430067          	jr	964(t1) # 80003c7c <plic_complete>
    800038c0:	00005517          	auipc	a0,0x5
    800038c4:	c2050513          	addi	a0,a0,-992 # 800084e0 <tickslock>
    800038c8:	00001097          	auipc	ra,0x1
    800038cc:	494080e7          	jalr	1172(ra) # 80004d5c <acquire>
    800038d0:	00004717          	auipc	a4,0x4
    800038d4:	ae470713          	addi	a4,a4,-1308 # 800073b4 <ticks>
    800038d8:	00072783          	lw	a5,0(a4)
    800038dc:	00005517          	auipc	a0,0x5
    800038e0:	c0450513          	addi	a0,a0,-1020 # 800084e0 <tickslock>
    800038e4:	0017879b          	addiw	a5,a5,1
    800038e8:	00f72023          	sw	a5,0(a4)
    800038ec:	00001097          	auipc	ra,0x1
    800038f0:	53c080e7          	jalr	1340(ra) # 80004e28 <release>
    800038f4:	f65ff06f          	j	80003858 <kerneltrap+0x8c>
    800038f8:	00001097          	auipc	ra,0x1
    800038fc:	098080e7          	jalr	152(ra) # 80004990 <uartintr>
    80003900:	fa5ff06f          	j	800038a4 <kerneltrap+0xd8>
    80003904:	00003517          	auipc	a0,0x3
    80003908:	8cc50513          	addi	a0,a0,-1844 # 800061d0 <CONSOLE_STATUS+0x1c0>
    8000390c:	00000097          	auipc	ra,0x0
    80003910:	720080e7          	jalr	1824(ra) # 8000402c <panic>

0000000080003914 <clockintr>:
    80003914:	fe010113          	addi	sp,sp,-32
    80003918:	00813823          	sd	s0,16(sp)
    8000391c:	00913423          	sd	s1,8(sp)
    80003920:	00113c23          	sd	ra,24(sp)
    80003924:	02010413          	addi	s0,sp,32
    80003928:	00005497          	auipc	s1,0x5
    8000392c:	bb848493          	addi	s1,s1,-1096 # 800084e0 <tickslock>
    80003930:	00048513          	mv	a0,s1
    80003934:	00001097          	auipc	ra,0x1
    80003938:	428080e7          	jalr	1064(ra) # 80004d5c <acquire>
    8000393c:	00004717          	auipc	a4,0x4
    80003940:	a7870713          	addi	a4,a4,-1416 # 800073b4 <ticks>
    80003944:	00072783          	lw	a5,0(a4)
    80003948:	01013403          	ld	s0,16(sp)
    8000394c:	01813083          	ld	ra,24(sp)
    80003950:	00048513          	mv	a0,s1
    80003954:	0017879b          	addiw	a5,a5,1
    80003958:	00813483          	ld	s1,8(sp)
    8000395c:	00f72023          	sw	a5,0(a4)
    80003960:	02010113          	addi	sp,sp,32
    80003964:	00001317          	auipc	t1,0x1
    80003968:	4c430067          	jr	1220(t1) # 80004e28 <release>

000000008000396c <devintr>:
    8000396c:	142027f3          	csrr	a5,scause
    80003970:	00000513          	li	a0,0
    80003974:	0007c463          	bltz	a5,8000397c <devintr+0x10>
    80003978:	00008067          	ret
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00113c23          	sd	ra,24(sp)
    80003988:	00913423          	sd	s1,8(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	0ff7f713          	andi	a4,a5,255
    80003994:	00900693          	li	a3,9
    80003998:	04d70c63          	beq	a4,a3,800039f0 <devintr+0x84>
    8000399c:	fff00713          	li	a4,-1
    800039a0:	03f71713          	slli	a4,a4,0x3f
    800039a4:	00170713          	addi	a4,a4,1
    800039a8:	00e78c63          	beq	a5,a4,800039c0 <devintr+0x54>
    800039ac:	01813083          	ld	ra,24(sp)
    800039b0:	01013403          	ld	s0,16(sp)
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret
    800039c0:	00000097          	auipc	ra,0x0
    800039c4:	c8c080e7          	jalr	-884(ra) # 8000364c <cpuid>
    800039c8:	06050663          	beqz	a0,80003a34 <devintr+0xc8>
    800039cc:	144027f3          	csrr	a5,sip
    800039d0:	ffd7f793          	andi	a5,a5,-3
    800039d4:	14479073          	csrw	sip,a5
    800039d8:	01813083          	ld	ra,24(sp)
    800039dc:	01013403          	ld	s0,16(sp)
    800039e0:	00813483          	ld	s1,8(sp)
    800039e4:	00200513          	li	a0,2
    800039e8:	02010113          	addi	sp,sp,32
    800039ec:	00008067          	ret
    800039f0:	00000097          	auipc	ra,0x0
    800039f4:	254080e7          	jalr	596(ra) # 80003c44 <plic_claim>
    800039f8:	00a00793          	li	a5,10
    800039fc:	00050493          	mv	s1,a0
    80003a00:	06f50663          	beq	a0,a5,80003a6c <devintr+0x100>
    80003a04:	00100513          	li	a0,1
    80003a08:	fa0482e3          	beqz	s1,800039ac <devintr+0x40>
    80003a0c:	00048593          	mv	a1,s1
    80003a10:	00002517          	auipc	a0,0x2
    80003a14:	7e050513          	addi	a0,a0,2016 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003a18:	00000097          	auipc	ra,0x0
    80003a1c:	670080e7          	jalr	1648(ra) # 80004088 <__printf>
    80003a20:	00048513          	mv	a0,s1
    80003a24:	00000097          	auipc	ra,0x0
    80003a28:	258080e7          	jalr	600(ra) # 80003c7c <plic_complete>
    80003a2c:	00100513          	li	a0,1
    80003a30:	f7dff06f          	j	800039ac <devintr+0x40>
    80003a34:	00005517          	auipc	a0,0x5
    80003a38:	aac50513          	addi	a0,a0,-1364 # 800084e0 <tickslock>
    80003a3c:	00001097          	auipc	ra,0x1
    80003a40:	320080e7          	jalr	800(ra) # 80004d5c <acquire>
    80003a44:	00004717          	auipc	a4,0x4
    80003a48:	97070713          	addi	a4,a4,-1680 # 800073b4 <ticks>
    80003a4c:	00072783          	lw	a5,0(a4)
    80003a50:	00005517          	auipc	a0,0x5
    80003a54:	a9050513          	addi	a0,a0,-1392 # 800084e0 <tickslock>
    80003a58:	0017879b          	addiw	a5,a5,1
    80003a5c:	00f72023          	sw	a5,0(a4)
    80003a60:	00001097          	auipc	ra,0x1
    80003a64:	3c8080e7          	jalr	968(ra) # 80004e28 <release>
    80003a68:	f65ff06f          	j	800039cc <devintr+0x60>
    80003a6c:	00001097          	auipc	ra,0x1
    80003a70:	f24080e7          	jalr	-220(ra) # 80004990 <uartintr>
    80003a74:	fadff06f          	j	80003a20 <devintr+0xb4>
	...

0000000080003a80 <kernelvec>:
    80003a80:	f0010113          	addi	sp,sp,-256
    80003a84:	00113023          	sd	ra,0(sp)
    80003a88:	00213423          	sd	sp,8(sp)
    80003a8c:	00313823          	sd	gp,16(sp)
    80003a90:	00413c23          	sd	tp,24(sp)
    80003a94:	02513023          	sd	t0,32(sp)
    80003a98:	02613423          	sd	t1,40(sp)
    80003a9c:	02713823          	sd	t2,48(sp)
    80003aa0:	02813c23          	sd	s0,56(sp)
    80003aa4:	04913023          	sd	s1,64(sp)
    80003aa8:	04a13423          	sd	a0,72(sp)
    80003aac:	04b13823          	sd	a1,80(sp)
    80003ab0:	04c13c23          	sd	a2,88(sp)
    80003ab4:	06d13023          	sd	a3,96(sp)
    80003ab8:	06e13423          	sd	a4,104(sp)
    80003abc:	06f13823          	sd	a5,112(sp)
    80003ac0:	07013c23          	sd	a6,120(sp)
    80003ac4:	09113023          	sd	a7,128(sp)
    80003ac8:	09213423          	sd	s2,136(sp)
    80003acc:	09313823          	sd	s3,144(sp)
    80003ad0:	09413c23          	sd	s4,152(sp)
    80003ad4:	0b513023          	sd	s5,160(sp)
    80003ad8:	0b613423          	sd	s6,168(sp)
    80003adc:	0b713823          	sd	s7,176(sp)
    80003ae0:	0b813c23          	sd	s8,184(sp)
    80003ae4:	0d913023          	sd	s9,192(sp)
    80003ae8:	0da13423          	sd	s10,200(sp)
    80003aec:	0db13823          	sd	s11,208(sp)
    80003af0:	0dc13c23          	sd	t3,216(sp)
    80003af4:	0fd13023          	sd	t4,224(sp)
    80003af8:	0fe13423          	sd	t5,232(sp)
    80003afc:	0ff13823          	sd	t6,240(sp)
    80003b00:	ccdff0ef          	jal	ra,800037cc <kerneltrap>
    80003b04:	00013083          	ld	ra,0(sp)
    80003b08:	00813103          	ld	sp,8(sp)
    80003b0c:	01013183          	ld	gp,16(sp)
    80003b10:	02013283          	ld	t0,32(sp)
    80003b14:	02813303          	ld	t1,40(sp)
    80003b18:	03013383          	ld	t2,48(sp)
    80003b1c:	03813403          	ld	s0,56(sp)
    80003b20:	04013483          	ld	s1,64(sp)
    80003b24:	04813503          	ld	a0,72(sp)
    80003b28:	05013583          	ld	a1,80(sp)
    80003b2c:	05813603          	ld	a2,88(sp)
    80003b30:	06013683          	ld	a3,96(sp)
    80003b34:	06813703          	ld	a4,104(sp)
    80003b38:	07013783          	ld	a5,112(sp)
    80003b3c:	07813803          	ld	a6,120(sp)
    80003b40:	08013883          	ld	a7,128(sp)
    80003b44:	08813903          	ld	s2,136(sp)
    80003b48:	09013983          	ld	s3,144(sp)
    80003b4c:	09813a03          	ld	s4,152(sp)
    80003b50:	0a013a83          	ld	s5,160(sp)
    80003b54:	0a813b03          	ld	s6,168(sp)
    80003b58:	0b013b83          	ld	s7,176(sp)
    80003b5c:	0b813c03          	ld	s8,184(sp)
    80003b60:	0c013c83          	ld	s9,192(sp)
    80003b64:	0c813d03          	ld	s10,200(sp)
    80003b68:	0d013d83          	ld	s11,208(sp)
    80003b6c:	0d813e03          	ld	t3,216(sp)
    80003b70:	0e013e83          	ld	t4,224(sp)
    80003b74:	0e813f03          	ld	t5,232(sp)
    80003b78:	0f013f83          	ld	t6,240(sp)
    80003b7c:	10010113          	addi	sp,sp,256
    80003b80:	10200073          	sret
    80003b84:	00000013          	nop
    80003b88:	00000013          	nop
    80003b8c:	00000013          	nop

0000000080003b90 <timervec>:
    80003b90:	34051573          	csrrw	a0,mscratch,a0
    80003b94:	00b53023          	sd	a1,0(a0)
    80003b98:	00c53423          	sd	a2,8(a0)
    80003b9c:	00d53823          	sd	a3,16(a0)
    80003ba0:	01853583          	ld	a1,24(a0)
    80003ba4:	02053603          	ld	a2,32(a0)
    80003ba8:	0005b683          	ld	a3,0(a1)
    80003bac:	00c686b3          	add	a3,a3,a2
    80003bb0:	00d5b023          	sd	a3,0(a1)
    80003bb4:	00200593          	li	a1,2
    80003bb8:	14459073          	csrw	sip,a1
    80003bbc:	01053683          	ld	a3,16(a0)
    80003bc0:	00853603          	ld	a2,8(a0)
    80003bc4:	00053583          	ld	a1,0(a0)
    80003bc8:	34051573          	csrrw	a0,mscratch,a0
    80003bcc:	30200073          	mret

0000000080003bd0 <plicinit>:
    80003bd0:	ff010113          	addi	sp,sp,-16
    80003bd4:	00813423          	sd	s0,8(sp)
    80003bd8:	01010413          	addi	s0,sp,16
    80003bdc:	00813403          	ld	s0,8(sp)
    80003be0:	0c0007b7          	lui	a5,0xc000
    80003be4:	00100713          	li	a4,1
    80003be8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003bec:	00e7a223          	sw	a4,4(a5)
    80003bf0:	01010113          	addi	sp,sp,16
    80003bf4:	00008067          	ret

0000000080003bf8 <plicinithart>:
    80003bf8:	ff010113          	addi	sp,sp,-16
    80003bfc:	00813023          	sd	s0,0(sp)
    80003c00:	00113423          	sd	ra,8(sp)
    80003c04:	01010413          	addi	s0,sp,16
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	a44080e7          	jalr	-1468(ra) # 8000364c <cpuid>
    80003c10:	0085171b          	slliw	a4,a0,0x8
    80003c14:	0c0027b7          	lui	a5,0xc002
    80003c18:	00e787b3          	add	a5,a5,a4
    80003c1c:	40200713          	li	a4,1026
    80003c20:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003c24:	00813083          	ld	ra,8(sp)
    80003c28:	00013403          	ld	s0,0(sp)
    80003c2c:	00d5151b          	slliw	a0,a0,0xd
    80003c30:	0c2017b7          	lui	a5,0xc201
    80003c34:	00a78533          	add	a0,a5,a0
    80003c38:	00052023          	sw	zero,0(a0)
    80003c3c:	01010113          	addi	sp,sp,16
    80003c40:	00008067          	ret

0000000080003c44 <plic_claim>:
    80003c44:	ff010113          	addi	sp,sp,-16
    80003c48:	00813023          	sd	s0,0(sp)
    80003c4c:	00113423          	sd	ra,8(sp)
    80003c50:	01010413          	addi	s0,sp,16
    80003c54:	00000097          	auipc	ra,0x0
    80003c58:	9f8080e7          	jalr	-1544(ra) # 8000364c <cpuid>
    80003c5c:	00813083          	ld	ra,8(sp)
    80003c60:	00013403          	ld	s0,0(sp)
    80003c64:	00d5151b          	slliw	a0,a0,0xd
    80003c68:	0c2017b7          	lui	a5,0xc201
    80003c6c:	00a78533          	add	a0,a5,a0
    80003c70:	00452503          	lw	a0,4(a0)
    80003c74:	01010113          	addi	sp,sp,16
    80003c78:	00008067          	ret

0000000080003c7c <plic_complete>:
    80003c7c:	fe010113          	addi	sp,sp,-32
    80003c80:	00813823          	sd	s0,16(sp)
    80003c84:	00913423          	sd	s1,8(sp)
    80003c88:	00113c23          	sd	ra,24(sp)
    80003c8c:	02010413          	addi	s0,sp,32
    80003c90:	00050493          	mv	s1,a0
    80003c94:	00000097          	auipc	ra,0x0
    80003c98:	9b8080e7          	jalr	-1608(ra) # 8000364c <cpuid>
    80003c9c:	01813083          	ld	ra,24(sp)
    80003ca0:	01013403          	ld	s0,16(sp)
    80003ca4:	00d5179b          	slliw	a5,a0,0xd
    80003ca8:	0c201737          	lui	a4,0xc201
    80003cac:	00f707b3          	add	a5,a4,a5
    80003cb0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003cb4:	00813483          	ld	s1,8(sp)
    80003cb8:	02010113          	addi	sp,sp,32
    80003cbc:	00008067          	ret

0000000080003cc0 <consolewrite>:
    80003cc0:	fb010113          	addi	sp,sp,-80
    80003cc4:	04813023          	sd	s0,64(sp)
    80003cc8:	04113423          	sd	ra,72(sp)
    80003ccc:	02913c23          	sd	s1,56(sp)
    80003cd0:	03213823          	sd	s2,48(sp)
    80003cd4:	03313423          	sd	s3,40(sp)
    80003cd8:	03413023          	sd	s4,32(sp)
    80003cdc:	01513c23          	sd	s5,24(sp)
    80003ce0:	05010413          	addi	s0,sp,80
    80003ce4:	06c05c63          	blez	a2,80003d5c <consolewrite+0x9c>
    80003ce8:	00060993          	mv	s3,a2
    80003cec:	00050a13          	mv	s4,a0
    80003cf0:	00058493          	mv	s1,a1
    80003cf4:	00000913          	li	s2,0
    80003cf8:	fff00a93          	li	s5,-1
    80003cfc:	01c0006f          	j	80003d18 <consolewrite+0x58>
    80003d00:	fbf44503          	lbu	a0,-65(s0)
    80003d04:	0019091b          	addiw	s2,s2,1
    80003d08:	00148493          	addi	s1,s1,1
    80003d0c:	00001097          	auipc	ra,0x1
    80003d10:	a9c080e7          	jalr	-1380(ra) # 800047a8 <uartputc>
    80003d14:	03298063          	beq	s3,s2,80003d34 <consolewrite+0x74>
    80003d18:	00048613          	mv	a2,s1
    80003d1c:	00100693          	li	a3,1
    80003d20:	000a0593          	mv	a1,s4
    80003d24:	fbf40513          	addi	a0,s0,-65
    80003d28:	00000097          	auipc	ra,0x0
    80003d2c:	9dc080e7          	jalr	-1572(ra) # 80003704 <either_copyin>
    80003d30:	fd5518e3          	bne	a0,s5,80003d00 <consolewrite+0x40>
    80003d34:	04813083          	ld	ra,72(sp)
    80003d38:	04013403          	ld	s0,64(sp)
    80003d3c:	03813483          	ld	s1,56(sp)
    80003d40:	02813983          	ld	s3,40(sp)
    80003d44:	02013a03          	ld	s4,32(sp)
    80003d48:	01813a83          	ld	s5,24(sp)
    80003d4c:	00090513          	mv	a0,s2
    80003d50:	03013903          	ld	s2,48(sp)
    80003d54:	05010113          	addi	sp,sp,80
    80003d58:	00008067          	ret
    80003d5c:	00000913          	li	s2,0
    80003d60:	fd5ff06f          	j	80003d34 <consolewrite+0x74>

0000000080003d64 <consoleread>:
    80003d64:	f9010113          	addi	sp,sp,-112
    80003d68:	06813023          	sd	s0,96(sp)
    80003d6c:	04913c23          	sd	s1,88(sp)
    80003d70:	05213823          	sd	s2,80(sp)
    80003d74:	05313423          	sd	s3,72(sp)
    80003d78:	05413023          	sd	s4,64(sp)
    80003d7c:	03513c23          	sd	s5,56(sp)
    80003d80:	03613823          	sd	s6,48(sp)
    80003d84:	03713423          	sd	s7,40(sp)
    80003d88:	03813023          	sd	s8,32(sp)
    80003d8c:	06113423          	sd	ra,104(sp)
    80003d90:	01913c23          	sd	s9,24(sp)
    80003d94:	07010413          	addi	s0,sp,112
    80003d98:	00060b93          	mv	s7,a2
    80003d9c:	00050913          	mv	s2,a0
    80003da0:	00058c13          	mv	s8,a1
    80003da4:	00060b1b          	sext.w	s6,a2
    80003da8:	00004497          	auipc	s1,0x4
    80003dac:	76048493          	addi	s1,s1,1888 # 80008508 <cons>
    80003db0:	00400993          	li	s3,4
    80003db4:	fff00a13          	li	s4,-1
    80003db8:	00a00a93          	li	s5,10
    80003dbc:	05705e63          	blez	s7,80003e18 <consoleread+0xb4>
    80003dc0:	09c4a703          	lw	a4,156(s1)
    80003dc4:	0984a783          	lw	a5,152(s1)
    80003dc8:	0007071b          	sext.w	a4,a4
    80003dcc:	08e78463          	beq	a5,a4,80003e54 <consoleread+0xf0>
    80003dd0:	07f7f713          	andi	a4,a5,127
    80003dd4:	00e48733          	add	a4,s1,a4
    80003dd8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003ddc:	0017869b          	addiw	a3,a5,1
    80003de0:	08d4ac23          	sw	a3,152(s1)
    80003de4:	00070c9b          	sext.w	s9,a4
    80003de8:	0b370663          	beq	a4,s3,80003e94 <consoleread+0x130>
    80003dec:	00100693          	li	a3,1
    80003df0:	f9f40613          	addi	a2,s0,-97
    80003df4:	000c0593          	mv	a1,s8
    80003df8:	00090513          	mv	a0,s2
    80003dfc:	f8e40fa3          	sb	a4,-97(s0)
    80003e00:	00000097          	auipc	ra,0x0
    80003e04:	8b8080e7          	jalr	-1864(ra) # 800036b8 <either_copyout>
    80003e08:	01450863          	beq	a0,s4,80003e18 <consoleread+0xb4>
    80003e0c:	001c0c13          	addi	s8,s8,1
    80003e10:	fffb8b9b          	addiw	s7,s7,-1
    80003e14:	fb5c94e3          	bne	s9,s5,80003dbc <consoleread+0x58>
    80003e18:	000b851b          	sext.w	a0,s7
    80003e1c:	06813083          	ld	ra,104(sp)
    80003e20:	06013403          	ld	s0,96(sp)
    80003e24:	05813483          	ld	s1,88(sp)
    80003e28:	05013903          	ld	s2,80(sp)
    80003e2c:	04813983          	ld	s3,72(sp)
    80003e30:	04013a03          	ld	s4,64(sp)
    80003e34:	03813a83          	ld	s5,56(sp)
    80003e38:	02813b83          	ld	s7,40(sp)
    80003e3c:	02013c03          	ld	s8,32(sp)
    80003e40:	01813c83          	ld	s9,24(sp)
    80003e44:	40ab053b          	subw	a0,s6,a0
    80003e48:	03013b03          	ld	s6,48(sp)
    80003e4c:	07010113          	addi	sp,sp,112
    80003e50:	00008067          	ret
    80003e54:	00001097          	auipc	ra,0x1
    80003e58:	1d8080e7          	jalr	472(ra) # 8000502c <push_on>
    80003e5c:	0984a703          	lw	a4,152(s1)
    80003e60:	09c4a783          	lw	a5,156(s1)
    80003e64:	0007879b          	sext.w	a5,a5
    80003e68:	fef70ce3          	beq	a4,a5,80003e60 <consoleread+0xfc>
    80003e6c:	00001097          	auipc	ra,0x1
    80003e70:	234080e7          	jalr	564(ra) # 800050a0 <pop_on>
    80003e74:	0984a783          	lw	a5,152(s1)
    80003e78:	07f7f713          	andi	a4,a5,127
    80003e7c:	00e48733          	add	a4,s1,a4
    80003e80:	01874703          	lbu	a4,24(a4)
    80003e84:	0017869b          	addiw	a3,a5,1
    80003e88:	08d4ac23          	sw	a3,152(s1)
    80003e8c:	00070c9b          	sext.w	s9,a4
    80003e90:	f5371ee3          	bne	a4,s3,80003dec <consoleread+0x88>
    80003e94:	000b851b          	sext.w	a0,s7
    80003e98:	f96bf2e3          	bgeu	s7,s6,80003e1c <consoleread+0xb8>
    80003e9c:	08f4ac23          	sw	a5,152(s1)
    80003ea0:	f7dff06f          	j	80003e1c <consoleread+0xb8>

0000000080003ea4 <consputc>:
    80003ea4:	10000793          	li	a5,256
    80003ea8:	00f50663          	beq	a0,a5,80003eb4 <consputc+0x10>
    80003eac:	00001317          	auipc	t1,0x1
    80003eb0:	9f430067          	jr	-1548(t1) # 800048a0 <uartputc_sync>
    80003eb4:	ff010113          	addi	sp,sp,-16
    80003eb8:	00113423          	sd	ra,8(sp)
    80003ebc:	00813023          	sd	s0,0(sp)
    80003ec0:	01010413          	addi	s0,sp,16
    80003ec4:	00800513          	li	a0,8
    80003ec8:	00001097          	auipc	ra,0x1
    80003ecc:	9d8080e7          	jalr	-1576(ra) # 800048a0 <uartputc_sync>
    80003ed0:	02000513          	li	a0,32
    80003ed4:	00001097          	auipc	ra,0x1
    80003ed8:	9cc080e7          	jalr	-1588(ra) # 800048a0 <uartputc_sync>
    80003edc:	00013403          	ld	s0,0(sp)
    80003ee0:	00813083          	ld	ra,8(sp)
    80003ee4:	00800513          	li	a0,8
    80003ee8:	01010113          	addi	sp,sp,16
    80003eec:	00001317          	auipc	t1,0x1
    80003ef0:	9b430067          	jr	-1612(t1) # 800048a0 <uartputc_sync>

0000000080003ef4 <consoleintr>:
    80003ef4:	fe010113          	addi	sp,sp,-32
    80003ef8:	00813823          	sd	s0,16(sp)
    80003efc:	00913423          	sd	s1,8(sp)
    80003f00:	01213023          	sd	s2,0(sp)
    80003f04:	00113c23          	sd	ra,24(sp)
    80003f08:	02010413          	addi	s0,sp,32
    80003f0c:	00004917          	auipc	s2,0x4
    80003f10:	5fc90913          	addi	s2,s2,1532 # 80008508 <cons>
    80003f14:	00050493          	mv	s1,a0
    80003f18:	00090513          	mv	a0,s2
    80003f1c:	00001097          	auipc	ra,0x1
    80003f20:	e40080e7          	jalr	-448(ra) # 80004d5c <acquire>
    80003f24:	02048c63          	beqz	s1,80003f5c <consoleintr+0x68>
    80003f28:	0a092783          	lw	a5,160(s2)
    80003f2c:	09892703          	lw	a4,152(s2)
    80003f30:	07f00693          	li	a3,127
    80003f34:	40e7873b          	subw	a4,a5,a4
    80003f38:	02e6e263          	bltu	a3,a4,80003f5c <consoleintr+0x68>
    80003f3c:	00d00713          	li	a4,13
    80003f40:	04e48063          	beq	s1,a4,80003f80 <consoleintr+0x8c>
    80003f44:	07f7f713          	andi	a4,a5,127
    80003f48:	00e90733          	add	a4,s2,a4
    80003f4c:	0017879b          	addiw	a5,a5,1
    80003f50:	0af92023          	sw	a5,160(s2)
    80003f54:	00970c23          	sb	s1,24(a4)
    80003f58:	08f92e23          	sw	a5,156(s2)
    80003f5c:	01013403          	ld	s0,16(sp)
    80003f60:	01813083          	ld	ra,24(sp)
    80003f64:	00813483          	ld	s1,8(sp)
    80003f68:	00013903          	ld	s2,0(sp)
    80003f6c:	00004517          	auipc	a0,0x4
    80003f70:	59c50513          	addi	a0,a0,1436 # 80008508 <cons>
    80003f74:	02010113          	addi	sp,sp,32
    80003f78:	00001317          	auipc	t1,0x1
    80003f7c:	eb030067          	jr	-336(t1) # 80004e28 <release>
    80003f80:	00a00493          	li	s1,10
    80003f84:	fc1ff06f          	j	80003f44 <consoleintr+0x50>

0000000080003f88 <consoleinit>:
    80003f88:	fe010113          	addi	sp,sp,-32
    80003f8c:	00113c23          	sd	ra,24(sp)
    80003f90:	00813823          	sd	s0,16(sp)
    80003f94:	00913423          	sd	s1,8(sp)
    80003f98:	02010413          	addi	s0,sp,32
    80003f9c:	00004497          	auipc	s1,0x4
    80003fa0:	56c48493          	addi	s1,s1,1388 # 80008508 <cons>
    80003fa4:	00048513          	mv	a0,s1
    80003fa8:	00002597          	auipc	a1,0x2
    80003fac:	2a058593          	addi	a1,a1,672 # 80006248 <CONSOLE_STATUS+0x238>
    80003fb0:	00001097          	auipc	ra,0x1
    80003fb4:	d88080e7          	jalr	-632(ra) # 80004d38 <initlock>
    80003fb8:	00000097          	auipc	ra,0x0
    80003fbc:	7ac080e7          	jalr	1964(ra) # 80004764 <uartinit>
    80003fc0:	01813083          	ld	ra,24(sp)
    80003fc4:	01013403          	ld	s0,16(sp)
    80003fc8:	00000797          	auipc	a5,0x0
    80003fcc:	d9c78793          	addi	a5,a5,-612 # 80003d64 <consoleread>
    80003fd0:	0af4bc23          	sd	a5,184(s1)
    80003fd4:	00000797          	auipc	a5,0x0
    80003fd8:	cec78793          	addi	a5,a5,-788 # 80003cc0 <consolewrite>
    80003fdc:	0cf4b023          	sd	a5,192(s1)
    80003fe0:	00813483          	ld	s1,8(sp)
    80003fe4:	02010113          	addi	sp,sp,32
    80003fe8:	00008067          	ret

0000000080003fec <console_read>:
    80003fec:	ff010113          	addi	sp,sp,-16
    80003ff0:	00813423          	sd	s0,8(sp)
    80003ff4:	01010413          	addi	s0,sp,16
    80003ff8:	00813403          	ld	s0,8(sp)
    80003ffc:	00004317          	auipc	t1,0x4
    80004000:	5c433303          	ld	t1,1476(t1) # 800085c0 <devsw+0x10>
    80004004:	01010113          	addi	sp,sp,16
    80004008:	00030067          	jr	t1

000000008000400c <console_write>:
    8000400c:	ff010113          	addi	sp,sp,-16
    80004010:	00813423          	sd	s0,8(sp)
    80004014:	01010413          	addi	s0,sp,16
    80004018:	00813403          	ld	s0,8(sp)
    8000401c:	00004317          	auipc	t1,0x4
    80004020:	5ac33303          	ld	t1,1452(t1) # 800085c8 <devsw+0x18>
    80004024:	01010113          	addi	sp,sp,16
    80004028:	00030067          	jr	t1

000000008000402c <panic>:
    8000402c:	fe010113          	addi	sp,sp,-32
    80004030:	00113c23          	sd	ra,24(sp)
    80004034:	00813823          	sd	s0,16(sp)
    80004038:	00913423          	sd	s1,8(sp)
    8000403c:	02010413          	addi	s0,sp,32
    80004040:	00050493          	mv	s1,a0
    80004044:	00002517          	auipc	a0,0x2
    80004048:	20c50513          	addi	a0,a0,524 # 80006250 <CONSOLE_STATUS+0x240>
    8000404c:	00004797          	auipc	a5,0x4
    80004050:	6007ae23          	sw	zero,1564(a5) # 80008668 <pr+0x18>
    80004054:	00000097          	auipc	ra,0x0
    80004058:	034080e7          	jalr	52(ra) # 80004088 <__printf>
    8000405c:	00048513          	mv	a0,s1
    80004060:	00000097          	auipc	ra,0x0
    80004064:	028080e7          	jalr	40(ra) # 80004088 <__printf>
    80004068:	00002517          	auipc	a0,0x2
    8000406c:	ff050513          	addi	a0,a0,-16 # 80006058 <CONSOLE_STATUS+0x48>
    80004070:	00000097          	auipc	ra,0x0
    80004074:	018080e7          	jalr	24(ra) # 80004088 <__printf>
    80004078:	00100793          	li	a5,1
    8000407c:	00003717          	auipc	a4,0x3
    80004080:	32f72e23          	sw	a5,828(a4) # 800073b8 <panicked>
    80004084:	0000006f          	j	80004084 <panic+0x58>

0000000080004088 <__printf>:
    80004088:	f3010113          	addi	sp,sp,-208
    8000408c:	08813023          	sd	s0,128(sp)
    80004090:	07313423          	sd	s3,104(sp)
    80004094:	09010413          	addi	s0,sp,144
    80004098:	05813023          	sd	s8,64(sp)
    8000409c:	08113423          	sd	ra,136(sp)
    800040a0:	06913c23          	sd	s1,120(sp)
    800040a4:	07213823          	sd	s2,112(sp)
    800040a8:	07413023          	sd	s4,96(sp)
    800040ac:	05513c23          	sd	s5,88(sp)
    800040b0:	05613823          	sd	s6,80(sp)
    800040b4:	05713423          	sd	s7,72(sp)
    800040b8:	03913c23          	sd	s9,56(sp)
    800040bc:	03a13823          	sd	s10,48(sp)
    800040c0:	03b13423          	sd	s11,40(sp)
    800040c4:	00004317          	auipc	t1,0x4
    800040c8:	58c30313          	addi	t1,t1,1420 # 80008650 <pr>
    800040cc:	01832c03          	lw	s8,24(t1)
    800040d0:	00b43423          	sd	a1,8(s0)
    800040d4:	00c43823          	sd	a2,16(s0)
    800040d8:	00d43c23          	sd	a3,24(s0)
    800040dc:	02e43023          	sd	a4,32(s0)
    800040e0:	02f43423          	sd	a5,40(s0)
    800040e4:	03043823          	sd	a6,48(s0)
    800040e8:	03143c23          	sd	a7,56(s0)
    800040ec:	00050993          	mv	s3,a0
    800040f0:	4a0c1663          	bnez	s8,8000459c <__printf+0x514>
    800040f4:	60098c63          	beqz	s3,8000470c <__printf+0x684>
    800040f8:	0009c503          	lbu	a0,0(s3)
    800040fc:	00840793          	addi	a5,s0,8
    80004100:	f6f43c23          	sd	a5,-136(s0)
    80004104:	00000493          	li	s1,0
    80004108:	22050063          	beqz	a0,80004328 <__printf+0x2a0>
    8000410c:	00002a37          	lui	s4,0x2
    80004110:	00018ab7          	lui	s5,0x18
    80004114:	000f4b37          	lui	s6,0xf4
    80004118:	00989bb7          	lui	s7,0x989
    8000411c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004120:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004124:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004128:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000412c:	00148c9b          	addiw	s9,s1,1
    80004130:	02500793          	li	a5,37
    80004134:	01998933          	add	s2,s3,s9
    80004138:	38f51263          	bne	a0,a5,800044bc <__printf+0x434>
    8000413c:	00094783          	lbu	a5,0(s2)
    80004140:	00078c9b          	sext.w	s9,a5
    80004144:	1e078263          	beqz	a5,80004328 <__printf+0x2a0>
    80004148:	0024849b          	addiw	s1,s1,2
    8000414c:	07000713          	li	a4,112
    80004150:	00998933          	add	s2,s3,s1
    80004154:	38e78a63          	beq	a5,a4,800044e8 <__printf+0x460>
    80004158:	20f76863          	bltu	a4,a5,80004368 <__printf+0x2e0>
    8000415c:	42a78863          	beq	a5,a0,8000458c <__printf+0x504>
    80004160:	06400713          	li	a4,100
    80004164:	40e79663          	bne	a5,a4,80004570 <__printf+0x4e8>
    80004168:	f7843783          	ld	a5,-136(s0)
    8000416c:	0007a603          	lw	a2,0(a5)
    80004170:	00878793          	addi	a5,a5,8
    80004174:	f6f43c23          	sd	a5,-136(s0)
    80004178:	42064a63          	bltz	a2,800045ac <__printf+0x524>
    8000417c:	00a00713          	li	a4,10
    80004180:	02e677bb          	remuw	a5,a2,a4
    80004184:	00002d97          	auipc	s11,0x2
    80004188:	0f4d8d93          	addi	s11,s11,244 # 80006278 <digits>
    8000418c:	00900593          	li	a1,9
    80004190:	0006051b          	sext.w	a0,a2
    80004194:	00000c93          	li	s9,0
    80004198:	02079793          	slli	a5,a5,0x20
    8000419c:	0207d793          	srli	a5,a5,0x20
    800041a0:	00fd87b3          	add	a5,s11,a5
    800041a4:	0007c783          	lbu	a5,0(a5)
    800041a8:	02e656bb          	divuw	a3,a2,a4
    800041ac:	f8f40023          	sb	a5,-128(s0)
    800041b0:	14c5d863          	bge	a1,a2,80004300 <__printf+0x278>
    800041b4:	06300593          	li	a1,99
    800041b8:	00100c93          	li	s9,1
    800041bc:	02e6f7bb          	remuw	a5,a3,a4
    800041c0:	02079793          	slli	a5,a5,0x20
    800041c4:	0207d793          	srli	a5,a5,0x20
    800041c8:	00fd87b3          	add	a5,s11,a5
    800041cc:	0007c783          	lbu	a5,0(a5)
    800041d0:	02e6d73b          	divuw	a4,a3,a4
    800041d4:	f8f400a3          	sb	a5,-127(s0)
    800041d8:	12a5f463          	bgeu	a1,a0,80004300 <__printf+0x278>
    800041dc:	00a00693          	li	a3,10
    800041e0:	00900593          	li	a1,9
    800041e4:	02d777bb          	remuw	a5,a4,a3
    800041e8:	02079793          	slli	a5,a5,0x20
    800041ec:	0207d793          	srli	a5,a5,0x20
    800041f0:	00fd87b3          	add	a5,s11,a5
    800041f4:	0007c503          	lbu	a0,0(a5)
    800041f8:	02d757bb          	divuw	a5,a4,a3
    800041fc:	f8a40123          	sb	a0,-126(s0)
    80004200:	48e5f263          	bgeu	a1,a4,80004684 <__printf+0x5fc>
    80004204:	06300513          	li	a0,99
    80004208:	02d7f5bb          	remuw	a1,a5,a3
    8000420c:	02059593          	slli	a1,a1,0x20
    80004210:	0205d593          	srli	a1,a1,0x20
    80004214:	00bd85b3          	add	a1,s11,a1
    80004218:	0005c583          	lbu	a1,0(a1)
    8000421c:	02d7d7bb          	divuw	a5,a5,a3
    80004220:	f8b401a3          	sb	a1,-125(s0)
    80004224:	48e57263          	bgeu	a0,a4,800046a8 <__printf+0x620>
    80004228:	3e700513          	li	a0,999
    8000422c:	02d7f5bb          	remuw	a1,a5,a3
    80004230:	02059593          	slli	a1,a1,0x20
    80004234:	0205d593          	srli	a1,a1,0x20
    80004238:	00bd85b3          	add	a1,s11,a1
    8000423c:	0005c583          	lbu	a1,0(a1)
    80004240:	02d7d7bb          	divuw	a5,a5,a3
    80004244:	f8b40223          	sb	a1,-124(s0)
    80004248:	46e57663          	bgeu	a0,a4,800046b4 <__printf+0x62c>
    8000424c:	02d7f5bb          	remuw	a1,a5,a3
    80004250:	02059593          	slli	a1,a1,0x20
    80004254:	0205d593          	srli	a1,a1,0x20
    80004258:	00bd85b3          	add	a1,s11,a1
    8000425c:	0005c583          	lbu	a1,0(a1)
    80004260:	02d7d7bb          	divuw	a5,a5,a3
    80004264:	f8b402a3          	sb	a1,-123(s0)
    80004268:	46ea7863          	bgeu	s4,a4,800046d8 <__printf+0x650>
    8000426c:	02d7f5bb          	remuw	a1,a5,a3
    80004270:	02059593          	slli	a1,a1,0x20
    80004274:	0205d593          	srli	a1,a1,0x20
    80004278:	00bd85b3          	add	a1,s11,a1
    8000427c:	0005c583          	lbu	a1,0(a1)
    80004280:	02d7d7bb          	divuw	a5,a5,a3
    80004284:	f8b40323          	sb	a1,-122(s0)
    80004288:	3eeaf863          	bgeu	s5,a4,80004678 <__printf+0x5f0>
    8000428c:	02d7f5bb          	remuw	a1,a5,a3
    80004290:	02059593          	slli	a1,a1,0x20
    80004294:	0205d593          	srli	a1,a1,0x20
    80004298:	00bd85b3          	add	a1,s11,a1
    8000429c:	0005c583          	lbu	a1,0(a1)
    800042a0:	02d7d7bb          	divuw	a5,a5,a3
    800042a4:	f8b403a3          	sb	a1,-121(s0)
    800042a8:	42eb7e63          	bgeu	s6,a4,800046e4 <__printf+0x65c>
    800042ac:	02d7f5bb          	remuw	a1,a5,a3
    800042b0:	02059593          	slli	a1,a1,0x20
    800042b4:	0205d593          	srli	a1,a1,0x20
    800042b8:	00bd85b3          	add	a1,s11,a1
    800042bc:	0005c583          	lbu	a1,0(a1)
    800042c0:	02d7d7bb          	divuw	a5,a5,a3
    800042c4:	f8b40423          	sb	a1,-120(s0)
    800042c8:	42ebfc63          	bgeu	s7,a4,80004700 <__printf+0x678>
    800042cc:	02079793          	slli	a5,a5,0x20
    800042d0:	0207d793          	srli	a5,a5,0x20
    800042d4:	00fd8db3          	add	s11,s11,a5
    800042d8:	000dc703          	lbu	a4,0(s11)
    800042dc:	00a00793          	li	a5,10
    800042e0:	00900c93          	li	s9,9
    800042e4:	f8e404a3          	sb	a4,-119(s0)
    800042e8:	00065c63          	bgez	a2,80004300 <__printf+0x278>
    800042ec:	f9040713          	addi	a4,s0,-112
    800042f0:	00f70733          	add	a4,a4,a5
    800042f4:	02d00693          	li	a3,45
    800042f8:	fed70823          	sb	a3,-16(a4)
    800042fc:	00078c93          	mv	s9,a5
    80004300:	f8040793          	addi	a5,s0,-128
    80004304:	01978cb3          	add	s9,a5,s9
    80004308:	f7f40d13          	addi	s10,s0,-129
    8000430c:	000cc503          	lbu	a0,0(s9)
    80004310:	fffc8c93          	addi	s9,s9,-1
    80004314:	00000097          	auipc	ra,0x0
    80004318:	b90080e7          	jalr	-1136(ra) # 80003ea4 <consputc>
    8000431c:	ffac98e3          	bne	s9,s10,8000430c <__printf+0x284>
    80004320:	00094503          	lbu	a0,0(s2)
    80004324:	e00514e3          	bnez	a0,8000412c <__printf+0xa4>
    80004328:	1a0c1663          	bnez	s8,800044d4 <__printf+0x44c>
    8000432c:	08813083          	ld	ra,136(sp)
    80004330:	08013403          	ld	s0,128(sp)
    80004334:	07813483          	ld	s1,120(sp)
    80004338:	07013903          	ld	s2,112(sp)
    8000433c:	06813983          	ld	s3,104(sp)
    80004340:	06013a03          	ld	s4,96(sp)
    80004344:	05813a83          	ld	s5,88(sp)
    80004348:	05013b03          	ld	s6,80(sp)
    8000434c:	04813b83          	ld	s7,72(sp)
    80004350:	04013c03          	ld	s8,64(sp)
    80004354:	03813c83          	ld	s9,56(sp)
    80004358:	03013d03          	ld	s10,48(sp)
    8000435c:	02813d83          	ld	s11,40(sp)
    80004360:	0d010113          	addi	sp,sp,208
    80004364:	00008067          	ret
    80004368:	07300713          	li	a4,115
    8000436c:	1ce78a63          	beq	a5,a4,80004540 <__printf+0x4b8>
    80004370:	07800713          	li	a4,120
    80004374:	1ee79e63          	bne	a5,a4,80004570 <__printf+0x4e8>
    80004378:	f7843783          	ld	a5,-136(s0)
    8000437c:	0007a703          	lw	a4,0(a5)
    80004380:	00878793          	addi	a5,a5,8
    80004384:	f6f43c23          	sd	a5,-136(s0)
    80004388:	28074263          	bltz	a4,8000460c <__printf+0x584>
    8000438c:	00002d97          	auipc	s11,0x2
    80004390:	eecd8d93          	addi	s11,s11,-276 # 80006278 <digits>
    80004394:	00f77793          	andi	a5,a4,15
    80004398:	00fd87b3          	add	a5,s11,a5
    8000439c:	0007c683          	lbu	a3,0(a5)
    800043a0:	00f00613          	li	a2,15
    800043a4:	0007079b          	sext.w	a5,a4
    800043a8:	f8d40023          	sb	a3,-128(s0)
    800043ac:	0047559b          	srliw	a1,a4,0x4
    800043b0:	0047569b          	srliw	a3,a4,0x4
    800043b4:	00000c93          	li	s9,0
    800043b8:	0ee65063          	bge	a2,a4,80004498 <__printf+0x410>
    800043bc:	00f6f693          	andi	a3,a3,15
    800043c0:	00dd86b3          	add	a3,s11,a3
    800043c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800043c8:	0087d79b          	srliw	a5,a5,0x8
    800043cc:	00100c93          	li	s9,1
    800043d0:	f8d400a3          	sb	a3,-127(s0)
    800043d4:	0cb67263          	bgeu	a2,a1,80004498 <__printf+0x410>
    800043d8:	00f7f693          	andi	a3,a5,15
    800043dc:	00dd86b3          	add	a3,s11,a3
    800043e0:	0006c583          	lbu	a1,0(a3)
    800043e4:	00f00613          	li	a2,15
    800043e8:	0047d69b          	srliw	a3,a5,0x4
    800043ec:	f8b40123          	sb	a1,-126(s0)
    800043f0:	0047d593          	srli	a1,a5,0x4
    800043f4:	28f67e63          	bgeu	a2,a5,80004690 <__printf+0x608>
    800043f8:	00f6f693          	andi	a3,a3,15
    800043fc:	00dd86b3          	add	a3,s11,a3
    80004400:	0006c503          	lbu	a0,0(a3)
    80004404:	0087d813          	srli	a6,a5,0x8
    80004408:	0087d69b          	srliw	a3,a5,0x8
    8000440c:	f8a401a3          	sb	a0,-125(s0)
    80004410:	28b67663          	bgeu	a2,a1,8000469c <__printf+0x614>
    80004414:	00f6f693          	andi	a3,a3,15
    80004418:	00dd86b3          	add	a3,s11,a3
    8000441c:	0006c583          	lbu	a1,0(a3)
    80004420:	00c7d513          	srli	a0,a5,0xc
    80004424:	00c7d69b          	srliw	a3,a5,0xc
    80004428:	f8b40223          	sb	a1,-124(s0)
    8000442c:	29067a63          	bgeu	a2,a6,800046c0 <__printf+0x638>
    80004430:	00f6f693          	andi	a3,a3,15
    80004434:	00dd86b3          	add	a3,s11,a3
    80004438:	0006c583          	lbu	a1,0(a3)
    8000443c:	0107d813          	srli	a6,a5,0x10
    80004440:	0107d69b          	srliw	a3,a5,0x10
    80004444:	f8b402a3          	sb	a1,-123(s0)
    80004448:	28a67263          	bgeu	a2,a0,800046cc <__printf+0x644>
    8000444c:	00f6f693          	andi	a3,a3,15
    80004450:	00dd86b3          	add	a3,s11,a3
    80004454:	0006c683          	lbu	a3,0(a3)
    80004458:	0147d79b          	srliw	a5,a5,0x14
    8000445c:	f8d40323          	sb	a3,-122(s0)
    80004460:	21067663          	bgeu	a2,a6,8000466c <__printf+0x5e4>
    80004464:	02079793          	slli	a5,a5,0x20
    80004468:	0207d793          	srli	a5,a5,0x20
    8000446c:	00fd8db3          	add	s11,s11,a5
    80004470:	000dc683          	lbu	a3,0(s11)
    80004474:	00800793          	li	a5,8
    80004478:	00700c93          	li	s9,7
    8000447c:	f8d403a3          	sb	a3,-121(s0)
    80004480:	00075c63          	bgez	a4,80004498 <__printf+0x410>
    80004484:	f9040713          	addi	a4,s0,-112
    80004488:	00f70733          	add	a4,a4,a5
    8000448c:	02d00693          	li	a3,45
    80004490:	fed70823          	sb	a3,-16(a4)
    80004494:	00078c93          	mv	s9,a5
    80004498:	f8040793          	addi	a5,s0,-128
    8000449c:	01978cb3          	add	s9,a5,s9
    800044a0:	f7f40d13          	addi	s10,s0,-129
    800044a4:	000cc503          	lbu	a0,0(s9)
    800044a8:	fffc8c93          	addi	s9,s9,-1
    800044ac:	00000097          	auipc	ra,0x0
    800044b0:	9f8080e7          	jalr	-1544(ra) # 80003ea4 <consputc>
    800044b4:	ff9d18e3          	bne	s10,s9,800044a4 <__printf+0x41c>
    800044b8:	0100006f          	j	800044c8 <__printf+0x440>
    800044bc:	00000097          	auipc	ra,0x0
    800044c0:	9e8080e7          	jalr	-1560(ra) # 80003ea4 <consputc>
    800044c4:	000c8493          	mv	s1,s9
    800044c8:	00094503          	lbu	a0,0(s2)
    800044cc:	c60510e3          	bnez	a0,8000412c <__printf+0xa4>
    800044d0:	e40c0ee3          	beqz	s8,8000432c <__printf+0x2a4>
    800044d4:	00004517          	auipc	a0,0x4
    800044d8:	17c50513          	addi	a0,a0,380 # 80008650 <pr>
    800044dc:	00001097          	auipc	ra,0x1
    800044e0:	94c080e7          	jalr	-1716(ra) # 80004e28 <release>
    800044e4:	e49ff06f          	j	8000432c <__printf+0x2a4>
    800044e8:	f7843783          	ld	a5,-136(s0)
    800044ec:	03000513          	li	a0,48
    800044f0:	01000d13          	li	s10,16
    800044f4:	00878713          	addi	a4,a5,8
    800044f8:	0007bc83          	ld	s9,0(a5)
    800044fc:	f6e43c23          	sd	a4,-136(s0)
    80004500:	00000097          	auipc	ra,0x0
    80004504:	9a4080e7          	jalr	-1628(ra) # 80003ea4 <consputc>
    80004508:	07800513          	li	a0,120
    8000450c:	00000097          	auipc	ra,0x0
    80004510:	998080e7          	jalr	-1640(ra) # 80003ea4 <consputc>
    80004514:	00002d97          	auipc	s11,0x2
    80004518:	d64d8d93          	addi	s11,s11,-668 # 80006278 <digits>
    8000451c:	03ccd793          	srli	a5,s9,0x3c
    80004520:	00fd87b3          	add	a5,s11,a5
    80004524:	0007c503          	lbu	a0,0(a5)
    80004528:	fffd0d1b          	addiw	s10,s10,-1
    8000452c:	004c9c93          	slli	s9,s9,0x4
    80004530:	00000097          	auipc	ra,0x0
    80004534:	974080e7          	jalr	-1676(ra) # 80003ea4 <consputc>
    80004538:	fe0d12e3          	bnez	s10,8000451c <__printf+0x494>
    8000453c:	f8dff06f          	j	800044c8 <__printf+0x440>
    80004540:	f7843783          	ld	a5,-136(s0)
    80004544:	0007bc83          	ld	s9,0(a5)
    80004548:	00878793          	addi	a5,a5,8
    8000454c:	f6f43c23          	sd	a5,-136(s0)
    80004550:	000c9a63          	bnez	s9,80004564 <__printf+0x4dc>
    80004554:	1080006f          	j	8000465c <__printf+0x5d4>
    80004558:	001c8c93          	addi	s9,s9,1
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	948080e7          	jalr	-1720(ra) # 80003ea4 <consputc>
    80004564:	000cc503          	lbu	a0,0(s9)
    80004568:	fe0518e3          	bnez	a0,80004558 <__printf+0x4d0>
    8000456c:	f5dff06f          	j	800044c8 <__printf+0x440>
    80004570:	02500513          	li	a0,37
    80004574:	00000097          	auipc	ra,0x0
    80004578:	930080e7          	jalr	-1744(ra) # 80003ea4 <consputc>
    8000457c:	000c8513          	mv	a0,s9
    80004580:	00000097          	auipc	ra,0x0
    80004584:	924080e7          	jalr	-1756(ra) # 80003ea4 <consputc>
    80004588:	f41ff06f          	j	800044c8 <__printf+0x440>
    8000458c:	02500513          	li	a0,37
    80004590:	00000097          	auipc	ra,0x0
    80004594:	914080e7          	jalr	-1772(ra) # 80003ea4 <consputc>
    80004598:	f31ff06f          	j	800044c8 <__printf+0x440>
    8000459c:	00030513          	mv	a0,t1
    800045a0:	00000097          	auipc	ra,0x0
    800045a4:	7bc080e7          	jalr	1980(ra) # 80004d5c <acquire>
    800045a8:	b4dff06f          	j	800040f4 <__printf+0x6c>
    800045ac:	40c0053b          	negw	a0,a2
    800045b0:	00a00713          	li	a4,10
    800045b4:	02e576bb          	remuw	a3,a0,a4
    800045b8:	00002d97          	auipc	s11,0x2
    800045bc:	cc0d8d93          	addi	s11,s11,-832 # 80006278 <digits>
    800045c0:	ff700593          	li	a1,-9
    800045c4:	02069693          	slli	a3,a3,0x20
    800045c8:	0206d693          	srli	a3,a3,0x20
    800045cc:	00dd86b3          	add	a3,s11,a3
    800045d0:	0006c683          	lbu	a3,0(a3)
    800045d4:	02e557bb          	divuw	a5,a0,a4
    800045d8:	f8d40023          	sb	a3,-128(s0)
    800045dc:	10b65e63          	bge	a2,a1,800046f8 <__printf+0x670>
    800045e0:	06300593          	li	a1,99
    800045e4:	02e7f6bb          	remuw	a3,a5,a4
    800045e8:	02069693          	slli	a3,a3,0x20
    800045ec:	0206d693          	srli	a3,a3,0x20
    800045f0:	00dd86b3          	add	a3,s11,a3
    800045f4:	0006c683          	lbu	a3,0(a3)
    800045f8:	02e7d73b          	divuw	a4,a5,a4
    800045fc:	00200793          	li	a5,2
    80004600:	f8d400a3          	sb	a3,-127(s0)
    80004604:	bca5ece3          	bltu	a1,a0,800041dc <__printf+0x154>
    80004608:	ce5ff06f          	j	800042ec <__printf+0x264>
    8000460c:	40e007bb          	negw	a5,a4
    80004610:	00002d97          	auipc	s11,0x2
    80004614:	c68d8d93          	addi	s11,s11,-920 # 80006278 <digits>
    80004618:	00f7f693          	andi	a3,a5,15
    8000461c:	00dd86b3          	add	a3,s11,a3
    80004620:	0006c583          	lbu	a1,0(a3)
    80004624:	ff100613          	li	a2,-15
    80004628:	0047d69b          	srliw	a3,a5,0x4
    8000462c:	f8b40023          	sb	a1,-128(s0)
    80004630:	0047d59b          	srliw	a1,a5,0x4
    80004634:	0ac75e63          	bge	a4,a2,800046f0 <__printf+0x668>
    80004638:	00f6f693          	andi	a3,a3,15
    8000463c:	00dd86b3          	add	a3,s11,a3
    80004640:	0006c603          	lbu	a2,0(a3)
    80004644:	00f00693          	li	a3,15
    80004648:	0087d79b          	srliw	a5,a5,0x8
    8000464c:	f8c400a3          	sb	a2,-127(s0)
    80004650:	d8b6e4e3          	bltu	a3,a1,800043d8 <__printf+0x350>
    80004654:	00200793          	li	a5,2
    80004658:	e2dff06f          	j	80004484 <__printf+0x3fc>
    8000465c:	00002c97          	auipc	s9,0x2
    80004660:	bfcc8c93          	addi	s9,s9,-1028 # 80006258 <CONSOLE_STATUS+0x248>
    80004664:	02800513          	li	a0,40
    80004668:	ef1ff06f          	j	80004558 <__printf+0x4d0>
    8000466c:	00700793          	li	a5,7
    80004670:	00600c93          	li	s9,6
    80004674:	e0dff06f          	j	80004480 <__printf+0x3f8>
    80004678:	00700793          	li	a5,7
    8000467c:	00600c93          	li	s9,6
    80004680:	c69ff06f          	j	800042e8 <__printf+0x260>
    80004684:	00300793          	li	a5,3
    80004688:	00200c93          	li	s9,2
    8000468c:	c5dff06f          	j	800042e8 <__printf+0x260>
    80004690:	00300793          	li	a5,3
    80004694:	00200c93          	li	s9,2
    80004698:	de9ff06f          	j	80004480 <__printf+0x3f8>
    8000469c:	00400793          	li	a5,4
    800046a0:	00300c93          	li	s9,3
    800046a4:	dddff06f          	j	80004480 <__printf+0x3f8>
    800046a8:	00400793          	li	a5,4
    800046ac:	00300c93          	li	s9,3
    800046b0:	c39ff06f          	j	800042e8 <__printf+0x260>
    800046b4:	00500793          	li	a5,5
    800046b8:	00400c93          	li	s9,4
    800046bc:	c2dff06f          	j	800042e8 <__printf+0x260>
    800046c0:	00500793          	li	a5,5
    800046c4:	00400c93          	li	s9,4
    800046c8:	db9ff06f          	j	80004480 <__printf+0x3f8>
    800046cc:	00600793          	li	a5,6
    800046d0:	00500c93          	li	s9,5
    800046d4:	dadff06f          	j	80004480 <__printf+0x3f8>
    800046d8:	00600793          	li	a5,6
    800046dc:	00500c93          	li	s9,5
    800046e0:	c09ff06f          	j	800042e8 <__printf+0x260>
    800046e4:	00800793          	li	a5,8
    800046e8:	00700c93          	li	s9,7
    800046ec:	bfdff06f          	j	800042e8 <__printf+0x260>
    800046f0:	00100793          	li	a5,1
    800046f4:	d91ff06f          	j	80004484 <__printf+0x3fc>
    800046f8:	00100793          	li	a5,1
    800046fc:	bf1ff06f          	j	800042ec <__printf+0x264>
    80004700:	00900793          	li	a5,9
    80004704:	00800c93          	li	s9,8
    80004708:	be1ff06f          	j	800042e8 <__printf+0x260>
    8000470c:	00002517          	auipc	a0,0x2
    80004710:	b5450513          	addi	a0,a0,-1196 # 80006260 <CONSOLE_STATUS+0x250>
    80004714:	00000097          	auipc	ra,0x0
    80004718:	918080e7          	jalr	-1768(ra) # 8000402c <panic>

000000008000471c <printfinit>:
    8000471c:	fe010113          	addi	sp,sp,-32
    80004720:	00813823          	sd	s0,16(sp)
    80004724:	00913423          	sd	s1,8(sp)
    80004728:	00113c23          	sd	ra,24(sp)
    8000472c:	02010413          	addi	s0,sp,32
    80004730:	00004497          	auipc	s1,0x4
    80004734:	f2048493          	addi	s1,s1,-224 # 80008650 <pr>
    80004738:	00048513          	mv	a0,s1
    8000473c:	00002597          	auipc	a1,0x2
    80004740:	b3458593          	addi	a1,a1,-1228 # 80006270 <CONSOLE_STATUS+0x260>
    80004744:	00000097          	auipc	ra,0x0
    80004748:	5f4080e7          	jalr	1524(ra) # 80004d38 <initlock>
    8000474c:	01813083          	ld	ra,24(sp)
    80004750:	01013403          	ld	s0,16(sp)
    80004754:	0004ac23          	sw	zero,24(s1)
    80004758:	00813483          	ld	s1,8(sp)
    8000475c:	02010113          	addi	sp,sp,32
    80004760:	00008067          	ret

0000000080004764 <uartinit>:
    80004764:	ff010113          	addi	sp,sp,-16
    80004768:	00813423          	sd	s0,8(sp)
    8000476c:	01010413          	addi	s0,sp,16
    80004770:	100007b7          	lui	a5,0x10000
    80004774:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004778:	f8000713          	li	a4,-128
    8000477c:	00e781a3          	sb	a4,3(a5)
    80004780:	00300713          	li	a4,3
    80004784:	00e78023          	sb	a4,0(a5)
    80004788:	000780a3          	sb	zero,1(a5)
    8000478c:	00e781a3          	sb	a4,3(a5)
    80004790:	00700693          	li	a3,7
    80004794:	00d78123          	sb	a3,2(a5)
    80004798:	00e780a3          	sb	a4,1(a5)
    8000479c:	00813403          	ld	s0,8(sp)
    800047a0:	01010113          	addi	sp,sp,16
    800047a4:	00008067          	ret

00000000800047a8 <uartputc>:
    800047a8:	00003797          	auipc	a5,0x3
    800047ac:	c107a783          	lw	a5,-1008(a5) # 800073b8 <panicked>
    800047b0:	00078463          	beqz	a5,800047b8 <uartputc+0x10>
    800047b4:	0000006f          	j	800047b4 <uartputc+0xc>
    800047b8:	fd010113          	addi	sp,sp,-48
    800047bc:	02813023          	sd	s0,32(sp)
    800047c0:	00913c23          	sd	s1,24(sp)
    800047c4:	01213823          	sd	s2,16(sp)
    800047c8:	01313423          	sd	s3,8(sp)
    800047cc:	02113423          	sd	ra,40(sp)
    800047d0:	03010413          	addi	s0,sp,48
    800047d4:	00003917          	auipc	s2,0x3
    800047d8:	bec90913          	addi	s2,s2,-1044 # 800073c0 <uart_tx_r>
    800047dc:	00093783          	ld	a5,0(s2)
    800047e0:	00003497          	auipc	s1,0x3
    800047e4:	be848493          	addi	s1,s1,-1048 # 800073c8 <uart_tx_w>
    800047e8:	0004b703          	ld	a4,0(s1)
    800047ec:	02078693          	addi	a3,a5,32
    800047f0:	00050993          	mv	s3,a0
    800047f4:	02e69c63          	bne	a3,a4,8000482c <uartputc+0x84>
    800047f8:	00001097          	auipc	ra,0x1
    800047fc:	834080e7          	jalr	-1996(ra) # 8000502c <push_on>
    80004800:	00093783          	ld	a5,0(s2)
    80004804:	0004b703          	ld	a4,0(s1)
    80004808:	02078793          	addi	a5,a5,32
    8000480c:	00e79463          	bne	a5,a4,80004814 <uartputc+0x6c>
    80004810:	0000006f          	j	80004810 <uartputc+0x68>
    80004814:	00001097          	auipc	ra,0x1
    80004818:	88c080e7          	jalr	-1908(ra) # 800050a0 <pop_on>
    8000481c:	00093783          	ld	a5,0(s2)
    80004820:	0004b703          	ld	a4,0(s1)
    80004824:	02078693          	addi	a3,a5,32
    80004828:	fce688e3          	beq	a3,a4,800047f8 <uartputc+0x50>
    8000482c:	01f77693          	andi	a3,a4,31
    80004830:	00004597          	auipc	a1,0x4
    80004834:	e4058593          	addi	a1,a1,-448 # 80008670 <uart_tx_buf>
    80004838:	00d586b3          	add	a3,a1,a3
    8000483c:	00170713          	addi	a4,a4,1
    80004840:	01368023          	sb	s3,0(a3)
    80004844:	00e4b023          	sd	a4,0(s1)
    80004848:	10000637          	lui	a2,0x10000
    8000484c:	02f71063          	bne	a4,a5,8000486c <uartputc+0xc4>
    80004850:	0340006f          	j	80004884 <uartputc+0xdc>
    80004854:	00074703          	lbu	a4,0(a4)
    80004858:	00f93023          	sd	a5,0(s2)
    8000485c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004860:	00093783          	ld	a5,0(s2)
    80004864:	0004b703          	ld	a4,0(s1)
    80004868:	00f70e63          	beq	a4,a5,80004884 <uartputc+0xdc>
    8000486c:	00564683          	lbu	a3,5(a2)
    80004870:	01f7f713          	andi	a4,a5,31
    80004874:	00e58733          	add	a4,a1,a4
    80004878:	0206f693          	andi	a3,a3,32
    8000487c:	00178793          	addi	a5,a5,1
    80004880:	fc069ae3          	bnez	a3,80004854 <uartputc+0xac>
    80004884:	02813083          	ld	ra,40(sp)
    80004888:	02013403          	ld	s0,32(sp)
    8000488c:	01813483          	ld	s1,24(sp)
    80004890:	01013903          	ld	s2,16(sp)
    80004894:	00813983          	ld	s3,8(sp)
    80004898:	03010113          	addi	sp,sp,48
    8000489c:	00008067          	ret

00000000800048a0 <uartputc_sync>:
    800048a0:	ff010113          	addi	sp,sp,-16
    800048a4:	00813423          	sd	s0,8(sp)
    800048a8:	01010413          	addi	s0,sp,16
    800048ac:	00003717          	auipc	a4,0x3
    800048b0:	b0c72703          	lw	a4,-1268(a4) # 800073b8 <panicked>
    800048b4:	02071663          	bnez	a4,800048e0 <uartputc_sync+0x40>
    800048b8:	00050793          	mv	a5,a0
    800048bc:	100006b7          	lui	a3,0x10000
    800048c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800048c4:	02077713          	andi	a4,a4,32
    800048c8:	fe070ce3          	beqz	a4,800048c0 <uartputc_sync+0x20>
    800048cc:	0ff7f793          	andi	a5,a5,255
    800048d0:	00f68023          	sb	a5,0(a3)
    800048d4:	00813403          	ld	s0,8(sp)
    800048d8:	01010113          	addi	sp,sp,16
    800048dc:	00008067          	ret
    800048e0:	0000006f          	j	800048e0 <uartputc_sync+0x40>

00000000800048e4 <uartstart>:
    800048e4:	ff010113          	addi	sp,sp,-16
    800048e8:	00813423          	sd	s0,8(sp)
    800048ec:	01010413          	addi	s0,sp,16
    800048f0:	00003617          	auipc	a2,0x3
    800048f4:	ad060613          	addi	a2,a2,-1328 # 800073c0 <uart_tx_r>
    800048f8:	00003517          	auipc	a0,0x3
    800048fc:	ad050513          	addi	a0,a0,-1328 # 800073c8 <uart_tx_w>
    80004900:	00063783          	ld	a5,0(a2)
    80004904:	00053703          	ld	a4,0(a0)
    80004908:	04f70263          	beq	a4,a5,8000494c <uartstart+0x68>
    8000490c:	100005b7          	lui	a1,0x10000
    80004910:	00004817          	auipc	a6,0x4
    80004914:	d6080813          	addi	a6,a6,-672 # 80008670 <uart_tx_buf>
    80004918:	01c0006f          	j	80004934 <uartstart+0x50>
    8000491c:	0006c703          	lbu	a4,0(a3)
    80004920:	00f63023          	sd	a5,0(a2)
    80004924:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004928:	00063783          	ld	a5,0(a2)
    8000492c:	00053703          	ld	a4,0(a0)
    80004930:	00f70e63          	beq	a4,a5,8000494c <uartstart+0x68>
    80004934:	01f7f713          	andi	a4,a5,31
    80004938:	00e806b3          	add	a3,a6,a4
    8000493c:	0055c703          	lbu	a4,5(a1)
    80004940:	00178793          	addi	a5,a5,1
    80004944:	02077713          	andi	a4,a4,32
    80004948:	fc071ae3          	bnez	a4,8000491c <uartstart+0x38>
    8000494c:	00813403          	ld	s0,8(sp)
    80004950:	01010113          	addi	sp,sp,16
    80004954:	00008067          	ret

0000000080004958 <uartgetc>:
    80004958:	ff010113          	addi	sp,sp,-16
    8000495c:	00813423          	sd	s0,8(sp)
    80004960:	01010413          	addi	s0,sp,16
    80004964:	10000737          	lui	a4,0x10000
    80004968:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000496c:	0017f793          	andi	a5,a5,1
    80004970:	00078c63          	beqz	a5,80004988 <uartgetc+0x30>
    80004974:	00074503          	lbu	a0,0(a4)
    80004978:	0ff57513          	andi	a0,a0,255
    8000497c:	00813403          	ld	s0,8(sp)
    80004980:	01010113          	addi	sp,sp,16
    80004984:	00008067          	ret
    80004988:	fff00513          	li	a0,-1
    8000498c:	ff1ff06f          	j	8000497c <uartgetc+0x24>

0000000080004990 <uartintr>:
    80004990:	100007b7          	lui	a5,0x10000
    80004994:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004998:	0017f793          	andi	a5,a5,1
    8000499c:	0a078463          	beqz	a5,80004a44 <uartintr+0xb4>
    800049a0:	fe010113          	addi	sp,sp,-32
    800049a4:	00813823          	sd	s0,16(sp)
    800049a8:	00913423          	sd	s1,8(sp)
    800049ac:	00113c23          	sd	ra,24(sp)
    800049b0:	02010413          	addi	s0,sp,32
    800049b4:	100004b7          	lui	s1,0x10000
    800049b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800049bc:	0ff57513          	andi	a0,a0,255
    800049c0:	fffff097          	auipc	ra,0xfffff
    800049c4:	534080e7          	jalr	1332(ra) # 80003ef4 <consoleintr>
    800049c8:	0054c783          	lbu	a5,5(s1)
    800049cc:	0017f793          	andi	a5,a5,1
    800049d0:	fe0794e3          	bnez	a5,800049b8 <uartintr+0x28>
    800049d4:	00003617          	auipc	a2,0x3
    800049d8:	9ec60613          	addi	a2,a2,-1556 # 800073c0 <uart_tx_r>
    800049dc:	00003517          	auipc	a0,0x3
    800049e0:	9ec50513          	addi	a0,a0,-1556 # 800073c8 <uart_tx_w>
    800049e4:	00063783          	ld	a5,0(a2)
    800049e8:	00053703          	ld	a4,0(a0)
    800049ec:	04f70263          	beq	a4,a5,80004a30 <uartintr+0xa0>
    800049f0:	100005b7          	lui	a1,0x10000
    800049f4:	00004817          	auipc	a6,0x4
    800049f8:	c7c80813          	addi	a6,a6,-900 # 80008670 <uart_tx_buf>
    800049fc:	01c0006f          	j	80004a18 <uartintr+0x88>
    80004a00:	0006c703          	lbu	a4,0(a3)
    80004a04:	00f63023          	sd	a5,0(a2)
    80004a08:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004a0c:	00063783          	ld	a5,0(a2)
    80004a10:	00053703          	ld	a4,0(a0)
    80004a14:	00f70e63          	beq	a4,a5,80004a30 <uartintr+0xa0>
    80004a18:	01f7f713          	andi	a4,a5,31
    80004a1c:	00e806b3          	add	a3,a6,a4
    80004a20:	0055c703          	lbu	a4,5(a1)
    80004a24:	00178793          	addi	a5,a5,1
    80004a28:	02077713          	andi	a4,a4,32
    80004a2c:	fc071ae3          	bnez	a4,80004a00 <uartintr+0x70>
    80004a30:	01813083          	ld	ra,24(sp)
    80004a34:	01013403          	ld	s0,16(sp)
    80004a38:	00813483          	ld	s1,8(sp)
    80004a3c:	02010113          	addi	sp,sp,32
    80004a40:	00008067          	ret
    80004a44:	00003617          	auipc	a2,0x3
    80004a48:	97c60613          	addi	a2,a2,-1668 # 800073c0 <uart_tx_r>
    80004a4c:	00003517          	auipc	a0,0x3
    80004a50:	97c50513          	addi	a0,a0,-1668 # 800073c8 <uart_tx_w>
    80004a54:	00063783          	ld	a5,0(a2)
    80004a58:	00053703          	ld	a4,0(a0)
    80004a5c:	04f70263          	beq	a4,a5,80004aa0 <uartintr+0x110>
    80004a60:	100005b7          	lui	a1,0x10000
    80004a64:	00004817          	auipc	a6,0x4
    80004a68:	c0c80813          	addi	a6,a6,-1012 # 80008670 <uart_tx_buf>
    80004a6c:	01c0006f          	j	80004a88 <uartintr+0xf8>
    80004a70:	0006c703          	lbu	a4,0(a3)
    80004a74:	00f63023          	sd	a5,0(a2)
    80004a78:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004a7c:	00063783          	ld	a5,0(a2)
    80004a80:	00053703          	ld	a4,0(a0)
    80004a84:	02f70063          	beq	a4,a5,80004aa4 <uartintr+0x114>
    80004a88:	01f7f713          	andi	a4,a5,31
    80004a8c:	00e806b3          	add	a3,a6,a4
    80004a90:	0055c703          	lbu	a4,5(a1)
    80004a94:	00178793          	addi	a5,a5,1
    80004a98:	02077713          	andi	a4,a4,32
    80004a9c:	fc071ae3          	bnez	a4,80004a70 <uartintr+0xe0>
    80004aa0:	00008067          	ret
    80004aa4:	00008067          	ret

0000000080004aa8 <kinit>:
    80004aa8:	fc010113          	addi	sp,sp,-64
    80004aac:	02913423          	sd	s1,40(sp)
    80004ab0:	fffff7b7          	lui	a5,0xfffff
    80004ab4:	00005497          	auipc	s1,0x5
    80004ab8:	bdb48493          	addi	s1,s1,-1061 # 8000968f <end+0xfff>
    80004abc:	02813823          	sd	s0,48(sp)
    80004ac0:	01313c23          	sd	s3,24(sp)
    80004ac4:	00f4f4b3          	and	s1,s1,a5
    80004ac8:	02113c23          	sd	ra,56(sp)
    80004acc:	03213023          	sd	s2,32(sp)
    80004ad0:	01413823          	sd	s4,16(sp)
    80004ad4:	01513423          	sd	s5,8(sp)
    80004ad8:	04010413          	addi	s0,sp,64
    80004adc:	000017b7          	lui	a5,0x1
    80004ae0:	01100993          	li	s3,17
    80004ae4:	00f487b3          	add	a5,s1,a5
    80004ae8:	01b99993          	slli	s3,s3,0x1b
    80004aec:	06f9e063          	bltu	s3,a5,80004b4c <kinit+0xa4>
    80004af0:	00004a97          	auipc	s5,0x4
    80004af4:	ba0a8a93          	addi	s5,s5,-1120 # 80008690 <end>
    80004af8:	0754ec63          	bltu	s1,s5,80004b70 <kinit+0xc8>
    80004afc:	0734fa63          	bgeu	s1,s3,80004b70 <kinit+0xc8>
    80004b00:	00088a37          	lui	s4,0x88
    80004b04:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004b08:	00003917          	auipc	s2,0x3
    80004b0c:	8c890913          	addi	s2,s2,-1848 # 800073d0 <kmem>
    80004b10:	00ca1a13          	slli	s4,s4,0xc
    80004b14:	0140006f          	j	80004b28 <kinit+0x80>
    80004b18:	000017b7          	lui	a5,0x1
    80004b1c:	00f484b3          	add	s1,s1,a5
    80004b20:	0554e863          	bltu	s1,s5,80004b70 <kinit+0xc8>
    80004b24:	0534f663          	bgeu	s1,s3,80004b70 <kinit+0xc8>
    80004b28:	00001637          	lui	a2,0x1
    80004b2c:	00100593          	li	a1,1
    80004b30:	00048513          	mv	a0,s1
    80004b34:	00000097          	auipc	ra,0x0
    80004b38:	5e4080e7          	jalr	1508(ra) # 80005118 <__memset>
    80004b3c:	00093783          	ld	a5,0(s2)
    80004b40:	00f4b023          	sd	a5,0(s1)
    80004b44:	00993023          	sd	s1,0(s2)
    80004b48:	fd4498e3          	bne	s1,s4,80004b18 <kinit+0x70>
    80004b4c:	03813083          	ld	ra,56(sp)
    80004b50:	03013403          	ld	s0,48(sp)
    80004b54:	02813483          	ld	s1,40(sp)
    80004b58:	02013903          	ld	s2,32(sp)
    80004b5c:	01813983          	ld	s3,24(sp)
    80004b60:	01013a03          	ld	s4,16(sp)
    80004b64:	00813a83          	ld	s5,8(sp)
    80004b68:	04010113          	addi	sp,sp,64
    80004b6c:	00008067          	ret
    80004b70:	00001517          	auipc	a0,0x1
    80004b74:	72050513          	addi	a0,a0,1824 # 80006290 <digits+0x18>
    80004b78:	fffff097          	auipc	ra,0xfffff
    80004b7c:	4b4080e7          	jalr	1204(ra) # 8000402c <panic>

0000000080004b80 <freerange>:
    80004b80:	fc010113          	addi	sp,sp,-64
    80004b84:	000017b7          	lui	a5,0x1
    80004b88:	02913423          	sd	s1,40(sp)
    80004b8c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004b90:	009504b3          	add	s1,a0,s1
    80004b94:	fffff537          	lui	a0,0xfffff
    80004b98:	02813823          	sd	s0,48(sp)
    80004b9c:	02113c23          	sd	ra,56(sp)
    80004ba0:	03213023          	sd	s2,32(sp)
    80004ba4:	01313c23          	sd	s3,24(sp)
    80004ba8:	01413823          	sd	s4,16(sp)
    80004bac:	01513423          	sd	s5,8(sp)
    80004bb0:	01613023          	sd	s6,0(sp)
    80004bb4:	04010413          	addi	s0,sp,64
    80004bb8:	00a4f4b3          	and	s1,s1,a0
    80004bbc:	00f487b3          	add	a5,s1,a5
    80004bc0:	06f5e463          	bltu	a1,a5,80004c28 <freerange+0xa8>
    80004bc4:	00004a97          	auipc	s5,0x4
    80004bc8:	acca8a93          	addi	s5,s5,-1332 # 80008690 <end>
    80004bcc:	0954e263          	bltu	s1,s5,80004c50 <freerange+0xd0>
    80004bd0:	01100993          	li	s3,17
    80004bd4:	01b99993          	slli	s3,s3,0x1b
    80004bd8:	0734fc63          	bgeu	s1,s3,80004c50 <freerange+0xd0>
    80004bdc:	00058a13          	mv	s4,a1
    80004be0:	00002917          	auipc	s2,0x2
    80004be4:	7f090913          	addi	s2,s2,2032 # 800073d0 <kmem>
    80004be8:	00002b37          	lui	s6,0x2
    80004bec:	0140006f          	j	80004c00 <freerange+0x80>
    80004bf0:	000017b7          	lui	a5,0x1
    80004bf4:	00f484b3          	add	s1,s1,a5
    80004bf8:	0554ec63          	bltu	s1,s5,80004c50 <freerange+0xd0>
    80004bfc:	0534fa63          	bgeu	s1,s3,80004c50 <freerange+0xd0>
    80004c00:	00001637          	lui	a2,0x1
    80004c04:	00100593          	li	a1,1
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	50c080e7          	jalr	1292(ra) # 80005118 <__memset>
    80004c14:	00093703          	ld	a4,0(s2)
    80004c18:	016487b3          	add	a5,s1,s6
    80004c1c:	00e4b023          	sd	a4,0(s1)
    80004c20:	00993023          	sd	s1,0(s2)
    80004c24:	fcfa76e3          	bgeu	s4,a5,80004bf0 <freerange+0x70>
    80004c28:	03813083          	ld	ra,56(sp)
    80004c2c:	03013403          	ld	s0,48(sp)
    80004c30:	02813483          	ld	s1,40(sp)
    80004c34:	02013903          	ld	s2,32(sp)
    80004c38:	01813983          	ld	s3,24(sp)
    80004c3c:	01013a03          	ld	s4,16(sp)
    80004c40:	00813a83          	ld	s5,8(sp)
    80004c44:	00013b03          	ld	s6,0(sp)
    80004c48:	04010113          	addi	sp,sp,64
    80004c4c:	00008067          	ret
    80004c50:	00001517          	auipc	a0,0x1
    80004c54:	64050513          	addi	a0,a0,1600 # 80006290 <digits+0x18>
    80004c58:	fffff097          	auipc	ra,0xfffff
    80004c5c:	3d4080e7          	jalr	980(ra) # 8000402c <panic>

0000000080004c60 <kfree>:
    80004c60:	fe010113          	addi	sp,sp,-32
    80004c64:	00813823          	sd	s0,16(sp)
    80004c68:	00113c23          	sd	ra,24(sp)
    80004c6c:	00913423          	sd	s1,8(sp)
    80004c70:	02010413          	addi	s0,sp,32
    80004c74:	03451793          	slli	a5,a0,0x34
    80004c78:	04079c63          	bnez	a5,80004cd0 <kfree+0x70>
    80004c7c:	00004797          	auipc	a5,0x4
    80004c80:	a1478793          	addi	a5,a5,-1516 # 80008690 <end>
    80004c84:	00050493          	mv	s1,a0
    80004c88:	04f56463          	bltu	a0,a5,80004cd0 <kfree+0x70>
    80004c8c:	01100793          	li	a5,17
    80004c90:	01b79793          	slli	a5,a5,0x1b
    80004c94:	02f57e63          	bgeu	a0,a5,80004cd0 <kfree+0x70>
    80004c98:	00001637          	lui	a2,0x1
    80004c9c:	00100593          	li	a1,1
    80004ca0:	00000097          	auipc	ra,0x0
    80004ca4:	478080e7          	jalr	1144(ra) # 80005118 <__memset>
    80004ca8:	00002797          	auipc	a5,0x2
    80004cac:	72878793          	addi	a5,a5,1832 # 800073d0 <kmem>
    80004cb0:	0007b703          	ld	a4,0(a5)
    80004cb4:	01813083          	ld	ra,24(sp)
    80004cb8:	01013403          	ld	s0,16(sp)
    80004cbc:	00e4b023          	sd	a4,0(s1)
    80004cc0:	0097b023          	sd	s1,0(a5)
    80004cc4:	00813483          	ld	s1,8(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret
    80004cd0:	00001517          	auipc	a0,0x1
    80004cd4:	5c050513          	addi	a0,a0,1472 # 80006290 <digits+0x18>
    80004cd8:	fffff097          	auipc	ra,0xfffff
    80004cdc:	354080e7          	jalr	852(ra) # 8000402c <panic>

0000000080004ce0 <kalloc>:
    80004ce0:	fe010113          	addi	sp,sp,-32
    80004ce4:	00813823          	sd	s0,16(sp)
    80004ce8:	00913423          	sd	s1,8(sp)
    80004cec:	00113c23          	sd	ra,24(sp)
    80004cf0:	02010413          	addi	s0,sp,32
    80004cf4:	00002797          	auipc	a5,0x2
    80004cf8:	6dc78793          	addi	a5,a5,1756 # 800073d0 <kmem>
    80004cfc:	0007b483          	ld	s1,0(a5)
    80004d00:	02048063          	beqz	s1,80004d20 <kalloc+0x40>
    80004d04:	0004b703          	ld	a4,0(s1)
    80004d08:	00001637          	lui	a2,0x1
    80004d0c:	00500593          	li	a1,5
    80004d10:	00048513          	mv	a0,s1
    80004d14:	00e7b023          	sd	a4,0(a5)
    80004d18:	00000097          	auipc	ra,0x0
    80004d1c:	400080e7          	jalr	1024(ra) # 80005118 <__memset>
    80004d20:	01813083          	ld	ra,24(sp)
    80004d24:	01013403          	ld	s0,16(sp)
    80004d28:	00048513          	mv	a0,s1
    80004d2c:	00813483          	ld	s1,8(sp)
    80004d30:	02010113          	addi	sp,sp,32
    80004d34:	00008067          	ret

0000000080004d38 <initlock>:
    80004d38:	ff010113          	addi	sp,sp,-16
    80004d3c:	00813423          	sd	s0,8(sp)
    80004d40:	01010413          	addi	s0,sp,16
    80004d44:	00813403          	ld	s0,8(sp)
    80004d48:	00b53423          	sd	a1,8(a0)
    80004d4c:	00052023          	sw	zero,0(a0)
    80004d50:	00053823          	sd	zero,16(a0)
    80004d54:	01010113          	addi	sp,sp,16
    80004d58:	00008067          	ret

0000000080004d5c <acquire>:
    80004d5c:	fe010113          	addi	sp,sp,-32
    80004d60:	00813823          	sd	s0,16(sp)
    80004d64:	00913423          	sd	s1,8(sp)
    80004d68:	00113c23          	sd	ra,24(sp)
    80004d6c:	01213023          	sd	s2,0(sp)
    80004d70:	02010413          	addi	s0,sp,32
    80004d74:	00050493          	mv	s1,a0
    80004d78:	10002973          	csrr	s2,sstatus
    80004d7c:	100027f3          	csrr	a5,sstatus
    80004d80:	ffd7f793          	andi	a5,a5,-3
    80004d84:	10079073          	csrw	sstatus,a5
    80004d88:	fffff097          	auipc	ra,0xfffff
    80004d8c:	8e4080e7          	jalr	-1820(ra) # 8000366c <mycpu>
    80004d90:	07852783          	lw	a5,120(a0)
    80004d94:	06078e63          	beqz	a5,80004e10 <acquire+0xb4>
    80004d98:	fffff097          	auipc	ra,0xfffff
    80004d9c:	8d4080e7          	jalr	-1836(ra) # 8000366c <mycpu>
    80004da0:	07852783          	lw	a5,120(a0)
    80004da4:	0004a703          	lw	a4,0(s1)
    80004da8:	0017879b          	addiw	a5,a5,1
    80004dac:	06f52c23          	sw	a5,120(a0)
    80004db0:	04071063          	bnez	a4,80004df0 <acquire+0x94>
    80004db4:	00100713          	li	a4,1
    80004db8:	00070793          	mv	a5,a4
    80004dbc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004dc0:	0007879b          	sext.w	a5,a5
    80004dc4:	fe079ae3          	bnez	a5,80004db8 <acquire+0x5c>
    80004dc8:	0ff0000f          	fence
    80004dcc:	fffff097          	auipc	ra,0xfffff
    80004dd0:	8a0080e7          	jalr	-1888(ra) # 8000366c <mycpu>
    80004dd4:	01813083          	ld	ra,24(sp)
    80004dd8:	01013403          	ld	s0,16(sp)
    80004ddc:	00a4b823          	sd	a0,16(s1)
    80004de0:	00013903          	ld	s2,0(sp)
    80004de4:	00813483          	ld	s1,8(sp)
    80004de8:	02010113          	addi	sp,sp,32
    80004dec:	00008067          	ret
    80004df0:	0104b903          	ld	s2,16(s1)
    80004df4:	fffff097          	auipc	ra,0xfffff
    80004df8:	878080e7          	jalr	-1928(ra) # 8000366c <mycpu>
    80004dfc:	faa91ce3          	bne	s2,a0,80004db4 <acquire+0x58>
    80004e00:	00001517          	auipc	a0,0x1
    80004e04:	49850513          	addi	a0,a0,1176 # 80006298 <digits+0x20>
    80004e08:	fffff097          	auipc	ra,0xfffff
    80004e0c:	224080e7          	jalr	548(ra) # 8000402c <panic>
    80004e10:	00195913          	srli	s2,s2,0x1
    80004e14:	fffff097          	auipc	ra,0xfffff
    80004e18:	858080e7          	jalr	-1960(ra) # 8000366c <mycpu>
    80004e1c:	00197913          	andi	s2,s2,1
    80004e20:	07252e23          	sw	s2,124(a0)
    80004e24:	f75ff06f          	j	80004d98 <acquire+0x3c>

0000000080004e28 <release>:
    80004e28:	fe010113          	addi	sp,sp,-32
    80004e2c:	00813823          	sd	s0,16(sp)
    80004e30:	00113c23          	sd	ra,24(sp)
    80004e34:	00913423          	sd	s1,8(sp)
    80004e38:	01213023          	sd	s2,0(sp)
    80004e3c:	02010413          	addi	s0,sp,32
    80004e40:	00052783          	lw	a5,0(a0)
    80004e44:	00079a63          	bnez	a5,80004e58 <release+0x30>
    80004e48:	00001517          	auipc	a0,0x1
    80004e4c:	45850513          	addi	a0,a0,1112 # 800062a0 <digits+0x28>
    80004e50:	fffff097          	auipc	ra,0xfffff
    80004e54:	1dc080e7          	jalr	476(ra) # 8000402c <panic>
    80004e58:	01053903          	ld	s2,16(a0)
    80004e5c:	00050493          	mv	s1,a0
    80004e60:	fffff097          	auipc	ra,0xfffff
    80004e64:	80c080e7          	jalr	-2036(ra) # 8000366c <mycpu>
    80004e68:	fea910e3          	bne	s2,a0,80004e48 <release+0x20>
    80004e6c:	0004b823          	sd	zero,16(s1)
    80004e70:	0ff0000f          	fence
    80004e74:	0f50000f          	fence	iorw,ow
    80004e78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004e7c:	ffffe097          	auipc	ra,0xffffe
    80004e80:	7f0080e7          	jalr	2032(ra) # 8000366c <mycpu>
    80004e84:	100027f3          	csrr	a5,sstatus
    80004e88:	0027f793          	andi	a5,a5,2
    80004e8c:	04079a63          	bnez	a5,80004ee0 <release+0xb8>
    80004e90:	07852783          	lw	a5,120(a0)
    80004e94:	02f05e63          	blez	a5,80004ed0 <release+0xa8>
    80004e98:	fff7871b          	addiw	a4,a5,-1
    80004e9c:	06e52c23          	sw	a4,120(a0)
    80004ea0:	00071c63          	bnez	a4,80004eb8 <release+0x90>
    80004ea4:	07c52783          	lw	a5,124(a0)
    80004ea8:	00078863          	beqz	a5,80004eb8 <release+0x90>
    80004eac:	100027f3          	csrr	a5,sstatus
    80004eb0:	0027e793          	ori	a5,a5,2
    80004eb4:	10079073          	csrw	sstatus,a5
    80004eb8:	01813083          	ld	ra,24(sp)
    80004ebc:	01013403          	ld	s0,16(sp)
    80004ec0:	00813483          	ld	s1,8(sp)
    80004ec4:	00013903          	ld	s2,0(sp)
    80004ec8:	02010113          	addi	sp,sp,32
    80004ecc:	00008067          	ret
    80004ed0:	00001517          	auipc	a0,0x1
    80004ed4:	3f050513          	addi	a0,a0,1008 # 800062c0 <digits+0x48>
    80004ed8:	fffff097          	auipc	ra,0xfffff
    80004edc:	154080e7          	jalr	340(ra) # 8000402c <panic>
    80004ee0:	00001517          	auipc	a0,0x1
    80004ee4:	3c850513          	addi	a0,a0,968 # 800062a8 <digits+0x30>
    80004ee8:	fffff097          	auipc	ra,0xfffff
    80004eec:	144080e7          	jalr	324(ra) # 8000402c <panic>

0000000080004ef0 <holding>:
    80004ef0:	00052783          	lw	a5,0(a0)
    80004ef4:	00079663          	bnez	a5,80004f00 <holding+0x10>
    80004ef8:	00000513          	li	a0,0
    80004efc:	00008067          	ret
    80004f00:	fe010113          	addi	sp,sp,-32
    80004f04:	00813823          	sd	s0,16(sp)
    80004f08:	00913423          	sd	s1,8(sp)
    80004f0c:	00113c23          	sd	ra,24(sp)
    80004f10:	02010413          	addi	s0,sp,32
    80004f14:	01053483          	ld	s1,16(a0)
    80004f18:	ffffe097          	auipc	ra,0xffffe
    80004f1c:	754080e7          	jalr	1876(ra) # 8000366c <mycpu>
    80004f20:	01813083          	ld	ra,24(sp)
    80004f24:	01013403          	ld	s0,16(sp)
    80004f28:	40a48533          	sub	a0,s1,a0
    80004f2c:	00153513          	seqz	a0,a0
    80004f30:	00813483          	ld	s1,8(sp)
    80004f34:	02010113          	addi	sp,sp,32
    80004f38:	00008067          	ret

0000000080004f3c <push_off>:
    80004f3c:	fe010113          	addi	sp,sp,-32
    80004f40:	00813823          	sd	s0,16(sp)
    80004f44:	00113c23          	sd	ra,24(sp)
    80004f48:	00913423          	sd	s1,8(sp)
    80004f4c:	02010413          	addi	s0,sp,32
    80004f50:	100024f3          	csrr	s1,sstatus
    80004f54:	100027f3          	csrr	a5,sstatus
    80004f58:	ffd7f793          	andi	a5,a5,-3
    80004f5c:	10079073          	csrw	sstatus,a5
    80004f60:	ffffe097          	auipc	ra,0xffffe
    80004f64:	70c080e7          	jalr	1804(ra) # 8000366c <mycpu>
    80004f68:	07852783          	lw	a5,120(a0)
    80004f6c:	02078663          	beqz	a5,80004f98 <push_off+0x5c>
    80004f70:	ffffe097          	auipc	ra,0xffffe
    80004f74:	6fc080e7          	jalr	1788(ra) # 8000366c <mycpu>
    80004f78:	07852783          	lw	a5,120(a0)
    80004f7c:	01813083          	ld	ra,24(sp)
    80004f80:	01013403          	ld	s0,16(sp)
    80004f84:	0017879b          	addiw	a5,a5,1
    80004f88:	06f52c23          	sw	a5,120(a0)
    80004f8c:	00813483          	ld	s1,8(sp)
    80004f90:	02010113          	addi	sp,sp,32
    80004f94:	00008067          	ret
    80004f98:	0014d493          	srli	s1,s1,0x1
    80004f9c:	ffffe097          	auipc	ra,0xffffe
    80004fa0:	6d0080e7          	jalr	1744(ra) # 8000366c <mycpu>
    80004fa4:	0014f493          	andi	s1,s1,1
    80004fa8:	06952e23          	sw	s1,124(a0)
    80004fac:	fc5ff06f          	j	80004f70 <push_off+0x34>

0000000080004fb0 <pop_off>:
    80004fb0:	ff010113          	addi	sp,sp,-16
    80004fb4:	00813023          	sd	s0,0(sp)
    80004fb8:	00113423          	sd	ra,8(sp)
    80004fbc:	01010413          	addi	s0,sp,16
    80004fc0:	ffffe097          	auipc	ra,0xffffe
    80004fc4:	6ac080e7          	jalr	1708(ra) # 8000366c <mycpu>
    80004fc8:	100027f3          	csrr	a5,sstatus
    80004fcc:	0027f793          	andi	a5,a5,2
    80004fd0:	04079663          	bnez	a5,8000501c <pop_off+0x6c>
    80004fd4:	07852783          	lw	a5,120(a0)
    80004fd8:	02f05a63          	blez	a5,8000500c <pop_off+0x5c>
    80004fdc:	fff7871b          	addiw	a4,a5,-1
    80004fe0:	06e52c23          	sw	a4,120(a0)
    80004fe4:	00071c63          	bnez	a4,80004ffc <pop_off+0x4c>
    80004fe8:	07c52783          	lw	a5,124(a0)
    80004fec:	00078863          	beqz	a5,80004ffc <pop_off+0x4c>
    80004ff0:	100027f3          	csrr	a5,sstatus
    80004ff4:	0027e793          	ori	a5,a5,2
    80004ff8:	10079073          	csrw	sstatus,a5
    80004ffc:	00813083          	ld	ra,8(sp)
    80005000:	00013403          	ld	s0,0(sp)
    80005004:	01010113          	addi	sp,sp,16
    80005008:	00008067          	ret
    8000500c:	00001517          	auipc	a0,0x1
    80005010:	2b450513          	addi	a0,a0,692 # 800062c0 <digits+0x48>
    80005014:	fffff097          	auipc	ra,0xfffff
    80005018:	018080e7          	jalr	24(ra) # 8000402c <panic>
    8000501c:	00001517          	auipc	a0,0x1
    80005020:	28c50513          	addi	a0,a0,652 # 800062a8 <digits+0x30>
    80005024:	fffff097          	auipc	ra,0xfffff
    80005028:	008080e7          	jalr	8(ra) # 8000402c <panic>

000000008000502c <push_on>:
    8000502c:	fe010113          	addi	sp,sp,-32
    80005030:	00813823          	sd	s0,16(sp)
    80005034:	00113c23          	sd	ra,24(sp)
    80005038:	00913423          	sd	s1,8(sp)
    8000503c:	02010413          	addi	s0,sp,32
    80005040:	100024f3          	csrr	s1,sstatus
    80005044:	100027f3          	csrr	a5,sstatus
    80005048:	0027e793          	ori	a5,a5,2
    8000504c:	10079073          	csrw	sstatus,a5
    80005050:	ffffe097          	auipc	ra,0xffffe
    80005054:	61c080e7          	jalr	1564(ra) # 8000366c <mycpu>
    80005058:	07852783          	lw	a5,120(a0)
    8000505c:	02078663          	beqz	a5,80005088 <push_on+0x5c>
    80005060:	ffffe097          	auipc	ra,0xffffe
    80005064:	60c080e7          	jalr	1548(ra) # 8000366c <mycpu>
    80005068:	07852783          	lw	a5,120(a0)
    8000506c:	01813083          	ld	ra,24(sp)
    80005070:	01013403          	ld	s0,16(sp)
    80005074:	0017879b          	addiw	a5,a5,1
    80005078:	06f52c23          	sw	a5,120(a0)
    8000507c:	00813483          	ld	s1,8(sp)
    80005080:	02010113          	addi	sp,sp,32
    80005084:	00008067          	ret
    80005088:	0014d493          	srli	s1,s1,0x1
    8000508c:	ffffe097          	auipc	ra,0xffffe
    80005090:	5e0080e7          	jalr	1504(ra) # 8000366c <mycpu>
    80005094:	0014f493          	andi	s1,s1,1
    80005098:	06952e23          	sw	s1,124(a0)
    8000509c:	fc5ff06f          	j	80005060 <push_on+0x34>

00000000800050a0 <pop_on>:
    800050a0:	ff010113          	addi	sp,sp,-16
    800050a4:	00813023          	sd	s0,0(sp)
    800050a8:	00113423          	sd	ra,8(sp)
    800050ac:	01010413          	addi	s0,sp,16
    800050b0:	ffffe097          	auipc	ra,0xffffe
    800050b4:	5bc080e7          	jalr	1468(ra) # 8000366c <mycpu>
    800050b8:	100027f3          	csrr	a5,sstatus
    800050bc:	0027f793          	andi	a5,a5,2
    800050c0:	04078463          	beqz	a5,80005108 <pop_on+0x68>
    800050c4:	07852783          	lw	a5,120(a0)
    800050c8:	02f05863          	blez	a5,800050f8 <pop_on+0x58>
    800050cc:	fff7879b          	addiw	a5,a5,-1
    800050d0:	06f52c23          	sw	a5,120(a0)
    800050d4:	07853783          	ld	a5,120(a0)
    800050d8:	00079863          	bnez	a5,800050e8 <pop_on+0x48>
    800050dc:	100027f3          	csrr	a5,sstatus
    800050e0:	ffd7f793          	andi	a5,a5,-3
    800050e4:	10079073          	csrw	sstatus,a5
    800050e8:	00813083          	ld	ra,8(sp)
    800050ec:	00013403          	ld	s0,0(sp)
    800050f0:	01010113          	addi	sp,sp,16
    800050f4:	00008067          	ret
    800050f8:	00001517          	auipc	a0,0x1
    800050fc:	1f050513          	addi	a0,a0,496 # 800062e8 <digits+0x70>
    80005100:	fffff097          	auipc	ra,0xfffff
    80005104:	f2c080e7          	jalr	-212(ra) # 8000402c <panic>
    80005108:	00001517          	auipc	a0,0x1
    8000510c:	1c050513          	addi	a0,a0,448 # 800062c8 <digits+0x50>
    80005110:	fffff097          	auipc	ra,0xfffff
    80005114:	f1c080e7          	jalr	-228(ra) # 8000402c <panic>

0000000080005118 <__memset>:
    80005118:	ff010113          	addi	sp,sp,-16
    8000511c:	00813423          	sd	s0,8(sp)
    80005120:	01010413          	addi	s0,sp,16
    80005124:	1a060e63          	beqz	a2,800052e0 <__memset+0x1c8>
    80005128:	40a007b3          	neg	a5,a0
    8000512c:	0077f793          	andi	a5,a5,7
    80005130:	00778693          	addi	a3,a5,7
    80005134:	00b00813          	li	a6,11
    80005138:	0ff5f593          	andi	a1,a1,255
    8000513c:	fff6071b          	addiw	a4,a2,-1
    80005140:	1b06e663          	bltu	a3,a6,800052ec <__memset+0x1d4>
    80005144:	1cd76463          	bltu	a4,a3,8000530c <__memset+0x1f4>
    80005148:	1a078e63          	beqz	a5,80005304 <__memset+0x1ec>
    8000514c:	00b50023          	sb	a1,0(a0)
    80005150:	00100713          	li	a4,1
    80005154:	1ae78463          	beq	a5,a4,800052fc <__memset+0x1e4>
    80005158:	00b500a3          	sb	a1,1(a0)
    8000515c:	00200713          	li	a4,2
    80005160:	1ae78a63          	beq	a5,a4,80005314 <__memset+0x1fc>
    80005164:	00b50123          	sb	a1,2(a0)
    80005168:	00300713          	li	a4,3
    8000516c:	18e78463          	beq	a5,a4,800052f4 <__memset+0x1dc>
    80005170:	00b501a3          	sb	a1,3(a0)
    80005174:	00400713          	li	a4,4
    80005178:	1ae78263          	beq	a5,a4,8000531c <__memset+0x204>
    8000517c:	00b50223          	sb	a1,4(a0)
    80005180:	00500713          	li	a4,5
    80005184:	1ae78063          	beq	a5,a4,80005324 <__memset+0x20c>
    80005188:	00b502a3          	sb	a1,5(a0)
    8000518c:	00700713          	li	a4,7
    80005190:	18e79e63          	bne	a5,a4,8000532c <__memset+0x214>
    80005194:	00b50323          	sb	a1,6(a0)
    80005198:	00700e93          	li	t4,7
    8000519c:	00859713          	slli	a4,a1,0x8
    800051a0:	00e5e733          	or	a4,a1,a4
    800051a4:	01059e13          	slli	t3,a1,0x10
    800051a8:	01c76e33          	or	t3,a4,t3
    800051ac:	01859313          	slli	t1,a1,0x18
    800051b0:	006e6333          	or	t1,t3,t1
    800051b4:	02059893          	slli	a7,a1,0x20
    800051b8:	40f60e3b          	subw	t3,a2,a5
    800051bc:	011368b3          	or	a7,t1,a7
    800051c0:	02859813          	slli	a6,a1,0x28
    800051c4:	0108e833          	or	a6,a7,a6
    800051c8:	03059693          	slli	a3,a1,0x30
    800051cc:	003e589b          	srliw	a7,t3,0x3
    800051d0:	00d866b3          	or	a3,a6,a3
    800051d4:	03859713          	slli	a4,a1,0x38
    800051d8:	00389813          	slli	a6,a7,0x3
    800051dc:	00f507b3          	add	a5,a0,a5
    800051e0:	00e6e733          	or	a4,a3,a4
    800051e4:	000e089b          	sext.w	a7,t3
    800051e8:	00f806b3          	add	a3,a6,a5
    800051ec:	00e7b023          	sd	a4,0(a5)
    800051f0:	00878793          	addi	a5,a5,8
    800051f4:	fed79ce3          	bne	a5,a3,800051ec <__memset+0xd4>
    800051f8:	ff8e7793          	andi	a5,t3,-8
    800051fc:	0007871b          	sext.w	a4,a5
    80005200:	01d787bb          	addw	a5,a5,t4
    80005204:	0ce88e63          	beq	a7,a4,800052e0 <__memset+0x1c8>
    80005208:	00f50733          	add	a4,a0,a5
    8000520c:	00b70023          	sb	a1,0(a4)
    80005210:	0017871b          	addiw	a4,a5,1
    80005214:	0cc77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005218:	00e50733          	add	a4,a0,a4
    8000521c:	00b70023          	sb	a1,0(a4)
    80005220:	0027871b          	addiw	a4,a5,2
    80005224:	0ac77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005228:	00e50733          	add	a4,a0,a4
    8000522c:	00b70023          	sb	a1,0(a4)
    80005230:	0037871b          	addiw	a4,a5,3
    80005234:	0ac77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005238:	00e50733          	add	a4,a0,a4
    8000523c:	00b70023          	sb	a1,0(a4)
    80005240:	0047871b          	addiw	a4,a5,4
    80005244:	08c77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005248:	00e50733          	add	a4,a0,a4
    8000524c:	00b70023          	sb	a1,0(a4)
    80005250:	0057871b          	addiw	a4,a5,5
    80005254:	08c77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005258:	00e50733          	add	a4,a0,a4
    8000525c:	00b70023          	sb	a1,0(a4)
    80005260:	0067871b          	addiw	a4,a5,6
    80005264:	06c77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005268:	00e50733          	add	a4,a0,a4
    8000526c:	00b70023          	sb	a1,0(a4)
    80005270:	0077871b          	addiw	a4,a5,7
    80005274:	06c77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005278:	00e50733          	add	a4,a0,a4
    8000527c:	00b70023          	sb	a1,0(a4)
    80005280:	0087871b          	addiw	a4,a5,8
    80005284:	04c77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005288:	00e50733          	add	a4,a0,a4
    8000528c:	00b70023          	sb	a1,0(a4)
    80005290:	0097871b          	addiw	a4,a5,9
    80005294:	04c77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    80005298:	00e50733          	add	a4,a0,a4
    8000529c:	00b70023          	sb	a1,0(a4)
    800052a0:	00a7871b          	addiw	a4,a5,10
    800052a4:	02c77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    800052a8:	00e50733          	add	a4,a0,a4
    800052ac:	00b70023          	sb	a1,0(a4)
    800052b0:	00b7871b          	addiw	a4,a5,11
    800052b4:	02c77663          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    800052b8:	00e50733          	add	a4,a0,a4
    800052bc:	00b70023          	sb	a1,0(a4)
    800052c0:	00c7871b          	addiw	a4,a5,12
    800052c4:	00c77e63          	bgeu	a4,a2,800052e0 <__memset+0x1c8>
    800052c8:	00e50733          	add	a4,a0,a4
    800052cc:	00b70023          	sb	a1,0(a4)
    800052d0:	00d7879b          	addiw	a5,a5,13
    800052d4:	00c7f663          	bgeu	a5,a2,800052e0 <__memset+0x1c8>
    800052d8:	00f507b3          	add	a5,a0,a5
    800052dc:	00b78023          	sb	a1,0(a5)
    800052e0:	00813403          	ld	s0,8(sp)
    800052e4:	01010113          	addi	sp,sp,16
    800052e8:	00008067          	ret
    800052ec:	00b00693          	li	a3,11
    800052f0:	e55ff06f          	j	80005144 <__memset+0x2c>
    800052f4:	00300e93          	li	t4,3
    800052f8:	ea5ff06f          	j	8000519c <__memset+0x84>
    800052fc:	00100e93          	li	t4,1
    80005300:	e9dff06f          	j	8000519c <__memset+0x84>
    80005304:	00000e93          	li	t4,0
    80005308:	e95ff06f          	j	8000519c <__memset+0x84>
    8000530c:	00000793          	li	a5,0
    80005310:	ef9ff06f          	j	80005208 <__memset+0xf0>
    80005314:	00200e93          	li	t4,2
    80005318:	e85ff06f          	j	8000519c <__memset+0x84>
    8000531c:	00400e93          	li	t4,4
    80005320:	e7dff06f          	j	8000519c <__memset+0x84>
    80005324:	00500e93          	li	t4,5
    80005328:	e75ff06f          	j	8000519c <__memset+0x84>
    8000532c:	00600e93          	li	t4,6
    80005330:	e6dff06f          	j	8000519c <__memset+0x84>

0000000080005334 <__memmove>:
    80005334:	ff010113          	addi	sp,sp,-16
    80005338:	00813423          	sd	s0,8(sp)
    8000533c:	01010413          	addi	s0,sp,16
    80005340:	0e060863          	beqz	a2,80005430 <__memmove+0xfc>
    80005344:	fff6069b          	addiw	a3,a2,-1
    80005348:	0006881b          	sext.w	a6,a3
    8000534c:	0ea5e863          	bltu	a1,a0,8000543c <__memmove+0x108>
    80005350:	00758713          	addi	a4,a1,7
    80005354:	00a5e7b3          	or	a5,a1,a0
    80005358:	40a70733          	sub	a4,a4,a0
    8000535c:	0077f793          	andi	a5,a5,7
    80005360:	00f73713          	sltiu	a4,a4,15
    80005364:	00174713          	xori	a4,a4,1
    80005368:	0017b793          	seqz	a5,a5
    8000536c:	00e7f7b3          	and	a5,a5,a4
    80005370:	10078863          	beqz	a5,80005480 <__memmove+0x14c>
    80005374:	00900793          	li	a5,9
    80005378:	1107f463          	bgeu	a5,a6,80005480 <__memmove+0x14c>
    8000537c:	0036581b          	srliw	a6,a2,0x3
    80005380:	fff8081b          	addiw	a6,a6,-1
    80005384:	02081813          	slli	a6,a6,0x20
    80005388:	01d85893          	srli	a7,a6,0x1d
    8000538c:	00858813          	addi	a6,a1,8
    80005390:	00058793          	mv	a5,a1
    80005394:	00050713          	mv	a4,a0
    80005398:	01088833          	add	a6,a7,a6
    8000539c:	0007b883          	ld	a7,0(a5)
    800053a0:	00878793          	addi	a5,a5,8
    800053a4:	00870713          	addi	a4,a4,8
    800053a8:	ff173c23          	sd	a7,-8(a4)
    800053ac:	ff0798e3          	bne	a5,a6,8000539c <__memmove+0x68>
    800053b0:	ff867713          	andi	a4,a2,-8
    800053b4:	02071793          	slli	a5,a4,0x20
    800053b8:	0207d793          	srli	a5,a5,0x20
    800053bc:	00f585b3          	add	a1,a1,a5
    800053c0:	40e686bb          	subw	a3,a3,a4
    800053c4:	00f507b3          	add	a5,a0,a5
    800053c8:	06e60463          	beq	a2,a4,80005430 <__memmove+0xfc>
    800053cc:	0005c703          	lbu	a4,0(a1)
    800053d0:	00e78023          	sb	a4,0(a5)
    800053d4:	04068e63          	beqz	a3,80005430 <__memmove+0xfc>
    800053d8:	0015c603          	lbu	a2,1(a1)
    800053dc:	00100713          	li	a4,1
    800053e0:	00c780a3          	sb	a2,1(a5)
    800053e4:	04e68663          	beq	a3,a4,80005430 <__memmove+0xfc>
    800053e8:	0025c603          	lbu	a2,2(a1)
    800053ec:	00200713          	li	a4,2
    800053f0:	00c78123          	sb	a2,2(a5)
    800053f4:	02e68e63          	beq	a3,a4,80005430 <__memmove+0xfc>
    800053f8:	0035c603          	lbu	a2,3(a1)
    800053fc:	00300713          	li	a4,3
    80005400:	00c781a3          	sb	a2,3(a5)
    80005404:	02e68663          	beq	a3,a4,80005430 <__memmove+0xfc>
    80005408:	0045c603          	lbu	a2,4(a1)
    8000540c:	00400713          	li	a4,4
    80005410:	00c78223          	sb	a2,4(a5)
    80005414:	00e68e63          	beq	a3,a4,80005430 <__memmove+0xfc>
    80005418:	0055c603          	lbu	a2,5(a1)
    8000541c:	00500713          	li	a4,5
    80005420:	00c782a3          	sb	a2,5(a5)
    80005424:	00e68663          	beq	a3,a4,80005430 <__memmove+0xfc>
    80005428:	0065c703          	lbu	a4,6(a1)
    8000542c:	00e78323          	sb	a4,6(a5)
    80005430:	00813403          	ld	s0,8(sp)
    80005434:	01010113          	addi	sp,sp,16
    80005438:	00008067          	ret
    8000543c:	02061713          	slli	a4,a2,0x20
    80005440:	02075713          	srli	a4,a4,0x20
    80005444:	00e587b3          	add	a5,a1,a4
    80005448:	f0f574e3          	bgeu	a0,a5,80005350 <__memmove+0x1c>
    8000544c:	02069613          	slli	a2,a3,0x20
    80005450:	02065613          	srli	a2,a2,0x20
    80005454:	fff64613          	not	a2,a2
    80005458:	00e50733          	add	a4,a0,a4
    8000545c:	00c78633          	add	a2,a5,a2
    80005460:	fff7c683          	lbu	a3,-1(a5)
    80005464:	fff78793          	addi	a5,a5,-1
    80005468:	fff70713          	addi	a4,a4,-1
    8000546c:	00d70023          	sb	a3,0(a4)
    80005470:	fec798e3          	bne	a5,a2,80005460 <__memmove+0x12c>
    80005474:	00813403          	ld	s0,8(sp)
    80005478:	01010113          	addi	sp,sp,16
    8000547c:	00008067          	ret
    80005480:	02069713          	slli	a4,a3,0x20
    80005484:	02075713          	srli	a4,a4,0x20
    80005488:	00170713          	addi	a4,a4,1
    8000548c:	00e50733          	add	a4,a0,a4
    80005490:	00050793          	mv	a5,a0
    80005494:	0005c683          	lbu	a3,0(a1)
    80005498:	00178793          	addi	a5,a5,1
    8000549c:	00158593          	addi	a1,a1,1
    800054a0:	fed78fa3          	sb	a3,-1(a5)
    800054a4:	fee798e3          	bne	a5,a4,80005494 <__memmove+0x160>
    800054a8:	f89ff06f          	j	80005430 <__memmove+0xfc>

00000000800054ac <__putc>:
    800054ac:	fe010113          	addi	sp,sp,-32
    800054b0:	00813823          	sd	s0,16(sp)
    800054b4:	00113c23          	sd	ra,24(sp)
    800054b8:	02010413          	addi	s0,sp,32
    800054bc:	00050793          	mv	a5,a0
    800054c0:	fef40593          	addi	a1,s0,-17
    800054c4:	00100613          	li	a2,1
    800054c8:	00000513          	li	a0,0
    800054cc:	fef407a3          	sb	a5,-17(s0)
    800054d0:	fffff097          	auipc	ra,0xfffff
    800054d4:	b3c080e7          	jalr	-1220(ra) # 8000400c <console_write>
    800054d8:	01813083          	ld	ra,24(sp)
    800054dc:	01013403          	ld	s0,16(sp)
    800054e0:	02010113          	addi	sp,sp,32
    800054e4:	00008067          	ret

00000000800054e8 <__getc>:
    800054e8:	fe010113          	addi	sp,sp,-32
    800054ec:	00813823          	sd	s0,16(sp)
    800054f0:	00113c23          	sd	ra,24(sp)
    800054f4:	02010413          	addi	s0,sp,32
    800054f8:	fe840593          	addi	a1,s0,-24
    800054fc:	00100613          	li	a2,1
    80005500:	00000513          	li	a0,0
    80005504:	fffff097          	auipc	ra,0xfffff
    80005508:	ae8080e7          	jalr	-1304(ra) # 80003fec <console_read>
    8000550c:	fe844503          	lbu	a0,-24(s0)
    80005510:	01813083          	ld	ra,24(sp)
    80005514:	01013403          	ld	s0,16(sp)
    80005518:	02010113          	addi	sp,sp,32
    8000551c:	00008067          	ret

0000000080005520 <console_handler>:
    80005520:	fe010113          	addi	sp,sp,-32
    80005524:	00813823          	sd	s0,16(sp)
    80005528:	00113c23          	sd	ra,24(sp)
    8000552c:	00913423          	sd	s1,8(sp)
    80005530:	02010413          	addi	s0,sp,32
    80005534:	14202773          	csrr	a4,scause
    80005538:	100027f3          	csrr	a5,sstatus
    8000553c:	0027f793          	andi	a5,a5,2
    80005540:	06079e63          	bnez	a5,800055bc <console_handler+0x9c>
    80005544:	00074c63          	bltz	a4,8000555c <console_handler+0x3c>
    80005548:	01813083          	ld	ra,24(sp)
    8000554c:	01013403          	ld	s0,16(sp)
    80005550:	00813483          	ld	s1,8(sp)
    80005554:	02010113          	addi	sp,sp,32
    80005558:	00008067          	ret
    8000555c:	0ff77713          	andi	a4,a4,255
    80005560:	00900793          	li	a5,9
    80005564:	fef712e3          	bne	a4,a5,80005548 <console_handler+0x28>
    80005568:	ffffe097          	auipc	ra,0xffffe
    8000556c:	6dc080e7          	jalr	1756(ra) # 80003c44 <plic_claim>
    80005570:	00a00793          	li	a5,10
    80005574:	00050493          	mv	s1,a0
    80005578:	02f50c63          	beq	a0,a5,800055b0 <console_handler+0x90>
    8000557c:	fc0506e3          	beqz	a0,80005548 <console_handler+0x28>
    80005580:	00050593          	mv	a1,a0
    80005584:	00001517          	auipc	a0,0x1
    80005588:	c6c50513          	addi	a0,a0,-916 # 800061f0 <CONSOLE_STATUS+0x1e0>
    8000558c:	fffff097          	auipc	ra,0xfffff
    80005590:	afc080e7          	jalr	-1284(ra) # 80004088 <__printf>
    80005594:	01013403          	ld	s0,16(sp)
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	00048513          	mv	a0,s1
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	ffffe317          	auipc	t1,0xffffe
    800055ac:	6d430067          	jr	1748(t1) # 80003c7c <plic_complete>
    800055b0:	fffff097          	auipc	ra,0xfffff
    800055b4:	3e0080e7          	jalr	992(ra) # 80004990 <uartintr>
    800055b8:	fddff06f          	j	80005594 <console_handler+0x74>
    800055bc:	00001517          	auipc	a0,0x1
    800055c0:	d3450513          	addi	a0,a0,-716 # 800062f0 <digits+0x78>
    800055c4:	fffff097          	auipc	ra,0xfffff
    800055c8:	a68080e7          	jalr	-1432(ra) # 8000402c <panic>
	...
