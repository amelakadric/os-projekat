
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	42813103          	ld	sp,1064(sp) # 80007428 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	2a8030ef          	jal	ra,800032c4 <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001004:	00313c23          	sd	gp,24(sp)
    80001008:	02413023          	sd	tp,32(sp)
    8000100c:	02513423          	sd	t0,40(sp)
    80001010:	02613823          	sd	t1,48(sp)
    80001014:	02713c23          	sd	t2,56(sp)
    80001018:	04813023          	sd	s0,64(sp)
    8000101c:	04913423          	sd	s1,72(sp)
    80001020:	04a13823          	sd	a0,80(sp)
    80001024:	04b13c23          	sd	a1,88(sp)
    80001028:	06c13023          	sd	a2,96(sp)
    8000102c:	06d13423          	sd	a3,104(sp)
    80001030:	06e13823          	sd	a4,112(sp)
    80001034:	06f13c23          	sd	a5,120(sp)
    80001038:	09013023          	sd	a6,128(sp)
    8000103c:	09113423          	sd	a7,136(sp)
    80001040:	09213823          	sd	s2,144(sp)
    80001044:	09313c23          	sd	s3,152(sp)
    80001048:	0b413023          	sd	s4,160(sp)
    8000104c:	0b513423          	sd	s5,168(sp)
    80001050:	0b613823          	sd	s6,176(sp)
    80001054:	0b713c23          	sd	s7,184(sp)
    80001058:	0d813023          	sd	s8,192(sp)
    8000105c:	0d913423          	sd	s9,200(sp)
    80001060:	0da13823          	sd	s10,208(sp)
    80001064:	0db13c23          	sd	s11,216(sp)
    80001068:	0fc13023          	sd	t3,224(sp)
    8000106c:	0fd13423          	sd	t4,232(sp)
    80001070:	0fe13823          	sd	t5,240(sp)
    80001074:	0ff13c23          	sd	t6,248(sp)
    ret
    80001078:	00008067          	ret

000000008000107c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000107c:	01813183          	ld	gp,24(sp)
    80001080:	02013203          	ld	tp,32(sp)
    80001084:	02813283          	ld	t0,40(sp)
    80001088:	03013303          	ld	t1,48(sp)
    8000108c:	03813383          	ld	t2,56(sp)
    80001090:	04013403          	ld	s0,64(sp)
    80001094:	04813483          	ld	s1,72(sp)
    80001098:	05013503          	ld	a0,80(sp)
    8000109c:	05813583          	ld	a1,88(sp)
    800010a0:	06013603          	ld	a2,96(sp)
    800010a4:	06813683          	ld	a3,104(sp)
    800010a8:	07013703          	ld	a4,112(sp)
    800010ac:	07813783          	ld	a5,120(sp)
    800010b0:	08013803          	ld	a6,128(sp)
    800010b4:	08813883          	ld	a7,136(sp)
    800010b8:	09013903          	ld	s2,144(sp)
    800010bc:	09813983          	ld	s3,152(sp)
    800010c0:	0a013a03          	ld	s4,160(sp)
    800010c4:	0a813a83          	ld	s5,168(sp)
    800010c8:	0b013b03          	ld	s6,176(sp)
    800010cc:	0b813b83          	ld	s7,184(sp)
    800010d0:	0c013c03          	ld	s8,192(sp)
    800010d4:	0c813c83          	ld	s9,200(sp)
    800010d8:	0d013d03          	ld	s10,208(sp)
    800010dc:	0d813d83          	ld	s11,216(sp)
    800010e0:	0e013e03          	ld	t3,224(sp)
    800010e4:	0e813e83          	ld	t4,232(sp)
    800010e8:	0f013f03          	ld	t5,240(sp)
    800010ec:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    800010f0:	10010113          	addi	sp,sp,256
    ret
    800010f4:	00008067          	ret
	...

0000000080001100 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:
    # push all registers to stack
    addi sp, sp, -256
    80001100:	f0010113          	addi	sp,sp,-256
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001104:	00013023          	sd	zero,0(sp)
    80001108:	00113423          	sd	ra,8(sp)
    8000110c:	00213823          	sd	sp,16(sp)
    80001110:	00313c23          	sd	gp,24(sp)
    80001114:	02413023          	sd	tp,32(sp)
    80001118:	02513423          	sd	t0,40(sp)
    8000111c:	02613823          	sd	t1,48(sp)
    80001120:	02713c23          	sd	t2,56(sp)
    80001124:	04813023          	sd	s0,64(sp)
    80001128:	04913423          	sd	s1,72(sp)
    8000112c:	04b13c23          	sd	a1,88(sp)
    80001130:	06c13023          	sd	a2,96(sp)
    80001134:	06d13423          	sd	a3,104(sp)
    80001138:	06e13823          	sd	a4,112(sp)
    8000113c:	06f13c23          	sd	a5,120(sp)
    80001140:	09013023          	sd	a6,128(sp)
    80001144:	09113423          	sd	a7,136(sp)
    80001148:	09213823          	sd	s2,144(sp)
    8000114c:	09313c23          	sd	s3,152(sp)
    80001150:	0b413023          	sd	s4,160(sp)
    80001154:	0b513423          	sd	s5,168(sp)
    80001158:	0b613823          	sd	s6,176(sp)
    8000115c:	0b713c23          	sd	s7,184(sp)
    80001160:	0d813023          	sd	s8,192(sp)
    80001164:	0d913423          	sd	s9,200(sp)
    80001168:	0da13823          	sd	s10,208(sp)
    8000116c:	0db13c23          	sd	s11,216(sp)
    80001170:	0fc13023          	sd	t3,224(sp)
    80001174:	0fd13423          	sd	t4,232(sp)
    80001178:	0fe13823          	sd	t5,240(sp)
    8000117c:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001180:	7e9000ef          	jal	ra,80002168 <_ZN5Riscv20handleSupervisorTrapEv>

    # pop all registers from stack
    .irp index, 0,1,2,3,4,5,6,7,8,9,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    80001184:	00013003          	ld	zero,0(sp)
    80001188:	00813083          	ld	ra,8(sp)
    8000118c:	01013103          	ld	sp,16(sp)
    80001190:	01813183          	ld	gp,24(sp)
    80001194:	02013203          	ld	tp,32(sp)
    80001198:	02813283          	ld	t0,40(sp)
    8000119c:	03013303          	ld	t1,48(sp)
    800011a0:	03813383          	ld	t2,56(sp)
    800011a4:	04013403          	ld	s0,64(sp)
    800011a8:	04813483          	ld	s1,72(sp)
    800011ac:	05813583          	ld	a1,88(sp)
    800011b0:	06013603          	ld	a2,96(sp)
    800011b4:	06813683          	ld	a3,104(sp)
    800011b8:	07013703          	ld	a4,112(sp)
    800011bc:	07813783          	ld	a5,120(sp)
    800011c0:	08013803          	ld	a6,128(sp)
    800011c4:	08813883          	ld	a7,136(sp)
    800011c8:	09013903          	ld	s2,144(sp)
    800011cc:	09813983          	ld	s3,152(sp)
    800011d0:	0a013a03          	ld	s4,160(sp)
    800011d4:	0a813a83          	ld	s5,168(sp)
    800011d8:	0b013b03          	ld	s6,176(sp)
    800011dc:	0b813b83          	ld	s7,184(sp)
    800011e0:	0c013c03          	ld	s8,192(sp)
    800011e4:	0c813c83          	ld	s9,200(sp)
    800011e8:	0d013d03          	ld	s10,208(sp)
    800011ec:	0d813d83          	ld	s11,216(sp)
    800011f0:	0e013e03          	ld	t3,224(sp)
    800011f4:	0e813e83          	ld	t4,232(sp)
    800011f8:	0f013f03          	ld	t5,240(sp)
    800011fc:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001200:	10010113          	addi	sp,sp,256

    sret
    80001204:	10200073          	sret
	...

0000000080001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    80001210:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    80001214:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001218:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    8000121c:	0085b103          	ld	sp,8(a1)

    80001220:	00008067          	ret

0000000080001224 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001224:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    80001228:	00b29a63          	bne	t0,a1,8000123c <fail>
    sc.w t0, a2, (a0)      # Try to update.
    8000122c:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001230:	fe029ae3          	bnez	t0,80001224 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001234:	00000513          	li	a0,0
    jr ra                  # Return.
    80001238:	00008067          	ret

000000008000123c <fail>:
    fail:
    li a0, 1               # Set return to failure.
    8000123c:	00100513          	li	a0,1
    80001240:	00008067          	ret

0000000080001244 <_Z9mem_allocm>:
#include "../h/syscall_c.h"


void* mem_alloc(size_t size){
    80001244:	ff010113          	addi	sp,sp,-16
    80001248:	00813423          	sd	s0,8(sp)
    8000124c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(size));
    80001250:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x01");
    80001254:	00100513          	li	a0,1
    __asm__ volatile("ecall");
    80001258:	00000073          	ecall
    void* a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    8000125c:	00050513          	mv	a0,a0
    return a0;
}
    80001260:	00813403          	ld	s0,8(sp)
    80001264:	01010113          	addi	sp,sp,16
    80001268:	00008067          	ret

000000008000126c <_Z8mem_freePv>:

int mem_free (void* r){
    8000126c:	ff010113          	addi	sp,sp,-16
    80001270:	00813423          	sd	s0,8(sp)
    80001274:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(r));
    80001278:	00050613          	mv	a2,a0
    __asm__ volatile("li a0, 0x02");
    8000127c:	00200513          	li	a0,2
    __asm__ volatile("ecall");
    80001280:	00000073          	ecall

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001284:	00050513          	mv	a0,a0
    return a0;
}
    80001288:	0005051b          	sext.w	a0,a0
    8000128c:	00813403          	ld	s0,8(sp)
    80001290:	01010113          	addi	sp,sp,16
    80001294:	00008067          	ret

0000000080001298 <_Z13thread_createPP3TCBPFvPvES2_>:

int thread_create (thread_t* handle, void(*start_routine)(void*), void* arg){
    80001298:	ff010113          	addi	sp,sp,-16
    8000129c:	00813423          	sd	s0,8(sp)
    800012a0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a3, %0"::"r"(arg));
    800012a4:	00060693          	mv	a3,a2
    __asm__ volatile("mv a2, %0"::"r"(start_routine));
    800012a8:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    800012ac:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x11");
    800012b0:	01100513          	li	a0,17
    __asm__ volatile("ecall");
    800012b4:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800012b8:	00050513          	mv	a0,a0

    return a0;
}
    800012bc:	0005051b          	sext.w	a0,a0
    800012c0:	00813403          	ld	s0,8(sp)
    800012c4:	01010113          	addi	sp,sp,16
    800012c8:	00008067          	ret

00000000800012cc <_Z11thread_exitv>:

int thread_exit(){
    800012cc:	ff010113          	addi	sp,sp,-16
    800012d0:	00813423          	sd	s0,8(sp)
    800012d4:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    800012d8:	01200513          	li	a0,18
    __asm__ volatile("ecall");
    800012dc:	00000073          	ecall

    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800012e0:	00050513          	mv	a0,a0
    return a0;
}
    800012e4:	0005051b          	sext.w	a0,a0
    800012e8:	00813403          	ld	s0,8(sp)
    800012ec:	01010113          	addi	sp,sp,16
    800012f0:	00008067          	ret

00000000800012f4 <_Z15thread_dispatchv>:

void thread_dispatch(){
    800012f4:	ff010113          	addi	sp,sp,-16
    800012f8:	00813423          	sd	s0,8(sp)
    800012fc:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001300:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001304:	00000073          	ecall

}
    80001308:	00813403          	ld	s0,8(sp)
    8000130c:	01010113          	addi	sp,sp,16
    80001310:	00008067          	ret

0000000080001314 <_Z8sem_openPP10Ksemaphorej>:

int sem_open (
        sem_t* handle,
        unsigned init
){
    80001314:	ff010113          	addi	sp,sp,-16
    80001318:	00813423          	sd	s0,8(sp)
    8000131c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0"::"r"(handle));
    80001320:	00050613          	mv	a2,a0
    __asm__ volatile("mv a1, %0"::"r"(init));
    80001324:	00058593          	mv	a1,a1
    __asm__ volatile("li a0, 0x21");
    80001328:	02100513          	li	a0,33
    __asm__ volatile("ecall");
    8000132c:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001330:	00050513          	mv	a0,a0

    return a0;

}
    80001334:	0005051b          	sext.w	a0,a0
    80001338:	00813403          	ld	s0,8(sp)
    8000133c:	01010113          	addi	sp,sp,16
    80001340:	00008067          	ret

0000000080001344 <_Z9sem_closeP10Ksemaphore>:

int sem_close (sem_t handle){
    80001344:	ff010113          	addi	sp,sp,-16
    80001348:	00813423          	sd	s0,8(sp)
    8000134c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001350:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001354:	02200513          	li	a0,34
    __asm__ volatile("ecall");
    80001358:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    8000135c:	00050513          	mv	a0,a0

    return a0;
}
    80001360:	0005051b          	sext.w	a0,a0
    80001364:	00813403          	ld	s0,8(sp)
    80001368:	01010113          	addi	sp,sp,16
    8000136c:	00008067          	ret

0000000080001370 <_Z8sem_waitP10Ksemaphore>:

int sem_wait (sem_t id){
    80001370:	ff010113          	addi	sp,sp,-16
    80001374:	00813423          	sd	s0,8(sp)
    80001378:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    8000137c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001380:	02300513          	li	a0,35
    __asm__ volatile("ecall");
    80001384:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001388:	00050513          	mv	a0,a0

    return a0;

}
    8000138c:	0005051b          	sext.w	a0,a0
    80001390:	00813403          	ld	s0,8(sp)
    80001394:	01010113          	addi	sp,sp,16
    80001398:	00008067          	ret

000000008000139c <_Z10sem_signalP10Ksemaphore>:

int sem_signal(sem_t id){
    8000139c:	ff010113          	addi	sp,sp,-16
    800013a0:	00813423          	sd	s0,8(sp)
    800013a4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0"::"r"(id));
    800013a8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    800013ac:	02400513          	li	a0,36
    __asm__ volatile("ecall");
    800013b0:	00000073          	ecall
    uint64 a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800013b4:	00050513          	mv	a0,a0

    return a0;
}
    800013b8:	0005051b          	sext.w	a0,a0
    800013bc:	00813403          	ld	s0,8(sp)
    800013c0:	01010113          	addi	sp,sp,16
    800013c4:	00008067          	ret

00000000800013c8 <_Z4getcv>:

char getc(){
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00113423          	sd	ra,8(sp)
    800013d0:	00813023          	sd	s0,0(sp)
    800013d4:	01010413          	addi	s0,sp,16
    return __getc();
    800013d8:	00004097          	auipc	ra,0x4
    800013dc:	214080e7          	jalr	532(ra) # 800055ec <__getc>
}
    800013e0:	00813083          	ld	ra,8(sp)
    800013e4:	00013403          	ld	s0,0(sp)
    800013e8:	01010113          	addi	sp,sp,16
    800013ec:	00008067          	ret

00000000800013f0 <_Z4putcc>:
void putc(char c){
    800013f0:	ff010113          	addi	sp,sp,-16
    800013f4:	00113423          	sd	ra,8(sp)
    800013f8:	00813023          	sd	s0,0(sp)
    800013fc:	01010413          	addi	s0,sp,16
    __putc(c);
    80001400:	00004097          	auipc	ra,0x4
    80001404:	1b0080e7          	jalr	432(ra) # 800055b0 <__putc>
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_Z9fibonaccim>:
bool finishedA = false;
bool finishedB = false;
bool finishedC = false;
bool finishedD = false;

uint64 fibonacci(uint64 n) {
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00913423          	sd	s1,8(sp)
    80001428:	01213023          	sd	s2,0(sp)
    8000142c:	02010413          	addi	s0,sp,32
    80001430:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001434:	00100793          	li	a5,1
    80001438:	02a7f863          	bgeu	a5,a0,80001468 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    8000143c:	00a00793          	li	a5,10
    80001440:	02f577b3          	remu	a5,a0,a5
    80001444:	02078e63          	beqz	a5,80001480 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001448:	fff48513          	addi	a0,s1,-1
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	fcc080e7          	jalr	-52(ra) # 80001418 <_Z9fibonaccim>
    80001454:	00050913          	mv	s2,a0
    80001458:	ffe48513          	addi	a0,s1,-2
    8000145c:	00000097          	auipc	ra,0x0
    80001460:	fbc080e7          	jalr	-68(ra) # 80001418 <_Z9fibonaccim>
    80001464:	00a90533          	add	a0,s2,a0
}
    80001468:	01813083          	ld	ra,24(sp)
    8000146c:	01013403          	ld	s0,16(sp)
    80001470:	00813483          	ld	s1,8(sp)
    80001474:	00013903          	ld	s2,0(sp)
    80001478:	02010113          	addi	sp,sp,32
    8000147c:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    80001480:	00000097          	auipc	ra,0x0
    80001484:	e74080e7          	jalr	-396(ra) # 800012f4 <_Z15thread_dispatchv>
    80001488:	fc1ff06f          	j	80001448 <_Z9fibonaccim+0x30>

000000008000148c <_ZN7WorkerA11workerBodyAEPv>:
    void run() override {
        workerBodyD(nullptr);
    }
};

void WorkerA::workerBodyA(void *arg) {
    8000148c:	fe010113          	addi	sp,sp,-32
    80001490:	00113c23          	sd	ra,24(sp)
    80001494:	00813823          	sd	s0,16(sp)
    80001498:	00913423          	sd	s1,8(sp)
    8000149c:	01213023          	sd	s2,0(sp)
    800014a0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800014a4:	00000913          	li	s2,0
    800014a8:	0380006f          	j	800014e0 <_ZN7WorkerA11workerBodyAEPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800014ac:	00000097          	auipc	ra,0x0
    800014b0:	e48080e7          	jalr	-440(ra) # 800012f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800014b4:	00148493          	addi	s1,s1,1
    800014b8:	000027b7          	lui	a5,0x2
    800014bc:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800014c0:	0097ee63          	bltu	a5,s1,800014dc <_ZN7WorkerA11workerBodyAEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800014c4:	00000713          	li	a4,0
    800014c8:	000077b7          	lui	a5,0x7
    800014cc:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800014d0:	fce7eee3          	bltu	a5,a4,800014ac <_ZN7WorkerA11workerBodyAEPv+0x20>
    800014d4:	00170713          	addi	a4,a4,1
    800014d8:	ff1ff06f          	j	800014c8 <_ZN7WorkerA11workerBodyAEPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800014dc:	00190913          	addi	s2,s2,1
    800014e0:	00900793          	li	a5,9
    800014e4:	0527e063          	bltu	a5,s2,80001524 <_ZN7WorkerA11workerBodyAEPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800014e8:	00005517          	auipc	a0,0x5
    800014ec:	b3850513          	addi	a0,a0,-1224 # 80006020 <CONSOLE_STATUS+0x10>
    800014f0:	00001097          	auipc	ra,0x1
    800014f4:	4b0080e7          	jalr	1200(ra) # 800029a0 <_Z11printStringPKc>
    800014f8:	00000613          	li	a2,0
    800014fc:	00a00593          	li	a1,10
    80001500:	0009051b          	sext.w	a0,s2
    80001504:	00001097          	auipc	ra,0x1
    80001508:	634080e7          	jalr	1588(ra) # 80002b38 <_Z8printIntiii>
    8000150c:	00005517          	auipc	a0,0x5
    80001510:	d3450513          	addi	a0,a0,-716 # 80006240 <CONSOLE_STATUS+0x230>
    80001514:	00001097          	auipc	ra,0x1
    80001518:	48c080e7          	jalr	1164(ra) # 800029a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000151c:	00000493          	li	s1,0
    80001520:	f99ff06f          	j	800014b8 <_ZN7WorkerA11workerBodyAEPv+0x2c>
        }
    }
    printString("A finished!\n");
    80001524:	00005517          	auipc	a0,0x5
    80001528:	b0450513          	addi	a0,a0,-1276 # 80006028 <CONSOLE_STATUS+0x18>
    8000152c:	00001097          	auipc	ra,0x1
    80001530:	474080e7          	jalr	1140(ra) # 800029a0 <_Z11printStringPKc>
    finishedA = true;
    80001534:	00100793          	li	a5,1
    80001538:	00006717          	auipc	a4,0x6
    8000153c:	f6f70423          	sb	a5,-152(a4) # 800074a0 <finishedA>
}
    80001540:	01813083          	ld	ra,24(sp)
    80001544:	01013403          	ld	s0,16(sp)
    80001548:	00813483          	ld	s1,8(sp)
    8000154c:	00013903          	ld	s2,0(sp)
    80001550:	02010113          	addi	sp,sp,32
    80001554:	00008067          	ret

0000000080001558 <_ZN7WorkerB11workerBodyBEPv>:

void WorkerB::workerBodyB(void *arg) {
    80001558:	fe010113          	addi	sp,sp,-32
    8000155c:	00113c23          	sd	ra,24(sp)
    80001560:	00813823          	sd	s0,16(sp)
    80001564:	00913423          	sd	s1,8(sp)
    80001568:	01213023          	sd	s2,0(sp)
    8000156c:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001570:	00000913          	li	s2,0
    80001574:	0380006f          	j	800015ac <_ZN7WorkerB11workerBodyBEPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001578:	00000097          	auipc	ra,0x0
    8000157c:	d7c080e7          	jalr	-644(ra) # 800012f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001580:	00148493          	addi	s1,s1,1
    80001584:	000027b7          	lui	a5,0x2
    80001588:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    8000158c:	0097ee63          	bltu	a5,s1,800015a8 <_ZN7WorkerB11workerBodyBEPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001590:	00000713          	li	a4,0
    80001594:	000077b7          	lui	a5,0x7
    80001598:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    8000159c:	fce7eee3          	bltu	a5,a4,80001578 <_ZN7WorkerB11workerBodyBEPv+0x20>
    800015a0:	00170713          	addi	a4,a4,1
    800015a4:	ff1ff06f          	j	80001594 <_ZN7WorkerB11workerBodyBEPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800015a8:	00190913          	addi	s2,s2,1
    800015ac:	00f00793          	li	a5,15
    800015b0:	0527e063          	bltu	a5,s2,800015f0 <_ZN7WorkerB11workerBodyBEPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800015b4:	00005517          	auipc	a0,0x5
    800015b8:	a8450513          	addi	a0,a0,-1404 # 80006038 <CONSOLE_STATUS+0x28>
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	3e4080e7          	jalr	996(ra) # 800029a0 <_Z11printStringPKc>
    800015c4:	00000613          	li	a2,0
    800015c8:	00a00593          	li	a1,10
    800015cc:	0009051b          	sext.w	a0,s2
    800015d0:	00001097          	auipc	ra,0x1
    800015d4:	568080e7          	jalr	1384(ra) # 80002b38 <_Z8printIntiii>
    800015d8:	00005517          	auipc	a0,0x5
    800015dc:	c6850513          	addi	a0,a0,-920 # 80006240 <CONSOLE_STATUS+0x230>
    800015e0:	00001097          	auipc	ra,0x1
    800015e4:	3c0080e7          	jalr	960(ra) # 800029a0 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800015e8:	00000493          	li	s1,0
    800015ec:	f99ff06f          	j	80001584 <_ZN7WorkerB11workerBodyBEPv+0x2c>
        }
    }
    printString("B finished!\n");
    800015f0:	00005517          	auipc	a0,0x5
    800015f4:	a5050513          	addi	a0,a0,-1456 # 80006040 <CONSOLE_STATUS+0x30>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	3a8080e7          	jalr	936(ra) # 800029a0 <_Z11printStringPKc>
    finishedB = true;
    80001600:	00100793          	li	a5,1
    80001604:	00006717          	auipc	a4,0x6
    80001608:	e8f70ea3          	sb	a5,-355(a4) # 800074a1 <finishedB>
    thread_dispatch();
    8000160c:	00000097          	auipc	ra,0x0
    80001610:	ce8080e7          	jalr	-792(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001614:	01813083          	ld	ra,24(sp)
    80001618:	01013403          	ld	s0,16(sp)
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	00013903          	ld	s2,0(sp)
    80001624:	02010113          	addi	sp,sp,32
    80001628:	00008067          	ret

000000008000162c <_ZN7WorkerC11workerBodyCEPv>:

void WorkerC::workerBodyC(void *arg) {
    8000162c:	fe010113          	addi	sp,sp,-32
    80001630:	00113c23          	sd	ra,24(sp)
    80001634:	00813823          	sd	s0,16(sp)
    80001638:	00913423          	sd	s1,8(sp)
    8000163c:	01213023          	sd	s2,0(sp)
    80001640:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80001644:	00000493          	li	s1,0
    80001648:	0400006f          	j	80001688 <_ZN7WorkerC11workerBodyCEPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000164c:	00005517          	auipc	a0,0x5
    80001650:	a0450513          	addi	a0,a0,-1532 # 80006050 <CONSOLE_STATUS+0x40>
    80001654:	00001097          	auipc	ra,0x1
    80001658:	34c080e7          	jalr	844(ra) # 800029a0 <_Z11printStringPKc>
    8000165c:	00000613          	li	a2,0
    80001660:	00a00593          	li	a1,10
    80001664:	00048513          	mv	a0,s1
    80001668:	00001097          	auipc	ra,0x1
    8000166c:	4d0080e7          	jalr	1232(ra) # 80002b38 <_Z8printIntiii>
    80001670:	00005517          	auipc	a0,0x5
    80001674:	bd050513          	addi	a0,a0,-1072 # 80006240 <CONSOLE_STATUS+0x230>
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	328080e7          	jalr	808(ra) # 800029a0 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80001680:	0014849b          	addiw	s1,s1,1
    80001684:	0ff4f493          	andi	s1,s1,255
    80001688:	00200793          	li	a5,2
    8000168c:	fc97f0e3          	bgeu	a5,s1,8000164c <_ZN7WorkerC11workerBodyCEPv+0x20>
    }

    printString("C: dispatch\n");
    80001690:	00005517          	auipc	a0,0x5
    80001694:	9c850513          	addi	a0,a0,-1592 # 80006058 <CONSOLE_STATUS+0x48>
    80001698:	00001097          	auipc	ra,0x1
    8000169c:	308080e7          	jalr	776(ra) # 800029a0 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    800016a0:	00700313          	li	t1,7
    thread_dispatch();
    800016a4:	00000097          	auipc	ra,0x0
    800016a8:	c50080e7          	jalr	-944(ra) # 800012f4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    800016ac:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    800016b0:	00005517          	auipc	a0,0x5
    800016b4:	9b850513          	addi	a0,a0,-1608 # 80006068 <CONSOLE_STATUS+0x58>
    800016b8:	00001097          	auipc	ra,0x1
    800016bc:	2e8080e7          	jalr	744(ra) # 800029a0 <_Z11printStringPKc>
    800016c0:	00000613          	li	a2,0
    800016c4:	00a00593          	li	a1,10
    800016c8:	0009051b          	sext.w	a0,s2
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	46c080e7          	jalr	1132(ra) # 80002b38 <_Z8printIntiii>
    800016d4:	00005517          	auipc	a0,0x5
    800016d8:	b6c50513          	addi	a0,a0,-1172 # 80006240 <CONSOLE_STATUS+0x230>
    800016dc:	00001097          	auipc	ra,0x1
    800016e0:	2c4080e7          	jalr	708(ra) # 800029a0 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800016e4:	00c00513          	li	a0,12
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	d30080e7          	jalr	-720(ra) # 80001418 <_Z9fibonaccim>
    800016f0:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800016f4:	00005517          	auipc	a0,0x5
    800016f8:	97c50513          	addi	a0,a0,-1668 # 80006070 <CONSOLE_STATUS+0x60>
    800016fc:	00001097          	auipc	ra,0x1
    80001700:	2a4080e7          	jalr	676(ra) # 800029a0 <_Z11printStringPKc>
    80001704:	00000613          	li	a2,0
    80001708:	00a00593          	li	a1,10
    8000170c:	0009051b          	sext.w	a0,s2
    80001710:	00001097          	auipc	ra,0x1
    80001714:	428080e7          	jalr	1064(ra) # 80002b38 <_Z8printIntiii>
    80001718:	00005517          	auipc	a0,0x5
    8000171c:	b2850513          	addi	a0,a0,-1240 # 80006240 <CONSOLE_STATUS+0x230>
    80001720:	00001097          	auipc	ra,0x1
    80001724:	280080e7          	jalr	640(ra) # 800029a0 <_Z11printStringPKc>
    80001728:	0400006f          	j	80001768 <_ZN7WorkerC11workerBodyCEPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    8000172c:	00005517          	auipc	a0,0x5
    80001730:	92450513          	addi	a0,a0,-1756 # 80006050 <CONSOLE_STATUS+0x40>
    80001734:	00001097          	auipc	ra,0x1
    80001738:	26c080e7          	jalr	620(ra) # 800029a0 <_Z11printStringPKc>
    8000173c:	00000613          	li	a2,0
    80001740:	00a00593          	li	a1,10
    80001744:	00048513          	mv	a0,s1
    80001748:	00001097          	auipc	ra,0x1
    8000174c:	3f0080e7          	jalr	1008(ra) # 80002b38 <_Z8printIntiii>
    80001750:	00005517          	auipc	a0,0x5
    80001754:	af050513          	addi	a0,a0,-1296 # 80006240 <CONSOLE_STATUS+0x230>
    80001758:	00001097          	auipc	ra,0x1
    8000175c:	248080e7          	jalr	584(ra) # 800029a0 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80001760:	0014849b          	addiw	s1,s1,1
    80001764:	0ff4f493          	andi	s1,s1,255
    80001768:	00500793          	li	a5,5
    8000176c:	fc97f0e3          	bgeu	a5,s1,8000172c <_ZN7WorkerC11workerBodyCEPv+0x100>
    }

    printString("A finished!\n");
    80001770:	00005517          	auipc	a0,0x5
    80001774:	8b850513          	addi	a0,a0,-1864 # 80006028 <CONSOLE_STATUS+0x18>
    80001778:	00001097          	auipc	ra,0x1
    8000177c:	228080e7          	jalr	552(ra) # 800029a0 <_Z11printStringPKc>
    finishedC = true;
    80001780:	00100793          	li	a5,1
    80001784:	00006717          	auipc	a4,0x6
    80001788:	d0f70f23          	sb	a5,-738(a4) # 800074a2 <finishedC>
    thread_dispatch();
    8000178c:	00000097          	auipc	ra,0x0
    80001790:	b68080e7          	jalr	-1176(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001794:	01813083          	ld	ra,24(sp)
    80001798:	01013403          	ld	s0,16(sp)
    8000179c:	00813483          	ld	s1,8(sp)
    800017a0:	00013903          	ld	s2,0(sp)
    800017a4:	02010113          	addi	sp,sp,32
    800017a8:	00008067          	ret

00000000800017ac <_ZN7WorkerD11workerBodyDEPv>:

void WorkerD::workerBodyD(void* arg) {
    800017ac:	fe010113          	addi	sp,sp,-32
    800017b0:	00113c23          	sd	ra,24(sp)
    800017b4:	00813823          	sd	s0,16(sp)
    800017b8:	00913423          	sd	s1,8(sp)
    800017bc:	01213023          	sd	s2,0(sp)
    800017c0:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    800017c4:	00a00493          	li	s1,10
    800017c8:	0400006f          	j	80001808 <_ZN7WorkerD11workerBodyDEPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800017cc:	00005517          	auipc	a0,0x5
    800017d0:	8b450513          	addi	a0,a0,-1868 # 80006080 <CONSOLE_STATUS+0x70>
    800017d4:	00001097          	auipc	ra,0x1
    800017d8:	1cc080e7          	jalr	460(ra) # 800029a0 <_Z11printStringPKc>
    800017dc:	00000613          	li	a2,0
    800017e0:	00a00593          	li	a1,10
    800017e4:	00048513          	mv	a0,s1
    800017e8:	00001097          	auipc	ra,0x1
    800017ec:	350080e7          	jalr	848(ra) # 80002b38 <_Z8printIntiii>
    800017f0:	00005517          	auipc	a0,0x5
    800017f4:	a5050513          	addi	a0,a0,-1456 # 80006240 <CONSOLE_STATUS+0x230>
    800017f8:	00001097          	auipc	ra,0x1
    800017fc:	1a8080e7          	jalr	424(ra) # 800029a0 <_Z11printStringPKc>
    for (; i < 13; i++) {
    80001800:	0014849b          	addiw	s1,s1,1
    80001804:	0ff4f493          	andi	s1,s1,255
    80001808:	00c00793          	li	a5,12
    8000180c:	fc97f0e3          	bgeu	a5,s1,800017cc <_ZN7WorkerD11workerBodyDEPv+0x20>
    }

    printString("D: dispatch\n");
    80001810:	00005517          	auipc	a0,0x5
    80001814:	87850513          	addi	a0,a0,-1928 # 80006088 <CONSOLE_STATUS+0x78>
    80001818:	00001097          	auipc	ra,0x1
    8000181c:	188080e7          	jalr	392(ra) # 800029a0 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    80001820:	00500313          	li	t1,5
    thread_dispatch();
    80001824:	00000097          	auipc	ra,0x0
    80001828:	ad0080e7          	jalr	-1328(ra) # 800012f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    8000182c:	01000513          	li	a0,16
    80001830:	00000097          	auipc	ra,0x0
    80001834:	be8080e7          	jalr	-1048(ra) # 80001418 <_Z9fibonaccim>
    80001838:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    8000183c:	00005517          	auipc	a0,0x5
    80001840:	85c50513          	addi	a0,a0,-1956 # 80006098 <CONSOLE_STATUS+0x88>
    80001844:	00001097          	auipc	ra,0x1
    80001848:	15c080e7          	jalr	348(ra) # 800029a0 <_Z11printStringPKc>
    8000184c:	00000613          	li	a2,0
    80001850:	00a00593          	li	a1,10
    80001854:	0009051b          	sext.w	a0,s2
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	2e0080e7          	jalr	736(ra) # 80002b38 <_Z8printIntiii>
    80001860:	00005517          	auipc	a0,0x5
    80001864:	9e050513          	addi	a0,a0,-1568 # 80006240 <CONSOLE_STATUS+0x230>
    80001868:	00001097          	auipc	ra,0x1
    8000186c:	138080e7          	jalr	312(ra) # 800029a0 <_Z11printStringPKc>
    80001870:	0400006f          	j	800018b0 <_ZN7WorkerD11workerBodyDEPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001874:	00005517          	auipc	a0,0x5
    80001878:	80c50513          	addi	a0,a0,-2036 # 80006080 <CONSOLE_STATUS+0x70>
    8000187c:	00001097          	auipc	ra,0x1
    80001880:	124080e7          	jalr	292(ra) # 800029a0 <_Z11printStringPKc>
    80001884:	00000613          	li	a2,0
    80001888:	00a00593          	li	a1,10
    8000188c:	00048513          	mv	a0,s1
    80001890:	00001097          	auipc	ra,0x1
    80001894:	2a8080e7          	jalr	680(ra) # 80002b38 <_Z8printIntiii>
    80001898:	00005517          	auipc	a0,0x5
    8000189c:	9a850513          	addi	a0,a0,-1624 # 80006240 <CONSOLE_STATUS+0x230>
    800018a0:	00001097          	auipc	ra,0x1
    800018a4:	100080e7          	jalr	256(ra) # 800029a0 <_Z11printStringPKc>
    for (; i < 16; i++) {
    800018a8:	0014849b          	addiw	s1,s1,1
    800018ac:	0ff4f493          	andi	s1,s1,255
    800018b0:	00f00793          	li	a5,15
    800018b4:	fc97f0e3          	bgeu	a5,s1,80001874 <_ZN7WorkerD11workerBodyDEPv+0xc8>
    }

    printString("D finished!\n");
    800018b8:	00004517          	auipc	a0,0x4
    800018bc:	7f050513          	addi	a0,a0,2032 # 800060a8 <CONSOLE_STATUS+0x98>
    800018c0:	00001097          	auipc	ra,0x1
    800018c4:	0e0080e7          	jalr	224(ra) # 800029a0 <_Z11printStringPKc>
    finishedD = true;
    800018c8:	00100793          	li	a5,1
    800018cc:	00006717          	auipc	a4,0x6
    800018d0:	bcf70ba3          	sb	a5,-1065(a4) # 800074a3 <finishedD>
    thread_dispatch();
    800018d4:	00000097          	auipc	ra,0x0
    800018d8:	a20080e7          	jalr	-1504(ra) # 800012f4 <_Z15thread_dispatchv>
}
    800018dc:	01813083          	ld	ra,24(sp)
    800018e0:	01013403          	ld	s0,16(sp)
    800018e4:	00813483          	ld	s1,8(sp)
    800018e8:	00013903          	ld	s2,0(sp)
    800018ec:	02010113          	addi	sp,sp,32
    800018f0:	00008067          	ret

00000000800018f4 <_Z20Threads_CPP_API_testv>:


void Threads_CPP_API_test() {
    800018f4:	fc010113          	addi	sp,sp,-64
    800018f8:	02113c23          	sd	ra,56(sp)
    800018fc:	02813823          	sd	s0,48(sp)
    80001900:	02913423          	sd	s1,40(sp)
    80001904:	03213023          	sd	s2,32(sp)
    80001908:	04010413          	addi	s0,sp,64
    Thread* threads[4];

    threads[0] = new WorkerA();
    8000190c:	01000513          	li	a0,16
    80001910:	00000097          	auipc	ra,0x0
    80001914:	570080e7          	jalr	1392(ra) # 80001e80 <_Znwm>
    80001918:	00050493          	mv	s1,a0
    WorkerA():Thread() {}
    8000191c:	00000097          	auipc	ra,0x0
    80001920:	6b4080e7          	jalr	1716(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80001924:	00006797          	auipc	a5,0x6
    80001928:	9bc78793          	addi	a5,a5,-1604 # 800072e0 <_ZTV7WorkerA+0x10>
    8000192c:	00f4b023          	sd	a5,0(s1)
    threads[0] = new WorkerA();
    80001930:	fc943023          	sd	s1,-64(s0)
    printString("ThreadA created\n");
    80001934:	00004517          	auipc	a0,0x4
    80001938:	78450513          	addi	a0,a0,1924 # 800060b8 <CONSOLE_STATUS+0xa8>
    8000193c:	00001097          	auipc	ra,0x1
    80001940:	064080e7          	jalr	100(ra) # 800029a0 <_Z11printStringPKc>

    threads[1] = new WorkerB();
    80001944:	01000513          	li	a0,16
    80001948:	00000097          	auipc	ra,0x0
    8000194c:	538080e7          	jalr	1336(ra) # 80001e80 <_Znwm>
    80001950:	00050493          	mv	s1,a0
    WorkerB():Thread() {}
    80001954:	00000097          	auipc	ra,0x0
    80001958:	67c080e7          	jalr	1660(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    8000195c:	00006797          	auipc	a5,0x6
    80001960:	9ac78793          	addi	a5,a5,-1620 # 80007308 <_ZTV7WorkerB+0x10>
    80001964:	00f4b023          	sd	a5,0(s1)
    threads[1] = new WorkerB();
    80001968:	fc943423          	sd	s1,-56(s0)
    printString("ThreadB created\n");
    8000196c:	00004517          	auipc	a0,0x4
    80001970:	76450513          	addi	a0,a0,1892 # 800060d0 <CONSOLE_STATUS+0xc0>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	02c080e7          	jalr	44(ra) # 800029a0 <_Z11printStringPKc>

    threads[2] = new WorkerC();
    8000197c:	01000513          	li	a0,16
    80001980:	00000097          	auipc	ra,0x0
    80001984:	500080e7          	jalr	1280(ra) # 80001e80 <_Znwm>
    80001988:	00050493          	mv	s1,a0
    WorkerC():Thread() {}
    8000198c:	00000097          	auipc	ra,0x0
    80001990:	644080e7          	jalr	1604(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80001994:	00006797          	auipc	a5,0x6
    80001998:	99c78793          	addi	a5,a5,-1636 # 80007330 <_ZTV7WorkerC+0x10>
    8000199c:	00f4b023          	sd	a5,0(s1)
    threads[2] = new WorkerC();
    800019a0:	fc943823          	sd	s1,-48(s0)
    printString("ThreadC created\n");
    800019a4:	00004517          	auipc	a0,0x4
    800019a8:	74450513          	addi	a0,a0,1860 # 800060e8 <CONSOLE_STATUS+0xd8>
    800019ac:	00001097          	auipc	ra,0x1
    800019b0:	ff4080e7          	jalr	-12(ra) # 800029a0 <_Z11printStringPKc>

    threads[3] = new WorkerD();
    800019b4:	01000513          	li	a0,16
    800019b8:	00000097          	auipc	ra,0x0
    800019bc:	4c8080e7          	jalr	1224(ra) # 80001e80 <_Znwm>
    800019c0:	00050493          	mv	s1,a0
    WorkerD():Thread() {}
    800019c4:	00000097          	auipc	ra,0x0
    800019c8:	60c080e7          	jalr	1548(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    800019cc:	00006797          	auipc	a5,0x6
    800019d0:	98c78793          	addi	a5,a5,-1652 # 80007358 <_ZTV7WorkerD+0x10>
    800019d4:	00f4b023          	sd	a5,0(s1)
    threads[3] = new WorkerD();
    800019d8:	fc943c23          	sd	s1,-40(s0)
    printString("ThreadD created\n");
    800019dc:	00004517          	auipc	a0,0x4
    800019e0:	72450513          	addi	a0,a0,1828 # 80006100 <CONSOLE_STATUS+0xf0>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	fbc080e7          	jalr	-68(ra) # 800029a0 <_Z11printStringPKc>

    for(int i=0; i<4; i++) {
    800019ec:	00000493          	li	s1,0
    800019f0:	00300793          	li	a5,3
    800019f4:	0297c663          	blt	a5,s1,80001a20 <_Z20Threads_CPP_API_testv+0x12c>
        threads[i]->start();
    800019f8:	00349793          	slli	a5,s1,0x3
    800019fc:	fe040713          	addi	a4,s0,-32
    80001a00:	00f707b3          	add	a5,a4,a5
    80001a04:	fe07b503          	ld	a0,-32(a5)
    80001a08:	00000097          	auipc	ra,0x0
    80001a0c:	568080e7          	jalr	1384(ra) # 80001f70 <_ZN6Thread5startEv>
    for(int i=0; i<4; i++) {
    80001a10:	0014849b          	addiw	s1,s1,1
    80001a14:	fddff06f          	j	800019f0 <_Z20Threads_CPP_API_testv+0xfc>
    }

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        Thread::dispatch();
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	590080e7          	jalr	1424(ra) # 80001fa8 <_ZN6Thread8dispatchEv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001a20:	00006797          	auipc	a5,0x6
    80001a24:	a807c783          	lbu	a5,-1408(a5) # 800074a0 <finishedA>
    80001a28:	fe0788e3          	beqz	a5,80001a18 <_Z20Threads_CPP_API_testv+0x124>
    80001a2c:	00006797          	auipc	a5,0x6
    80001a30:	a757c783          	lbu	a5,-1419(a5) # 800074a1 <finishedB>
    80001a34:	fe0782e3          	beqz	a5,80001a18 <_Z20Threads_CPP_API_testv+0x124>
    80001a38:	00006797          	auipc	a5,0x6
    80001a3c:	a6a7c783          	lbu	a5,-1430(a5) # 800074a2 <finishedC>
    80001a40:	fc078ce3          	beqz	a5,80001a18 <_Z20Threads_CPP_API_testv+0x124>
    80001a44:	00006797          	auipc	a5,0x6
    80001a48:	a5f7c783          	lbu	a5,-1441(a5) # 800074a3 <finishedD>
    80001a4c:	fc0786e3          	beqz	a5,80001a18 <_Z20Threads_CPP_API_testv+0x124>
    }

    for (auto thread: threads) { delete thread; }
    80001a50:	fc040493          	addi	s1,s0,-64
    80001a54:	0080006f          	j	80001a5c <_Z20Threads_CPP_API_testv+0x168>
    80001a58:	00848493          	addi	s1,s1,8
    80001a5c:	fe040793          	addi	a5,s0,-32
    80001a60:	08f48663          	beq	s1,a5,80001aec <_Z20Threads_CPP_API_testv+0x1f8>
    80001a64:	0004b503          	ld	a0,0(s1)
    80001a68:	fe0508e3          	beqz	a0,80001a58 <_Z20Threads_CPP_API_testv+0x164>
    80001a6c:	00053783          	ld	a5,0(a0)
    80001a70:	0087b783          	ld	a5,8(a5)
    80001a74:	000780e7          	jalr	a5
    80001a78:	fe1ff06f          	j	80001a58 <_Z20Threads_CPP_API_testv+0x164>
    80001a7c:	00050913          	mv	s2,a0
    threads[0] = new WorkerA();
    80001a80:	00048513          	mv	a0,s1
    80001a84:	00000097          	auipc	ra,0x0
    80001a88:	44c080e7          	jalr	1100(ra) # 80001ed0 <_ZdlPv>
    80001a8c:	00090513          	mv	a0,s2
    80001a90:	00007097          	auipc	ra,0x7
    80001a94:	b28080e7          	jalr	-1240(ra) # 800085b8 <_Unwind_Resume>
    80001a98:	00050913          	mv	s2,a0
    threads[1] = new WorkerB();
    80001a9c:	00048513          	mv	a0,s1
    80001aa0:	00000097          	auipc	ra,0x0
    80001aa4:	430080e7          	jalr	1072(ra) # 80001ed0 <_ZdlPv>
    80001aa8:	00090513          	mv	a0,s2
    80001aac:	00007097          	auipc	ra,0x7
    80001ab0:	b0c080e7          	jalr	-1268(ra) # 800085b8 <_Unwind_Resume>
    80001ab4:	00050913          	mv	s2,a0
    threads[2] = new WorkerC();
    80001ab8:	00048513          	mv	a0,s1
    80001abc:	00000097          	auipc	ra,0x0
    80001ac0:	414080e7          	jalr	1044(ra) # 80001ed0 <_ZdlPv>
    80001ac4:	00090513          	mv	a0,s2
    80001ac8:	00007097          	auipc	ra,0x7
    80001acc:	af0080e7          	jalr	-1296(ra) # 800085b8 <_Unwind_Resume>
    80001ad0:	00050913          	mv	s2,a0
    threads[3] = new WorkerD();
    80001ad4:	00048513          	mv	a0,s1
    80001ad8:	00000097          	auipc	ra,0x0
    80001adc:	3f8080e7          	jalr	1016(ra) # 80001ed0 <_ZdlPv>
    80001ae0:	00090513          	mv	a0,s2
    80001ae4:	00007097          	auipc	ra,0x7
    80001ae8:	ad4080e7          	jalr	-1324(ra) # 800085b8 <_Unwind_Resume>
}
    80001aec:	03813083          	ld	ra,56(sp)
    80001af0:	03013403          	ld	s0,48(sp)
    80001af4:	02813483          	ld	s1,40(sp)
    80001af8:	02013903          	ld	s2,32(sp)
    80001afc:	04010113          	addi	sp,sp,64
    80001b00:	00008067          	ret

0000000080001b04 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001b04:	ff010113          	addi	sp,sp,-16
    80001b08:	00113423          	sd	ra,8(sp)
    80001b0c:	00813023          	sd	s0,0(sp)
    80001b10:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	de0080e7          	jalr	-544(ra) # 800018f4 <_Z20Threads_CPP_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001b1c:	00813083          	ld	ra,8(sp)
    80001b20:	00013403          	ld	s0,0(sp)
    80001b24:	01010113          	addi	sp,sp,16
    80001b28:	00008067          	ret

0000000080001b2c <_ZN7WorkerAD1Ev>:
class WorkerA: public Thread {
    80001b2c:	ff010113          	addi	sp,sp,-16
    80001b30:	00113423          	sd	ra,8(sp)
    80001b34:	00813023          	sd	s0,0(sp)
    80001b38:	01010413          	addi	s0,sp,16
    80001b3c:	00005797          	auipc	a5,0x5
    80001b40:	7a478793          	addi	a5,a5,1956 # 800072e0 <_ZTV7WorkerA+0x10>
    80001b44:	00f53023          	sd	a5,0(a0)
    80001b48:	00000097          	auipc	ra,0x0
    80001b4c:	2f0080e7          	jalr	752(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001b50:	00813083          	ld	ra,8(sp)
    80001b54:	00013403          	ld	s0,0(sp)
    80001b58:	01010113          	addi	sp,sp,16
    80001b5c:	00008067          	ret

0000000080001b60 <_ZN7WorkerAD0Ev>:
    80001b60:	fe010113          	addi	sp,sp,-32
    80001b64:	00113c23          	sd	ra,24(sp)
    80001b68:	00813823          	sd	s0,16(sp)
    80001b6c:	00913423          	sd	s1,8(sp)
    80001b70:	02010413          	addi	s0,sp,32
    80001b74:	00050493          	mv	s1,a0
    80001b78:	00005797          	auipc	a5,0x5
    80001b7c:	76878793          	addi	a5,a5,1896 # 800072e0 <_ZTV7WorkerA+0x10>
    80001b80:	00f53023          	sd	a5,0(a0)
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	2b4080e7          	jalr	692(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001b8c:	00048513          	mv	a0,s1
    80001b90:	00000097          	auipc	ra,0x0
    80001b94:	340080e7          	jalr	832(ra) # 80001ed0 <_ZdlPv>
    80001b98:	01813083          	ld	ra,24(sp)
    80001b9c:	01013403          	ld	s0,16(sp)
    80001ba0:	00813483          	ld	s1,8(sp)
    80001ba4:	02010113          	addi	sp,sp,32
    80001ba8:	00008067          	ret

0000000080001bac <_ZN7WorkerBD1Ev>:
class WorkerB: public Thread {
    80001bac:	ff010113          	addi	sp,sp,-16
    80001bb0:	00113423          	sd	ra,8(sp)
    80001bb4:	00813023          	sd	s0,0(sp)
    80001bb8:	01010413          	addi	s0,sp,16
    80001bbc:	00005797          	auipc	a5,0x5
    80001bc0:	74c78793          	addi	a5,a5,1868 # 80007308 <_ZTV7WorkerB+0x10>
    80001bc4:	00f53023          	sd	a5,0(a0)
    80001bc8:	00000097          	auipc	ra,0x0
    80001bcc:	270080e7          	jalr	624(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001bd0:	00813083          	ld	ra,8(sp)
    80001bd4:	00013403          	ld	s0,0(sp)
    80001bd8:	01010113          	addi	sp,sp,16
    80001bdc:	00008067          	ret

0000000080001be0 <_ZN7WorkerBD0Ev>:
    80001be0:	fe010113          	addi	sp,sp,-32
    80001be4:	00113c23          	sd	ra,24(sp)
    80001be8:	00813823          	sd	s0,16(sp)
    80001bec:	00913423          	sd	s1,8(sp)
    80001bf0:	02010413          	addi	s0,sp,32
    80001bf4:	00050493          	mv	s1,a0
    80001bf8:	00005797          	auipc	a5,0x5
    80001bfc:	71078793          	addi	a5,a5,1808 # 80007308 <_ZTV7WorkerB+0x10>
    80001c00:	00f53023          	sd	a5,0(a0)
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	234080e7          	jalr	564(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001c0c:	00048513          	mv	a0,s1
    80001c10:	00000097          	auipc	ra,0x0
    80001c14:	2c0080e7          	jalr	704(ra) # 80001ed0 <_ZdlPv>
    80001c18:	01813083          	ld	ra,24(sp)
    80001c1c:	01013403          	ld	s0,16(sp)
    80001c20:	00813483          	ld	s1,8(sp)
    80001c24:	02010113          	addi	sp,sp,32
    80001c28:	00008067          	ret

0000000080001c2c <_ZN7WorkerCD1Ev>:
class WorkerC: public Thread {
    80001c2c:	ff010113          	addi	sp,sp,-16
    80001c30:	00113423          	sd	ra,8(sp)
    80001c34:	00813023          	sd	s0,0(sp)
    80001c38:	01010413          	addi	s0,sp,16
    80001c3c:	00005797          	auipc	a5,0x5
    80001c40:	6f478793          	addi	a5,a5,1780 # 80007330 <_ZTV7WorkerC+0x10>
    80001c44:	00f53023          	sd	a5,0(a0)
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	1f0080e7          	jalr	496(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_ZN7WorkerCD0Ev>:
    80001c60:	fe010113          	addi	sp,sp,-32
    80001c64:	00113c23          	sd	ra,24(sp)
    80001c68:	00813823          	sd	s0,16(sp)
    80001c6c:	00913423          	sd	s1,8(sp)
    80001c70:	02010413          	addi	s0,sp,32
    80001c74:	00050493          	mv	s1,a0
    80001c78:	00005797          	auipc	a5,0x5
    80001c7c:	6b878793          	addi	a5,a5,1720 # 80007330 <_ZTV7WorkerC+0x10>
    80001c80:	00f53023          	sd	a5,0(a0)
    80001c84:	00000097          	auipc	ra,0x0
    80001c88:	1b4080e7          	jalr	436(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001c8c:	00048513          	mv	a0,s1
    80001c90:	00000097          	auipc	ra,0x0
    80001c94:	240080e7          	jalr	576(ra) # 80001ed0 <_ZdlPv>
    80001c98:	01813083          	ld	ra,24(sp)
    80001c9c:	01013403          	ld	s0,16(sp)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret

0000000080001cac <_ZN7WorkerDD1Ev>:
class WorkerD: public Thread {
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00113423          	sd	ra,8(sp)
    80001cb4:	00813023          	sd	s0,0(sp)
    80001cb8:	01010413          	addi	s0,sp,16
    80001cbc:	00005797          	auipc	a5,0x5
    80001cc0:	69c78793          	addi	a5,a5,1692 # 80007358 <_ZTV7WorkerD+0x10>
    80001cc4:	00f53023          	sd	a5,0(a0)
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	170080e7          	jalr	368(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001cd0:	00813083          	ld	ra,8(sp)
    80001cd4:	00013403          	ld	s0,0(sp)
    80001cd8:	01010113          	addi	sp,sp,16
    80001cdc:	00008067          	ret

0000000080001ce0 <_ZN7WorkerDD0Ev>:
    80001ce0:	fe010113          	addi	sp,sp,-32
    80001ce4:	00113c23          	sd	ra,24(sp)
    80001ce8:	00813823          	sd	s0,16(sp)
    80001cec:	00913423          	sd	s1,8(sp)
    80001cf0:	02010413          	addi	s0,sp,32
    80001cf4:	00050493          	mv	s1,a0
    80001cf8:	00005797          	auipc	a5,0x5
    80001cfc:	66078793          	addi	a5,a5,1632 # 80007358 <_ZTV7WorkerD+0x10>
    80001d00:	00f53023          	sd	a5,0(a0)
    80001d04:	00000097          	auipc	ra,0x0
    80001d08:	134080e7          	jalr	308(ra) # 80001e38 <_ZN6ThreadD1Ev>
    80001d0c:	00048513          	mv	a0,s1
    80001d10:	00000097          	auipc	ra,0x0
    80001d14:	1c0080e7          	jalr	448(ra) # 80001ed0 <_ZdlPv>
    80001d18:	01813083          	ld	ra,24(sp)
    80001d1c:	01013403          	ld	s0,16(sp)
    80001d20:	00813483          	ld	s1,8(sp)
    80001d24:	02010113          	addi	sp,sp,32
    80001d28:	00008067          	ret

0000000080001d2c <_ZN7WorkerA3runEv>:
    void run() override {
    80001d2c:	ff010113          	addi	sp,sp,-16
    80001d30:	00113423          	sd	ra,8(sp)
    80001d34:	00813023          	sd	s0,0(sp)
    80001d38:	01010413          	addi	s0,sp,16
        workerBodyA(nullptr);
    80001d3c:	00000593          	li	a1,0
    80001d40:	fffff097          	auipc	ra,0xfffff
    80001d44:	74c080e7          	jalr	1868(ra) # 8000148c <_ZN7WorkerA11workerBodyAEPv>
    }
    80001d48:	00813083          	ld	ra,8(sp)
    80001d4c:	00013403          	ld	s0,0(sp)
    80001d50:	01010113          	addi	sp,sp,16
    80001d54:	00008067          	ret

0000000080001d58 <_ZN7WorkerB3runEv>:
    void run() override {
    80001d58:	ff010113          	addi	sp,sp,-16
    80001d5c:	00113423          	sd	ra,8(sp)
    80001d60:	00813023          	sd	s0,0(sp)
    80001d64:	01010413          	addi	s0,sp,16
        workerBodyB(nullptr);
    80001d68:	00000593          	li	a1,0
    80001d6c:	fffff097          	auipc	ra,0xfffff
    80001d70:	7ec080e7          	jalr	2028(ra) # 80001558 <_ZN7WorkerB11workerBodyBEPv>
    }
    80001d74:	00813083          	ld	ra,8(sp)
    80001d78:	00013403          	ld	s0,0(sp)
    80001d7c:	01010113          	addi	sp,sp,16
    80001d80:	00008067          	ret

0000000080001d84 <_ZN7WorkerC3runEv>:
    void run() override {
    80001d84:	ff010113          	addi	sp,sp,-16
    80001d88:	00113423          	sd	ra,8(sp)
    80001d8c:	00813023          	sd	s0,0(sp)
    80001d90:	01010413          	addi	s0,sp,16
        workerBodyC(nullptr);
    80001d94:	00000593          	li	a1,0
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	894080e7          	jalr	-1900(ra) # 8000162c <_ZN7WorkerC11workerBodyCEPv>
    }
    80001da0:	00813083          	ld	ra,8(sp)
    80001da4:	00013403          	ld	s0,0(sp)
    80001da8:	01010113          	addi	sp,sp,16
    80001dac:	00008067          	ret

0000000080001db0 <_ZN7WorkerD3runEv>:
    void run() override {
    80001db0:	ff010113          	addi	sp,sp,-16
    80001db4:	00113423          	sd	ra,8(sp)
    80001db8:	00813023          	sd	s0,0(sp)
    80001dbc:	01010413          	addi	s0,sp,16
        workerBodyD(nullptr);
    80001dc0:	00000593          	li	a1,0
    80001dc4:	00000097          	auipc	ra,0x0
    80001dc8:	9e8080e7          	jalr	-1560(ra) # 800017ac <_ZN7WorkerD11workerBodyDEPv>
    }
    80001dcc:	00813083          	ld	ra,8(sp)
    80001dd0:	00013403          	ld	s0,0(sp)
    80001dd4:	01010113          	addi	sp,sp,16
    80001dd8:	00008067          	ret

0000000080001ddc <main>:
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

void userMain();

int main() {
    80001ddc:	ff010113          	addi	sp,sp,-16
    80001de0:	00113423          	sd	ra,8(sp)
    80001de4:	00813023          	sd	s0,0(sp)
    80001de8:	01010413          	addi	s0,sp,16

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001dec:	00000593          	li	a1,0
    80001df0:	00000513          	li	a0,0
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	568080e7          	jalr	1384(ra) # 8000235c <_ZN3TCB12createThreadEPFvPvES0_>
    80001dfc:	00005797          	auipc	a5,0x5
    80001e00:	63c7b783          	ld	a5,1596(a5) # 80007438 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001e04:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001e08:	00005797          	auipc	a5,0x5
    80001e0c:	6107b783          	ld	a5,1552(a5) # 80007418 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001e10:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001e14:	00200793          	li	a5,2
    80001e18:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    userMain();
    80001e1c:	00000097          	auipc	ra,0x0
    80001e20:	ce8080e7          	jalr	-792(ra) # 80001b04 <_Z8userMainv>

    return 0;

    80001e24:	00000513          	li	a0,0
    80001e28:	00813083          	ld	ra,8(sp)
    80001e2c:	00013403          	ld	s0,0(sp)
    80001e30:	01010113          	addi	sp,sp,16
    80001e34:	00008067          	ret

0000000080001e38 <_ZN6ThreadD1Ev>:

Thread::Thread() {

}

Thread::~Thread() {
    80001e38:	ff010113          	addi	sp,sp,-16
    80001e3c:	00813423          	sd	s0,8(sp)
    80001e40:	01010413          	addi	s0,sp,16

}
    80001e44:	00813403          	ld	s0,8(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN6Thread3runEv>:

void Thread::run() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00813423          	sd	s0,8(sp)
    80001e58:	01010413          	addi	s0,sp,16

}
    80001e5c:	00813403          	ld	s0,8(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN9SemaphoreD1Ev>:

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00813423          	sd	s0,8(sp)
    80001e70:	01010413          	addi	s0,sp,16

}
    80001e74:	00813403          	ld	s0,8(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_Znwm>:
{
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00113423          	sd	ra,8(sp)
    80001e88:	00813023          	sd	s0,0(sp)
    80001e8c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001e90:	00003097          	auipc	ra,0x3
    80001e94:	5c8080e7          	jalr	1480(ra) # 80005458 <__mem_alloc>
}
    80001e98:	00813083          	ld	ra,8(sp)
    80001e9c:	00013403          	ld	s0,0(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_Znam>:
{
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00113423          	sd	ra,8(sp)
    80001eb0:	00813023          	sd	s0,0(sp)
    80001eb4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001eb8:	00003097          	auipc	ra,0x3
    80001ebc:	5a0080e7          	jalr	1440(ra) # 80005458 <__mem_alloc>
}
    80001ec0:	00813083          	ld	ra,8(sp)
    80001ec4:	00013403          	ld	s0,0(sp)
    80001ec8:	01010113          	addi	sp,sp,16
    80001ecc:	00008067          	ret

0000000080001ed0 <_ZdlPv>:
{
    80001ed0:	ff010113          	addi	sp,sp,-16
    80001ed4:	00113423          	sd	ra,8(sp)
    80001ed8:	00813023          	sd	s0,0(sp)
    80001edc:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001ee0:	00003097          	auipc	ra,0x3
    80001ee4:	4ac080e7          	jalr	1196(ra) # 8000538c <__mem_free>
}
    80001ee8:	00813083          	ld	ra,8(sp)
    80001eec:	00013403          	ld	s0,0(sp)
    80001ef0:	01010113          	addi	sp,sp,16
    80001ef4:	00008067          	ret

0000000080001ef8 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001ef8:	ff010113          	addi	sp,sp,-16
    80001efc:	00113423          	sd	ra,8(sp)
    80001f00:	00813023          	sd	s0,0(sp)
    80001f04:	01010413          	addi	s0,sp,16
}
    80001f08:	00000097          	auipc	ra,0x0
    80001f0c:	fc8080e7          	jalr	-56(ra) # 80001ed0 <_ZdlPv>
    80001f10:	00813083          	ld	ra,8(sp)
    80001f14:	00013403          	ld	s0,0(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f20:	ff010113          	addi	sp,sp,-16
    80001f24:	00113423          	sd	ra,8(sp)
    80001f28:	00813023          	sd	s0,0(sp)
    80001f2c:	01010413          	addi	s0,sp,16
}
    80001f30:	00000097          	auipc	ra,0x0
    80001f34:	fa0080e7          	jalr	-96(ra) # 80001ed0 <_ZdlPv>
    80001f38:	00813083          	ld	ra,8(sp)
    80001f3c:	00013403          	ld	s0,0(sp)
    80001f40:	01010113          	addi	sp,sp,16
    80001f44:	00008067          	ret

0000000080001f48 <_ZdaPv>:
{
    80001f48:	ff010113          	addi	sp,sp,-16
    80001f4c:	00113423          	sd	ra,8(sp)
    80001f50:	00813023          	sd	s0,0(sp)
    80001f54:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001f58:	00003097          	auipc	ra,0x3
    80001f5c:	434080e7          	jalr	1076(ra) # 8000538c <__mem_free>
}
    80001f60:	00813083          	ld	ra,8(sp)
    80001f64:	00013403          	ld	s0,0(sp)
    80001f68:	01010113          	addi	sp,sp,16
    80001f6c:	00008067          	ret

0000000080001f70 <_ZN6Thread5startEv>:
int Thread::start (){
    80001f70:	ff010113          	addi	sp,sp,-16
    80001f74:	00113423          	sd	ra,8(sp)
    80001f78:	00813023          	sd	s0,0(sp)
    80001f7c:	01010413          	addi	s0,sp,16
    int a = thread_create(&myHandle, myHandle->getBody(), myHandle->getArg());
    80001f80:	00853783          	ld	a5,8(a0)
    80001f84:	0087b603          	ld	a2,8(a5)
    80001f88:	0007b583          	ld	a1,0(a5)
    80001f8c:	00850513          	addi	a0,a0,8
    80001f90:	fffff097          	auipc	ra,0xfffff
    80001f94:	308080e7          	jalr	776(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00113423          	sd	ra,8(sp)
    80001fb0:	00813023          	sd	s0,0(sp)
    80001fb4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001fb8:	fffff097          	auipc	ra,0xfffff
    80001fbc:	33c080e7          	jalr	828(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001fc0:	00813083          	ld	ra,8(sp)
    80001fc4:	00013403          	ld	s0,0(sp)
    80001fc8:	01010113          	addi	sp,sp,16
    80001fcc:	00008067          	ret

0000000080001fd0 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001fd0:	ff010113          	addi	sp,sp,-16
    80001fd4:	00813423          	sd	s0,8(sp)
    80001fd8:	01010413          	addi	s0,sp,16
    80001fdc:	00005797          	auipc	a5,0x5
    80001fe0:	3dc78793          	addi	a5,a5,988 # 800073b8 <_ZTV6Thread+0x10>
    80001fe4:	00f53023          	sd	a5,0(a0)
}
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
}
    80002000:	00000513          	li	a0,0
    80002004:	00813403          	ld	s0,8(sp)
    80002008:	01010113          	addi	sp,sp,16
    8000200c:	00008067          	ret

0000000080002010 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80002010:	ff010113          	addi	sp,sp,-16
    80002014:	00813423          	sd	s0,8(sp)
    80002018:	01010413          	addi	s0,sp,16
    return 0;
}
    8000201c:	00000513          	li	a0,0
    80002020:	00813403          	ld	s0,8(sp)
    80002024:	01010113          	addi	sp,sp,16
    80002028:	00008067          	ret

000000008000202c <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    8000202c:	ff010113          	addi	sp,sp,-16
    80002030:	00813423          	sd	s0,8(sp)
    80002034:	01010413          	addi	s0,sp,16
    return 0;
}
    80002038:	00000513          	li	a0,0
    8000203c:	00813403          	ld	s0,8(sp)
    80002040:	01010113          	addi	sp,sp,16
    80002044:	00008067          	ret

0000000080002048 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80002048:	fe010113          	addi	sp,sp,-32
    8000204c:	00113c23          	sd	ra,24(sp)
    80002050:	00813823          	sd	s0,16(sp)
    80002054:	00913423          	sd	s1,8(sp)
    80002058:	02010413          	addi	s0,sp,32
    8000205c:	00050493          	mv	s1,a0
    80002060:	00000097          	auipc	ra,0x0
    80002064:	f70080e7          	jalr	-144(ra) # 80001fd0 <_ZN6ThreadC1Ev>
    80002068:	00005797          	auipc	a5,0x5
    8000206c:	32078793          	addi	a5,a5,800 # 80007388 <_ZTV14PeriodicThread+0x10>
    80002070:	00f4b023          	sd	a5,0(s1)

}
    80002074:	01813083          	ld	ra,24(sp)
    80002078:	01013403          	ld	s0,16(sp)
    8000207c:	00813483          	ld	s1,8(sp)
    80002080:	02010113          	addi	sp,sp,32
    80002084:	00008067          	ret

0000000080002088 <_ZN7Console4getcEv>:

char Console::getc() {
    80002088:	ff010113          	addi	sp,sp,-16
    8000208c:	00113423          	sd	ra,8(sp)
    80002090:	00813023          	sd	s0,0(sp)
    80002094:	01010413          	addi	s0,sp,16
    return __getc();
    80002098:	00003097          	auipc	ra,0x3
    8000209c:	554080e7          	jalr	1364(ra) # 800055ec <__getc>
}
    800020a0:	00813083          	ld	ra,8(sp)
    800020a4:	00013403          	ld	s0,0(sp)
    800020a8:	01010113          	addi	sp,sp,16
    800020ac:	00008067          	ret

00000000800020b0 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    800020b0:	ff010113          	addi	sp,sp,-16
    800020b4:	00113423          	sd	ra,8(sp)
    800020b8:	00813023          	sd	s0,0(sp)
    800020bc:	01010413          	addi	s0,sp,16
    __putc(c);
    800020c0:	00003097          	auipc	ra,0x3
    800020c4:	4f0080e7          	jalr	1264(ra) # 800055b0 <__putc>
}
    800020c8:	00813083          	ld	ra,8(sp)
    800020cc:	00013403          	ld	s0,0(sp)
    800020d0:	01010113          	addi	sp,sp,16
    800020d4:	00008067          	ret

00000000800020d8 <_ZN14PeriodicThread18periodicActivationEv>:


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    800020d8:	ff010113          	addi	sp,sp,-16
    800020dc:	00813423          	sd	s0,8(sp)
    800020e0:	01010413          	addi	s0,sp,16
    800020e4:	00813403          	ld	s0,8(sp)
    800020e8:	01010113          	addi	sp,sp,16
    800020ec:	00008067          	ret

00000000800020f0 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    800020f0:	ff010113          	addi	sp,sp,-16
    800020f4:	00813423          	sd	s0,8(sp)
    800020f8:	01010413          	addi	s0,sp,16
    800020fc:	00005797          	auipc	a5,0x5
    80002100:	28c78793          	addi	a5,a5,652 # 80007388 <_ZTV14PeriodicThread+0x10>
    80002104:	00f53023          	sd	a5,0(a0)
    80002108:	00813403          	ld	s0,8(sp)
    8000210c:	01010113          	addi	sp,sp,16
    80002110:	00008067          	ret

0000000080002114 <_ZN14PeriodicThreadD0Ev>:
    80002114:	ff010113          	addi	sp,sp,-16
    80002118:	00113423          	sd	ra,8(sp)
    8000211c:	00813023          	sd	s0,0(sp)
    80002120:	01010413          	addi	s0,sp,16
    80002124:	00005797          	auipc	a5,0x5
    80002128:	26478793          	addi	a5,a5,612 # 80007388 <_ZTV14PeriodicThread+0x10>
    8000212c:	00f53023          	sd	a5,0(a0)
    80002130:	00000097          	auipc	ra,0x0
    80002134:	da0080e7          	jalr	-608(ra) # 80001ed0 <_ZdlPv>
    80002138:	00813083          	ld	ra,8(sp)
    8000213c:	00013403          	ld	s0,0(sp)
    80002140:	01010113          	addi	sp,sp,16
    80002144:	00008067          	ret

0000000080002148 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80002148:	ff010113          	addi	sp,sp,-16
    8000214c:	00813423          	sd	s0,8(sp)
    80002150:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80002154:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80002158:	10200073          	sret
}
    8000215c:	00813403          	ld	s0,8(sp)
    80002160:	01010113          	addi	sp,sp,16
    80002164:	00008067          	ret

0000000080002168 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80002168:	fa010113          	addi	sp,sp,-96
    8000216c:	04113c23          	sd	ra,88(sp)
    80002170:	04813823          	sd	s0,80(sp)
    80002174:	04913423          	sd	s1,72(sp)
    80002178:	05213023          	sd	s2,64(sp)
    8000217c:	03313c23          	sd	s3,56(sp)
    80002180:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002184:	142027f3          	csrr	a5,scause
    80002188:	faf43023          	sd	a5,-96(s0)
    return scause;
    8000218c:	fa043703          	ld	a4,-96(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002190:	ff870693          	addi	a3,a4,-8
    80002194:	00100793          	li	a5,1
    80002198:	02d7f863          	bgeu	a5,a3,800021c8 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    8000219c:	fff00793          	li	a5,-1
    800021a0:	03f79793          	slli	a5,a5,0x3f
    800021a4:	00178793          	addi	a5,a5,1
    800021a8:	14f70463          	beq	a4,a5,800022f0 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    800021ac:	fff00793          	li	a5,-1
    800021b0:	03f79793          	slli	a5,a5,0x3f
    800021b4:	00978793          	addi	a5,a5,9
    800021b8:	06f71c63          	bne	a4,a5,80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    800021bc:	00003097          	auipc	ra,0x3
    800021c0:	468080e7          	jalr	1128(ra) # 80005624 <console_handler>
    } else
    {
        // unexpected trap cause
    }
    800021c4:	06c0006f          	j	80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800021c8:	141027f3          	csrr	a5,sepc
    800021cc:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    800021d0:	fb843483          	ld	s1,-72(s0)
        uint64 sepc = r_sepc() + 4;
    800021d4:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800021d8:	100027f3          	csrr	a5,sstatus
    800021dc:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    800021e0:	fb043903          	ld	s2,-80(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    800021e4:	00050793          	mv	a5,a0
    800021e8:	faf43423          	sd	a5,-88(s0)
    return a0;
    800021ec:	fa843783          	ld	a5,-88(s0)
        if (a0 == 0x0000000000000001UL){
    800021f0:	00100713          	li	a4,1
    800021f4:	02e78a63          	beq	a5,a4,80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        else if (a0 == 0x0000000000000002UL){
    800021f8:	00200713          	li	a4,2
    800021fc:	02e78663          	beq	a5,a4,80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        else if (a0 == 0x0000000000000011UL){
    80002200:	01100713          	li	a4,17
    80002204:	04e78463          	beq	a5,a4,8000224c <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        else if (a0 == 0x0000000000000012UL){
    80002208:	01200713          	li	a4,18
    8000220c:	06e78663          	beq	a5,a4,80002278 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
        else if (a0 == 0x0000000000000013UL){
    80002210:	01300713          	li	a4,19
    80002214:	06e78a63          	beq	a5,a4,80002288 <_ZN5Riscv20handleSupervisorTrapEv+0x120>
        else if (a0 == 0x0000000000000021UL) {
    80002218:	02100713          	li	a4,33
    8000221c:	08e78263          	beq	a5,a4,800022a0 <_ZN5Riscv20handleSupervisorTrapEv+0x138>
        else if (a0 == 0x0000000000000022UL) {
    80002220:	02200713          	li	a4,34
    80002224:	0ae78e63          	beq	a5,a4,800022e0 <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002228:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000222c:	14149073          	csrw	sepc,s1
    80002230:	05813083          	ld	ra,88(sp)
    80002234:	05013403          	ld	s0,80(sp)
    80002238:	04813483          	ld	s1,72(sp)
    8000223c:	04013903          	ld	s2,64(sp)
    80002240:	03813983          	ld	s3,56(sp)
    80002244:	06010113          	addi	sp,sp,96
    80002248:	00008067          	ret
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    8000224c:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));
    80002250:	00068593          	mv	a1,a3
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002254:	00058793          	mv	a5,a1
            tcb = TCB::createThread(a2, a3);
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	104080e7          	jalr	260(ra) # 8000235c <_ZN3TCB12createThreadEPFvPvES0_>
            uint64 a= (tcb!= nullptr)?0: -1;
    80002260:	00050863          	beqz	a0,80002270 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
    80002264:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002268:	00078513          	mv	a0,a5
    8000226c:	fbdff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
            uint64 a= (tcb!= nullptr)?0: -1;
    80002270:	fff00793          	li	a5,-1
    80002274:	ff5ff06f          	j	80002268 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            a=TCB::exitThread();
    80002278:	00000097          	auipc	ra,0x0
    8000227c:	2b4080e7          	jalr	692(ra) # 8000252c <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002280:	00050513          	mv	a0,a0
    80002284:	fa5ff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
            TCB::timeSliceCounter = 0;
    80002288:	00005797          	auipc	a5,0x5
    8000228c:	1987b783          	ld	a5,408(a5) # 80007420 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002290:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002294:	00000097          	auipc	ra,0x0
    80002298:	19c080e7          	jalr	412(ra) # 80002430 <_ZN3TCB8dispatchEv>
    8000229c:	f8dff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800022a0:	00058793          	mv	a5,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800022a4:	00060993          	mv	s3,a2
            sem = new Ksemaphore(a2);
    800022a8:	01800513          	li	a0,24
    800022ac:	00000097          	auipc	ra,0x0
    800022b0:	bd4080e7          	jalr	-1068(ra) # 80001e80 <_Znwm>

typedef Ksemaphore* sem_t;

class Ksemaphore{
public:
    Ksemaphore(unsigned short init =1):val(init){}
    800022b4:	03099993          	slli	s3,s3,0x30
    800022b8:	0309d993          	srli	s3,s3,0x30
    800022bc:	01352023          	sw	s3,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800022c0:	00053423          	sd	zero,8(a0)
    800022c4:	00053823          	sd	zero,16(a0)
            uint64 a= (sem!= nullptr)?0: -1;
    800022c8:	00050863          	beqz	a0,800022d8 <_ZN5Riscv20handleSupervisorTrapEv+0x170>
    800022cc:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    800022d0:	00078513          	mv	a0,a5
    800022d4:	f55ff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
            uint64 a= (sem!= nullptr)?0: -1;
    800022d8:	fff00793          	li	a5,-1
    800022dc:	ff5ff06f          	j	800022d0 <_ZN5Riscv20handleSupervisorTrapEv+0x168>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800022e0:	00058793          	mv	a5,a1
            __asm__ volatile("mv a0, %0"::"r"(a));
    800022e4:	00000793          	li	a5,0
    800022e8:	00078513          	mv	a0,a5
    800022ec:	f3dff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
        TCB::timeSliceCounter++;
    800022f0:	00005717          	auipc	a4,0x5
    800022f4:	13073703          	ld	a4,304(a4) # 80007420 <_GLOBAL_OFFSET_TABLE_+0x18>
    800022f8:	00073783          	ld	a5,0(a4)
    800022fc:	00178793          	addi	a5,a5,1
    80002300:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    80002304:	00005717          	auipc	a4,0x5
    80002308:	13473703          	ld	a4,308(a4) # 80007438 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000230c:	00073703          	ld	a4,0(a4)
    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    80002310:	02873703          	ld	a4,40(a4)
    80002314:	00e7f863          	bgeu	a5,a4,80002324 <_ZN5Riscv20handleSupervisorTrapEv+0x1bc>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002318:	00200793          	li	a5,2
    8000231c:	1447b073          	csrc	sip,a5
}
    80002320:	f11ff06f          	j	80002230 <_ZN5Riscv20handleSupervisorTrapEv+0xc8>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80002324:	141027f3          	csrr	a5,sepc
    80002328:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000232c:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002330:	100027f3          	csrr	a5,sstatus
    80002334:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002338:	fc043903          	ld	s2,-64(s0)
            TCB::timeSliceCounter = 0;
    8000233c:	00005797          	auipc	a5,0x5
    80002340:	0e47b783          	ld	a5,228(a5) # 80007420 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002344:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002348:	00000097          	auipc	ra,0x0
    8000234c:	0e8080e7          	jalr	232(ra) # 80002430 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002350:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002354:	14149073          	csrw	sepc,s1
}
    80002358:	fc1ff06f          	j	80002318 <_ZN5Riscv20handleSupervisorTrapEv+0x1b0>

000000008000235c <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    8000235c:	fd010113          	addi	sp,sp,-48
    80002360:	02113423          	sd	ra,40(sp)
    80002364:	02813023          	sd	s0,32(sp)
    80002368:	00913c23          	sd	s1,24(sp)
    8000236c:	01213823          	sd	s2,16(sp)
    80002370:	01313423          	sd	s3,8(sp)
    80002374:	03010413          	addi	s0,sp,48
    80002378:	00050913          	mv	s2,a0
    8000237c:	00058993          	mv	s3,a1
//    tcb->context={(uint64) &threadWrapper,
//                     tcb->stack != nullptr ? (uint64) &tcb->stack[DEFAULT_STACK_SIZE] : 0
//                    };
//    tcb->timeSlice=DEFAULT_TIME_SLICE;
//    tcb->finished=false;
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002380:	03800513          	li	a0,56
    80002384:	00000097          	auipc	ra,0x0
    80002388:	afc080e7          	jalr	-1284(ra) # 80001e80 <_Znwm>
    8000238c:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    80002390:	01253023          	sd	s2,0(a0)
    80002394:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80002398:	00090a63          	beqz	s2,800023ac <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    8000239c:	00008537          	lui	a0,0x8
    800023a0:	00000097          	auipc	ra,0x0
    800023a4:	b08080e7          	jalr	-1272(ra) # 80001ea8 <_Znam>
    800023a8:	0080006f          	j	800023b0 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    800023ac:	00000513          	li	a0,0
            finished(false)
    800023b0:	00a4b823          	sd	a0,16(s1)
    800023b4:	00000797          	auipc	a5,0x0
    800023b8:	11c78793          	addi	a5,a5,284 # 800024d0 <_ZN3TCB13threadWrapperEv>
    800023bc:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800023c0:	04050663          	beqz	a0,8000240c <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    800023c4:	000087b7          	lui	a5,0x8
    800023c8:	00f507b3          	add	a5,a0,a5
            finished(false)
    800023cc:	02f4b023          	sd	a5,32(s1)
    800023d0:	00200793          	li	a5,2
    800023d4:	02f4b423          	sd	a5,40(s1)
    800023d8:	02048823          	sb	zero,48(s1)
    if (body != nullptr) { Scheduler::put(t); }
    800023dc:	00090863          	beqz	s2,800023ec <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    800023e0:	00048513          	mv	a0,s1
    800023e4:	00000097          	auipc	ra,0x0
    800023e8:	268080e7          	jalr	616(ra) # 8000264c <_ZN9Scheduler3putEP3TCB>
    return t;
}
    800023ec:	00048513          	mv	a0,s1
    800023f0:	02813083          	ld	ra,40(sp)
    800023f4:	02013403          	ld	s0,32(sp)
    800023f8:	01813483          	ld	s1,24(sp)
    800023fc:	01013903          	ld	s2,16(sp)
    80002400:	00813983          	ld	s3,8(sp)
    80002404:	03010113          	addi	sp,sp,48
    80002408:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000240c:	00000793          	li	a5,0
    80002410:	fbdff06f          	j	800023cc <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002414:	00050913          	mv	s2,a0
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002418:	00048513          	mv	a0,s1
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	ab4080e7          	jalr	-1356(ra) # 80001ed0 <_ZdlPv>
    80002424:	00090513          	mv	a0,s2
    80002428:	00006097          	auipc	ra,0x6
    8000242c:	190080e7          	jalr	400(ra) # 800085b8 <_Unwind_Resume>

0000000080002430 <_ZN3TCB8dispatchEv>:
    Riscv::popRegisters();

}

void TCB::dispatch()
{
    80002430:	fe010113          	addi	sp,sp,-32
    80002434:	00113c23          	sd	ra,24(sp)
    80002438:	00813823          	sd	s0,16(sp)
    8000243c:	00913423          	sd	s1,8(sp)
    80002440:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    80002444:	00005497          	auipc	s1,0x5
    80002448:	0644b483          	ld	s1,100(s1) # 800074a8 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    8000244c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002450:	02078c63          	beqz	a5,80002488 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002454:	00000097          	auipc	ra,0x0
    80002458:	190080e7          	jalr	400(ra) # 800025e4 <_ZN9Scheduler3getEv>
    8000245c:	00005797          	auipc	a5,0x5
    80002460:	04a7b623          	sd	a0,76(a5) # 800074a8 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002464:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80002468:	01848513          	addi	a0,s1,24
    8000246c:	fffff097          	auipc	ra,0xfffff
    80002470:	da4080e7          	jalr	-604(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002474:	01813083          	ld	ra,24(sp)
    80002478:	01013403          	ld	s0,16(sp)
    8000247c:	00813483          	ld	s1,8(sp)
    80002480:	02010113          	addi	sp,sp,32
    80002484:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002488:	00048513          	mv	a0,s1
    8000248c:	00000097          	auipc	ra,0x0
    80002490:	1c0080e7          	jalr	448(ra) # 8000264c <_ZN9Scheduler3putEP3TCB>
    80002494:	fc1ff06f          	j	80002454 <_ZN3TCB8dispatchEv+0x24>

0000000080002498 <_ZN3TCB5yieldEv>:
{
    80002498:	ff010113          	addi	sp,sp,-16
    8000249c:	00113423          	sd	ra,8(sp)
    800024a0:	00813023          	sd	s0,0(sp)
    800024a4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800024a8:	fffff097          	auipc	ra,0xfffff
    800024ac:	b58080e7          	jalr	-1192(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    800024b0:	00000097          	auipc	ra,0x0
    800024b4:	f80080e7          	jalr	-128(ra) # 80002430 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    800024b8:	fffff097          	auipc	ra,0xfffff
    800024bc:	bc4080e7          	jalr	-1084(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    800024c0:	00813083          	ld	ra,8(sp)
    800024c4:	00013403          	ld	s0,0(sp)
    800024c8:	01010113          	addi	sp,sp,16
    800024cc:	00008067          	ret

00000000800024d0 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    800024d0:	fe010113          	addi	sp,sp,-32
    800024d4:	00113c23          	sd	ra,24(sp)
    800024d8:	00813823          	sd	s0,16(sp)
    800024dc:	00913423          	sd	s1,8(sp)
    800024e0:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    800024e4:	00000097          	auipc	ra,0x0
    800024e8:	c64080e7          	jalr	-924(ra) # 80002148 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    800024ec:	00005497          	auipc	s1,0x5
    800024f0:	fbc48493          	addi	s1,s1,-68 # 800074a8 <_ZN3TCB7runningE>
    800024f4:	0004b783          	ld	a5,0(s1)
    800024f8:	0007b703          	ld	a4,0(a5)
    800024fc:	0087b503          	ld	a0,8(a5)
    80002500:	000700e7          	jalr	a4
    running->setFinished(true);
    80002504:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002508:	00100713          	li	a4,1
    8000250c:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002510:	00000097          	auipc	ra,0x0
    80002514:	f88080e7          	jalr	-120(ra) # 80002498 <_ZN3TCB5yieldEv>
}
    80002518:	01813083          	ld	ra,24(sp)
    8000251c:	01013403          	ld	s0,16(sp)
    80002520:	00813483          	ld	s1,8(sp)
    80002524:	02010113          	addi	sp,sp,32
    80002528:	00008067          	ret

000000008000252c <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    8000252c:	fe010113          	addi	sp,sp,-32
    80002530:	00113c23          	sd	ra,24(sp)
    80002534:	00813823          	sd	s0,16(sp)
    80002538:	00913423          	sd	s1,8(sp)
    8000253c:	01213023          	sd	s2,0(sp)
    80002540:	02010413          	addi	s0,sp,32
    running->setFinished(true);
    80002544:	00005497          	auipc	s1,0x5
    80002548:	f6448493          	addi	s1,s1,-156 # 800074a8 <_ZN3TCB7runningE>
    8000254c:	0004b903          	ld	s2,0(s1)
    80002550:	00100793          	li	a5,1
    80002554:	02f90823          	sb	a5,48(s2)
    TCB *old = running;
    running = Scheduler::get();
    80002558:	00000097          	auipc	ra,0x0
    8000255c:	08c080e7          	jalr	140(ra) # 800025e4 <_ZN9Scheduler3getEv>
    80002560:	00a4b023          	sd	a0,0(s1)
    timeSliceCounter=0;
    80002564:	0004b423          	sd	zero,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002568:	01850593          	addi	a1,a0,24
    8000256c:	01890513          	addi	a0,s2,24
    80002570:	fffff097          	auipc	ra,0xfffff
    80002574:	ca0080e7          	jalr	-864(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    if (running== nullptr)return -1;
    80002578:	0004b783          	ld	a5,0(s1)
    8000257c:	02078063          	beqz	a5,8000259c <_ZN3TCB10exitThreadEv+0x70>
    return 0;
    80002580:	00000513          	li	a0,0
}
    80002584:	01813083          	ld	ra,24(sp)
    80002588:	01013403          	ld	s0,16(sp)
    8000258c:	00813483          	ld	s1,8(sp)
    80002590:	00013903          	ld	s2,0(sp)
    80002594:	02010113          	addi	sp,sp,32
    80002598:	00008067          	ret
    if (running== nullptr)return -1;
    8000259c:	fff00513          	li	a0,-1
    800025a0:	fe5ff06f          	j	80002584 <_ZN3TCB10exitThreadEv+0x58>

00000000800025a4 <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

Scheduler *Scheduler::getInstance() {
    return this->instance;
}
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    800025b0:	00100793          	li	a5,1
    800025b4:	00f50863          	beq	a0,a5,800025c4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800025b8:	00813403          	ld	s0,8(sp)
    800025bc:	01010113          	addi	sp,sp,16
    800025c0:	00008067          	ret
    800025c4:	000107b7          	lui	a5,0x10
    800025c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800025cc:	fef596e3          	bne	a1,a5,800025b8 <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    800025d0:	00005797          	auipc	a5,0x5
    800025d4:	ee878793          	addi	a5,a5,-280 # 800074b8 <_ZN9Scheduler16readyThreadQueueE>
    800025d8:	0007b023          	sd	zero,0(a5)
    800025dc:	0007b423          	sd	zero,8(a5)
    800025e0:	fd9ff06f          	j	800025b8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800025e4 <_ZN9Scheduler3getEv>:
{
    800025e4:	fe010113          	addi	sp,sp,-32
    800025e8:	00113c23          	sd	ra,24(sp)
    800025ec:	00813823          	sd	s0,16(sp)
    800025f0:	00913423          	sd	s1,8(sp)
    800025f4:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800025f8:	00005517          	auipc	a0,0x5
    800025fc:	ec053503          	ld	a0,-320(a0) # 800074b8 <_ZN9Scheduler16readyThreadQueueE>
    80002600:	04050263          	beqz	a0,80002644 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80002604:	00853783          	ld	a5,8(a0)
    80002608:	00005717          	auipc	a4,0x5
    8000260c:	eaf73823          	sd	a5,-336(a4) # 800074b8 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002610:	02078463          	beqz	a5,80002638 <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80002614:	00053483          	ld	s1,0(a0)
        delete elem;
    80002618:	00000097          	auipc	ra,0x0
    8000261c:	8b8080e7          	jalr	-1864(ra) # 80001ed0 <_ZdlPv>
}
    80002620:	00048513          	mv	a0,s1
    80002624:	01813083          	ld	ra,24(sp)
    80002628:	01013403          	ld	s0,16(sp)
    8000262c:	00813483          	ld	s1,8(sp)
    80002630:	02010113          	addi	sp,sp,32
    80002634:	00008067          	ret
        if (!head) { tail = 0; }
    80002638:	00005797          	auipc	a5,0x5
    8000263c:	e807b423          	sd	zero,-376(a5) # 800074c0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002640:	fd5ff06f          	j	80002614 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80002644:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002648:	fd9ff06f          	j	80002620 <_ZN9Scheduler3getEv+0x3c>

000000008000264c <_ZN9Scheduler3putEP3TCB>:
{
    8000264c:	fe010113          	addi	sp,sp,-32
    80002650:	00113c23          	sd	ra,24(sp)
    80002654:	00813823          	sd	s0,16(sp)
    80002658:	00913423          	sd	s1,8(sp)
    8000265c:	02010413          	addi	s0,sp,32
    80002660:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002664:	01000513          	li	a0,16
    80002668:	00000097          	auipc	ra,0x0
    8000266c:	818080e7          	jalr	-2024(ra) # 80001e80 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002670:	00953023          	sd	s1,0(a0)
    80002674:	00053423          	sd	zero,8(a0)
        if (tail)
    80002678:	00005797          	auipc	a5,0x5
    8000267c:	e487b783          	ld	a5,-440(a5) # 800074c0 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002680:	02078263          	beqz	a5,800026a4 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002684:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002688:	00005797          	auipc	a5,0x5
    8000268c:	e2a7bc23          	sd	a0,-456(a5) # 800074c0 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002690:	01813083          	ld	ra,24(sp)
    80002694:	01013403          	ld	s0,16(sp)
    80002698:	00813483          	ld	s1,8(sp)
    8000269c:	02010113          	addi	sp,sp,32
    800026a0:	00008067          	ret
            head = tail = elem;
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	e1478793          	addi	a5,a5,-492 # 800074b8 <_ZN9Scheduler16readyThreadQueueE>
    800026ac:	00a7b423          	sd	a0,8(a5)
    800026b0:	00a7b023          	sd	a0,0(a5)
    800026b4:	fddff06f          	j	80002690 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800026b8 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    800026b8:	ff010113          	addi	sp,sp,-16
    800026bc:	00813423          	sd	s0,8(sp)
    800026c0:	01010413          	addi	s0,sp,16
}
    800026c4:	00053503          	ld	a0,0(a0)
    800026c8:	00813403          	ld	s0,8(sp)
    800026cc:	01010113          	addi	sp,sp,16
    800026d0:	00008067          	ret

00000000800026d4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800026d4:	ff010113          	addi	sp,sp,-16
    800026d8:	00113423          	sd	ra,8(sp)
    800026dc:	00813023          	sd	s0,0(sp)
    800026e0:	01010413          	addi	s0,sp,16
    800026e4:	000105b7          	lui	a1,0x10
    800026e8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800026ec:	00100513          	li	a0,1
    800026f0:	00000097          	auipc	ra,0x0
    800026f4:	eb4080e7          	jalr	-332(ra) # 800025a4 <_Z41__static_initialization_and_destruction_0ii>
    800026f8:	00813083          	ld	ra,8(sp)
    800026fc:	00013403          	ld	s0,0(sp)
    80002700:	01010113          	addi	sp,sp,16
    80002704:	00008067          	ret

0000000080002708 <_Z41__static_initialization_and_destruction_0ii>:
    if (block!= nullptr){
        block->free= true;
        return 0;
    }
    return 1;
}
    80002708:	ff010113          	addi	sp,sp,-16
    8000270c:	00813423          	sd	s0,8(sp)
    80002710:	01010413          	addi	s0,sp,16
    80002714:	00100793          	li	a5,1
    80002718:	00f50863          	beq	a0,a5,80002728 <_Z41__static_initialization_and_destruction_0ii+0x20>
    8000271c:	00813403          	ld	s0,8(sp)
    80002720:	01010113          	addi	sp,sp,16
    80002724:	00008067          	ret
    80002728:	000107b7          	lui	a5,0x10
    8000272c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002730:	fef596e3          	bne	a1,a5,8000271c <_Z41__static_initialization_and_destruction_0ii+0x14>
char* MemoryAllocator::heapStart = (char *)HEAP_START_ADDR;
    80002734:	00005797          	auipc	a5,0x5
    80002738:	cdc7b783          	ld	a5,-804(a5) # 80007410 <_GLOBAL_OFFSET_TABLE_+0x8>
    8000273c:	0007b783          	ld	a5,0(a5)
    80002740:	00005717          	auipc	a4,0x5
    80002744:	d8f73423          	sd	a5,-632(a4) # 800074c8 <_ZN15MemoryAllocator9heapStartE>
}
    80002748:	fd5ff06f          	j	8000271c <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000274c <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator *MemoryAllocator::getInstance() {
    8000274c:	ff010113          	addi	sp,sp,-16
    80002750:	00813423          	sd	s0,8(sp)
    80002754:	01010413          	addi	s0,sp,16
    if (MemoryAllocator::instance == nullptr){
    80002758:	00005797          	auipc	a5,0x5
    8000275c:	d787b783          	ld	a5,-648(a5) # 800074d0 <_ZN15MemoryAllocator8instanceE>
    80002760:	00078c63          	beqz	a5,80002778 <_ZN15MemoryAllocator11getInstanceEv+0x2c>
}
    80002764:	00005517          	auipc	a0,0x5
    80002768:	d6c53503          	ld	a0,-660(a0) # 800074d0 <_ZN15MemoryAllocator8instanceE>
    8000276c:	00813403          	ld	s0,8(sp)
    80002770:	01010113          	addi	sp,sp,16
    80002774:	00008067          	ret
        instance = (MemoryAllocator*)HEAP_START_ADDR;
    80002778:	00005797          	auipc	a5,0x5
    8000277c:	d5078793          	addi	a5,a5,-688 # 800074c8 <_ZN15MemoryAllocator9heapStartE>
    80002780:	00005717          	auipc	a4,0x5
    80002784:	c9073703          	ld	a4,-880(a4) # 80007410 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002788:	00073703          	ld	a4,0(a4)
    8000278c:	00e7b423          	sd	a4,8(a5)
        heapStart= heapStart + sizeof(MemoryAllocator);
    80002790:	0007b703          	ld	a4,0(a5)
    80002794:	00170713          	addi	a4,a4,1
    80002798:	00e7b023          	sd	a4,0(a5)
    8000279c:	fc9ff06f          	j	80002764 <_ZN15MemoryAllocator11getInstanceEv+0x18>

00000000800027a0 <_ZN15MemoryAllocator11allocInHeapEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    800027a0:	ff010113          	addi	sp,sp,-16
    800027a4:	00813423          	sd	s0,8(sp)
    800027a8:	01010413          	addi	s0,sp,16
    inline size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }

    inline size_t allocSize(size_t size) {
        return size + sizeof(BlockHeader);
    800027ac:	01858713          	addi	a4,a1,24
    if((heapStart + sizeB) > ((char*)HEAP_END_ADDR - 1)){
    800027b0:	00005517          	auipc	a0,0x5
    800027b4:	d1853503          	ld	a0,-744(a0) # 800074c8 <_ZN15MemoryAllocator9heapStartE>
    800027b8:	00e50733          	add	a4,a0,a4
    800027bc:	00005797          	auipc	a5,0x5
    800027c0:	c847b783          	ld	a5,-892(a5) # 80007440 <_GLOBAL_OFFSET_TABLE_+0x38>
    800027c4:	0007b783          	ld	a5,0(a5)
    800027c8:	fff78793          	addi	a5,a5,-1
    800027cc:	02e7e263          	bltu	a5,a4,800027f0 <_ZN15MemoryAllocator11allocInHeapEm+0x50>
    blockStart->free=false;
    800027d0:	00050823          	sb	zero,16(a0)
    blockStart->size=size;
    800027d4:	00b53423          	sd	a1,8(a0)
    heapStart+=size;
    800027d8:	00b505b3          	add	a1,a0,a1
    800027dc:	00005797          	auipc	a5,0x5
    800027e0:	ceb7b623          	sd	a1,-788(a5) # 800074c8 <_ZN15MemoryAllocator9heapStartE>
}
    800027e4:	00813403          	ld	s0,8(sp)
    800027e8:	01010113          	addi	sp,sp,16
    800027ec:	00008067          	ret
        return nullptr;
    800027f0:	00000513          	li	a0,0
    800027f4:	ff1ff06f          	j	800027e4 <_ZN15MemoryAllocator11allocInHeapEm+0x44>

00000000800027f8 <_ZN15MemoryAllocator8firstfitEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::firstfit(size_t size){
    800027f8:	ff010113          	addi	sp,sp,-16
    800027fc:	00813423          	sd	s0,8(sp)
    80002800:	01010413          	addi	s0,sp,16
    BlockHeader* block =blockHead;
    80002804:	00005517          	auipc	a0,0x5
    80002808:	cd453503          	ld	a0,-812(a0) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
    8000280c:	0080006f          	j	80002814 <_ZN15MemoryAllocator8firstfitEm+0x1c>
            block=block->next;
    80002810:	00053503          	ld	a0,0(a0)
    while(block!= nullptr){
    80002814:	00050c63          	beqz	a0,8000282c <_ZN15MemoryAllocator8firstfitEm+0x34>
        if(!block->free || block->size < size){
    80002818:	01054783          	lbu	a5,16(a0)
    8000281c:	fe078ae3          	beqz	a5,80002810 <_ZN15MemoryAllocator8firstfitEm+0x18>
    80002820:	00853783          	ld	a5,8(a0)
    80002824:	feb7e6e3          	bltu	a5,a1,80002810 <_ZN15MemoryAllocator8firstfitEm+0x18>
        block->free= false;
    80002828:	00050823          	sb	zero,16(a0)
}
    8000282c:	00813403          	ld	s0,8(sp)
    80002830:	01010113          	addi	sp,sp,16
    80002834:	00008067          	ret

0000000080002838 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>:
MemoryAllocator::BlockHeader* MemoryAllocator::findBlock(BlockHeader* p){
    80002838:	ff010113          	addi	sp,sp,-16
    8000283c:	00813423          	sd	s0,8(sp)
    80002840:	01010413          	addi	s0,sp,16
    for(block=blockHead; block != nullptr; block=block->next){
    80002844:	00005517          	auipc	a0,0x5
    80002848:	c9453503          	ld	a0,-876(a0) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
    8000284c:	00050863          	beqz	a0,8000285c <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
        if(block==p){
    80002850:	00b50663          	beq	a0,a1,8000285c <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
    for(block=blockHead; block != nullptr; block=block->next){
    80002854:	00053503          	ld	a0,0(a0)
    80002858:	ff5ff06f          	j	8000284c <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x14>
}
    8000285c:	00813403          	ld	s0,8(sp)
    80002860:	01010113          	addi	sp,sp,16
    80002864:	00008067          	ret

0000000080002868 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t size){
    80002868:	fe010113          	addi	sp,sp,-32
    8000286c:	00113c23          	sd	ra,24(sp)
    80002870:	00813823          	sd	s0,16(sp)
    80002874:	00913423          	sd	s1,8(sp)
    80002878:	01213023          	sd	s2,0(sp)
    8000287c:	02010413          	addi	s0,sp,32
    80002880:	00050913          	mv	s2,a0
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002884:	03f58493          	addi	s1,a1,63
    80002888:	fc04f493          	andi	s1,s1,-64
    if (BlockHeader* block = firstfit(size)){
    8000288c:	00048593          	mv	a1,s1
    80002890:	00000097          	auipc	ra,0x0
    80002894:	f68080e7          	jalr	-152(ra) # 800027f8 <_ZN15MemoryAllocator8firstfitEm>
    80002898:	02050a63          	beqz	a0,800028cc <_ZN15MemoryAllocator6mallocEm+0x64>
        if (blockHead == nullptr)blockHead=block;
    8000289c:	00005797          	auipc	a5,0x5
    800028a0:	c3c7b783          	ld	a5,-964(a5) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
    800028a4:	00078e63          	beqz	a5,800028c0 <_ZN15MemoryAllocator6mallocEm+0x58>
}
    800028a8:	01813083          	ld	ra,24(sp)
    800028ac:	01013403          	ld	s0,16(sp)
    800028b0:	00813483          	ld	s1,8(sp)
    800028b4:	00013903          	ld	s2,0(sp)
    800028b8:	02010113          	addi	sp,sp,32
    800028bc:	00008067          	ret
        if (blockHead == nullptr)blockHead=block;
    800028c0:	00005797          	auipc	a5,0x5
    800028c4:	c0a7bc23          	sd	a0,-1000(a5) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
        return block;
    800028c8:	fe1ff06f          	j	800028a8 <_ZN15MemoryAllocator6mallocEm+0x40>
    BlockHeader* block = allocInHeap(size);
    800028cc:	00048593          	mv	a1,s1
    800028d0:	00090513          	mv	a0,s2
    800028d4:	00000097          	auipc	ra,0x0
    800028d8:	ecc080e7          	jalr	-308(ra) # 800027a0 <_ZN15MemoryAllocator11allocInHeapEm>
    if(blockHead == nullptr){
    800028dc:	00005797          	auipc	a5,0x5
    800028e0:	bfc7b783          	ld	a5,-1028(a5) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
    800028e4:	02078063          	beqz	a5,80002904 <_ZN15MemoryAllocator6mallocEm+0x9c>
    if(top != nullptr){
    800028e8:	00005797          	auipc	a5,0x5
    800028ec:	bf87b783          	ld	a5,-1032(a5) # 800074e0 <_ZN15MemoryAllocator3topE>
    800028f0:	00078463          	beqz	a5,800028f8 <_ZN15MemoryAllocator6mallocEm+0x90>
        top->next=block;
    800028f4:	00a7b023          	sd	a0,0(a5)
    top=block;
    800028f8:	00005797          	auipc	a5,0x5
    800028fc:	bea7b423          	sd	a0,-1048(a5) # 800074e0 <_ZN15MemoryAllocator3topE>
    return block;
    80002900:	fa9ff06f          	j	800028a8 <_ZN15MemoryAllocator6mallocEm+0x40>
        blockHead = block;
    80002904:	00005797          	auipc	a5,0x5
    80002908:	bca7ba23          	sd	a0,-1068(a5) # 800074d8 <_ZN15MemoryAllocator9blockHeadE>
    8000290c:	fddff06f          	j	800028e8 <_ZN15MemoryAllocator6mallocEm+0x80>

0000000080002910 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* p){
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00113423          	sd	ra,8(sp)
    80002918:	00813023          	sd	s0,0(sp)
    8000291c:	01010413          	addi	s0,sp,16
    BlockHeader* block = findBlock((BlockHeader*)p);
    80002920:	00000097          	auipc	ra,0x0
    80002924:	f18080e7          	jalr	-232(ra) # 80002838 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>
    if (block!= nullptr){
    80002928:	02050063          	beqz	a0,80002948 <_ZN15MemoryAllocator4freeEPv+0x38>
        block->free= true;
    8000292c:	00100793          	li	a5,1
    80002930:	00f50823          	sb	a5,16(a0)
        return 0;
    80002934:	00000513          	li	a0,0
}
    80002938:	00813083          	ld	ra,8(sp)
    8000293c:	00013403          	ld	s0,0(sp)
    80002940:	01010113          	addi	sp,sp,16
    80002944:	00008067          	ret
    return 1;
    80002948:	00100513          	li	a0,1
    8000294c:	fedff06f          	j	80002938 <_ZN15MemoryAllocator4freeEPv+0x28>

0000000080002950 <_GLOBAL__sub_I__ZN15MemoryAllocator9heapStartE>:
}
    80002950:	ff010113          	addi	sp,sp,-16
    80002954:	00113423          	sd	ra,8(sp)
    80002958:	00813023          	sd	s0,0(sp)
    8000295c:	01010413          	addi	s0,sp,16
    80002960:	000105b7          	lui	a1,0x10
    80002964:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002968:	00100513          	li	a0,1
    8000296c:	00000097          	auipc	ra,0x0
    80002970:	d9c080e7          	jalr	-612(ra) # 80002708 <_Z41__static_initialization_and_destruction_0ii>
    80002974:	00813083          	ld	ra,8(sp)
    80002978:	00013403          	ld	s0,0(sp)
    8000297c:	01010113          	addi	sp,sp,16
    80002980:	00008067          	ret

0000000080002984 <_Z9mainStariv>:
//#include "../lib/console.h"
//#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"


int mainStari(){
    80002984:	ff010113          	addi	sp,sp,-16
    80002988:	00813423          	sd	s0,8(sp)
    8000298c:	01010413          	addi	s0,sp,16
//        __putc(character + 30);
//    }
//    MemoryAllocator* mem = MemoryAllocator::getInstance();

    return 0;
    80002990:	00000513          	li	a0,0
    80002994:	00813403          	ld	s0,8(sp)
    80002998:	01010113          	addi	sp,sp,16
    8000299c:	00008067          	ret

00000000800029a0 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800029a0:	fe010113          	addi	sp,sp,-32
    800029a4:	00113c23          	sd	ra,24(sp)
    800029a8:	00813823          	sd	s0,16(sp)
    800029ac:	00913423          	sd	s1,8(sp)
    800029b0:	02010413          	addi	s0,sp,32
    800029b4:	00050493          	mv	s1,a0
    LOCK();
    800029b8:	00100613          	li	a2,1
    800029bc:	00000593          	li	a1,0
    800029c0:	00005517          	auipc	a0,0x5
    800029c4:	b2850513          	addi	a0,a0,-1240 # 800074e8 <lockPrint>
    800029c8:	fffff097          	auipc	ra,0xfffff
    800029cc:	85c080e7          	jalr	-1956(ra) # 80001224 <copy_and_swap>
    800029d0:	fe0514e3          	bnez	a0,800029b8 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800029d4:	0004c503          	lbu	a0,0(s1)
    800029d8:	00050a63          	beqz	a0,800029ec <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    800029dc:	fffff097          	auipc	ra,0xfffff
    800029e0:	a14080e7          	jalr	-1516(ra) # 800013f0 <_Z4putcc>
        string++;
    800029e4:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    800029e8:	fedff06f          	j	800029d4 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    800029ec:	00000613          	li	a2,0
    800029f0:	00100593          	li	a1,1
    800029f4:	00005517          	auipc	a0,0x5
    800029f8:	af450513          	addi	a0,a0,-1292 # 800074e8 <lockPrint>
    800029fc:	fffff097          	auipc	ra,0xfffff
    80002a00:	828080e7          	jalr	-2008(ra) # 80001224 <copy_and_swap>
    80002a04:	fe0514e3          	bnez	a0,800029ec <_Z11printStringPKc+0x4c>
}
    80002a08:	01813083          	ld	ra,24(sp)
    80002a0c:	01013403          	ld	s0,16(sp)
    80002a10:	00813483          	ld	s1,8(sp)
    80002a14:	02010113          	addi	sp,sp,32
    80002a18:	00008067          	ret

0000000080002a1c <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002a1c:	fd010113          	addi	sp,sp,-48
    80002a20:	02113423          	sd	ra,40(sp)
    80002a24:	02813023          	sd	s0,32(sp)
    80002a28:	00913c23          	sd	s1,24(sp)
    80002a2c:	01213823          	sd	s2,16(sp)
    80002a30:	01313423          	sd	s3,8(sp)
    80002a34:	01413023          	sd	s4,0(sp)
    80002a38:	03010413          	addi	s0,sp,48
    80002a3c:	00050993          	mv	s3,a0
    80002a40:	00058a13          	mv	s4,a1
    LOCK();
    80002a44:	00100613          	li	a2,1
    80002a48:	00000593          	li	a1,0
    80002a4c:	00005517          	auipc	a0,0x5
    80002a50:	a9c50513          	addi	a0,a0,-1380 # 800074e8 <lockPrint>
    80002a54:	ffffe097          	auipc	ra,0xffffe
    80002a58:	7d0080e7          	jalr	2000(ra) # 80001224 <copy_and_swap>
    80002a5c:	fe0514e3          	bnez	a0,80002a44 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002a60:	00000913          	li	s2,0
    80002a64:	00090493          	mv	s1,s2
    80002a68:	0019091b          	addiw	s2,s2,1
    80002a6c:	03495a63          	bge	s2,s4,80002aa0 <_Z9getStringPci+0x84>
        cc = getc();
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	958080e7          	jalr	-1704(ra) # 800013c8 <_Z4getcv>
        if(cc < 1)
    80002a78:	02050463          	beqz	a0,80002aa0 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002a7c:	009984b3          	add	s1,s3,s1
    80002a80:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002a84:	00a00793          	li	a5,10
    80002a88:	00f50a63          	beq	a0,a5,80002a9c <_Z9getStringPci+0x80>
    80002a8c:	00d00793          	li	a5,13
    80002a90:	fcf51ae3          	bne	a0,a5,80002a64 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002a94:	00090493          	mv	s1,s2
    80002a98:	0080006f          	j	80002aa0 <_Z9getStringPci+0x84>
    80002a9c:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002aa0:	009984b3          	add	s1,s3,s1
    80002aa4:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002aa8:	00000613          	li	a2,0
    80002aac:	00100593          	li	a1,1
    80002ab0:	00005517          	auipc	a0,0x5
    80002ab4:	a3850513          	addi	a0,a0,-1480 # 800074e8 <lockPrint>
    80002ab8:	ffffe097          	auipc	ra,0xffffe
    80002abc:	76c080e7          	jalr	1900(ra) # 80001224 <copy_and_swap>
    80002ac0:	fe0514e3          	bnez	a0,80002aa8 <_Z9getStringPci+0x8c>
    return buf;
}
    80002ac4:	00098513          	mv	a0,s3
    80002ac8:	02813083          	ld	ra,40(sp)
    80002acc:	02013403          	ld	s0,32(sp)
    80002ad0:	01813483          	ld	s1,24(sp)
    80002ad4:	01013903          	ld	s2,16(sp)
    80002ad8:	00813983          	ld	s3,8(sp)
    80002adc:	00013a03          	ld	s4,0(sp)
    80002ae0:	03010113          	addi	sp,sp,48
    80002ae4:	00008067          	ret

0000000080002ae8 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002ae8:	ff010113          	addi	sp,sp,-16
    80002aec:	00813423          	sd	s0,8(sp)
    80002af0:	01010413          	addi	s0,sp,16
    80002af4:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002af8:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002afc:	0006c603          	lbu	a2,0(a3)
    80002b00:	fd06071b          	addiw	a4,a2,-48
    80002b04:	0ff77713          	andi	a4,a4,255
    80002b08:	00900793          	li	a5,9
    80002b0c:	02e7e063          	bltu	a5,a4,80002b2c <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002b10:	0025179b          	slliw	a5,a0,0x2
    80002b14:	00a787bb          	addw	a5,a5,a0
    80002b18:	0017979b          	slliw	a5,a5,0x1
    80002b1c:	00168693          	addi	a3,a3,1
    80002b20:	00c787bb          	addw	a5,a5,a2
    80002b24:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002b28:	fd5ff06f          	j	80002afc <_Z11stringToIntPKc+0x14>
    return n;
}
    80002b2c:	00813403          	ld	s0,8(sp)
    80002b30:	01010113          	addi	sp,sp,16
    80002b34:	00008067          	ret

0000000080002b38 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002b38:	fc010113          	addi	sp,sp,-64
    80002b3c:	02113c23          	sd	ra,56(sp)
    80002b40:	02813823          	sd	s0,48(sp)
    80002b44:	02913423          	sd	s1,40(sp)
    80002b48:	03213023          	sd	s2,32(sp)
    80002b4c:	01313c23          	sd	s3,24(sp)
    80002b50:	04010413          	addi	s0,sp,64
    80002b54:	00050493          	mv	s1,a0
    80002b58:	00058913          	mv	s2,a1
    80002b5c:	00060993          	mv	s3,a2
    LOCK();
    80002b60:	00100613          	li	a2,1
    80002b64:	00000593          	li	a1,0
    80002b68:	00005517          	auipc	a0,0x5
    80002b6c:	98050513          	addi	a0,a0,-1664 # 800074e8 <lockPrint>
    80002b70:	ffffe097          	auipc	ra,0xffffe
    80002b74:	6b4080e7          	jalr	1716(ra) # 80001224 <copy_and_swap>
    80002b78:	fe0514e3          	bnez	a0,80002b60 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002b7c:	00098463          	beqz	s3,80002b84 <_Z8printIntiii+0x4c>
    80002b80:	0804c463          	bltz	s1,80002c08 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002b84:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002b88:	00000593          	li	a1,0
    }

    i = 0;
    80002b8c:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002b90:	0009079b          	sext.w	a5,s2
    80002b94:	0325773b          	remuw	a4,a0,s2
    80002b98:	00048613          	mv	a2,s1
    80002b9c:	0014849b          	addiw	s1,s1,1
    80002ba0:	02071693          	slli	a3,a4,0x20
    80002ba4:	0206d693          	srli	a3,a3,0x20
    80002ba8:	00005717          	auipc	a4,0x5
    80002bac:	84870713          	addi	a4,a4,-1976 # 800073f0 <digits>
    80002bb0:	00d70733          	add	a4,a4,a3
    80002bb4:	00074683          	lbu	a3,0(a4)
    80002bb8:	fd040713          	addi	a4,s0,-48
    80002bbc:	00c70733          	add	a4,a4,a2
    80002bc0:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002bc4:	0005071b          	sext.w	a4,a0
    80002bc8:	0325553b          	divuw	a0,a0,s2
    80002bcc:	fcf772e3          	bgeu	a4,a5,80002b90 <_Z8printIntiii+0x58>
    if(neg)
    80002bd0:	00058c63          	beqz	a1,80002be8 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002bd4:	fd040793          	addi	a5,s0,-48
    80002bd8:	009784b3          	add	s1,a5,s1
    80002bdc:	02d00793          	li	a5,45
    80002be0:	fef48823          	sb	a5,-16(s1)
    80002be4:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002be8:	fff4849b          	addiw	s1,s1,-1
    80002bec:	0204c463          	bltz	s1,80002c14 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002bf0:	fd040793          	addi	a5,s0,-48
    80002bf4:	009787b3          	add	a5,a5,s1
    80002bf8:	ff07c503          	lbu	a0,-16(a5)
    80002bfc:	ffffe097          	auipc	ra,0xffffe
    80002c00:	7f4080e7          	jalr	2036(ra) # 800013f0 <_Z4putcc>
    80002c04:	fe5ff06f          	j	80002be8 <_Z8printIntiii+0xb0>
        x = -xx;
    80002c08:	4090053b          	negw	a0,s1
        neg = 1;
    80002c0c:	00100593          	li	a1,1
        x = -xx;
    80002c10:	f7dff06f          	j	80002b8c <_Z8printIntiii+0x54>

    UNLOCK();
    80002c14:	00000613          	li	a2,0
    80002c18:	00100593          	li	a1,1
    80002c1c:	00005517          	auipc	a0,0x5
    80002c20:	8cc50513          	addi	a0,a0,-1844 # 800074e8 <lockPrint>
    80002c24:	ffffe097          	auipc	ra,0xffffe
    80002c28:	600080e7          	jalr	1536(ra) # 80001224 <copy_and_swap>
    80002c2c:	fe0514e3          	bnez	a0,80002c14 <_Z8printIntiii+0xdc>
    80002c30:	03813083          	ld	ra,56(sp)
    80002c34:	03013403          	ld	s0,48(sp)
    80002c38:	02813483          	ld	s1,40(sp)
    80002c3c:	02013903          	ld	s2,32(sp)
    80002c40:	01813983          	ld	s3,24(sp)
    80002c44:	04010113          	addi	sp,sp,64
    80002c48:	00008067          	ret

0000000080002c4c <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002c4c:	fe010113          	addi	sp,sp,-32
    80002c50:	00113c23          	sd	ra,24(sp)
    80002c54:	00813823          	sd	s0,16(sp)
    80002c58:	00913423          	sd	s1,8(sp)
    80002c5c:	01213023          	sd	s2,0(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	00050493          	mv	s1,a0
    80002c68:	0015859b          	addiw	a1,a1,1
    80002c6c:	0005851b          	sext.w	a0,a1
    80002c70:	00b4a023          	sw	a1,0(s1)
    80002c74:	0004a823          	sw	zero,16(s1)
    80002c78:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002c7c:	00251513          	slli	a0,a0,0x2
    80002c80:	ffffe097          	auipc	ra,0xffffe
    80002c84:	5c4080e7          	jalr	1476(ra) # 80001244 <_Z9mem_allocm>
    80002c88:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002c8c:	01000513          	li	a0,16
    80002c90:	fffff097          	auipc	ra,0xfffff
    80002c94:	1f0080e7          	jalr	496(ra) # 80001e80 <_Znwm>
};


class Semaphore {
public:
    Semaphore (unsigned init = 1){
    80002c98:	00004917          	auipc	s2,0x4
    80002c9c:	79893903          	ld	s2,1944(s2) # 80007430 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ca0:	01090913          	addi	s2,s2,16
    80002ca4:	01253023          	sd	s2,0(a0)
    80002ca8:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002cac:	01000513          	li	a0,16
    80002cb0:	fffff097          	auipc	ra,0xfffff
    80002cb4:	1d0080e7          	jalr	464(ra) # 80001e80 <_Znwm>
    80002cb8:	01253023          	sd	s2,0(a0)
    80002cbc:	00a4bc23          	sd	a0,24(s1)
    mutexHead = new Semaphore(1);
    80002cc0:	01000513          	li	a0,16
    80002cc4:	fffff097          	auipc	ra,0xfffff
    80002cc8:	1bc080e7          	jalr	444(ra) # 80001e80 <_Znwm>
    80002ccc:	01253023          	sd	s2,0(a0)
    80002cd0:	02a4b423          	sd	a0,40(s1)
    mutexTail = new Semaphore(1);
    80002cd4:	01000513          	li	a0,16
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	1a8080e7          	jalr	424(ra) # 80001e80 <_Znwm>
    80002ce0:	01253023          	sd	s2,0(a0)
    80002ce4:	02a4b823          	sd	a0,48(s1)
}
    80002ce8:	01813083          	ld	ra,24(sp)
    80002cec:	01013403          	ld	s0,16(sp)
    80002cf0:	00813483          	ld	s1,8(sp)
    80002cf4:	00013903          	ld	s2,0(sp)
    80002cf8:	02010113          	addi	sp,sp,32
    80002cfc:	00008067          	ret

0000000080002d00 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002d00:	fe010113          	addi	sp,sp,-32
    80002d04:	00113c23          	sd	ra,24(sp)
    80002d08:	00813823          	sd	s0,16(sp)
    80002d0c:	00913423          	sd	s1,8(sp)
    80002d10:	01213023          	sd	s2,0(sp)
    80002d14:	02010413          	addi	s0,sp,32
    80002d18:	00050493          	mv	s1,a0
    80002d1c:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002d20:	01853503          	ld	a0,24(a0)
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	2ec080e7          	jalr	748(ra) # 80002010 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002d2c:	0304b503          	ld	a0,48(s1)
    80002d30:	fffff097          	auipc	ra,0xfffff
    80002d34:	2e0080e7          	jalr	736(ra) # 80002010 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002d38:	0084b783          	ld	a5,8(s1)
    80002d3c:	0144a703          	lw	a4,20(s1)
    80002d40:	00271713          	slli	a4,a4,0x2
    80002d44:	00e787b3          	add	a5,a5,a4
    80002d48:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002d4c:	0144a783          	lw	a5,20(s1)
    80002d50:	0017879b          	addiw	a5,a5,1
    80002d54:	0004a703          	lw	a4,0(s1)
    80002d58:	02e7e7bb          	remw	a5,a5,a4
    80002d5c:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002d60:	0304b503          	ld	a0,48(s1)
    80002d64:	fffff097          	auipc	ra,0xfffff
    80002d68:	2c8080e7          	jalr	712(ra) # 8000202c <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002d6c:	0204b503          	ld	a0,32(s1)
    80002d70:	fffff097          	auipc	ra,0xfffff
    80002d74:	2bc080e7          	jalr	700(ra) # 8000202c <_ZN9Semaphore6signalEv>

}
    80002d78:	01813083          	ld	ra,24(sp)
    80002d7c:	01013403          	ld	s0,16(sp)
    80002d80:	00813483          	ld	s1,8(sp)
    80002d84:	00013903          	ld	s2,0(sp)
    80002d88:	02010113          	addi	sp,sp,32
    80002d8c:	00008067          	ret

0000000080002d90 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002d90:	fe010113          	addi	sp,sp,-32
    80002d94:	00113c23          	sd	ra,24(sp)
    80002d98:	00813823          	sd	s0,16(sp)
    80002d9c:	00913423          	sd	s1,8(sp)
    80002da0:	01213023          	sd	s2,0(sp)
    80002da4:	02010413          	addi	s0,sp,32
    80002da8:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002dac:	02053503          	ld	a0,32(a0)
    80002db0:	fffff097          	auipc	ra,0xfffff
    80002db4:	260080e7          	jalr	608(ra) # 80002010 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002db8:	0284b503          	ld	a0,40(s1)
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	254080e7          	jalr	596(ra) # 80002010 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002dc4:	0084b703          	ld	a4,8(s1)
    80002dc8:	0104a783          	lw	a5,16(s1)
    80002dcc:	00279693          	slli	a3,a5,0x2
    80002dd0:	00d70733          	add	a4,a4,a3
    80002dd4:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002dd8:	0017879b          	addiw	a5,a5,1
    80002ddc:	0004a703          	lw	a4,0(s1)
    80002de0:	02e7e7bb          	remw	a5,a5,a4
    80002de4:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002de8:	0284b503          	ld	a0,40(s1)
    80002dec:	fffff097          	auipc	ra,0xfffff
    80002df0:	240080e7          	jalr	576(ra) # 8000202c <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002df4:	0184b503          	ld	a0,24(s1)
    80002df8:	fffff097          	auipc	ra,0xfffff
    80002dfc:	234080e7          	jalr	564(ra) # 8000202c <_ZN9Semaphore6signalEv>

    return ret;
}
    80002e00:	00090513          	mv	a0,s2
    80002e04:	01813083          	ld	ra,24(sp)
    80002e08:	01013403          	ld	s0,16(sp)
    80002e0c:	00813483          	ld	s1,8(sp)
    80002e10:	00013903          	ld	s2,0(sp)
    80002e14:	02010113          	addi	sp,sp,32
    80002e18:	00008067          	ret

0000000080002e1c <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002e1c:	fe010113          	addi	sp,sp,-32
    80002e20:	00113c23          	sd	ra,24(sp)
    80002e24:	00813823          	sd	s0,16(sp)
    80002e28:	00913423          	sd	s1,8(sp)
    80002e2c:	01213023          	sd	s2,0(sp)
    80002e30:	02010413          	addi	s0,sp,32
    80002e34:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002e38:	02853503          	ld	a0,40(a0)
    80002e3c:	fffff097          	auipc	ra,0xfffff
    80002e40:	1d4080e7          	jalr	468(ra) # 80002010 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002e44:	0304b503          	ld	a0,48(s1)
    80002e48:	fffff097          	auipc	ra,0xfffff
    80002e4c:	1c8080e7          	jalr	456(ra) # 80002010 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002e50:	0144a783          	lw	a5,20(s1)
    80002e54:	0104a903          	lw	s2,16(s1)
    80002e58:	0327ce63          	blt	a5,s2,80002e94 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002e5c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002e60:	0304b503          	ld	a0,48(s1)
    80002e64:	fffff097          	auipc	ra,0xfffff
    80002e68:	1c8080e7          	jalr	456(ra) # 8000202c <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002e6c:	0284b503          	ld	a0,40(s1)
    80002e70:	fffff097          	auipc	ra,0xfffff
    80002e74:	1bc080e7          	jalr	444(ra) # 8000202c <_ZN9Semaphore6signalEv>

    return ret;
}
    80002e78:	00090513          	mv	a0,s2
    80002e7c:	01813083          	ld	ra,24(sp)
    80002e80:	01013403          	ld	s0,16(sp)
    80002e84:	00813483          	ld	s1,8(sp)
    80002e88:	00013903          	ld	s2,0(sp)
    80002e8c:	02010113          	addi	sp,sp,32
    80002e90:	00008067          	ret
        ret = cap - head + tail;
    80002e94:	0004a703          	lw	a4,0(s1)
    80002e98:	4127093b          	subw	s2,a4,s2
    80002e9c:	00f9093b          	addw	s2,s2,a5
    80002ea0:	fc1ff06f          	j	80002e60 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002ea4 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002ea4:	fe010113          	addi	sp,sp,-32
    80002ea8:	00113c23          	sd	ra,24(sp)
    80002eac:	00813823          	sd	s0,16(sp)
    80002eb0:	00913423          	sd	s1,8(sp)
    80002eb4:	02010413          	addi	s0,sp,32
    80002eb8:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002ebc:	00a00513          	li	a0,10
    80002ec0:	fffff097          	auipc	ra,0xfffff
    80002ec4:	1f0080e7          	jalr	496(ra) # 800020b0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002ec8:	00003517          	auipc	a0,0x3
    80002ecc:	25050513          	addi	a0,a0,592 # 80006118 <CONSOLE_STATUS+0x108>
    80002ed0:	00000097          	auipc	ra,0x0
    80002ed4:	ad0080e7          	jalr	-1328(ra) # 800029a0 <_Z11printStringPKc>
    while (getCnt()) {
    80002ed8:	00048513          	mv	a0,s1
    80002edc:	00000097          	auipc	ra,0x0
    80002ee0:	f40080e7          	jalr	-192(ra) # 80002e1c <_ZN9BufferCPP6getCntEv>
    80002ee4:	02050c63          	beqz	a0,80002f1c <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002ee8:	0084b783          	ld	a5,8(s1)
    80002eec:	0104a703          	lw	a4,16(s1)
    80002ef0:	00271713          	slli	a4,a4,0x2
    80002ef4:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002ef8:	0007c503          	lbu	a0,0(a5)
    80002efc:	fffff097          	auipc	ra,0xfffff
    80002f00:	1b4080e7          	jalr	436(ra) # 800020b0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002f04:	0104a783          	lw	a5,16(s1)
    80002f08:	0017879b          	addiw	a5,a5,1
    80002f0c:	0004a703          	lw	a4,0(s1)
    80002f10:	02e7e7bb          	remw	a5,a5,a4
    80002f14:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002f18:	fc1ff06f          	j	80002ed8 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002f1c:	02100513          	li	a0,33
    80002f20:	fffff097          	auipc	ra,0xfffff
    80002f24:	190080e7          	jalr	400(ra) # 800020b0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002f28:	00a00513          	li	a0,10
    80002f2c:	fffff097          	auipc	ra,0xfffff
    80002f30:	184080e7          	jalr	388(ra) # 800020b0 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002f34:	0084b503          	ld	a0,8(s1)
    80002f38:	ffffe097          	auipc	ra,0xffffe
    80002f3c:	334080e7          	jalr	820(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    80002f40:	0204b503          	ld	a0,32(s1)
    80002f44:	00050863          	beqz	a0,80002f54 <_ZN9BufferCPPD1Ev+0xb0>
    80002f48:	00053783          	ld	a5,0(a0)
    80002f4c:	0087b783          	ld	a5,8(a5)
    80002f50:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002f54:	0184b503          	ld	a0,24(s1)
    80002f58:	00050863          	beqz	a0,80002f68 <_ZN9BufferCPPD1Ev+0xc4>
    80002f5c:	00053783          	ld	a5,0(a0)
    80002f60:	0087b783          	ld	a5,8(a5)
    80002f64:	000780e7          	jalr	a5
    delete mutexTail;
    80002f68:	0304b503          	ld	a0,48(s1)
    80002f6c:	00050863          	beqz	a0,80002f7c <_ZN9BufferCPPD1Ev+0xd8>
    80002f70:	00053783          	ld	a5,0(a0)
    80002f74:	0087b783          	ld	a5,8(a5)
    80002f78:	000780e7          	jalr	a5
    delete mutexHead;
    80002f7c:	0284b503          	ld	a0,40(s1)
    80002f80:	00050863          	beqz	a0,80002f90 <_ZN9BufferCPPD1Ev+0xec>
    80002f84:	00053783          	ld	a5,0(a0)
    80002f88:	0087b783          	ld	a5,8(a5)
    80002f8c:	000780e7          	jalr	a5
}
    80002f90:	01813083          	ld	ra,24(sp)
    80002f94:	01013403          	ld	s0,16(sp)
    80002f98:	00813483          	ld	s1,8(sp)
    80002f9c:	02010113          	addi	sp,sp,32
    80002fa0:	00008067          	ret

0000000080002fa4 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002fa4:	fe010113          	addi	sp,sp,-32
    80002fa8:	00113c23          	sd	ra,24(sp)
    80002fac:	00813823          	sd	s0,16(sp)
    80002fb0:	00913423          	sd	s1,8(sp)
    80002fb4:	01213023          	sd	s2,0(sp)
    80002fb8:	02010413          	addi	s0,sp,32
    80002fbc:	00050493          	mv	s1,a0
    80002fc0:	00058913          	mv	s2,a1
    80002fc4:	0015879b          	addiw	a5,a1,1
    80002fc8:	0007851b          	sext.w	a0,a5
    80002fcc:	00f4a023          	sw	a5,0(s1)
    80002fd0:	0004a823          	sw	zero,16(s1)
    80002fd4:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002fd8:	00251513          	slli	a0,a0,0x2
    80002fdc:	ffffe097          	auipc	ra,0xffffe
    80002fe0:	268080e7          	jalr	616(ra) # 80001244 <_Z9mem_allocm>
    80002fe4:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002fe8:	00000593          	li	a1,0
    80002fec:	02048513          	addi	a0,s1,32
    80002ff0:	ffffe097          	auipc	ra,0xffffe
    80002ff4:	324080e7          	jalr	804(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    80002ff8:	00090593          	mv	a1,s2
    80002ffc:	01848513          	addi	a0,s1,24
    80003000:	ffffe097          	auipc	ra,0xffffe
    80003004:	314080e7          	jalr	788(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    80003008:	00100593          	li	a1,1
    8000300c:	02848513          	addi	a0,s1,40
    80003010:	ffffe097          	auipc	ra,0xffffe
    80003014:	304080e7          	jalr	772(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    80003018:	00100593          	li	a1,1
    8000301c:	03048513          	addi	a0,s1,48
    80003020:	ffffe097          	auipc	ra,0xffffe
    80003024:	2f4080e7          	jalr	756(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
}
    80003028:	01813083          	ld	ra,24(sp)
    8000302c:	01013403          	ld	s0,16(sp)
    80003030:	00813483          	ld	s1,8(sp)
    80003034:	00013903          	ld	s2,0(sp)
    80003038:	02010113          	addi	sp,sp,32
    8000303c:	00008067          	ret

0000000080003040 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80003040:	fe010113          	addi	sp,sp,-32
    80003044:	00113c23          	sd	ra,24(sp)
    80003048:	00813823          	sd	s0,16(sp)
    8000304c:	00913423          	sd	s1,8(sp)
    80003050:	01213023          	sd	s2,0(sp)
    80003054:	02010413          	addi	s0,sp,32
    80003058:	00050493          	mv	s1,a0
    8000305c:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80003060:	01853503          	ld	a0,24(a0)
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	30c080e7          	jalr	780(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    8000306c:	0304b503          	ld	a0,48(s1)
    80003070:	ffffe097          	auipc	ra,0xffffe
    80003074:	300080e7          	jalr	768(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80003078:	0084b783          	ld	a5,8(s1)
    8000307c:	0144a703          	lw	a4,20(s1)
    80003080:	00271713          	slli	a4,a4,0x2
    80003084:	00e787b3          	add	a5,a5,a4
    80003088:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    8000308c:	0144a783          	lw	a5,20(s1)
    80003090:	0017879b          	addiw	a5,a5,1
    80003094:	0004a703          	lw	a4,0(s1)
    80003098:	02e7e7bb          	remw	a5,a5,a4
    8000309c:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    800030a0:	0304b503          	ld	a0,48(s1)
    800030a4:	ffffe097          	auipc	ra,0xffffe
    800030a8:	2f8080e7          	jalr	760(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    800030ac:	0204b503          	ld	a0,32(s1)
    800030b0:	ffffe097          	auipc	ra,0xffffe
    800030b4:	2ec080e7          	jalr	748(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

}
    800030b8:	01813083          	ld	ra,24(sp)
    800030bc:	01013403          	ld	s0,16(sp)
    800030c0:	00813483          	ld	s1,8(sp)
    800030c4:	00013903          	ld	s2,0(sp)
    800030c8:	02010113          	addi	sp,sp,32
    800030cc:	00008067          	ret

00000000800030d0 <_ZN6Buffer3getEv>:

int Buffer::get() {
    800030d0:	fe010113          	addi	sp,sp,-32
    800030d4:	00113c23          	sd	ra,24(sp)
    800030d8:	00813823          	sd	s0,16(sp)
    800030dc:	00913423          	sd	s1,8(sp)
    800030e0:	01213023          	sd	s2,0(sp)
    800030e4:	02010413          	addi	s0,sp,32
    800030e8:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    800030ec:	02053503          	ld	a0,32(a0)
    800030f0:	ffffe097          	auipc	ra,0xffffe
    800030f4:	280080e7          	jalr	640(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    800030f8:	0284b503          	ld	a0,40(s1)
    800030fc:	ffffe097          	auipc	ra,0xffffe
    80003100:	274080e7          	jalr	628(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003104:	0084b703          	ld	a4,8(s1)
    80003108:	0104a783          	lw	a5,16(s1)
    8000310c:	00279693          	slli	a3,a5,0x2
    80003110:	00d70733          	add	a4,a4,a3
    80003114:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80003118:	0017879b          	addiw	a5,a5,1
    8000311c:	0004a703          	lw	a4,0(s1)
    80003120:	02e7e7bb          	remw	a5,a5,a4
    80003124:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80003128:	0284b503          	ld	a0,40(s1)
    8000312c:	ffffe097          	auipc	ra,0xffffe
    80003130:	270080e7          	jalr	624(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80003134:	0184b503          	ld	a0,24(s1)
    80003138:	ffffe097          	auipc	ra,0xffffe
    8000313c:	264080e7          	jalr	612(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80003140:	00090513          	mv	a0,s2
    80003144:	01813083          	ld	ra,24(sp)
    80003148:	01013403          	ld	s0,16(sp)
    8000314c:	00813483          	ld	s1,8(sp)
    80003150:	00013903          	ld	s2,0(sp)
    80003154:	02010113          	addi	sp,sp,32
    80003158:	00008067          	ret

000000008000315c <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    8000315c:	fe010113          	addi	sp,sp,-32
    80003160:	00113c23          	sd	ra,24(sp)
    80003164:	00813823          	sd	s0,16(sp)
    80003168:	00913423          	sd	s1,8(sp)
    8000316c:	01213023          	sd	s2,0(sp)
    80003170:	02010413          	addi	s0,sp,32
    80003174:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80003178:	02853503          	ld	a0,40(a0)
    8000317c:	ffffe097          	auipc	ra,0xffffe
    80003180:	1f4080e7          	jalr	500(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80003184:	0304b503          	ld	a0,48(s1)
    80003188:	ffffe097          	auipc	ra,0xffffe
    8000318c:	1e8080e7          	jalr	488(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003190:	0144a783          	lw	a5,20(s1)
    80003194:	0104a903          	lw	s2,16(s1)
    80003198:	0327ce63          	blt	a5,s2,800031d4 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    8000319c:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    800031a0:	0304b503          	ld	a0,48(s1)
    800031a4:	ffffe097          	auipc	ra,0xffffe
    800031a8:	1f8080e7          	jalr	504(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    800031ac:	0284b503          	ld	a0,40(s1)
    800031b0:	ffffe097          	auipc	ra,0xffffe
    800031b4:	1ec080e7          	jalr	492(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    800031b8:	00090513          	mv	a0,s2
    800031bc:	01813083          	ld	ra,24(sp)
    800031c0:	01013403          	ld	s0,16(sp)
    800031c4:	00813483          	ld	s1,8(sp)
    800031c8:	00013903          	ld	s2,0(sp)
    800031cc:	02010113          	addi	sp,sp,32
    800031d0:	00008067          	ret
        ret = cap - head + tail;
    800031d4:	0004a703          	lw	a4,0(s1)
    800031d8:	4127093b          	subw	s2,a4,s2
    800031dc:	00f9093b          	addw	s2,s2,a5
    800031e0:	fc1ff06f          	j	800031a0 <_ZN6Buffer6getCntEv+0x44>

00000000800031e4 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    800031e4:	fe010113          	addi	sp,sp,-32
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	00813823          	sd	s0,16(sp)
    800031f0:	00913423          	sd	s1,8(sp)
    800031f4:	02010413          	addi	s0,sp,32
    800031f8:	00050493          	mv	s1,a0
    putc('\n');
    800031fc:	00a00513          	li	a0,10
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	1f0080e7          	jalr	496(ra) # 800013f0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003208:	00003517          	auipc	a0,0x3
    8000320c:	f1050513          	addi	a0,a0,-240 # 80006118 <CONSOLE_STATUS+0x108>
    80003210:	fffff097          	auipc	ra,0xfffff
    80003214:	790080e7          	jalr	1936(ra) # 800029a0 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003218:	00048513          	mv	a0,s1
    8000321c:	00000097          	auipc	ra,0x0
    80003220:	f40080e7          	jalr	-192(ra) # 8000315c <_ZN6Buffer6getCntEv>
    80003224:	02a05c63          	blez	a0,8000325c <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003228:	0084b783          	ld	a5,8(s1)
    8000322c:	0104a703          	lw	a4,16(s1)
    80003230:	00271713          	slli	a4,a4,0x2
    80003234:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003238:	0007c503          	lbu	a0,0(a5)
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	1b4080e7          	jalr	436(ra) # 800013f0 <_Z4putcc>
        head = (head + 1) % cap;
    80003244:	0104a783          	lw	a5,16(s1)
    80003248:	0017879b          	addiw	a5,a5,1
    8000324c:	0004a703          	lw	a4,0(s1)
    80003250:	02e7e7bb          	remw	a5,a5,a4
    80003254:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003258:	fc1ff06f          	j	80003218 <_ZN6BufferD1Ev+0x34>
    putc('!');
    8000325c:	02100513          	li	a0,33
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	190080e7          	jalr	400(ra) # 800013f0 <_Z4putcc>
    putc('\n');
    80003268:	00a00513          	li	a0,10
    8000326c:	ffffe097          	auipc	ra,0xffffe
    80003270:	184080e7          	jalr	388(ra) # 800013f0 <_Z4putcc>
    mem_free(buffer);
    80003274:	0084b503          	ld	a0,8(s1)
    80003278:	ffffe097          	auipc	ra,0xffffe
    8000327c:	ff4080e7          	jalr	-12(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    80003280:	0204b503          	ld	a0,32(s1)
    80003284:	ffffe097          	auipc	ra,0xffffe
    80003288:	0c0080e7          	jalr	192(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    8000328c:	0184b503          	ld	a0,24(s1)
    80003290:	ffffe097          	auipc	ra,0xffffe
    80003294:	0b4080e7          	jalr	180(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003298:	0304b503          	ld	a0,48(s1)
    8000329c:	ffffe097          	auipc	ra,0xffffe
    800032a0:	0a8080e7          	jalr	168(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    800032a4:	0284b503          	ld	a0,40(s1)
    800032a8:	ffffe097          	auipc	ra,0xffffe
    800032ac:	09c080e7          	jalr	156(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
}
    800032b0:	01813083          	ld	ra,24(sp)
    800032b4:	01013403          	ld	s0,16(sp)
    800032b8:	00813483          	ld	s1,8(sp)
    800032bc:	02010113          	addi	sp,sp,32
    800032c0:	00008067          	ret

00000000800032c4 <start>:
    800032c4:	ff010113          	addi	sp,sp,-16
    800032c8:	00813423          	sd	s0,8(sp)
    800032cc:	01010413          	addi	s0,sp,16
    800032d0:	300027f3          	csrr	a5,mstatus
    800032d4:	ffffe737          	lui	a4,0xffffe
    800032d8:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff609f>
    800032dc:	00e7f7b3          	and	a5,a5,a4
    800032e0:	00001737          	lui	a4,0x1
    800032e4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800032e8:	00e7e7b3          	or	a5,a5,a4
    800032ec:	30079073          	csrw	mstatus,a5
    800032f0:	00000797          	auipc	a5,0x0
    800032f4:	16078793          	addi	a5,a5,352 # 80003450 <system_main>
    800032f8:	34179073          	csrw	mepc,a5
    800032fc:	00000793          	li	a5,0
    80003300:	18079073          	csrw	satp,a5
    80003304:	000107b7          	lui	a5,0x10
    80003308:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000330c:	30279073          	csrw	medeleg,a5
    80003310:	30379073          	csrw	mideleg,a5
    80003314:	104027f3          	csrr	a5,sie
    80003318:	2227e793          	ori	a5,a5,546
    8000331c:	10479073          	csrw	sie,a5
    80003320:	fff00793          	li	a5,-1
    80003324:	00a7d793          	srli	a5,a5,0xa
    80003328:	3b079073          	csrw	pmpaddr0,a5
    8000332c:	00f00793          	li	a5,15
    80003330:	3a079073          	csrw	pmpcfg0,a5
    80003334:	f14027f3          	csrr	a5,mhartid
    80003338:	0200c737          	lui	a4,0x200c
    8000333c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003340:	0007869b          	sext.w	a3,a5
    80003344:	00269713          	slli	a4,a3,0x2
    80003348:	000f4637          	lui	a2,0xf4
    8000334c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003350:	00d70733          	add	a4,a4,a3
    80003354:	0037979b          	slliw	a5,a5,0x3
    80003358:	020046b7          	lui	a3,0x2004
    8000335c:	00d787b3          	add	a5,a5,a3
    80003360:	00c585b3          	add	a1,a1,a2
    80003364:	00371693          	slli	a3,a4,0x3
    80003368:	00004717          	auipc	a4,0x4
    8000336c:	18870713          	addi	a4,a4,392 # 800074f0 <timer_scratch>
    80003370:	00b7b023          	sd	a1,0(a5)
    80003374:	00d70733          	add	a4,a4,a3
    80003378:	00f73c23          	sd	a5,24(a4)
    8000337c:	02c73023          	sd	a2,32(a4)
    80003380:	34071073          	csrw	mscratch,a4
    80003384:	00000797          	auipc	a5,0x0
    80003388:	6ec78793          	addi	a5,a5,1772 # 80003a70 <timervec>
    8000338c:	30579073          	csrw	mtvec,a5
    80003390:	300027f3          	csrr	a5,mstatus
    80003394:	0087e793          	ori	a5,a5,8
    80003398:	30079073          	csrw	mstatus,a5
    8000339c:	304027f3          	csrr	a5,mie
    800033a0:	0807e793          	ori	a5,a5,128
    800033a4:	30479073          	csrw	mie,a5
    800033a8:	f14027f3          	csrr	a5,mhartid
    800033ac:	0007879b          	sext.w	a5,a5
    800033b0:	00078213          	mv	tp,a5
    800033b4:	30200073          	mret
    800033b8:	00813403          	ld	s0,8(sp)
    800033bc:	01010113          	addi	sp,sp,16
    800033c0:	00008067          	ret

00000000800033c4 <timerinit>:
    800033c4:	ff010113          	addi	sp,sp,-16
    800033c8:	00813423          	sd	s0,8(sp)
    800033cc:	01010413          	addi	s0,sp,16
    800033d0:	f14027f3          	csrr	a5,mhartid
    800033d4:	0200c737          	lui	a4,0x200c
    800033d8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800033dc:	0007869b          	sext.w	a3,a5
    800033e0:	00269713          	slli	a4,a3,0x2
    800033e4:	000f4637          	lui	a2,0xf4
    800033e8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800033ec:	00d70733          	add	a4,a4,a3
    800033f0:	0037979b          	slliw	a5,a5,0x3
    800033f4:	020046b7          	lui	a3,0x2004
    800033f8:	00d787b3          	add	a5,a5,a3
    800033fc:	00c585b3          	add	a1,a1,a2
    80003400:	00371693          	slli	a3,a4,0x3
    80003404:	00004717          	auipc	a4,0x4
    80003408:	0ec70713          	addi	a4,a4,236 # 800074f0 <timer_scratch>
    8000340c:	00b7b023          	sd	a1,0(a5)
    80003410:	00d70733          	add	a4,a4,a3
    80003414:	00f73c23          	sd	a5,24(a4)
    80003418:	02c73023          	sd	a2,32(a4)
    8000341c:	34071073          	csrw	mscratch,a4
    80003420:	00000797          	auipc	a5,0x0
    80003424:	65078793          	addi	a5,a5,1616 # 80003a70 <timervec>
    80003428:	30579073          	csrw	mtvec,a5
    8000342c:	300027f3          	csrr	a5,mstatus
    80003430:	0087e793          	ori	a5,a5,8
    80003434:	30079073          	csrw	mstatus,a5
    80003438:	304027f3          	csrr	a5,mie
    8000343c:	0807e793          	ori	a5,a5,128
    80003440:	30479073          	csrw	mie,a5
    80003444:	00813403          	ld	s0,8(sp)
    80003448:	01010113          	addi	sp,sp,16
    8000344c:	00008067          	ret

0000000080003450 <system_main>:
    80003450:	fe010113          	addi	sp,sp,-32
    80003454:	00813823          	sd	s0,16(sp)
    80003458:	00913423          	sd	s1,8(sp)
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	02010413          	addi	s0,sp,32
    80003464:	00000097          	auipc	ra,0x0
    80003468:	0c4080e7          	jalr	196(ra) # 80003528 <cpuid>
    8000346c:	00004497          	auipc	s1,0x4
    80003470:	00448493          	addi	s1,s1,4 # 80007470 <started>
    80003474:	02050263          	beqz	a0,80003498 <system_main+0x48>
    80003478:	0004a783          	lw	a5,0(s1)
    8000347c:	0007879b          	sext.w	a5,a5
    80003480:	fe078ce3          	beqz	a5,80003478 <system_main+0x28>
    80003484:	0ff0000f          	fence
    80003488:	00003517          	auipc	a0,0x3
    8000348c:	cd850513          	addi	a0,a0,-808 # 80006160 <CONSOLE_STATUS+0x150>
    80003490:	00001097          	auipc	ra,0x1
    80003494:	a7c080e7          	jalr	-1412(ra) # 80003f0c <panic>
    80003498:	00001097          	auipc	ra,0x1
    8000349c:	9d0080e7          	jalr	-1584(ra) # 80003e68 <consoleinit>
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	15c080e7          	jalr	348(ra) # 800045fc <printfinit>
    800034a8:	00003517          	auipc	a0,0x3
    800034ac:	d9850513          	addi	a0,a0,-616 # 80006240 <CONSOLE_STATUS+0x230>
    800034b0:	00001097          	auipc	ra,0x1
    800034b4:	ab8080e7          	jalr	-1352(ra) # 80003f68 <__printf>
    800034b8:	00003517          	auipc	a0,0x3
    800034bc:	c7850513          	addi	a0,a0,-904 # 80006130 <CONSOLE_STATUS+0x120>
    800034c0:	00001097          	auipc	ra,0x1
    800034c4:	aa8080e7          	jalr	-1368(ra) # 80003f68 <__printf>
    800034c8:	00003517          	auipc	a0,0x3
    800034cc:	d7850513          	addi	a0,a0,-648 # 80006240 <CONSOLE_STATUS+0x230>
    800034d0:	00001097          	auipc	ra,0x1
    800034d4:	a98080e7          	jalr	-1384(ra) # 80003f68 <__printf>
    800034d8:	00001097          	auipc	ra,0x1
    800034dc:	4b0080e7          	jalr	1200(ra) # 80004988 <kinit>
    800034e0:	00000097          	auipc	ra,0x0
    800034e4:	148080e7          	jalr	328(ra) # 80003628 <trapinit>
    800034e8:	00000097          	auipc	ra,0x0
    800034ec:	16c080e7          	jalr	364(ra) # 80003654 <trapinithart>
    800034f0:	00000097          	auipc	ra,0x0
    800034f4:	5c0080e7          	jalr	1472(ra) # 80003ab0 <plicinit>
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	5e0080e7          	jalr	1504(ra) # 80003ad8 <plicinithart>
    80003500:	00000097          	auipc	ra,0x0
    80003504:	078080e7          	jalr	120(ra) # 80003578 <userinit>
    80003508:	0ff0000f          	fence
    8000350c:	00100793          	li	a5,1
    80003510:	00003517          	auipc	a0,0x3
    80003514:	c3850513          	addi	a0,a0,-968 # 80006148 <CONSOLE_STATUS+0x138>
    80003518:	00f4a023          	sw	a5,0(s1)
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	a4c080e7          	jalr	-1460(ra) # 80003f68 <__printf>
    80003524:	0000006f          	j	80003524 <system_main+0xd4>

0000000080003528 <cpuid>:
    80003528:	ff010113          	addi	sp,sp,-16
    8000352c:	00813423          	sd	s0,8(sp)
    80003530:	01010413          	addi	s0,sp,16
    80003534:	00020513          	mv	a0,tp
    80003538:	00813403          	ld	s0,8(sp)
    8000353c:	0005051b          	sext.w	a0,a0
    80003540:	01010113          	addi	sp,sp,16
    80003544:	00008067          	ret

0000000080003548 <mycpu>:
    80003548:	ff010113          	addi	sp,sp,-16
    8000354c:	00813423          	sd	s0,8(sp)
    80003550:	01010413          	addi	s0,sp,16
    80003554:	00020793          	mv	a5,tp
    80003558:	00813403          	ld	s0,8(sp)
    8000355c:	0007879b          	sext.w	a5,a5
    80003560:	00779793          	slli	a5,a5,0x7
    80003564:	00005517          	auipc	a0,0x5
    80003568:	fbc50513          	addi	a0,a0,-68 # 80008520 <cpus>
    8000356c:	00f50533          	add	a0,a0,a5
    80003570:	01010113          	addi	sp,sp,16
    80003574:	00008067          	ret

0000000080003578 <userinit>:
    80003578:	ff010113          	addi	sp,sp,-16
    8000357c:	00813423          	sd	s0,8(sp)
    80003580:	01010413          	addi	s0,sp,16
    80003584:	00813403          	ld	s0,8(sp)
    80003588:	01010113          	addi	sp,sp,16
    8000358c:	fffff317          	auipc	t1,0xfffff
    80003590:	85030067          	jr	-1968(t1) # 80001ddc <main>

0000000080003594 <either_copyout>:
    80003594:	ff010113          	addi	sp,sp,-16
    80003598:	00813023          	sd	s0,0(sp)
    8000359c:	00113423          	sd	ra,8(sp)
    800035a0:	01010413          	addi	s0,sp,16
    800035a4:	02051663          	bnez	a0,800035d0 <either_copyout+0x3c>
    800035a8:	00058513          	mv	a0,a1
    800035ac:	00060593          	mv	a1,a2
    800035b0:	0006861b          	sext.w	a2,a3
    800035b4:	00002097          	auipc	ra,0x2
    800035b8:	c60080e7          	jalr	-928(ra) # 80005214 <__memmove>
    800035bc:	00813083          	ld	ra,8(sp)
    800035c0:	00013403          	ld	s0,0(sp)
    800035c4:	00000513          	li	a0,0
    800035c8:	01010113          	addi	sp,sp,16
    800035cc:	00008067          	ret
    800035d0:	00003517          	auipc	a0,0x3
    800035d4:	bb850513          	addi	a0,a0,-1096 # 80006188 <CONSOLE_STATUS+0x178>
    800035d8:	00001097          	auipc	ra,0x1
    800035dc:	934080e7          	jalr	-1740(ra) # 80003f0c <panic>

00000000800035e0 <either_copyin>:
    800035e0:	ff010113          	addi	sp,sp,-16
    800035e4:	00813023          	sd	s0,0(sp)
    800035e8:	00113423          	sd	ra,8(sp)
    800035ec:	01010413          	addi	s0,sp,16
    800035f0:	02059463          	bnez	a1,80003618 <either_copyin+0x38>
    800035f4:	00060593          	mv	a1,a2
    800035f8:	0006861b          	sext.w	a2,a3
    800035fc:	00002097          	auipc	ra,0x2
    80003600:	c18080e7          	jalr	-1000(ra) # 80005214 <__memmove>
    80003604:	00813083          	ld	ra,8(sp)
    80003608:	00013403          	ld	s0,0(sp)
    8000360c:	00000513          	li	a0,0
    80003610:	01010113          	addi	sp,sp,16
    80003614:	00008067          	ret
    80003618:	00003517          	auipc	a0,0x3
    8000361c:	b9850513          	addi	a0,a0,-1128 # 800061b0 <CONSOLE_STATUS+0x1a0>
    80003620:	00001097          	auipc	ra,0x1
    80003624:	8ec080e7          	jalr	-1812(ra) # 80003f0c <panic>

0000000080003628 <trapinit>:
    80003628:	ff010113          	addi	sp,sp,-16
    8000362c:	00813423          	sd	s0,8(sp)
    80003630:	01010413          	addi	s0,sp,16
    80003634:	00813403          	ld	s0,8(sp)
    80003638:	00003597          	auipc	a1,0x3
    8000363c:	ba058593          	addi	a1,a1,-1120 # 800061d8 <CONSOLE_STATUS+0x1c8>
    80003640:	00005517          	auipc	a0,0x5
    80003644:	f6050513          	addi	a0,a0,-160 # 800085a0 <tickslock>
    80003648:	01010113          	addi	sp,sp,16
    8000364c:	00001317          	auipc	t1,0x1
    80003650:	5cc30067          	jr	1484(t1) # 80004c18 <initlock>

0000000080003654 <trapinithart>:
    80003654:	ff010113          	addi	sp,sp,-16
    80003658:	00813423          	sd	s0,8(sp)
    8000365c:	01010413          	addi	s0,sp,16
    80003660:	00000797          	auipc	a5,0x0
    80003664:	30078793          	addi	a5,a5,768 # 80003960 <kernelvec>
    80003668:	10579073          	csrw	stvec,a5
    8000366c:	00813403          	ld	s0,8(sp)
    80003670:	01010113          	addi	sp,sp,16
    80003674:	00008067          	ret

0000000080003678 <usertrap>:
    80003678:	ff010113          	addi	sp,sp,-16
    8000367c:	00813423          	sd	s0,8(sp)
    80003680:	01010413          	addi	s0,sp,16
    80003684:	00813403          	ld	s0,8(sp)
    80003688:	01010113          	addi	sp,sp,16
    8000368c:	00008067          	ret

0000000080003690 <usertrapret>:
    80003690:	ff010113          	addi	sp,sp,-16
    80003694:	00813423          	sd	s0,8(sp)
    80003698:	01010413          	addi	s0,sp,16
    8000369c:	00813403          	ld	s0,8(sp)
    800036a0:	01010113          	addi	sp,sp,16
    800036a4:	00008067          	ret

00000000800036a8 <kerneltrap>:
    800036a8:	fe010113          	addi	sp,sp,-32
    800036ac:	00813823          	sd	s0,16(sp)
    800036b0:	00113c23          	sd	ra,24(sp)
    800036b4:	00913423          	sd	s1,8(sp)
    800036b8:	02010413          	addi	s0,sp,32
    800036bc:	142025f3          	csrr	a1,scause
    800036c0:	100027f3          	csrr	a5,sstatus
    800036c4:	0027f793          	andi	a5,a5,2
    800036c8:	10079c63          	bnez	a5,800037e0 <kerneltrap+0x138>
    800036cc:	142027f3          	csrr	a5,scause
    800036d0:	0207ce63          	bltz	a5,8000370c <kerneltrap+0x64>
    800036d4:	00003517          	auipc	a0,0x3
    800036d8:	b4c50513          	addi	a0,a0,-1204 # 80006220 <CONSOLE_STATUS+0x210>
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	88c080e7          	jalr	-1908(ra) # 80003f68 <__printf>
    800036e4:	141025f3          	csrr	a1,sepc
    800036e8:	14302673          	csrr	a2,stval
    800036ec:	00003517          	auipc	a0,0x3
    800036f0:	b4450513          	addi	a0,a0,-1212 # 80006230 <CONSOLE_STATUS+0x220>
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	874080e7          	jalr	-1932(ra) # 80003f68 <__printf>
    800036fc:	00003517          	auipc	a0,0x3
    80003700:	b4c50513          	addi	a0,a0,-1204 # 80006248 <CONSOLE_STATUS+0x238>
    80003704:	00001097          	auipc	ra,0x1
    80003708:	808080e7          	jalr	-2040(ra) # 80003f0c <panic>
    8000370c:	0ff7f713          	andi	a4,a5,255
    80003710:	00900693          	li	a3,9
    80003714:	04d70063          	beq	a4,a3,80003754 <kerneltrap+0xac>
    80003718:	fff00713          	li	a4,-1
    8000371c:	03f71713          	slli	a4,a4,0x3f
    80003720:	00170713          	addi	a4,a4,1
    80003724:	fae798e3          	bne	a5,a4,800036d4 <kerneltrap+0x2c>
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	e00080e7          	jalr	-512(ra) # 80003528 <cpuid>
    80003730:	06050663          	beqz	a0,8000379c <kerneltrap+0xf4>
    80003734:	144027f3          	csrr	a5,sip
    80003738:	ffd7f793          	andi	a5,a5,-3
    8000373c:	14479073          	csrw	sip,a5
    80003740:	01813083          	ld	ra,24(sp)
    80003744:	01013403          	ld	s0,16(sp)
    80003748:	00813483          	ld	s1,8(sp)
    8000374c:	02010113          	addi	sp,sp,32
    80003750:	00008067          	ret
    80003754:	00000097          	auipc	ra,0x0
    80003758:	3d0080e7          	jalr	976(ra) # 80003b24 <plic_claim>
    8000375c:	00a00793          	li	a5,10
    80003760:	00050493          	mv	s1,a0
    80003764:	06f50863          	beq	a0,a5,800037d4 <kerneltrap+0x12c>
    80003768:	fc050ce3          	beqz	a0,80003740 <kerneltrap+0x98>
    8000376c:	00050593          	mv	a1,a0
    80003770:	00003517          	auipc	a0,0x3
    80003774:	a9050513          	addi	a0,a0,-1392 # 80006200 <CONSOLE_STATUS+0x1f0>
    80003778:	00000097          	auipc	ra,0x0
    8000377c:	7f0080e7          	jalr	2032(ra) # 80003f68 <__printf>
    80003780:	01013403          	ld	s0,16(sp)
    80003784:	01813083          	ld	ra,24(sp)
    80003788:	00048513          	mv	a0,s1
    8000378c:	00813483          	ld	s1,8(sp)
    80003790:	02010113          	addi	sp,sp,32
    80003794:	00000317          	auipc	t1,0x0
    80003798:	3c830067          	jr	968(t1) # 80003b5c <plic_complete>
    8000379c:	00005517          	auipc	a0,0x5
    800037a0:	e0450513          	addi	a0,a0,-508 # 800085a0 <tickslock>
    800037a4:	00001097          	auipc	ra,0x1
    800037a8:	498080e7          	jalr	1176(ra) # 80004c3c <acquire>
    800037ac:	00004717          	auipc	a4,0x4
    800037b0:	cc870713          	addi	a4,a4,-824 # 80007474 <ticks>
    800037b4:	00072783          	lw	a5,0(a4)
    800037b8:	00005517          	auipc	a0,0x5
    800037bc:	de850513          	addi	a0,a0,-536 # 800085a0 <tickslock>
    800037c0:	0017879b          	addiw	a5,a5,1
    800037c4:	00f72023          	sw	a5,0(a4)
    800037c8:	00001097          	auipc	ra,0x1
    800037cc:	540080e7          	jalr	1344(ra) # 80004d08 <release>
    800037d0:	f65ff06f          	j	80003734 <kerneltrap+0x8c>
    800037d4:	00001097          	auipc	ra,0x1
    800037d8:	09c080e7          	jalr	156(ra) # 80004870 <uartintr>
    800037dc:	fa5ff06f          	j	80003780 <kerneltrap+0xd8>
    800037e0:	00003517          	auipc	a0,0x3
    800037e4:	a0050513          	addi	a0,a0,-1536 # 800061e0 <CONSOLE_STATUS+0x1d0>
    800037e8:	00000097          	auipc	ra,0x0
    800037ec:	724080e7          	jalr	1828(ra) # 80003f0c <panic>

00000000800037f0 <clockintr>:
    800037f0:	fe010113          	addi	sp,sp,-32
    800037f4:	00813823          	sd	s0,16(sp)
    800037f8:	00913423          	sd	s1,8(sp)
    800037fc:	00113c23          	sd	ra,24(sp)
    80003800:	02010413          	addi	s0,sp,32
    80003804:	00005497          	auipc	s1,0x5
    80003808:	d9c48493          	addi	s1,s1,-612 # 800085a0 <tickslock>
    8000380c:	00048513          	mv	a0,s1
    80003810:	00001097          	auipc	ra,0x1
    80003814:	42c080e7          	jalr	1068(ra) # 80004c3c <acquire>
    80003818:	00004717          	auipc	a4,0x4
    8000381c:	c5c70713          	addi	a4,a4,-932 # 80007474 <ticks>
    80003820:	00072783          	lw	a5,0(a4)
    80003824:	01013403          	ld	s0,16(sp)
    80003828:	01813083          	ld	ra,24(sp)
    8000382c:	00048513          	mv	a0,s1
    80003830:	0017879b          	addiw	a5,a5,1
    80003834:	00813483          	ld	s1,8(sp)
    80003838:	00f72023          	sw	a5,0(a4)
    8000383c:	02010113          	addi	sp,sp,32
    80003840:	00001317          	auipc	t1,0x1
    80003844:	4c830067          	jr	1224(t1) # 80004d08 <release>

0000000080003848 <devintr>:
    80003848:	142027f3          	csrr	a5,scause
    8000384c:	00000513          	li	a0,0
    80003850:	0007c463          	bltz	a5,80003858 <devintr+0x10>
    80003854:	00008067          	ret
    80003858:	fe010113          	addi	sp,sp,-32
    8000385c:	00813823          	sd	s0,16(sp)
    80003860:	00113c23          	sd	ra,24(sp)
    80003864:	00913423          	sd	s1,8(sp)
    80003868:	02010413          	addi	s0,sp,32
    8000386c:	0ff7f713          	andi	a4,a5,255
    80003870:	00900693          	li	a3,9
    80003874:	04d70c63          	beq	a4,a3,800038cc <devintr+0x84>
    80003878:	fff00713          	li	a4,-1
    8000387c:	03f71713          	slli	a4,a4,0x3f
    80003880:	00170713          	addi	a4,a4,1
    80003884:	00e78c63          	beq	a5,a4,8000389c <devintr+0x54>
    80003888:	01813083          	ld	ra,24(sp)
    8000388c:	01013403          	ld	s0,16(sp)
    80003890:	00813483          	ld	s1,8(sp)
    80003894:	02010113          	addi	sp,sp,32
    80003898:	00008067          	ret
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	c8c080e7          	jalr	-884(ra) # 80003528 <cpuid>
    800038a4:	06050663          	beqz	a0,80003910 <devintr+0xc8>
    800038a8:	144027f3          	csrr	a5,sip
    800038ac:	ffd7f793          	andi	a5,a5,-3
    800038b0:	14479073          	csrw	sip,a5
    800038b4:	01813083          	ld	ra,24(sp)
    800038b8:	01013403          	ld	s0,16(sp)
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	00200513          	li	a0,2
    800038c4:	02010113          	addi	sp,sp,32
    800038c8:	00008067          	ret
    800038cc:	00000097          	auipc	ra,0x0
    800038d0:	258080e7          	jalr	600(ra) # 80003b24 <plic_claim>
    800038d4:	00a00793          	li	a5,10
    800038d8:	00050493          	mv	s1,a0
    800038dc:	06f50663          	beq	a0,a5,80003948 <devintr+0x100>
    800038e0:	00100513          	li	a0,1
    800038e4:	fa0482e3          	beqz	s1,80003888 <devintr+0x40>
    800038e8:	00048593          	mv	a1,s1
    800038ec:	00003517          	auipc	a0,0x3
    800038f0:	91450513          	addi	a0,a0,-1772 # 80006200 <CONSOLE_STATUS+0x1f0>
    800038f4:	00000097          	auipc	ra,0x0
    800038f8:	674080e7          	jalr	1652(ra) # 80003f68 <__printf>
    800038fc:	00048513          	mv	a0,s1
    80003900:	00000097          	auipc	ra,0x0
    80003904:	25c080e7          	jalr	604(ra) # 80003b5c <plic_complete>
    80003908:	00100513          	li	a0,1
    8000390c:	f7dff06f          	j	80003888 <devintr+0x40>
    80003910:	00005517          	auipc	a0,0x5
    80003914:	c9050513          	addi	a0,a0,-880 # 800085a0 <tickslock>
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	324080e7          	jalr	804(ra) # 80004c3c <acquire>
    80003920:	00004717          	auipc	a4,0x4
    80003924:	b5470713          	addi	a4,a4,-1196 # 80007474 <ticks>
    80003928:	00072783          	lw	a5,0(a4)
    8000392c:	00005517          	auipc	a0,0x5
    80003930:	c7450513          	addi	a0,a0,-908 # 800085a0 <tickslock>
    80003934:	0017879b          	addiw	a5,a5,1
    80003938:	00f72023          	sw	a5,0(a4)
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	3cc080e7          	jalr	972(ra) # 80004d08 <release>
    80003944:	f65ff06f          	j	800038a8 <devintr+0x60>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	f28080e7          	jalr	-216(ra) # 80004870 <uartintr>
    80003950:	fadff06f          	j	800038fc <devintr+0xb4>
	...

0000000080003960 <kernelvec>:
    80003960:	f0010113          	addi	sp,sp,-256
    80003964:	00113023          	sd	ra,0(sp)
    80003968:	00213423          	sd	sp,8(sp)
    8000396c:	00313823          	sd	gp,16(sp)
    80003970:	00413c23          	sd	tp,24(sp)
    80003974:	02513023          	sd	t0,32(sp)
    80003978:	02613423          	sd	t1,40(sp)
    8000397c:	02713823          	sd	t2,48(sp)
    80003980:	02813c23          	sd	s0,56(sp)
    80003984:	04913023          	sd	s1,64(sp)
    80003988:	04a13423          	sd	a0,72(sp)
    8000398c:	04b13823          	sd	a1,80(sp)
    80003990:	04c13c23          	sd	a2,88(sp)
    80003994:	06d13023          	sd	a3,96(sp)
    80003998:	06e13423          	sd	a4,104(sp)
    8000399c:	06f13823          	sd	a5,112(sp)
    800039a0:	07013c23          	sd	a6,120(sp)
    800039a4:	09113023          	sd	a7,128(sp)
    800039a8:	09213423          	sd	s2,136(sp)
    800039ac:	09313823          	sd	s3,144(sp)
    800039b0:	09413c23          	sd	s4,152(sp)
    800039b4:	0b513023          	sd	s5,160(sp)
    800039b8:	0b613423          	sd	s6,168(sp)
    800039bc:	0b713823          	sd	s7,176(sp)
    800039c0:	0b813c23          	sd	s8,184(sp)
    800039c4:	0d913023          	sd	s9,192(sp)
    800039c8:	0da13423          	sd	s10,200(sp)
    800039cc:	0db13823          	sd	s11,208(sp)
    800039d0:	0dc13c23          	sd	t3,216(sp)
    800039d4:	0fd13023          	sd	t4,224(sp)
    800039d8:	0fe13423          	sd	t5,232(sp)
    800039dc:	0ff13823          	sd	t6,240(sp)
    800039e0:	cc9ff0ef          	jal	ra,800036a8 <kerneltrap>
    800039e4:	00013083          	ld	ra,0(sp)
    800039e8:	00813103          	ld	sp,8(sp)
    800039ec:	01013183          	ld	gp,16(sp)
    800039f0:	02013283          	ld	t0,32(sp)
    800039f4:	02813303          	ld	t1,40(sp)
    800039f8:	03013383          	ld	t2,48(sp)
    800039fc:	03813403          	ld	s0,56(sp)
    80003a00:	04013483          	ld	s1,64(sp)
    80003a04:	04813503          	ld	a0,72(sp)
    80003a08:	05013583          	ld	a1,80(sp)
    80003a0c:	05813603          	ld	a2,88(sp)
    80003a10:	06013683          	ld	a3,96(sp)
    80003a14:	06813703          	ld	a4,104(sp)
    80003a18:	07013783          	ld	a5,112(sp)
    80003a1c:	07813803          	ld	a6,120(sp)
    80003a20:	08013883          	ld	a7,128(sp)
    80003a24:	08813903          	ld	s2,136(sp)
    80003a28:	09013983          	ld	s3,144(sp)
    80003a2c:	09813a03          	ld	s4,152(sp)
    80003a30:	0a013a83          	ld	s5,160(sp)
    80003a34:	0a813b03          	ld	s6,168(sp)
    80003a38:	0b013b83          	ld	s7,176(sp)
    80003a3c:	0b813c03          	ld	s8,184(sp)
    80003a40:	0c013c83          	ld	s9,192(sp)
    80003a44:	0c813d03          	ld	s10,200(sp)
    80003a48:	0d013d83          	ld	s11,208(sp)
    80003a4c:	0d813e03          	ld	t3,216(sp)
    80003a50:	0e013e83          	ld	t4,224(sp)
    80003a54:	0e813f03          	ld	t5,232(sp)
    80003a58:	0f013f83          	ld	t6,240(sp)
    80003a5c:	10010113          	addi	sp,sp,256
    80003a60:	10200073          	sret
    80003a64:	00000013          	nop
    80003a68:	00000013          	nop
    80003a6c:	00000013          	nop

0000000080003a70 <timervec>:
    80003a70:	34051573          	csrrw	a0,mscratch,a0
    80003a74:	00b53023          	sd	a1,0(a0)
    80003a78:	00c53423          	sd	a2,8(a0)
    80003a7c:	00d53823          	sd	a3,16(a0)
    80003a80:	01853583          	ld	a1,24(a0)
    80003a84:	02053603          	ld	a2,32(a0)
    80003a88:	0005b683          	ld	a3,0(a1)
    80003a8c:	00c686b3          	add	a3,a3,a2
    80003a90:	00d5b023          	sd	a3,0(a1)
    80003a94:	00200593          	li	a1,2
    80003a98:	14459073          	csrw	sip,a1
    80003a9c:	01053683          	ld	a3,16(a0)
    80003aa0:	00853603          	ld	a2,8(a0)
    80003aa4:	00053583          	ld	a1,0(a0)
    80003aa8:	34051573          	csrrw	a0,mscratch,a0
    80003aac:	30200073          	mret

0000000080003ab0 <plicinit>:
    80003ab0:	ff010113          	addi	sp,sp,-16
    80003ab4:	00813423          	sd	s0,8(sp)
    80003ab8:	01010413          	addi	s0,sp,16
    80003abc:	00813403          	ld	s0,8(sp)
    80003ac0:	0c0007b7          	lui	a5,0xc000
    80003ac4:	00100713          	li	a4,1
    80003ac8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003acc:	00e7a223          	sw	a4,4(a5)
    80003ad0:	01010113          	addi	sp,sp,16
    80003ad4:	00008067          	ret

0000000080003ad8 <plicinithart>:
    80003ad8:	ff010113          	addi	sp,sp,-16
    80003adc:	00813023          	sd	s0,0(sp)
    80003ae0:	00113423          	sd	ra,8(sp)
    80003ae4:	01010413          	addi	s0,sp,16
    80003ae8:	00000097          	auipc	ra,0x0
    80003aec:	a40080e7          	jalr	-1472(ra) # 80003528 <cpuid>
    80003af0:	0085171b          	slliw	a4,a0,0x8
    80003af4:	0c0027b7          	lui	a5,0xc002
    80003af8:	00e787b3          	add	a5,a5,a4
    80003afc:	40200713          	li	a4,1026
    80003b00:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003b04:	00813083          	ld	ra,8(sp)
    80003b08:	00013403          	ld	s0,0(sp)
    80003b0c:	00d5151b          	slliw	a0,a0,0xd
    80003b10:	0c2017b7          	lui	a5,0xc201
    80003b14:	00a78533          	add	a0,a5,a0
    80003b18:	00052023          	sw	zero,0(a0)
    80003b1c:	01010113          	addi	sp,sp,16
    80003b20:	00008067          	ret

0000000080003b24 <plic_claim>:
    80003b24:	ff010113          	addi	sp,sp,-16
    80003b28:	00813023          	sd	s0,0(sp)
    80003b2c:	00113423          	sd	ra,8(sp)
    80003b30:	01010413          	addi	s0,sp,16
    80003b34:	00000097          	auipc	ra,0x0
    80003b38:	9f4080e7          	jalr	-1548(ra) # 80003528 <cpuid>
    80003b3c:	00813083          	ld	ra,8(sp)
    80003b40:	00013403          	ld	s0,0(sp)
    80003b44:	00d5151b          	slliw	a0,a0,0xd
    80003b48:	0c2017b7          	lui	a5,0xc201
    80003b4c:	00a78533          	add	a0,a5,a0
    80003b50:	00452503          	lw	a0,4(a0)
    80003b54:	01010113          	addi	sp,sp,16
    80003b58:	00008067          	ret

0000000080003b5c <plic_complete>:
    80003b5c:	fe010113          	addi	sp,sp,-32
    80003b60:	00813823          	sd	s0,16(sp)
    80003b64:	00913423          	sd	s1,8(sp)
    80003b68:	00113c23          	sd	ra,24(sp)
    80003b6c:	02010413          	addi	s0,sp,32
    80003b70:	00050493          	mv	s1,a0
    80003b74:	00000097          	auipc	ra,0x0
    80003b78:	9b4080e7          	jalr	-1612(ra) # 80003528 <cpuid>
    80003b7c:	01813083          	ld	ra,24(sp)
    80003b80:	01013403          	ld	s0,16(sp)
    80003b84:	00d5179b          	slliw	a5,a0,0xd
    80003b88:	0c201737          	lui	a4,0xc201
    80003b8c:	00f707b3          	add	a5,a4,a5
    80003b90:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003b94:	00813483          	ld	s1,8(sp)
    80003b98:	02010113          	addi	sp,sp,32
    80003b9c:	00008067          	ret

0000000080003ba0 <consolewrite>:
    80003ba0:	fb010113          	addi	sp,sp,-80
    80003ba4:	04813023          	sd	s0,64(sp)
    80003ba8:	04113423          	sd	ra,72(sp)
    80003bac:	02913c23          	sd	s1,56(sp)
    80003bb0:	03213823          	sd	s2,48(sp)
    80003bb4:	03313423          	sd	s3,40(sp)
    80003bb8:	03413023          	sd	s4,32(sp)
    80003bbc:	01513c23          	sd	s5,24(sp)
    80003bc0:	05010413          	addi	s0,sp,80
    80003bc4:	06c05c63          	blez	a2,80003c3c <consolewrite+0x9c>
    80003bc8:	00060993          	mv	s3,a2
    80003bcc:	00050a13          	mv	s4,a0
    80003bd0:	00058493          	mv	s1,a1
    80003bd4:	00000913          	li	s2,0
    80003bd8:	fff00a93          	li	s5,-1
    80003bdc:	01c0006f          	j	80003bf8 <consolewrite+0x58>
    80003be0:	fbf44503          	lbu	a0,-65(s0)
    80003be4:	0019091b          	addiw	s2,s2,1
    80003be8:	00148493          	addi	s1,s1,1
    80003bec:	00001097          	auipc	ra,0x1
    80003bf0:	a9c080e7          	jalr	-1380(ra) # 80004688 <uartputc>
    80003bf4:	03298063          	beq	s3,s2,80003c14 <consolewrite+0x74>
    80003bf8:	00048613          	mv	a2,s1
    80003bfc:	00100693          	li	a3,1
    80003c00:	000a0593          	mv	a1,s4
    80003c04:	fbf40513          	addi	a0,s0,-65
    80003c08:	00000097          	auipc	ra,0x0
    80003c0c:	9d8080e7          	jalr	-1576(ra) # 800035e0 <either_copyin>
    80003c10:	fd5518e3          	bne	a0,s5,80003be0 <consolewrite+0x40>
    80003c14:	04813083          	ld	ra,72(sp)
    80003c18:	04013403          	ld	s0,64(sp)
    80003c1c:	03813483          	ld	s1,56(sp)
    80003c20:	02813983          	ld	s3,40(sp)
    80003c24:	02013a03          	ld	s4,32(sp)
    80003c28:	01813a83          	ld	s5,24(sp)
    80003c2c:	00090513          	mv	a0,s2
    80003c30:	03013903          	ld	s2,48(sp)
    80003c34:	05010113          	addi	sp,sp,80
    80003c38:	00008067          	ret
    80003c3c:	00000913          	li	s2,0
    80003c40:	fd5ff06f          	j	80003c14 <consolewrite+0x74>

0000000080003c44 <consoleread>:
    80003c44:	f9010113          	addi	sp,sp,-112
    80003c48:	06813023          	sd	s0,96(sp)
    80003c4c:	04913c23          	sd	s1,88(sp)
    80003c50:	05213823          	sd	s2,80(sp)
    80003c54:	05313423          	sd	s3,72(sp)
    80003c58:	05413023          	sd	s4,64(sp)
    80003c5c:	03513c23          	sd	s5,56(sp)
    80003c60:	03613823          	sd	s6,48(sp)
    80003c64:	03713423          	sd	s7,40(sp)
    80003c68:	03813023          	sd	s8,32(sp)
    80003c6c:	06113423          	sd	ra,104(sp)
    80003c70:	01913c23          	sd	s9,24(sp)
    80003c74:	07010413          	addi	s0,sp,112
    80003c78:	00060b93          	mv	s7,a2
    80003c7c:	00050913          	mv	s2,a0
    80003c80:	00058c13          	mv	s8,a1
    80003c84:	00060b1b          	sext.w	s6,a2
    80003c88:	00005497          	auipc	s1,0x5
    80003c8c:	94048493          	addi	s1,s1,-1728 # 800085c8 <cons>
    80003c90:	00400993          	li	s3,4
    80003c94:	fff00a13          	li	s4,-1
    80003c98:	00a00a93          	li	s5,10
    80003c9c:	05705e63          	blez	s7,80003cf8 <consoleread+0xb4>
    80003ca0:	09c4a703          	lw	a4,156(s1)
    80003ca4:	0984a783          	lw	a5,152(s1)
    80003ca8:	0007071b          	sext.w	a4,a4
    80003cac:	08e78463          	beq	a5,a4,80003d34 <consoleread+0xf0>
    80003cb0:	07f7f713          	andi	a4,a5,127
    80003cb4:	00e48733          	add	a4,s1,a4
    80003cb8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003cbc:	0017869b          	addiw	a3,a5,1
    80003cc0:	08d4ac23          	sw	a3,152(s1)
    80003cc4:	00070c9b          	sext.w	s9,a4
    80003cc8:	0b370663          	beq	a4,s3,80003d74 <consoleread+0x130>
    80003ccc:	00100693          	li	a3,1
    80003cd0:	f9f40613          	addi	a2,s0,-97
    80003cd4:	000c0593          	mv	a1,s8
    80003cd8:	00090513          	mv	a0,s2
    80003cdc:	f8e40fa3          	sb	a4,-97(s0)
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	8b4080e7          	jalr	-1868(ra) # 80003594 <either_copyout>
    80003ce8:	01450863          	beq	a0,s4,80003cf8 <consoleread+0xb4>
    80003cec:	001c0c13          	addi	s8,s8,1
    80003cf0:	fffb8b9b          	addiw	s7,s7,-1
    80003cf4:	fb5c94e3          	bne	s9,s5,80003c9c <consoleread+0x58>
    80003cf8:	000b851b          	sext.w	a0,s7
    80003cfc:	06813083          	ld	ra,104(sp)
    80003d00:	06013403          	ld	s0,96(sp)
    80003d04:	05813483          	ld	s1,88(sp)
    80003d08:	05013903          	ld	s2,80(sp)
    80003d0c:	04813983          	ld	s3,72(sp)
    80003d10:	04013a03          	ld	s4,64(sp)
    80003d14:	03813a83          	ld	s5,56(sp)
    80003d18:	02813b83          	ld	s7,40(sp)
    80003d1c:	02013c03          	ld	s8,32(sp)
    80003d20:	01813c83          	ld	s9,24(sp)
    80003d24:	40ab053b          	subw	a0,s6,a0
    80003d28:	03013b03          	ld	s6,48(sp)
    80003d2c:	07010113          	addi	sp,sp,112
    80003d30:	00008067          	ret
    80003d34:	00001097          	auipc	ra,0x1
    80003d38:	1d8080e7          	jalr	472(ra) # 80004f0c <push_on>
    80003d3c:	0984a703          	lw	a4,152(s1)
    80003d40:	09c4a783          	lw	a5,156(s1)
    80003d44:	0007879b          	sext.w	a5,a5
    80003d48:	fef70ce3          	beq	a4,a5,80003d40 <consoleread+0xfc>
    80003d4c:	00001097          	auipc	ra,0x1
    80003d50:	234080e7          	jalr	564(ra) # 80004f80 <pop_on>
    80003d54:	0984a783          	lw	a5,152(s1)
    80003d58:	07f7f713          	andi	a4,a5,127
    80003d5c:	00e48733          	add	a4,s1,a4
    80003d60:	01874703          	lbu	a4,24(a4)
    80003d64:	0017869b          	addiw	a3,a5,1
    80003d68:	08d4ac23          	sw	a3,152(s1)
    80003d6c:	00070c9b          	sext.w	s9,a4
    80003d70:	f5371ee3          	bne	a4,s3,80003ccc <consoleread+0x88>
    80003d74:	000b851b          	sext.w	a0,s7
    80003d78:	f96bf2e3          	bgeu	s7,s6,80003cfc <consoleread+0xb8>
    80003d7c:	08f4ac23          	sw	a5,152(s1)
    80003d80:	f7dff06f          	j	80003cfc <consoleread+0xb8>

0000000080003d84 <consputc>:
    80003d84:	10000793          	li	a5,256
    80003d88:	00f50663          	beq	a0,a5,80003d94 <consputc+0x10>
    80003d8c:	00001317          	auipc	t1,0x1
    80003d90:	9f430067          	jr	-1548(t1) # 80004780 <uartputc_sync>
    80003d94:	ff010113          	addi	sp,sp,-16
    80003d98:	00113423          	sd	ra,8(sp)
    80003d9c:	00813023          	sd	s0,0(sp)
    80003da0:	01010413          	addi	s0,sp,16
    80003da4:	00800513          	li	a0,8
    80003da8:	00001097          	auipc	ra,0x1
    80003dac:	9d8080e7          	jalr	-1576(ra) # 80004780 <uartputc_sync>
    80003db0:	02000513          	li	a0,32
    80003db4:	00001097          	auipc	ra,0x1
    80003db8:	9cc080e7          	jalr	-1588(ra) # 80004780 <uartputc_sync>
    80003dbc:	00013403          	ld	s0,0(sp)
    80003dc0:	00813083          	ld	ra,8(sp)
    80003dc4:	00800513          	li	a0,8
    80003dc8:	01010113          	addi	sp,sp,16
    80003dcc:	00001317          	auipc	t1,0x1
    80003dd0:	9b430067          	jr	-1612(t1) # 80004780 <uartputc_sync>

0000000080003dd4 <consoleintr>:
    80003dd4:	fe010113          	addi	sp,sp,-32
    80003dd8:	00813823          	sd	s0,16(sp)
    80003ddc:	00913423          	sd	s1,8(sp)
    80003de0:	01213023          	sd	s2,0(sp)
    80003de4:	00113c23          	sd	ra,24(sp)
    80003de8:	02010413          	addi	s0,sp,32
    80003dec:	00004917          	auipc	s2,0x4
    80003df0:	7dc90913          	addi	s2,s2,2012 # 800085c8 <cons>
    80003df4:	00050493          	mv	s1,a0
    80003df8:	00090513          	mv	a0,s2
    80003dfc:	00001097          	auipc	ra,0x1
    80003e00:	e40080e7          	jalr	-448(ra) # 80004c3c <acquire>
    80003e04:	02048c63          	beqz	s1,80003e3c <consoleintr+0x68>
    80003e08:	0a092783          	lw	a5,160(s2)
    80003e0c:	09892703          	lw	a4,152(s2)
    80003e10:	07f00693          	li	a3,127
    80003e14:	40e7873b          	subw	a4,a5,a4
    80003e18:	02e6e263          	bltu	a3,a4,80003e3c <consoleintr+0x68>
    80003e1c:	00d00713          	li	a4,13
    80003e20:	04e48063          	beq	s1,a4,80003e60 <consoleintr+0x8c>
    80003e24:	07f7f713          	andi	a4,a5,127
    80003e28:	00e90733          	add	a4,s2,a4
    80003e2c:	0017879b          	addiw	a5,a5,1
    80003e30:	0af92023          	sw	a5,160(s2)
    80003e34:	00970c23          	sb	s1,24(a4)
    80003e38:	08f92e23          	sw	a5,156(s2)
    80003e3c:	01013403          	ld	s0,16(sp)
    80003e40:	01813083          	ld	ra,24(sp)
    80003e44:	00813483          	ld	s1,8(sp)
    80003e48:	00013903          	ld	s2,0(sp)
    80003e4c:	00004517          	auipc	a0,0x4
    80003e50:	77c50513          	addi	a0,a0,1916 # 800085c8 <cons>
    80003e54:	02010113          	addi	sp,sp,32
    80003e58:	00001317          	auipc	t1,0x1
    80003e5c:	eb030067          	jr	-336(t1) # 80004d08 <release>
    80003e60:	00a00493          	li	s1,10
    80003e64:	fc1ff06f          	j	80003e24 <consoleintr+0x50>

0000000080003e68 <consoleinit>:
    80003e68:	fe010113          	addi	sp,sp,-32
    80003e6c:	00113c23          	sd	ra,24(sp)
    80003e70:	00813823          	sd	s0,16(sp)
    80003e74:	00913423          	sd	s1,8(sp)
    80003e78:	02010413          	addi	s0,sp,32
    80003e7c:	00004497          	auipc	s1,0x4
    80003e80:	74c48493          	addi	s1,s1,1868 # 800085c8 <cons>
    80003e84:	00048513          	mv	a0,s1
    80003e88:	00002597          	auipc	a1,0x2
    80003e8c:	3d058593          	addi	a1,a1,976 # 80006258 <CONSOLE_STATUS+0x248>
    80003e90:	00001097          	auipc	ra,0x1
    80003e94:	d88080e7          	jalr	-632(ra) # 80004c18 <initlock>
    80003e98:	00000097          	auipc	ra,0x0
    80003e9c:	7ac080e7          	jalr	1964(ra) # 80004644 <uartinit>
    80003ea0:	01813083          	ld	ra,24(sp)
    80003ea4:	01013403          	ld	s0,16(sp)
    80003ea8:	00000797          	auipc	a5,0x0
    80003eac:	d9c78793          	addi	a5,a5,-612 # 80003c44 <consoleread>
    80003eb0:	0af4bc23          	sd	a5,184(s1)
    80003eb4:	00000797          	auipc	a5,0x0
    80003eb8:	cec78793          	addi	a5,a5,-788 # 80003ba0 <consolewrite>
    80003ebc:	0cf4b023          	sd	a5,192(s1)
    80003ec0:	00813483          	ld	s1,8(sp)
    80003ec4:	02010113          	addi	sp,sp,32
    80003ec8:	00008067          	ret

0000000080003ecc <console_read>:
    80003ecc:	ff010113          	addi	sp,sp,-16
    80003ed0:	00813423          	sd	s0,8(sp)
    80003ed4:	01010413          	addi	s0,sp,16
    80003ed8:	00813403          	ld	s0,8(sp)
    80003edc:	00004317          	auipc	t1,0x4
    80003ee0:	7a433303          	ld	t1,1956(t1) # 80008680 <devsw+0x10>
    80003ee4:	01010113          	addi	sp,sp,16
    80003ee8:	00030067          	jr	t1

0000000080003eec <console_write>:
    80003eec:	ff010113          	addi	sp,sp,-16
    80003ef0:	00813423          	sd	s0,8(sp)
    80003ef4:	01010413          	addi	s0,sp,16
    80003ef8:	00813403          	ld	s0,8(sp)
    80003efc:	00004317          	auipc	t1,0x4
    80003f00:	78c33303          	ld	t1,1932(t1) # 80008688 <devsw+0x18>
    80003f04:	01010113          	addi	sp,sp,16
    80003f08:	00030067          	jr	t1

0000000080003f0c <panic>:
    80003f0c:	fe010113          	addi	sp,sp,-32
    80003f10:	00113c23          	sd	ra,24(sp)
    80003f14:	00813823          	sd	s0,16(sp)
    80003f18:	00913423          	sd	s1,8(sp)
    80003f1c:	02010413          	addi	s0,sp,32
    80003f20:	00050493          	mv	s1,a0
    80003f24:	00002517          	auipc	a0,0x2
    80003f28:	33c50513          	addi	a0,a0,828 # 80006260 <CONSOLE_STATUS+0x250>
    80003f2c:	00004797          	auipc	a5,0x4
    80003f30:	7e07ae23          	sw	zero,2044(a5) # 80008728 <pr+0x18>
    80003f34:	00000097          	auipc	ra,0x0
    80003f38:	034080e7          	jalr	52(ra) # 80003f68 <__printf>
    80003f3c:	00048513          	mv	a0,s1
    80003f40:	00000097          	auipc	ra,0x0
    80003f44:	028080e7          	jalr	40(ra) # 80003f68 <__printf>
    80003f48:	00002517          	auipc	a0,0x2
    80003f4c:	2f850513          	addi	a0,a0,760 # 80006240 <CONSOLE_STATUS+0x230>
    80003f50:	00000097          	auipc	ra,0x0
    80003f54:	018080e7          	jalr	24(ra) # 80003f68 <__printf>
    80003f58:	00100793          	li	a5,1
    80003f5c:	00003717          	auipc	a4,0x3
    80003f60:	50f72e23          	sw	a5,1308(a4) # 80007478 <panicked>
    80003f64:	0000006f          	j	80003f64 <panic+0x58>

0000000080003f68 <__printf>:
    80003f68:	f3010113          	addi	sp,sp,-208
    80003f6c:	08813023          	sd	s0,128(sp)
    80003f70:	07313423          	sd	s3,104(sp)
    80003f74:	09010413          	addi	s0,sp,144
    80003f78:	05813023          	sd	s8,64(sp)
    80003f7c:	08113423          	sd	ra,136(sp)
    80003f80:	06913c23          	sd	s1,120(sp)
    80003f84:	07213823          	sd	s2,112(sp)
    80003f88:	07413023          	sd	s4,96(sp)
    80003f8c:	05513c23          	sd	s5,88(sp)
    80003f90:	05613823          	sd	s6,80(sp)
    80003f94:	05713423          	sd	s7,72(sp)
    80003f98:	03913c23          	sd	s9,56(sp)
    80003f9c:	03a13823          	sd	s10,48(sp)
    80003fa0:	03b13423          	sd	s11,40(sp)
    80003fa4:	00004317          	auipc	t1,0x4
    80003fa8:	76c30313          	addi	t1,t1,1900 # 80008710 <pr>
    80003fac:	01832c03          	lw	s8,24(t1)
    80003fb0:	00b43423          	sd	a1,8(s0)
    80003fb4:	00c43823          	sd	a2,16(s0)
    80003fb8:	00d43c23          	sd	a3,24(s0)
    80003fbc:	02e43023          	sd	a4,32(s0)
    80003fc0:	02f43423          	sd	a5,40(s0)
    80003fc4:	03043823          	sd	a6,48(s0)
    80003fc8:	03143c23          	sd	a7,56(s0)
    80003fcc:	00050993          	mv	s3,a0
    80003fd0:	4a0c1663          	bnez	s8,8000447c <__printf+0x514>
    80003fd4:	60098c63          	beqz	s3,800045ec <__printf+0x684>
    80003fd8:	0009c503          	lbu	a0,0(s3)
    80003fdc:	00840793          	addi	a5,s0,8
    80003fe0:	f6f43c23          	sd	a5,-136(s0)
    80003fe4:	00000493          	li	s1,0
    80003fe8:	22050063          	beqz	a0,80004208 <__printf+0x2a0>
    80003fec:	00002a37          	lui	s4,0x2
    80003ff0:	00018ab7          	lui	s5,0x18
    80003ff4:	000f4b37          	lui	s6,0xf4
    80003ff8:	00989bb7          	lui	s7,0x989
    80003ffc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004000:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004004:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004008:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000400c:	00148c9b          	addiw	s9,s1,1
    80004010:	02500793          	li	a5,37
    80004014:	01998933          	add	s2,s3,s9
    80004018:	38f51263          	bne	a0,a5,8000439c <__printf+0x434>
    8000401c:	00094783          	lbu	a5,0(s2)
    80004020:	00078c9b          	sext.w	s9,a5
    80004024:	1e078263          	beqz	a5,80004208 <__printf+0x2a0>
    80004028:	0024849b          	addiw	s1,s1,2
    8000402c:	07000713          	li	a4,112
    80004030:	00998933          	add	s2,s3,s1
    80004034:	38e78a63          	beq	a5,a4,800043c8 <__printf+0x460>
    80004038:	20f76863          	bltu	a4,a5,80004248 <__printf+0x2e0>
    8000403c:	42a78863          	beq	a5,a0,8000446c <__printf+0x504>
    80004040:	06400713          	li	a4,100
    80004044:	40e79663          	bne	a5,a4,80004450 <__printf+0x4e8>
    80004048:	f7843783          	ld	a5,-136(s0)
    8000404c:	0007a603          	lw	a2,0(a5)
    80004050:	00878793          	addi	a5,a5,8
    80004054:	f6f43c23          	sd	a5,-136(s0)
    80004058:	42064a63          	bltz	a2,8000448c <__printf+0x524>
    8000405c:	00a00713          	li	a4,10
    80004060:	02e677bb          	remuw	a5,a2,a4
    80004064:	00002d97          	auipc	s11,0x2
    80004068:	224d8d93          	addi	s11,s11,548 # 80006288 <digits>
    8000406c:	00900593          	li	a1,9
    80004070:	0006051b          	sext.w	a0,a2
    80004074:	00000c93          	li	s9,0
    80004078:	02079793          	slli	a5,a5,0x20
    8000407c:	0207d793          	srli	a5,a5,0x20
    80004080:	00fd87b3          	add	a5,s11,a5
    80004084:	0007c783          	lbu	a5,0(a5)
    80004088:	02e656bb          	divuw	a3,a2,a4
    8000408c:	f8f40023          	sb	a5,-128(s0)
    80004090:	14c5d863          	bge	a1,a2,800041e0 <__printf+0x278>
    80004094:	06300593          	li	a1,99
    80004098:	00100c93          	li	s9,1
    8000409c:	02e6f7bb          	remuw	a5,a3,a4
    800040a0:	02079793          	slli	a5,a5,0x20
    800040a4:	0207d793          	srli	a5,a5,0x20
    800040a8:	00fd87b3          	add	a5,s11,a5
    800040ac:	0007c783          	lbu	a5,0(a5)
    800040b0:	02e6d73b          	divuw	a4,a3,a4
    800040b4:	f8f400a3          	sb	a5,-127(s0)
    800040b8:	12a5f463          	bgeu	a1,a0,800041e0 <__printf+0x278>
    800040bc:	00a00693          	li	a3,10
    800040c0:	00900593          	li	a1,9
    800040c4:	02d777bb          	remuw	a5,a4,a3
    800040c8:	02079793          	slli	a5,a5,0x20
    800040cc:	0207d793          	srli	a5,a5,0x20
    800040d0:	00fd87b3          	add	a5,s11,a5
    800040d4:	0007c503          	lbu	a0,0(a5)
    800040d8:	02d757bb          	divuw	a5,a4,a3
    800040dc:	f8a40123          	sb	a0,-126(s0)
    800040e0:	48e5f263          	bgeu	a1,a4,80004564 <__printf+0x5fc>
    800040e4:	06300513          	li	a0,99
    800040e8:	02d7f5bb          	remuw	a1,a5,a3
    800040ec:	02059593          	slli	a1,a1,0x20
    800040f0:	0205d593          	srli	a1,a1,0x20
    800040f4:	00bd85b3          	add	a1,s11,a1
    800040f8:	0005c583          	lbu	a1,0(a1)
    800040fc:	02d7d7bb          	divuw	a5,a5,a3
    80004100:	f8b401a3          	sb	a1,-125(s0)
    80004104:	48e57263          	bgeu	a0,a4,80004588 <__printf+0x620>
    80004108:	3e700513          	li	a0,999
    8000410c:	02d7f5bb          	remuw	a1,a5,a3
    80004110:	02059593          	slli	a1,a1,0x20
    80004114:	0205d593          	srli	a1,a1,0x20
    80004118:	00bd85b3          	add	a1,s11,a1
    8000411c:	0005c583          	lbu	a1,0(a1)
    80004120:	02d7d7bb          	divuw	a5,a5,a3
    80004124:	f8b40223          	sb	a1,-124(s0)
    80004128:	46e57663          	bgeu	a0,a4,80004594 <__printf+0x62c>
    8000412c:	02d7f5bb          	remuw	a1,a5,a3
    80004130:	02059593          	slli	a1,a1,0x20
    80004134:	0205d593          	srli	a1,a1,0x20
    80004138:	00bd85b3          	add	a1,s11,a1
    8000413c:	0005c583          	lbu	a1,0(a1)
    80004140:	02d7d7bb          	divuw	a5,a5,a3
    80004144:	f8b402a3          	sb	a1,-123(s0)
    80004148:	46ea7863          	bgeu	s4,a4,800045b8 <__printf+0x650>
    8000414c:	02d7f5bb          	remuw	a1,a5,a3
    80004150:	02059593          	slli	a1,a1,0x20
    80004154:	0205d593          	srli	a1,a1,0x20
    80004158:	00bd85b3          	add	a1,s11,a1
    8000415c:	0005c583          	lbu	a1,0(a1)
    80004160:	02d7d7bb          	divuw	a5,a5,a3
    80004164:	f8b40323          	sb	a1,-122(s0)
    80004168:	3eeaf863          	bgeu	s5,a4,80004558 <__printf+0x5f0>
    8000416c:	02d7f5bb          	remuw	a1,a5,a3
    80004170:	02059593          	slli	a1,a1,0x20
    80004174:	0205d593          	srli	a1,a1,0x20
    80004178:	00bd85b3          	add	a1,s11,a1
    8000417c:	0005c583          	lbu	a1,0(a1)
    80004180:	02d7d7bb          	divuw	a5,a5,a3
    80004184:	f8b403a3          	sb	a1,-121(s0)
    80004188:	42eb7e63          	bgeu	s6,a4,800045c4 <__printf+0x65c>
    8000418c:	02d7f5bb          	remuw	a1,a5,a3
    80004190:	02059593          	slli	a1,a1,0x20
    80004194:	0205d593          	srli	a1,a1,0x20
    80004198:	00bd85b3          	add	a1,s11,a1
    8000419c:	0005c583          	lbu	a1,0(a1)
    800041a0:	02d7d7bb          	divuw	a5,a5,a3
    800041a4:	f8b40423          	sb	a1,-120(s0)
    800041a8:	42ebfc63          	bgeu	s7,a4,800045e0 <__printf+0x678>
    800041ac:	02079793          	slli	a5,a5,0x20
    800041b0:	0207d793          	srli	a5,a5,0x20
    800041b4:	00fd8db3          	add	s11,s11,a5
    800041b8:	000dc703          	lbu	a4,0(s11)
    800041bc:	00a00793          	li	a5,10
    800041c0:	00900c93          	li	s9,9
    800041c4:	f8e404a3          	sb	a4,-119(s0)
    800041c8:	00065c63          	bgez	a2,800041e0 <__printf+0x278>
    800041cc:	f9040713          	addi	a4,s0,-112
    800041d0:	00f70733          	add	a4,a4,a5
    800041d4:	02d00693          	li	a3,45
    800041d8:	fed70823          	sb	a3,-16(a4)
    800041dc:	00078c93          	mv	s9,a5
    800041e0:	f8040793          	addi	a5,s0,-128
    800041e4:	01978cb3          	add	s9,a5,s9
    800041e8:	f7f40d13          	addi	s10,s0,-129
    800041ec:	000cc503          	lbu	a0,0(s9)
    800041f0:	fffc8c93          	addi	s9,s9,-1
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	b90080e7          	jalr	-1136(ra) # 80003d84 <consputc>
    800041fc:	ffac98e3          	bne	s9,s10,800041ec <__printf+0x284>
    80004200:	00094503          	lbu	a0,0(s2)
    80004204:	e00514e3          	bnez	a0,8000400c <__printf+0xa4>
    80004208:	1a0c1663          	bnez	s8,800043b4 <__printf+0x44c>
    8000420c:	08813083          	ld	ra,136(sp)
    80004210:	08013403          	ld	s0,128(sp)
    80004214:	07813483          	ld	s1,120(sp)
    80004218:	07013903          	ld	s2,112(sp)
    8000421c:	06813983          	ld	s3,104(sp)
    80004220:	06013a03          	ld	s4,96(sp)
    80004224:	05813a83          	ld	s5,88(sp)
    80004228:	05013b03          	ld	s6,80(sp)
    8000422c:	04813b83          	ld	s7,72(sp)
    80004230:	04013c03          	ld	s8,64(sp)
    80004234:	03813c83          	ld	s9,56(sp)
    80004238:	03013d03          	ld	s10,48(sp)
    8000423c:	02813d83          	ld	s11,40(sp)
    80004240:	0d010113          	addi	sp,sp,208
    80004244:	00008067          	ret
    80004248:	07300713          	li	a4,115
    8000424c:	1ce78a63          	beq	a5,a4,80004420 <__printf+0x4b8>
    80004250:	07800713          	li	a4,120
    80004254:	1ee79e63          	bne	a5,a4,80004450 <__printf+0x4e8>
    80004258:	f7843783          	ld	a5,-136(s0)
    8000425c:	0007a703          	lw	a4,0(a5)
    80004260:	00878793          	addi	a5,a5,8
    80004264:	f6f43c23          	sd	a5,-136(s0)
    80004268:	28074263          	bltz	a4,800044ec <__printf+0x584>
    8000426c:	00002d97          	auipc	s11,0x2
    80004270:	01cd8d93          	addi	s11,s11,28 # 80006288 <digits>
    80004274:	00f77793          	andi	a5,a4,15
    80004278:	00fd87b3          	add	a5,s11,a5
    8000427c:	0007c683          	lbu	a3,0(a5)
    80004280:	00f00613          	li	a2,15
    80004284:	0007079b          	sext.w	a5,a4
    80004288:	f8d40023          	sb	a3,-128(s0)
    8000428c:	0047559b          	srliw	a1,a4,0x4
    80004290:	0047569b          	srliw	a3,a4,0x4
    80004294:	00000c93          	li	s9,0
    80004298:	0ee65063          	bge	a2,a4,80004378 <__printf+0x410>
    8000429c:	00f6f693          	andi	a3,a3,15
    800042a0:	00dd86b3          	add	a3,s11,a3
    800042a4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800042a8:	0087d79b          	srliw	a5,a5,0x8
    800042ac:	00100c93          	li	s9,1
    800042b0:	f8d400a3          	sb	a3,-127(s0)
    800042b4:	0cb67263          	bgeu	a2,a1,80004378 <__printf+0x410>
    800042b8:	00f7f693          	andi	a3,a5,15
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c583          	lbu	a1,0(a3)
    800042c4:	00f00613          	li	a2,15
    800042c8:	0047d69b          	srliw	a3,a5,0x4
    800042cc:	f8b40123          	sb	a1,-126(s0)
    800042d0:	0047d593          	srli	a1,a5,0x4
    800042d4:	28f67e63          	bgeu	a2,a5,80004570 <__printf+0x608>
    800042d8:	00f6f693          	andi	a3,a3,15
    800042dc:	00dd86b3          	add	a3,s11,a3
    800042e0:	0006c503          	lbu	a0,0(a3)
    800042e4:	0087d813          	srli	a6,a5,0x8
    800042e8:	0087d69b          	srliw	a3,a5,0x8
    800042ec:	f8a401a3          	sb	a0,-125(s0)
    800042f0:	28b67663          	bgeu	a2,a1,8000457c <__printf+0x614>
    800042f4:	00f6f693          	andi	a3,a3,15
    800042f8:	00dd86b3          	add	a3,s11,a3
    800042fc:	0006c583          	lbu	a1,0(a3)
    80004300:	00c7d513          	srli	a0,a5,0xc
    80004304:	00c7d69b          	srliw	a3,a5,0xc
    80004308:	f8b40223          	sb	a1,-124(s0)
    8000430c:	29067a63          	bgeu	a2,a6,800045a0 <__printf+0x638>
    80004310:	00f6f693          	andi	a3,a3,15
    80004314:	00dd86b3          	add	a3,s11,a3
    80004318:	0006c583          	lbu	a1,0(a3)
    8000431c:	0107d813          	srli	a6,a5,0x10
    80004320:	0107d69b          	srliw	a3,a5,0x10
    80004324:	f8b402a3          	sb	a1,-123(s0)
    80004328:	28a67263          	bgeu	a2,a0,800045ac <__printf+0x644>
    8000432c:	00f6f693          	andi	a3,a3,15
    80004330:	00dd86b3          	add	a3,s11,a3
    80004334:	0006c683          	lbu	a3,0(a3)
    80004338:	0147d79b          	srliw	a5,a5,0x14
    8000433c:	f8d40323          	sb	a3,-122(s0)
    80004340:	21067663          	bgeu	a2,a6,8000454c <__printf+0x5e4>
    80004344:	02079793          	slli	a5,a5,0x20
    80004348:	0207d793          	srli	a5,a5,0x20
    8000434c:	00fd8db3          	add	s11,s11,a5
    80004350:	000dc683          	lbu	a3,0(s11)
    80004354:	00800793          	li	a5,8
    80004358:	00700c93          	li	s9,7
    8000435c:	f8d403a3          	sb	a3,-121(s0)
    80004360:	00075c63          	bgez	a4,80004378 <__printf+0x410>
    80004364:	f9040713          	addi	a4,s0,-112
    80004368:	00f70733          	add	a4,a4,a5
    8000436c:	02d00693          	li	a3,45
    80004370:	fed70823          	sb	a3,-16(a4)
    80004374:	00078c93          	mv	s9,a5
    80004378:	f8040793          	addi	a5,s0,-128
    8000437c:	01978cb3          	add	s9,a5,s9
    80004380:	f7f40d13          	addi	s10,s0,-129
    80004384:	000cc503          	lbu	a0,0(s9)
    80004388:	fffc8c93          	addi	s9,s9,-1
    8000438c:	00000097          	auipc	ra,0x0
    80004390:	9f8080e7          	jalr	-1544(ra) # 80003d84 <consputc>
    80004394:	ff9d18e3          	bne	s10,s9,80004384 <__printf+0x41c>
    80004398:	0100006f          	j	800043a8 <__printf+0x440>
    8000439c:	00000097          	auipc	ra,0x0
    800043a0:	9e8080e7          	jalr	-1560(ra) # 80003d84 <consputc>
    800043a4:	000c8493          	mv	s1,s9
    800043a8:	00094503          	lbu	a0,0(s2)
    800043ac:	c60510e3          	bnez	a0,8000400c <__printf+0xa4>
    800043b0:	e40c0ee3          	beqz	s8,8000420c <__printf+0x2a4>
    800043b4:	00004517          	auipc	a0,0x4
    800043b8:	35c50513          	addi	a0,a0,860 # 80008710 <pr>
    800043bc:	00001097          	auipc	ra,0x1
    800043c0:	94c080e7          	jalr	-1716(ra) # 80004d08 <release>
    800043c4:	e49ff06f          	j	8000420c <__printf+0x2a4>
    800043c8:	f7843783          	ld	a5,-136(s0)
    800043cc:	03000513          	li	a0,48
    800043d0:	01000d13          	li	s10,16
    800043d4:	00878713          	addi	a4,a5,8
    800043d8:	0007bc83          	ld	s9,0(a5)
    800043dc:	f6e43c23          	sd	a4,-136(s0)
    800043e0:	00000097          	auipc	ra,0x0
    800043e4:	9a4080e7          	jalr	-1628(ra) # 80003d84 <consputc>
    800043e8:	07800513          	li	a0,120
    800043ec:	00000097          	auipc	ra,0x0
    800043f0:	998080e7          	jalr	-1640(ra) # 80003d84 <consputc>
    800043f4:	00002d97          	auipc	s11,0x2
    800043f8:	e94d8d93          	addi	s11,s11,-364 # 80006288 <digits>
    800043fc:	03ccd793          	srli	a5,s9,0x3c
    80004400:	00fd87b3          	add	a5,s11,a5
    80004404:	0007c503          	lbu	a0,0(a5)
    80004408:	fffd0d1b          	addiw	s10,s10,-1
    8000440c:	004c9c93          	slli	s9,s9,0x4
    80004410:	00000097          	auipc	ra,0x0
    80004414:	974080e7          	jalr	-1676(ra) # 80003d84 <consputc>
    80004418:	fe0d12e3          	bnez	s10,800043fc <__printf+0x494>
    8000441c:	f8dff06f          	j	800043a8 <__printf+0x440>
    80004420:	f7843783          	ld	a5,-136(s0)
    80004424:	0007bc83          	ld	s9,0(a5)
    80004428:	00878793          	addi	a5,a5,8
    8000442c:	f6f43c23          	sd	a5,-136(s0)
    80004430:	000c9a63          	bnez	s9,80004444 <__printf+0x4dc>
    80004434:	1080006f          	j	8000453c <__printf+0x5d4>
    80004438:	001c8c93          	addi	s9,s9,1
    8000443c:	00000097          	auipc	ra,0x0
    80004440:	948080e7          	jalr	-1720(ra) # 80003d84 <consputc>
    80004444:	000cc503          	lbu	a0,0(s9)
    80004448:	fe0518e3          	bnez	a0,80004438 <__printf+0x4d0>
    8000444c:	f5dff06f          	j	800043a8 <__printf+0x440>
    80004450:	02500513          	li	a0,37
    80004454:	00000097          	auipc	ra,0x0
    80004458:	930080e7          	jalr	-1744(ra) # 80003d84 <consputc>
    8000445c:	000c8513          	mv	a0,s9
    80004460:	00000097          	auipc	ra,0x0
    80004464:	924080e7          	jalr	-1756(ra) # 80003d84 <consputc>
    80004468:	f41ff06f          	j	800043a8 <__printf+0x440>
    8000446c:	02500513          	li	a0,37
    80004470:	00000097          	auipc	ra,0x0
    80004474:	914080e7          	jalr	-1772(ra) # 80003d84 <consputc>
    80004478:	f31ff06f          	j	800043a8 <__printf+0x440>
    8000447c:	00030513          	mv	a0,t1
    80004480:	00000097          	auipc	ra,0x0
    80004484:	7bc080e7          	jalr	1980(ra) # 80004c3c <acquire>
    80004488:	b4dff06f          	j	80003fd4 <__printf+0x6c>
    8000448c:	40c0053b          	negw	a0,a2
    80004490:	00a00713          	li	a4,10
    80004494:	02e576bb          	remuw	a3,a0,a4
    80004498:	00002d97          	auipc	s11,0x2
    8000449c:	df0d8d93          	addi	s11,s11,-528 # 80006288 <digits>
    800044a0:	ff700593          	li	a1,-9
    800044a4:	02069693          	slli	a3,a3,0x20
    800044a8:	0206d693          	srli	a3,a3,0x20
    800044ac:	00dd86b3          	add	a3,s11,a3
    800044b0:	0006c683          	lbu	a3,0(a3)
    800044b4:	02e557bb          	divuw	a5,a0,a4
    800044b8:	f8d40023          	sb	a3,-128(s0)
    800044bc:	10b65e63          	bge	a2,a1,800045d8 <__printf+0x670>
    800044c0:	06300593          	li	a1,99
    800044c4:	02e7f6bb          	remuw	a3,a5,a4
    800044c8:	02069693          	slli	a3,a3,0x20
    800044cc:	0206d693          	srli	a3,a3,0x20
    800044d0:	00dd86b3          	add	a3,s11,a3
    800044d4:	0006c683          	lbu	a3,0(a3)
    800044d8:	02e7d73b          	divuw	a4,a5,a4
    800044dc:	00200793          	li	a5,2
    800044e0:	f8d400a3          	sb	a3,-127(s0)
    800044e4:	bca5ece3          	bltu	a1,a0,800040bc <__printf+0x154>
    800044e8:	ce5ff06f          	j	800041cc <__printf+0x264>
    800044ec:	40e007bb          	negw	a5,a4
    800044f0:	00002d97          	auipc	s11,0x2
    800044f4:	d98d8d93          	addi	s11,s11,-616 # 80006288 <digits>
    800044f8:	00f7f693          	andi	a3,a5,15
    800044fc:	00dd86b3          	add	a3,s11,a3
    80004500:	0006c583          	lbu	a1,0(a3)
    80004504:	ff100613          	li	a2,-15
    80004508:	0047d69b          	srliw	a3,a5,0x4
    8000450c:	f8b40023          	sb	a1,-128(s0)
    80004510:	0047d59b          	srliw	a1,a5,0x4
    80004514:	0ac75e63          	bge	a4,a2,800045d0 <__printf+0x668>
    80004518:	00f6f693          	andi	a3,a3,15
    8000451c:	00dd86b3          	add	a3,s11,a3
    80004520:	0006c603          	lbu	a2,0(a3)
    80004524:	00f00693          	li	a3,15
    80004528:	0087d79b          	srliw	a5,a5,0x8
    8000452c:	f8c400a3          	sb	a2,-127(s0)
    80004530:	d8b6e4e3          	bltu	a3,a1,800042b8 <__printf+0x350>
    80004534:	00200793          	li	a5,2
    80004538:	e2dff06f          	j	80004364 <__printf+0x3fc>
    8000453c:	00002c97          	auipc	s9,0x2
    80004540:	d2cc8c93          	addi	s9,s9,-724 # 80006268 <CONSOLE_STATUS+0x258>
    80004544:	02800513          	li	a0,40
    80004548:	ef1ff06f          	j	80004438 <__printf+0x4d0>
    8000454c:	00700793          	li	a5,7
    80004550:	00600c93          	li	s9,6
    80004554:	e0dff06f          	j	80004360 <__printf+0x3f8>
    80004558:	00700793          	li	a5,7
    8000455c:	00600c93          	li	s9,6
    80004560:	c69ff06f          	j	800041c8 <__printf+0x260>
    80004564:	00300793          	li	a5,3
    80004568:	00200c93          	li	s9,2
    8000456c:	c5dff06f          	j	800041c8 <__printf+0x260>
    80004570:	00300793          	li	a5,3
    80004574:	00200c93          	li	s9,2
    80004578:	de9ff06f          	j	80004360 <__printf+0x3f8>
    8000457c:	00400793          	li	a5,4
    80004580:	00300c93          	li	s9,3
    80004584:	dddff06f          	j	80004360 <__printf+0x3f8>
    80004588:	00400793          	li	a5,4
    8000458c:	00300c93          	li	s9,3
    80004590:	c39ff06f          	j	800041c8 <__printf+0x260>
    80004594:	00500793          	li	a5,5
    80004598:	00400c93          	li	s9,4
    8000459c:	c2dff06f          	j	800041c8 <__printf+0x260>
    800045a0:	00500793          	li	a5,5
    800045a4:	00400c93          	li	s9,4
    800045a8:	db9ff06f          	j	80004360 <__printf+0x3f8>
    800045ac:	00600793          	li	a5,6
    800045b0:	00500c93          	li	s9,5
    800045b4:	dadff06f          	j	80004360 <__printf+0x3f8>
    800045b8:	00600793          	li	a5,6
    800045bc:	00500c93          	li	s9,5
    800045c0:	c09ff06f          	j	800041c8 <__printf+0x260>
    800045c4:	00800793          	li	a5,8
    800045c8:	00700c93          	li	s9,7
    800045cc:	bfdff06f          	j	800041c8 <__printf+0x260>
    800045d0:	00100793          	li	a5,1
    800045d4:	d91ff06f          	j	80004364 <__printf+0x3fc>
    800045d8:	00100793          	li	a5,1
    800045dc:	bf1ff06f          	j	800041cc <__printf+0x264>
    800045e0:	00900793          	li	a5,9
    800045e4:	00800c93          	li	s9,8
    800045e8:	be1ff06f          	j	800041c8 <__printf+0x260>
    800045ec:	00002517          	auipc	a0,0x2
    800045f0:	c8450513          	addi	a0,a0,-892 # 80006270 <CONSOLE_STATUS+0x260>
    800045f4:	00000097          	auipc	ra,0x0
    800045f8:	918080e7          	jalr	-1768(ra) # 80003f0c <panic>

00000000800045fc <printfinit>:
    800045fc:	fe010113          	addi	sp,sp,-32
    80004600:	00813823          	sd	s0,16(sp)
    80004604:	00913423          	sd	s1,8(sp)
    80004608:	00113c23          	sd	ra,24(sp)
    8000460c:	02010413          	addi	s0,sp,32
    80004610:	00004497          	auipc	s1,0x4
    80004614:	10048493          	addi	s1,s1,256 # 80008710 <pr>
    80004618:	00048513          	mv	a0,s1
    8000461c:	00002597          	auipc	a1,0x2
    80004620:	c6458593          	addi	a1,a1,-924 # 80006280 <CONSOLE_STATUS+0x270>
    80004624:	00000097          	auipc	ra,0x0
    80004628:	5f4080e7          	jalr	1524(ra) # 80004c18 <initlock>
    8000462c:	01813083          	ld	ra,24(sp)
    80004630:	01013403          	ld	s0,16(sp)
    80004634:	0004ac23          	sw	zero,24(s1)
    80004638:	00813483          	ld	s1,8(sp)
    8000463c:	02010113          	addi	sp,sp,32
    80004640:	00008067          	ret

0000000080004644 <uartinit>:
    80004644:	ff010113          	addi	sp,sp,-16
    80004648:	00813423          	sd	s0,8(sp)
    8000464c:	01010413          	addi	s0,sp,16
    80004650:	100007b7          	lui	a5,0x10000
    80004654:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004658:	f8000713          	li	a4,-128
    8000465c:	00e781a3          	sb	a4,3(a5)
    80004660:	00300713          	li	a4,3
    80004664:	00e78023          	sb	a4,0(a5)
    80004668:	000780a3          	sb	zero,1(a5)
    8000466c:	00e781a3          	sb	a4,3(a5)
    80004670:	00700693          	li	a3,7
    80004674:	00d78123          	sb	a3,2(a5)
    80004678:	00e780a3          	sb	a4,1(a5)
    8000467c:	00813403          	ld	s0,8(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret

0000000080004688 <uartputc>:
    80004688:	00003797          	auipc	a5,0x3
    8000468c:	df07a783          	lw	a5,-528(a5) # 80007478 <panicked>
    80004690:	00078463          	beqz	a5,80004698 <uartputc+0x10>
    80004694:	0000006f          	j	80004694 <uartputc+0xc>
    80004698:	fd010113          	addi	sp,sp,-48
    8000469c:	02813023          	sd	s0,32(sp)
    800046a0:	00913c23          	sd	s1,24(sp)
    800046a4:	01213823          	sd	s2,16(sp)
    800046a8:	01313423          	sd	s3,8(sp)
    800046ac:	02113423          	sd	ra,40(sp)
    800046b0:	03010413          	addi	s0,sp,48
    800046b4:	00003917          	auipc	s2,0x3
    800046b8:	dcc90913          	addi	s2,s2,-564 # 80007480 <uart_tx_r>
    800046bc:	00093783          	ld	a5,0(s2)
    800046c0:	00003497          	auipc	s1,0x3
    800046c4:	dc848493          	addi	s1,s1,-568 # 80007488 <uart_tx_w>
    800046c8:	0004b703          	ld	a4,0(s1)
    800046cc:	02078693          	addi	a3,a5,32
    800046d0:	00050993          	mv	s3,a0
    800046d4:	02e69c63          	bne	a3,a4,8000470c <uartputc+0x84>
    800046d8:	00001097          	auipc	ra,0x1
    800046dc:	834080e7          	jalr	-1996(ra) # 80004f0c <push_on>
    800046e0:	00093783          	ld	a5,0(s2)
    800046e4:	0004b703          	ld	a4,0(s1)
    800046e8:	02078793          	addi	a5,a5,32
    800046ec:	00e79463          	bne	a5,a4,800046f4 <uartputc+0x6c>
    800046f0:	0000006f          	j	800046f0 <uartputc+0x68>
    800046f4:	00001097          	auipc	ra,0x1
    800046f8:	88c080e7          	jalr	-1908(ra) # 80004f80 <pop_on>
    800046fc:	00093783          	ld	a5,0(s2)
    80004700:	0004b703          	ld	a4,0(s1)
    80004704:	02078693          	addi	a3,a5,32
    80004708:	fce688e3          	beq	a3,a4,800046d8 <uartputc+0x50>
    8000470c:	01f77693          	andi	a3,a4,31
    80004710:	00004597          	auipc	a1,0x4
    80004714:	02058593          	addi	a1,a1,32 # 80008730 <uart_tx_buf>
    80004718:	00d586b3          	add	a3,a1,a3
    8000471c:	00170713          	addi	a4,a4,1
    80004720:	01368023          	sb	s3,0(a3)
    80004724:	00e4b023          	sd	a4,0(s1)
    80004728:	10000637          	lui	a2,0x10000
    8000472c:	02f71063          	bne	a4,a5,8000474c <uartputc+0xc4>
    80004730:	0340006f          	j	80004764 <uartputc+0xdc>
    80004734:	00074703          	lbu	a4,0(a4)
    80004738:	00f93023          	sd	a5,0(s2)
    8000473c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004740:	00093783          	ld	a5,0(s2)
    80004744:	0004b703          	ld	a4,0(s1)
    80004748:	00f70e63          	beq	a4,a5,80004764 <uartputc+0xdc>
    8000474c:	00564683          	lbu	a3,5(a2)
    80004750:	01f7f713          	andi	a4,a5,31
    80004754:	00e58733          	add	a4,a1,a4
    80004758:	0206f693          	andi	a3,a3,32
    8000475c:	00178793          	addi	a5,a5,1
    80004760:	fc069ae3          	bnez	a3,80004734 <uartputc+0xac>
    80004764:	02813083          	ld	ra,40(sp)
    80004768:	02013403          	ld	s0,32(sp)
    8000476c:	01813483          	ld	s1,24(sp)
    80004770:	01013903          	ld	s2,16(sp)
    80004774:	00813983          	ld	s3,8(sp)
    80004778:	03010113          	addi	sp,sp,48
    8000477c:	00008067          	ret

0000000080004780 <uartputc_sync>:
    80004780:	ff010113          	addi	sp,sp,-16
    80004784:	00813423          	sd	s0,8(sp)
    80004788:	01010413          	addi	s0,sp,16
    8000478c:	00003717          	auipc	a4,0x3
    80004790:	cec72703          	lw	a4,-788(a4) # 80007478 <panicked>
    80004794:	02071663          	bnez	a4,800047c0 <uartputc_sync+0x40>
    80004798:	00050793          	mv	a5,a0
    8000479c:	100006b7          	lui	a3,0x10000
    800047a0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800047a4:	02077713          	andi	a4,a4,32
    800047a8:	fe070ce3          	beqz	a4,800047a0 <uartputc_sync+0x20>
    800047ac:	0ff7f793          	andi	a5,a5,255
    800047b0:	00f68023          	sb	a5,0(a3)
    800047b4:	00813403          	ld	s0,8(sp)
    800047b8:	01010113          	addi	sp,sp,16
    800047bc:	00008067          	ret
    800047c0:	0000006f          	j	800047c0 <uartputc_sync+0x40>

00000000800047c4 <uartstart>:
    800047c4:	ff010113          	addi	sp,sp,-16
    800047c8:	00813423          	sd	s0,8(sp)
    800047cc:	01010413          	addi	s0,sp,16
    800047d0:	00003617          	auipc	a2,0x3
    800047d4:	cb060613          	addi	a2,a2,-848 # 80007480 <uart_tx_r>
    800047d8:	00003517          	auipc	a0,0x3
    800047dc:	cb050513          	addi	a0,a0,-848 # 80007488 <uart_tx_w>
    800047e0:	00063783          	ld	a5,0(a2)
    800047e4:	00053703          	ld	a4,0(a0)
    800047e8:	04f70263          	beq	a4,a5,8000482c <uartstart+0x68>
    800047ec:	100005b7          	lui	a1,0x10000
    800047f0:	00004817          	auipc	a6,0x4
    800047f4:	f4080813          	addi	a6,a6,-192 # 80008730 <uart_tx_buf>
    800047f8:	01c0006f          	j	80004814 <uartstart+0x50>
    800047fc:	0006c703          	lbu	a4,0(a3)
    80004800:	00f63023          	sd	a5,0(a2)
    80004804:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004808:	00063783          	ld	a5,0(a2)
    8000480c:	00053703          	ld	a4,0(a0)
    80004810:	00f70e63          	beq	a4,a5,8000482c <uartstart+0x68>
    80004814:	01f7f713          	andi	a4,a5,31
    80004818:	00e806b3          	add	a3,a6,a4
    8000481c:	0055c703          	lbu	a4,5(a1)
    80004820:	00178793          	addi	a5,a5,1
    80004824:	02077713          	andi	a4,a4,32
    80004828:	fc071ae3          	bnez	a4,800047fc <uartstart+0x38>
    8000482c:	00813403          	ld	s0,8(sp)
    80004830:	01010113          	addi	sp,sp,16
    80004834:	00008067          	ret

0000000080004838 <uartgetc>:
    80004838:	ff010113          	addi	sp,sp,-16
    8000483c:	00813423          	sd	s0,8(sp)
    80004840:	01010413          	addi	s0,sp,16
    80004844:	10000737          	lui	a4,0x10000
    80004848:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000484c:	0017f793          	andi	a5,a5,1
    80004850:	00078c63          	beqz	a5,80004868 <uartgetc+0x30>
    80004854:	00074503          	lbu	a0,0(a4)
    80004858:	0ff57513          	andi	a0,a0,255
    8000485c:	00813403          	ld	s0,8(sp)
    80004860:	01010113          	addi	sp,sp,16
    80004864:	00008067          	ret
    80004868:	fff00513          	li	a0,-1
    8000486c:	ff1ff06f          	j	8000485c <uartgetc+0x24>

0000000080004870 <uartintr>:
    80004870:	100007b7          	lui	a5,0x10000
    80004874:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004878:	0017f793          	andi	a5,a5,1
    8000487c:	0a078463          	beqz	a5,80004924 <uartintr+0xb4>
    80004880:	fe010113          	addi	sp,sp,-32
    80004884:	00813823          	sd	s0,16(sp)
    80004888:	00913423          	sd	s1,8(sp)
    8000488c:	00113c23          	sd	ra,24(sp)
    80004890:	02010413          	addi	s0,sp,32
    80004894:	100004b7          	lui	s1,0x10000
    80004898:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000489c:	0ff57513          	andi	a0,a0,255
    800048a0:	fffff097          	auipc	ra,0xfffff
    800048a4:	534080e7          	jalr	1332(ra) # 80003dd4 <consoleintr>
    800048a8:	0054c783          	lbu	a5,5(s1)
    800048ac:	0017f793          	andi	a5,a5,1
    800048b0:	fe0794e3          	bnez	a5,80004898 <uartintr+0x28>
    800048b4:	00003617          	auipc	a2,0x3
    800048b8:	bcc60613          	addi	a2,a2,-1076 # 80007480 <uart_tx_r>
    800048bc:	00003517          	auipc	a0,0x3
    800048c0:	bcc50513          	addi	a0,a0,-1076 # 80007488 <uart_tx_w>
    800048c4:	00063783          	ld	a5,0(a2)
    800048c8:	00053703          	ld	a4,0(a0)
    800048cc:	04f70263          	beq	a4,a5,80004910 <uartintr+0xa0>
    800048d0:	100005b7          	lui	a1,0x10000
    800048d4:	00004817          	auipc	a6,0x4
    800048d8:	e5c80813          	addi	a6,a6,-420 # 80008730 <uart_tx_buf>
    800048dc:	01c0006f          	j	800048f8 <uartintr+0x88>
    800048e0:	0006c703          	lbu	a4,0(a3)
    800048e4:	00f63023          	sd	a5,0(a2)
    800048e8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800048ec:	00063783          	ld	a5,0(a2)
    800048f0:	00053703          	ld	a4,0(a0)
    800048f4:	00f70e63          	beq	a4,a5,80004910 <uartintr+0xa0>
    800048f8:	01f7f713          	andi	a4,a5,31
    800048fc:	00e806b3          	add	a3,a6,a4
    80004900:	0055c703          	lbu	a4,5(a1)
    80004904:	00178793          	addi	a5,a5,1
    80004908:	02077713          	andi	a4,a4,32
    8000490c:	fc071ae3          	bnez	a4,800048e0 <uartintr+0x70>
    80004910:	01813083          	ld	ra,24(sp)
    80004914:	01013403          	ld	s0,16(sp)
    80004918:	00813483          	ld	s1,8(sp)
    8000491c:	02010113          	addi	sp,sp,32
    80004920:	00008067          	ret
    80004924:	00003617          	auipc	a2,0x3
    80004928:	b5c60613          	addi	a2,a2,-1188 # 80007480 <uart_tx_r>
    8000492c:	00003517          	auipc	a0,0x3
    80004930:	b5c50513          	addi	a0,a0,-1188 # 80007488 <uart_tx_w>
    80004934:	00063783          	ld	a5,0(a2)
    80004938:	00053703          	ld	a4,0(a0)
    8000493c:	04f70263          	beq	a4,a5,80004980 <uartintr+0x110>
    80004940:	100005b7          	lui	a1,0x10000
    80004944:	00004817          	auipc	a6,0x4
    80004948:	dec80813          	addi	a6,a6,-532 # 80008730 <uart_tx_buf>
    8000494c:	01c0006f          	j	80004968 <uartintr+0xf8>
    80004950:	0006c703          	lbu	a4,0(a3)
    80004954:	00f63023          	sd	a5,0(a2)
    80004958:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000495c:	00063783          	ld	a5,0(a2)
    80004960:	00053703          	ld	a4,0(a0)
    80004964:	02f70063          	beq	a4,a5,80004984 <uartintr+0x114>
    80004968:	01f7f713          	andi	a4,a5,31
    8000496c:	00e806b3          	add	a3,a6,a4
    80004970:	0055c703          	lbu	a4,5(a1)
    80004974:	00178793          	addi	a5,a5,1
    80004978:	02077713          	andi	a4,a4,32
    8000497c:	fc071ae3          	bnez	a4,80004950 <uartintr+0xe0>
    80004980:	00008067          	ret
    80004984:	00008067          	ret

0000000080004988 <kinit>:
    80004988:	fc010113          	addi	sp,sp,-64
    8000498c:	02913423          	sd	s1,40(sp)
    80004990:	fffff7b7          	lui	a5,0xfffff
    80004994:	00005497          	auipc	s1,0x5
    80004998:	dcb48493          	addi	s1,s1,-565 # 8000975f <end+0xfff>
    8000499c:	02813823          	sd	s0,48(sp)
    800049a0:	01313c23          	sd	s3,24(sp)
    800049a4:	00f4f4b3          	and	s1,s1,a5
    800049a8:	02113c23          	sd	ra,56(sp)
    800049ac:	03213023          	sd	s2,32(sp)
    800049b0:	01413823          	sd	s4,16(sp)
    800049b4:	01513423          	sd	s5,8(sp)
    800049b8:	04010413          	addi	s0,sp,64
    800049bc:	000017b7          	lui	a5,0x1
    800049c0:	01100993          	li	s3,17
    800049c4:	00f487b3          	add	a5,s1,a5
    800049c8:	01b99993          	slli	s3,s3,0x1b
    800049cc:	06f9e063          	bltu	s3,a5,80004a2c <kinit+0xa4>
    800049d0:	00004a97          	auipc	s5,0x4
    800049d4:	d90a8a93          	addi	s5,s5,-624 # 80008760 <end>
    800049d8:	0754ec63          	bltu	s1,s5,80004a50 <kinit+0xc8>
    800049dc:	0734fa63          	bgeu	s1,s3,80004a50 <kinit+0xc8>
    800049e0:	00088a37          	lui	s4,0x88
    800049e4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800049e8:	00003917          	auipc	s2,0x3
    800049ec:	aa890913          	addi	s2,s2,-1368 # 80007490 <kmem>
    800049f0:	00ca1a13          	slli	s4,s4,0xc
    800049f4:	0140006f          	j	80004a08 <kinit+0x80>
    800049f8:	000017b7          	lui	a5,0x1
    800049fc:	00f484b3          	add	s1,s1,a5
    80004a00:	0554e863          	bltu	s1,s5,80004a50 <kinit+0xc8>
    80004a04:	0534f663          	bgeu	s1,s3,80004a50 <kinit+0xc8>
    80004a08:	00001637          	lui	a2,0x1
    80004a0c:	00100593          	li	a1,1
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00000097          	auipc	ra,0x0
    80004a18:	5e4080e7          	jalr	1508(ra) # 80004ff8 <__memset>
    80004a1c:	00093783          	ld	a5,0(s2)
    80004a20:	00f4b023          	sd	a5,0(s1)
    80004a24:	00993023          	sd	s1,0(s2)
    80004a28:	fd4498e3          	bne	s1,s4,800049f8 <kinit+0x70>
    80004a2c:	03813083          	ld	ra,56(sp)
    80004a30:	03013403          	ld	s0,48(sp)
    80004a34:	02813483          	ld	s1,40(sp)
    80004a38:	02013903          	ld	s2,32(sp)
    80004a3c:	01813983          	ld	s3,24(sp)
    80004a40:	01013a03          	ld	s4,16(sp)
    80004a44:	00813a83          	ld	s5,8(sp)
    80004a48:	04010113          	addi	sp,sp,64
    80004a4c:	00008067          	ret
    80004a50:	00002517          	auipc	a0,0x2
    80004a54:	85050513          	addi	a0,a0,-1968 # 800062a0 <digits+0x18>
    80004a58:	fffff097          	auipc	ra,0xfffff
    80004a5c:	4b4080e7          	jalr	1204(ra) # 80003f0c <panic>

0000000080004a60 <freerange>:
    80004a60:	fc010113          	addi	sp,sp,-64
    80004a64:	000017b7          	lui	a5,0x1
    80004a68:	02913423          	sd	s1,40(sp)
    80004a6c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004a70:	009504b3          	add	s1,a0,s1
    80004a74:	fffff537          	lui	a0,0xfffff
    80004a78:	02813823          	sd	s0,48(sp)
    80004a7c:	02113c23          	sd	ra,56(sp)
    80004a80:	03213023          	sd	s2,32(sp)
    80004a84:	01313c23          	sd	s3,24(sp)
    80004a88:	01413823          	sd	s4,16(sp)
    80004a8c:	01513423          	sd	s5,8(sp)
    80004a90:	01613023          	sd	s6,0(sp)
    80004a94:	04010413          	addi	s0,sp,64
    80004a98:	00a4f4b3          	and	s1,s1,a0
    80004a9c:	00f487b3          	add	a5,s1,a5
    80004aa0:	06f5e463          	bltu	a1,a5,80004b08 <freerange+0xa8>
    80004aa4:	00004a97          	auipc	s5,0x4
    80004aa8:	cbca8a93          	addi	s5,s5,-836 # 80008760 <end>
    80004aac:	0954e263          	bltu	s1,s5,80004b30 <freerange+0xd0>
    80004ab0:	01100993          	li	s3,17
    80004ab4:	01b99993          	slli	s3,s3,0x1b
    80004ab8:	0734fc63          	bgeu	s1,s3,80004b30 <freerange+0xd0>
    80004abc:	00058a13          	mv	s4,a1
    80004ac0:	00003917          	auipc	s2,0x3
    80004ac4:	9d090913          	addi	s2,s2,-1584 # 80007490 <kmem>
    80004ac8:	00002b37          	lui	s6,0x2
    80004acc:	0140006f          	j	80004ae0 <freerange+0x80>
    80004ad0:	000017b7          	lui	a5,0x1
    80004ad4:	00f484b3          	add	s1,s1,a5
    80004ad8:	0554ec63          	bltu	s1,s5,80004b30 <freerange+0xd0>
    80004adc:	0534fa63          	bgeu	s1,s3,80004b30 <freerange+0xd0>
    80004ae0:	00001637          	lui	a2,0x1
    80004ae4:	00100593          	li	a1,1
    80004ae8:	00048513          	mv	a0,s1
    80004aec:	00000097          	auipc	ra,0x0
    80004af0:	50c080e7          	jalr	1292(ra) # 80004ff8 <__memset>
    80004af4:	00093703          	ld	a4,0(s2)
    80004af8:	016487b3          	add	a5,s1,s6
    80004afc:	00e4b023          	sd	a4,0(s1)
    80004b00:	00993023          	sd	s1,0(s2)
    80004b04:	fcfa76e3          	bgeu	s4,a5,80004ad0 <freerange+0x70>
    80004b08:	03813083          	ld	ra,56(sp)
    80004b0c:	03013403          	ld	s0,48(sp)
    80004b10:	02813483          	ld	s1,40(sp)
    80004b14:	02013903          	ld	s2,32(sp)
    80004b18:	01813983          	ld	s3,24(sp)
    80004b1c:	01013a03          	ld	s4,16(sp)
    80004b20:	00813a83          	ld	s5,8(sp)
    80004b24:	00013b03          	ld	s6,0(sp)
    80004b28:	04010113          	addi	sp,sp,64
    80004b2c:	00008067          	ret
    80004b30:	00001517          	auipc	a0,0x1
    80004b34:	77050513          	addi	a0,a0,1904 # 800062a0 <digits+0x18>
    80004b38:	fffff097          	auipc	ra,0xfffff
    80004b3c:	3d4080e7          	jalr	980(ra) # 80003f0c <panic>

0000000080004b40 <kfree>:
    80004b40:	fe010113          	addi	sp,sp,-32
    80004b44:	00813823          	sd	s0,16(sp)
    80004b48:	00113c23          	sd	ra,24(sp)
    80004b4c:	00913423          	sd	s1,8(sp)
    80004b50:	02010413          	addi	s0,sp,32
    80004b54:	03451793          	slli	a5,a0,0x34
    80004b58:	04079c63          	bnez	a5,80004bb0 <kfree+0x70>
    80004b5c:	00004797          	auipc	a5,0x4
    80004b60:	c0478793          	addi	a5,a5,-1020 # 80008760 <end>
    80004b64:	00050493          	mv	s1,a0
    80004b68:	04f56463          	bltu	a0,a5,80004bb0 <kfree+0x70>
    80004b6c:	01100793          	li	a5,17
    80004b70:	01b79793          	slli	a5,a5,0x1b
    80004b74:	02f57e63          	bgeu	a0,a5,80004bb0 <kfree+0x70>
    80004b78:	00001637          	lui	a2,0x1
    80004b7c:	00100593          	li	a1,1
    80004b80:	00000097          	auipc	ra,0x0
    80004b84:	478080e7          	jalr	1144(ra) # 80004ff8 <__memset>
    80004b88:	00003797          	auipc	a5,0x3
    80004b8c:	90878793          	addi	a5,a5,-1784 # 80007490 <kmem>
    80004b90:	0007b703          	ld	a4,0(a5)
    80004b94:	01813083          	ld	ra,24(sp)
    80004b98:	01013403          	ld	s0,16(sp)
    80004b9c:	00e4b023          	sd	a4,0(s1)
    80004ba0:	0097b023          	sd	s1,0(a5)
    80004ba4:	00813483          	ld	s1,8(sp)
    80004ba8:	02010113          	addi	sp,sp,32
    80004bac:	00008067          	ret
    80004bb0:	00001517          	auipc	a0,0x1
    80004bb4:	6f050513          	addi	a0,a0,1776 # 800062a0 <digits+0x18>
    80004bb8:	fffff097          	auipc	ra,0xfffff
    80004bbc:	354080e7          	jalr	852(ra) # 80003f0c <panic>

0000000080004bc0 <kalloc>:
    80004bc0:	fe010113          	addi	sp,sp,-32
    80004bc4:	00813823          	sd	s0,16(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	00113c23          	sd	ra,24(sp)
    80004bd0:	02010413          	addi	s0,sp,32
    80004bd4:	00003797          	auipc	a5,0x3
    80004bd8:	8bc78793          	addi	a5,a5,-1860 # 80007490 <kmem>
    80004bdc:	0007b483          	ld	s1,0(a5)
    80004be0:	02048063          	beqz	s1,80004c00 <kalloc+0x40>
    80004be4:	0004b703          	ld	a4,0(s1)
    80004be8:	00001637          	lui	a2,0x1
    80004bec:	00500593          	li	a1,5
    80004bf0:	00048513          	mv	a0,s1
    80004bf4:	00e7b023          	sd	a4,0(a5)
    80004bf8:	00000097          	auipc	ra,0x0
    80004bfc:	400080e7          	jalr	1024(ra) # 80004ff8 <__memset>
    80004c00:	01813083          	ld	ra,24(sp)
    80004c04:	01013403          	ld	s0,16(sp)
    80004c08:	00048513          	mv	a0,s1
    80004c0c:	00813483          	ld	s1,8(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret

0000000080004c18 <initlock>:
    80004c18:	ff010113          	addi	sp,sp,-16
    80004c1c:	00813423          	sd	s0,8(sp)
    80004c20:	01010413          	addi	s0,sp,16
    80004c24:	00813403          	ld	s0,8(sp)
    80004c28:	00b53423          	sd	a1,8(a0)
    80004c2c:	00052023          	sw	zero,0(a0)
    80004c30:	00053823          	sd	zero,16(a0)
    80004c34:	01010113          	addi	sp,sp,16
    80004c38:	00008067          	ret

0000000080004c3c <acquire>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00913423          	sd	s1,8(sp)
    80004c48:	00113c23          	sd	ra,24(sp)
    80004c4c:	01213023          	sd	s2,0(sp)
    80004c50:	02010413          	addi	s0,sp,32
    80004c54:	00050493          	mv	s1,a0
    80004c58:	10002973          	csrr	s2,sstatus
    80004c5c:	100027f3          	csrr	a5,sstatus
    80004c60:	ffd7f793          	andi	a5,a5,-3
    80004c64:	10079073          	csrw	sstatus,a5
    80004c68:	fffff097          	auipc	ra,0xfffff
    80004c6c:	8e0080e7          	jalr	-1824(ra) # 80003548 <mycpu>
    80004c70:	07852783          	lw	a5,120(a0)
    80004c74:	06078e63          	beqz	a5,80004cf0 <acquire+0xb4>
    80004c78:	fffff097          	auipc	ra,0xfffff
    80004c7c:	8d0080e7          	jalr	-1840(ra) # 80003548 <mycpu>
    80004c80:	07852783          	lw	a5,120(a0)
    80004c84:	0004a703          	lw	a4,0(s1)
    80004c88:	0017879b          	addiw	a5,a5,1
    80004c8c:	06f52c23          	sw	a5,120(a0)
    80004c90:	04071063          	bnez	a4,80004cd0 <acquire+0x94>
    80004c94:	00100713          	li	a4,1
    80004c98:	00070793          	mv	a5,a4
    80004c9c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004ca0:	0007879b          	sext.w	a5,a5
    80004ca4:	fe079ae3          	bnez	a5,80004c98 <acquire+0x5c>
    80004ca8:	0ff0000f          	fence
    80004cac:	fffff097          	auipc	ra,0xfffff
    80004cb0:	89c080e7          	jalr	-1892(ra) # 80003548 <mycpu>
    80004cb4:	01813083          	ld	ra,24(sp)
    80004cb8:	01013403          	ld	s0,16(sp)
    80004cbc:	00a4b823          	sd	a0,16(s1)
    80004cc0:	00013903          	ld	s2,0(sp)
    80004cc4:	00813483          	ld	s1,8(sp)
    80004cc8:	02010113          	addi	sp,sp,32
    80004ccc:	00008067          	ret
    80004cd0:	0104b903          	ld	s2,16(s1)
    80004cd4:	fffff097          	auipc	ra,0xfffff
    80004cd8:	874080e7          	jalr	-1932(ra) # 80003548 <mycpu>
    80004cdc:	faa91ce3          	bne	s2,a0,80004c94 <acquire+0x58>
    80004ce0:	00001517          	auipc	a0,0x1
    80004ce4:	5c850513          	addi	a0,a0,1480 # 800062a8 <digits+0x20>
    80004ce8:	fffff097          	auipc	ra,0xfffff
    80004cec:	224080e7          	jalr	548(ra) # 80003f0c <panic>
    80004cf0:	00195913          	srli	s2,s2,0x1
    80004cf4:	fffff097          	auipc	ra,0xfffff
    80004cf8:	854080e7          	jalr	-1964(ra) # 80003548 <mycpu>
    80004cfc:	00197913          	andi	s2,s2,1
    80004d00:	07252e23          	sw	s2,124(a0)
    80004d04:	f75ff06f          	j	80004c78 <acquire+0x3c>

0000000080004d08 <release>:
    80004d08:	fe010113          	addi	sp,sp,-32
    80004d0c:	00813823          	sd	s0,16(sp)
    80004d10:	00113c23          	sd	ra,24(sp)
    80004d14:	00913423          	sd	s1,8(sp)
    80004d18:	01213023          	sd	s2,0(sp)
    80004d1c:	02010413          	addi	s0,sp,32
    80004d20:	00052783          	lw	a5,0(a0)
    80004d24:	00079a63          	bnez	a5,80004d38 <release+0x30>
    80004d28:	00001517          	auipc	a0,0x1
    80004d2c:	58850513          	addi	a0,a0,1416 # 800062b0 <digits+0x28>
    80004d30:	fffff097          	auipc	ra,0xfffff
    80004d34:	1dc080e7          	jalr	476(ra) # 80003f0c <panic>
    80004d38:	01053903          	ld	s2,16(a0)
    80004d3c:	00050493          	mv	s1,a0
    80004d40:	fffff097          	auipc	ra,0xfffff
    80004d44:	808080e7          	jalr	-2040(ra) # 80003548 <mycpu>
    80004d48:	fea910e3          	bne	s2,a0,80004d28 <release+0x20>
    80004d4c:	0004b823          	sd	zero,16(s1)
    80004d50:	0ff0000f          	fence
    80004d54:	0f50000f          	fence	iorw,ow
    80004d58:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004d5c:	ffffe097          	auipc	ra,0xffffe
    80004d60:	7ec080e7          	jalr	2028(ra) # 80003548 <mycpu>
    80004d64:	100027f3          	csrr	a5,sstatus
    80004d68:	0027f793          	andi	a5,a5,2
    80004d6c:	04079a63          	bnez	a5,80004dc0 <release+0xb8>
    80004d70:	07852783          	lw	a5,120(a0)
    80004d74:	02f05e63          	blez	a5,80004db0 <release+0xa8>
    80004d78:	fff7871b          	addiw	a4,a5,-1
    80004d7c:	06e52c23          	sw	a4,120(a0)
    80004d80:	00071c63          	bnez	a4,80004d98 <release+0x90>
    80004d84:	07c52783          	lw	a5,124(a0)
    80004d88:	00078863          	beqz	a5,80004d98 <release+0x90>
    80004d8c:	100027f3          	csrr	a5,sstatus
    80004d90:	0027e793          	ori	a5,a5,2
    80004d94:	10079073          	csrw	sstatus,a5
    80004d98:	01813083          	ld	ra,24(sp)
    80004d9c:	01013403          	ld	s0,16(sp)
    80004da0:	00813483          	ld	s1,8(sp)
    80004da4:	00013903          	ld	s2,0(sp)
    80004da8:	02010113          	addi	sp,sp,32
    80004dac:	00008067          	ret
    80004db0:	00001517          	auipc	a0,0x1
    80004db4:	52050513          	addi	a0,a0,1312 # 800062d0 <digits+0x48>
    80004db8:	fffff097          	auipc	ra,0xfffff
    80004dbc:	154080e7          	jalr	340(ra) # 80003f0c <panic>
    80004dc0:	00001517          	auipc	a0,0x1
    80004dc4:	4f850513          	addi	a0,a0,1272 # 800062b8 <digits+0x30>
    80004dc8:	fffff097          	auipc	ra,0xfffff
    80004dcc:	144080e7          	jalr	324(ra) # 80003f0c <panic>

0000000080004dd0 <holding>:
    80004dd0:	00052783          	lw	a5,0(a0)
    80004dd4:	00079663          	bnez	a5,80004de0 <holding+0x10>
    80004dd8:	00000513          	li	a0,0
    80004ddc:	00008067          	ret
    80004de0:	fe010113          	addi	sp,sp,-32
    80004de4:	00813823          	sd	s0,16(sp)
    80004de8:	00913423          	sd	s1,8(sp)
    80004dec:	00113c23          	sd	ra,24(sp)
    80004df0:	02010413          	addi	s0,sp,32
    80004df4:	01053483          	ld	s1,16(a0)
    80004df8:	ffffe097          	auipc	ra,0xffffe
    80004dfc:	750080e7          	jalr	1872(ra) # 80003548 <mycpu>
    80004e00:	01813083          	ld	ra,24(sp)
    80004e04:	01013403          	ld	s0,16(sp)
    80004e08:	40a48533          	sub	a0,s1,a0
    80004e0c:	00153513          	seqz	a0,a0
    80004e10:	00813483          	ld	s1,8(sp)
    80004e14:	02010113          	addi	sp,sp,32
    80004e18:	00008067          	ret

0000000080004e1c <push_off>:
    80004e1c:	fe010113          	addi	sp,sp,-32
    80004e20:	00813823          	sd	s0,16(sp)
    80004e24:	00113c23          	sd	ra,24(sp)
    80004e28:	00913423          	sd	s1,8(sp)
    80004e2c:	02010413          	addi	s0,sp,32
    80004e30:	100024f3          	csrr	s1,sstatus
    80004e34:	100027f3          	csrr	a5,sstatus
    80004e38:	ffd7f793          	andi	a5,a5,-3
    80004e3c:	10079073          	csrw	sstatus,a5
    80004e40:	ffffe097          	auipc	ra,0xffffe
    80004e44:	708080e7          	jalr	1800(ra) # 80003548 <mycpu>
    80004e48:	07852783          	lw	a5,120(a0)
    80004e4c:	02078663          	beqz	a5,80004e78 <push_off+0x5c>
    80004e50:	ffffe097          	auipc	ra,0xffffe
    80004e54:	6f8080e7          	jalr	1784(ra) # 80003548 <mycpu>
    80004e58:	07852783          	lw	a5,120(a0)
    80004e5c:	01813083          	ld	ra,24(sp)
    80004e60:	01013403          	ld	s0,16(sp)
    80004e64:	0017879b          	addiw	a5,a5,1
    80004e68:	06f52c23          	sw	a5,120(a0)
    80004e6c:	00813483          	ld	s1,8(sp)
    80004e70:	02010113          	addi	sp,sp,32
    80004e74:	00008067          	ret
    80004e78:	0014d493          	srli	s1,s1,0x1
    80004e7c:	ffffe097          	auipc	ra,0xffffe
    80004e80:	6cc080e7          	jalr	1740(ra) # 80003548 <mycpu>
    80004e84:	0014f493          	andi	s1,s1,1
    80004e88:	06952e23          	sw	s1,124(a0)
    80004e8c:	fc5ff06f          	j	80004e50 <push_off+0x34>

0000000080004e90 <pop_off>:
    80004e90:	ff010113          	addi	sp,sp,-16
    80004e94:	00813023          	sd	s0,0(sp)
    80004e98:	00113423          	sd	ra,8(sp)
    80004e9c:	01010413          	addi	s0,sp,16
    80004ea0:	ffffe097          	auipc	ra,0xffffe
    80004ea4:	6a8080e7          	jalr	1704(ra) # 80003548 <mycpu>
    80004ea8:	100027f3          	csrr	a5,sstatus
    80004eac:	0027f793          	andi	a5,a5,2
    80004eb0:	04079663          	bnez	a5,80004efc <pop_off+0x6c>
    80004eb4:	07852783          	lw	a5,120(a0)
    80004eb8:	02f05a63          	blez	a5,80004eec <pop_off+0x5c>
    80004ebc:	fff7871b          	addiw	a4,a5,-1
    80004ec0:	06e52c23          	sw	a4,120(a0)
    80004ec4:	00071c63          	bnez	a4,80004edc <pop_off+0x4c>
    80004ec8:	07c52783          	lw	a5,124(a0)
    80004ecc:	00078863          	beqz	a5,80004edc <pop_off+0x4c>
    80004ed0:	100027f3          	csrr	a5,sstatus
    80004ed4:	0027e793          	ori	a5,a5,2
    80004ed8:	10079073          	csrw	sstatus,a5
    80004edc:	00813083          	ld	ra,8(sp)
    80004ee0:	00013403          	ld	s0,0(sp)
    80004ee4:	01010113          	addi	sp,sp,16
    80004ee8:	00008067          	ret
    80004eec:	00001517          	auipc	a0,0x1
    80004ef0:	3e450513          	addi	a0,a0,996 # 800062d0 <digits+0x48>
    80004ef4:	fffff097          	auipc	ra,0xfffff
    80004ef8:	018080e7          	jalr	24(ra) # 80003f0c <panic>
    80004efc:	00001517          	auipc	a0,0x1
    80004f00:	3bc50513          	addi	a0,a0,956 # 800062b8 <digits+0x30>
    80004f04:	fffff097          	auipc	ra,0xfffff
    80004f08:	008080e7          	jalr	8(ra) # 80003f0c <panic>

0000000080004f0c <push_on>:
    80004f0c:	fe010113          	addi	sp,sp,-32
    80004f10:	00813823          	sd	s0,16(sp)
    80004f14:	00113c23          	sd	ra,24(sp)
    80004f18:	00913423          	sd	s1,8(sp)
    80004f1c:	02010413          	addi	s0,sp,32
    80004f20:	100024f3          	csrr	s1,sstatus
    80004f24:	100027f3          	csrr	a5,sstatus
    80004f28:	0027e793          	ori	a5,a5,2
    80004f2c:	10079073          	csrw	sstatus,a5
    80004f30:	ffffe097          	auipc	ra,0xffffe
    80004f34:	618080e7          	jalr	1560(ra) # 80003548 <mycpu>
    80004f38:	07852783          	lw	a5,120(a0)
    80004f3c:	02078663          	beqz	a5,80004f68 <push_on+0x5c>
    80004f40:	ffffe097          	auipc	ra,0xffffe
    80004f44:	608080e7          	jalr	1544(ra) # 80003548 <mycpu>
    80004f48:	07852783          	lw	a5,120(a0)
    80004f4c:	01813083          	ld	ra,24(sp)
    80004f50:	01013403          	ld	s0,16(sp)
    80004f54:	0017879b          	addiw	a5,a5,1
    80004f58:	06f52c23          	sw	a5,120(a0)
    80004f5c:	00813483          	ld	s1,8(sp)
    80004f60:	02010113          	addi	sp,sp,32
    80004f64:	00008067          	ret
    80004f68:	0014d493          	srli	s1,s1,0x1
    80004f6c:	ffffe097          	auipc	ra,0xffffe
    80004f70:	5dc080e7          	jalr	1500(ra) # 80003548 <mycpu>
    80004f74:	0014f493          	andi	s1,s1,1
    80004f78:	06952e23          	sw	s1,124(a0)
    80004f7c:	fc5ff06f          	j	80004f40 <push_on+0x34>

0000000080004f80 <pop_on>:
    80004f80:	ff010113          	addi	sp,sp,-16
    80004f84:	00813023          	sd	s0,0(sp)
    80004f88:	00113423          	sd	ra,8(sp)
    80004f8c:	01010413          	addi	s0,sp,16
    80004f90:	ffffe097          	auipc	ra,0xffffe
    80004f94:	5b8080e7          	jalr	1464(ra) # 80003548 <mycpu>
    80004f98:	100027f3          	csrr	a5,sstatus
    80004f9c:	0027f793          	andi	a5,a5,2
    80004fa0:	04078463          	beqz	a5,80004fe8 <pop_on+0x68>
    80004fa4:	07852783          	lw	a5,120(a0)
    80004fa8:	02f05863          	blez	a5,80004fd8 <pop_on+0x58>
    80004fac:	fff7879b          	addiw	a5,a5,-1
    80004fb0:	06f52c23          	sw	a5,120(a0)
    80004fb4:	07853783          	ld	a5,120(a0)
    80004fb8:	00079863          	bnez	a5,80004fc8 <pop_on+0x48>
    80004fbc:	100027f3          	csrr	a5,sstatus
    80004fc0:	ffd7f793          	andi	a5,a5,-3
    80004fc4:	10079073          	csrw	sstatus,a5
    80004fc8:	00813083          	ld	ra,8(sp)
    80004fcc:	00013403          	ld	s0,0(sp)
    80004fd0:	01010113          	addi	sp,sp,16
    80004fd4:	00008067          	ret
    80004fd8:	00001517          	auipc	a0,0x1
    80004fdc:	32050513          	addi	a0,a0,800 # 800062f8 <digits+0x70>
    80004fe0:	fffff097          	auipc	ra,0xfffff
    80004fe4:	f2c080e7          	jalr	-212(ra) # 80003f0c <panic>
    80004fe8:	00001517          	auipc	a0,0x1
    80004fec:	2f050513          	addi	a0,a0,752 # 800062d8 <digits+0x50>
    80004ff0:	fffff097          	auipc	ra,0xfffff
    80004ff4:	f1c080e7          	jalr	-228(ra) # 80003f0c <panic>

0000000080004ff8 <__memset>:
    80004ff8:	ff010113          	addi	sp,sp,-16
    80004ffc:	00813423          	sd	s0,8(sp)
    80005000:	01010413          	addi	s0,sp,16
    80005004:	1a060e63          	beqz	a2,800051c0 <__memset+0x1c8>
    80005008:	40a007b3          	neg	a5,a0
    8000500c:	0077f793          	andi	a5,a5,7
    80005010:	00778693          	addi	a3,a5,7
    80005014:	00b00813          	li	a6,11
    80005018:	0ff5f593          	andi	a1,a1,255
    8000501c:	fff6071b          	addiw	a4,a2,-1
    80005020:	1b06e663          	bltu	a3,a6,800051cc <__memset+0x1d4>
    80005024:	1cd76463          	bltu	a4,a3,800051ec <__memset+0x1f4>
    80005028:	1a078e63          	beqz	a5,800051e4 <__memset+0x1ec>
    8000502c:	00b50023          	sb	a1,0(a0)
    80005030:	00100713          	li	a4,1
    80005034:	1ae78463          	beq	a5,a4,800051dc <__memset+0x1e4>
    80005038:	00b500a3          	sb	a1,1(a0)
    8000503c:	00200713          	li	a4,2
    80005040:	1ae78a63          	beq	a5,a4,800051f4 <__memset+0x1fc>
    80005044:	00b50123          	sb	a1,2(a0)
    80005048:	00300713          	li	a4,3
    8000504c:	18e78463          	beq	a5,a4,800051d4 <__memset+0x1dc>
    80005050:	00b501a3          	sb	a1,3(a0)
    80005054:	00400713          	li	a4,4
    80005058:	1ae78263          	beq	a5,a4,800051fc <__memset+0x204>
    8000505c:	00b50223          	sb	a1,4(a0)
    80005060:	00500713          	li	a4,5
    80005064:	1ae78063          	beq	a5,a4,80005204 <__memset+0x20c>
    80005068:	00b502a3          	sb	a1,5(a0)
    8000506c:	00700713          	li	a4,7
    80005070:	18e79e63          	bne	a5,a4,8000520c <__memset+0x214>
    80005074:	00b50323          	sb	a1,6(a0)
    80005078:	00700e93          	li	t4,7
    8000507c:	00859713          	slli	a4,a1,0x8
    80005080:	00e5e733          	or	a4,a1,a4
    80005084:	01059e13          	slli	t3,a1,0x10
    80005088:	01c76e33          	or	t3,a4,t3
    8000508c:	01859313          	slli	t1,a1,0x18
    80005090:	006e6333          	or	t1,t3,t1
    80005094:	02059893          	slli	a7,a1,0x20
    80005098:	40f60e3b          	subw	t3,a2,a5
    8000509c:	011368b3          	or	a7,t1,a7
    800050a0:	02859813          	slli	a6,a1,0x28
    800050a4:	0108e833          	or	a6,a7,a6
    800050a8:	03059693          	slli	a3,a1,0x30
    800050ac:	003e589b          	srliw	a7,t3,0x3
    800050b0:	00d866b3          	or	a3,a6,a3
    800050b4:	03859713          	slli	a4,a1,0x38
    800050b8:	00389813          	slli	a6,a7,0x3
    800050bc:	00f507b3          	add	a5,a0,a5
    800050c0:	00e6e733          	or	a4,a3,a4
    800050c4:	000e089b          	sext.w	a7,t3
    800050c8:	00f806b3          	add	a3,a6,a5
    800050cc:	00e7b023          	sd	a4,0(a5)
    800050d0:	00878793          	addi	a5,a5,8
    800050d4:	fed79ce3          	bne	a5,a3,800050cc <__memset+0xd4>
    800050d8:	ff8e7793          	andi	a5,t3,-8
    800050dc:	0007871b          	sext.w	a4,a5
    800050e0:	01d787bb          	addw	a5,a5,t4
    800050e4:	0ce88e63          	beq	a7,a4,800051c0 <__memset+0x1c8>
    800050e8:	00f50733          	add	a4,a0,a5
    800050ec:	00b70023          	sb	a1,0(a4)
    800050f0:	0017871b          	addiw	a4,a5,1
    800050f4:	0cc77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    800050f8:	00e50733          	add	a4,a0,a4
    800050fc:	00b70023          	sb	a1,0(a4)
    80005100:	0027871b          	addiw	a4,a5,2
    80005104:	0ac77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005108:	00e50733          	add	a4,a0,a4
    8000510c:	00b70023          	sb	a1,0(a4)
    80005110:	0037871b          	addiw	a4,a5,3
    80005114:	0ac77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005118:	00e50733          	add	a4,a0,a4
    8000511c:	00b70023          	sb	a1,0(a4)
    80005120:	0047871b          	addiw	a4,a5,4
    80005124:	08c77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005128:	00e50733          	add	a4,a0,a4
    8000512c:	00b70023          	sb	a1,0(a4)
    80005130:	0057871b          	addiw	a4,a5,5
    80005134:	08c77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005138:	00e50733          	add	a4,a0,a4
    8000513c:	00b70023          	sb	a1,0(a4)
    80005140:	0067871b          	addiw	a4,a5,6
    80005144:	06c77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005148:	00e50733          	add	a4,a0,a4
    8000514c:	00b70023          	sb	a1,0(a4)
    80005150:	0077871b          	addiw	a4,a5,7
    80005154:	06c77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005158:	00e50733          	add	a4,a0,a4
    8000515c:	00b70023          	sb	a1,0(a4)
    80005160:	0087871b          	addiw	a4,a5,8
    80005164:	04c77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005168:	00e50733          	add	a4,a0,a4
    8000516c:	00b70023          	sb	a1,0(a4)
    80005170:	0097871b          	addiw	a4,a5,9
    80005174:	04c77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005178:	00e50733          	add	a4,a0,a4
    8000517c:	00b70023          	sb	a1,0(a4)
    80005180:	00a7871b          	addiw	a4,a5,10
    80005184:	02c77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005188:	00e50733          	add	a4,a0,a4
    8000518c:	00b70023          	sb	a1,0(a4)
    80005190:	00b7871b          	addiw	a4,a5,11
    80005194:	02c77663          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    80005198:	00e50733          	add	a4,a0,a4
    8000519c:	00b70023          	sb	a1,0(a4)
    800051a0:	00c7871b          	addiw	a4,a5,12
    800051a4:	00c77e63          	bgeu	a4,a2,800051c0 <__memset+0x1c8>
    800051a8:	00e50733          	add	a4,a0,a4
    800051ac:	00b70023          	sb	a1,0(a4)
    800051b0:	00d7879b          	addiw	a5,a5,13
    800051b4:	00c7f663          	bgeu	a5,a2,800051c0 <__memset+0x1c8>
    800051b8:	00f507b3          	add	a5,a0,a5
    800051bc:	00b78023          	sb	a1,0(a5)
    800051c0:	00813403          	ld	s0,8(sp)
    800051c4:	01010113          	addi	sp,sp,16
    800051c8:	00008067          	ret
    800051cc:	00b00693          	li	a3,11
    800051d0:	e55ff06f          	j	80005024 <__memset+0x2c>
    800051d4:	00300e93          	li	t4,3
    800051d8:	ea5ff06f          	j	8000507c <__memset+0x84>
    800051dc:	00100e93          	li	t4,1
    800051e0:	e9dff06f          	j	8000507c <__memset+0x84>
    800051e4:	00000e93          	li	t4,0
    800051e8:	e95ff06f          	j	8000507c <__memset+0x84>
    800051ec:	00000793          	li	a5,0
    800051f0:	ef9ff06f          	j	800050e8 <__memset+0xf0>
    800051f4:	00200e93          	li	t4,2
    800051f8:	e85ff06f          	j	8000507c <__memset+0x84>
    800051fc:	00400e93          	li	t4,4
    80005200:	e7dff06f          	j	8000507c <__memset+0x84>
    80005204:	00500e93          	li	t4,5
    80005208:	e75ff06f          	j	8000507c <__memset+0x84>
    8000520c:	00600e93          	li	t4,6
    80005210:	e6dff06f          	j	8000507c <__memset+0x84>

0000000080005214 <__memmove>:
    80005214:	ff010113          	addi	sp,sp,-16
    80005218:	00813423          	sd	s0,8(sp)
    8000521c:	01010413          	addi	s0,sp,16
    80005220:	0e060863          	beqz	a2,80005310 <__memmove+0xfc>
    80005224:	fff6069b          	addiw	a3,a2,-1
    80005228:	0006881b          	sext.w	a6,a3
    8000522c:	0ea5e863          	bltu	a1,a0,8000531c <__memmove+0x108>
    80005230:	00758713          	addi	a4,a1,7
    80005234:	00a5e7b3          	or	a5,a1,a0
    80005238:	40a70733          	sub	a4,a4,a0
    8000523c:	0077f793          	andi	a5,a5,7
    80005240:	00f73713          	sltiu	a4,a4,15
    80005244:	00174713          	xori	a4,a4,1
    80005248:	0017b793          	seqz	a5,a5
    8000524c:	00e7f7b3          	and	a5,a5,a4
    80005250:	10078863          	beqz	a5,80005360 <__memmove+0x14c>
    80005254:	00900793          	li	a5,9
    80005258:	1107f463          	bgeu	a5,a6,80005360 <__memmove+0x14c>
    8000525c:	0036581b          	srliw	a6,a2,0x3
    80005260:	fff8081b          	addiw	a6,a6,-1
    80005264:	02081813          	slli	a6,a6,0x20
    80005268:	01d85893          	srli	a7,a6,0x1d
    8000526c:	00858813          	addi	a6,a1,8
    80005270:	00058793          	mv	a5,a1
    80005274:	00050713          	mv	a4,a0
    80005278:	01088833          	add	a6,a7,a6
    8000527c:	0007b883          	ld	a7,0(a5)
    80005280:	00878793          	addi	a5,a5,8
    80005284:	00870713          	addi	a4,a4,8
    80005288:	ff173c23          	sd	a7,-8(a4)
    8000528c:	ff0798e3          	bne	a5,a6,8000527c <__memmove+0x68>
    80005290:	ff867713          	andi	a4,a2,-8
    80005294:	02071793          	slli	a5,a4,0x20
    80005298:	0207d793          	srli	a5,a5,0x20
    8000529c:	00f585b3          	add	a1,a1,a5
    800052a0:	40e686bb          	subw	a3,a3,a4
    800052a4:	00f507b3          	add	a5,a0,a5
    800052a8:	06e60463          	beq	a2,a4,80005310 <__memmove+0xfc>
    800052ac:	0005c703          	lbu	a4,0(a1)
    800052b0:	00e78023          	sb	a4,0(a5)
    800052b4:	04068e63          	beqz	a3,80005310 <__memmove+0xfc>
    800052b8:	0015c603          	lbu	a2,1(a1)
    800052bc:	00100713          	li	a4,1
    800052c0:	00c780a3          	sb	a2,1(a5)
    800052c4:	04e68663          	beq	a3,a4,80005310 <__memmove+0xfc>
    800052c8:	0025c603          	lbu	a2,2(a1)
    800052cc:	00200713          	li	a4,2
    800052d0:	00c78123          	sb	a2,2(a5)
    800052d4:	02e68e63          	beq	a3,a4,80005310 <__memmove+0xfc>
    800052d8:	0035c603          	lbu	a2,3(a1)
    800052dc:	00300713          	li	a4,3
    800052e0:	00c781a3          	sb	a2,3(a5)
    800052e4:	02e68663          	beq	a3,a4,80005310 <__memmove+0xfc>
    800052e8:	0045c603          	lbu	a2,4(a1)
    800052ec:	00400713          	li	a4,4
    800052f0:	00c78223          	sb	a2,4(a5)
    800052f4:	00e68e63          	beq	a3,a4,80005310 <__memmove+0xfc>
    800052f8:	0055c603          	lbu	a2,5(a1)
    800052fc:	00500713          	li	a4,5
    80005300:	00c782a3          	sb	a2,5(a5)
    80005304:	00e68663          	beq	a3,a4,80005310 <__memmove+0xfc>
    80005308:	0065c703          	lbu	a4,6(a1)
    8000530c:	00e78323          	sb	a4,6(a5)
    80005310:	00813403          	ld	s0,8(sp)
    80005314:	01010113          	addi	sp,sp,16
    80005318:	00008067          	ret
    8000531c:	02061713          	slli	a4,a2,0x20
    80005320:	02075713          	srli	a4,a4,0x20
    80005324:	00e587b3          	add	a5,a1,a4
    80005328:	f0f574e3          	bgeu	a0,a5,80005230 <__memmove+0x1c>
    8000532c:	02069613          	slli	a2,a3,0x20
    80005330:	02065613          	srli	a2,a2,0x20
    80005334:	fff64613          	not	a2,a2
    80005338:	00e50733          	add	a4,a0,a4
    8000533c:	00c78633          	add	a2,a5,a2
    80005340:	fff7c683          	lbu	a3,-1(a5)
    80005344:	fff78793          	addi	a5,a5,-1
    80005348:	fff70713          	addi	a4,a4,-1
    8000534c:	00d70023          	sb	a3,0(a4)
    80005350:	fec798e3          	bne	a5,a2,80005340 <__memmove+0x12c>
    80005354:	00813403          	ld	s0,8(sp)
    80005358:	01010113          	addi	sp,sp,16
    8000535c:	00008067          	ret
    80005360:	02069713          	slli	a4,a3,0x20
    80005364:	02075713          	srli	a4,a4,0x20
    80005368:	00170713          	addi	a4,a4,1
    8000536c:	00e50733          	add	a4,a0,a4
    80005370:	00050793          	mv	a5,a0
    80005374:	0005c683          	lbu	a3,0(a1)
    80005378:	00178793          	addi	a5,a5,1
    8000537c:	00158593          	addi	a1,a1,1
    80005380:	fed78fa3          	sb	a3,-1(a5)
    80005384:	fee798e3          	bne	a5,a4,80005374 <__memmove+0x160>
    80005388:	f89ff06f          	j	80005310 <__memmove+0xfc>

000000008000538c <__mem_free>:
    8000538c:	ff010113          	addi	sp,sp,-16
    80005390:	00813423          	sd	s0,8(sp)
    80005394:	01010413          	addi	s0,sp,16
    80005398:	00002597          	auipc	a1,0x2
    8000539c:	10058593          	addi	a1,a1,256 # 80007498 <freep>
    800053a0:	0005b783          	ld	a5,0(a1)
    800053a4:	ff050693          	addi	a3,a0,-16
    800053a8:	0007b703          	ld	a4,0(a5)
    800053ac:	00d7fc63          	bgeu	a5,a3,800053c4 <__mem_free+0x38>
    800053b0:	00e6ee63          	bltu	a3,a4,800053cc <__mem_free+0x40>
    800053b4:	00e7fc63          	bgeu	a5,a4,800053cc <__mem_free+0x40>
    800053b8:	00070793          	mv	a5,a4
    800053bc:	0007b703          	ld	a4,0(a5)
    800053c0:	fed7e8e3          	bltu	a5,a3,800053b0 <__mem_free+0x24>
    800053c4:	fee7eae3          	bltu	a5,a4,800053b8 <__mem_free+0x2c>
    800053c8:	fee6f8e3          	bgeu	a3,a4,800053b8 <__mem_free+0x2c>
    800053cc:	ff852803          	lw	a6,-8(a0)
    800053d0:	02081613          	slli	a2,a6,0x20
    800053d4:	01c65613          	srli	a2,a2,0x1c
    800053d8:	00c68633          	add	a2,a3,a2
    800053dc:	02c70a63          	beq	a4,a2,80005410 <__mem_free+0x84>
    800053e0:	fee53823          	sd	a4,-16(a0)
    800053e4:	0087a503          	lw	a0,8(a5)
    800053e8:	02051613          	slli	a2,a0,0x20
    800053ec:	01c65613          	srli	a2,a2,0x1c
    800053f0:	00c78633          	add	a2,a5,a2
    800053f4:	04c68263          	beq	a3,a2,80005438 <__mem_free+0xac>
    800053f8:	00813403          	ld	s0,8(sp)
    800053fc:	00d7b023          	sd	a3,0(a5)
    80005400:	00f5b023          	sd	a5,0(a1)
    80005404:	00000513          	li	a0,0
    80005408:	01010113          	addi	sp,sp,16
    8000540c:	00008067          	ret
    80005410:	00872603          	lw	a2,8(a4)
    80005414:	00073703          	ld	a4,0(a4)
    80005418:	0106083b          	addw	a6,a2,a6
    8000541c:	ff052c23          	sw	a6,-8(a0)
    80005420:	fee53823          	sd	a4,-16(a0)
    80005424:	0087a503          	lw	a0,8(a5)
    80005428:	02051613          	slli	a2,a0,0x20
    8000542c:	01c65613          	srli	a2,a2,0x1c
    80005430:	00c78633          	add	a2,a5,a2
    80005434:	fcc692e3          	bne	a3,a2,800053f8 <__mem_free+0x6c>
    80005438:	00813403          	ld	s0,8(sp)
    8000543c:	0105053b          	addw	a0,a0,a6
    80005440:	00a7a423          	sw	a0,8(a5)
    80005444:	00e7b023          	sd	a4,0(a5)
    80005448:	00f5b023          	sd	a5,0(a1)
    8000544c:	00000513          	li	a0,0
    80005450:	01010113          	addi	sp,sp,16
    80005454:	00008067          	ret

0000000080005458 <__mem_alloc>:
    80005458:	fc010113          	addi	sp,sp,-64
    8000545c:	02813823          	sd	s0,48(sp)
    80005460:	02913423          	sd	s1,40(sp)
    80005464:	03213023          	sd	s2,32(sp)
    80005468:	01513423          	sd	s5,8(sp)
    8000546c:	02113c23          	sd	ra,56(sp)
    80005470:	01313c23          	sd	s3,24(sp)
    80005474:	01413823          	sd	s4,16(sp)
    80005478:	01613023          	sd	s6,0(sp)
    8000547c:	04010413          	addi	s0,sp,64
    80005480:	00002a97          	auipc	s5,0x2
    80005484:	018a8a93          	addi	s5,s5,24 # 80007498 <freep>
    80005488:	00f50913          	addi	s2,a0,15
    8000548c:	000ab683          	ld	a3,0(s5)
    80005490:	00495913          	srli	s2,s2,0x4
    80005494:	0019049b          	addiw	s1,s2,1
    80005498:	00048913          	mv	s2,s1
    8000549c:	0c068c63          	beqz	a3,80005574 <__mem_alloc+0x11c>
    800054a0:	0006b503          	ld	a0,0(a3)
    800054a4:	00852703          	lw	a4,8(a0)
    800054a8:	10977063          	bgeu	a4,s1,800055a8 <__mem_alloc+0x150>
    800054ac:	000017b7          	lui	a5,0x1
    800054b0:	0009099b          	sext.w	s3,s2
    800054b4:	0af4e863          	bltu	s1,a5,80005564 <__mem_alloc+0x10c>
    800054b8:	02099a13          	slli	s4,s3,0x20
    800054bc:	01ca5a13          	srli	s4,s4,0x1c
    800054c0:	fff00b13          	li	s6,-1
    800054c4:	0100006f          	j	800054d4 <__mem_alloc+0x7c>
    800054c8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800054cc:	00852703          	lw	a4,8(a0)
    800054d0:	04977463          	bgeu	a4,s1,80005518 <__mem_alloc+0xc0>
    800054d4:	00050793          	mv	a5,a0
    800054d8:	fea698e3          	bne	a3,a0,800054c8 <__mem_alloc+0x70>
    800054dc:	000a0513          	mv	a0,s4
    800054e0:	00000097          	auipc	ra,0x0
    800054e4:	1f0080e7          	jalr	496(ra) # 800056d0 <kvmincrease>
    800054e8:	00050793          	mv	a5,a0
    800054ec:	01050513          	addi	a0,a0,16
    800054f0:	07678e63          	beq	a5,s6,8000556c <__mem_alloc+0x114>
    800054f4:	0137a423          	sw	s3,8(a5)
    800054f8:	00000097          	auipc	ra,0x0
    800054fc:	e94080e7          	jalr	-364(ra) # 8000538c <__mem_free>
    80005500:	000ab783          	ld	a5,0(s5)
    80005504:	06078463          	beqz	a5,8000556c <__mem_alloc+0x114>
    80005508:	0007b503          	ld	a0,0(a5)
    8000550c:	00078693          	mv	a3,a5
    80005510:	00852703          	lw	a4,8(a0)
    80005514:	fc9760e3          	bltu	a4,s1,800054d4 <__mem_alloc+0x7c>
    80005518:	08e48263          	beq	s1,a4,8000559c <__mem_alloc+0x144>
    8000551c:	4127073b          	subw	a4,a4,s2
    80005520:	02071693          	slli	a3,a4,0x20
    80005524:	01c6d693          	srli	a3,a3,0x1c
    80005528:	00e52423          	sw	a4,8(a0)
    8000552c:	00d50533          	add	a0,a0,a3
    80005530:	01252423          	sw	s2,8(a0)
    80005534:	00fab023          	sd	a5,0(s5)
    80005538:	01050513          	addi	a0,a0,16
    8000553c:	03813083          	ld	ra,56(sp)
    80005540:	03013403          	ld	s0,48(sp)
    80005544:	02813483          	ld	s1,40(sp)
    80005548:	02013903          	ld	s2,32(sp)
    8000554c:	01813983          	ld	s3,24(sp)
    80005550:	01013a03          	ld	s4,16(sp)
    80005554:	00813a83          	ld	s5,8(sp)
    80005558:	00013b03          	ld	s6,0(sp)
    8000555c:	04010113          	addi	sp,sp,64
    80005560:	00008067          	ret
    80005564:	000019b7          	lui	s3,0x1
    80005568:	f51ff06f          	j	800054b8 <__mem_alloc+0x60>
    8000556c:	00000513          	li	a0,0
    80005570:	fcdff06f          	j	8000553c <__mem_alloc+0xe4>
    80005574:	00003797          	auipc	a5,0x3
    80005578:	1dc78793          	addi	a5,a5,476 # 80008750 <base>
    8000557c:	00078513          	mv	a0,a5
    80005580:	00fab023          	sd	a5,0(s5)
    80005584:	00f7b023          	sd	a5,0(a5)
    80005588:	00000713          	li	a4,0
    8000558c:	00003797          	auipc	a5,0x3
    80005590:	1c07a623          	sw	zero,460(a5) # 80008758 <base+0x8>
    80005594:	00050693          	mv	a3,a0
    80005598:	f11ff06f          	j	800054a8 <__mem_alloc+0x50>
    8000559c:	00053703          	ld	a4,0(a0)
    800055a0:	00e7b023          	sd	a4,0(a5)
    800055a4:	f91ff06f          	j	80005534 <__mem_alloc+0xdc>
    800055a8:	00068793          	mv	a5,a3
    800055ac:	f6dff06f          	j	80005518 <__mem_alloc+0xc0>

00000000800055b0 <__putc>:
    800055b0:	fe010113          	addi	sp,sp,-32
    800055b4:	00813823          	sd	s0,16(sp)
    800055b8:	00113c23          	sd	ra,24(sp)
    800055bc:	02010413          	addi	s0,sp,32
    800055c0:	00050793          	mv	a5,a0
    800055c4:	fef40593          	addi	a1,s0,-17
    800055c8:	00100613          	li	a2,1
    800055cc:	00000513          	li	a0,0
    800055d0:	fef407a3          	sb	a5,-17(s0)
    800055d4:	fffff097          	auipc	ra,0xfffff
    800055d8:	918080e7          	jalr	-1768(ra) # 80003eec <console_write>
    800055dc:	01813083          	ld	ra,24(sp)
    800055e0:	01013403          	ld	s0,16(sp)
    800055e4:	02010113          	addi	sp,sp,32
    800055e8:	00008067          	ret

00000000800055ec <__getc>:
    800055ec:	fe010113          	addi	sp,sp,-32
    800055f0:	00813823          	sd	s0,16(sp)
    800055f4:	00113c23          	sd	ra,24(sp)
    800055f8:	02010413          	addi	s0,sp,32
    800055fc:	fe840593          	addi	a1,s0,-24
    80005600:	00100613          	li	a2,1
    80005604:	00000513          	li	a0,0
    80005608:	fffff097          	auipc	ra,0xfffff
    8000560c:	8c4080e7          	jalr	-1852(ra) # 80003ecc <console_read>
    80005610:	fe844503          	lbu	a0,-24(s0)
    80005614:	01813083          	ld	ra,24(sp)
    80005618:	01013403          	ld	s0,16(sp)
    8000561c:	02010113          	addi	sp,sp,32
    80005620:	00008067          	ret

0000000080005624 <console_handler>:
    80005624:	fe010113          	addi	sp,sp,-32
    80005628:	00813823          	sd	s0,16(sp)
    8000562c:	00113c23          	sd	ra,24(sp)
    80005630:	00913423          	sd	s1,8(sp)
    80005634:	02010413          	addi	s0,sp,32
    80005638:	14202773          	csrr	a4,scause
    8000563c:	100027f3          	csrr	a5,sstatus
    80005640:	0027f793          	andi	a5,a5,2
    80005644:	06079e63          	bnez	a5,800056c0 <console_handler+0x9c>
    80005648:	00074c63          	bltz	a4,80005660 <console_handler+0x3c>
    8000564c:	01813083          	ld	ra,24(sp)
    80005650:	01013403          	ld	s0,16(sp)
    80005654:	00813483          	ld	s1,8(sp)
    80005658:	02010113          	addi	sp,sp,32
    8000565c:	00008067          	ret
    80005660:	0ff77713          	andi	a4,a4,255
    80005664:	00900793          	li	a5,9
    80005668:	fef712e3          	bne	a4,a5,8000564c <console_handler+0x28>
    8000566c:	ffffe097          	auipc	ra,0xffffe
    80005670:	4b8080e7          	jalr	1208(ra) # 80003b24 <plic_claim>
    80005674:	00a00793          	li	a5,10
    80005678:	00050493          	mv	s1,a0
    8000567c:	02f50c63          	beq	a0,a5,800056b4 <console_handler+0x90>
    80005680:	fc0506e3          	beqz	a0,8000564c <console_handler+0x28>
    80005684:	00050593          	mv	a1,a0
    80005688:	00001517          	auipc	a0,0x1
    8000568c:	b7850513          	addi	a0,a0,-1160 # 80006200 <CONSOLE_STATUS+0x1f0>
    80005690:	fffff097          	auipc	ra,0xfffff
    80005694:	8d8080e7          	jalr	-1832(ra) # 80003f68 <__printf>
    80005698:	01013403          	ld	s0,16(sp)
    8000569c:	01813083          	ld	ra,24(sp)
    800056a0:	00048513          	mv	a0,s1
    800056a4:	00813483          	ld	s1,8(sp)
    800056a8:	02010113          	addi	sp,sp,32
    800056ac:	ffffe317          	auipc	t1,0xffffe
    800056b0:	4b030067          	jr	1200(t1) # 80003b5c <plic_complete>
    800056b4:	fffff097          	auipc	ra,0xfffff
    800056b8:	1bc080e7          	jalr	444(ra) # 80004870 <uartintr>
    800056bc:	fddff06f          	j	80005698 <console_handler+0x74>
    800056c0:	00001517          	auipc	a0,0x1
    800056c4:	c4050513          	addi	a0,a0,-960 # 80006300 <digits+0x78>
    800056c8:	fffff097          	auipc	ra,0xfffff
    800056cc:	844080e7          	jalr	-1980(ra) # 80003f0c <panic>

00000000800056d0 <kvmincrease>:
    800056d0:	fe010113          	addi	sp,sp,-32
    800056d4:	01213023          	sd	s2,0(sp)
    800056d8:	00001937          	lui	s2,0x1
    800056dc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    800056e0:	00813823          	sd	s0,16(sp)
    800056e4:	00113c23          	sd	ra,24(sp)
    800056e8:	00913423          	sd	s1,8(sp)
    800056ec:	02010413          	addi	s0,sp,32
    800056f0:	01250933          	add	s2,a0,s2
    800056f4:	00c95913          	srli	s2,s2,0xc
    800056f8:	02090863          	beqz	s2,80005728 <kvmincrease+0x58>
    800056fc:	00000493          	li	s1,0
    80005700:	00148493          	addi	s1,s1,1
    80005704:	fffff097          	auipc	ra,0xfffff
    80005708:	4bc080e7          	jalr	1212(ra) # 80004bc0 <kalloc>
    8000570c:	fe991ae3          	bne	s2,s1,80005700 <kvmincrease+0x30>
    80005710:	01813083          	ld	ra,24(sp)
    80005714:	01013403          	ld	s0,16(sp)
    80005718:	00813483          	ld	s1,8(sp)
    8000571c:	00013903          	ld	s2,0(sp)
    80005720:	02010113          	addi	sp,sp,32
    80005724:	00008067          	ret
    80005728:	01813083          	ld	ra,24(sp)
    8000572c:	01013403          	ld	s0,16(sp)
    80005730:	00813483          	ld	s1,8(sp)
    80005734:	00013903          	ld	s2,0(sp)
    80005738:	00000513          	li	a0,0
    8000573c:	02010113          	addi	sp,sp,32
    80005740:	00008067          	ret
	...
