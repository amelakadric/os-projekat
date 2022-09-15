
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	19813103          	ld	sp,408(sp) # 80007198 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	054030ef          	jal	ra,80003070 <start>

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
    80001180:	521000ef          	jal	ra,80001ea0 <_ZN5Riscv20handleSupervisorTrapEv>

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
    __asm__ volatile("mv a2, %0"::"r"(init));
    80001320:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0"::"r"(handle));
    80001324:	00050593          	mv	a1,a0
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
    800013dc:	fb4080e7          	jalr	-76(ra) # 8000538c <__getc>
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
    80001404:	f50080e7          	jalr	-176(ra) # 80005350 <__putc>
    80001408:	00813083          	ld	ra,8(sp)
    8000140c:	00013403          	ld	s0,0(sp)
    80001410:	01010113          	addi	sp,sp,16
    80001414:	00008067          	ret

0000000080001418 <_ZN10Ksemaphore5blockEv>:
#include "../h/Ksemaphore.hpp"

void Ksemaphore::block() {
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00913423          	sd	s1,8(sp)
    80001428:	01213023          	sd	s2,0(sp)
    8000142c:	02010413          	addi	s0,sp,32
    80001430:	00050493          	mv	s1,a0
    blocked.addLast(TCB::running);
    80001434:	00006797          	auipc	a5,0x6
    80001438:	d747b783          	ld	a5,-652(a5) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000143c:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    80001440:	01000513          	li	a0,16
    80001444:	00000097          	auipc	ra,0x0
    80001448:	754080e7          	jalr	1876(ra) # 80001b98 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000144c:	01253023          	sd	s2,0(a0)
    80001450:	00053423          	sd	zero,8(a0)
        if (tail)
    80001454:	0104b783          	ld	a5,16(s1)
    80001458:	02078c63          	beqz	a5,80001490 <_ZN10Ksemaphore5blockEv+0x78>
        {
            tail->next = elem;
    8000145c:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80001460:	00a4b823          	sd	a0,16(s1)
    TCB::running=Scheduler::get();
    80001464:	00001097          	auipc	ra,0x1
    80001468:	f2c080e7          	jalr	-212(ra) # 80002390 <_ZN9Scheduler3getEv>
    8000146c:	00006797          	auipc	a5,0x6
    80001470:	d3c7b783          	ld	a5,-708(a5) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001474:	00a7b023          	sd	a0,0(a5)

}
    80001478:	01813083          	ld	ra,24(sp)
    8000147c:	01013403          	ld	s0,16(sp)
    80001480:	00813483          	ld	s1,8(sp)
    80001484:	00013903          	ld	s2,0(sp)
    80001488:	02010113          	addi	sp,sp,32
    8000148c:	00008067          	ret
        } else
        {
            head = tail = elem;
    80001490:	00a4b823          	sd	a0,16(s1)
    80001494:	00a4b423          	sd	a0,8(s1)
    80001498:	fcdff06f          	j	80001464 <_ZN10Ksemaphore5blockEv+0x4c>

000000008000149c <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    8000149c:	fe010113          	addi	sp,sp,-32
    800014a0:	00113c23          	sd	ra,24(sp)
    800014a4:	00813823          	sd	s0,16(sp)
    800014a8:	00913423          	sd	s1,8(sp)
    800014ac:	02010413          	addi	s0,sp,32
    800014b0:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    800014b4:	00853503          	ld	a0,8(a0)
    800014b8:	04050263          	beqz	a0,800014fc <_ZN10Ksemaphore7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    800014bc:	00853703          	ld	a4,8(a0)
    800014c0:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    800014c4:	02070863          	beqz	a4,800014f4 <_ZN10Ksemaphore7unblockEv+0x58>

        T *ret = elem->data;
    800014c8:	00053483          	ld	s1,0(a0)
        delete elem;
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	71c080e7          	jalr	1820(ra) # 80001be8 <_ZdlPv>
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    800014d4:	00048513          	mv	a0,s1
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	f20080e7          	jalr	-224(ra) # 800023f8 <_ZN9Scheduler3putEP3TCB>
}
    800014e0:	01813083          	ld	ra,24(sp)
    800014e4:	01013403          	ld	s0,16(sp)
    800014e8:	00813483          	ld	s1,8(sp)
    800014ec:	02010113          	addi	sp,sp,32
    800014f0:	00008067          	ret
        if (!head) { tail = 0; }
    800014f4:	0007b823          	sd	zero,16(a5)
    800014f8:	fd1ff06f          	j	800014c8 <_ZN10Ksemaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    800014fc:	00050493          	mv	s1,a0
    80001500:	fd5ff06f          	j	800014d4 <_ZN10Ksemaphore7unblockEv+0x38>

0000000080001504 <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    80001504:	00052783          	lw	a5,0(a0)
    80001508:	fff7879b          	addiw	a5,a5,-1
    8000150c:	00f52023          	sw	a5,0(a0)
    80001510:	02079713          	slli	a4,a5,0x20
    80001514:	02075863          	bgez	a4,80001544 <_ZN10Ksemaphore4waitEv+0x40>
int Ksemaphore::wait() {
    80001518:	ff010113          	addi	sp,sp,-16
    8000151c:	00113423          	sd	ra,8(sp)
    80001520:	00813023          	sd	s0,0(sp)
    80001524:	01010413          	addi	s0,sp,16
        block();
    80001528:	00000097          	auipc	ra,0x0
    8000152c:	ef0080e7          	jalr	-272(ra) # 80001418 <_ZN10Ksemaphore5blockEv>
        return 0;
    80001530:	00000513          	li	a0,0
    }
    return -1;
}
    80001534:	00813083          	ld	ra,8(sp)
    80001538:	00013403          	ld	s0,0(sp)
    8000153c:	01010113          	addi	sp,sp,16
    80001540:	00008067          	ret
    return -1;
    80001544:	fff00513          	li	a0,-1
}
    80001548:	00008067          	ret

000000008000154c <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    8000154c:	00052783          	lw	a5,0(a0)
    80001550:	0017879b          	addiw	a5,a5,1
    80001554:	0007871b          	sext.w	a4,a5
    80001558:	00f52023          	sw	a5,0(a0)
    8000155c:	02e04863          	bgtz	a4,8000158c <_ZN10Ksemaphore6signalEv+0x40>
int Ksemaphore::signal() {
    80001560:	ff010113          	addi	sp,sp,-16
    80001564:	00113423          	sd	ra,8(sp)
    80001568:	00813023          	sd	s0,0(sp)
    8000156c:	01010413          	addi	s0,sp,16
        unblock();
    80001570:	00000097          	auipc	ra,0x0
    80001574:	f2c080e7          	jalr	-212(ra) # 8000149c <_ZN10Ksemaphore7unblockEv>
        return 0;
    80001578:	00000513          	li	a0,0
    }
    return -1;
}
    8000157c:	00813083          	ld	ra,8(sp)
    80001580:	00013403          	ld	s0,0(sp)
    80001584:	01010113          	addi	sp,sp,16
    80001588:	00008067          	ret
    return -1;
    8000158c:	fff00513          	li	a0,-1
}
    80001590:	00008067          	ret

0000000080001594 <_ZN10Ksemaphore15createSemaphoreEj>:

Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	02010413          	addi	s0,sp,32
    800015a8:	00050493          	mv	s1,a0
    return new Ksemaphore(init);
    800015ac:	01800513          	li	a0,24
    800015b0:	00000097          	auipc	ra,0x0
    800015b4:	5e8080e7          	jalr	1512(ra) # 80001b98 <_Znwm>

typedef Ksemaphore* sem_t;

class Ksemaphore{
public:
    Ksemaphore(unsigned init =1):val(init){}
    800015b8:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800015bc:	00053423          	sd	zero,8(a0)
    800015c0:	00053823          	sd	zero,16(a0)
}
    800015c4:	01813083          	ld	ra,24(sp)
    800015c8:	01013403          	ld	s0,16(sp)
    800015cc:	00813483          	ld	s1,8(sp)
    800015d0:	02010113          	addi	sp,sp,32
    800015d4:	00008067          	ret

00000000800015d8 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00113c23          	sd	ra,24(sp)
    800015e0:	00813823          	sd	s0,16(sp)
    800015e4:	00913423          	sd	s1,8(sp)
    800015e8:	01213023          	sd	s2,0(sp)
    800015ec:	02010413          	addi	s0,sp,32
    800015f0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    800015f4:	00000913          	li	s2,0
    800015f8:	00c0006f          	j	80001604 <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 0x1b) {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800015fc:	00000097          	auipc	ra,0x0
    80001600:	cf8080e7          	jalr	-776(ra) # 800012f4 <_Z15thread_dispatchv>
    while ((key = getc()) != 0x1b) {
    80001604:	00000097          	auipc	ra,0x0
    80001608:	dc4080e7          	jalr	-572(ra) # 800013c8 <_Z4getcv>
    8000160c:	0005059b          	sext.w	a1,a0
    80001610:	01b00793          	li	a5,27
    80001614:	02f58a63          	beq	a1,a5,80001648 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80001618:	0084b503          	ld	a0,8(s1)
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	7d0080e7          	jalr	2000(ra) # 80002dec <_ZN6Buffer3putEi>
        i++;
    80001624:	0019071b          	addiw	a4,s2,1
    80001628:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    8000162c:	0004a683          	lw	a3,0(s1)
    80001630:	0026979b          	slliw	a5,a3,0x2
    80001634:	00d787bb          	addw	a5,a5,a3
    80001638:	0017979b          	slliw	a5,a5,0x1
    8000163c:	02f767bb          	remw	a5,a4,a5
    80001640:	fc0792e3          	bnez	a5,80001604 <_Z16producerKeyboardPv+0x2c>
    80001644:	fb9ff06f          	j	800015fc <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80001648:	00100793          	li	a5,1
    8000164c:	00006717          	auipc	a4,0x6
    80001650:	bcf72223          	sw	a5,-1084(a4) # 80007210 <threadEnd>
    data->buffer->put('!');
    80001654:	02100593          	li	a1,33
    80001658:	0084b503          	ld	a0,8(s1)
    8000165c:	00001097          	auipc	ra,0x1
    80001660:	790080e7          	jalr	1936(ra) # 80002dec <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    80001664:	0104b503          	ld	a0,16(s1)
    80001668:	00000097          	auipc	ra,0x0
    8000166c:	d34080e7          	jalr	-716(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
}
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	00013903          	ld	s2,0(sp)
    80001680:	02010113          	addi	sp,sp,32
    80001684:	00008067          	ret

0000000080001688 <_Z8producerPv>:

void producer(void *arg) {
    80001688:	fe010113          	addi	sp,sp,-32
    8000168c:	00113c23          	sd	ra,24(sp)
    80001690:	00813823          	sd	s0,16(sp)
    80001694:	00913423          	sd	s1,8(sp)
    80001698:	01213023          	sd	s2,0(sp)
    8000169c:	02010413          	addi	s0,sp,32
    800016a0:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800016a4:	00000913          	li	s2,0
    800016a8:	00c0006f          	j	800016b4 <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800016ac:	00000097          	auipc	ra,0x0
    800016b0:	c48080e7          	jalr	-952(ra) # 800012f4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800016b4:	00006797          	auipc	a5,0x6
    800016b8:	b5c7a783          	lw	a5,-1188(a5) # 80007210 <threadEnd>
    800016bc:	02079e63          	bnez	a5,800016f8 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800016c0:	0004a583          	lw	a1,0(s1)
    800016c4:	0305859b          	addiw	a1,a1,48
    800016c8:	0084b503          	ld	a0,8(s1)
    800016cc:	00001097          	auipc	ra,0x1
    800016d0:	720080e7          	jalr	1824(ra) # 80002dec <_ZN6Buffer3putEi>
        i++;
    800016d4:	0019071b          	addiw	a4,s2,1
    800016d8:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    800016dc:	0004a683          	lw	a3,0(s1)
    800016e0:	0026979b          	slliw	a5,a3,0x2
    800016e4:	00d787bb          	addw	a5,a5,a3
    800016e8:	0017979b          	slliw	a5,a5,0x1
    800016ec:	02f767bb          	remw	a5,a4,a5
    800016f0:	fc0792e3          	bnez	a5,800016b4 <_Z8producerPv+0x2c>
    800016f4:	fb9ff06f          	j	800016ac <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    800016f8:	0104b503          	ld	a0,16(s1)
    800016fc:	00000097          	auipc	ra,0x0
    80001700:	ca0080e7          	jalr	-864(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
}
    80001704:	01813083          	ld	ra,24(sp)
    80001708:	01013403          	ld	s0,16(sp)
    8000170c:	00813483          	ld	s1,8(sp)
    80001710:	00013903          	ld	s2,0(sp)
    80001714:	02010113          	addi	sp,sp,32
    80001718:	00008067          	ret

000000008000171c <_Z8consumerPv>:

void consumer(void *arg) {
    8000171c:	fd010113          	addi	sp,sp,-48
    80001720:	02113423          	sd	ra,40(sp)
    80001724:	02813023          	sd	s0,32(sp)
    80001728:	00913c23          	sd	s1,24(sp)
    8000172c:	01213823          	sd	s2,16(sp)
    80001730:	01313423          	sd	s3,8(sp)
    80001734:	03010413          	addi	s0,sp,48
    80001738:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    8000173c:	00000993          	li	s3,0
    80001740:	01c0006f          	j	8000175c <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    80001744:	00000097          	auipc	ra,0x0
    80001748:	bb0080e7          	jalr	-1104(ra) # 800012f4 <_Z15thread_dispatchv>
    8000174c:	0500006f          	j	8000179c <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80001750:	00a00513          	li	a0,10
    80001754:	00000097          	auipc	ra,0x0
    80001758:	c9c080e7          	jalr	-868(ra) # 800013f0 <_Z4putcc>
    while (!threadEnd) {
    8000175c:	00006797          	auipc	a5,0x6
    80001760:	ab47a783          	lw	a5,-1356(a5) # 80007210 <threadEnd>
    80001764:	06079063          	bnez	a5,800017c4 <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80001768:	00893503          	ld	a0,8(s2)
    8000176c:	00001097          	auipc	ra,0x1
    80001770:	710080e7          	jalr	1808(ra) # 80002e7c <_ZN6Buffer3getEv>
        i++;
    80001774:	0019849b          	addiw	s1,s3,1
    80001778:	0004899b          	sext.w	s3,s1
        putc(key);
    8000177c:	0ff57513          	andi	a0,a0,255
    80001780:	00000097          	auipc	ra,0x0
    80001784:	c70080e7          	jalr	-912(ra) # 800013f0 <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    80001788:	00092703          	lw	a4,0(s2)
    8000178c:	0027179b          	slliw	a5,a4,0x2
    80001790:	00e787bb          	addw	a5,a5,a4
    80001794:	02f4e7bb          	remw	a5,s1,a5
    80001798:	fa0786e3          	beqz	a5,80001744 <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    8000179c:	05000793          	li	a5,80
    800017a0:	02f4e4bb          	remw	s1,s1,a5
    800017a4:	fa049ce3          	bnez	s1,8000175c <_Z8consumerPv+0x40>
    800017a8:	fa9ff06f          	j	80001750 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800017ac:	00893503          	ld	a0,8(s2)
    800017b0:	00001097          	auipc	ra,0x1
    800017b4:	6cc080e7          	jalr	1740(ra) # 80002e7c <_ZN6Buffer3getEv>
        putc(key);
    800017b8:	0ff57513          	andi	a0,a0,255
    800017bc:	00000097          	auipc	ra,0x0
    800017c0:	c34080e7          	jalr	-972(ra) # 800013f0 <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800017c4:	00893503          	ld	a0,8(s2)
    800017c8:	00001097          	auipc	ra,0x1
    800017cc:	740080e7          	jalr	1856(ra) # 80002f08 <_ZN6Buffer6getCntEv>
    800017d0:	fca04ee3          	bgtz	a0,800017ac <_Z8consumerPv+0x90>
    }

    sem_signal(data->wait);
    800017d4:	01093503          	ld	a0,16(s2)
    800017d8:	00000097          	auipc	ra,0x0
    800017dc:	bc4080e7          	jalr	-1084(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
}
    800017e0:	02813083          	ld	ra,40(sp)
    800017e4:	02013403          	ld	s0,32(sp)
    800017e8:	01813483          	ld	s1,24(sp)
    800017ec:	01013903          	ld	s2,16(sp)
    800017f0:	00813983          	ld	s3,8(sp)
    800017f4:	03010113          	addi	sp,sp,48
    800017f8:	00008067          	ret

00000000800017fc <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    800017fc:	f9010113          	addi	sp,sp,-112
    80001800:	06113423          	sd	ra,104(sp)
    80001804:	06813023          	sd	s0,96(sp)
    80001808:	04913c23          	sd	s1,88(sp)
    8000180c:	05213823          	sd	s2,80(sp)
    80001810:	05313423          	sd	s3,72(sp)
    80001814:	05413023          	sd	s4,64(sp)
    80001818:	03513c23          	sd	s5,56(sp)
    8000181c:	03613823          	sd	s6,48(sp)
    80001820:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    80001824:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80001828:	00004517          	auipc	a0,0x4
    8000182c:	7f850513          	addi	a0,a0,2040 # 80006020 <CONSOLE_STATUS+0x10>
    80001830:	00001097          	auipc	ra,0x1
    80001834:	f1c080e7          	jalr	-228(ra) # 8000274c <_Z11printStringPKc>
    getString(input, 30);
    80001838:	01e00593          	li	a1,30
    8000183c:	fa040493          	addi	s1,s0,-96
    80001840:	00048513          	mv	a0,s1
    80001844:	00001097          	auipc	ra,0x1
    80001848:	f84080e7          	jalr	-124(ra) # 800027c8 <_Z9getStringPci>
    threadNum = stringToInt(input);
    8000184c:	00048513          	mv	a0,s1
    80001850:	00001097          	auipc	ra,0x1
    80001854:	044080e7          	jalr	68(ra) # 80002894 <_Z11stringToIntPKc>
    80001858:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    8000185c:	00004517          	auipc	a0,0x4
    80001860:	7e450513          	addi	a0,a0,2020 # 80006040 <CONSOLE_STATUS+0x30>
    80001864:	00001097          	auipc	ra,0x1
    80001868:	ee8080e7          	jalr	-280(ra) # 8000274c <_Z11printStringPKc>
    getString(input, 30);
    8000186c:	01e00593          	li	a1,30
    80001870:	00048513          	mv	a0,s1
    80001874:	00001097          	auipc	ra,0x1
    80001878:	f54080e7          	jalr	-172(ra) # 800027c8 <_Z9getStringPci>
    n = stringToInt(input);
    8000187c:	00048513          	mv	a0,s1
    80001880:	00001097          	auipc	ra,0x1
    80001884:	014080e7          	jalr	20(ra) # 80002894 <_Z11stringToIntPKc>
    80001888:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    8000188c:	00004517          	auipc	a0,0x4
    80001890:	7d450513          	addi	a0,a0,2004 # 80006060 <CONSOLE_STATUS+0x50>
    80001894:	00001097          	auipc	ra,0x1
    80001898:	eb8080e7          	jalr	-328(ra) # 8000274c <_Z11printStringPKc>
    8000189c:	00000613          	li	a2,0
    800018a0:	00a00593          	li	a1,10
    800018a4:	00090513          	mv	a0,s2
    800018a8:	00001097          	auipc	ra,0x1
    800018ac:	03c080e7          	jalr	60(ra) # 800028e4 <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800018b0:	00004517          	auipc	a0,0x4
    800018b4:	7c850513          	addi	a0,a0,1992 # 80006078 <CONSOLE_STATUS+0x68>
    800018b8:	00001097          	auipc	ra,0x1
    800018bc:	e94080e7          	jalr	-364(ra) # 8000274c <_Z11printStringPKc>
    800018c0:	00000613          	li	a2,0
    800018c4:	00a00593          	li	a1,10
    800018c8:	00048513          	mv	a0,s1
    800018cc:	00001097          	auipc	ra,0x1
    800018d0:	018080e7          	jalr	24(ra) # 800028e4 <_Z8printIntiii>
    printString(".\n");
    800018d4:	00004517          	auipc	a0,0x4
    800018d8:	7bc50513          	addi	a0,a0,1980 # 80006090 <CONSOLE_STATUS+0x80>
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	e70080e7          	jalr	-400(ra) # 8000274c <_Z11printStringPKc>
    if(threadNum > n) {
    800018e4:	0324c463          	blt	s1,s2,8000190c <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    800018e8:	03205c63          	blez	s2,80001920 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    800018ec:	03800513          	li	a0,56
    800018f0:	00000097          	auipc	ra,0x0
    800018f4:	2a8080e7          	jalr	680(ra) # 80001b98 <_Znwm>
    800018f8:	00050a13          	mv	s4,a0
    800018fc:	00048593          	mv	a1,s1
    80001900:	00001097          	auipc	ra,0x1
    80001904:	450080e7          	jalr	1104(ra) # 80002d50 <_ZN6BufferC1Ei>
    80001908:	0300006f          	j	80001938 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    8000190c:	00004517          	auipc	a0,0x4
    80001910:	78c50513          	addi	a0,a0,1932 # 80006098 <CONSOLE_STATUS+0x88>
    80001914:	00001097          	auipc	ra,0x1
    80001918:	e38080e7          	jalr	-456(ra) # 8000274c <_Z11printStringPKc>
        return;
    8000191c:	0140006f          	j	80001930 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001920:	00004517          	auipc	a0,0x4
    80001924:	7b850513          	addi	a0,a0,1976 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001928:	00001097          	auipc	ra,0x1
    8000192c:	e24080e7          	jalr	-476(ra) # 8000274c <_Z11printStringPKc>
        return;
    80001930:	000b0113          	mv	sp,s6
    80001934:	1500006f          	j	80001a84 <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80001938:	00000593          	li	a1,0
    8000193c:	00006517          	auipc	a0,0x6
    80001940:	8dc50513          	addi	a0,a0,-1828 # 80007218 <waitForAll>
    80001944:	00000097          	auipc	ra,0x0
    80001948:	9d0080e7          	jalr	-1584(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    thread_t threads[threadNum];
    8000194c:	00391793          	slli	a5,s2,0x3
    80001950:	00f78793          	addi	a5,a5,15
    80001954:	ff07f793          	andi	a5,a5,-16
    80001958:	40f10133          	sub	sp,sp,a5
    8000195c:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80001960:	0019071b          	addiw	a4,s2,1
    80001964:	00171793          	slli	a5,a4,0x1
    80001968:	00e787b3          	add	a5,a5,a4
    8000196c:	00379793          	slli	a5,a5,0x3
    80001970:	00f78793          	addi	a5,a5,15
    80001974:	ff07f793          	andi	a5,a5,-16
    80001978:	40f10133          	sub	sp,sp,a5
    8000197c:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80001980:	00191613          	slli	a2,s2,0x1
    80001984:	012607b3          	add	a5,a2,s2
    80001988:	00379793          	slli	a5,a5,0x3
    8000198c:	00f987b3          	add	a5,s3,a5
    80001990:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001994:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80001998:	00006717          	auipc	a4,0x6
    8000199c:	88073703          	ld	a4,-1920(a4) # 80007218 <waitForAll>
    800019a0:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    800019a4:	00078613          	mv	a2,a5
    800019a8:	00000597          	auipc	a1,0x0
    800019ac:	d7458593          	addi	a1,a1,-652 # 8000171c <_Z8consumerPv>
    800019b0:	f9840513          	addi	a0,s0,-104
    800019b4:	00000097          	auipc	ra,0x0
    800019b8:	8e4080e7          	jalr	-1820(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800019bc:	00000493          	li	s1,0
    800019c0:	0280006f          	j	800019e8 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    800019c4:	00000597          	auipc	a1,0x0
    800019c8:	c1458593          	addi	a1,a1,-1004 # 800015d8 <_Z16producerKeyboardPv>
                      data + i);
    800019cc:	00179613          	slli	a2,a5,0x1
    800019d0:	00f60633          	add	a2,a2,a5
    800019d4:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    800019d8:	00c98633          	add	a2,s3,a2
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	8bc080e7          	jalr	-1860(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    800019e4:	0014849b          	addiw	s1,s1,1
    800019e8:	0524d263          	bge	s1,s2,80001a2c <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    800019ec:	00149793          	slli	a5,s1,0x1
    800019f0:	009787b3          	add	a5,a5,s1
    800019f4:	00379793          	slli	a5,a5,0x3
    800019f8:	00f987b3          	add	a5,s3,a5
    800019fc:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001a00:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80001a04:	00006717          	auipc	a4,0x6
    80001a08:	81473703          	ld	a4,-2028(a4) # 80007218 <waitForAll>
    80001a0c:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80001a10:	00048793          	mv	a5,s1
    80001a14:	00349513          	slli	a0,s1,0x3
    80001a18:	00aa8533          	add	a0,s5,a0
    80001a1c:	fa9054e3          	blez	s1,800019c4 <_Z22producerConsumer_C_APIv+0x1c8>
    80001a20:	00000597          	auipc	a1,0x0
    80001a24:	c6858593          	addi	a1,a1,-920 # 80001688 <_Z8producerPv>
    80001a28:	fa5ff06f          	j	800019cc <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80001a2c:	00000097          	auipc	ra,0x0
    80001a30:	8c8080e7          	jalr	-1848(ra) # 800012f4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80001a34:	00000493          	li	s1,0
    80001a38:	00994e63          	blt	s2,s1,80001a54 <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80001a3c:	00005517          	auipc	a0,0x5
    80001a40:	7dc53503          	ld	a0,2012(a0) # 80007218 <waitForAll>
    80001a44:	00000097          	auipc	ra,0x0
    80001a48:	92c080e7          	jalr	-1748(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80001a4c:	0014849b          	addiw	s1,s1,1
    80001a50:	fe9ff06f          	j	80001a38 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80001a54:	00005517          	auipc	a0,0x5
    80001a58:	7c453503          	ld	a0,1988(a0) # 80007218 <waitForAll>
    80001a5c:	00000097          	auipc	ra,0x0
    80001a60:	8e8080e7          	jalr	-1816(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    delete buffer;
    80001a64:	000a0e63          	beqz	s4,80001a80 <_Z22producerConsumer_C_APIv+0x284>
    80001a68:	000a0513          	mv	a0,s4
    80001a6c:	00001097          	auipc	ra,0x1
    80001a70:	524080e7          	jalr	1316(ra) # 80002f90 <_ZN6BufferD1Ev>
    80001a74:	000a0513          	mv	a0,s4
    80001a78:	00000097          	auipc	ra,0x0
    80001a7c:	170080e7          	jalr	368(ra) # 80001be8 <_ZdlPv>
    80001a80:	000b0113          	mv	sp,s6

}
    80001a84:	f9040113          	addi	sp,s0,-112
    80001a88:	06813083          	ld	ra,104(sp)
    80001a8c:	06013403          	ld	s0,96(sp)
    80001a90:	05813483          	ld	s1,88(sp)
    80001a94:	05013903          	ld	s2,80(sp)
    80001a98:	04813983          	ld	s3,72(sp)
    80001a9c:	04013a03          	ld	s4,64(sp)
    80001aa0:	03813a83          	ld	s5,56(sp)
    80001aa4:	03013b03          	ld	s6,48(sp)
    80001aa8:	07010113          	addi	sp,sp,112
    80001aac:	00008067          	ret
    80001ab0:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80001ab4:	000a0513          	mv	a0,s4
    80001ab8:	00000097          	auipc	ra,0x0
    80001abc:	130080e7          	jalr	304(ra) # 80001be8 <_ZdlPv>
    80001ac0:	00048513          	mv	a0,s1
    80001ac4:	00007097          	auipc	ra,0x7
    80001ac8:	874080e7          	jalr	-1932(ra) # 80008338 <_Unwind_Resume>

0000000080001acc <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001acc:	ff010113          	addi	sp,sp,-16
    80001ad0:	00113423          	sd	ra,8(sp)
    80001ad4:	00813023          	sd	s0,0(sp)
    80001ad8:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80001adc:	00000097          	auipc	ra,0x0
    80001ae0:	d20080e7          	jalr	-736(ra) # 800017fc <_Z22producerConsumer_C_APIv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001ae4:	00813083          	ld	ra,8(sp)
    80001ae8:	00013403          	ld	s0,0(sp)
    80001aec:	01010113          	addi	sp,sp,16
    80001af0:	00008067          	ret

0000000080001af4 <main>:
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

void userMain();

int main() {
    80001af4:	ff010113          	addi	sp,sp,-16
    80001af8:	00113423          	sd	ra,8(sp)
    80001afc:	00813023          	sd	s0,0(sp)
    80001b00:	01010413          	addi	s0,sp,16

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001b04:	00000593          	li	a1,0
    80001b08:	00000513          	li	a0,0
    80001b0c:	00000097          	auipc	ra,0x0
    80001b10:	5fc080e7          	jalr	1532(ra) # 80002108 <_ZN3TCB12createThreadEPFvPvES0_>
    80001b14:	00005797          	auipc	a5,0x5
    80001b18:	6947b783          	ld	a5,1684(a5) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001b1c:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001b20:	00005797          	auipc	a5,0x5
    80001b24:	6687b783          	ld	a5,1640(a5) # 80007188 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001b28:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001b2c:	00200793          	li	a5,2
    80001b30:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    userMain();
    80001b34:	00000097          	auipc	ra,0x0
    80001b38:	f98080e7          	jalr	-104(ra) # 80001acc <_Z8userMainv>

    return 0;

    80001b3c:	00000513          	li	a0,0
    80001b40:	00813083          	ld	ra,8(sp)
    80001b44:	00013403          	ld	s0,0(sp)
    80001b48:	01010113          	addi	sp,sp,16
    80001b4c:	00008067          	ret

0000000080001b50 <_ZN6ThreadD1Ev>:

Thread::Thread() {

}

Thread::~Thread() {
    80001b50:	ff010113          	addi	sp,sp,-16
    80001b54:	00813423          	sd	s0,8(sp)
    80001b58:	01010413          	addi	s0,sp,16

}
    80001b5c:	00813403          	ld	s0,8(sp)
    80001b60:	01010113          	addi	sp,sp,16
    80001b64:	00008067          	ret

0000000080001b68 <_ZN6Thread3runEv>:

void Thread::run() {
    80001b68:	ff010113          	addi	sp,sp,-16
    80001b6c:	00813423          	sd	s0,8(sp)
    80001b70:	01010413          	addi	s0,sp,16

}
    80001b74:	00813403          	ld	s0,8(sp)
    80001b78:	01010113          	addi	sp,sp,16
    80001b7c:	00008067          	ret

0000000080001b80 <_ZN9SemaphoreD1Ev>:

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {
    80001b80:	ff010113          	addi	sp,sp,-16
    80001b84:	00813423          	sd	s0,8(sp)
    80001b88:	01010413          	addi	s0,sp,16
//    sem_close(myHandle);
}
    80001b8c:	00813403          	ld	s0,8(sp)
    80001b90:	01010113          	addi	sp,sp,16
    80001b94:	00008067          	ret

0000000080001b98 <_Znwm>:
{
    80001b98:	ff010113          	addi	sp,sp,-16
    80001b9c:	00113423          	sd	ra,8(sp)
    80001ba0:	00813023          	sd	s0,0(sp)
    80001ba4:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001ba8:	00003097          	auipc	ra,0x3
    80001bac:	650080e7          	jalr	1616(ra) # 800051f8 <__mem_alloc>
}
    80001bb0:	00813083          	ld	ra,8(sp)
    80001bb4:	00013403          	ld	s0,0(sp)
    80001bb8:	01010113          	addi	sp,sp,16
    80001bbc:	00008067          	ret

0000000080001bc0 <_Znam>:
{
    80001bc0:	ff010113          	addi	sp,sp,-16
    80001bc4:	00113423          	sd	ra,8(sp)
    80001bc8:	00813023          	sd	s0,0(sp)
    80001bcc:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001bd0:	00003097          	auipc	ra,0x3
    80001bd4:	628080e7          	jalr	1576(ra) # 800051f8 <__mem_alloc>
}
    80001bd8:	00813083          	ld	ra,8(sp)
    80001bdc:	00013403          	ld	s0,0(sp)
    80001be0:	01010113          	addi	sp,sp,16
    80001be4:	00008067          	ret

0000000080001be8 <_ZdlPv>:
{
    80001be8:	ff010113          	addi	sp,sp,-16
    80001bec:	00113423          	sd	ra,8(sp)
    80001bf0:	00813023          	sd	s0,0(sp)
    80001bf4:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001bf8:	00003097          	auipc	ra,0x3
    80001bfc:	534080e7          	jalr	1332(ra) # 8000512c <__mem_free>
}
    80001c00:	00813083          	ld	ra,8(sp)
    80001c04:	00013403          	ld	s0,0(sp)
    80001c08:	01010113          	addi	sp,sp,16
    80001c0c:	00008067          	ret

0000000080001c10 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001c10:	ff010113          	addi	sp,sp,-16
    80001c14:	00113423          	sd	ra,8(sp)
    80001c18:	00813023          	sd	s0,0(sp)
    80001c1c:	01010413          	addi	s0,sp,16
}
    80001c20:	00000097          	auipc	ra,0x0
    80001c24:	fc8080e7          	jalr	-56(ra) # 80001be8 <_ZdlPv>
    80001c28:	00813083          	ld	ra,8(sp)
    80001c2c:	00013403          	ld	s0,0(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
}
    80001c48:	00000097          	auipc	ra,0x0
    80001c4c:	fa0080e7          	jalr	-96(ra) # 80001be8 <_ZdlPv>
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_ZdaPv>:
{
    80001c60:	ff010113          	addi	sp,sp,-16
    80001c64:	00113423          	sd	ra,8(sp)
    80001c68:	00813023          	sd	s0,0(sp)
    80001c6c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c70:	00003097          	auipc	ra,0x3
    80001c74:	4bc080e7          	jalr	1212(ra) # 8000512c <__mem_free>
}
    80001c78:	00813083          	ld	ra,8(sp)
    80001c7c:	00013403          	ld	s0,0(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZN6Thread5startEv>:
int Thread::start (){
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    int a = thread_create(&myHandle, myHandle->getBody(), myHandle->getArg());
    80001c98:	00853783          	ld	a5,8(a0)
    80001c9c:	0087b603          	ld	a2,8(a5)
    80001ca0:	0007b583          	ld	a1,0(a5)
    80001ca4:	00850513          	addi	a0,a0,8
    80001ca8:	fffff097          	auipc	ra,0xfffff
    80001cac:	5f0080e7          	jalr	1520(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001cb0:	00813083          	ld	ra,8(sp)
    80001cb4:	00013403          	ld	s0,0(sp)
    80001cb8:	01010113          	addi	sp,sp,16
    80001cbc:	00008067          	ret

0000000080001cc0 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80001cc0:	ff010113          	addi	sp,sp,-16
    80001cc4:	00113423          	sd	ra,8(sp)
    80001cc8:	00813023          	sd	s0,0(sp)
    80001ccc:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001cd0:	fffff097          	auipc	ra,0xfffff
    80001cd4:	624080e7          	jalr	1572(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001cd8:	00813083          	ld	ra,8(sp)
    80001cdc:	00013403          	ld	s0,0(sp)
    80001ce0:	01010113          	addi	sp,sp,16
    80001ce4:	00008067          	ret

0000000080001ce8 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001ce8:	ff010113          	addi	sp,sp,-16
    80001cec:	00813423          	sd	s0,8(sp)
    80001cf0:	01010413          	addi	s0,sp,16
    80001cf4:	00005797          	auipc	a5,0x5
    80001cf8:	43478793          	addi	a5,a5,1076 # 80007128 <_ZTV6Thread+0x10>
    80001cfc:	00f53023          	sd	a5,0(a0)
}
    80001d00:	00813403          	ld	s0,8(sp)
    80001d04:	01010113          	addi	sp,sp,16
    80001d08:	00008067          	ret

0000000080001d0c <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001d0c:	ff010113          	addi	sp,sp,-16
    80001d10:	00813423          	sd	s0,8(sp)
    80001d14:	01010413          	addi	s0,sp,16
}
    80001d18:	00000513          	li	a0,0
    80001d1c:	00813403          	ld	s0,8(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001d38:	00853503          	ld	a0,8(a0)
    80001d3c:	fffff097          	auipc	ra,0xfffff
    80001d40:	634080e7          	jalr	1588(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
}
    80001d44:	00813083          	ld	ra,8(sp)
    80001d48:	00013403          	ld	s0,0(sp)
    80001d4c:	01010113          	addi	sp,sp,16
    80001d50:	00008067          	ret

0000000080001d54 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001d54:	ff010113          	addi	sp,sp,-16
    80001d58:	00113423          	sd	ra,8(sp)
    80001d5c:	00813023          	sd	s0,0(sp)
    80001d60:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001d64:	00853503          	ld	a0,8(a0)
    80001d68:	fffff097          	auipc	ra,0xfffff
    80001d6c:	634080e7          	jalr	1588(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
}
    80001d70:	00813083          	ld	ra,8(sp)
    80001d74:	00013403          	ld	s0,0(sp)
    80001d78:	01010113          	addi	sp,sp,16
    80001d7c:	00008067          	ret

0000000080001d80 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001d80:	fe010113          	addi	sp,sp,-32
    80001d84:	00113c23          	sd	ra,24(sp)
    80001d88:	00813823          	sd	s0,16(sp)
    80001d8c:	00913423          	sd	s1,8(sp)
    80001d90:	02010413          	addi	s0,sp,32
    80001d94:	00050493          	mv	s1,a0
    80001d98:	00000097          	auipc	ra,0x0
    80001d9c:	f50080e7          	jalr	-176(ra) # 80001ce8 <_ZN6ThreadC1Ev>
    80001da0:	00005797          	auipc	a5,0x5
    80001da4:	35878793          	addi	a5,a5,856 # 800070f8 <_ZTV14PeriodicThread+0x10>
    80001da8:	00f4b023          	sd	a5,0(s1)

}
    80001dac:	01813083          	ld	ra,24(sp)
    80001db0:	01013403          	ld	s0,16(sp)
    80001db4:	00813483          	ld	s1,8(sp)
    80001db8:	02010113          	addi	sp,sp,32
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN7Console4getcEv>:

char Console::getc() {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    return __getc();
    80001dd0:	00003097          	auipc	ra,0x3
    80001dd4:	5bc080e7          	jalr	1468(ra) # 8000538c <__getc>
}
    80001dd8:	00813083          	ld	ra,8(sp)
    80001ddc:	00013403          	ld	s0,0(sp)
    80001de0:	01010113          	addi	sp,sp,16
    80001de4:	00008067          	ret

0000000080001de8 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001de8:	ff010113          	addi	sp,sp,-16
    80001dec:	00113423          	sd	ra,8(sp)
    80001df0:	00813023          	sd	s0,0(sp)
    80001df4:	01010413          	addi	s0,sp,16
    __putc(c);
    80001df8:	00003097          	auipc	ra,0x3
    80001dfc:	558080e7          	jalr	1368(ra) # 80005350 <__putc>
}
    80001e00:	00813083          	ld	ra,8(sp)
    80001e04:	00013403          	ld	s0,0(sp)
    80001e08:	01010113          	addi	sp,sp,16
    80001e0c:	00008067          	ret

0000000080001e10 <_ZN14PeriodicThread18periodicActivationEv>:


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001e10:	ff010113          	addi	sp,sp,-16
    80001e14:	00813423          	sd	s0,8(sp)
    80001e18:	01010413          	addi	s0,sp,16
    80001e1c:	00813403          	ld	s0,8(sp)
    80001e20:	01010113          	addi	sp,sp,16
    80001e24:	00008067          	ret

0000000080001e28 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001e28:	ff010113          	addi	sp,sp,-16
    80001e2c:	00813423          	sd	s0,8(sp)
    80001e30:	01010413          	addi	s0,sp,16
    80001e34:	00005797          	auipc	a5,0x5
    80001e38:	2c478793          	addi	a5,a5,708 # 800070f8 <_ZTV14PeriodicThread+0x10>
    80001e3c:	00f53023          	sd	a5,0(a0)
    80001e40:	00813403          	ld	s0,8(sp)
    80001e44:	01010113          	addi	sp,sp,16
    80001e48:	00008067          	ret

0000000080001e4c <_ZN14PeriodicThreadD0Ev>:
    80001e4c:	ff010113          	addi	sp,sp,-16
    80001e50:	00113423          	sd	ra,8(sp)
    80001e54:	00813023          	sd	s0,0(sp)
    80001e58:	01010413          	addi	s0,sp,16
    80001e5c:	00005797          	auipc	a5,0x5
    80001e60:	29c78793          	addi	a5,a5,668 # 800070f8 <_ZTV14PeriodicThread+0x10>
    80001e64:	00f53023          	sd	a5,0(a0)
    80001e68:	00000097          	auipc	ra,0x0
    80001e6c:	d80080e7          	jalr	-640(ra) # 80001be8 <_ZdlPv>
    80001e70:	00813083          	ld	ra,8(sp)
    80001e74:	00013403          	ld	s0,0(sp)
    80001e78:	01010113          	addi	sp,sp,16
    80001e7c:	00008067          	ret

0000000080001e80 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80001e80:	ff010113          	addi	sp,sp,-16
    80001e84:	00813423          	sd	s0,8(sp)
    80001e88:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001e8c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001e90:	10200073          	sret
}
    80001e94:	00813403          	ld	s0,8(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001ea0:	fa010113          	addi	sp,sp,-96
    80001ea4:	04113c23          	sd	ra,88(sp)
    80001ea8:	04813823          	sd	s0,80(sp)
    80001eac:	04913423          	sd	s1,72(sp)
    80001eb0:	05213023          	sd	s2,64(sp)
    80001eb4:	03313c23          	sd	s3,56(sp)
    80001eb8:	03413823          	sd	s4,48(sp)
    80001ebc:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001ec0:	142027f3          	csrr	a5,scause
    80001ec4:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001ec8:	fa043703          	ld	a4,-96(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001ecc:	ff870693          	addi	a3,a4,-8
    80001ed0:	00100793          	li	a5,1
    80001ed4:	02d7f863          	bgeu	a5,a3,80001f04 <_ZN5Riscv20handleSupervisorTrapEv+0x64>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80001ed8:	fff00793          	li	a5,-1
    80001edc:	03f79793          	slli	a5,a5,0x3f
    80001ee0:	00178793          	addi	a5,a5,1
    80001ee4:	1af70c63          	beq	a4,a5,8000209c <_ZN5Riscv20handleSupervisorTrapEv+0x1fc>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80001ee8:	fff00793          	li	a5,-1
    80001eec:	03f79793          	slli	a5,a5,0x3f
    80001ef0:	00978793          	addi	a5,a5,9
    80001ef4:	0af71e63          	bne	a4,a5,80001fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001ef8:	00003097          	auipc	ra,0x3
    80001efc:	4cc080e7          	jalr	1228(ra) # 800053c4 <console_handler>
    } else
    {
        // unexpected trap cause
    }
    80001f00:	0b00006f          	j	80001fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f04:	141027f3          	csrr	a5,sepc
    80001f08:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001f0c:	fb843483          	ld	s1,-72(s0)
        uint64 sepc = r_sepc() + 4;
    80001f10:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f14:	100027f3          	csrr	a5,sstatus
    80001f18:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001f1c:	fb043903          	ld	s2,-80(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001f20:	00050793          	mv	a5,a0
    80001f24:	faf43423          	sd	a5,-88(s0)
    return a0;
    80001f28:	fa843783          	ld	a5,-88(s0)
        if (a0 == 0x0000000000000001UL){
    80001f2c:	00100713          	li	a4,1
    80001f30:	06e78c63          	beq	a5,a4,80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        else if (a0 == 0x0000000000000002UL){
    80001f34:	00200713          	li	a4,2
    80001f38:	06e78863          	beq	a5,a4,80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        else if (a0 == 0x0000000000000011UL){
    80001f3c:	01100713          	li	a4,17
    80001f40:	04e78463          	beq	a5,a4,80001f88 <_ZN5Riscv20handleSupervisorTrapEv+0xe8>
        else if (a0 == 0x0000000000000012UL){
    80001f44:	01200713          	li	a4,18
    80001f48:	08e78863          	beq	a5,a4,80001fd8 <_ZN5Riscv20handleSupervisorTrapEv+0x138>
        else if (a0 == 0x0000000000000013UL){
    80001f4c:	01300713          	li	a4,19
    80001f50:	08e78c63          	beq	a5,a4,80001fe8 <_ZN5Riscv20handleSupervisorTrapEv+0x148>
        else if (a0 == 0x0000000000000021UL) {
    80001f54:	02100713          	li	a4,33
    80001f58:	0ae78463          	beq	a5,a4,80002000 <_ZN5Riscv20handleSupervisorTrapEv+0x160>
        else if (a0 == 0x0000000000000022UL) {
    80001f5c:	02200713          	li	a4,34
    80001f60:	0ce78e63          	beq	a5,a4,8000203c <_ZN5Riscv20handleSupervisorTrapEv+0x19c>
        else if (a0 == 0x0000000000000023UL) {
    80001f64:	02300713          	li	a4,35
    80001f68:	12e78063          	beq	a5,a4,80002088 <_ZN5Riscv20handleSupervisorTrapEv+0x1e8>
        else if (a0 == 0x0000000000000024UL) {
    80001f6c:	02400713          	li	a4,36
    80001f70:	02e79c63          	bne	a5,a4,80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80001f74:	00058513          	mv	a0,a1
            a=sem->signal();
    80001f78:	fffff097          	auipc	ra,0xfffff
    80001f7c:	5d4080e7          	jalr	1492(ra) # 8000154c <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80001f80:	00050513          	mv	a0,a0
    80001f84:	0240006f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80001f88:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));
    80001f8c:	00068593          	mv	a1,a3
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80001f90:	00058793          	mv	a5,a1
            tcb = TCB::createThread(a2, a3);
    80001f94:	00000097          	auipc	ra,0x0
    80001f98:	174080e7          	jalr	372(ra) # 80002108 <_ZN3TCB12createThreadEPFvPvES0_>
            uint64 a= (tcb!= nullptr)?0: -1;
    80001f9c:	02050a63          	beqz	a0,80001fd0 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
    80001fa0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80001fa4:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80001fa8:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80001fac:	14149073          	csrw	sepc,s1
    80001fb0:	05813083          	ld	ra,88(sp)
    80001fb4:	05013403          	ld	s0,80(sp)
    80001fb8:	04813483          	ld	s1,72(sp)
    80001fbc:	04013903          	ld	s2,64(sp)
    80001fc0:	03813983          	ld	s3,56(sp)
    80001fc4:	03013a03          	ld	s4,48(sp)
    80001fc8:	06010113          	addi	sp,sp,96
    80001fcc:	00008067          	ret
            uint64 a= (tcb!= nullptr)?0: -1;
    80001fd0:	fff00793          	li	a5,-1
    80001fd4:	fd1ff06f          	j	80001fa4 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a=TCB::exitThread();
    80001fd8:	00000097          	auipc	ra,0x0
    80001fdc:	300080e7          	jalr	768(ra) # 800022d8 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80001fe0:	00050513          	mv	a0,a0
    80001fe4:	fc5ff06f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            TCB::timeSliceCounter = 0;
    80001fe8:	00005797          	auipc	a5,0x5
    80001fec:	1a87b783          	ld	a5,424(a5) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    80001ff0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80001ff4:	00000097          	auipc	ra,0x0
    80001ff8:	1e8080e7          	jalr	488(ra) # 800021dc <_ZN3TCB8dispatchEv>
    80001ffc:	fadff06f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002000:	00060a13          	mv	s4,a2
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002004:	00058993          	mv	s3,a1
            *sem = new Ksemaphore(a2);
    80002008:	01800513          	li	a0,24
    8000200c:	00000097          	auipc	ra,0x0
    80002010:	b8c080e7          	jalr	-1140(ra) # 80001b98 <_Znwm>

typedef Ksemaphore* sem_t;

class Ksemaphore{
public:
    Ksemaphore(unsigned init =1):val(init){}
    80002014:	01452023          	sw	s4,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002018:	00053423          	sd	zero,8(a0)
    8000201c:	00053823          	sd	zero,16(a0)
    80002020:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    80002024:	00098863          	beqz	s3,80002034 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
    80002028:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000202c:	00078513          	mv	a0,a5
    80002030:	f79ff06f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
            uint64 a= (sem!= nullptr)?0: -1;
    80002034:	fff00793          	li	a5,-1
    80002038:	ff5ff06f          	j	8000202c <_ZN5Riscv20handleSupervisorTrapEv+0x18c>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    8000203c:	00058993          	mv	s3,a1
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    80002040:	0089b783          	ld	a5,8(s3)
    80002044:	02078e63          	beqz	a5,80002080 <_ZN5Riscv20handleSupervisorTrapEv+0x1e0>
        return head->data;
    80002048:	0007b783          	ld	a5,0(a5)
            if(sem->blocked.peekFirst()== nullptr){
    8000204c:	00079c63          	bnez	a5,80002064 <_ZN5Riscv20handleSupervisorTrapEv+0x1c4>
                a=0;
    80002050:	00000793          	li	a5,0
    80002054:	0240006f          	j	80002078 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
                    sem->signal();
    80002058:	00098513          	mv	a0,s3
    8000205c:	fffff097          	auipc	ra,0xfffff
    80002060:	4f0080e7          	jalr	1264(ra) # 8000154c <_ZN10Ksemaphore6signalEv>
        if (!head) { return 0; }
    80002064:	0089b783          	ld	a5,8(s3)
    80002068:	fe0788e3          	beqz	a5,80002058 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
        return head->data;
    8000206c:	0007b783          	ld	a5,0(a5)
                while(sem->blocked.peekFirst()== nullptr){
    80002070:	fe0784e3          	beqz	a5,80002058 <_ZN5Riscv20handleSupervisorTrapEv+0x1b8>
                a=-1;
    80002074:	fff00793          	li	a5,-1
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002078:	00078513          	mv	a0,a5
    8000207c:	f2dff06f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
                a=0;
    80002080:	00000793          	li	a5,0
    80002084:	ff5ff06f          	j	80002078 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002088:	00058513          	mv	a0,a1
            a=sem->wait();
    8000208c:	fffff097          	auipc	ra,0xfffff
    80002090:	478080e7          	jalr	1144(ra) # 80001504 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002094:	00050513          	mv	a0,a0
    80002098:	f11ff06f          	j	80001fa8 <_ZN5Riscv20handleSupervisorTrapEv+0x108>
        TCB::timeSliceCounter++;
    8000209c:	00005717          	auipc	a4,0x5
    800020a0:	0f473703          	ld	a4,244(a4) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    800020a4:	00073783          	ld	a5,0(a4)
    800020a8:	00178793          	addi	a5,a5,1
    800020ac:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    800020b0:	00005717          	auipc	a4,0x5
    800020b4:	0f873703          	ld	a4,248(a4) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    800020b8:	00073703          	ld	a4,0(a4)
    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    800020bc:	02873703          	ld	a4,40(a4)
    800020c0:	00e7f863          	bgeu	a5,a4,800020d0 <_ZN5Riscv20handleSupervisorTrapEv+0x230>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    800020c4:	00200793          	li	a5,2
    800020c8:	1447b073          	csrc	sip,a5
}
    800020cc:	ee5ff06f          	j	80001fb0 <_ZN5Riscv20handleSupervisorTrapEv+0x110>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    800020d0:	141027f3          	csrr	a5,sepc
    800020d4:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    800020d8:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800020dc:	100027f3          	csrr	a5,sstatus
    800020e0:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    800020e4:	fc043903          	ld	s2,-64(s0)
            TCB::timeSliceCounter = 0;
    800020e8:	00005797          	auipc	a5,0x5
    800020ec:	0a87b783          	ld	a5,168(a5) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    800020f0:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    800020f4:	00000097          	auipc	ra,0x0
    800020f8:	0e8080e7          	jalr	232(ra) # 800021dc <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    800020fc:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002100:	14149073          	csrw	sepc,s1
}
    80002104:	fc1ff06f          	j	800020c4 <_ZN5Riscv20handleSupervisorTrapEv+0x224>

0000000080002108 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80002108:	fd010113          	addi	sp,sp,-48
    8000210c:	02113423          	sd	ra,40(sp)
    80002110:	02813023          	sd	s0,32(sp)
    80002114:	00913c23          	sd	s1,24(sp)
    80002118:	01213823          	sd	s2,16(sp)
    8000211c:	01313423          	sd	s3,8(sp)
    80002120:	03010413          	addi	s0,sp,48
    80002124:	00050913          	mv	s2,a0
    80002128:	00058993          	mv	s3,a1
//    tcb->context={(uint64) &threadWrapper,
//                     tcb->stack != nullptr ? (uint64) &tcb->stack[DEFAULT_STACK_SIZE] : 0
//                    };
//    tcb->timeSlice=DEFAULT_TIME_SLICE;
//    tcb->finished=false;
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    8000212c:	03800513          	li	a0,56
    80002130:	00000097          	auipc	ra,0x0
    80002134:	a68080e7          	jalr	-1432(ra) # 80001b98 <_Znwm>
    80002138:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    8000213c:	01253023          	sd	s2,0(a0)
    80002140:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    80002144:	00090a63          	beqz	s2,80002158 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    80002148:	00008537          	lui	a0,0x8
    8000214c:	00000097          	auipc	ra,0x0
    80002150:	a74080e7          	jalr	-1420(ra) # 80001bc0 <_Znam>
    80002154:	0080006f          	j	8000215c <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    80002158:	00000513          	li	a0,0
            finished(false)
    8000215c:	00a4b823          	sd	a0,16(s1)
    80002160:	00000797          	auipc	a5,0x0
    80002164:	11c78793          	addi	a5,a5,284 # 8000227c <_ZN3TCB13threadWrapperEv>
    80002168:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    8000216c:	04050663          	beqz	a0,800021b8 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80002170:	000087b7          	lui	a5,0x8
    80002174:	00f507b3          	add	a5,a0,a5
            finished(false)
    80002178:	02f4b023          	sd	a5,32(s1)
    8000217c:	00200793          	li	a5,2
    80002180:	02f4b423          	sd	a5,40(s1)
    80002184:	02048823          	sb	zero,48(s1)
    if (body != nullptr) { Scheduler::put(t); }
    80002188:	00090863          	beqz	s2,80002198 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    8000218c:	00048513          	mv	a0,s1
    80002190:	00000097          	auipc	ra,0x0
    80002194:	268080e7          	jalr	616(ra) # 800023f8 <_ZN9Scheduler3putEP3TCB>
    return t;
}
    80002198:	00048513          	mv	a0,s1
    8000219c:	02813083          	ld	ra,40(sp)
    800021a0:	02013403          	ld	s0,32(sp)
    800021a4:	01813483          	ld	s1,24(sp)
    800021a8:	01013903          	ld	s2,16(sp)
    800021ac:	00813983          	ld	s3,8(sp)
    800021b0:	03010113          	addi	sp,sp,48
    800021b4:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800021b8:	00000793          	li	a5,0
    800021bc:	fbdff06f          	j	80002178 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    800021c0:	00050913          	mv	s2,a0
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    800021c4:	00048513          	mv	a0,s1
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	a20080e7          	jalr	-1504(ra) # 80001be8 <_ZdlPv>
    800021d0:	00090513          	mv	a0,s2
    800021d4:	00006097          	auipc	ra,0x6
    800021d8:	164080e7          	jalr	356(ra) # 80008338 <_Unwind_Resume>

00000000800021dc <_ZN3TCB8dispatchEv>:
    Riscv::popRegisters();

}

void TCB::dispatch()
{
    800021dc:	fe010113          	addi	sp,sp,-32
    800021e0:	00113c23          	sd	ra,24(sp)
    800021e4:	00813823          	sd	s0,16(sp)
    800021e8:	00913423          	sd	s1,8(sp)
    800021ec:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    800021f0:	00005497          	auipc	s1,0x5
    800021f4:	0304b483          	ld	s1,48(s1) # 80007220 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800021f8:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800021fc:	02078c63          	beqz	a5,80002234 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    80002200:	00000097          	auipc	ra,0x0
    80002204:	190080e7          	jalr	400(ra) # 80002390 <_ZN9Scheduler3getEv>
    80002208:	00005797          	auipc	a5,0x5
    8000220c:	00a7bc23          	sd	a0,24(a5) # 80007220 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    80002210:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80002214:	01848513          	addi	a0,s1,24
    80002218:	fffff097          	auipc	ra,0xfffff
    8000221c:	ff8080e7          	jalr	-8(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    80002220:	01813083          	ld	ra,24(sp)
    80002224:	01013403          	ld	s0,16(sp)
    80002228:	00813483          	ld	s1,8(sp)
    8000222c:	02010113          	addi	sp,sp,32
    80002230:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80002234:	00048513          	mv	a0,s1
    80002238:	00000097          	auipc	ra,0x0
    8000223c:	1c0080e7          	jalr	448(ra) # 800023f8 <_ZN9Scheduler3putEP3TCB>
    80002240:	fc1ff06f          	j	80002200 <_ZN3TCB8dispatchEv+0x24>

0000000080002244 <_ZN3TCB5yieldEv>:
{
    80002244:	ff010113          	addi	sp,sp,-16
    80002248:	00113423          	sd	ra,8(sp)
    8000224c:	00813023          	sd	s0,0(sp)
    80002250:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002254:	fffff097          	auipc	ra,0xfffff
    80002258:	dac080e7          	jalr	-596(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    8000225c:	00000097          	auipc	ra,0x0
    80002260:	f80080e7          	jalr	-128(ra) # 800021dc <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002264:	fffff097          	auipc	ra,0xfffff
    80002268:	e18080e7          	jalr	-488(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	00913423          	sd	s1,8(sp)
    8000228c:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002290:	00000097          	auipc	ra,0x0
    80002294:	bf0080e7          	jalr	-1040(ra) # 80001e80 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002298:	00005497          	auipc	s1,0x5
    8000229c:	f8848493          	addi	s1,s1,-120 # 80007220 <_ZN3TCB7runningE>
    800022a0:	0004b783          	ld	a5,0(s1)
    800022a4:	0007b703          	ld	a4,0(a5)
    800022a8:	0087b503          	ld	a0,8(a5)
    800022ac:	000700e7          	jalr	a4
    running->setFinished(true);
    800022b0:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    800022b4:	00100713          	li	a4,1
    800022b8:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    800022bc:	00000097          	auipc	ra,0x0
    800022c0:	f88080e7          	jalr	-120(ra) # 80002244 <_ZN3TCB5yieldEv>
}
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret

00000000800022d8 <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    800022d8:	fe010113          	addi	sp,sp,-32
    800022dc:	00113c23          	sd	ra,24(sp)
    800022e0:	00813823          	sd	s0,16(sp)
    800022e4:	00913423          	sd	s1,8(sp)
    800022e8:	01213023          	sd	s2,0(sp)
    800022ec:	02010413          	addi	s0,sp,32
    running->setFinished(true);
    800022f0:	00005497          	auipc	s1,0x5
    800022f4:	f3048493          	addi	s1,s1,-208 # 80007220 <_ZN3TCB7runningE>
    800022f8:	0004b903          	ld	s2,0(s1)
    800022fc:	00100793          	li	a5,1
    80002300:	02f90823          	sb	a5,48(s2)
    TCB *old = running;
    running = Scheduler::get();
    80002304:	00000097          	auipc	ra,0x0
    80002308:	08c080e7          	jalr	140(ra) # 80002390 <_ZN9Scheduler3getEv>
    8000230c:	00a4b023          	sd	a0,0(s1)
    timeSliceCounter=0;
    80002310:	0004b423          	sd	zero,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002314:	01850593          	addi	a1,a0,24
    80002318:	01890513          	addi	a0,s2,24
    8000231c:	fffff097          	auipc	ra,0xfffff
    80002320:	ef4080e7          	jalr	-268(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    if (running== nullptr)return -1;
    80002324:	0004b783          	ld	a5,0(s1)
    80002328:	02078063          	beqz	a5,80002348 <_ZN3TCB10exitThreadEv+0x70>
    return 0;
    8000232c:	00000513          	li	a0,0
}
    80002330:	01813083          	ld	ra,24(sp)
    80002334:	01013403          	ld	s0,16(sp)
    80002338:	00813483          	ld	s1,8(sp)
    8000233c:	00013903          	ld	s2,0(sp)
    80002340:	02010113          	addi	sp,sp,32
    80002344:	00008067          	ret
    if (running== nullptr)return -1;
    80002348:	fff00513          	li	a0,-1
    8000234c:	fe5ff06f          	j	80002330 <_ZN3TCB10exitThreadEv+0x58>

0000000080002350 <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

Scheduler *Scheduler::getInstance() {
    return this->instance;
}
    80002350:	ff010113          	addi	sp,sp,-16
    80002354:	00813423          	sd	s0,8(sp)
    80002358:	01010413          	addi	s0,sp,16
    8000235c:	00100793          	li	a5,1
    80002360:	00f50863          	beq	a0,a5,80002370 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002364:	00813403          	ld	s0,8(sp)
    80002368:	01010113          	addi	sp,sp,16
    8000236c:	00008067          	ret
    80002370:	000107b7          	lui	a5,0x10
    80002374:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002378:	fef596e3          	bne	a1,a5,80002364 <_Z41__static_initialization_and_destruction_0ii+0x14>
    8000237c:	00005797          	auipc	a5,0x5
    80002380:	eb478793          	addi	a5,a5,-332 # 80007230 <_ZN9Scheduler16readyThreadQueueE>
    80002384:	0007b023          	sd	zero,0(a5)
    80002388:	0007b423          	sd	zero,8(a5)
    8000238c:	fd9ff06f          	j	80002364 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002390 <_ZN9Scheduler3getEv>:
{
    80002390:	fe010113          	addi	sp,sp,-32
    80002394:	00113c23          	sd	ra,24(sp)
    80002398:	00813823          	sd	s0,16(sp)
    8000239c:	00913423          	sd	s1,8(sp)
    800023a0:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    800023a4:	00005517          	auipc	a0,0x5
    800023a8:	e8c53503          	ld	a0,-372(a0) # 80007230 <_ZN9Scheduler16readyThreadQueueE>
    800023ac:	04050263          	beqz	a0,800023f0 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    800023b0:	00853783          	ld	a5,8(a0)
    800023b4:	00005717          	auipc	a4,0x5
    800023b8:	e6f73e23          	sd	a5,-388(a4) # 80007230 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800023bc:	02078463          	beqz	a5,800023e4 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800023c0:	00053483          	ld	s1,0(a0)
        delete elem;
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	824080e7          	jalr	-2012(ra) # 80001be8 <_ZdlPv>
}
    800023cc:	00048513          	mv	a0,s1
    800023d0:	01813083          	ld	ra,24(sp)
    800023d4:	01013403          	ld	s0,16(sp)
    800023d8:	00813483          	ld	s1,8(sp)
    800023dc:	02010113          	addi	sp,sp,32
    800023e0:	00008067          	ret
        if (!head) { tail = 0; }
    800023e4:	00005797          	auipc	a5,0x5
    800023e8:	e407ba23          	sd	zero,-428(a5) # 80007238 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800023ec:	fd5ff06f          	j	800023c0 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800023f0:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800023f4:	fd9ff06f          	j	800023cc <_ZN9Scheduler3getEv+0x3c>

00000000800023f8 <_ZN9Scheduler3putEP3TCB>:
{
    800023f8:	fe010113          	addi	sp,sp,-32
    800023fc:	00113c23          	sd	ra,24(sp)
    80002400:	00813823          	sd	s0,16(sp)
    80002404:	00913423          	sd	s1,8(sp)
    80002408:	02010413          	addi	s0,sp,32
    8000240c:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80002410:	01000513          	li	a0,16
    80002414:	fffff097          	auipc	ra,0xfffff
    80002418:	784080e7          	jalr	1924(ra) # 80001b98 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    8000241c:	00953023          	sd	s1,0(a0)
    80002420:	00053423          	sd	zero,8(a0)
        if (tail)
    80002424:	00005797          	auipc	a5,0x5
    80002428:	e147b783          	ld	a5,-492(a5) # 80007238 <_ZN9Scheduler16readyThreadQueueE+0x8>
    8000242c:	02078263          	beqz	a5,80002450 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002430:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002434:	00005797          	auipc	a5,0x5
    80002438:	e0a7b223          	sd	a0,-508(a5) # 80007238 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    8000243c:	01813083          	ld	ra,24(sp)
    80002440:	01013403          	ld	s0,16(sp)
    80002444:	00813483          	ld	s1,8(sp)
    80002448:	02010113          	addi	sp,sp,32
    8000244c:	00008067          	ret
            head = tail = elem;
    80002450:	00005797          	auipc	a5,0x5
    80002454:	de078793          	addi	a5,a5,-544 # 80007230 <_ZN9Scheduler16readyThreadQueueE>
    80002458:	00a7b423          	sd	a0,8(a5)
    8000245c:	00a7b023          	sd	a0,0(a5)
    80002460:	fddff06f          	j	8000243c <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002464 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002464:	ff010113          	addi	sp,sp,-16
    80002468:	00813423          	sd	s0,8(sp)
    8000246c:	01010413          	addi	s0,sp,16
}
    80002470:	00053503          	ld	a0,0(a0)
    80002474:	00813403          	ld	s0,8(sp)
    80002478:	01010113          	addi	sp,sp,16
    8000247c:	00008067          	ret

0000000080002480 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80002480:	ff010113          	addi	sp,sp,-16
    80002484:	00113423          	sd	ra,8(sp)
    80002488:	00813023          	sd	s0,0(sp)
    8000248c:	01010413          	addi	s0,sp,16
    80002490:	000105b7          	lui	a1,0x10
    80002494:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002498:	00100513          	li	a0,1
    8000249c:	00000097          	auipc	ra,0x0
    800024a0:	eb4080e7          	jalr	-332(ra) # 80002350 <_Z41__static_initialization_and_destruction_0ii>
    800024a4:	00813083          	ld	ra,8(sp)
    800024a8:	00013403          	ld	s0,0(sp)
    800024ac:	01010113          	addi	sp,sp,16
    800024b0:	00008067          	ret

00000000800024b4 <_Z41__static_initialization_and_destruction_0ii>:
    if (block!= nullptr){
        block->free= true;
        return 0;
    }
    return 1;
}
    800024b4:	ff010113          	addi	sp,sp,-16
    800024b8:	00813423          	sd	s0,8(sp)
    800024bc:	01010413          	addi	s0,sp,16
    800024c0:	00100793          	li	a5,1
    800024c4:	00f50863          	beq	a0,a5,800024d4 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800024c8:	00813403          	ld	s0,8(sp)
    800024cc:	01010113          	addi	sp,sp,16
    800024d0:	00008067          	ret
    800024d4:	000107b7          	lui	a5,0x10
    800024d8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800024dc:	fef596e3          	bne	a1,a5,800024c8 <_Z41__static_initialization_and_destruction_0ii+0x14>
char* MemoryAllocator::heapStart = (char *)HEAP_START_ADDR;
    800024e0:	00005797          	auipc	a5,0x5
    800024e4:	ca07b783          	ld	a5,-864(a5) # 80007180 <_GLOBAL_OFFSET_TABLE_+0x8>
    800024e8:	0007b783          	ld	a5,0(a5)
    800024ec:	00005717          	auipc	a4,0x5
    800024f0:	d4f73a23          	sd	a5,-684(a4) # 80007240 <_ZN15MemoryAllocator9heapStartE>
}
    800024f4:	fd5ff06f          	j	800024c8 <_Z41__static_initialization_and_destruction_0ii+0x14>

00000000800024f8 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator *MemoryAllocator::getInstance() {
    800024f8:	ff010113          	addi	sp,sp,-16
    800024fc:	00813423          	sd	s0,8(sp)
    80002500:	01010413          	addi	s0,sp,16
    if (MemoryAllocator::instance == nullptr){
    80002504:	00005797          	auipc	a5,0x5
    80002508:	d447b783          	ld	a5,-700(a5) # 80007248 <_ZN15MemoryAllocator8instanceE>
    8000250c:	00078c63          	beqz	a5,80002524 <_ZN15MemoryAllocator11getInstanceEv+0x2c>
}
    80002510:	00005517          	auipc	a0,0x5
    80002514:	d3853503          	ld	a0,-712(a0) # 80007248 <_ZN15MemoryAllocator8instanceE>
    80002518:	00813403          	ld	s0,8(sp)
    8000251c:	01010113          	addi	sp,sp,16
    80002520:	00008067          	ret
        instance = (MemoryAllocator*)HEAP_START_ADDR;
    80002524:	00005797          	auipc	a5,0x5
    80002528:	d1c78793          	addi	a5,a5,-740 # 80007240 <_ZN15MemoryAllocator9heapStartE>
    8000252c:	00005717          	auipc	a4,0x5
    80002530:	c5473703          	ld	a4,-940(a4) # 80007180 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002534:	00073703          	ld	a4,0(a4)
    80002538:	00e7b423          	sd	a4,8(a5)
        heapStart= heapStart + sizeof(MemoryAllocator);
    8000253c:	0007b703          	ld	a4,0(a5)
    80002540:	00170713          	addi	a4,a4,1
    80002544:	00e7b023          	sd	a4,0(a5)
    80002548:	fc9ff06f          	j	80002510 <_ZN15MemoryAllocator11getInstanceEv+0x18>

000000008000254c <_ZN15MemoryAllocator11allocInHeapEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    8000254c:	ff010113          	addi	sp,sp,-16
    80002550:	00813423          	sd	s0,8(sp)
    80002554:	01010413          	addi	s0,sp,16
    inline size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }

    inline size_t allocSize(size_t size) {
        return size + sizeof(BlockHeader);
    80002558:	01858713          	addi	a4,a1,24
    if((heapStart + sizeB) > ((char*)HEAP_END_ADDR - 1)){
    8000255c:	00005517          	auipc	a0,0x5
    80002560:	ce453503          	ld	a0,-796(a0) # 80007240 <_ZN15MemoryAllocator9heapStartE>
    80002564:	00e50733          	add	a4,a0,a4
    80002568:	00005797          	auipc	a5,0x5
    8000256c:	c487b783          	ld	a5,-952(a5) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    80002570:	0007b783          	ld	a5,0(a5)
    80002574:	fff78793          	addi	a5,a5,-1
    80002578:	02e7e263          	bltu	a5,a4,8000259c <_ZN15MemoryAllocator11allocInHeapEm+0x50>
    blockStart->free=false;
    8000257c:	00050823          	sb	zero,16(a0)
    blockStart->size=size;
    80002580:	00b53423          	sd	a1,8(a0)
    heapStart+=size;
    80002584:	00b505b3          	add	a1,a0,a1
    80002588:	00005797          	auipc	a5,0x5
    8000258c:	cab7bc23          	sd	a1,-840(a5) # 80007240 <_ZN15MemoryAllocator9heapStartE>
}
    80002590:	00813403          	ld	s0,8(sp)
    80002594:	01010113          	addi	sp,sp,16
    80002598:	00008067          	ret
        return nullptr;
    8000259c:	00000513          	li	a0,0
    800025a0:	ff1ff06f          	j	80002590 <_ZN15MemoryAllocator11allocInHeapEm+0x44>

00000000800025a4 <_ZN15MemoryAllocator8firstfitEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::firstfit(size_t size){
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    BlockHeader* block =blockHead;
    800025b0:	00005517          	auipc	a0,0x5
    800025b4:	ca053503          	ld	a0,-864(a0) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
    800025b8:	0080006f          	j	800025c0 <_ZN15MemoryAllocator8firstfitEm+0x1c>
            block=block->next;
    800025bc:	00053503          	ld	a0,0(a0)
    while(block!= nullptr){
    800025c0:	00050c63          	beqz	a0,800025d8 <_ZN15MemoryAllocator8firstfitEm+0x34>
        if(!block->free || block->size < size){
    800025c4:	01054783          	lbu	a5,16(a0)
    800025c8:	fe078ae3          	beqz	a5,800025bc <_ZN15MemoryAllocator8firstfitEm+0x18>
    800025cc:	00853783          	ld	a5,8(a0)
    800025d0:	feb7e6e3          	bltu	a5,a1,800025bc <_ZN15MemoryAllocator8firstfitEm+0x18>
        block->free= false;
    800025d4:	00050823          	sb	zero,16(a0)
}
    800025d8:	00813403          	ld	s0,8(sp)
    800025dc:	01010113          	addi	sp,sp,16
    800025e0:	00008067          	ret

00000000800025e4 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>:
MemoryAllocator::BlockHeader* MemoryAllocator::findBlock(BlockHeader* p){
    800025e4:	ff010113          	addi	sp,sp,-16
    800025e8:	00813423          	sd	s0,8(sp)
    800025ec:	01010413          	addi	s0,sp,16
    for(block=blockHead; block != nullptr; block=block->next){
    800025f0:	00005517          	auipc	a0,0x5
    800025f4:	c6053503          	ld	a0,-928(a0) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
    800025f8:	00050863          	beqz	a0,80002608 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
        if(block==p){
    800025fc:	00b50663          	beq	a0,a1,80002608 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
    for(block=blockHead; block != nullptr; block=block->next){
    80002600:	00053503          	ld	a0,0(a0)
    80002604:	ff5ff06f          	j	800025f8 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x14>
}
    80002608:	00813403          	ld	s0,8(sp)
    8000260c:	01010113          	addi	sp,sp,16
    80002610:	00008067          	ret

0000000080002614 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t size){
    80002614:	fe010113          	addi	sp,sp,-32
    80002618:	00113c23          	sd	ra,24(sp)
    8000261c:	00813823          	sd	s0,16(sp)
    80002620:	00913423          	sd	s1,8(sp)
    80002624:	01213023          	sd	s2,0(sp)
    80002628:	02010413          	addi	s0,sp,32
    8000262c:	00050913          	mv	s2,a0
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    80002630:	03f58493          	addi	s1,a1,63
    80002634:	fc04f493          	andi	s1,s1,-64
    if (BlockHeader* block = firstfit(size)){
    80002638:	00048593          	mv	a1,s1
    8000263c:	00000097          	auipc	ra,0x0
    80002640:	f68080e7          	jalr	-152(ra) # 800025a4 <_ZN15MemoryAllocator8firstfitEm>
    80002644:	02050a63          	beqz	a0,80002678 <_ZN15MemoryAllocator6mallocEm+0x64>
        if (blockHead == nullptr)blockHead=block;
    80002648:	00005797          	auipc	a5,0x5
    8000264c:	c087b783          	ld	a5,-1016(a5) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
    80002650:	00078e63          	beqz	a5,8000266c <_ZN15MemoryAllocator6mallocEm+0x58>
}
    80002654:	01813083          	ld	ra,24(sp)
    80002658:	01013403          	ld	s0,16(sp)
    8000265c:	00813483          	ld	s1,8(sp)
    80002660:	00013903          	ld	s2,0(sp)
    80002664:	02010113          	addi	sp,sp,32
    80002668:	00008067          	ret
        if (blockHead == nullptr)blockHead=block;
    8000266c:	00005797          	auipc	a5,0x5
    80002670:	bea7b223          	sd	a0,-1052(a5) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
        return block;
    80002674:	fe1ff06f          	j	80002654 <_ZN15MemoryAllocator6mallocEm+0x40>
    BlockHeader* block = allocInHeap(size);
    80002678:	00048593          	mv	a1,s1
    8000267c:	00090513          	mv	a0,s2
    80002680:	00000097          	auipc	ra,0x0
    80002684:	ecc080e7          	jalr	-308(ra) # 8000254c <_ZN15MemoryAllocator11allocInHeapEm>
    if(blockHead == nullptr){
    80002688:	00005797          	auipc	a5,0x5
    8000268c:	bc87b783          	ld	a5,-1080(a5) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
    80002690:	02078063          	beqz	a5,800026b0 <_ZN15MemoryAllocator6mallocEm+0x9c>
    if(top != nullptr){
    80002694:	00005797          	auipc	a5,0x5
    80002698:	bc47b783          	ld	a5,-1084(a5) # 80007258 <_ZN15MemoryAllocator3topE>
    8000269c:	00078463          	beqz	a5,800026a4 <_ZN15MemoryAllocator6mallocEm+0x90>
        top->next=block;
    800026a0:	00a7b023          	sd	a0,0(a5)
    top=block;
    800026a4:	00005797          	auipc	a5,0x5
    800026a8:	baa7ba23          	sd	a0,-1100(a5) # 80007258 <_ZN15MemoryAllocator3topE>
    return block;
    800026ac:	fa9ff06f          	j	80002654 <_ZN15MemoryAllocator6mallocEm+0x40>
        blockHead = block;
    800026b0:	00005797          	auipc	a5,0x5
    800026b4:	baa7b023          	sd	a0,-1120(a5) # 80007250 <_ZN15MemoryAllocator9blockHeadE>
    800026b8:	fddff06f          	j	80002694 <_ZN15MemoryAllocator6mallocEm+0x80>

00000000800026bc <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* p){
    800026bc:	ff010113          	addi	sp,sp,-16
    800026c0:	00113423          	sd	ra,8(sp)
    800026c4:	00813023          	sd	s0,0(sp)
    800026c8:	01010413          	addi	s0,sp,16
    BlockHeader* block = findBlock((BlockHeader*)p);
    800026cc:	00000097          	auipc	ra,0x0
    800026d0:	f18080e7          	jalr	-232(ra) # 800025e4 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>
    if (block!= nullptr){
    800026d4:	02050063          	beqz	a0,800026f4 <_ZN15MemoryAllocator4freeEPv+0x38>
        block->free= true;
    800026d8:	00100793          	li	a5,1
    800026dc:	00f50823          	sb	a5,16(a0)
        return 0;
    800026e0:	00000513          	li	a0,0
}
    800026e4:	00813083          	ld	ra,8(sp)
    800026e8:	00013403          	ld	s0,0(sp)
    800026ec:	01010113          	addi	sp,sp,16
    800026f0:	00008067          	ret
    return 1;
    800026f4:	00100513          	li	a0,1
    800026f8:	fedff06f          	j	800026e4 <_ZN15MemoryAllocator4freeEPv+0x28>

00000000800026fc <_GLOBAL__sub_I__ZN15MemoryAllocator9heapStartE>:
}
    800026fc:	ff010113          	addi	sp,sp,-16
    80002700:	00113423          	sd	ra,8(sp)
    80002704:	00813023          	sd	s0,0(sp)
    80002708:	01010413          	addi	s0,sp,16
    8000270c:	000105b7          	lui	a1,0x10
    80002710:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002714:	00100513          	li	a0,1
    80002718:	00000097          	auipc	ra,0x0
    8000271c:	d9c080e7          	jalr	-612(ra) # 800024b4 <_Z41__static_initialization_and_destruction_0ii>
    80002720:	00813083          	ld	ra,8(sp)
    80002724:	00013403          	ld	s0,0(sp)
    80002728:	01010113          	addi	sp,sp,16
    8000272c:	00008067          	ret

0000000080002730 <_Z9mainStariv>:
//#include "../lib/console.h"
//#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"


int mainStari(){
    80002730:	ff010113          	addi	sp,sp,-16
    80002734:	00813423          	sd	s0,8(sp)
    80002738:	01010413          	addi	s0,sp,16
//        __putc(character + 30);
//    }
//    MemoryAllocator* mem = MemoryAllocator::getInstance();

    return 0;
    8000273c:	00000513          	li	a0,0
    80002740:	00813403          	ld	s0,8(sp)
    80002744:	01010113          	addi	sp,sp,16
    80002748:	00008067          	ret

000000008000274c <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    8000274c:	fe010113          	addi	sp,sp,-32
    80002750:	00113c23          	sd	ra,24(sp)
    80002754:	00813823          	sd	s0,16(sp)
    80002758:	00913423          	sd	s1,8(sp)
    8000275c:	02010413          	addi	s0,sp,32
    80002760:	00050493          	mv	s1,a0
    LOCK();
    80002764:	00100613          	li	a2,1
    80002768:	00000593          	li	a1,0
    8000276c:	00005517          	auipc	a0,0x5
    80002770:	af450513          	addi	a0,a0,-1292 # 80007260 <lockPrint>
    80002774:	fffff097          	auipc	ra,0xfffff
    80002778:	ab0080e7          	jalr	-1360(ra) # 80001224 <copy_and_swap>
    8000277c:	fe0514e3          	bnez	a0,80002764 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002780:	0004c503          	lbu	a0,0(s1)
    80002784:	00050a63          	beqz	a0,80002798 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002788:	fffff097          	auipc	ra,0xfffff
    8000278c:	c68080e7          	jalr	-920(ra) # 800013f0 <_Z4putcc>
        string++;
    80002790:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002794:	fedff06f          	j	80002780 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002798:	00000613          	li	a2,0
    8000279c:	00100593          	li	a1,1
    800027a0:	00005517          	auipc	a0,0x5
    800027a4:	ac050513          	addi	a0,a0,-1344 # 80007260 <lockPrint>
    800027a8:	fffff097          	auipc	ra,0xfffff
    800027ac:	a7c080e7          	jalr	-1412(ra) # 80001224 <copy_and_swap>
    800027b0:	fe0514e3          	bnez	a0,80002798 <_Z11printStringPKc+0x4c>
}
    800027b4:	01813083          	ld	ra,24(sp)
    800027b8:	01013403          	ld	s0,16(sp)
    800027bc:	00813483          	ld	s1,8(sp)
    800027c0:	02010113          	addi	sp,sp,32
    800027c4:	00008067          	ret

00000000800027c8 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    800027c8:	fd010113          	addi	sp,sp,-48
    800027cc:	02113423          	sd	ra,40(sp)
    800027d0:	02813023          	sd	s0,32(sp)
    800027d4:	00913c23          	sd	s1,24(sp)
    800027d8:	01213823          	sd	s2,16(sp)
    800027dc:	01313423          	sd	s3,8(sp)
    800027e0:	01413023          	sd	s4,0(sp)
    800027e4:	03010413          	addi	s0,sp,48
    800027e8:	00050993          	mv	s3,a0
    800027ec:	00058a13          	mv	s4,a1
    LOCK();
    800027f0:	00100613          	li	a2,1
    800027f4:	00000593          	li	a1,0
    800027f8:	00005517          	auipc	a0,0x5
    800027fc:	a6850513          	addi	a0,a0,-1432 # 80007260 <lockPrint>
    80002800:	fffff097          	auipc	ra,0xfffff
    80002804:	a24080e7          	jalr	-1500(ra) # 80001224 <copy_and_swap>
    80002808:	fe0514e3          	bnez	a0,800027f0 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    8000280c:	00000913          	li	s2,0
    80002810:	00090493          	mv	s1,s2
    80002814:	0019091b          	addiw	s2,s2,1
    80002818:	03495a63          	bge	s2,s4,8000284c <_Z9getStringPci+0x84>
        cc = getc();
    8000281c:	fffff097          	auipc	ra,0xfffff
    80002820:	bac080e7          	jalr	-1108(ra) # 800013c8 <_Z4getcv>
        if(cc < 1)
    80002824:	02050463          	beqz	a0,8000284c <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002828:	009984b3          	add	s1,s3,s1
    8000282c:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002830:	00a00793          	li	a5,10
    80002834:	00f50a63          	beq	a0,a5,80002848 <_Z9getStringPci+0x80>
    80002838:	00d00793          	li	a5,13
    8000283c:	fcf51ae3          	bne	a0,a5,80002810 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002840:	00090493          	mv	s1,s2
    80002844:	0080006f          	j	8000284c <_Z9getStringPci+0x84>
    80002848:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    8000284c:	009984b3          	add	s1,s3,s1
    80002850:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002854:	00000613          	li	a2,0
    80002858:	00100593          	li	a1,1
    8000285c:	00005517          	auipc	a0,0x5
    80002860:	a0450513          	addi	a0,a0,-1532 # 80007260 <lockPrint>
    80002864:	fffff097          	auipc	ra,0xfffff
    80002868:	9c0080e7          	jalr	-1600(ra) # 80001224 <copy_and_swap>
    8000286c:	fe0514e3          	bnez	a0,80002854 <_Z9getStringPci+0x8c>
    return buf;
}
    80002870:	00098513          	mv	a0,s3
    80002874:	02813083          	ld	ra,40(sp)
    80002878:	02013403          	ld	s0,32(sp)
    8000287c:	01813483          	ld	s1,24(sp)
    80002880:	01013903          	ld	s2,16(sp)
    80002884:	00813983          	ld	s3,8(sp)
    80002888:	00013a03          	ld	s4,0(sp)
    8000288c:	03010113          	addi	sp,sp,48
    80002890:	00008067          	ret

0000000080002894 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    800028a0:	00050693          	mv	a3,a0
    int n;

    n = 0;
    800028a4:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    800028a8:	0006c603          	lbu	a2,0(a3)
    800028ac:	fd06071b          	addiw	a4,a2,-48
    800028b0:	0ff77713          	andi	a4,a4,255
    800028b4:	00900793          	li	a5,9
    800028b8:	02e7e063          	bltu	a5,a4,800028d8 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    800028bc:	0025179b          	slliw	a5,a0,0x2
    800028c0:	00a787bb          	addw	a5,a5,a0
    800028c4:	0017979b          	slliw	a5,a5,0x1
    800028c8:	00168693          	addi	a3,a3,1
    800028cc:	00c787bb          	addw	a5,a5,a2
    800028d0:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    800028d4:	fd5ff06f          	j	800028a8 <_Z11stringToIntPKc+0x14>
    return n;
}
    800028d8:	00813403          	ld	s0,8(sp)
    800028dc:	01010113          	addi	sp,sp,16
    800028e0:	00008067          	ret

00000000800028e4 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    800028e4:	fc010113          	addi	sp,sp,-64
    800028e8:	02113c23          	sd	ra,56(sp)
    800028ec:	02813823          	sd	s0,48(sp)
    800028f0:	02913423          	sd	s1,40(sp)
    800028f4:	03213023          	sd	s2,32(sp)
    800028f8:	01313c23          	sd	s3,24(sp)
    800028fc:	04010413          	addi	s0,sp,64
    80002900:	00050493          	mv	s1,a0
    80002904:	00058913          	mv	s2,a1
    80002908:	00060993          	mv	s3,a2
    LOCK();
    8000290c:	00100613          	li	a2,1
    80002910:	00000593          	li	a1,0
    80002914:	00005517          	auipc	a0,0x5
    80002918:	94c50513          	addi	a0,a0,-1716 # 80007260 <lockPrint>
    8000291c:	fffff097          	auipc	ra,0xfffff
    80002920:	908080e7          	jalr	-1784(ra) # 80001224 <copy_and_swap>
    80002924:	fe0514e3          	bnez	a0,8000290c <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002928:	00098463          	beqz	s3,80002930 <_Z8printIntiii+0x4c>
    8000292c:	0804c463          	bltz	s1,800029b4 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002930:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002934:	00000593          	li	a1,0
    }

    i = 0;
    80002938:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    8000293c:	0009079b          	sext.w	a5,s2
    80002940:	0325773b          	remuw	a4,a0,s2
    80002944:	00048613          	mv	a2,s1
    80002948:	0014849b          	addiw	s1,s1,1
    8000294c:	02071693          	slli	a3,a4,0x20
    80002950:	0206d693          	srli	a3,a3,0x20
    80002954:	00005717          	auipc	a4,0x5
    80002958:	80c70713          	addi	a4,a4,-2036 # 80007160 <digits>
    8000295c:	00d70733          	add	a4,a4,a3
    80002960:	00074683          	lbu	a3,0(a4)
    80002964:	fd040713          	addi	a4,s0,-48
    80002968:	00c70733          	add	a4,a4,a2
    8000296c:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002970:	0005071b          	sext.w	a4,a0
    80002974:	0325553b          	divuw	a0,a0,s2
    80002978:	fcf772e3          	bgeu	a4,a5,8000293c <_Z8printIntiii+0x58>
    if(neg)
    8000297c:	00058c63          	beqz	a1,80002994 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002980:	fd040793          	addi	a5,s0,-48
    80002984:	009784b3          	add	s1,a5,s1
    80002988:	02d00793          	li	a5,45
    8000298c:	fef48823          	sb	a5,-16(s1)
    80002990:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002994:	fff4849b          	addiw	s1,s1,-1
    80002998:	0204c463          	bltz	s1,800029c0 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    8000299c:	fd040793          	addi	a5,s0,-48
    800029a0:	009787b3          	add	a5,a5,s1
    800029a4:	ff07c503          	lbu	a0,-16(a5)
    800029a8:	fffff097          	auipc	ra,0xfffff
    800029ac:	a48080e7          	jalr	-1464(ra) # 800013f0 <_Z4putcc>
    800029b0:	fe5ff06f          	j	80002994 <_Z8printIntiii+0xb0>
        x = -xx;
    800029b4:	4090053b          	negw	a0,s1
        neg = 1;
    800029b8:	00100593          	li	a1,1
        x = -xx;
    800029bc:	f7dff06f          	j	80002938 <_Z8printIntiii+0x54>

    UNLOCK();
    800029c0:	00000613          	li	a2,0
    800029c4:	00100593          	li	a1,1
    800029c8:	00005517          	auipc	a0,0x5
    800029cc:	89850513          	addi	a0,a0,-1896 # 80007260 <lockPrint>
    800029d0:	fffff097          	auipc	ra,0xfffff
    800029d4:	854080e7          	jalr	-1964(ra) # 80001224 <copy_and_swap>
    800029d8:	fe0514e3          	bnez	a0,800029c0 <_Z8printIntiii+0xdc>
    800029dc:	03813083          	ld	ra,56(sp)
    800029e0:	03013403          	ld	s0,48(sp)
    800029e4:	02813483          	ld	s1,40(sp)
    800029e8:	02013903          	ld	s2,32(sp)
    800029ec:	01813983          	ld	s3,24(sp)
    800029f0:	04010113          	addi	sp,sp,64
    800029f4:	00008067          	ret

00000000800029f8 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800029f8:	fe010113          	addi	sp,sp,-32
    800029fc:	00113c23          	sd	ra,24(sp)
    80002a00:	00813823          	sd	s0,16(sp)
    80002a04:	00913423          	sd	s1,8(sp)
    80002a08:	01213023          	sd	s2,0(sp)
    80002a0c:	02010413          	addi	s0,sp,32
    80002a10:	00050493          	mv	s1,a0
    80002a14:	0015859b          	addiw	a1,a1,1
    80002a18:	0005851b          	sext.w	a0,a1
    80002a1c:	00b4a023          	sw	a1,0(s1)
    80002a20:	0004a823          	sw	zero,16(s1)
    80002a24:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002a28:	00251513          	slli	a0,a0,0x2
    80002a2c:	fffff097          	auipc	ra,0xfffff
    80002a30:	818080e7          	jalr	-2024(ra) # 80001244 <_Z9mem_allocm>
    80002a34:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002a38:	01000513          	li	a0,16
    80002a3c:	fffff097          	auipc	ra,0xfffff
    80002a40:	15c080e7          	jalr	348(ra) # 80001b98 <_Znwm>
};


class Semaphore {
public:
    Semaphore (unsigned init = 1){
    80002a44:	00004917          	auipc	s2,0x4
    80002a48:	75c93903          	ld	s2,1884(s2) # 800071a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002a4c:	01090913          	addi	s2,s2,16
    80002a50:	01253023          	sd	s2,0(a0)
    80002a54:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002a58:	01000513          	li	a0,16
    80002a5c:	fffff097          	auipc	ra,0xfffff
    80002a60:	13c080e7          	jalr	316(ra) # 80001b98 <_Znwm>
    80002a64:	01253023          	sd	s2,0(a0)
    80002a68:	00a4bc23          	sd	a0,24(s1)
    mutexHead = new Semaphore(1);
    80002a6c:	01000513          	li	a0,16
    80002a70:	fffff097          	auipc	ra,0xfffff
    80002a74:	128080e7          	jalr	296(ra) # 80001b98 <_Znwm>
    80002a78:	01253023          	sd	s2,0(a0)
    80002a7c:	02a4b423          	sd	a0,40(s1)
    mutexTail = new Semaphore(1);
    80002a80:	01000513          	li	a0,16
    80002a84:	fffff097          	auipc	ra,0xfffff
    80002a88:	114080e7          	jalr	276(ra) # 80001b98 <_Znwm>
    80002a8c:	01253023          	sd	s2,0(a0)
    80002a90:	02a4b823          	sd	a0,48(s1)
}
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00813483          	ld	s1,8(sp)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	02010113          	addi	sp,sp,32
    80002aa8:	00008067          	ret

0000000080002aac <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002aac:	fe010113          	addi	sp,sp,-32
    80002ab0:	00113c23          	sd	ra,24(sp)
    80002ab4:	00813823          	sd	s0,16(sp)
    80002ab8:	00913423          	sd	s1,8(sp)
    80002abc:	01213023          	sd	s2,0(sp)
    80002ac0:	02010413          	addi	s0,sp,32
    80002ac4:	00050493          	mv	s1,a0
    80002ac8:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002acc:	01853503          	ld	a0,24(a0)
    80002ad0:	fffff097          	auipc	ra,0xfffff
    80002ad4:	258080e7          	jalr	600(ra) # 80001d28 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002ad8:	0304b503          	ld	a0,48(s1)
    80002adc:	fffff097          	auipc	ra,0xfffff
    80002ae0:	24c080e7          	jalr	588(ra) # 80001d28 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002ae4:	0084b783          	ld	a5,8(s1)
    80002ae8:	0144a703          	lw	a4,20(s1)
    80002aec:	00271713          	slli	a4,a4,0x2
    80002af0:	00e787b3          	add	a5,a5,a4
    80002af4:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002af8:	0144a783          	lw	a5,20(s1)
    80002afc:	0017879b          	addiw	a5,a5,1
    80002b00:	0004a703          	lw	a4,0(s1)
    80002b04:	02e7e7bb          	remw	a5,a5,a4
    80002b08:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002b0c:	0304b503          	ld	a0,48(s1)
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	244080e7          	jalr	580(ra) # 80001d54 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002b18:	0204b503          	ld	a0,32(s1)
    80002b1c:	fffff097          	auipc	ra,0xfffff
    80002b20:	238080e7          	jalr	568(ra) # 80001d54 <_ZN9Semaphore6signalEv>

}
    80002b24:	01813083          	ld	ra,24(sp)
    80002b28:	01013403          	ld	s0,16(sp)
    80002b2c:	00813483          	ld	s1,8(sp)
    80002b30:	00013903          	ld	s2,0(sp)
    80002b34:	02010113          	addi	sp,sp,32
    80002b38:	00008067          	ret

0000000080002b3c <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002b3c:	fe010113          	addi	sp,sp,-32
    80002b40:	00113c23          	sd	ra,24(sp)
    80002b44:	00813823          	sd	s0,16(sp)
    80002b48:	00913423          	sd	s1,8(sp)
    80002b4c:	01213023          	sd	s2,0(sp)
    80002b50:	02010413          	addi	s0,sp,32
    80002b54:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002b58:	02053503          	ld	a0,32(a0)
    80002b5c:	fffff097          	auipc	ra,0xfffff
    80002b60:	1cc080e7          	jalr	460(ra) # 80001d28 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002b64:	0284b503          	ld	a0,40(s1)
    80002b68:	fffff097          	auipc	ra,0xfffff
    80002b6c:	1c0080e7          	jalr	448(ra) # 80001d28 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002b70:	0084b703          	ld	a4,8(s1)
    80002b74:	0104a783          	lw	a5,16(s1)
    80002b78:	00279693          	slli	a3,a5,0x2
    80002b7c:	00d70733          	add	a4,a4,a3
    80002b80:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002b84:	0017879b          	addiw	a5,a5,1
    80002b88:	0004a703          	lw	a4,0(s1)
    80002b8c:	02e7e7bb          	remw	a5,a5,a4
    80002b90:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002b94:	0284b503          	ld	a0,40(s1)
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	1bc080e7          	jalr	444(ra) # 80001d54 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002ba0:	0184b503          	ld	a0,24(s1)
    80002ba4:	fffff097          	auipc	ra,0xfffff
    80002ba8:	1b0080e7          	jalr	432(ra) # 80001d54 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002bac:	00090513          	mv	a0,s2
    80002bb0:	01813083          	ld	ra,24(sp)
    80002bb4:	01013403          	ld	s0,16(sp)
    80002bb8:	00813483          	ld	s1,8(sp)
    80002bbc:	00013903          	ld	s2,0(sp)
    80002bc0:	02010113          	addi	sp,sp,32
    80002bc4:	00008067          	ret

0000000080002bc8 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002bc8:	fe010113          	addi	sp,sp,-32
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	00813823          	sd	s0,16(sp)
    80002bd4:	00913423          	sd	s1,8(sp)
    80002bd8:	01213023          	sd	s2,0(sp)
    80002bdc:	02010413          	addi	s0,sp,32
    80002be0:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002be4:	02853503          	ld	a0,40(a0)
    80002be8:	fffff097          	auipc	ra,0xfffff
    80002bec:	140080e7          	jalr	320(ra) # 80001d28 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002bf0:	0304b503          	ld	a0,48(s1)
    80002bf4:	fffff097          	auipc	ra,0xfffff
    80002bf8:	134080e7          	jalr	308(ra) # 80001d28 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002bfc:	0144a783          	lw	a5,20(s1)
    80002c00:	0104a903          	lw	s2,16(s1)
    80002c04:	0327ce63          	blt	a5,s2,80002c40 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002c08:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002c0c:	0304b503          	ld	a0,48(s1)
    80002c10:	fffff097          	auipc	ra,0xfffff
    80002c14:	144080e7          	jalr	324(ra) # 80001d54 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002c18:	0284b503          	ld	a0,40(s1)
    80002c1c:	fffff097          	auipc	ra,0xfffff
    80002c20:	138080e7          	jalr	312(ra) # 80001d54 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002c24:	00090513          	mv	a0,s2
    80002c28:	01813083          	ld	ra,24(sp)
    80002c2c:	01013403          	ld	s0,16(sp)
    80002c30:	00813483          	ld	s1,8(sp)
    80002c34:	00013903          	ld	s2,0(sp)
    80002c38:	02010113          	addi	sp,sp,32
    80002c3c:	00008067          	ret
        ret = cap - head + tail;
    80002c40:	0004a703          	lw	a4,0(s1)
    80002c44:	4127093b          	subw	s2,a4,s2
    80002c48:	00f9093b          	addw	s2,s2,a5
    80002c4c:	fc1ff06f          	j	80002c0c <_ZN9BufferCPP6getCntEv+0x44>

0000000080002c50 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002c50:	fe010113          	addi	sp,sp,-32
    80002c54:	00113c23          	sd	ra,24(sp)
    80002c58:	00813823          	sd	s0,16(sp)
    80002c5c:	00913423          	sd	s1,8(sp)
    80002c60:	02010413          	addi	s0,sp,32
    80002c64:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002c68:	00a00513          	li	a0,10
    80002c6c:	fffff097          	auipc	ra,0xfffff
    80002c70:	17c080e7          	jalr	380(ra) # 80001de8 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002c74:	00003517          	auipc	a0,0x3
    80002c78:	49450513          	addi	a0,a0,1172 # 80006108 <CONSOLE_STATUS+0xf8>
    80002c7c:	00000097          	auipc	ra,0x0
    80002c80:	ad0080e7          	jalr	-1328(ra) # 8000274c <_Z11printStringPKc>
    while (getCnt()) {
    80002c84:	00048513          	mv	a0,s1
    80002c88:	00000097          	auipc	ra,0x0
    80002c8c:	f40080e7          	jalr	-192(ra) # 80002bc8 <_ZN9BufferCPP6getCntEv>
    80002c90:	02050c63          	beqz	a0,80002cc8 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002c94:	0084b783          	ld	a5,8(s1)
    80002c98:	0104a703          	lw	a4,16(s1)
    80002c9c:	00271713          	slli	a4,a4,0x2
    80002ca0:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002ca4:	0007c503          	lbu	a0,0(a5)
    80002ca8:	fffff097          	auipc	ra,0xfffff
    80002cac:	140080e7          	jalr	320(ra) # 80001de8 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002cb0:	0104a783          	lw	a5,16(s1)
    80002cb4:	0017879b          	addiw	a5,a5,1
    80002cb8:	0004a703          	lw	a4,0(s1)
    80002cbc:	02e7e7bb          	remw	a5,a5,a4
    80002cc0:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002cc4:	fc1ff06f          	j	80002c84 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002cc8:	02100513          	li	a0,33
    80002ccc:	fffff097          	auipc	ra,0xfffff
    80002cd0:	11c080e7          	jalr	284(ra) # 80001de8 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002cd4:	00a00513          	li	a0,10
    80002cd8:	fffff097          	auipc	ra,0xfffff
    80002cdc:	110080e7          	jalr	272(ra) # 80001de8 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002ce0:	0084b503          	ld	a0,8(s1)
    80002ce4:	ffffe097          	auipc	ra,0xffffe
    80002ce8:	588080e7          	jalr	1416(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    80002cec:	0204b503          	ld	a0,32(s1)
    80002cf0:	00050863          	beqz	a0,80002d00 <_ZN9BufferCPPD1Ev+0xb0>
    80002cf4:	00053783          	ld	a5,0(a0)
    80002cf8:	0087b783          	ld	a5,8(a5)
    80002cfc:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002d00:	0184b503          	ld	a0,24(s1)
    80002d04:	00050863          	beqz	a0,80002d14 <_ZN9BufferCPPD1Ev+0xc4>
    80002d08:	00053783          	ld	a5,0(a0)
    80002d0c:	0087b783          	ld	a5,8(a5)
    80002d10:	000780e7          	jalr	a5
    delete mutexTail;
    80002d14:	0304b503          	ld	a0,48(s1)
    80002d18:	00050863          	beqz	a0,80002d28 <_ZN9BufferCPPD1Ev+0xd8>
    80002d1c:	00053783          	ld	a5,0(a0)
    80002d20:	0087b783          	ld	a5,8(a5)
    80002d24:	000780e7          	jalr	a5
    delete mutexHead;
    80002d28:	0284b503          	ld	a0,40(s1)
    80002d2c:	00050863          	beqz	a0,80002d3c <_ZN9BufferCPPD1Ev+0xec>
    80002d30:	00053783          	ld	a5,0(a0)
    80002d34:	0087b783          	ld	a5,8(a5)
    80002d38:	000780e7          	jalr	a5
}
    80002d3c:	01813083          	ld	ra,24(sp)
    80002d40:	01013403          	ld	s0,16(sp)
    80002d44:	00813483          	ld	s1,8(sp)
    80002d48:	02010113          	addi	sp,sp,32
    80002d4c:	00008067          	ret

0000000080002d50 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002d50:	fe010113          	addi	sp,sp,-32
    80002d54:	00113c23          	sd	ra,24(sp)
    80002d58:	00813823          	sd	s0,16(sp)
    80002d5c:	00913423          	sd	s1,8(sp)
    80002d60:	01213023          	sd	s2,0(sp)
    80002d64:	02010413          	addi	s0,sp,32
    80002d68:	00050493          	mv	s1,a0
    80002d6c:	00058913          	mv	s2,a1
    80002d70:	0015879b          	addiw	a5,a1,1
    80002d74:	0007851b          	sext.w	a0,a5
    80002d78:	00f4a023          	sw	a5,0(s1)
    80002d7c:	0004a823          	sw	zero,16(s1)
    80002d80:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002d84:	00251513          	slli	a0,a0,0x2
    80002d88:	ffffe097          	auipc	ra,0xffffe
    80002d8c:	4bc080e7          	jalr	1212(ra) # 80001244 <_Z9mem_allocm>
    80002d90:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002d94:	00000593          	li	a1,0
    80002d98:	02048513          	addi	a0,s1,32
    80002d9c:	ffffe097          	auipc	ra,0xffffe
    80002da0:	578080e7          	jalr	1400(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    80002da4:	00090593          	mv	a1,s2
    80002da8:	01848513          	addi	a0,s1,24
    80002dac:	ffffe097          	auipc	ra,0xffffe
    80002db0:	568080e7          	jalr	1384(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    80002db4:	00100593          	li	a1,1
    80002db8:	02848513          	addi	a0,s1,40
    80002dbc:	ffffe097          	auipc	ra,0xffffe
    80002dc0:	558080e7          	jalr	1368(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    80002dc4:	00100593          	li	a1,1
    80002dc8:	03048513          	addi	a0,s1,48
    80002dcc:	ffffe097          	auipc	ra,0xffffe
    80002dd0:	548080e7          	jalr	1352(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
}
    80002dd4:	01813083          	ld	ra,24(sp)
    80002dd8:	01013403          	ld	s0,16(sp)
    80002ddc:	00813483          	ld	s1,8(sp)
    80002de0:	00013903          	ld	s2,0(sp)
    80002de4:	02010113          	addi	sp,sp,32
    80002de8:	00008067          	ret

0000000080002dec <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002dec:	fe010113          	addi	sp,sp,-32
    80002df0:	00113c23          	sd	ra,24(sp)
    80002df4:	00813823          	sd	s0,16(sp)
    80002df8:	00913423          	sd	s1,8(sp)
    80002dfc:	01213023          	sd	s2,0(sp)
    80002e00:	02010413          	addi	s0,sp,32
    80002e04:	00050493          	mv	s1,a0
    80002e08:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e0c:	01853503          	ld	a0,24(a0)
    80002e10:	ffffe097          	auipc	ra,0xffffe
    80002e14:	560080e7          	jalr	1376(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80002e18:	0304b503          	ld	a0,48(s1)
    80002e1c:	ffffe097          	auipc	ra,0xffffe
    80002e20:	554080e7          	jalr	1364(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80002e24:	0084b783          	ld	a5,8(s1)
    80002e28:	0144a703          	lw	a4,20(s1)
    80002e2c:	00271713          	slli	a4,a4,0x2
    80002e30:	00e787b3          	add	a5,a5,a4
    80002e34:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002e38:	0144a783          	lw	a5,20(s1)
    80002e3c:	0017879b          	addiw	a5,a5,1
    80002e40:	0004a703          	lw	a4,0(s1)
    80002e44:	02e7e7bb          	remw	a5,a5,a4
    80002e48:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002e4c:	0304b503          	ld	a0,48(s1)
    80002e50:	ffffe097          	auipc	ra,0xffffe
    80002e54:	54c080e7          	jalr	1356(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80002e58:	0204b503          	ld	a0,32(s1)
    80002e5c:	ffffe097          	auipc	ra,0xffffe
    80002e60:	540080e7          	jalr	1344(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

}
    80002e64:	01813083          	ld	ra,24(sp)
    80002e68:	01013403          	ld	s0,16(sp)
    80002e6c:	00813483          	ld	s1,8(sp)
    80002e70:	00013903          	ld	s2,0(sp)
    80002e74:	02010113          	addi	sp,sp,32
    80002e78:	00008067          	ret

0000000080002e7c <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002e7c:	fe010113          	addi	sp,sp,-32
    80002e80:	00113c23          	sd	ra,24(sp)
    80002e84:	00813823          	sd	s0,16(sp)
    80002e88:	00913423          	sd	s1,8(sp)
    80002e8c:	01213023          	sd	s2,0(sp)
    80002e90:	02010413          	addi	s0,sp,32
    80002e94:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002e98:	02053503          	ld	a0,32(a0)
    80002e9c:	ffffe097          	auipc	ra,0xffffe
    80002ea0:	4d4080e7          	jalr	1236(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    80002ea4:	0284b503          	ld	a0,40(s1)
    80002ea8:	ffffe097          	auipc	ra,0xffffe
    80002eac:	4c8080e7          	jalr	1224(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80002eb0:	0084b703          	ld	a4,8(s1)
    80002eb4:	0104a783          	lw	a5,16(s1)
    80002eb8:	00279693          	slli	a3,a5,0x2
    80002ebc:	00d70733          	add	a4,a4,a3
    80002ec0:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002ec4:	0017879b          	addiw	a5,a5,1
    80002ec8:	0004a703          	lw	a4,0(s1)
    80002ecc:	02e7e7bb          	remw	a5,a5,a4
    80002ed0:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002ed4:	0284b503          	ld	a0,40(s1)
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	4c4080e7          	jalr	1220(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80002ee0:	0184b503          	ld	a0,24(s1)
    80002ee4:	ffffe097          	auipc	ra,0xffffe
    80002ee8:	4b8080e7          	jalr	1208(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80002eec:	00090513          	mv	a0,s2
    80002ef0:	01813083          	ld	ra,24(sp)
    80002ef4:	01013403          	ld	s0,16(sp)
    80002ef8:	00813483          	ld	s1,8(sp)
    80002efc:	00013903          	ld	s2,0(sp)
    80002f00:	02010113          	addi	sp,sp,32
    80002f04:	00008067          	ret

0000000080002f08 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f08:	fe010113          	addi	sp,sp,-32
    80002f0c:	00113c23          	sd	ra,24(sp)
    80002f10:	00813823          	sd	s0,16(sp)
    80002f14:	00913423          	sd	s1,8(sp)
    80002f18:	01213023          	sd	s2,0(sp)
    80002f1c:	02010413          	addi	s0,sp,32
    80002f20:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002f24:	02853503          	ld	a0,40(a0)
    80002f28:	ffffe097          	auipc	ra,0xffffe
    80002f2c:	448080e7          	jalr	1096(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80002f30:	0304b503          	ld	a0,48(s1)
    80002f34:	ffffe097          	auipc	ra,0xffffe
    80002f38:	43c080e7          	jalr	1084(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80002f3c:	0144a783          	lw	a5,20(s1)
    80002f40:	0104a903          	lw	s2,16(s1)
    80002f44:	0327ce63          	blt	a5,s2,80002f80 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002f48:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002f4c:	0304b503          	ld	a0,48(s1)
    80002f50:	ffffe097          	auipc	ra,0xffffe
    80002f54:	44c080e7          	jalr	1100(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80002f58:	0284b503          	ld	a0,40(s1)
    80002f5c:	ffffe097          	auipc	ra,0xffffe
    80002f60:	440080e7          	jalr	1088(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80002f64:	00090513          	mv	a0,s2
    80002f68:	01813083          	ld	ra,24(sp)
    80002f6c:	01013403          	ld	s0,16(sp)
    80002f70:	00813483          	ld	s1,8(sp)
    80002f74:	00013903          	ld	s2,0(sp)
    80002f78:	02010113          	addi	sp,sp,32
    80002f7c:	00008067          	ret
        ret = cap - head + tail;
    80002f80:	0004a703          	lw	a4,0(s1)
    80002f84:	4127093b          	subw	s2,a4,s2
    80002f88:	00f9093b          	addw	s2,s2,a5
    80002f8c:	fc1ff06f          	j	80002f4c <_ZN6Buffer6getCntEv+0x44>

0000000080002f90 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00113c23          	sd	ra,24(sp)
    80002f98:	00813823          	sd	s0,16(sp)
    80002f9c:	00913423          	sd	s1,8(sp)
    80002fa0:	02010413          	addi	s0,sp,32
    80002fa4:	00050493          	mv	s1,a0
    putc('\n');
    80002fa8:	00a00513          	li	a0,10
    80002fac:	ffffe097          	auipc	ra,0xffffe
    80002fb0:	444080e7          	jalr	1092(ra) # 800013f0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80002fb4:	00003517          	auipc	a0,0x3
    80002fb8:	15450513          	addi	a0,a0,340 # 80006108 <CONSOLE_STATUS+0xf8>
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	790080e7          	jalr	1936(ra) # 8000274c <_Z11printStringPKc>
    while (getCnt() > 0) {
    80002fc4:	00048513          	mv	a0,s1
    80002fc8:	00000097          	auipc	ra,0x0
    80002fcc:	f40080e7          	jalr	-192(ra) # 80002f08 <_ZN6Buffer6getCntEv>
    80002fd0:	02a05c63          	blez	a0,80003008 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80002fd4:	0084b783          	ld	a5,8(s1)
    80002fd8:	0104a703          	lw	a4,16(s1)
    80002fdc:	00271713          	slli	a4,a4,0x2
    80002fe0:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80002fe4:	0007c503          	lbu	a0,0(a5)
    80002fe8:	ffffe097          	auipc	ra,0xffffe
    80002fec:	408080e7          	jalr	1032(ra) # 800013f0 <_Z4putcc>
        head = (head + 1) % cap;
    80002ff0:	0104a783          	lw	a5,16(s1)
    80002ff4:	0017879b          	addiw	a5,a5,1
    80002ff8:	0004a703          	lw	a4,0(s1)
    80002ffc:	02e7e7bb          	remw	a5,a5,a4
    80003000:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003004:	fc1ff06f          	j	80002fc4 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003008:	02100513          	li	a0,33
    8000300c:	ffffe097          	auipc	ra,0xffffe
    80003010:	3e4080e7          	jalr	996(ra) # 800013f0 <_Z4putcc>
    putc('\n');
    80003014:	00a00513          	li	a0,10
    80003018:	ffffe097          	auipc	ra,0xffffe
    8000301c:	3d8080e7          	jalr	984(ra) # 800013f0 <_Z4putcc>
    mem_free(buffer);
    80003020:	0084b503          	ld	a0,8(s1)
    80003024:	ffffe097          	auipc	ra,0xffffe
    80003028:	248080e7          	jalr	584(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    8000302c:	0204b503          	ld	a0,32(s1)
    80003030:	ffffe097          	auipc	ra,0xffffe
    80003034:	314080e7          	jalr	788(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    80003038:	0184b503          	ld	a0,24(s1)
    8000303c:	ffffe097          	auipc	ra,0xffffe
    80003040:	308080e7          	jalr	776(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    80003044:	0304b503          	ld	a0,48(s1)
    80003048:	ffffe097          	auipc	ra,0xffffe
    8000304c:	2fc080e7          	jalr	764(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003050:	0284b503          	ld	a0,40(s1)
    80003054:	ffffe097          	auipc	ra,0xffffe
    80003058:	2f0080e7          	jalr	752(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
}
    8000305c:	01813083          	ld	ra,24(sp)
    80003060:	01013403          	ld	s0,16(sp)
    80003064:	00813483          	ld	s1,8(sp)
    80003068:	02010113          	addi	sp,sp,32
    8000306c:	00008067          	ret

0000000080003070 <start>:
    80003070:	ff010113          	addi	sp,sp,-16
    80003074:	00813423          	sd	s0,8(sp)
    80003078:	01010413          	addi	s0,sp,16
    8000307c:	300027f3          	csrr	a5,mstatus
    80003080:	ffffe737          	lui	a4,0xffffe
    80003084:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff631f>
    80003088:	00e7f7b3          	and	a5,a5,a4
    8000308c:	00001737          	lui	a4,0x1
    80003090:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003094:	00e7e7b3          	or	a5,a5,a4
    80003098:	30079073          	csrw	mstatus,a5
    8000309c:	00000797          	auipc	a5,0x0
    800030a0:	16078793          	addi	a5,a5,352 # 800031fc <system_main>
    800030a4:	34179073          	csrw	mepc,a5
    800030a8:	00000793          	li	a5,0
    800030ac:	18079073          	csrw	satp,a5
    800030b0:	000107b7          	lui	a5,0x10
    800030b4:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800030b8:	30279073          	csrw	medeleg,a5
    800030bc:	30379073          	csrw	mideleg,a5
    800030c0:	104027f3          	csrr	a5,sie
    800030c4:	2227e793          	ori	a5,a5,546
    800030c8:	10479073          	csrw	sie,a5
    800030cc:	fff00793          	li	a5,-1
    800030d0:	00a7d793          	srli	a5,a5,0xa
    800030d4:	3b079073          	csrw	pmpaddr0,a5
    800030d8:	00f00793          	li	a5,15
    800030dc:	3a079073          	csrw	pmpcfg0,a5
    800030e0:	f14027f3          	csrr	a5,mhartid
    800030e4:	0200c737          	lui	a4,0x200c
    800030e8:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800030ec:	0007869b          	sext.w	a3,a5
    800030f0:	00269713          	slli	a4,a3,0x2
    800030f4:	000f4637          	lui	a2,0xf4
    800030f8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800030fc:	00d70733          	add	a4,a4,a3
    80003100:	0037979b          	slliw	a5,a5,0x3
    80003104:	020046b7          	lui	a3,0x2004
    80003108:	00d787b3          	add	a5,a5,a3
    8000310c:	00c585b3          	add	a1,a1,a2
    80003110:	00371693          	slli	a3,a4,0x3
    80003114:	00004717          	auipc	a4,0x4
    80003118:	15c70713          	addi	a4,a4,348 # 80007270 <timer_scratch>
    8000311c:	00b7b023          	sd	a1,0(a5)
    80003120:	00d70733          	add	a4,a4,a3
    80003124:	00f73c23          	sd	a5,24(a4)
    80003128:	02c73023          	sd	a2,32(a4)
    8000312c:	34071073          	csrw	mscratch,a4
    80003130:	00000797          	auipc	a5,0x0
    80003134:	6e078793          	addi	a5,a5,1760 # 80003810 <timervec>
    80003138:	30579073          	csrw	mtvec,a5
    8000313c:	300027f3          	csrr	a5,mstatus
    80003140:	0087e793          	ori	a5,a5,8
    80003144:	30079073          	csrw	mstatus,a5
    80003148:	304027f3          	csrr	a5,mie
    8000314c:	0807e793          	ori	a5,a5,128
    80003150:	30479073          	csrw	mie,a5
    80003154:	f14027f3          	csrr	a5,mhartid
    80003158:	0007879b          	sext.w	a5,a5
    8000315c:	00078213          	mv	tp,a5
    80003160:	30200073          	mret
    80003164:	00813403          	ld	s0,8(sp)
    80003168:	01010113          	addi	sp,sp,16
    8000316c:	00008067          	ret

0000000080003170 <timerinit>:
    80003170:	ff010113          	addi	sp,sp,-16
    80003174:	00813423          	sd	s0,8(sp)
    80003178:	01010413          	addi	s0,sp,16
    8000317c:	f14027f3          	csrr	a5,mhartid
    80003180:	0200c737          	lui	a4,0x200c
    80003184:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003188:	0007869b          	sext.w	a3,a5
    8000318c:	00269713          	slli	a4,a3,0x2
    80003190:	000f4637          	lui	a2,0xf4
    80003194:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003198:	00d70733          	add	a4,a4,a3
    8000319c:	0037979b          	slliw	a5,a5,0x3
    800031a0:	020046b7          	lui	a3,0x2004
    800031a4:	00d787b3          	add	a5,a5,a3
    800031a8:	00c585b3          	add	a1,a1,a2
    800031ac:	00371693          	slli	a3,a4,0x3
    800031b0:	00004717          	auipc	a4,0x4
    800031b4:	0c070713          	addi	a4,a4,192 # 80007270 <timer_scratch>
    800031b8:	00b7b023          	sd	a1,0(a5)
    800031bc:	00d70733          	add	a4,a4,a3
    800031c0:	00f73c23          	sd	a5,24(a4)
    800031c4:	02c73023          	sd	a2,32(a4)
    800031c8:	34071073          	csrw	mscratch,a4
    800031cc:	00000797          	auipc	a5,0x0
    800031d0:	64478793          	addi	a5,a5,1604 # 80003810 <timervec>
    800031d4:	30579073          	csrw	mtvec,a5
    800031d8:	300027f3          	csrr	a5,mstatus
    800031dc:	0087e793          	ori	a5,a5,8
    800031e0:	30079073          	csrw	mstatus,a5
    800031e4:	304027f3          	csrr	a5,mie
    800031e8:	0807e793          	ori	a5,a5,128
    800031ec:	30479073          	csrw	mie,a5
    800031f0:	00813403          	ld	s0,8(sp)
    800031f4:	01010113          	addi	sp,sp,16
    800031f8:	00008067          	ret

00000000800031fc <system_main>:
    800031fc:	fe010113          	addi	sp,sp,-32
    80003200:	00813823          	sd	s0,16(sp)
    80003204:	00913423          	sd	s1,8(sp)
    80003208:	00113c23          	sd	ra,24(sp)
    8000320c:	02010413          	addi	s0,sp,32
    80003210:	00000097          	auipc	ra,0x0
    80003214:	0c4080e7          	jalr	196(ra) # 800032d4 <cpuid>
    80003218:	00004497          	auipc	s1,0x4
    8000321c:	fc848493          	addi	s1,s1,-56 # 800071e0 <started>
    80003220:	02050263          	beqz	a0,80003244 <system_main+0x48>
    80003224:	0004a783          	lw	a5,0(s1)
    80003228:	0007879b          	sext.w	a5,a5
    8000322c:	fe078ce3          	beqz	a5,80003224 <system_main+0x28>
    80003230:	0ff0000f          	fence
    80003234:	00003517          	auipc	a0,0x3
    80003238:	f1c50513          	addi	a0,a0,-228 # 80006150 <CONSOLE_STATUS+0x140>
    8000323c:	00001097          	auipc	ra,0x1
    80003240:	a70080e7          	jalr	-1424(ra) # 80003cac <panic>
    80003244:	00001097          	auipc	ra,0x1
    80003248:	9c4080e7          	jalr	-1596(ra) # 80003c08 <consoleinit>
    8000324c:	00001097          	auipc	ra,0x1
    80003250:	150080e7          	jalr	336(ra) # 8000439c <printfinit>
    80003254:	00003517          	auipc	a0,0x3
    80003258:	e0450513          	addi	a0,a0,-508 # 80006058 <CONSOLE_STATUS+0x48>
    8000325c:	00001097          	auipc	ra,0x1
    80003260:	aac080e7          	jalr	-1364(ra) # 80003d08 <__printf>
    80003264:	00003517          	auipc	a0,0x3
    80003268:	ebc50513          	addi	a0,a0,-324 # 80006120 <CONSOLE_STATUS+0x110>
    8000326c:	00001097          	auipc	ra,0x1
    80003270:	a9c080e7          	jalr	-1380(ra) # 80003d08 <__printf>
    80003274:	00003517          	auipc	a0,0x3
    80003278:	de450513          	addi	a0,a0,-540 # 80006058 <CONSOLE_STATUS+0x48>
    8000327c:	00001097          	auipc	ra,0x1
    80003280:	a8c080e7          	jalr	-1396(ra) # 80003d08 <__printf>
    80003284:	00001097          	auipc	ra,0x1
    80003288:	4a4080e7          	jalr	1188(ra) # 80004728 <kinit>
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	148080e7          	jalr	328(ra) # 800033d4 <trapinit>
    80003294:	00000097          	auipc	ra,0x0
    80003298:	16c080e7          	jalr	364(ra) # 80003400 <trapinithart>
    8000329c:	00000097          	auipc	ra,0x0
    800032a0:	5b4080e7          	jalr	1460(ra) # 80003850 <plicinit>
    800032a4:	00000097          	auipc	ra,0x0
    800032a8:	5d4080e7          	jalr	1492(ra) # 80003878 <plicinithart>
    800032ac:	00000097          	auipc	ra,0x0
    800032b0:	078080e7          	jalr	120(ra) # 80003324 <userinit>
    800032b4:	0ff0000f          	fence
    800032b8:	00100793          	li	a5,1
    800032bc:	00003517          	auipc	a0,0x3
    800032c0:	e7c50513          	addi	a0,a0,-388 # 80006138 <CONSOLE_STATUS+0x128>
    800032c4:	00f4a023          	sw	a5,0(s1)
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	a40080e7          	jalr	-1472(ra) # 80003d08 <__printf>
    800032d0:	0000006f          	j	800032d0 <system_main+0xd4>

00000000800032d4 <cpuid>:
    800032d4:	ff010113          	addi	sp,sp,-16
    800032d8:	00813423          	sd	s0,8(sp)
    800032dc:	01010413          	addi	s0,sp,16
    800032e0:	00020513          	mv	a0,tp
    800032e4:	00813403          	ld	s0,8(sp)
    800032e8:	0005051b          	sext.w	a0,a0
    800032ec:	01010113          	addi	sp,sp,16
    800032f0:	00008067          	ret

00000000800032f4 <mycpu>:
    800032f4:	ff010113          	addi	sp,sp,-16
    800032f8:	00813423          	sd	s0,8(sp)
    800032fc:	01010413          	addi	s0,sp,16
    80003300:	00020793          	mv	a5,tp
    80003304:	00813403          	ld	s0,8(sp)
    80003308:	0007879b          	sext.w	a5,a5
    8000330c:	00779793          	slli	a5,a5,0x7
    80003310:	00005517          	auipc	a0,0x5
    80003314:	f9050513          	addi	a0,a0,-112 # 800082a0 <cpus>
    80003318:	00f50533          	add	a0,a0,a5
    8000331c:	01010113          	addi	sp,sp,16
    80003320:	00008067          	ret

0000000080003324 <userinit>:
    80003324:	ff010113          	addi	sp,sp,-16
    80003328:	00813423          	sd	s0,8(sp)
    8000332c:	01010413          	addi	s0,sp,16
    80003330:	00813403          	ld	s0,8(sp)
    80003334:	01010113          	addi	sp,sp,16
    80003338:	ffffe317          	auipc	t1,0xffffe
    8000333c:	7bc30067          	jr	1980(t1) # 80001af4 <main>

0000000080003340 <either_copyout>:
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	01010413          	addi	s0,sp,16
    80003350:	02051663          	bnez	a0,8000337c <either_copyout+0x3c>
    80003354:	00058513          	mv	a0,a1
    80003358:	00060593          	mv	a1,a2
    8000335c:	0006861b          	sext.w	a2,a3
    80003360:	00002097          	auipc	ra,0x2
    80003364:	c54080e7          	jalr	-940(ra) # 80004fb4 <__memmove>
    80003368:	00813083          	ld	ra,8(sp)
    8000336c:	00013403          	ld	s0,0(sp)
    80003370:	00000513          	li	a0,0
    80003374:	01010113          	addi	sp,sp,16
    80003378:	00008067          	ret
    8000337c:	00003517          	auipc	a0,0x3
    80003380:	dfc50513          	addi	a0,a0,-516 # 80006178 <CONSOLE_STATUS+0x168>
    80003384:	00001097          	auipc	ra,0x1
    80003388:	928080e7          	jalr	-1752(ra) # 80003cac <panic>

000000008000338c <either_copyin>:
    8000338c:	ff010113          	addi	sp,sp,-16
    80003390:	00813023          	sd	s0,0(sp)
    80003394:	00113423          	sd	ra,8(sp)
    80003398:	01010413          	addi	s0,sp,16
    8000339c:	02059463          	bnez	a1,800033c4 <either_copyin+0x38>
    800033a0:	00060593          	mv	a1,a2
    800033a4:	0006861b          	sext.w	a2,a3
    800033a8:	00002097          	auipc	ra,0x2
    800033ac:	c0c080e7          	jalr	-1012(ra) # 80004fb4 <__memmove>
    800033b0:	00813083          	ld	ra,8(sp)
    800033b4:	00013403          	ld	s0,0(sp)
    800033b8:	00000513          	li	a0,0
    800033bc:	01010113          	addi	sp,sp,16
    800033c0:	00008067          	ret
    800033c4:	00003517          	auipc	a0,0x3
    800033c8:	ddc50513          	addi	a0,a0,-548 # 800061a0 <CONSOLE_STATUS+0x190>
    800033cc:	00001097          	auipc	ra,0x1
    800033d0:	8e0080e7          	jalr	-1824(ra) # 80003cac <panic>

00000000800033d4 <trapinit>:
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    800033e0:	00813403          	ld	s0,8(sp)
    800033e4:	00003597          	auipc	a1,0x3
    800033e8:	de458593          	addi	a1,a1,-540 # 800061c8 <CONSOLE_STATUS+0x1b8>
    800033ec:	00005517          	auipc	a0,0x5
    800033f0:	f3450513          	addi	a0,a0,-204 # 80008320 <tickslock>
    800033f4:	01010113          	addi	sp,sp,16
    800033f8:	00001317          	auipc	t1,0x1
    800033fc:	5c030067          	jr	1472(t1) # 800049b8 <initlock>

0000000080003400 <trapinithart>:
    80003400:	ff010113          	addi	sp,sp,-16
    80003404:	00813423          	sd	s0,8(sp)
    80003408:	01010413          	addi	s0,sp,16
    8000340c:	00000797          	auipc	a5,0x0
    80003410:	2f478793          	addi	a5,a5,756 # 80003700 <kernelvec>
    80003414:	10579073          	csrw	stvec,a5
    80003418:	00813403          	ld	s0,8(sp)
    8000341c:	01010113          	addi	sp,sp,16
    80003420:	00008067          	ret

0000000080003424 <usertrap>:
    80003424:	ff010113          	addi	sp,sp,-16
    80003428:	00813423          	sd	s0,8(sp)
    8000342c:	01010413          	addi	s0,sp,16
    80003430:	00813403          	ld	s0,8(sp)
    80003434:	01010113          	addi	sp,sp,16
    80003438:	00008067          	ret

000000008000343c <usertrapret>:
    8000343c:	ff010113          	addi	sp,sp,-16
    80003440:	00813423          	sd	s0,8(sp)
    80003444:	01010413          	addi	s0,sp,16
    80003448:	00813403          	ld	s0,8(sp)
    8000344c:	01010113          	addi	sp,sp,16
    80003450:	00008067          	ret

0000000080003454 <kerneltrap>:
    80003454:	fe010113          	addi	sp,sp,-32
    80003458:	00813823          	sd	s0,16(sp)
    8000345c:	00113c23          	sd	ra,24(sp)
    80003460:	00913423          	sd	s1,8(sp)
    80003464:	02010413          	addi	s0,sp,32
    80003468:	142025f3          	csrr	a1,scause
    8000346c:	100027f3          	csrr	a5,sstatus
    80003470:	0027f793          	andi	a5,a5,2
    80003474:	10079c63          	bnez	a5,8000358c <kerneltrap+0x138>
    80003478:	142027f3          	csrr	a5,scause
    8000347c:	0207ce63          	bltz	a5,800034b8 <kerneltrap+0x64>
    80003480:	00003517          	auipc	a0,0x3
    80003484:	d9050513          	addi	a0,a0,-624 # 80006210 <CONSOLE_STATUS+0x200>
    80003488:	00001097          	auipc	ra,0x1
    8000348c:	880080e7          	jalr	-1920(ra) # 80003d08 <__printf>
    80003490:	141025f3          	csrr	a1,sepc
    80003494:	14302673          	csrr	a2,stval
    80003498:	00003517          	auipc	a0,0x3
    8000349c:	d8850513          	addi	a0,a0,-632 # 80006220 <CONSOLE_STATUS+0x210>
    800034a0:	00001097          	auipc	ra,0x1
    800034a4:	868080e7          	jalr	-1944(ra) # 80003d08 <__printf>
    800034a8:	00003517          	auipc	a0,0x3
    800034ac:	d9050513          	addi	a0,a0,-624 # 80006238 <CONSOLE_STATUS+0x228>
    800034b0:	00000097          	auipc	ra,0x0
    800034b4:	7fc080e7          	jalr	2044(ra) # 80003cac <panic>
    800034b8:	0ff7f713          	andi	a4,a5,255
    800034bc:	00900693          	li	a3,9
    800034c0:	04d70063          	beq	a4,a3,80003500 <kerneltrap+0xac>
    800034c4:	fff00713          	li	a4,-1
    800034c8:	03f71713          	slli	a4,a4,0x3f
    800034cc:	00170713          	addi	a4,a4,1
    800034d0:	fae798e3          	bne	a5,a4,80003480 <kerneltrap+0x2c>
    800034d4:	00000097          	auipc	ra,0x0
    800034d8:	e00080e7          	jalr	-512(ra) # 800032d4 <cpuid>
    800034dc:	06050663          	beqz	a0,80003548 <kerneltrap+0xf4>
    800034e0:	144027f3          	csrr	a5,sip
    800034e4:	ffd7f793          	andi	a5,a5,-3
    800034e8:	14479073          	csrw	sip,a5
    800034ec:	01813083          	ld	ra,24(sp)
    800034f0:	01013403          	ld	s0,16(sp)
    800034f4:	00813483          	ld	s1,8(sp)
    800034f8:	02010113          	addi	sp,sp,32
    800034fc:	00008067          	ret
    80003500:	00000097          	auipc	ra,0x0
    80003504:	3c4080e7          	jalr	964(ra) # 800038c4 <plic_claim>
    80003508:	00a00793          	li	a5,10
    8000350c:	00050493          	mv	s1,a0
    80003510:	06f50863          	beq	a0,a5,80003580 <kerneltrap+0x12c>
    80003514:	fc050ce3          	beqz	a0,800034ec <kerneltrap+0x98>
    80003518:	00050593          	mv	a1,a0
    8000351c:	00003517          	auipc	a0,0x3
    80003520:	cd450513          	addi	a0,a0,-812 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003524:	00000097          	auipc	ra,0x0
    80003528:	7e4080e7          	jalr	2020(ra) # 80003d08 <__printf>
    8000352c:	01013403          	ld	s0,16(sp)
    80003530:	01813083          	ld	ra,24(sp)
    80003534:	00048513          	mv	a0,s1
    80003538:	00813483          	ld	s1,8(sp)
    8000353c:	02010113          	addi	sp,sp,32
    80003540:	00000317          	auipc	t1,0x0
    80003544:	3bc30067          	jr	956(t1) # 800038fc <plic_complete>
    80003548:	00005517          	auipc	a0,0x5
    8000354c:	dd850513          	addi	a0,a0,-552 # 80008320 <tickslock>
    80003550:	00001097          	auipc	ra,0x1
    80003554:	48c080e7          	jalr	1164(ra) # 800049dc <acquire>
    80003558:	00004717          	auipc	a4,0x4
    8000355c:	c8c70713          	addi	a4,a4,-884 # 800071e4 <ticks>
    80003560:	00072783          	lw	a5,0(a4)
    80003564:	00005517          	auipc	a0,0x5
    80003568:	dbc50513          	addi	a0,a0,-580 # 80008320 <tickslock>
    8000356c:	0017879b          	addiw	a5,a5,1
    80003570:	00f72023          	sw	a5,0(a4)
    80003574:	00001097          	auipc	ra,0x1
    80003578:	534080e7          	jalr	1332(ra) # 80004aa8 <release>
    8000357c:	f65ff06f          	j	800034e0 <kerneltrap+0x8c>
    80003580:	00001097          	auipc	ra,0x1
    80003584:	090080e7          	jalr	144(ra) # 80004610 <uartintr>
    80003588:	fa5ff06f          	j	8000352c <kerneltrap+0xd8>
    8000358c:	00003517          	auipc	a0,0x3
    80003590:	c4450513          	addi	a0,a0,-956 # 800061d0 <CONSOLE_STATUS+0x1c0>
    80003594:	00000097          	auipc	ra,0x0
    80003598:	718080e7          	jalr	1816(ra) # 80003cac <panic>

000000008000359c <clockintr>:
    8000359c:	fe010113          	addi	sp,sp,-32
    800035a0:	00813823          	sd	s0,16(sp)
    800035a4:	00913423          	sd	s1,8(sp)
    800035a8:	00113c23          	sd	ra,24(sp)
    800035ac:	02010413          	addi	s0,sp,32
    800035b0:	00005497          	auipc	s1,0x5
    800035b4:	d7048493          	addi	s1,s1,-656 # 80008320 <tickslock>
    800035b8:	00048513          	mv	a0,s1
    800035bc:	00001097          	auipc	ra,0x1
    800035c0:	420080e7          	jalr	1056(ra) # 800049dc <acquire>
    800035c4:	00004717          	auipc	a4,0x4
    800035c8:	c2070713          	addi	a4,a4,-992 # 800071e4 <ticks>
    800035cc:	00072783          	lw	a5,0(a4)
    800035d0:	01013403          	ld	s0,16(sp)
    800035d4:	01813083          	ld	ra,24(sp)
    800035d8:	00048513          	mv	a0,s1
    800035dc:	0017879b          	addiw	a5,a5,1
    800035e0:	00813483          	ld	s1,8(sp)
    800035e4:	00f72023          	sw	a5,0(a4)
    800035e8:	02010113          	addi	sp,sp,32
    800035ec:	00001317          	auipc	t1,0x1
    800035f0:	4bc30067          	jr	1212(t1) # 80004aa8 <release>

00000000800035f4 <devintr>:
    800035f4:	142027f3          	csrr	a5,scause
    800035f8:	00000513          	li	a0,0
    800035fc:	0007c463          	bltz	a5,80003604 <devintr+0x10>
    80003600:	00008067          	ret
    80003604:	fe010113          	addi	sp,sp,-32
    80003608:	00813823          	sd	s0,16(sp)
    8000360c:	00113c23          	sd	ra,24(sp)
    80003610:	00913423          	sd	s1,8(sp)
    80003614:	02010413          	addi	s0,sp,32
    80003618:	0ff7f713          	andi	a4,a5,255
    8000361c:	00900693          	li	a3,9
    80003620:	04d70c63          	beq	a4,a3,80003678 <devintr+0x84>
    80003624:	fff00713          	li	a4,-1
    80003628:	03f71713          	slli	a4,a4,0x3f
    8000362c:	00170713          	addi	a4,a4,1
    80003630:	00e78c63          	beq	a5,a4,80003648 <devintr+0x54>
    80003634:	01813083          	ld	ra,24(sp)
    80003638:	01013403          	ld	s0,16(sp)
    8000363c:	00813483          	ld	s1,8(sp)
    80003640:	02010113          	addi	sp,sp,32
    80003644:	00008067          	ret
    80003648:	00000097          	auipc	ra,0x0
    8000364c:	c8c080e7          	jalr	-884(ra) # 800032d4 <cpuid>
    80003650:	06050663          	beqz	a0,800036bc <devintr+0xc8>
    80003654:	144027f3          	csrr	a5,sip
    80003658:	ffd7f793          	andi	a5,a5,-3
    8000365c:	14479073          	csrw	sip,a5
    80003660:	01813083          	ld	ra,24(sp)
    80003664:	01013403          	ld	s0,16(sp)
    80003668:	00813483          	ld	s1,8(sp)
    8000366c:	00200513          	li	a0,2
    80003670:	02010113          	addi	sp,sp,32
    80003674:	00008067          	ret
    80003678:	00000097          	auipc	ra,0x0
    8000367c:	24c080e7          	jalr	588(ra) # 800038c4 <plic_claim>
    80003680:	00a00793          	li	a5,10
    80003684:	00050493          	mv	s1,a0
    80003688:	06f50663          	beq	a0,a5,800036f4 <devintr+0x100>
    8000368c:	00100513          	li	a0,1
    80003690:	fa0482e3          	beqz	s1,80003634 <devintr+0x40>
    80003694:	00048593          	mv	a1,s1
    80003698:	00003517          	auipc	a0,0x3
    8000369c:	b5850513          	addi	a0,a0,-1192 # 800061f0 <CONSOLE_STATUS+0x1e0>
    800036a0:	00000097          	auipc	ra,0x0
    800036a4:	668080e7          	jalr	1640(ra) # 80003d08 <__printf>
    800036a8:	00048513          	mv	a0,s1
    800036ac:	00000097          	auipc	ra,0x0
    800036b0:	250080e7          	jalr	592(ra) # 800038fc <plic_complete>
    800036b4:	00100513          	li	a0,1
    800036b8:	f7dff06f          	j	80003634 <devintr+0x40>
    800036bc:	00005517          	auipc	a0,0x5
    800036c0:	c6450513          	addi	a0,a0,-924 # 80008320 <tickslock>
    800036c4:	00001097          	auipc	ra,0x1
    800036c8:	318080e7          	jalr	792(ra) # 800049dc <acquire>
    800036cc:	00004717          	auipc	a4,0x4
    800036d0:	b1870713          	addi	a4,a4,-1256 # 800071e4 <ticks>
    800036d4:	00072783          	lw	a5,0(a4)
    800036d8:	00005517          	auipc	a0,0x5
    800036dc:	c4850513          	addi	a0,a0,-952 # 80008320 <tickslock>
    800036e0:	0017879b          	addiw	a5,a5,1
    800036e4:	00f72023          	sw	a5,0(a4)
    800036e8:	00001097          	auipc	ra,0x1
    800036ec:	3c0080e7          	jalr	960(ra) # 80004aa8 <release>
    800036f0:	f65ff06f          	j	80003654 <devintr+0x60>
    800036f4:	00001097          	auipc	ra,0x1
    800036f8:	f1c080e7          	jalr	-228(ra) # 80004610 <uartintr>
    800036fc:	fadff06f          	j	800036a8 <devintr+0xb4>

0000000080003700 <kernelvec>:
    80003700:	f0010113          	addi	sp,sp,-256
    80003704:	00113023          	sd	ra,0(sp)
    80003708:	00213423          	sd	sp,8(sp)
    8000370c:	00313823          	sd	gp,16(sp)
    80003710:	00413c23          	sd	tp,24(sp)
    80003714:	02513023          	sd	t0,32(sp)
    80003718:	02613423          	sd	t1,40(sp)
    8000371c:	02713823          	sd	t2,48(sp)
    80003720:	02813c23          	sd	s0,56(sp)
    80003724:	04913023          	sd	s1,64(sp)
    80003728:	04a13423          	sd	a0,72(sp)
    8000372c:	04b13823          	sd	a1,80(sp)
    80003730:	04c13c23          	sd	a2,88(sp)
    80003734:	06d13023          	sd	a3,96(sp)
    80003738:	06e13423          	sd	a4,104(sp)
    8000373c:	06f13823          	sd	a5,112(sp)
    80003740:	07013c23          	sd	a6,120(sp)
    80003744:	09113023          	sd	a7,128(sp)
    80003748:	09213423          	sd	s2,136(sp)
    8000374c:	09313823          	sd	s3,144(sp)
    80003750:	09413c23          	sd	s4,152(sp)
    80003754:	0b513023          	sd	s5,160(sp)
    80003758:	0b613423          	sd	s6,168(sp)
    8000375c:	0b713823          	sd	s7,176(sp)
    80003760:	0b813c23          	sd	s8,184(sp)
    80003764:	0d913023          	sd	s9,192(sp)
    80003768:	0da13423          	sd	s10,200(sp)
    8000376c:	0db13823          	sd	s11,208(sp)
    80003770:	0dc13c23          	sd	t3,216(sp)
    80003774:	0fd13023          	sd	t4,224(sp)
    80003778:	0fe13423          	sd	t5,232(sp)
    8000377c:	0ff13823          	sd	t6,240(sp)
    80003780:	cd5ff0ef          	jal	ra,80003454 <kerneltrap>
    80003784:	00013083          	ld	ra,0(sp)
    80003788:	00813103          	ld	sp,8(sp)
    8000378c:	01013183          	ld	gp,16(sp)
    80003790:	02013283          	ld	t0,32(sp)
    80003794:	02813303          	ld	t1,40(sp)
    80003798:	03013383          	ld	t2,48(sp)
    8000379c:	03813403          	ld	s0,56(sp)
    800037a0:	04013483          	ld	s1,64(sp)
    800037a4:	04813503          	ld	a0,72(sp)
    800037a8:	05013583          	ld	a1,80(sp)
    800037ac:	05813603          	ld	a2,88(sp)
    800037b0:	06013683          	ld	a3,96(sp)
    800037b4:	06813703          	ld	a4,104(sp)
    800037b8:	07013783          	ld	a5,112(sp)
    800037bc:	07813803          	ld	a6,120(sp)
    800037c0:	08013883          	ld	a7,128(sp)
    800037c4:	08813903          	ld	s2,136(sp)
    800037c8:	09013983          	ld	s3,144(sp)
    800037cc:	09813a03          	ld	s4,152(sp)
    800037d0:	0a013a83          	ld	s5,160(sp)
    800037d4:	0a813b03          	ld	s6,168(sp)
    800037d8:	0b013b83          	ld	s7,176(sp)
    800037dc:	0b813c03          	ld	s8,184(sp)
    800037e0:	0c013c83          	ld	s9,192(sp)
    800037e4:	0c813d03          	ld	s10,200(sp)
    800037e8:	0d013d83          	ld	s11,208(sp)
    800037ec:	0d813e03          	ld	t3,216(sp)
    800037f0:	0e013e83          	ld	t4,224(sp)
    800037f4:	0e813f03          	ld	t5,232(sp)
    800037f8:	0f013f83          	ld	t6,240(sp)
    800037fc:	10010113          	addi	sp,sp,256
    80003800:	10200073          	sret
    80003804:	00000013          	nop
    80003808:	00000013          	nop
    8000380c:	00000013          	nop

0000000080003810 <timervec>:
    80003810:	34051573          	csrrw	a0,mscratch,a0
    80003814:	00b53023          	sd	a1,0(a0)
    80003818:	00c53423          	sd	a2,8(a0)
    8000381c:	00d53823          	sd	a3,16(a0)
    80003820:	01853583          	ld	a1,24(a0)
    80003824:	02053603          	ld	a2,32(a0)
    80003828:	0005b683          	ld	a3,0(a1)
    8000382c:	00c686b3          	add	a3,a3,a2
    80003830:	00d5b023          	sd	a3,0(a1)
    80003834:	00200593          	li	a1,2
    80003838:	14459073          	csrw	sip,a1
    8000383c:	01053683          	ld	a3,16(a0)
    80003840:	00853603          	ld	a2,8(a0)
    80003844:	00053583          	ld	a1,0(a0)
    80003848:	34051573          	csrrw	a0,mscratch,a0
    8000384c:	30200073          	mret

0000000080003850 <plicinit>:
    80003850:	ff010113          	addi	sp,sp,-16
    80003854:	00813423          	sd	s0,8(sp)
    80003858:	01010413          	addi	s0,sp,16
    8000385c:	00813403          	ld	s0,8(sp)
    80003860:	0c0007b7          	lui	a5,0xc000
    80003864:	00100713          	li	a4,1
    80003868:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000386c:	00e7a223          	sw	a4,4(a5)
    80003870:	01010113          	addi	sp,sp,16
    80003874:	00008067          	ret

0000000080003878 <plicinithart>:
    80003878:	ff010113          	addi	sp,sp,-16
    8000387c:	00813023          	sd	s0,0(sp)
    80003880:	00113423          	sd	ra,8(sp)
    80003884:	01010413          	addi	s0,sp,16
    80003888:	00000097          	auipc	ra,0x0
    8000388c:	a4c080e7          	jalr	-1460(ra) # 800032d4 <cpuid>
    80003890:	0085171b          	slliw	a4,a0,0x8
    80003894:	0c0027b7          	lui	a5,0xc002
    80003898:	00e787b3          	add	a5,a5,a4
    8000389c:	40200713          	li	a4,1026
    800038a0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800038a4:	00813083          	ld	ra,8(sp)
    800038a8:	00013403          	ld	s0,0(sp)
    800038ac:	00d5151b          	slliw	a0,a0,0xd
    800038b0:	0c2017b7          	lui	a5,0xc201
    800038b4:	00a78533          	add	a0,a5,a0
    800038b8:	00052023          	sw	zero,0(a0)
    800038bc:	01010113          	addi	sp,sp,16
    800038c0:	00008067          	ret

00000000800038c4 <plic_claim>:
    800038c4:	ff010113          	addi	sp,sp,-16
    800038c8:	00813023          	sd	s0,0(sp)
    800038cc:	00113423          	sd	ra,8(sp)
    800038d0:	01010413          	addi	s0,sp,16
    800038d4:	00000097          	auipc	ra,0x0
    800038d8:	a00080e7          	jalr	-1536(ra) # 800032d4 <cpuid>
    800038dc:	00813083          	ld	ra,8(sp)
    800038e0:	00013403          	ld	s0,0(sp)
    800038e4:	00d5151b          	slliw	a0,a0,0xd
    800038e8:	0c2017b7          	lui	a5,0xc201
    800038ec:	00a78533          	add	a0,a5,a0
    800038f0:	00452503          	lw	a0,4(a0)
    800038f4:	01010113          	addi	sp,sp,16
    800038f8:	00008067          	ret

00000000800038fc <plic_complete>:
    800038fc:	fe010113          	addi	sp,sp,-32
    80003900:	00813823          	sd	s0,16(sp)
    80003904:	00913423          	sd	s1,8(sp)
    80003908:	00113c23          	sd	ra,24(sp)
    8000390c:	02010413          	addi	s0,sp,32
    80003910:	00050493          	mv	s1,a0
    80003914:	00000097          	auipc	ra,0x0
    80003918:	9c0080e7          	jalr	-1600(ra) # 800032d4 <cpuid>
    8000391c:	01813083          	ld	ra,24(sp)
    80003920:	01013403          	ld	s0,16(sp)
    80003924:	00d5179b          	slliw	a5,a0,0xd
    80003928:	0c201737          	lui	a4,0xc201
    8000392c:	00f707b3          	add	a5,a4,a5
    80003930:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003934:	00813483          	ld	s1,8(sp)
    80003938:	02010113          	addi	sp,sp,32
    8000393c:	00008067          	ret

0000000080003940 <consolewrite>:
    80003940:	fb010113          	addi	sp,sp,-80
    80003944:	04813023          	sd	s0,64(sp)
    80003948:	04113423          	sd	ra,72(sp)
    8000394c:	02913c23          	sd	s1,56(sp)
    80003950:	03213823          	sd	s2,48(sp)
    80003954:	03313423          	sd	s3,40(sp)
    80003958:	03413023          	sd	s4,32(sp)
    8000395c:	01513c23          	sd	s5,24(sp)
    80003960:	05010413          	addi	s0,sp,80
    80003964:	06c05c63          	blez	a2,800039dc <consolewrite+0x9c>
    80003968:	00060993          	mv	s3,a2
    8000396c:	00050a13          	mv	s4,a0
    80003970:	00058493          	mv	s1,a1
    80003974:	00000913          	li	s2,0
    80003978:	fff00a93          	li	s5,-1
    8000397c:	01c0006f          	j	80003998 <consolewrite+0x58>
    80003980:	fbf44503          	lbu	a0,-65(s0)
    80003984:	0019091b          	addiw	s2,s2,1
    80003988:	00148493          	addi	s1,s1,1
    8000398c:	00001097          	auipc	ra,0x1
    80003990:	a9c080e7          	jalr	-1380(ra) # 80004428 <uartputc>
    80003994:	03298063          	beq	s3,s2,800039b4 <consolewrite+0x74>
    80003998:	00048613          	mv	a2,s1
    8000399c:	00100693          	li	a3,1
    800039a0:	000a0593          	mv	a1,s4
    800039a4:	fbf40513          	addi	a0,s0,-65
    800039a8:	00000097          	auipc	ra,0x0
    800039ac:	9e4080e7          	jalr	-1564(ra) # 8000338c <either_copyin>
    800039b0:	fd5518e3          	bne	a0,s5,80003980 <consolewrite+0x40>
    800039b4:	04813083          	ld	ra,72(sp)
    800039b8:	04013403          	ld	s0,64(sp)
    800039bc:	03813483          	ld	s1,56(sp)
    800039c0:	02813983          	ld	s3,40(sp)
    800039c4:	02013a03          	ld	s4,32(sp)
    800039c8:	01813a83          	ld	s5,24(sp)
    800039cc:	00090513          	mv	a0,s2
    800039d0:	03013903          	ld	s2,48(sp)
    800039d4:	05010113          	addi	sp,sp,80
    800039d8:	00008067          	ret
    800039dc:	00000913          	li	s2,0
    800039e0:	fd5ff06f          	j	800039b4 <consolewrite+0x74>

00000000800039e4 <consoleread>:
    800039e4:	f9010113          	addi	sp,sp,-112
    800039e8:	06813023          	sd	s0,96(sp)
    800039ec:	04913c23          	sd	s1,88(sp)
    800039f0:	05213823          	sd	s2,80(sp)
    800039f4:	05313423          	sd	s3,72(sp)
    800039f8:	05413023          	sd	s4,64(sp)
    800039fc:	03513c23          	sd	s5,56(sp)
    80003a00:	03613823          	sd	s6,48(sp)
    80003a04:	03713423          	sd	s7,40(sp)
    80003a08:	03813023          	sd	s8,32(sp)
    80003a0c:	06113423          	sd	ra,104(sp)
    80003a10:	01913c23          	sd	s9,24(sp)
    80003a14:	07010413          	addi	s0,sp,112
    80003a18:	00060b93          	mv	s7,a2
    80003a1c:	00050913          	mv	s2,a0
    80003a20:	00058c13          	mv	s8,a1
    80003a24:	00060b1b          	sext.w	s6,a2
    80003a28:	00005497          	auipc	s1,0x5
    80003a2c:	92048493          	addi	s1,s1,-1760 # 80008348 <cons>
    80003a30:	00400993          	li	s3,4
    80003a34:	fff00a13          	li	s4,-1
    80003a38:	00a00a93          	li	s5,10
    80003a3c:	05705e63          	blez	s7,80003a98 <consoleread+0xb4>
    80003a40:	09c4a703          	lw	a4,156(s1)
    80003a44:	0984a783          	lw	a5,152(s1)
    80003a48:	0007071b          	sext.w	a4,a4
    80003a4c:	08e78463          	beq	a5,a4,80003ad4 <consoleread+0xf0>
    80003a50:	07f7f713          	andi	a4,a5,127
    80003a54:	00e48733          	add	a4,s1,a4
    80003a58:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003a5c:	0017869b          	addiw	a3,a5,1
    80003a60:	08d4ac23          	sw	a3,152(s1)
    80003a64:	00070c9b          	sext.w	s9,a4
    80003a68:	0b370663          	beq	a4,s3,80003b14 <consoleread+0x130>
    80003a6c:	00100693          	li	a3,1
    80003a70:	f9f40613          	addi	a2,s0,-97
    80003a74:	000c0593          	mv	a1,s8
    80003a78:	00090513          	mv	a0,s2
    80003a7c:	f8e40fa3          	sb	a4,-97(s0)
    80003a80:	00000097          	auipc	ra,0x0
    80003a84:	8c0080e7          	jalr	-1856(ra) # 80003340 <either_copyout>
    80003a88:	01450863          	beq	a0,s4,80003a98 <consoleread+0xb4>
    80003a8c:	001c0c13          	addi	s8,s8,1
    80003a90:	fffb8b9b          	addiw	s7,s7,-1
    80003a94:	fb5c94e3          	bne	s9,s5,80003a3c <consoleread+0x58>
    80003a98:	000b851b          	sext.w	a0,s7
    80003a9c:	06813083          	ld	ra,104(sp)
    80003aa0:	06013403          	ld	s0,96(sp)
    80003aa4:	05813483          	ld	s1,88(sp)
    80003aa8:	05013903          	ld	s2,80(sp)
    80003aac:	04813983          	ld	s3,72(sp)
    80003ab0:	04013a03          	ld	s4,64(sp)
    80003ab4:	03813a83          	ld	s5,56(sp)
    80003ab8:	02813b83          	ld	s7,40(sp)
    80003abc:	02013c03          	ld	s8,32(sp)
    80003ac0:	01813c83          	ld	s9,24(sp)
    80003ac4:	40ab053b          	subw	a0,s6,a0
    80003ac8:	03013b03          	ld	s6,48(sp)
    80003acc:	07010113          	addi	sp,sp,112
    80003ad0:	00008067          	ret
    80003ad4:	00001097          	auipc	ra,0x1
    80003ad8:	1d8080e7          	jalr	472(ra) # 80004cac <push_on>
    80003adc:	0984a703          	lw	a4,152(s1)
    80003ae0:	09c4a783          	lw	a5,156(s1)
    80003ae4:	0007879b          	sext.w	a5,a5
    80003ae8:	fef70ce3          	beq	a4,a5,80003ae0 <consoleread+0xfc>
    80003aec:	00001097          	auipc	ra,0x1
    80003af0:	234080e7          	jalr	564(ra) # 80004d20 <pop_on>
    80003af4:	0984a783          	lw	a5,152(s1)
    80003af8:	07f7f713          	andi	a4,a5,127
    80003afc:	00e48733          	add	a4,s1,a4
    80003b00:	01874703          	lbu	a4,24(a4)
    80003b04:	0017869b          	addiw	a3,a5,1
    80003b08:	08d4ac23          	sw	a3,152(s1)
    80003b0c:	00070c9b          	sext.w	s9,a4
    80003b10:	f5371ee3          	bne	a4,s3,80003a6c <consoleread+0x88>
    80003b14:	000b851b          	sext.w	a0,s7
    80003b18:	f96bf2e3          	bgeu	s7,s6,80003a9c <consoleread+0xb8>
    80003b1c:	08f4ac23          	sw	a5,152(s1)
    80003b20:	f7dff06f          	j	80003a9c <consoleread+0xb8>

0000000080003b24 <consputc>:
    80003b24:	10000793          	li	a5,256
    80003b28:	00f50663          	beq	a0,a5,80003b34 <consputc+0x10>
    80003b2c:	00001317          	auipc	t1,0x1
    80003b30:	9f430067          	jr	-1548(t1) # 80004520 <uartputc_sync>
    80003b34:	ff010113          	addi	sp,sp,-16
    80003b38:	00113423          	sd	ra,8(sp)
    80003b3c:	00813023          	sd	s0,0(sp)
    80003b40:	01010413          	addi	s0,sp,16
    80003b44:	00800513          	li	a0,8
    80003b48:	00001097          	auipc	ra,0x1
    80003b4c:	9d8080e7          	jalr	-1576(ra) # 80004520 <uartputc_sync>
    80003b50:	02000513          	li	a0,32
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	9cc080e7          	jalr	-1588(ra) # 80004520 <uartputc_sync>
    80003b5c:	00013403          	ld	s0,0(sp)
    80003b60:	00813083          	ld	ra,8(sp)
    80003b64:	00800513          	li	a0,8
    80003b68:	01010113          	addi	sp,sp,16
    80003b6c:	00001317          	auipc	t1,0x1
    80003b70:	9b430067          	jr	-1612(t1) # 80004520 <uartputc_sync>

0000000080003b74 <consoleintr>:
    80003b74:	fe010113          	addi	sp,sp,-32
    80003b78:	00813823          	sd	s0,16(sp)
    80003b7c:	00913423          	sd	s1,8(sp)
    80003b80:	01213023          	sd	s2,0(sp)
    80003b84:	00113c23          	sd	ra,24(sp)
    80003b88:	02010413          	addi	s0,sp,32
    80003b8c:	00004917          	auipc	s2,0x4
    80003b90:	7bc90913          	addi	s2,s2,1980 # 80008348 <cons>
    80003b94:	00050493          	mv	s1,a0
    80003b98:	00090513          	mv	a0,s2
    80003b9c:	00001097          	auipc	ra,0x1
    80003ba0:	e40080e7          	jalr	-448(ra) # 800049dc <acquire>
    80003ba4:	02048c63          	beqz	s1,80003bdc <consoleintr+0x68>
    80003ba8:	0a092783          	lw	a5,160(s2)
    80003bac:	09892703          	lw	a4,152(s2)
    80003bb0:	07f00693          	li	a3,127
    80003bb4:	40e7873b          	subw	a4,a5,a4
    80003bb8:	02e6e263          	bltu	a3,a4,80003bdc <consoleintr+0x68>
    80003bbc:	00d00713          	li	a4,13
    80003bc0:	04e48063          	beq	s1,a4,80003c00 <consoleintr+0x8c>
    80003bc4:	07f7f713          	andi	a4,a5,127
    80003bc8:	00e90733          	add	a4,s2,a4
    80003bcc:	0017879b          	addiw	a5,a5,1
    80003bd0:	0af92023          	sw	a5,160(s2)
    80003bd4:	00970c23          	sb	s1,24(a4)
    80003bd8:	08f92e23          	sw	a5,156(s2)
    80003bdc:	01013403          	ld	s0,16(sp)
    80003be0:	01813083          	ld	ra,24(sp)
    80003be4:	00813483          	ld	s1,8(sp)
    80003be8:	00013903          	ld	s2,0(sp)
    80003bec:	00004517          	auipc	a0,0x4
    80003bf0:	75c50513          	addi	a0,a0,1884 # 80008348 <cons>
    80003bf4:	02010113          	addi	sp,sp,32
    80003bf8:	00001317          	auipc	t1,0x1
    80003bfc:	eb030067          	jr	-336(t1) # 80004aa8 <release>
    80003c00:	00a00493          	li	s1,10
    80003c04:	fc1ff06f          	j	80003bc4 <consoleintr+0x50>

0000000080003c08 <consoleinit>:
    80003c08:	fe010113          	addi	sp,sp,-32
    80003c0c:	00113c23          	sd	ra,24(sp)
    80003c10:	00813823          	sd	s0,16(sp)
    80003c14:	00913423          	sd	s1,8(sp)
    80003c18:	02010413          	addi	s0,sp,32
    80003c1c:	00004497          	auipc	s1,0x4
    80003c20:	72c48493          	addi	s1,s1,1836 # 80008348 <cons>
    80003c24:	00048513          	mv	a0,s1
    80003c28:	00002597          	auipc	a1,0x2
    80003c2c:	62058593          	addi	a1,a1,1568 # 80006248 <CONSOLE_STATUS+0x238>
    80003c30:	00001097          	auipc	ra,0x1
    80003c34:	d88080e7          	jalr	-632(ra) # 800049b8 <initlock>
    80003c38:	00000097          	auipc	ra,0x0
    80003c3c:	7ac080e7          	jalr	1964(ra) # 800043e4 <uartinit>
    80003c40:	01813083          	ld	ra,24(sp)
    80003c44:	01013403          	ld	s0,16(sp)
    80003c48:	00000797          	auipc	a5,0x0
    80003c4c:	d9c78793          	addi	a5,a5,-612 # 800039e4 <consoleread>
    80003c50:	0af4bc23          	sd	a5,184(s1)
    80003c54:	00000797          	auipc	a5,0x0
    80003c58:	cec78793          	addi	a5,a5,-788 # 80003940 <consolewrite>
    80003c5c:	0cf4b023          	sd	a5,192(s1)
    80003c60:	00813483          	ld	s1,8(sp)
    80003c64:	02010113          	addi	sp,sp,32
    80003c68:	00008067          	ret

0000000080003c6c <console_read>:
    80003c6c:	ff010113          	addi	sp,sp,-16
    80003c70:	00813423          	sd	s0,8(sp)
    80003c74:	01010413          	addi	s0,sp,16
    80003c78:	00813403          	ld	s0,8(sp)
    80003c7c:	00004317          	auipc	t1,0x4
    80003c80:	78433303          	ld	t1,1924(t1) # 80008400 <devsw+0x10>
    80003c84:	01010113          	addi	sp,sp,16
    80003c88:	00030067          	jr	t1

0000000080003c8c <console_write>:
    80003c8c:	ff010113          	addi	sp,sp,-16
    80003c90:	00813423          	sd	s0,8(sp)
    80003c94:	01010413          	addi	s0,sp,16
    80003c98:	00813403          	ld	s0,8(sp)
    80003c9c:	00004317          	auipc	t1,0x4
    80003ca0:	76c33303          	ld	t1,1900(t1) # 80008408 <devsw+0x18>
    80003ca4:	01010113          	addi	sp,sp,16
    80003ca8:	00030067          	jr	t1

0000000080003cac <panic>:
    80003cac:	fe010113          	addi	sp,sp,-32
    80003cb0:	00113c23          	sd	ra,24(sp)
    80003cb4:	00813823          	sd	s0,16(sp)
    80003cb8:	00913423          	sd	s1,8(sp)
    80003cbc:	02010413          	addi	s0,sp,32
    80003cc0:	00050493          	mv	s1,a0
    80003cc4:	00002517          	auipc	a0,0x2
    80003cc8:	58c50513          	addi	a0,a0,1420 # 80006250 <CONSOLE_STATUS+0x240>
    80003ccc:	00004797          	auipc	a5,0x4
    80003cd0:	7c07ae23          	sw	zero,2012(a5) # 800084a8 <pr+0x18>
    80003cd4:	00000097          	auipc	ra,0x0
    80003cd8:	034080e7          	jalr	52(ra) # 80003d08 <__printf>
    80003cdc:	00048513          	mv	a0,s1
    80003ce0:	00000097          	auipc	ra,0x0
    80003ce4:	028080e7          	jalr	40(ra) # 80003d08 <__printf>
    80003ce8:	00002517          	auipc	a0,0x2
    80003cec:	37050513          	addi	a0,a0,880 # 80006058 <CONSOLE_STATUS+0x48>
    80003cf0:	00000097          	auipc	ra,0x0
    80003cf4:	018080e7          	jalr	24(ra) # 80003d08 <__printf>
    80003cf8:	00100793          	li	a5,1
    80003cfc:	00003717          	auipc	a4,0x3
    80003d00:	4ef72623          	sw	a5,1260(a4) # 800071e8 <panicked>
    80003d04:	0000006f          	j	80003d04 <panic+0x58>

0000000080003d08 <__printf>:
    80003d08:	f3010113          	addi	sp,sp,-208
    80003d0c:	08813023          	sd	s0,128(sp)
    80003d10:	07313423          	sd	s3,104(sp)
    80003d14:	09010413          	addi	s0,sp,144
    80003d18:	05813023          	sd	s8,64(sp)
    80003d1c:	08113423          	sd	ra,136(sp)
    80003d20:	06913c23          	sd	s1,120(sp)
    80003d24:	07213823          	sd	s2,112(sp)
    80003d28:	07413023          	sd	s4,96(sp)
    80003d2c:	05513c23          	sd	s5,88(sp)
    80003d30:	05613823          	sd	s6,80(sp)
    80003d34:	05713423          	sd	s7,72(sp)
    80003d38:	03913c23          	sd	s9,56(sp)
    80003d3c:	03a13823          	sd	s10,48(sp)
    80003d40:	03b13423          	sd	s11,40(sp)
    80003d44:	00004317          	auipc	t1,0x4
    80003d48:	74c30313          	addi	t1,t1,1868 # 80008490 <pr>
    80003d4c:	01832c03          	lw	s8,24(t1)
    80003d50:	00b43423          	sd	a1,8(s0)
    80003d54:	00c43823          	sd	a2,16(s0)
    80003d58:	00d43c23          	sd	a3,24(s0)
    80003d5c:	02e43023          	sd	a4,32(s0)
    80003d60:	02f43423          	sd	a5,40(s0)
    80003d64:	03043823          	sd	a6,48(s0)
    80003d68:	03143c23          	sd	a7,56(s0)
    80003d6c:	00050993          	mv	s3,a0
    80003d70:	4a0c1663          	bnez	s8,8000421c <__printf+0x514>
    80003d74:	60098c63          	beqz	s3,8000438c <__printf+0x684>
    80003d78:	0009c503          	lbu	a0,0(s3)
    80003d7c:	00840793          	addi	a5,s0,8
    80003d80:	f6f43c23          	sd	a5,-136(s0)
    80003d84:	00000493          	li	s1,0
    80003d88:	22050063          	beqz	a0,80003fa8 <__printf+0x2a0>
    80003d8c:	00002a37          	lui	s4,0x2
    80003d90:	00018ab7          	lui	s5,0x18
    80003d94:	000f4b37          	lui	s6,0xf4
    80003d98:	00989bb7          	lui	s7,0x989
    80003d9c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003da0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003da4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003da8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003dac:	00148c9b          	addiw	s9,s1,1
    80003db0:	02500793          	li	a5,37
    80003db4:	01998933          	add	s2,s3,s9
    80003db8:	38f51263          	bne	a0,a5,8000413c <__printf+0x434>
    80003dbc:	00094783          	lbu	a5,0(s2)
    80003dc0:	00078c9b          	sext.w	s9,a5
    80003dc4:	1e078263          	beqz	a5,80003fa8 <__printf+0x2a0>
    80003dc8:	0024849b          	addiw	s1,s1,2
    80003dcc:	07000713          	li	a4,112
    80003dd0:	00998933          	add	s2,s3,s1
    80003dd4:	38e78a63          	beq	a5,a4,80004168 <__printf+0x460>
    80003dd8:	20f76863          	bltu	a4,a5,80003fe8 <__printf+0x2e0>
    80003ddc:	42a78863          	beq	a5,a0,8000420c <__printf+0x504>
    80003de0:	06400713          	li	a4,100
    80003de4:	40e79663          	bne	a5,a4,800041f0 <__printf+0x4e8>
    80003de8:	f7843783          	ld	a5,-136(s0)
    80003dec:	0007a603          	lw	a2,0(a5)
    80003df0:	00878793          	addi	a5,a5,8
    80003df4:	f6f43c23          	sd	a5,-136(s0)
    80003df8:	42064a63          	bltz	a2,8000422c <__printf+0x524>
    80003dfc:	00a00713          	li	a4,10
    80003e00:	02e677bb          	remuw	a5,a2,a4
    80003e04:	00002d97          	auipc	s11,0x2
    80003e08:	474d8d93          	addi	s11,s11,1140 # 80006278 <digits>
    80003e0c:	00900593          	li	a1,9
    80003e10:	0006051b          	sext.w	a0,a2
    80003e14:	00000c93          	li	s9,0
    80003e18:	02079793          	slli	a5,a5,0x20
    80003e1c:	0207d793          	srli	a5,a5,0x20
    80003e20:	00fd87b3          	add	a5,s11,a5
    80003e24:	0007c783          	lbu	a5,0(a5)
    80003e28:	02e656bb          	divuw	a3,a2,a4
    80003e2c:	f8f40023          	sb	a5,-128(s0)
    80003e30:	14c5d863          	bge	a1,a2,80003f80 <__printf+0x278>
    80003e34:	06300593          	li	a1,99
    80003e38:	00100c93          	li	s9,1
    80003e3c:	02e6f7bb          	remuw	a5,a3,a4
    80003e40:	02079793          	slli	a5,a5,0x20
    80003e44:	0207d793          	srli	a5,a5,0x20
    80003e48:	00fd87b3          	add	a5,s11,a5
    80003e4c:	0007c783          	lbu	a5,0(a5)
    80003e50:	02e6d73b          	divuw	a4,a3,a4
    80003e54:	f8f400a3          	sb	a5,-127(s0)
    80003e58:	12a5f463          	bgeu	a1,a0,80003f80 <__printf+0x278>
    80003e5c:	00a00693          	li	a3,10
    80003e60:	00900593          	li	a1,9
    80003e64:	02d777bb          	remuw	a5,a4,a3
    80003e68:	02079793          	slli	a5,a5,0x20
    80003e6c:	0207d793          	srli	a5,a5,0x20
    80003e70:	00fd87b3          	add	a5,s11,a5
    80003e74:	0007c503          	lbu	a0,0(a5)
    80003e78:	02d757bb          	divuw	a5,a4,a3
    80003e7c:	f8a40123          	sb	a0,-126(s0)
    80003e80:	48e5f263          	bgeu	a1,a4,80004304 <__printf+0x5fc>
    80003e84:	06300513          	li	a0,99
    80003e88:	02d7f5bb          	remuw	a1,a5,a3
    80003e8c:	02059593          	slli	a1,a1,0x20
    80003e90:	0205d593          	srli	a1,a1,0x20
    80003e94:	00bd85b3          	add	a1,s11,a1
    80003e98:	0005c583          	lbu	a1,0(a1)
    80003e9c:	02d7d7bb          	divuw	a5,a5,a3
    80003ea0:	f8b401a3          	sb	a1,-125(s0)
    80003ea4:	48e57263          	bgeu	a0,a4,80004328 <__printf+0x620>
    80003ea8:	3e700513          	li	a0,999
    80003eac:	02d7f5bb          	remuw	a1,a5,a3
    80003eb0:	02059593          	slli	a1,a1,0x20
    80003eb4:	0205d593          	srli	a1,a1,0x20
    80003eb8:	00bd85b3          	add	a1,s11,a1
    80003ebc:	0005c583          	lbu	a1,0(a1)
    80003ec0:	02d7d7bb          	divuw	a5,a5,a3
    80003ec4:	f8b40223          	sb	a1,-124(s0)
    80003ec8:	46e57663          	bgeu	a0,a4,80004334 <__printf+0x62c>
    80003ecc:	02d7f5bb          	remuw	a1,a5,a3
    80003ed0:	02059593          	slli	a1,a1,0x20
    80003ed4:	0205d593          	srli	a1,a1,0x20
    80003ed8:	00bd85b3          	add	a1,s11,a1
    80003edc:	0005c583          	lbu	a1,0(a1)
    80003ee0:	02d7d7bb          	divuw	a5,a5,a3
    80003ee4:	f8b402a3          	sb	a1,-123(s0)
    80003ee8:	46ea7863          	bgeu	s4,a4,80004358 <__printf+0x650>
    80003eec:	02d7f5bb          	remuw	a1,a5,a3
    80003ef0:	02059593          	slli	a1,a1,0x20
    80003ef4:	0205d593          	srli	a1,a1,0x20
    80003ef8:	00bd85b3          	add	a1,s11,a1
    80003efc:	0005c583          	lbu	a1,0(a1)
    80003f00:	02d7d7bb          	divuw	a5,a5,a3
    80003f04:	f8b40323          	sb	a1,-122(s0)
    80003f08:	3eeaf863          	bgeu	s5,a4,800042f8 <__printf+0x5f0>
    80003f0c:	02d7f5bb          	remuw	a1,a5,a3
    80003f10:	02059593          	slli	a1,a1,0x20
    80003f14:	0205d593          	srli	a1,a1,0x20
    80003f18:	00bd85b3          	add	a1,s11,a1
    80003f1c:	0005c583          	lbu	a1,0(a1)
    80003f20:	02d7d7bb          	divuw	a5,a5,a3
    80003f24:	f8b403a3          	sb	a1,-121(s0)
    80003f28:	42eb7e63          	bgeu	s6,a4,80004364 <__printf+0x65c>
    80003f2c:	02d7f5bb          	remuw	a1,a5,a3
    80003f30:	02059593          	slli	a1,a1,0x20
    80003f34:	0205d593          	srli	a1,a1,0x20
    80003f38:	00bd85b3          	add	a1,s11,a1
    80003f3c:	0005c583          	lbu	a1,0(a1)
    80003f40:	02d7d7bb          	divuw	a5,a5,a3
    80003f44:	f8b40423          	sb	a1,-120(s0)
    80003f48:	42ebfc63          	bgeu	s7,a4,80004380 <__printf+0x678>
    80003f4c:	02079793          	slli	a5,a5,0x20
    80003f50:	0207d793          	srli	a5,a5,0x20
    80003f54:	00fd8db3          	add	s11,s11,a5
    80003f58:	000dc703          	lbu	a4,0(s11)
    80003f5c:	00a00793          	li	a5,10
    80003f60:	00900c93          	li	s9,9
    80003f64:	f8e404a3          	sb	a4,-119(s0)
    80003f68:	00065c63          	bgez	a2,80003f80 <__printf+0x278>
    80003f6c:	f9040713          	addi	a4,s0,-112
    80003f70:	00f70733          	add	a4,a4,a5
    80003f74:	02d00693          	li	a3,45
    80003f78:	fed70823          	sb	a3,-16(a4)
    80003f7c:	00078c93          	mv	s9,a5
    80003f80:	f8040793          	addi	a5,s0,-128
    80003f84:	01978cb3          	add	s9,a5,s9
    80003f88:	f7f40d13          	addi	s10,s0,-129
    80003f8c:	000cc503          	lbu	a0,0(s9)
    80003f90:	fffc8c93          	addi	s9,s9,-1
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	b90080e7          	jalr	-1136(ra) # 80003b24 <consputc>
    80003f9c:	ffac98e3          	bne	s9,s10,80003f8c <__printf+0x284>
    80003fa0:	00094503          	lbu	a0,0(s2)
    80003fa4:	e00514e3          	bnez	a0,80003dac <__printf+0xa4>
    80003fa8:	1a0c1663          	bnez	s8,80004154 <__printf+0x44c>
    80003fac:	08813083          	ld	ra,136(sp)
    80003fb0:	08013403          	ld	s0,128(sp)
    80003fb4:	07813483          	ld	s1,120(sp)
    80003fb8:	07013903          	ld	s2,112(sp)
    80003fbc:	06813983          	ld	s3,104(sp)
    80003fc0:	06013a03          	ld	s4,96(sp)
    80003fc4:	05813a83          	ld	s5,88(sp)
    80003fc8:	05013b03          	ld	s6,80(sp)
    80003fcc:	04813b83          	ld	s7,72(sp)
    80003fd0:	04013c03          	ld	s8,64(sp)
    80003fd4:	03813c83          	ld	s9,56(sp)
    80003fd8:	03013d03          	ld	s10,48(sp)
    80003fdc:	02813d83          	ld	s11,40(sp)
    80003fe0:	0d010113          	addi	sp,sp,208
    80003fe4:	00008067          	ret
    80003fe8:	07300713          	li	a4,115
    80003fec:	1ce78a63          	beq	a5,a4,800041c0 <__printf+0x4b8>
    80003ff0:	07800713          	li	a4,120
    80003ff4:	1ee79e63          	bne	a5,a4,800041f0 <__printf+0x4e8>
    80003ff8:	f7843783          	ld	a5,-136(s0)
    80003ffc:	0007a703          	lw	a4,0(a5)
    80004000:	00878793          	addi	a5,a5,8
    80004004:	f6f43c23          	sd	a5,-136(s0)
    80004008:	28074263          	bltz	a4,8000428c <__printf+0x584>
    8000400c:	00002d97          	auipc	s11,0x2
    80004010:	26cd8d93          	addi	s11,s11,620 # 80006278 <digits>
    80004014:	00f77793          	andi	a5,a4,15
    80004018:	00fd87b3          	add	a5,s11,a5
    8000401c:	0007c683          	lbu	a3,0(a5)
    80004020:	00f00613          	li	a2,15
    80004024:	0007079b          	sext.w	a5,a4
    80004028:	f8d40023          	sb	a3,-128(s0)
    8000402c:	0047559b          	srliw	a1,a4,0x4
    80004030:	0047569b          	srliw	a3,a4,0x4
    80004034:	00000c93          	li	s9,0
    80004038:	0ee65063          	bge	a2,a4,80004118 <__printf+0x410>
    8000403c:	00f6f693          	andi	a3,a3,15
    80004040:	00dd86b3          	add	a3,s11,a3
    80004044:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004048:	0087d79b          	srliw	a5,a5,0x8
    8000404c:	00100c93          	li	s9,1
    80004050:	f8d400a3          	sb	a3,-127(s0)
    80004054:	0cb67263          	bgeu	a2,a1,80004118 <__printf+0x410>
    80004058:	00f7f693          	andi	a3,a5,15
    8000405c:	00dd86b3          	add	a3,s11,a3
    80004060:	0006c583          	lbu	a1,0(a3)
    80004064:	00f00613          	li	a2,15
    80004068:	0047d69b          	srliw	a3,a5,0x4
    8000406c:	f8b40123          	sb	a1,-126(s0)
    80004070:	0047d593          	srli	a1,a5,0x4
    80004074:	28f67e63          	bgeu	a2,a5,80004310 <__printf+0x608>
    80004078:	00f6f693          	andi	a3,a3,15
    8000407c:	00dd86b3          	add	a3,s11,a3
    80004080:	0006c503          	lbu	a0,0(a3)
    80004084:	0087d813          	srli	a6,a5,0x8
    80004088:	0087d69b          	srliw	a3,a5,0x8
    8000408c:	f8a401a3          	sb	a0,-125(s0)
    80004090:	28b67663          	bgeu	a2,a1,8000431c <__printf+0x614>
    80004094:	00f6f693          	andi	a3,a3,15
    80004098:	00dd86b3          	add	a3,s11,a3
    8000409c:	0006c583          	lbu	a1,0(a3)
    800040a0:	00c7d513          	srli	a0,a5,0xc
    800040a4:	00c7d69b          	srliw	a3,a5,0xc
    800040a8:	f8b40223          	sb	a1,-124(s0)
    800040ac:	29067a63          	bgeu	a2,a6,80004340 <__printf+0x638>
    800040b0:	00f6f693          	andi	a3,a3,15
    800040b4:	00dd86b3          	add	a3,s11,a3
    800040b8:	0006c583          	lbu	a1,0(a3)
    800040bc:	0107d813          	srli	a6,a5,0x10
    800040c0:	0107d69b          	srliw	a3,a5,0x10
    800040c4:	f8b402a3          	sb	a1,-123(s0)
    800040c8:	28a67263          	bgeu	a2,a0,8000434c <__printf+0x644>
    800040cc:	00f6f693          	andi	a3,a3,15
    800040d0:	00dd86b3          	add	a3,s11,a3
    800040d4:	0006c683          	lbu	a3,0(a3)
    800040d8:	0147d79b          	srliw	a5,a5,0x14
    800040dc:	f8d40323          	sb	a3,-122(s0)
    800040e0:	21067663          	bgeu	a2,a6,800042ec <__printf+0x5e4>
    800040e4:	02079793          	slli	a5,a5,0x20
    800040e8:	0207d793          	srli	a5,a5,0x20
    800040ec:	00fd8db3          	add	s11,s11,a5
    800040f0:	000dc683          	lbu	a3,0(s11)
    800040f4:	00800793          	li	a5,8
    800040f8:	00700c93          	li	s9,7
    800040fc:	f8d403a3          	sb	a3,-121(s0)
    80004100:	00075c63          	bgez	a4,80004118 <__printf+0x410>
    80004104:	f9040713          	addi	a4,s0,-112
    80004108:	00f70733          	add	a4,a4,a5
    8000410c:	02d00693          	li	a3,45
    80004110:	fed70823          	sb	a3,-16(a4)
    80004114:	00078c93          	mv	s9,a5
    80004118:	f8040793          	addi	a5,s0,-128
    8000411c:	01978cb3          	add	s9,a5,s9
    80004120:	f7f40d13          	addi	s10,s0,-129
    80004124:	000cc503          	lbu	a0,0(s9)
    80004128:	fffc8c93          	addi	s9,s9,-1
    8000412c:	00000097          	auipc	ra,0x0
    80004130:	9f8080e7          	jalr	-1544(ra) # 80003b24 <consputc>
    80004134:	ff9d18e3          	bne	s10,s9,80004124 <__printf+0x41c>
    80004138:	0100006f          	j	80004148 <__printf+0x440>
    8000413c:	00000097          	auipc	ra,0x0
    80004140:	9e8080e7          	jalr	-1560(ra) # 80003b24 <consputc>
    80004144:	000c8493          	mv	s1,s9
    80004148:	00094503          	lbu	a0,0(s2)
    8000414c:	c60510e3          	bnez	a0,80003dac <__printf+0xa4>
    80004150:	e40c0ee3          	beqz	s8,80003fac <__printf+0x2a4>
    80004154:	00004517          	auipc	a0,0x4
    80004158:	33c50513          	addi	a0,a0,828 # 80008490 <pr>
    8000415c:	00001097          	auipc	ra,0x1
    80004160:	94c080e7          	jalr	-1716(ra) # 80004aa8 <release>
    80004164:	e49ff06f          	j	80003fac <__printf+0x2a4>
    80004168:	f7843783          	ld	a5,-136(s0)
    8000416c:	03000513          	li	a0,48
    80004170:	01000d13          	li	s10,16
    80004174:	00878713          	addi	a4,a5,8
    80004178:	0007bc83          	ld	s9,0(a5)
    8000417c:	f6e43c23          	sd	a4,-136(s0)
    80004180:	00000097          	auipc	ra,0x0
    80004184:	9a4080e7          	jalr	-1628(ra) # 80003b24 <consputc>
    80004188:	07800513          	li	a0,120
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	998080e7          	jalr	-1640(ra) # 80003b24 <consputc>
    80004194:	00002d97          	auipc	s11,0x2
    80004198:	0e4d8d93          	addi	s11,s11,228 # 80006278 <digits>
    8000419c:	03ccd793          	srli	a5,s9,0x3c
    800041a0:	00fd87b3          	add	a5,s11,a5
    800041a4:	0007c503          	lbu	a0,0(a5)
    800041a8:	fffd0d1b          	addiw	s10,s10,-1
    800041ac:	004c9c93          	slli	s9,s9,0x4
    800041b0:	00000097          	auipc	ra,0x0
    800041b4:	974080e7          	jalr	-1676(ra) # 80003b24 <consputc>
    800041b8:	fe0d12e3          	bnez	s10,8000419c <__printf+0x494>
    800041bc:	f8dff06f          	j	80004148 <__printf+0x440>
    800041c0:	f7843783          	ld	a5,-136(s0)
    800041c4:	0007bc83          	ld	s9,0(a5)
    800041c8:	00878793          	addi	a5,a5,8
    800041cc:	f6f43c23          	sd	a5,-136(s0)
    800041d0:	000c9a63          	bnez	s9,800041e4 <__printf+0x4dc>
    800041d4:	1080006f          	j	800042dc <__printf+0x5d4>
    800041d8:	001c8c93          	addi	s9,s9,1
    800041dc:	00000097          	auipc	ra,0x0
    800041e0:	948080e7          	jalr	-1720(ra) # 80003b24 <consputc>
    800041e4:	000cc503          	lbu	a0,0(s9)
    800041e8:	fe0518e3          	bnez	a0,800041d8 <__printf+0x4d0>
    800041ec:	f5dff06f          	j	80004148 <__printf+0x440>
    800041f0:	02500513          	li	a0,37
    800041f4:	00000097          	auipc	ra,0x0
    800041f8:	930080e7          	jalr	-1744(ra) # 80003b24 <consputc>
    800041fc:	000c8513          	mv	a0,s9
    80004200:	00000097          	auipc	ra,0x0
    80004204:	924080e7          	jalr	-1756(ra) # 80003b24 <consputc>
    80004208:	f41ff06f          	j	80004148 <__printf+0x440>
    8000420c:	02500513          	li	a0,37
    80004210:	00000097          	auipc	ra,0x0
    80004214:	914080e7          	jalr	-1772(ra) # 80003b24 <consputc>
    80004218:	f31ff06f          	j	80004148 <__printf+0x440>
    8000421c:	00030513          	mv	a0,t1
    80004220:	00000097          	auipc	ra,0x0
    80004224:	7bc080e7          	jalr	1980(ra) # 800049dc <acquire>
    80004228:	b4dff06f          	j	80003d74 <__printf+0x6c>
    8000422c:	40c0053b          	negw	a0,a2
    80004230:	00a00713          	li	a4,10
    80004234:	02e576bb          	remuw	a3,a0,a4
    80004238:	00002d97          	auipc	s11,0x2
    8000423c:	040d8d93          	addi	s11,s11,64 # 80006278 <digits>
    80004240:	ff700593          	li	a1,-9
    80004244:	02069693          	slli	a3,a3,0x20
    80004248:	0206d693          	srli	a3,a3,0x20
    8000424c:	00dd86b3          	add	a3,s11,a3
    80004250:	0006c683          	lbu	a3,0(a3)
    80004254:	02e557bb          	divuw	a5,a0,a4
    80004258:	f8d40023          	sb	a3,-128(s0)
    8000425c:	10b65e63          	bge	a2,a1,80004378 <__printf+0x670>
    80004260:	06300593          	li	a1,99
    80004264:	02e7f6bb          	remuw	a3,a5,a4
    80004268:	02069693          	slli	a3,a3,0x20
    8000426c:	0206d693          	srli	a3,a3,0x20
    80004270:	00dd86b3          	add	a3,s11,a3
    80004274:	0006c683          	lbu	a3,0(a3)
    80004278:	02e7d73b          	divuw	a4,a5,a4
    8000427c:	00200793          	li	a5,2
    80004280:	f8d400a3          	sb	a3,-127(s0)
    80004284:	bca5ece3          	bltu	a1,a0,80003e5c <__printf+0x154>
    80004288:	ce5ff06f          	j	80003f6c <__printf+0x264>
    8000428c:	40e007bb          	negw	a5,a4
    80004290:	00002d97          	auipc	s11,0x2
    80004294:	fe8d8d93          	addi	s11,s11,-24 # 80006278 <digits>
    80004298:	00f7f693          	andi	a3,a5,15
    8000429c:	00dd86b3          	add	a3,s11,a3
    800042a0:	0006c583          	lbu	a1,0(a3)
    800042a4:	ff100613          	li	a2,-15
    800042a8:	0047d69b          	srliw	a3,a5,0x4
    800042ac:	f8b40023          	sb	a1,-128(s0)
    800042b0:	0047d59b          	srliw	a1,a5,0x4
    800042b4:	0ac75e63          	bge	a4,a2,80004370 <__printf+0x668>
    800042b8:	00f6f693          	andi	a3,a3,15
    800042bc:	00dd86b3          	add	a3,s11,a3
    800042c0:	0006c603          	lbu	a2,0(a3)
    800042c4:	00f00693          	li	a3,15
    800042c8:	0087d79b          	srliw	a5,a5,0x8
    800042cc:	f8c400a3          	sb	a2,-127(s0)
    800042d0:	d8b6e4e3          	bltu	a3,a1,80004058 <__printf+0x350>
    800042d4:	00200793          	li	a5,2
    800042d8:	e2dff06f          	j	80004104 <__printf+0x3fc>
    800042dc:	00002c97          	auipc	s9,0x2
    800042e0:	f7cc8c93          	addi	s9,s9,-132 # 80006258 <CONSOLE_STATUS+0x248>
    800042e4:	02800513          	li	a0,40
    800042e8:	ef1ff06f          	j	800041d8 <__printf+0x4d0>
    800042ec:	00700793          	li	a5,7
    800042f0:	00600c93          	li	s9,6
    800042f4:	e0dff06f          	j	80004100 <__printf+0x3f8>
    800042f8:	00700793          	li	a5,7
    800042fc:	00600c93          	li	s9,6
    80004300:	c69ff06f          	j	80003f68 <__printf+0x260>
    80004304:	00300793          	li	a5,3
    80004308:	00200c93          	li	s9,2
    8000430c:	c5dff06f          	j	80003f68 <__printf+0x260>
    80004310:	00300793          	li	a5,3
    80004314:	00200c93          	li	s9,2
    80004318:	de9ff06f          	j	80004100 <__printf+0x3f8>
    8000431c:	00400793          	li	a5,4
    80004320:	00300c93          	li	s9,3
    80004324:	dddff06f          	j	80004100 <__printf+0x3f8>
    80004328:	00400793          	li	a5,4
    8000432c:	00300c93          	li	s9,3
    80004330:	c39ff06f          	j	80003f68 <__printf+0x260>
    80004334:	00500793          	li	a5,5
    80004338:	00400c93          	li	s9,4
    8000433c:	c2dff06f          	j	80003f68 <__printf+0x260>
    80004340:	00500793          	li	a5,5
    80004344:	00400c93          	li	s9,4
    80004348:	db9ff06f          	j	80004100 <__printf+0x3f8>
    8000434c:	00600793          	li	a5,6
    80004350:	00500c93          	li	s9,5
    80004354:	dadff06f          	j	80004100 <__printf+0x3f8>
    80004358:	00600793          	li	a5,6
    8000435c:	00500c93          	li	s9,5
    80004360:	c09ff06f          	j	80003f68 <__printf+0x260>
    80004364:	00800793          	li	a5,8
    80004368:	00700c93          	li	s9,7
    8000436c:	bfdff06f          	j	80003f68 <__printf+0x260>
    80004370:	00100793          	li	a5,1
    80004374:	d91ff06f          	j	80004104 <__printf+0x3fc>
    80004378:	00100793          	li	a5,1
    8000437c:	bf1ff06f          	j	80003f6c <__printf+0x264>
    80004380:	00900793          	li	a5,9
    80004384:	00800c93          	li	s9,8
    80004388:	be1ff06f          	j	80003f68 <__printf+0x260>
    8000438c:	00002517          	auipc	a0,0x2
    80004390:	ed450513          	addi	a0,a0,-300 # 80006260 <CONSOLE_STATUS+0x250>
    80004394:	00000097          	auipc	ra,0x0
    80004398:	918080e7          	jalr	-1768(ra) # 80003cac <panic>

000000008000439c <printfinit>:
    8000439c:	fe010113          	addi	sp,sp,-32
    800043a0:	00813823          	sd	s0,16(sp)
    800043a4:	00913423          	sd	s1,8(sp)
    800043a8:	00113c23          	sd	ra,24(sp)
    800043ac:	02010413          	addi	s0,sp,32
    800043b0:	00004497          	auipc	s1,0x4
    800043b4:	0e048493          	addi	s1,s1,224 # 80008490 <pr>
    800043b8:	00048513          	mv	a0,s1
    800043bc:	00002597          	auipc	a1,0x2
    800043c0:	eb458593          	addi	a1,a1,-332 # 80006270 <CONSOLE_STATUS+0x260>
    800043c4:	00000097          	auipc	ra,0x0
    800043c8:	5f4080e7          	jalr	1524(ra) # 800049b8 <initlock>
    800043cc:	01813083          	ld	ra,24(sp)
    800043d0:	01013403          	ld	s0,16(sp)
    800043d4:	0004ac23          	sw	zero,24(s1)
    800043d8:	00813483          	ld	s1,8(sp)
    800043dc:	02010113          	addi	sp,sp,32
    800043e0:	00008067          	ret

00000000800043e4 <uartinit>:
    800043e4:	ff010113          	addi	sp,sp,-16
    800043e8:	00813423          	sd	s0,8(sp)
    800043ec:	01010413          	addi	s0,sp,16
    800043f0:	100007b7          	lui	a5,0x10000
    800043f4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800043f8:	f8000713          	li	a4,-128
    800043fc:	00e781a3          	sb	a4,3(a5)
    80004400:	00300713          	li	a4,3
    80004404:	00e78023          	sb	a4,0(a5)
    80004408:	000780a3          	sb	zero,1(a5)
    8000440c:	00e781a3          	sb	a4,3(a5)
    80004410:	00700693          	li	a3,7
    80004414:	00d78123          	sb	a3,2(a5)
    80004418:	00e780a3          	sb	a4,1(a5)
    8000441c:	00813403          	ld	s0,8(sp)
    80004420:	01010113          	addi	sp,sp,16
    80004424:	00008067          	ret

0000000080004428 <uartputc>:
    80004428:	00003797          	auipc	a5,0x3
    8000442c:	dc07a783          	lw	a5,-576(a5) # 800071e8 <panicked>
    80004430:	00078463          	beqz	a5,80004438 <uartputc+0x10>
    80004434:	0000006f          	j	80004434 <uartputc+0xc>
    80004438:	fd010113          	addi	sp,sp,-48
    8000443c:	02813023          	sd	s0,32(sp)
    80004440:	00913c23          	sd	s1,24(sp)
    80004444:	01213823          	sd	s2,16(sp)
    80004448:	01313423          	sd	s3,8(sp)
    8000444c:	02113423          	sd	ra,40(sp)
    80004450:	03010413          	addi	s0,sp,48
    80004454:	00003917          	auipc	s2,0x3
    80004458:	d9c90913          	addi	s2,s2,-612 # 800071f0 <uart_tx_r>
    8000445c:	00093783          	ld	a5,0(s2)
    80004460:	00003497          	auipc	s1,0x3
    80004464:	d9848493          	addi	s1,s1,-616 # 800071f8 <uart_tx_w>
    80004468:	0004b703          	ld	a4,0(s1)
    8000446c:	02078693          	addi	a3,a5,32
    80004470:	00050993          	mv	s3,a0
    80004474:	02e69c63          	bne	a3,a4,800044ac <uartputc+0x84>
    80004478:	00001097          	auipc	ra,0x1
    8000447c:	834080e7          	jalr	-1996(ra) # 80004cac <push_on>
    80004480:	00093783          	ld	a5,0(s2)
    80004484:	0004b703          	ld	a4,0(s1)
    80004488:	02078793          	addi	a5,a5,32
    8000448c:	00e79463          	bne	a5,a4,80004494 <uartputc+0x6c>
    80004490:	0000006f          	j	80004490 <uartputc+0x68>
    80004494:	00001097          	auipc	ra,0x1
    80004498:	88c080e7          	jalr	-1908(ra) # 80004d20 <pop_on>
    8000449c:	00093783          	ld	a5,0(s2)
    800044a0:	0004b703          	ld	a4,0(s1)
    800044a4:	02078693          	addi	a3,a5,32
    800044a8:	fce688e3          	beq	a3,a4,80004478 <uartputc+0x50>
    800044ac:	01f77693          	andi	a3,a4,31
    800044b0:	00004597          	auipc	a1,0x4
    800044b4:	00058593          	mv	a1,a1
    800044b8:	00d586b3          	add	a3,a1,a3
    800044bc:	00170713          	addi	a4,a4,1
    800044c0:	01368023          	sb	s3,0(a3)
    800044c4:	00e4b023          	sd	a4,0(s1)
    800044c8:	10000637          	lui	a2,0x10000
    800044cc:	02f71063          	bne	a4,a5,800044ec <uartputc+0xc4>
    800044d0:	0340006f          	j	80004504 <uartputc+0xdc>
    800044d4:	00074703          	lbu	a4,0(a4)
    800044d8:	00f93023          	sd	a5,0(s2)
    800044dc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800044e0:	00093783          	ld	a5,0(s2)
    800044e4:	0004b703          	ld	a4,0(s1)
    800044e8:	00f70e63          	beq	a4,a5,80004504 <uartputc+0xdc>
    800044ec:	00564683          	lbu	a3,5(a2)
    800044f0:	01f7f713          	andi	a4,a5,31
    800044f4:	00e58733          	add	a4,a1,a4
    800044f8:	0206f693          	andi	a3,a3,32
    800044fc:	00178793          	addi	a5,a5,1
    80004500:	fc069ae3          	bnez	a3,800044d4 <uartputc+0xac>
    80004504:	02813083          	ld	ra,40(sp)
    80004508:	02013403          	ld	s0,32(sp)
    8000450c:	01813483          	ld	s1,24(sp)
    80004510:	01013903          	ld	s2,16(sp)
    80004514:	00813983          	ld	s3,8(sp)
    80004518:	03010113          	addi	sp,sp,48
    8000451c:	00008067          	ret

0000000080004520 <uartputc_sync>:
    80004520:	ff010113          	addi	sp,sp,-16
    80004524:	00813423          	sd	s0,8(sp)
    80004528:	01010413          	addi	s0,sp,16
    8000452c:	00003717          	auipc	a4,0x3
    80004530:	cbc72703          	lw	a4,-836(a4) # 800071e8 <panicked>
    80004534:	02071663          	bnez	a4,80004560 <uartputc_sync+0x40>
    80004538:	00050793          	mv	a5,a0
    8000453c:	100006b7          	lui	a3,0x10000
    80004540:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004544:	02077713          	andi	a4,a4,32
    80004548:	fe070ce3          	beqz	a4,80004540 <uartputc_sync+0x20>
    8000454c:	0ff7f793          	andi	a5,a5,255
    80004550:	00f68023          	sb	a5,0(a3)
    80004554:	00813403          	ld	s0,8(sp)
    80004558:	01010113          	addi	sp,sp,16
    8000455c:	00008067          	ret
    80004560:	0000006f          	j	80004560 <uartputc_sync+0x40>

0000000080004564 <uartstart>:
    80004564:	ff010113          	addi	sp,sp,-16
    80004568:	00813423          	sd	s0,8(sp)
    8000456c:	01010413          	addi	s0,sp,16
    80004570:	00003617          	auipc	a2,0x3
    80004574:	c8060613          	addi	a2,a2,-896 # 800071f0 <uart_tx_r>
    80004578:	00003517          	auipc	a0,0x3
    8000457c:	c8050513          	addi	a0,a0,-896 # 800071f8 <uart_tx_w>
    80004580:	00063783          	ld	a5,0(a2)
    80004584:	00053703          	ld	a4,0(a0)
    80004588:	04f70263          	beq	a4,a5,800045cc <uartstart+0x68>
    8000458c:	100005b7          	lui	a1,0x10000
    80004590:	00004817          	auipc	a6,0x4
    80004594:	f2080813          	addi	a6,a6,-224 # 800084b0 <uart_tx_buf>
    80004598:	01c0006f          	j	800045b4 <uartstart+0x50>
    8000459c:	0006c703          	lbu	a4,0(a3)
    800045a0:	00f63023          	sd	a5,0(a2)
    800045a4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800045a8:	00063783          	ld	a5,0(a2)
    800045ac:	00053703          	ld	a4,0(a0)
    800045b0:	00f70e63          	beq	a4,a5,800045cc <uartstart+0x68>
    800045b4:	01f7f713          	andi	a4,a5,31
    800045b8:	00e806b3          	add	a3,a6,a4
    800045bc:	0055c703          	lbu	a4,5(a1)
    800045c0:	00178793          	addi	a5,a5,1
    800045c4:	02077713          	andi	a4,a4,32
    800045c8:	fc071ae3          	bnez	a4,8000459c <uartstart+0x38>
    800045cc:	00813403          	ld	s0,8(sp)
    800045d0:	01010113          	addi	sp,sp,16
    800045d4:	00008067          	ret

00000000800045d8 <uartgetc>:
    800045d8:	ff010113          	addi	sp,sp,-16
    800045dc:	00813423          	sd	s0,8(sp)
    800045e0:	01010413          	addi	s0,sp,16
    800045e4:	10000737          	lui	a4,0x10000
    800045e8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800045ec:	0017f793          	andi	a5,a5,1
    800045f0:	00078c63          	beqz	a5,80004608 <uartgetc+0x30>
    800045f4:	00074503          	lbu	a0,0(a4)
    800045f8:	0ff57513          	andi	a0,a0,255
    800045fc:	00813403          	ld	s0,8(sp)
    80004600:	01010113          	addi	sp,sp,16
    80004604:	00008067          	ret
    80004608:	fff00513          	li	a0,-1
    8000460c:	ff1ff06f          	j	800045fc <uartgetc+0x24>

0000000080004610 <uartintr>:
    80004610:	100007b7          	lui	a5,0x10000
    80004614:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004618:	0017f793          	andi	a5,a5,1
    8000461c:	0a078463          	beqz	a5,800046c4 <uartintr+0xb4>
    80004620:	fe010113          	addi	sp,sp,-32
    80004624:	00813823          	sd	s0,16(sp)
    80004628:	00913423          	sd	s1,8(sp)
    8000462c:	00113c23          	sd	ra,24(sp)
    80004630:	02010413          	addi	s0,sp,32
    80004634:	100004b7          	lui	s1,0x10000
    80004638:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000463c:	0ff57513          	andi	a0,a0,255
    80004640:	fffff097          	auipc	ra,0xfffff
    80004644:	534080e7          	jalr	1332(ra) # 80003b74 <consoleintr>
    80004648:	0054c783          	lbu	a5,5(s1)
    8000464c:	0017f793          	andi	a5,a5,1
    80004650:	fe0794e3          	bnez	a5,80004638 <uartintr+0x28>
    80004654:	00003617          	auipc	a2,0x3
    80004658:	b9c60613          	addi	a2,a2,-1124 # 800071f0 <uart_tx_r>
    8000465c:	00003517          	auipc	a0,0x3
    80004660:	b9c50513          	addi	a0,a0,-1124 # 800071f8 <uart_tx_w>
    80004664:	00063783          	ld	a5,0(a2)
    80004668:	00053703          	ld	a4,0(a0)
    8000466c:	04f70263          	beq	a4,a5,800046b0 <uartintr+0xa0>
    80004670:	100005b7          	lui	a1,0x10000
    80004674:	00004817          	auipc	a6,0x4
    80004678:	e3c80813          	addi	a6,a6,-452 # 800084b0 <uart_tx_buf>
    8000467c:	01c0006f          	j	80004698 <uartintr+0x88>
    80004680:	0006c703          	lbu	a4,0(a3)
    80004684:	00f63023          	sd	a5,0(a2)
    80004688:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000468c:	00063783          	ld	a5,0(a2)
    80004690:	00053703          	ld	a4,0(a0)
    80004694:	00f70e63          	beq	a4,a5,800046b0 <uartintr+0xa0>
    80004698:	01f7f713          	andi	a4,a5,31
    8000469c:	00e806b3          	add	a3,a6,a4
    800046a0:	0055c703          	lbu	a4,5(a1)
    800046a4:	00178793          	addi	a5,a5,1
    800046a8:	02077713          	andi	a4,a4,32
    800046ac:	fc071ae3          	bnez	a4,80004680 <uartintr+0x70>
    800046b0:	01813083          	ld	ra,24(sp)
    800046b4:	01013403          	ld	s0,16(sp)
    800046b8:	00813483          	ld	s1,8(sp)
    800046bc:	02010113          	addi	sp,sp,32
    800046c0:	00008067          	ret
    800046c4:	00003617          	auipc	a2,0x3
    800046c8:	b2c60613          	addi	a2,a2,-1236 # 800071f0 <uart_tx_r>
    800046cc:	00003517          	auipc	a0,0x3
    800046d0:	b2c50513          	addi	a0,a0,-1236 # 800071f8 <uart_tx_w>
    800046d4:	00063783          	ld	a5,0(a2)
    800046d8:	00053703          	ld	a4,0(a0)
    800046dc:	04f70263          	beq	a4,a5,80004720 <uartintr+0x110>
    800046e0:	100005b7          	lui	a1,0x10000
    800046e4:	00004817          	auipc	a6,0x4
    800046e8:	dcc80813          	addi	a6,a6,-564 # 800084b0 <uart_tx_buf>
    800046ec:	01c0006f          	j	80004708 <uartintr+0xf8>
    800046f0:	0006c703          	lbu	a4,0(a3)
    800046f4:	00f63023          	sd	a5,0(a2)
    800046f8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800046fc:	00063783          	ld	a5,0(a2)
    80004700:	00053703          	ld	a4,0(a0)
    80004704:	02f70063          	beq	a4,a5,80004724 <uartintr+0x114>
    80004708:	01f7f713          	andi	a4,a5,31
    8000470c:	00e806b3          	add	a3,a6,a4
    80004710:	0055c703          	lbu	a4,5(a1)
    80004714:	00178793          	addi	a5,a5,1
    80004718:	02077713          	andi	a4,a4,32
    8000471c:	fc071ae3          	bnez	a4,800046f0 <uartintr+0xe0>
    80004720:	00008067          	ret
    80004724:	00008067          	ret

0000000080004728 <kinit>:
    80004728:	fc010113          	addi	sp,sp,-64
    8000472c:	02913423          	sd	s1,40(sp)
    80004730:	fffff7b7          	lui	a5,0xfffff
    80004734:	00005497          	auipc	s1,0x5
    80004738:	dab48493          	addi	s1,s1,-597 # 800094df <end+0xfff>
    8000473c:	02813823          	sd	s0,48(sp)
    80004740:	01313c23          	sd	s3,24(sp)
    80004744:	00f4f4b3          	and	s1,s1,a5
    80004748:	02113c23          	sd	ra,56(sp)
    8000474c:	03213023          	sd	s2,32(sp)
    80004750:	01413823          	sd	s4,16(sp)
    80004754:	01513423          	sd	s5,8(sp)
    80004758:	04010413          	addi	s0,sp,64
    8000475c:	000017b7          	lui	a5,0x1
    80004760:	01100993          	li	s3,17
    80004764:	00f487b3          	add	a5,s1,a5
    80004768:	01b99993          	slli	s3,s3,0x1b
    8000476c:	06f9e063          	bltu	s3,a5,800047cc <kinit+0xa4>
    80004770:	00004a97          	auipc	s5,0x4
    80004774:	d70a8a93          	addi	s5,s5,-656 # 800084e0 <end>
    80004778:	0754ec63          	bltu	s1,s5,800047f0 <kinit+0xc8>
    8000477c:	0734fa63          	bgeu	s1,s3,800047f0 <kinit+0xc8>
    80004780:	00088a37          	lui	s4,0x88
    80004784:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004788:	00003917          	auipc	s2,0x3
    8000478c:	a7890913          	addi	s2,s2,-1416 # 80007200 <kmem>
    80004790:	00ca1a13          	slli	s4,s4,0xc
    80004794:	0140006f          	j	800047a8 <kinit+0x80>
    80004798:	000017b7          	lui	a5,0x1
    8000479c:	00f484b3          	add	s1,s1,a5
    800047a0:	0554e863          	bltu	s1,s5,800047f0 <kinit+0xc8>
    800047a4:	0534f663          	bgeu	s1,s3,800047f0 <kinit+0xc8>
    800047a8:	00001637          	lui	a2,0x1
    800047ac:	00100593          	li	a1,1
    800047b0:	00048513          	mv	a0,s1
    800047b4:	00000097          	auipc	ra,0x0
    800047b8:	5e4080e7          	jalr	1508(ra) # 80004d98 <__memset>
    800047bc:	00093783          	ld	a5,0(s2)
    800047c0:	00f4b023          	sd	a5,0(s1)
    800047c4:	00993023          	sd	s1,0(s2)
    800047c8:	fd4498e3          	bne	s1,s4,80004798 <kinit+0x70>
    800047cc:	03813083          	ld	ra,56(sp)
    800047d0:	03013403          	ld	s0,48(sp)
    800047d4:	02813483          	ld	s1,40(sp)
    800047d8:	02013903          	ld	s2,32(sp)
    800047dc:	01813983          	ld	s3,24(sp)
    800047e0:	01013a03          	ld	s4,16(sp)
    800047e4:	00813a83          	ld	s5,8(sp)
    800047e8:	04010113          	addi	sp,sp,64
    800047ec:	00008067          	ret
    800047f0:	00002517          	auipc	a0,0x2
    800047f4:	aa050513          	addi	a0,a0,-1376 # 80006290 <digits+0x18>
    800047f8:	fffff097          	auipc	ra,0xfffff
    800047fc:	4b4080e7          	jalr	1204(ra) # 80003cac <panic>

0000000080004800 <freerange>:
    80004800:	fc010113          	addi	sp,sp,-64
    80004804:	000017b7          	lui	a5,0x1
    80004808:	02913423          	sd	s1,40(sp)
    8000480c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004810:	009504b3          	add	s1,a0,s1
    80004814:	fffff537          	lui	a0,0xfffff
    80004818:	02813823          	sd	s0,48(sp)
    8000481c:	02113c23          	sd	ra,56(sp)
    80004820:	03213023          	sd	s2,32(sp)
    80004824:	01313c23          	sd	s3,24(sp)
    80004828:	01413823          	sd	s4,16(sp)
    8000482c:	01513423          	sd	s5,8(sp)
    80004830:	01613023          	sd	s6,0(sp)
    80004834:	04010413          	addi	s0,sp,64
    80004838:	00a4f4b3          	and	s1,s1,a0
    8000483c:	00f487b3          	add	a5,s1,a5
    80004840:	06f5e463          	bltu	a1,a5,800048a8 <freerange+0xa8>
    80004844:	00004a97          	auipc	s5,0x4
    80004848:	c9ca8a93          	addi	s5,s5,-868 # 800084e0 <end>
    8000484c:	0954e263          	bltu	s1,s5,800048d0 <freerange+0xd0>
    80004850:	01100993          	li	s3,17
    80004854:	01b99993          	slli	s3,s3,0x1b
    80004858:	0734fc63          	bgeu	s1,s3,800048d0 <freerange+0xd0>
    8000485c:	00058a13          	mv	s4,a1
    80004860:	00003917          	auipc	s2,0x3
    80004864:	9a090913          	addi	s2,s2,-1632 # 80007200 <kmem>
    80004868:	00002b37          	lui	s6,0x2
    8000486c:	0140006f          	j	80004880 <freerange+0x80>
    80004870:	000017b7          	lui	a5,0x1
    80004874:	00f484b3          	add	s1,s1,a5
    80004878:	0554ec63          	bltu	s1,s5,800048d0 <freerange+0xd0>
    8000487c:	0534fa63          	bgeu	s1,s3,800048d0 <freerange+0xd0>
    80004880:	00001637          	lui	a2,0x1
    80004884:	00100593          	li	a1,1
    80004888:	00048513          	mv	a0,s1
    8000488c:	00000097          	auipc	ra,0x0
    80004890:	50c080e7          	jalr	1292(ra) # 80004d98 <__memset>
    80004894:	00093703          	ld	a4,0(s2)
    80004898:	016487b3          	add	a5,s1,s6
    8000489c:	00e4b023          	sd	a4,0(s1)
    800048a0:	00993023          	sd	s1,0(s2)
    800048a4:	fcfa76e3          	bgeu	s4,a5,80004870 <freerange+0x70>
    800048a8:	03813083          	ld	ra,56(sp)
    800048ac:	03013403          	ld	s0,48(sp)
    800048b0:	02813483          	ld	s1,40(sp)
    800048b4:	02013903          	ld	s2,32(sp)
    800048b8:	01813983          	ld	s3,24(sp)
    800048bc:	01013a03          	ld	s4,16(sp)
    800048c0:	00813a83          	ld	s5,8(sp)
    800048c4:	00013b03          	ld	s6,0(sp)
    800048c8:	04010113          	addi	sp,sp,64
    800048cc:	00008067          	ret
    800048d0:	00002517          	auipc	a0,0x2
    800048d4:	9c050513          	addi	a0,a0,-1600 # 80006290 <digits+0x18>
    800048d8:	fffff097          	auipc	ra,0xfffff
    800048dc:	3d4080e7          	jalr	980(ra) # 80003cac <panic>

00000000800048e0 <kfree>:
    800048e0:	fe010113          	addi	sp,sp,-32
    800048e4:	00813823          	sd	s0,16(sp)
    800048e8:	00113c23          	sd	ra,24(sp)
    800048ec:	00913423          	sd	s1,8(sp)
    800048f0:	02010413          	addi	s0,sp,32
    800048f4:	03451793          	slli	a5,a0,0x34
    800048f8:	04079c63          	bnez	a5,80004950 <kfree+0x70>
    800048fc:	00004797          	auipc	a5,0x4
    80004900:	be478793          	addi	a5,a5,-1052 # 800084e0 <end>
    80004904:	00050493          	mv	s1,a0
    80004908:	04f56463          	bltu	a0,a5,80004950 <kfree+0x70>
    8000490c:	01100793          	li	a5,17
    80004910:	01b79793          	slli	a5,a5,0x1b
    80004914:	02f57e63          	bgeu	a0,a5,80004950 <kfree+0x70>
    80004918:	00001637          	lui	a2,0x1
    8000491c:	00100593          	li	a1,1
    80004920:	00000097          	auipc	ra,0x0
    80004924:	478080e7          	jalr	1144(ra) # 80004d98 <__memset>
    80004928:	00003797          	auipc	a5,0x3
    8000492c:	8d878793          	addi	a5,a5,-1832 # 80007200 <kmem>
    80004930:	0007b703          	ld	a4,0(a5)
    80004934:	01813083          	ld	ra,24(sp)
    80004938:	01013403          	ld	s0,16(sp)
    8000493c:	00e4b023          	sd	a4,0(s1)
    80004940:	0097b023          	sd	s1,0(a5)
    80004944:	00813483          	ld	s1,8(sp)
    80004948:	02010113          	addi	sp,sp,32
    8000494c:	00008067          	ret
    80004950:	00002517          	auipc	a0,0x2
    80004954:	94050513          	addi	a0,a0,-1728 # 80006290 <digits+0x18>
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	354080e7          	jalr	852(ra) # 80003cac <panic>

0000000080004960 <kalloc>:
    80004960:	fe010113          	addi	sp,sp,-32
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00913423          	sd	s1,8(sp)
    8000496c:	00113c23          	sd	ra,24(sp)
    80004970:	02010413          	addi	s0,sp,32
    80004974:	00003797          	auipc	a5,0x3
    80004978:	88c78793          	addi	a5,a5,-1908 # 80007200 <kmem>
    8000497c:	0007b483          	ld	s1,0(a5)
    80004980:	02048063          	beqz	s1,800049a0 <kalloc+0x40>
    80004984:	0004b703          	ld	a4,0(s1)
    80004988:	00001637          	lui	a2,0x1
    8000498c:	00500593          	li	a1,5
    80004990:	00048513          	mv	a0,s1
    80004994:	00e7b023          	sd	a4,0(a5)
    80004998:	00000097          	auipc	ra,0x0
    8000499c:	400080e7          	jalr	1024(ra) # 80004d98 <__memset>
    800049a0:	01813083          	ld	ra,24(sp)
    800049a4:	01013403          	ld	s0,16(sp)
    800049a8:	00048513          	mv	a0,s1
    800049ac:	00813483          	ld	s1,8(sp)
    800049b0:	02010113          	addi	sp,sp,32
    800049b4:	00008067          	ret

00000000800049b8 <initlock>:
    800049b8:	ff010113          	addi	sp,sp,-16
    800049bc:	00813423          	sd	s0,8(sp)
    800049c0:	01010413          	addi	s0,sp,16
    800049c4:	00813403          	ld	s0,8(sp)
    800049c8:	00b53423          	sd	a1,8(a0)
    800049cc:	00052023          	sw	zero,0(a0)
    800049d0:	00053823          	sd	zero,16(a0)
    800049d4:	01010113          	addi	sp,sp,16
    800049d8:	00008067          	ret

00000000800049dc <acquire>:
    800049dc:	fe010113          	addi	sp,sp,-32
    800049e0:	00813823          	sd	s0,16(sp)
    800049e4:	00913423          	sd	s1,8(sp)
    800049e8:	00113c23          	sd	ra,24(sp)
    800049ec:	01213023          	sd	s2,0(sp)
    800049f0:	02010413          	addi	s0,sp,32
    800049f4:	00050493          	mv	s1,a0
    800049f8:	10002973          	csrr	s2,sstatus
    800049fc:	100027f3          	csrr	a5,sstatus
    80004a00:	ffd7f793          	andi	a5,a5,-3
    80004a04:	10079073          	csrw	sstatus,a5
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	8ec080e7          	jalr	-1812(ra) # 800032f4 <mycpu>
    80004a10:	07852783          	lw	a5,120(a0)
    80004a14:	06078e63          	beqz	a5,80004a90 <acquire+0xb4>
    80004a18:	fffff097          	auipc	ra,0xfffff
    80004a1c:	8dc080e7          	jalr	-1828(ra) # 800032f4 <mycpu>
    80004a20:	07852783          	lw	a5,120(a0)
    80004a24:	0004a703          	lw	a4,0(s1)
    80004a28:	0017879b          	addiw	a5,a5,1
    80004a2c:	06f52c23          	sw	a5,120(a0)
    80004a30:	04071063          	bnez	a4,80004a70 <acquire+0x94>
    80004a34:	00100713          	li	a4,1
    80004a38:	00070793          	mv	a5,a4
    80004a3c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004a40:	0007879b          	sext.w	a5,a5
    80004a44:	fe079ae3          	bnez	a5,80004a38 <acquire+0x5c>
    80004a48:	0ff0000f          	fence
    80004a4c:	fffff097          	auipc	ra,0xfffff
    80004a50:	8a8080e7          	jalr	-1880(ra) # 800032f4 <mycpu>
    80004a54:	01813083          	ld	ra,24(sp)
    80004a58:	01013403          	ld	s0,16(sp)
    80004a5c:	00a4b823          	sd	a0,16(s1)
    80004a60:	00013903          	ld	s2,0(sp)
    80004a64:	00813483          	ld	s1,8(sp)
    80004a68:	02010113          	addi	sp,sp,32
    80004a6c:	00008067          	ret
    80004a70:	0104b903          	ld	s2,16(s1)
    80004a74:	fffff097          	auipc	ra,0xfffff
    80004a78:	880080e7          	jalr	-1920(ra) # 800032f4 <mycpu>
    80004a7c:	faa91ce3          	bne	s2,a0,80004a34 <acquire+0x58>
    80004a80:	00002517          	auipc	a0,0x2
    80004a84:	81850513          	addi	a0,a0,-2024 # 80006298 <digits+0x20>
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	224080e7          	jalr	548(ra) # 80003cac <panic>
    80004a90:	00195913          	srli	s2,s2,0x1
    80004a94:	fffff097          	auipc	ra,0xfffff
    80004a98:	860080e7          	jalr	-1952(ra) # 800032f4 <mycpu>
    80004a9c:	00197913          	andi	s2,s2,1
    80004aa0:	07252e23          	sw	s2,124(a0)
    80004aa4:	f75ff06f          	j	80004a18 <acquire+0x3c>

0000000080004aa8 <release>:
    80004aa8:	fe010113          	addi	sp,sp,-32
    80004aac:	00813823          	sd	s0,16(sp)
    80004ab0:	00113c23          	sd	ra,24(sp)
    80004ab4:	00913423          	sd	s1,8(sp)
    80004ab8:	01213023          	sd	s2,0(sp)
    80004abc:	02010413          	addi	s0,sp,32
    80004ac0:	00052783          	lw	a5,0(a0)
    80004ac4:	00079a63          	bnez	a5,80004ad8 <release+0x30>
    80004ac8:	00001517          	auipc	a0,0x1
    80004acc:	7d850513          	addi	a0,a0,2008 # 800062a0 <digits+0x28>
    80004ad0:	fffff097          	auipc	ra,0xfffff
    80004ad4:	1dc080e7          	jalr	476(ra) # 80003cac <panic>
    80004ad8:	01053903          	ld	s2,16(a0)
    80004adc:	00050493          	mv	s1,a0
    80004ae0:	fffff097          	auipc	ra,0xfffff
    80004ae4:	814080e7          	jalr	-2028(ra) # 800032f4 <mycpu>
    80004ae8:	fea910e3          	bne	s2,a0,80004ac8 <release+0x20>
    80004aec:	0004b823          	sd	zero,16(s1)
    80004af0:	0ff0000f          	fence
    80004af4:	0f50000f          	fence	iorw,ow
    80004af8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004afc:	ffffe097          	auipc	ra,0xffffe
    80004b00:	7f8080e7          	jalr	2040(ra) # 800032f4 <mycpu>
    80004b04:	100027f3          	csrr	a5,sstatus
    80004b08:	0027f793          	andi	a5,a5,2
    80004b0c:	04079a63          	bnez	a5,80004b60 <release+0xb8>
    80004b10:	07852783          	lw	a5,120(a0)
    80004b14:	02f05e63          	blez	a5,80004b50 <release+0xa8>
    80004b18:	fff7871b          	addiw	a4,a5,-1
    80004b1c:	06e52c23          	sw	a4,120(a0)
    80004b20:	00071c63          	bnez	a4,80004b38 <release+0x90>
    80004b24:	07c52783          	lw	a5,124(a0)
    80004b28:	00078863          	beqz	a5,80004b38 <release+0x90>
    80004b2c:	100027f3          	csrr	a5,sstatus
    80004b30:	0027e793          	ori	a5,a5,2
    80004b34:	10079073          	csrw	sstatus,a5
    80004b38:	01813083          	ld	ra,24(sp)
    80004b3c:	01013403          	ld	s0,16(sp)
    80004b40:	00813483          	ld	s1,8(sp)
    80004b44:	00013903          	ld	s2,0(sp)
    80004b48:	02010113          	addi	sp,sp,32
    80004b4c:	00008067          	ret
    80004b50:	00001517          	auipc	a0,0x1
    80004b54:	77050513          	addi	a0,a0,1904 # 800062c0 <digits+0x48>
    80004b58:	fffff097          	auipc	ra,0xfffff
    80004b5c:	154080e7          	jalr	340(ra) # 80003cac <panic>
    80004b60:	00001517          	auipc	a0,0x1
    80004b64:	74850513          	addi	a0,a0,1864 # 800062a8 <digits+0x30>
    80004b68:	fffff097          	auipc	ra,0xfffff
    80004b6c:	144080e7          	jalr	324(ra) # 80003cac <panic>

0000000080004b70 <holding>:
    80004b70:	00052783          	lw	a5,0(a0)
    80004b74:	00079663          	bnez	a5,80004b80 <holding+0x10>
    80004b78:	00000513          	li	a0,0
    80004b7c:	00008067          	ret
    80004b80:	fe010113          	addi	sp,sp,-32
    80004b84:	00813823          	sd	s0,16(sp)
    80004b88:	00913423          	sd	s1,8(sp)
    80004b8c:	00113c23          	sd	ra,24(sp)
    80004b90:	02010413          	addi	s0,sp,32
    80004b94:	01053483          	ld	s1,16(a0)
    80004b98:	ffffe097          	auipc	ra,0xffffe
    80004b9c:	75c080e7          	jalr	1884(ra) # 800032f4 <mycpu>
    80004ba0:	01813083          	ld	ra,24(sp)
    80004ba4:	01013403          	ld	s0,16(sp)
    80004ba8:	40a48533          	sub	a0,s1,a0
    80004bac:	00153513          	seqz	a0,a0
    80004bb0:	00813483          	ld	s1,8(sp)
    80004bb4:	02010113          	addi	sp,sp,32
    80004bb8:	00008067          	ret

0000000080004bbc <push_off>:
    80004bbc:	fe010113          	addi	sp,sp,-32
    80004bc0:	00813823          	sd	s0,16(sp)
    80004bc4:	00113c23          	sd	ra,24(sp)
    80004bc8:	00913423          	sd	s1,8(sp)
    80004bcc:	02010413          	addi	s0,sp,32
    80004bd0:	100024f3          	csrr	s1,sstatus
    80004bd4:	100027f3          	csrr	a5,sstatus
    80004bd8:	ffd7f793          	andi	a5,a5,-3
    80004bdc:	10079073          	csrw	sstatus,a5
    80004be0:	ffffe097          	auipc	ra,0xffffe
    80004be4:	714080e7          	jalr	1812(ra) # 800032f4 <mycpu>
    80004be8:	07852783          	lw	a5,120(a0)
    80004bec:	02078663          	beqz	a5,80004c18 <push_off+0x5c>
    80004bf0:	ffffe097          	auipc	ra,0xffffe
    80004bf4:	704080e7          	jalr	1796(ra) # 800032f4 <mycpu>
    80004bf8:	07852783          	lw	a5,120(a0)
    80004bfc:	01813083          	ld	ra,24(sp)
    80004c00:	01013403          	ld	s0,16(sp)
    80004c04:	0017879b          	addiw	a5,a5,1
    80004c08:	06f52c23          	sw	a5,120(a0)
    80004c0c:	00813483          	ld	s1,8(sp)
    80004c10:	02010113          	addi	sp,sp,32
    80004c14:	00008067          	ret
    80004c18:	0014d493          	srli	s1,s1,0x1
    80004c1c:	ffffe097          	auipc	ra,0xffffe
    80004c20:	6d8080e7          	jalr	1752(ra) # 800032f4 <mycpu>
    80004c24:	0014f493          	andi	s1,s1,1
    80004c28:	06952e23          	sw	s1,124(a0)
    80004c2c:	fc5ff06f          	j	80004bf0 <push_off+0x34>

0000000080004c30 <pop_off>:
    80004c30:	ff010113          	addi	sp,sp,-16
    80004c34:	00813023          	sd	s0,0(sp)
    80004c38:	00113423          	sd	ra,8(sp)
    80004c3c:	01010413          	addi	s0,sp,16
    80004c40:	ffffe097          	auipc	ra,0xffffe
    80004c44:	6b4080e7          	jalr	1716(ra) # 800032f4 <mycpu>
    80004c48:	100027f3          	csrr	a5,sstatus
    80004c4c:	0027f793          	andi	a5,a5,2
    80004c50:	04079663          	bnez	a5,80004c9c <pop_off+0x6c>
    80004c54:	07852783          	lw	a5,120(a0)
    80004c58:	02f05a63          	blez	a5,80004c8c <pop_off+0x5c>
    80004c5c:	fff7871b          	addiw	a4,a5,-1
    80004c60:	06e52c23          	sw	a4,120(a0)
    80004c64:	00071c63          	bnez	a4,80004c7c <pop_off+0x4c>
    80004c68:	07c52783          	lw	a5,124(a0)
    80004c6c:	00078863          	beqz	a5,80004c7c <pop_off+0x4c>
    80004c70:	100027f3          	csrr	a5,sstatus
    80004c74:	0027e793          	ori	a5,a5,2
    80004c78:	10079073          	csrw	sstatus,a5
    80004c7c:	00813083          	ld	ra,8(sp)
    80004c80:	00013403          	ld	s0,0(sp)
    80004c84:	01010113          	addi	sp,sp,16
    80004c88:	00008067          	ret
    80004c8c:	00001517          	auipc	a0,0x1
    80004c90:	63450513          	addi	a0,a0,1588 # 800062c0 <digits+0x48>
    80004c94:	fffff097          	auipc	ra,0xfffff
    80004c98:	018080e7          	jalr	24(ra) # 80003cac <panic>
    80004c9c:	00001517          	auipc	a0,0x1
    80004ca0:	60c50513          	addi	a0,a0,1548 # 800062a8 <digits+0x30>
    80004ca4:	fffff097          	auipc	ra,0xfffff
    80004ca8:	008080e7          	jalr	8(ra) # 80003cac <panic>

0000000080004cac <push_on>:
    80004cac:	fe010113          	addi	sp,sp,-32
    80004cb0:	00813823          	sd	s0,16(sp)
    80004cb4:	00113c23          	sd	ra,24(sp)
    80004cb8:	00913423          	sd	s1,8(sp)
    80004cbc:	02010413          	addi	s0,sp,32
    80004cc0:	100024f3          	csrr	s1,sstatus
    80004cc4:	100027f3          	csrr	a5,sstatus
    80004cc8:	0027e793          	ori	a5,a5,2
    80004ccc:	10079073          	csrw	sstatus,a5
    80004cd0:	ffffe097          	auipc	ra,0xffffe
    80004cd4:	624080e7          	jalr	1572(ra) # 800032f4 <mycpu>
    80004cd8:	07852783          	lw	a5,120(a0)
    80004cdc:	02078663          	beqz	a5,80004d08 <push_on+0x5c>
    80004ce0:	ffffe097          	auipc	ra,0xffffe
    80004ce4:	614080e7          	jalr	1556(ra) # 800032f4 <mycpu>
    80004ce8:	07852783          	lw	a5,120(a0)
    80004cec:	01813083          	ld	ra,24(sp)
    80004cf0:	01013403          	ld	s0,16(sp)
    80004cf4:	0017879b          	addiw	a5,a5,1
    80004cf8:	06f52c23          	sw	a5,120(a0)
    80004cfc:	00813483          	ld	s1,8(sp)
    80004d00:	02010113          	addi	sp,sp,32
    80004d04:	00008067          	ret
    80004d08:	0014d493          	srli	s1,s1,0x1
    80004d0c:	ffffe097          	auipc	ra,0xffffe
    80004d10:	5e8080e7          	jalr	1512(ra) # 800032f4 <mycpu>
    80004d14:	0014f493          	andi	s1,s1,1
    80004d18:	06952e23          	sw	s1,124(a0)
    80004d1c:	fc5ff06f          	j	80004ce0 <push_on+0x34>

0000000080004d20 <pop_on>:
    80004d20:	ff010113          	addi	sp,sp,-16
    80004d24:	00813023          	sd	s0,0(sp)
    80004d28:	00113423          	sd	ra,8(sp)
    80004d2c:	01010413          	addi	s0,sp,16
    80004d30:	ffffe097          	auipc	ra,0xffffe
    80004d34:	5c4080e7          	jalr	1476(ra) # 800032f4 <mycpu>
    80004d38:	100027f3          	csrr	a5,sstatus
    80004d3c:	0027f793          	andi	a5,a5,2
    80004d40:	04078463          	beqz	a5,80004d88 <pop_on+0x68>
    80004d44:	07852783          	lw	a5,120(a0)
    80004d48:	02f05863          	blez	a5,80004d78 <pop_on+0x58>
    80004d4c:	fff7879b          	addiw	a5,a5,-1
    80004d50:	06f52c23          	sw	a5,120(a0)
    80004d54:	07853783          	ld	a5,120(a0)
    80004d58:	00079863          	bnez	a5,80004d68 <pop_on+0x48>
    80004d5c:	100027f3          	csrr	a5,sstatus
    80004d60:	ffd7f793          	andi	a5,a5,-3
    80004d64:	10079073          	csrw	sstatus,a5
    80004d68:	00813083          	ld	ra,8(sp)
    80004d6c:	00013403          	ld	s0,0(sp)
    80004d70:	01010113          	addi	sp,sp,16
    80004d74:	00008067          	ret
    80004d78:	00001517          	auipc	a0,0x1
    80004d7c:	57050513          	addi	a0,a0,1392 # 800062e8 <digits+0x70>
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	f2c080e7          	jalr	-212(ra) # 80003cac <panic>
    80004d88:	00001517          	auipc	a0,0x1
    80004d8c:	54050513          	addi	a0,a0,1344 # 800062c8 <digits+0x50>
    80004d90:	fffff097          	auipc	ra,0xfffff
    80004d94:	f1c080e7          	jalr	-228(ra) # 80003cac <panic>

0000000080004d98 <__memset>:
    80004d98:	ff010113          	addi	sp,sp,-16
    80004d9c:	00813423          	sd	s0,8(sp)
    80004da0:	01010413          	addi	s0,sp,16
    80004da4:	1a060e63          	beqz	a2,80004f60 <__memset+0x1c8>
    80004da8:	40a007b3          	neg	a5,a0
    80004dac:	0077f793          	andi	a5,a5,7
    80004db0:	00778693          	addi	a3,a5,7
    80004db4:	00b00813          	li	a6,11
    80004db8:	0ff5f593          	andi	a1,a1,255
    80004dbc:	fff6071b          	addiw	a4,a2,-1
    80004dc0:	1b06e663          	bltu	a3,a6,80004f6c <__memset+0x1d4>
    80004dc4:	1cd76463          	bltu	a4,a3,80004f8c <__memset+0x1f4>
    80004dc8:	1a078e63          	beqz	a5,80004f84 <__memset+0x1ec>
    80004dcc:	00b50023          	sb	a1,0(a0)
    80004dd0:	00100713          	li	a4,1
    80004dd4:	1ae78463          	beq	a5,a4,80004f7c <__memset+0x1e4>
    80004dd8:	00b500a3          	sb	a1,1(a0)
    80004ddc:	00200713          	li	a4,2
    80004de0:	1ae78a63          	beq	a5,a4,80004f94 <__memset+0x1fc>
    80004de4:	00b50123          	sb	a1,2(a0)
    80004de8:	00300713          	li	a4,3
    80004dec:	18e78463          	beq	a5,a4,80004f74 <__memset+0x1dc>
    80004df0:	00b501a3          	sb	a1,3(a0)
    80004df4:	00400713          	li	a4,4
    80004df8:	1ae78263          	beq	a5,a4,80004f9c <__memset+0x204>
    80004dfc:	00b50223          	sb	a1,4(a0)
    80004e00:	00500713          	li	a4,5
    80004e04:	1ae78063          	beq	a5,a4,80004fa4 <__memset+0x20c>
    80004e08:	00b502a3          	sb	a1,5(a0)
    80004e0c:	00700713          	li	a4,7
    80004e10:	18e79e63          	bne	a5,a4,80004fac <__memset+0x214>
    80004e14:	00b50323          	sb	a1,6(a0)
    80004e18:	00700e93          	li	t4,7
    80004e1c:	00859713          	slli	a4,a1,0x8
    80004e20:	00e5e733          	or	a4,a1,a4
    80004e24:	01059e13          	slli	t3,a1,0x10
    80004e28:	01c76e33          	or	t3,a4,t3
    80004e2c:	01859313          	slli	t1,a1,0x18
    80004e30:	006e6333          	or	t1,t3,t1
    80004e34:	02059893          	slli	a7,a1,0x20
    80004e38:	40f60e3b          	subw	t3,a2,a5
    80004e3c:	011368b3          	or	a7,t1,a7
    80004e40:	02859813          	slli	a6,a1,0x28
    80004e44:	0108e833          	or	a6,a7,a6
    80004e48:	03059693          	slli	a3,a1,0x30
    80004e4c:	003e589b          	srliw	a7,t3,0x3
    80004e50:	00d866b3          	or	a3,a6,a3
    80004e54:	03859713          	slli	a4,a1,0x38
    80004e58:	00389813          	slli	a6,a7,0x3
    80004e5c:	00f507b3          	add	a5,a0,a5
    80004e60:	00e6e733          	or	a4,a3,a4
    80004e64:	000e089b          	sext.w	a7,t3
    80004e68:	00f806b3          	add	a3,a6,a5
    80004e6c:	00e7b023          	sd	a4,0(a5)
    80004e70:	00878793          	addi	a5,a5,8
    80004e74:	fed79ce3          	bne	a5,a3,80004e6c <__memset+0xd4>
    80004e78:	ff8e7793          	andi	a5,t3,-8
    80004e7c:	0007871b          	sext.w	a4,a5
    80004e80:	01d787bb          	addw	a5,a5,t4
    80004e84:	0ce88e63          	beq	a7,a4,80004f60 <__memset+0x1c8>
    80004e88:	00f50733          	add	a4,a0,a5
    80004e8c:	00b70023          	sb	a1,0(a4)
    80004e90:	0017871b          	addiw	a4,a5,1
    80004e94:	0cc77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004e98:	00e50733          	add	a4,a0,a4
    80004e9c:	00b70023          	sb	a1,0(a4)
    80004ea0:	0027871b          	addiw	a4,a5,2
    80004ea4:	0ac77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ea8:	00e50733          	add	a4,a0,a4
    80004eac:	00b70023          	sb	a1,0(a4)
    80004eb0:	0037871b          	addiw	a4,a5,3
    80004eb4:	0ac77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004eb8:	00e50733          	add	a4,a0,a4
    80004ebc:	00b70023          	sb	a1,0(a4)
    80004ec0:	0047871b          	addiw	a4,a5,4
    80004ec4:	08c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ec8:	00e50733          	add	a4,a0,a4
    80004ecc:	00b70023          	sb	a1,0(a4)
    80004ed0:	0057871b          	addiw	a4,a5,5
    80004ed4:	08c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ed8:	00e50733          	add	a4,a0,a4
    80004edc:	00b70023          	sb	a1,0(a4)
    80004ee0:	0067871b          	addiw	a4,a5,6
    80004ee4:	06c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ee8:	00e50733          	add	a4,a0,a4
    80004eec:	00b70023          	sb	a1,0(a4)
    80004ef0:	0077871b          	addiw	a4,a5,7
    80004ef4:	06c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004ef8:	00e50733          	add	a4,a0,a4
    80004efc:	00b70023          	sb	a1,0(a4)
    80004f00:	0087871b          	addiw	a4,a5,8
    80004f04:	04c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f08:	00e50733          	add	a4,a0,a4
    80004f0c:	00b70023          	sb	a1,0(a4)
    80004f10:	0097871b          	addiw	a4,a5,9
    80004f14:	04c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f18:	00e50733          	add	a4,a0,a4
    80004f1c:	00b70023          	sb	a1,0(a4)
    80004f20:	00a7871b          	addiw	a4,a5,10
    80004f24:	02c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f28:	00e50733          	add	a4,a0,a4
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	00b7871b          	addiw	a4,a5,11
    80004f34:	02c77663          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	00c7871b          	addiw	a4,a5,12
    80004f44:	00c77e63          	bgeu	a4,a2,80004f60 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	00d7879b          	addiw	a5,a5,13
    80004f54:	00c7f663          	bgeu	a5,a2,80004f60 <__memset+0x1c8>
    80004f58:	00f507b3          	add	a5,a0,a5
    80004f5c:	00b78023          	sb	a1,0(a5)
    80004f60:	00813403          	ld	s0,8(sp)
    80004f64:	01010113          	addi	sp,sp,16
    80004f68:	00008067          	ret
    80004f6c:	00b00693          	li	a3,11
    80004f70:	e55ff06f          	j	80004dc4 <__memset+0x2c>
    80004f74:	00300e93          	li	t4,3
    80004f78:	ea5ff06f          	j	80004e1c <__memset+0x84>
    80004f7c:	00100e93          	li	t4,1
    80004f80:	e9dff06f          	j	80004e1c <__memset+0x84>
    80004f84:	00000e93          	li	t4,0
    80004f88:	e95ff06f          	j	80004e1c <__memset+0x84>
    80004f8c:	00000793          	li	a5,0
    80004f90:	ef9ff06f          	j	80004e88 <__memset+0xf0>
    80004f94:	00200e93          	li	t4,2
    80004f98:	e85ff06f          	j	80004e1c <__memset+0x84>
    80004f9c:	00400e93          	li	t4,4
    80004fa0:	e7dff06f          	j	80004e1c <__memset+0x84>
    80004fa4:	00500e93          	li	t4,5
    80004fa8:	e75ff06f          	j	80004e1c <__memset+0x84>
    80004fac:	00600e93          	li	t4,6
    80004fb0:	e6dff06f          	j	80004e1c <__memset+0x84>

0000000080004fb4 <__memmove>:
    80004fb4:	ff010113          	addi	sp,sp,-16
    80004fb8:	00813423          	sd	s0,8(sp)
    80004fbc:	01010413          	addi	s0,sp,16
    80004fc0:	0e060863          	beqz	a2,800050b0 <__memmove+0xfc>
    80004fc4:	fff6069b          	addiw	a3,a2,-1
    80004fc8:	0006881b          	sext.w	a6,a3
    80004fcc:	0ea5e863          	bltu	a1,a0,800050bc <__memmove+0x108>
    80004fd0:	00758713          	addi	a4,a1,7
    80004fd4:	00a5e7b3          	or	a5,a1,a0
    80004fd8:	40a70733          	sub	a4,a4,a0
    80004fdc:	0077f793          	andi	a5,a5,7
    80004fe0:	00f73713          	sltiu	a4,a4,15
    80004fe4:	00174713          	xori	a4,a4,1
    80004fe8:	0017b793          	seqz	a5,a5
    80004fec:	00e7f7b3          	and	a5,a5,a4
    80004ff0:	10078863          	beqz	a5,80005100 <__memmove+0x14c>
    80004ff4:	00900793          	li	a5,9
    80004ff8:	1107f463          	bgeu	a5,a6,80005100 <__memmove+0x14c>
    80004ffc:	0036581b          	srliw	a6,a2,0x3
    80005000:	fff8081b          	addiw	a6,a6,-1
    80005004:	02081813          	slli	a6,a6,0x20
    80005008:	01d85893          	srli	a7,a6,0x1d
    8000500c:	00858813          	addi	a6,a1,8
    80005010:	00058793          	mv	a5,a1
    80005014:	00050713          	mv	a4,a0
    80005018:	01088833          	add	a6,a7,a6
    8000501c:	0007b883          	ld	a7,0(a5)
    80005020:	00878793          	addi	a5,a5,8
    80005024:	00870713          	addi	a4,a4,8
    80005028:	ff173c23          	sd	a7,-8(a4)
    8000502c:	ff0798e3          	bne	a5,a6,8000501c <__memmove+0x68>
    80005030:	ff867713          	andi	a4,a2,-8
    80005034:	02071793          	slli	a5,a4,0x20
    80005038:	0207d793          	srli	a5,a5,0x20
    8000503c:	00f585b3          	add	a1,a1,a5
    80005040:	40e686bb          	subw	a3,a3,a4
    80005044:	00f507b3          	add	a5,a0,a5
    80005048:	06e60463          	beq	a2,a4,800050b0 <__memmove+0xfc>
    8000504c:	0005c703          	lbu	a4,0(a1)
    80005050:	00e78023          	sb	a4,0(a5)
    80005054:	04068e63          	beqz	a3,800050b0 <__memmove+0xfc>
    80005058:	0015c603          	lbu	a2,1(a1)
    8000505c:	00100713          	li	a4,1
    80005060:	00c780a3          	sb	a2,1(a5)
    80005064:	04e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005068:	0025c603          	lbu	a2,2(a1)
    8000506c:	00200713          	li	a4,2
    80005070:	00c78123          	sb	a2,2(a5)
    80005074:	02e68e63          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005078:	0035c603          	lbu	a2,3(a1)
    8000507c:	00300713          	li	a4,3
    80005080:	00c781a3          	sb	a2,3(a5)
    80005084:	02e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005088:	0045c603          	lbu	a2,4(a1)
    8000508c:	00400713          	li	a4,4
    80005090:	00c78223          	sb	a2,4(a5)
    80005094:	00e68e63          	beq	a3,a4,800050b0 <__memmove+0xfc>
    80005098:	0055c603          	lbu	a2,5(a1)
    8000509c:	00500713          	li	a4,5
    800050a0:	00c782a3          	sb	a2,5(a5)
    800050a4:	00e68663          	beq	a3,a4,800050b0 <__memmove+0xfc>
    800050a8:	0065c703          	lbu	a4,6(a1)
    800050ac:	00e78323          	sb	a4,6(a5)
    800050b0:	00813403          	ld	s0,8(sp)
    800050b4:	01010113          	addi	sp,sp,16
    800050b8:	00008067          	ret
    800050bc:	02061713          	slli	a4,a2,0x20
    800050c0:	02075713          	srli	a4,a4,0x20
    800050c4:	00e587b3          	add	a5,a1,a4
    800050c8:	f0f574e3          	bgeu	a0,a5,80004fd0 <__memmove+0x1c>
    800050cc:	02069613          	slli	a2,a3,0x20
    800050d0:	02065613          	srli	a2,a2,0x20
    800050d4:	fff64613          	not	a2,a2
    800050d8:	00e50733          	add	a4,a0,a4
    800050dc:	00c78633          	add	a2,a5,a2
    800050e0:	fff7c683          	lbu	a3,-1(a5)
    800050e4:	fff78793          	addi	a5,a5,-1
    800050e8:	fff70713          	addi	a4,a4,-1
    800050ec:	00d70023          	sb	a3,0(a4)
    800050f0:	fec798e3          	bne	a5,a2,800050e0 <__memmove+0x12c>
    800050f4:	00813403          	ld	s0,8(sp)
    800050f8:	01010113          	addi	sp,sp,16
    800050fc:	00008067          	ret
    80005100:	02069713          	slli	a4,a3,0x20
    80005104:	02075713          	srli	a4,a4,0x20
    80005108:	00170713          	addi	a4,a4,1
    8000510c:	00e50733          	add	a4,a0,a4
    80005110:	00050793          	mv	a5,a0
    80005114:	0005c683          	lbu	a3,0(a1)
    80005118:	00178793          	addi	a5,a5,1
    8000511c:	00158593          	addi	a1,a1,1
    80005120:	fed78fa3          	sb	a3,-1(a5)
    80005124:	fee798e3          	bne	a5,a4,80005114 <__memmove+0x160>
    80005128:	f89ff06f          	j	800050b0 <__memmove+0xfc>

000000008000512c <__mem_free>:
    8000512c:	ff010113          	addi	sp,sp,-16
    80005130:	00813423          	sd	s0,8(sp)
    80005134:	01010413          	addi	s0,sp,16
    80005138:	00002597          	auipc	a1,0x2
    8000513c:	0d058593          	addi	a1,a1,208 # 80007208 <freep>
    80005140:	0005b783          	ld	a5,0(a1)
    80005144:	ff050693          	addi	a3,a0,-16
    80005148:	0007b703          	ld	a4,0(a5)
    8000514c:	00d7fc63          	bgeu	a5,a3,80005164 <__mem_free+0x38>
    80005150:	00e6ee63          	bltu	a3,a4,8000516c <__mem_free+0x40>
    80005154:	00e7fc63          	bgeu	a5,a4,8000516c <__mem_free+0x40>
    80005158:	00070793          	mv	a5,a4
    8000515c:	0007b703          	ld	a4,0(a5)
    80005160:	fed7e8e3          	bltu	a5,a3,80005150 <__mem_free+0x24>
    80005164:	fee7eae3          	bltu	a5,a4,80005158 <__mem_free+0x2c>
    80005168:	fee6f8e3          	bgeu	a3,a4,80005158 <__mem_free+0x2c>
    8000516c:	ff852803          	lw	a6,-8(a0)
    80005170:	02081613          	slli	a2,a6,0x20
    80005174:	01c65613          	srli	a2,a2,0x1c
    80005178:	00c68633          	add	a2,a3,a2
    8000517c:	02c70a63          	beq	a4,a2,800051b0 <__mem_free+0x84>
    80005180:	fee53823          	sd	a4,-16(a0)
    80005184:	0087a503          	lw	a0,8(a5)
    80005188:	02051613          	slli	a2,a0,0x20
    8000518c:	01c65613          	srli	a2,a2,0x1c
    80005190:	00c78633          	add	a2,a5,a2
    80005194:	04c68263          	beq	a3,a2,800051d8 <__mem_free+0xac>
    80005198:	00813403          	ld	s0,8(sp)
    8000519c:	00d7b023          	sd	a3,0(a5)
    800051a0:	00f5b023          	sd	a5,0(a1)
    800051a4:	00000513          	li	a0,0
    800051a8:	01010113          	addi	sp,sp,16
    800051ac:	00008067          	ret
    800051b0:	00872603          	lw	a2,8(a4)
    800051b4:	00073703          	ld	a4,0(a4)
    800051b8:	0106083b          	addw	a6,a2,a6
    800051bc:	ff052c23          	sw	a6,-8(a0)
    800051c0:	fee53823          	sd	a4,-16(a0)
    800051c4:	0087a503          	lw	a0,8(a5)
    800051c8:	02051613          	slli	a2,a0,0x20
    800051cc:	01c65613          	srli	a2,a2,0x1c
    800051d0:	00c78633          	add	a2,a5,a2
    800051d4:	fcc692e3          	bne	a3,a2,80005198 <__mem_free+0x6c>
    800051d8:	00813403          	ld	s0,8(sp)
    800051dc:	0105053b          	addw	a0,a0,a6
    800051e0:	00a7a423          	sw	a0,8(a5)
    800051e4:	00e7b023          	sd	a4,0(a5)
    800051e8:	00f5b023          	sd	a5,0(a1)
    800051ec:	00000513          	li	a0,0
    800051f0:	01010113          	addi	sp,sp,16
    800051f4:	00008067          	ret

00000000800051f8 <__mem_alloc>:
    800051f8:	fc010113          	addi	sp,sp,-64
    800051fc:	02813823          	sd	s0,48(sp)
    80005200:	02913423          	sd	s1,40(sp)
    80005204:	03213023          	sd	s2,32(sp)
    80005208:	01513423          	sd	s5,8(sp)
    8000520c:	02113c23          	sd	ra,56(sp)
    80005210:	01313c23          	sd	s3,24(sp)
    80005214:	01413823          	sd	s4,16(sp)
    80005218:	01613023          	sd	s6,0(sp)
    8000521c:	04010413          	addi	s0,sp,64
    80005220:	00002a97          	auipc	s5,0x2
    80005224:	fe8a8a93          	addi	s5,s5,-24 # 80007208 <freep>
    80005228:	00f50913          	addi	s2,a0,15
    8000522c:	000ab683          	ld	a3,0(s5)
    80005230:	00495913          	srli	s2,s2,0x4
    80005234:	0019049b          	addiw	s1,s2,1
    80005238:	00048913          	mv	s2,s1
    8000523c:	0c068c63          	beqz	a3,80005314 <__mem_alloc+0x11c>
    80005240:	0006b503          	ld	a0,0(a3)
    80005244:	00852703          	lw	a4,8(a0)
    80005248:	10977063          	bgeu	a4,s1,80005348 <__mem_alloc+0x150>
    8000524c:	000017b7          	lui	a5,0x1
    80005250:	0009099b          	sext.w	s3,s2
    80005254:	0af4e863          	bltu	s1,a5,80005304 <__mem_alloc+0x10c>
    80005258:	02099a13          	slli	s4,s3,0x20
    8000525c:	01ca5a13          	srli	s4,s4,0x1c
    80005260:	fff00b13          	li	s6,-1
    80005264:	0100006f          	j	80005274 <__mem_alloc+0x7c>
    80005268:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000526c:	00852703          	lw	a4,8(a0)
    80005270:	04977463          	bgeu	a4,s1,800052b8 <__mem_alloc+0xc0>
    80005274:	00050793          	mv	a5,a0
    80005278:	fea698e3          	bne	a3,a0,80005268 <__mem_alloc+0x70>
    8000527c:	000a0513          	mv	a0,s4
    80005280:	00000097          	auipc	ra,0x0
    80005284:	1f0080e7          	jalr	496(ra) # 80005470 <kvmincrease>
    80005288:	00050793          	mv	a5,a0
    8000528c:	01050513          	addi	a0,a0,16
    80005290:	07678e63          	beq	a5,s6,8000530c <__mem_alloc+0x114>
    80005294:	0137a423          	sw	s3,8(a5)
    80005298:	00000097          	auipc	ra,0x0
    8000529c:	e94080e7          	jalr	-364(ra) # 8000512c <__mem_free>
    800052a0:	000ab783          	ld	a5,0(s5)
    800052a4:	06078463          	beqz	a5,8000530c <__mem_alloc+0x114>
    800052a8:	0007b503          	ld	a0,0(a5)
    800052ac:	00078693          	mv	a3,a5
    800052b0:	00852703          	lw	a4,8(a0)
    800052b4:	fc9760e3          	bltu	a4,s1,80005274 <__mem_alloc+0x7c>
    800052b8:	08e48263          	beq	s1,a4,8000533c <__mem_alloc+0x144>
    800052bc:	4127073b          	subw	a4,a4,s2
    800052c0:	02071693          	slli	a3,a4,0x20
    800052c4:	01c6d693          	srli	a3,a3,0x1c
    800052c8:	00e52423          	sw	a4,8(a0)
    800052cc:	00d50533          	add	a0,a0,a3
    800052d0:	01252423          	sw	s2,8(a0)
    800052d4:	00fab023          	sd	a5,0(s5)
    800052d8:	01050513          	addi	a0,a0,16
    800052dc:	03813083          	ld	ra,56(sp)
    800052e0:	03013403          	ld	s0,48(sp)
    800052e4:	02813483          	ld	s1,40(sp)
    800052e8:	02013903          	ld	s2,32(sp)
    800052ec:	01813983          	ld	s3,24(sp)
    800052f0:	01013a03          	ld	s4,16(sp)
    800052f4:	00813a83          	ld	s5,8(sp)
    800052f8:	00013b03          	ld	s6,0(sp)
    800052fc:	04010113          	addi	sp,sp,64
    80005300:	00008067          	ret
    80005304:	000019b7          	lui	s3,0x1
    80005308:	f51ff06f          	j	80005258 <__mem_alloc+0x60>
    8000530c:	00000513          	li	a0,0
    80005310:	fcdff06f          	j	800052dc <__mem_alloc+0xe4>
    80005314:	00003797          	auipc	a5,0x3
    80005318:	1bc78793          	addi	a5,a5,444 # 800084d0 <base>
    8000531c:	00078513          	mv	a0,a5
    80005320:	00fab023          	sd	a5,0(s5)
    80005324:	00f7b023          	sd	a5,0(a5)
    80005328:	00000713          	li	a4,0
    8000532c:	00003797          	auipc	a5,0x3
    80005330:	1a07a623          	sw	zero,428(a5) # 800084d8 <base+0x8>
    80005334:	00050693          	mv	a3,a0
    80005338:	f11ff06f          	j	80005248 <__mem_alloc+0x50>
    8000533c:	00053703          	ld	a4,0(a0)
    80005340:	00e7b023          	sd	a4,0(a5)
    80005344:	f91ff06f          	j	800052d4 <__mem_alloc+0xdc>
    80005348:	00068793          	mv	a5,a3
    8000534c:	f6dff06f          	j	800052b8 <__mem_alloc+0xc0>

0000000080005350 <__putc>:
    80005350:	fe010113          	addi	sp,sp,-32
    80005354:	00813823          	sd	s0,16(sp)
    80005358:	00113c23          	sd	ra,24(sp)
    8000535c:	02010413          	addi	s0,sp,32
    80005360:	00050793          	mv	a5,a0
    80005364:	fef40593          	addi	a1,s0,-17
    80005368:	00100613          	li	a2,1
    8000536c:	00000513          	li	a0,0
    80005370:	fef407a3          	sb	a5,-17(s0)
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	918080e7          	jalr	-1768(ra) # 80003c8c <console_write>
    8000537c:	01813083          	ld	ra,24(sp)
    80005380:	01013403          	ld	s0,16(sp)
    80005384:	02010113          	addi	sp,sp,32
    80005388:	00008067          	ret

000000008000538c <__getc>:
    8000538c:	fe010113          	addi	sp,sp,-32
    80005390:	00813823          	sd	s0,16(sp)
    80005394:	00113c23          	sd	ra,24(sp)
    80005398:	02010413          	addi	s0,sp,32
    8000539c:	fe840593          	addi	a1,s0,-24
    800053a0:	00100613          	li	a2,1
    800053a4:	00000513          	li	a0,0
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	8c4080e7          	jalr	-1852(ra) # 80003c6c <console_read>
    800053b0:	fe844503          	lbu	a0,-24(s0)
    800053b4:	01813083          	ld	ra,24(sp)
    800053b8:	01013403          	ld	s0,16(sp)
    800053bc:	02010113          	addi	sp,sp,32
    800053c0:	00008067          	ret

00000000800053c4 <console_handler>:
    800053c4:	fe010113          	addi	sp,sp,-32
    800053c8:	00813823          	sd	s0,16(sp)
    800053cc:	00113c23          	sd	ra,24(sp)
    800053d0:	00913423          	sd	s1,8(sp)
    800053d4:	02010413          	addi	s0,sp,32
    800053d8:	14202773          	csrr	a4,scause
    800053dc:	100027f3          	csrr	a5,sstatus
    800053e0:	0027f793          	andi	a5,a5,2
    800053e4:	06079e63          	bnez	a5,80005460 <console_handler+0x9c>
    800053e8:	00074c63          	bltz	a4,80005400 <console_handler+0x3c>
    800053ec:	01813083          	ld	ra,24(sp)
    800053f0:	01013403          	ld	s0,16(sp)
    800053f4:	00813483          	ld	s1,8(sp)
    800053f8:	02010113          	addi	sp,sp,32
    800053fc:	00008067          	ret
    80005400:	0ff77713          	andi	a4,a4,255
    80005404:	00900793          	li	a5,9
    80005408:	fef712e3          	bne	a4,a5,800053ec <console_handler+0x28>
    8000540c:	ffffe097          	auipc	ra,0xffffe
    80005410:	4b8080e7          	jalr	1208(ra) # 800038c4 <plic_claim>
    80005414:	00a00793          	li	a5,10
    80005418:	00050493          	mv	s1,a0
    8000541c:	02f50c63          	beq	a0,a5,80005454 <console_handler+0x90>
    80005420:	fc0506e3          	beqz	a0,800053ec <console_handler+0x28>
    80005424:	00050593          	mv	a1,a0
    80005428:	00001517          	auipc	a0,0x1
    8000542c:	dc850513          	addi	a0,a0,-568 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80005430:	fffff097          	auipc	ra,0xfffff
    80005434:	8d8080e7          	jalr	-1832(ra) # 80003d08 <__printf>
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	01813083          	ld	ra,24(sp)
    80005440:	00048513          	mv	a0,s1
    80005444:	00813483          	ld	s1,8(sp)
    80005448:	02010113          	addi	sp,sp,32
    8000544c:	ffffe317          	auipc	t1,0xffffe
    80005450:	4b030067          	jr	1200(t1) # 800038fc <plic_complete>
    80005454:	fffff097          	auipc	ra,0xfffff
    80005458:	1bc080e7          	jalr	444(ra) # 80004610 <uartintr>
    8000545c:	fddff06f          	j	80005438 <console_handler+0x74>
    80005460:	00001517          	auipc	a0,0x1
    80005464:	e9050513          	addi	a0,a0,-368 # 800062f0 <digits+0x78>
    80005468:	fffff097          	auipc	ra,0xfffff
    8000546c:	844080e7          	jalr	-1980(ra) # 80003cac <panic>

0000000080005470 <kvmincrease>:
    80005470:	fe010113          	addi	sp,sp,-32
    80005474:	01213023          	sd	s2,0(sp)
    80005478:	00001937          	lui	s2,0x1
    8000547c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005480:	00813823          	sd	s0,16(sp)
    80005484:	00113c23          	sd	ra,24(sp)
    80005488:	00913423          	sd	s1,8(sp)
    8000548c:	02010413          	addi	s0,sp,32
    80005490:	01250933          	add	s2,a0,s2
    80005494:	00c95913          	srli	s2,s2,0xc
    80005498:	02090863          	beqz	s2,800054c8 <kvmincrease+0x58>
    8000549c:	00000493          	li	s1,0
    800054a0:	00148493          	addi	s1,s1,1
    800054a4:	fffff097          	auipc	ra,0xfffff
    800054a8:	4bc080e7          	jalr	1212(ra) # 80004960 <kalloc>
    800054ac:	fe991ae3          	bne	s2,s1,800054a0 <kvmincrease+0x30>
    800054b0:	01813083          	ld	ra,24(sp)
    800054b4:	01013403          	ld	s0,16(sp)
    800054b8:	00813483          	ld	s1,8(sp)
    800054bc:	00013903          	ld	s2,0(sp)
    800054c0:	02010113          	addi	sp,sp,32
    800054c4:	00008067          	ret
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	00013903          	ld	s2,0(sp)
    800054d8:	00000513          	li	a0,0
    800054dc:	02010113          	addi	sp,sp,32
    800054e0:	00008067          	ret
	...
