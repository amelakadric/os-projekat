
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
    8000001c:	0d0030ef          	jal	ra,800030ec <start>

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
    80001180:	5a1000ef          	jal	ra,80001f20 <_ZN5Riscv20handleSupervisorTrapEv>

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
    800013dc:	034080e7          	jalr	52(ra) # 8000540c <__getc>
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
    80001404:	fd0080e7          	jalr	-48(ra) # 800053d0 <__putc>
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
    80001448:	7f4080e7          	jalr	2036(ra) # 80001c38 <_Znwm>
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
    80001468:	fa8080e7          	jalr	-88(ra) # 8000240c <_ZN9Scheduler3getEv>
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
    800014d0:	7bc080e7          	jalr	1980(ra) # 80001c88 <_ZdlPv>
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    800014d4:	00048513          	mv	a0,s1
    800014d8:	00001097          	auipc	ra,0x1
    800014dc:	f9c080e7          	jalr	-100(ra) # 80002474 <_ZN9Scheduler3putEP3TCB>
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

0000000080001594 <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    80001594:	fe010113          	addi	sp,sp,-32
    80001598:	00113c23          	sd	ra,24(sp)
    8000159c:	00813823          	sd	s0,16(sp)
    800015a0:	00913423          	sd	s1,8(sp)
    800015a4:	01213023          	sd	s2,0(sp)
    800015a8:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800015ac:	00000913          	li	s2,0
    800015b0:	0380006f          	j	800015e8 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800015b4:	00000097          	auipc	ra,0x0
    800015b8:	d40080e7          	jalr	-704(ra) # 800012f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800015bc:	00148493          	addi	s1,s1,1
    800015c0:	000027b7          	lui	a5,0x2
    800015c4:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800015c8:	0097ee63          	bltu	a5,s1,800015e4 <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800015cc:	00000713          	li	a4,0
    800015d0:	000077b7          	lui	a5,0x7
    800015d4:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800015d8:	fce7eee3          	bltu	a5,a4,800015b4 <_Z11workerBodyAPv+0x20>
    800015dc:	00170713          	addi	a4,a4,1
    800015e0:	ff1ff06f          	j	800015d0 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    800015e4:	00190913          	addi	s2,s2,1
    800015e8:	00900793          	li	a5,9
    800015ec:	0527e063          	bltu	a5,s2,8000162c <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    800015f0:	00005517          	auipc	a0,0x5
    800015f4:	a3050513          	addi	a0,a0,-1488 # 80006020 <CONSOLE_STATUS+0x10>
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	1d0080e7          	jalr	464(ra) # 800027c8 <_Z11printStringPKc>
    80001600:	00000613          	li	a2,0
    80001604:	00a00593          	li	a1,10
    80001608:	0009051b          	sext.w	a0,s2
    8000160c:	00001097          	auipc	ra,0x1
    80001610:	354080e7          	jalr	852(ra) # 80002960 <_Z8printIntiii>
    80001614:	00005517          	auipc	a0,0x5
    80001618:	c3c50513          	addi	a0,a0,-964 # 80006250 <CONSOLE_STATUS+0x240>
    8000161c:	00001097          	auipc	ra,0x1
    80001620:	1ac080e7          	jalr	428(ra) # 800027c8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80001624:	00000493          	li	s1,0
    80001628:	f99ff06f          	j	800015c0 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    8000162c:	00005517          	auipc	a0,0x5
    80001630:	9fc50513          	addi	a0,a0,-1540 # 80006028 <CONSOLE_STATUS+0x18>
    80001634:	00001097          	auipc	ra,0x1
    80001638:	194080e7          	jalr	404(ra) # 800027c8 <_Z11printStringPKc>
    finishedA = true;
    8000163c:	00100793          	li	a5,1
    80001640:	00006717          	auipc	a4,0x6
    80001644:	bcf70823          	sb	a5,-1072(a4) # 80007210 <finishedA>
}
    80001648:	01813083          	ld	ra,24(sp)
    8000164c:	01013403          	ld	s0,16(sp)
    80001650:	00813483          	ld	s1,8(sp)
    80001654:	00013903          	ld	s2,0(sp)
    80001658:	02010113          	addi	sp,sp,32
    8000165c:	00008067          	ret

0000000080001660 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    80001660:	fe010113          	addi	sp,sp,-32
    80001664:	00113c23          	sd	ra,24(sp)
    80001668:	00813823          	sd	s0,16(sp)
    8000166c:	00913423          	sd	s1,8(sp)
    80001670:	01213023          	sd	s2,0(sp)
    80001674:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    80001678:	00000913          	li	s2,0
    8000167c:	0380006f          	j	800016b4 <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    80001680:	00000097          	auipc	ra,0x0
    80001684:	c74080e7          	jalr	-908(ra) # 800012f4 <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80001688:	00148493          	addi	s1,s1,1
    8000168c:	000027b7          	lui	a5,0x2
    80001690:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80001694:	0097ee63          	bltu	a5,s1,800016b0 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80001698:	00000713          	li	a4,0
    8000169c:	000077b7          	lui	a5,0x7
    800016a0:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800016a4:	fce7eee3          	bltu	a5,a4,80001680 <_Z11workerBodyBPv+0x20>
    800016a8:	00170713          	addi	a4,a4,1
    800016ac:	ff1ff06f          	j	8000169c <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800016b0:	00190913          	addi	s2,s2,1
    800016b4:	00f00793          	li	a5,15
    800016b8:	0527e063          	bltu	a5,s2,800016f8 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    800016bc:	00005517          	auipc	a0,0x5
    800016c0:	97c50513          	addi	a0,a0,-1668 # 80006038 <CONSOLE_STATUS+0x28>
    800016c4:	00001097          	auipc	ra,0x1
    800016c8:	104080e7          	jalr	260(ra) # 800027c8 <_Z11printStringPKc>
    800016cc:	00000613          	li	a2,0
    800016d0:	00a00593          	li	a1,10
    800016d4:	0009051b          	sext.w	a0,s2
    800016d8:	00001097          	auipc	ra,0x1
    800016dc:	288080e7          	jalr	648(ra) # 80002960 <_Z8printIntiii>
    800016e0:	00005517          	auipc	a0,0x5
    800016e4:	b7050513          	addi	a0,a0,-1168 # 80006250 <CONSOLE_STATUS+0x240>
    800016e8:	00001097          	auipc	ra,0x1
    800016ec:	0e0080e7          	jalr	224(ra) # 800027c8 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    800016f0:	00000493          	li	s1,0
    800016f4:	f99ff06f          	j	8000168c <_Z11workerBodyBPv+0x2c>
        }
    }
    printString("B finished!\n");
    800016f8:	00005517          	auipc	a0,0x5
    800016fc:	94850513          	addi	a0,a0,-1720 # 80006040 <CONSOLE_STATUS+0x30>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	0c8080e7          	jalr	200(ra) # 800027c8 <_Z11printStringPKc>
    finishedB = true;
    80001708:	00100793          	li	a5,1
    8000170c:	00006717          	auipc	a4,0x6
    80001710:	b0f702a3          	sb	a5,-1275(a4) # 80007211 <finishedB>
    thread_dispatch();
    80001714:	00000097          	auipc	ra,0x0
    80001718:	be0080e7          	jalr	-1056(ra) # 800012f4 <_Z15thread_dispatchv>
}
    8000171c:	01813083          	ld	ra,24(sp)
    80001720:	01013403          	ld	s0,16(sp)
    80001724:	00813483          	ld	s1,8(sp)
    80001728:	00013903          	ld	s2,0(sp)
    8000172c:	02010113          	addi	sp,sp,32
    80001730:	00008067          	ret

0000000080001734 <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    80001734:	fe010113          	addi	sp,sp,-32
    80001738:	00113c23          	sd	ra,24(sp)
    8000173c:	00813823          	sd	s0,16(sp)
    80001740:	00913423          	sd	s1,8(sp)
    80001744:	01213023          	sd	s2,0(sp)
    80001748:	02010413          	addi	s0,sp,32
    8000174c:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80001750:	00100793          	li	a5,1
    80001754:	02a7f863          	bgeu	a5,a0,80001784 <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    80001758:	00a00793          	li	a5,10
    8000175c:	02f577b3          	remu	a5,a0,a5
    80001760:	02078e63          	beqz	a5,8000179c <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    80001764:	fff48513          	addi	a0,s1,-1
    80001768:	00000097          	auipc	ra,0x0
    8000176c:	fcc080e7          	jalr	-52(ra) # 80001734 <_Z9fibonaccim>
    80001770:	00050913          	mv	s2,a0
    80001774:	ffe48513          	addi	a0,s1,-2
    80001778:	00000097          	auipc	ra,0x0
    8000177c:	fbc080e7          	jalr	-68(ra) # 80001734 <_Z9fibonaccim>
    80001780:	00a90533          	add	a0,s2,a0
}
    80001784:	01813083          	ld	ra,24(sp)
    80001788:	01013403          	ld	s0,16(sp)
    8000178c:	00813483          	ld	s1,8(sp)
    80001790:	00013903          	ld	s2,0(sp)
    80001794:	02010113          	addi	sp,sp,32
    80001798:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    8000179c:	00000097          	auipc	ra,0x0
    800017a0:	b58080e7          	jalr	-1192(ra) # 800012f4 <_Z15thread_dispatchv>
    800017a4:	fc1ff06f          	j	80001764 <_Z9fibonaccim+0x30>

00000000800017a8 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800017a8:	fe010113          	addi	sp,sp,-32
    800017ac:	00113c23          	sd	ra,24(sp)
    800017b0:	00813823          	sd	s0,16(sp)
    800017b4:	00913423          	sd	s1,8(sp)
    800017b8:	01213023          	sd	s2,0(sp)
    800017bc:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    800017c0:	00000493          	li	s1,0
    800017c4:	0400006f          	j	80001804 <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800017c8:	00005517          	auipc	a0,0x5
    800017cc:	88850513          	addi	a0,a0,-1912 # 80006050 <CONSOLE_STATUS+0x40>
    800017d0:	00001097          	auipc	ra,0x1
    800017d4:	ff8080e7          	jalr	-8(ra) # 800027c8 <_Z11printStringPKc>
    800017d8:	00000613          	li	a2,0
    800017dc:	00a00593          	li	a1,10
    800017e0:	00048513          	mv	a0,s1
    800017e4:	00001097          	auipc	ra,0x1
    800017e8:	17c080e7          	jalr	380(ra) # 80002960 <_Z8printIntiii>
    800017ec:	00005517          	auipc	a0,0x5
    800017f0:	a6450513          	addi	a0,a0,-1436 # 80006250 <CONSOLE_STATUS+0x240>
    800017f4:	00001097          	auipc	ra,0x1
    800017f8:	fd4080e7          	jalr	-44(ra) # 800027c8 <_Z11printStringPKc>
    for (; i < 3; i++) {
    800017fc:	0014849b          	addiw	s1,s1,1
    80001800:	0ff4f493          	andi	s1,s1,255
    80001804:	00200793          	li	a5,2
    80001808:	fc97f0e3          	bgeu	a5,s1,800017c8 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    8000180c:	00005517          	auipc	a0,0x5
    80001810:	84c50513          	addi	a0,a0,-1972 # 80006058 <CONSOLE_STATUS+0x48>
    80001814:	00001097          	auipc	ra,0x1
    80001818:	fb4080e7          	jalr	-76(ra) # 800027c8 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    8000181c:	00700313          	li	t1,7
    thread_dispatch();
    80001820:	00000097          	auipc	ra,0x0
    80001824:	ad4080e7          	jalr	-1324(ra) # 800012f4 <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80001828:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    8000182c:	00005517          	auipc	a0,0x5
    80001830:	83c50513          	addi	a0,a0,-1988 # 80006068 <CONSOLE_STATUS+0x58>
    80001834:	00001097          	auipc	ra,0x1
    80001838:	f94080e7          	jalr	-108(ra) # 800027c8 <_Z11printStringPKc>
    8000183c:	00000613          	li	a2,0
    80001840:	00a00593          	li	a1,10
    80001844:	0009051b          	sext.w	a0,s2
    80001848:	00001097          	auipc	ra,0x1
    8000184c:	118080e7          	jalr	280(ra) # 80002960 <_Z8printIntiii>
    80001850:	00005517          	auipc	a0,0x5
    80001854:	a0050513          	addi	a0,a0,-1536 # 80006250 <CONSOLE_STATUS+0x240>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	f70080e7          	jalr	-144(ra) # 800027c8 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    80001860:	00c00513          	li	a0,12
    80001864:	00000097          	auipc	ra,0x0
    80001868:	ed0080e7          	jalr	-304(ra) # 80001734 <_Z9fibonaccim>
    8000186c:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    80001870:	00005517          	auipc	a0,0x5
    80001874:	80050513          	addi	a0,a0,-2048 # 80006070 <CONSOLE_STATUS+0x60>
    80001878:	00001097          	auipc	ra,0x1
    8000187c:	f50080e7          	jalr	-176(ra) # 800027c8 <_Z11printStringPKc>
    80001880:	00000613          	li	a2,0
    80001884:	00a00593          	li	a1,10
    80001888:	0009051b          	sext.w	a0,s2
    8000188c:	00001097          	auipc	ra,0x1
    80001890:	0d4080e7          	jalr	212(ra) # 80002960 <_Z8printIntiii>
    80001894:	00005517          	auipc	a0,0x5
    80001898:	9bc50513          	addi	a0,a0,-1604 # 80006250 <CONSOLE_STATUS+0x240>
    8000189c:	00001097          	auipc	ra,0x1
    800018a0:	f2c080e7          	jalr	-212(ra) # 800027c8 <_Z11printStringPKc>
    800018a4:	0400006f          	j	800018e4 <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800018a8:	00004517          	auipc	a0,0x4
    800018ac:	7a850513          	addi	a0,a0,1960 # 80006050 <CONSOLE_STATUS+0x40>
    800018b0:	00001097          	auipc	ra,0x1
    800018b4:	f18080e7          	jalr	-232(ra) # 800027c8 <_Z11printStringPKc>
    800018b8:	00000613          	li	a2,0
    800018bc:	00a00593          	li	a1,10
    800018c0:	00048513          	mv	a0,s1
    800018c4:	00001097          	auipc	ra,0x1
    800018c8:	09c080e7          	jalr	156(ra) # 80002960 <_Z8printIntiii>
    800018cc:	00005517          	auipc	a0,0x5
    800018d0:	98450513          	addi	a0,a0,-1660 # 80006250 <CONSOLE_STATUS+0x240>
    800018d4:	00001097          	auipc	ra,0x1
    800018d8:	ef4080e7          	jalr	-268(ra) # 800027c8 <_Z11printStringPKc>
    for (; i < 6; i++) {
    800018dc:	0014849b          	addiw	s1,s1,1
    800018e0:	0ff4f493          	andi	s1,s1,255
    800018e4:	00500793          	li	a5,5
    800018e8:	fc97f0e3          	bgeu	a5,s1,800018a8 <_Z11workerBodyCPv+0x100>
    }

    printString("C finished!\n");
    800018ec:	00004517          	auipc	a0,0x4
    800018f0:	79450513          	addi	a0,a0,1940 # 80006080 <CONSOLE_STATUS+0x70>
    800018f4:	00001097          	auipc	ra,0x1
    800018f8:	ed4080e7          	jalr	-300(ra) # 800027c8 <_Z11printStringPKc>
    finishedC = true;
    800018fc:	00100793          	li	a5,1
    80001900:	00006717          	auipc	a4,0x6
    80001904:	90f70923          	sb	a5,-1774(a4) # 80007212 <finishedC>
    thread_dispatch();
    80001908:	00000097          	auipc	ra,0x0
    8000190c:	9ec080e7          	jalr	-1556(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001910:	01813083          	ld	ra,24(sp)
    80001914:	01013403          	ld	s0,16(sp)
    80001918:	00813483          	ld	s1,8(sp)
    8000191c:	00013903          	ld	s2,0(sp)
    80001920:	02010113          	addi	sp,sp,32
    80001924:	00008067          	ret

0000000080001928 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80001928:	fe010113          	addi	sp,sp,-32
    8000192c:	00113c23          	sd	ra,24(sp)
    80001930:	00813823          	sd	s0,16(sp)
    80001934:	00913423          	sd	s1,8(sp)
    80001938:	01213023          	sd	s2,0(sp)
    8000193c:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80001940:	00a00493          	li	s1,10
    80001944:	0400006f          	j	80001984 <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80001948:	00004517          	auipc	a0,0x4
    8000194c:	74850513          	addi	a0,a0,1864 # 80006090 <CONSOLE_STATUS+0x80>
    80001950:	00001097          	auipc	ra,0x1
    80001954:	e78080e7          	jalr	-392(ra) # 800027c8 <_Z11printStringPKc>
    80001958:	00000613          	li	a2,0
    8000195c:	00a00593          	li	a1,10
    80001960:	00048513          	mv	a0,s1
    80001964:	00001097          	auipc	ra,0x1
    80001968:	ffc080e7          	jalr	-4(ra) # 80002960 <_Z8printIntiii>
    8000196c:	00005517          	auipc	a0,0x5
    80001970:	8e450513          	addi	a0,a0,-1820 # 80006250 <CONSOLE_STATUS+0x240>
    80001974:	00001097          	auipc	ra,0x1
    80001978:	e54080e7          	jalr	-428(ra) # 800027c8 <_Z11printStringPKc>
    for (; i < 13; i++) {
    8000197c:	0014849b          	addiw	s1,s1,1
    80001980:	0ff4f493          	andi	s1,s1,255
    80001984:	00c00793          	li	a5,12
    80001988:	fc97f0e3          	bgeu	a5,s1,80001948 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    8000198c:	00004517          	auipc	a0,0x4
    80001990:	70c50513          	addi	a0,a0,1804 # 80006098 <CONSOLE_STATUS+0x88>
    80001994:	00001097          	auipc	ra,0x1
    80001998:	e34080e7          	jalr	-460(ra) # 800027c8 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    8000199c:	00500313          	li	t1,5
    thread_dispatch();
    800019a0:	00000097          	auipc	ra,0x0
    800019a4:	954080e7          	jalr	-1708(ra) # 800012f4 <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800019a8:	01000513          	li	a0,16
    800019ac:	00000097          	auipc	ra,0x0
    800019b0:	d88080e7          	jalr	-632(ra) # 80001734 <_Z9fibonaccim>
    800019b4:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    800019b8:	00004517          	auipc	a0,0x4
    800019bc:	6f050513          	addi	a0,a0,1776 # 800060a8 <CONSOLE_STATUS+0x98>
    800019c0:	00001097          	auipc	ra,0x1
    800019c4:	e08080e7          	jalr	-504(ra) # 800027c8 <_Z11printStringPKc>
    800019c8:	00000613          	li	a2,0
    800019cc:	00a00593          	li	a1,10
    800019d0:	0009051b          	sext.w	a0,s2
    800019d4:	00001097          	auipc	ra,0x1
    800019d8:	f8c080e7          	jalr	-116(ra) # 80002960 <_Z8printIntiii>
    800019dc:	00005517          	auipc	a0,0x5
    800019e0:	87450513          	addi	a0,a0,-1932 # 80006250 <CONSOLE_STATUS+0x240>
    800019e4:	00001097          	auipc	ra,0x1
    800019e8:	de4080e7          	jalr	-540(ra) # 800027c8 <_Z11printStringPKc>
    800019ec:	0400006f          	j	80001a2c <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    800019f0:	00004517          	auipc	a0,0x4
    800019f4:	6a050513          	addi	a0,a0,1696 # 80006090 <CONSOLE_STATUS+0x80>
    800019f8:	00001097          	auipc	ra,0x1
    800019fc:	dd0080e7          	jalr	-560(ra) # 800027c8 <_Z11printStringPKc>
    80001a00:	00000613          	li	a2,0
    80001a04:	00a00593          	li	a1,10
    80001a08:	00048513          	mv	a0,s1
    80001a0c:	00001097          	auipc	ra,0x1
    80001a10:	f54080e7          	jalr	-172(ra) # 80002960 <_Z8printIntiii>
    80001a14:	00005517          	auipc	a0,0x5
    80001a18:	83c50513          	addi	a0,a0,-1988 # 80006250 <CONSOLE_STATUS+0x240>
    80001a1c:	00001097          	auipc	ra,0x1
    80001a20:	dac080e7          	jalr	-596(ra) # 800027c8 <_Z11printStringPKc>
    for (; i < 16; i++) {
    80001a24:	0014849b          	addiw	s1,s1,1
    80001a28:	0ff4f493          	andi	s1,s1,255
    80001a2c:	00f00793          	li	a5,15
    80001a30:	fc97f0e3          	bgeu	a5,s1,800019f0 <_Z11workerBodyDPv+0xc8>
    }

    printString("D finished!\n");
    80001a34:	00004517          	auipc	a0,0x4
    80001a38:	68450513          	addi	a0,a0,1668 # 800060b8 <CONSOLE_STATUS+0xa8>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	d8c080e7          	jalr	-628(ra) # 800027c8 <_Z11printStringPKc>
    finishedD = true;
    80001a44:	00100793          	li	a5,1
    80001a48:	00005717          	auipc	a4,0x5
    80001a4c:	7cf705a3          	sb	a5,1995(a4) # 80007213 <finishedD>
    thread_dispatch();
    80001a50:	00000097          	auipc	ra,0x0
    80001a54:	8a4080e7          	jalr	-1884(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001a58:	01813083          	ld	ra,24(sp)
    80001a5c:	01013403          	ld	s0,16(sp)
    80001a60:	00813483          	ld	s1,8(sp)
    80001a64:	00013903          	ld	s2,0(sp)
    80001a68:	02010113          	addi	sp,sp,32
    80001a6c:	00008067          	ret

0000000080001a70 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    80001a70:	fd010113          	addi	sp,sp,-48
    80001a74:	02113423          	sd	ra,40(sp)
    80001a78:	02813023          	sd	s0,32(sp)
    80001a7c:	03010413          	addi	s0,sp,48
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    80001a80:	00000613          	li	a2,0
    80001a84:	00000597          	auipc	a1,0x0
    80001a88:	b1058593          	addi	a1,a1,-1264 # 80001594 <_Z11workerBodyAPv>
    80001a8c:	fd040513          	addi	a0,s0,-48
    80001a90:	00000097          	auipc	ra,0x0
    80001a94:	808080e7          	jalr	-2040(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadA created\n");
    80001a98:	00004517          	auipc	a0,0x4
    80001a9c:	63050513          	addi	a0,a0,1584 # 800060c8 <CONSOLE_STATUS+0xb8>
    80001aa0:	00001097          	auipc	ra,0x1
    80001aa4:	d28080e7          	jalr	-728(ra) # 800027c8 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    80001aa8:	00000613          	li	a2,0
    80001aac:	00000597          	auipc	a1,0x0
    80001ab0:	bb458593          	addi	a1,a1,-1100 # 80001660 <_Z11workerBodyBPv>
    80001ab4:	fd840513          	addi	a0,s0,-40
    80001ab8:	fffff097          	auipc	ra,0xfffff
    80001abc:	7e0080e7          	jalr	2016(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadB created\n");
    80001ac0:	00004517          	auipc	a0,0x4
    80001ac4:	62050513          	addi	a0,a0,1568 # 800060e0 <CONSOLE_STATUS+0xd0>
    80001ac8:	00001097          	auipc	ra,0x1
    80001acc:	d00080e7          	jalr	-768(ra) # 800027c8 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80001ad0:	00000613          	li	a2,0
    80001ad4:	00000597          	auipc	a1,0x0
    80001ad8:	cd458593          	addi	a1,a1,-812 # 800017a8 <_Z11workerBodyCPv>
    80001adc:	fe040513          	addi	a0,s0,-32
    80001ae0:	fffff097          	auipc	ra,0xfffff
    80001ae4:	7b8080e7          	jalr	1976(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadC created\n");
    80001ae8:	00004517          	auipc	a0,0x4
    80001aec:	61050513          	addi	a0,a0,1552 # 800060f8 <CONSOLE_STATUS+0xe8>
    80001af0:	00001097          	auipc	ra,0x1
    80001af4:	cd8080e7          	jalr	-808(ra) # 800027c8 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80001af8:	00000613          	li	a2,0
    80001afc:	00000597          	auipc	a1,0x0
    80001b00:	e2c58593          	addi	a1,a1,-468 # 80001928 <_Z11workerBodyDPv>
    80001b04:	fe840513          	addi	a0,s0,-24
    80001b08:	fffff097          	auipc	ra,0xfffff
    80001b0c:	790080e7          	jalr	1936(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
    printString("ThreadD created\n");
    80001b10:	00004517          	auipc	a0,0x4
    80001b14:	60050513          	addi	a0,a0,1536 # 80006110 <CONSOLE_STATUS+0x100>
    80001b18:	00001097          	auipc	ra,0x1
    80001b1c:	cb0080e7          	jalr	-848(ra) # 800027c8 <_Z11printStringPKc>
    80001b20:	00c0006f          	j	80001b2c <_Z18Threads_C_API_testv+0xbc>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80001b24:	fffff097          	auipc	ra,0xfffff
    80001b28:	7d0080e7          	jalr	2000(ra) # 800012f4 <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80001b2c:	00005797          	auipc	a5,0x5
    80001b30:	6e47c783          	lbu	a5,1764(a5) # 80007210 <finishedA>
    80001b34:	fe0788e3          	beqz	a5,80001b24 <_Z18Threads_C_API_testv+0xb4>
    80001b38:	00005797          	auipc	a5,0x5
    80001b3c:	6d97c783          	lbu	a5,1753(a5) # 80007211 <finishedB>
    80001b40:	fe0782e3          	beqz	a5,80001b24 <_Z18Threads_C_API_testv+0xb4>
    80001b44:	00005797          	auipc	a5,0x5
    80001b48:	6ce7c783          	lbu	a5,1742(a5) # 80007212 <finishedC>
    80001b4c:	fc078ce3          	beqz	a5,80001b24 <_Z18Threads_C_API_testv+0xb4>
    80001b50:	00005797          	auipc	a5,0x5
    80001b54:	6c37c783          	lbu	a5,1731(a5) # 80007213 <finishedD>
    80001b58:	fc0786e3          	beqz	a5,80001b24 <_Z18Threads_C_API_testv+0xb4>
    }

}
    80001b5c:	02813083          	ld	ra,40(sp)
    80001b60:	02013403          	ld	s0,32(sp)
    80001b64:	03010113          	addi	sp,sp,48
    80001b68:	00008067          	ret

0000000080001b6c <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001b6c:	ff010113          	addi	sp,sp,-16
    80001b70:	00113423          	sd	ra,8(sp)
    80001b74:	00813023          	sd	s0,0(sp)
    80001b78:	01010413          	addi	s0,sp,16
    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80001b7c:	00000097          	auipc	ra,0x0
    80001b80:	ef4080e7          	jalr	-268(ra) # 80001a70 <_Z18Threads_C_API_testv>
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001b84:	00813083          	ld	ra,8(sp)
    80001b88:	00013403          	ld	s0,0(sp)
    80001b8c:	01010113          	addi	sp,sp,16
    80001b90:	00008067          	ret

0000000080001b94 <main>:
#include "../h/syscall_cpp.hpp"
#include "../h/riscv.hpp"

void userMain();

int main() {
    80001b94:	ff010113          	addi	sp,sp,-16
    80001b98:	00113423          	sd	ra,8(sp)
    80001b9c:	00813023          	sd	s0,0(sp)
    80001ba0:	01010413          	addi	s0,sp,16

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001ba4:	00000593          	li	a1,0
    80001ba8:	00000513          	li	a0,0
    80001bac:	00000097          	auipc	ra,0x0
    80001bb0:	5d8080e7          	jalr	1496(ra) # 80002184 <_ZN3TCB12createThreadEPFvPvES0_>
    80001bb4:	00005797          	auipc	a5,0x5
    80001bb8:	5f47b783          	ld	a5,1524(a5) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80001bbc:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001bc0:	00005797          	auipc	a5,0x5
    80001bc4:	5c87b783          	ld	a5,1480(a5) # 80007188 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001bc8:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001bcc:	00200793          	li	a5,2
    80001bd0:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);


    userMain();
    80001bd4:	00000097          	auipc	ra,0x0
    80001bd8:	f98080e7          	jalr	-104(ra) # 80001b6c <_Z8userMainv>

    return 0;

    80001bdc:	00000513          	li	a0,0
    80001be0:	00813083          	ld	ra,8(sp)
    80001be4:	00013403          	ld	s0,0(sp)
    80001be8:	01010113          	addi	sp,sp,16
    80001bec:	00008067          	ret

0000000080001bf0 <_ZN6ThreadD1Ev>:

Thread::Thread() {

}

Thread::~Thread() {
    80001bf0:	ff010113          	addi	sp,sp,-16
    80001bf4:	00813423          	sd	s0,8(sp)
    80001bf8:	01010413          	addi	s0,sp,16

}
    80001bfc:	00813403          	ld	s0,8(sp)
    80001c00:	01010113          	addi	sp,sp,16
    80001c04:	00008067          	ret

0000000080001c08 <_ZN6Thread3runEv>:

void Thread::run() {
    80001c08:	ff010113          	addi	sp,sp,-16
    80001c0c:	00813423          	sd	s0,8(sp)
    80001c10:	01010413          	addi	s0,sp,16

}
    80001c14:	00813403          	ld	s0,8(sp)
    80001c18:	01010113          	addi	sp,sp,16
    80001c1c:	00008067          	ret

0000000080001c20 <_ZN9SemaphoreD1Ev>:

int Thread::sleep(time_t) {
    return 0;
}

Semaphore::~Semaphore() {
    80001c20:	ff010113          	addi	sp,sp,-16
    80001c24:	00813423          	sd	s0,8(sp)
    80001c28:	01010413          	addi	s0,sp,16

}
    80001c2c:	00813403          	ld	s0,8(sp)
    80001c30:	01010113          	addi	sp,sp,16
    80001c34:	00008067          	ret

0000000080001c38 <_Znwm>:
{
    80001c38:	ff010113          	addi	sp,sp,-16
    80001c3c:	00113423          	sd	ra,8(sp)
    80001c40:	00813023          	sd	s0,0(sp)
    80001c44:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c48:	00003097          	auipc	ra,0x3
    80001c4c:	630080e7          	jalr	1584(ra) # 80005278 <__mem_alloc>
}
    80001c50:	00813083          	ld	ra,8(sp)
    80001c54:	00013403          	ld	s0,0(sp)
    80001c58:	01010113          	addi	sp,sp,16
    80001c5c:	00008067          	ret

0000000080001c60 <_Znam>:
{
    80001c60:	ff010113          	addi	sp,sp,-16
    80001c64:	00113423          	sd	ra,8(sp)
    80001c68:	00813023          	sd	s0,0(sp)
    80001c6c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001c70:	00003097          	auipc	ra,0x3
    80001c74:	608080e7          	jalr	1544(ra) # 80005278 <__mem_alloc>
}
    80001c78:	00813083          	ld	ra,8(sp)
    80001c7c:	00013403          	ld	s0,0(sp)
    80001c80:	01010113          	addi	sp,sp,16
    80001c84:	00008067          	ret

0000000080001c88 <_ZdlPv>:
{
    80001c88:	ff010113          	addi	sp,sp,-16
    80001c8c:	00113423          	sd	ra,8(sp)
    80001c90:	00813023          	sd	s0,0(sp)
    80001c94:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001c98:	00003097          	auipc	ra,0x3
    80001c9c:	514080e7          	jalr	1300(ra) # 800051ac <__mem_free>
}
    80001ca0:	00813083          	ld	ra,8(sp)
    80001ca4:	00013403          	ld	s0,0(sp)
    80001ca8:	01010113          	addi	sp,sp,16
    80001cac:	00008067          	ret

0000000080001cb0 <_ZN6ThreadD0Ev>:
Thread::~Thread() {
    80001cb0:	ff010113          	addi	sp,sp,-16
    80001cb4:	00113423          	sd	ra,8(sp)
    80001cb8:	00813023          	sd	s0,0(sp)
    80001cbc:	01010413          	addi	s0,sp,16
}
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	fc8080e7          	jalr	-56(ra) # 80001c88 <_ZdlPv>
    80001cc8:	00813083          	ld	ra,8(sp)
    80001ccc:	00013403          	ld	s0,0(sp)
    80001cd0:	01010113          	addi	sp,sp,16
    80001cd4:	00008067          	ret

0000000080001cd8 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001cd8:	ff010113          	addi	sp,sp,-16
    80001cdc:	00113423          	sd	ra,8(sp)
    80001ce0:	00813023          	sd	s0,0(sp)
    80001ce4:	01010413          	addi	s0,sp,16
}
    80001ce8:	00000097          	auipc	ra,0x0
    80001cec:	fa0080e7          	jalr	-96(ra) # 80001c88 <_ZdlPv>
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZdaPv>:
{
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    __mem_free(p);
    80001d10:	00003097          	auipc	ra,0x3
    80001d14:	49c080e7          	jalr	1180(ra) # 800051ac <__mem_free>
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6Thread5startEv>:
int Thread::start (){
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    int a = thread_create(&myHandle, myHandle->getBody(), myHandle->getArg());
    80001d38:	00853783          	ld	a5,8(a0)
    80001d3c:	0087b603          	ld	a2,8(a5)
    80001d40:	0007b583          	ld	a1,0(a5)
    80001d44:	00850513          	addi	a0,a0,8
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	550080e7          	jalr	1360(ra) # 80001298 <_Z13thread_createPP3TCBPFvPvES2_>
}
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d70:	fffff097          	auipc	ra,0xfffff
    80001d74:	584080e7          	jalr	1412(ra) # 800012f4 <_Z15thread_dispatchv>
}
    80001d78:	00813083          	ld	ra,8(sp)
    80001d7c:	00013403          	ld	s0,0(sp)
    80001d80:	01010113          	addi	sp,sp,16
    80001d84:	00008067          	ret

0000000080001d88 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001d88:	ff010113          	addi	sp,sp,-16
    80001d8c:	00813423          	sd	s0,8(sp)
    80001d90:	01010413          	addi	s0,sp,16
    80001d94:	00005797          	auipc	a5,0x5
    80001d98:	38c78793          	addi	a5,a5,908 # 80007120 <_ZTV6Thread+0x10>
    80001d9c:	00f53023          	sd	a5,0(a0)
}
    80001da0:	00813403          	ld	s0,8(sp)
    80001da4:	01010113          	addi	sp,sp,16
    80001da8:	00008067          	ret

0000000080001dac <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001dac:	ff010113          	addi	sp,sp,-16
    80001db0:	00813423          	sd	s0,8(sp)
    80001db4:	01010413          	addi	s0,sp,16
}
    80001db8:	00000513          	li	a0,0
    80001dbc:	00813403          	ld	s0,8(sp)
    80001dc0:	01010113          	addi	sp,sp,16
    80001dc4:	00008067          	ret

0000000080001dc8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001dc8:	ff010113          	addi	sp,sp,-16
    80001dcc:	00813423          	sd	s0,8(sp)
    80001dd0:	01010413          	addi	s0,sp,16
    return 0;
}
    80001dd4:	00000513          	li	a0,0
    80001dd8:	00813403          	ld	s0,8(sp)
    80001ddc:	01010113          	addi	sp,sp,16
    80001de0:	00008067          	ret

0000000080001de4 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001de4:	ff010113          	addi	sp,sp,-16
    80001de8:	00813423          	sd	s0,8(sp)
    80001dec:	01010413          	addi	s0,sp,16
    return 0;
}
    80001df0:	00000513          	li	a0,0
    80001df4:	00813403          	ld	s0,8(sp)
    80001df8:	01010113          	addi	sp,sp,16
    80001dfc:	00008067          	ret

0000000080001e00 <_ZN14PeriodicThreadC1Em>:

PeriodicThread::PeriodicThread(time_t period) {
    80001e00:	fe010113          	addi	sp,sp,-32
    80001e04:	00113c23          	sd	ra,24(sp)
    80001e08:	00813823          	sd	s0,16(sp)
    80001e0c:	00913423          	sd	s1,8(sp)
    80001e10:	02010413          	addi	s0,sp,32
    80001e14:	00050493          	mv	s1,a0
    80001e18:	00000097          	auipc	ra,0x0
    80001e1c:	f70080e7          	jalr	-144(ra) # 80001d88 <_ZN6ThreadC1Ev>
    80001e20:	00005797          	auipc	a5,0x5
    80001e24:	2d078793          	addi	a5,a5,720 # 800070f0 <_ZTV14PeriodicThread+0x10>
    80001e28:	00f4b023          	sd	a5,0(s1)

}
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret

0000000080001e40 <_ZN7Console4getcEv>:

char Console::getc() {
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00113423          	sd	ra,8(sp)
    80001e48:	00813023          	sd	s0,0(sp)
    80001e4c:	01010413          	addi	s0,sp,16
    return __getc();
    80001e50:	00003097          	auipc	ra,0x3
    80001e54:	5bc080e7          	jalr	1468(ra) # 8000540c <__getc>
}
    80001e58:	00813083          	ld	ra,8(sp)
    80001e5c:	00013403          	ld	s0,0(sp)
    80001e60:	01010113          	addi	sp,sp,16
    80001e64:	00008067          	ret

0000000080001e68 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001e68:	ff010113          	addi	sp,sp,-16
    80001e6c:	00113423          	sd	ra,8(sp)
    80001e70:	00813023          	sd	s0,0(sp)
    80001e74:	01010413          	addi	s0,sp,16
    __putc(c);
    80001e78:	00003097          	auipc	ra,0x3
    80001e7c:	558080e7          	jalr	1368(ra) # 800053d0 <__putc>
}
    80001e80:	00813083          	ld	ra,8(sp)
    80001e84:	00013403          	ld	s0,0(sp)
    80001e88:	01010113          	addi	sp,sp,16
    80001e8c:	00008067          	ret

0000000080001e90 <_ZN14PeriodicThread18periodicActivationEv>:


class PeriodicThread : public Thread {
protected:
    PeriodicThread (time_t period);
    virtual void periodicActivation () {}
    80001e90:	ff010113          	addi	sp,sp,-16
    80001e94:	00813423          	sd	s0,8(sp)
    80001e98:	01010413          	addi	s0,sp,16
    80001e9c:	00813403          	ld	s0,8(sp)
    80001ea0:	01010113          	addi	sp,sp,16
    80001ea4:	00008067          	ret

0000000080001ea8 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread {
    80001ea8:	ff010113          	addi	sp,sp,-16
    80001eac:	00813423          	sd	s0,8(sp)
    80001eb0:	01010413          	addi	s0,sp,16
    80001eb4:	00005797          	auipc	a5,0x5
    80001eb8:	23c78793          	addi	a5,a5,572 # 800070f0 <_ZTV14PeriodicThread+0x10>
    80001ebc:	00f53023          	sd	a5,0(a0)
    80001ec0:	00813403          	ld	s0,8(sp)
    80001ec4:	01010113          	addi	sp,sp,16
    80001ec8:	00008067          	ret

0000000080001ecc <_ZN14PeriodicThreadD0Ev>:
    80001ecc:	ff010113          	addi	sp,sp,-16
    80001ed0:	00113423          	sd	ra,8(sp)
    80001ed4:	00813023          	sd	s0,0(sp)
    80001ed8:	01010413          	addi	s0,sp,16
    80001edc:	00005797          	auipc	a5,0x5
    80001ee0:	21478793          	addi	a5,a5,532 # 800070f0 <_ZTV14PeriodicThread+0x10>
    80001ee4:	00f53023          	sd	a5,0(a0)
    80001ee8:	00000097          	auipc	ra,0x0
    80001eec:	da0080e7          	jalr	-608(ra) # 80001c88 <_ZdlPv>
    80001ef0:	00813083          	ld	ra,8(sp)
    80001ef4:	00013403          	ld	s0,0(sp)
    80001ef8:	01010113          	addi	sp,sp,16
    80001efc:	00008067          	ret

0000000080001f00 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80001f00:	ff010113          	addi	sp,sp,-16
    80001f04:	00813423          	sd	s0,8(sp)
    80001f08:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001f0c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001f10:	10200073          	sret
}
    80001f14:	00813403          	ld	s0,8(sp)
    80001f18:	01010113          	addi	sp,sp,16
    80001f1c:	00008067          	ret

0000000080001f20 <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    80001f20:	fa010113          	addi	sp,sp,-96
    80001f24:	04113c23          	sd	ra,88(sp)
    80001f28:	04813823          	sd	s0,80(sp)
    80001f2c:	04913423          	sd	s1,72(sp)
    80001f30:	05213023          	sd	s2,64(sp)
    80001f34:	03313c23          	sd	s3,56(sp)
    80001f38:	06010413          	addi	s0,sp,96
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80001f3c:	142027f3          	csrr	a5,scause
    80001f40:	faf43023          	sd	a5,-96(s0)
    return scause;
    80001f44:	fa043703          	ld	a4,-96(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80001f48:	ff870693          	addi	a3,a4,-8
    80001f4c:	00100793          	li	a5,1
    80001f50:	02d7f863          	bgeu	a5,a3,80001f80 <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80001f54:	fff00793          	li	a5,-1
    80001f58:	03f79793          	slli	a5,a5,0x3f
    80001f5c:	00178793          	addi	a5,a5,1
    80001f60:	1af70c63          	beq	a4,a5,80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            TCB::dispatch();
            w_sstatus(sstatus);
            w_sepc(sepc);
        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80001f64:	fff00793          	li	a5,-1
    80001f68:	03f79793          	slli	a5,a5,0x3f
    80001f6c:	00978793          	addi	a5,a5,9
    80001f70:	0af71e63          	bne	a4,a5,8000202c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80001f74:	00003097          	auipc	ra,0x3
    80001f78:	4d0080e7          	jalr	1232(ra) # 80005444 <console_handler>
    } else
    {
        // unexpected trap cause
    }
    80001f7c:	0b00006f          	j	8000202c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    80001f80:	141027f3          	csrr	a5,sepc
    80001f84:	faf43c23          	sd	a5,-72(s0)
    return sepc;
    80001f88:	fb843483          	ld	s1,-72(s0)
        uint64 sepc = r_sepc() + 4;
    80001f8c:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001f90:	100027f3          	csrr	a5,sstatus
    80001f94:	faf43823          	sd	a5,-80(s0)
    return sstatus;
    80001f98:	fb043903          	ld	s2,-80(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80001f9c:	00050793          	mv	a5,a0
    80001fa0:	faf43423          	sd	a5,-88(s0)
    return a0;
    80001fa4:	fa843783          	ld	a5,-88(s0)
        if (a0 == 0x0000000000000001UL){
    80001fa8:	00100713          	li	a4,1
    80001fac:	06e78c63          	beq	a5,a4,80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
        else if (a0 == 0x0000000000000002UL){
    80001fb0:	00200713          	li	a4,2
    80001fb4:	06e78863          	beq	a5,a4,80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
        else if (a0 == 0x0000000000000011UL){
    80001fb8:	01100713          	li	a4,17
    80001fbc:	04e78463          	beq	a5,a4,80002004 <_ZN5Riscv20handleSupervisorTrapEv+0xe4>
        else if (a0 == 0x0000000000000012UL){
    80001fc0:	01200713          	li	a4,18
    80001fc4:	08e78663          	beq	a5,a4,80002050 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
        else if (a0 == 0x0000000000000013UL){
    80001fc8:	01300713          	li	a4,19
    80001fcc:	08e78a63          	beq	a5,a4,80002060 <_ZN5Riscv20handleSupervisorTrapEv+0x140>
        else if (a0 == 0x0000000000000021UL) {
    80001fd0:	02100713          	li	a4,33
    80001fd4:	0ae78263          	beq	a5,a4,80002078 <_ZN5Riscv20handleSupervisorTrapEv+0x158>
        else if (a0 == 0x0000000000000022UL) {
    80001fd8:	02200713          	li	a4,34
    80001fdc:	0ce78e63          	beq	a5,a4,800020b8 <_ZN5Riscv20handleSupervisorTrapEv+0x198>
        else if (a0 == 0x0000000000000023UL) {
    80001fe0:	02300713          	li	a4,35
    80001fe4:	12e78063          	beq	a5,a4,80002104 <_ZN5Riscv20handleSupervisorTrapEv+0x1e4>
        else if (a0 == 0x0000000000000024UL) {
    80001fe8:	02400713          	li	a4,36
    80001fec:	02e79c63          	bne	a5,a4,80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80001ff0:	00058513          	mv	a0,a1
            a=sem->signal();
    80001ff4:	fffff097          	auipc	ra,0xfffff
    80001ff8:	558080e7          	jalr	1368(ra) # 8000154c <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80001ffc:	00050513          	mv	a0,a0
    80002000:	0240006f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    80002004:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a3], a3" : [a3] "=r"(a3));
    80002008:	00068593          	mv	a1,a3
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    8000200c:	00058793          	mv	a5,a1
            tcb = TCB::createThread(a2, a3);
    80002010:	00000097          	auipc	ra,0x0
    80002014:	174080e7          	jalr	372(ra) # 80002184 <_ZN3TCB12createThreadEPFvPvES0_>
            uint64 a= (tcb!= nullptr)?0: -1;
    80002018:	02050863          	beqz	a0,80002048 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
    8000201c:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002020:	00078513          	mv	a0,a5
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002024:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002028:	14149073          	csrw	sepc,s1
    8000202c:	05813083          	ld	ra,88(sp)
    80002030:	05013403          	ld	s0,80(sp)
    80002034:	04813483          	ld	s1,72(sp)
    80002038:	04013903          	ld	s2,64(sp)
    8000203c:	03813983          	ld	s3,56(sp)
    80002040:	06010113          	addi	sp,sp,96
    80002044:	00008067          	ret
            uint64 a= (tcb!= nullptr)?0: -1;
    80002048:	fff00793          	li	a5,-1
    8000204c:	fd5ff06f          	j	80002020 <_ZN5Riscv20handleSupervisorTrapEv+0x100>
            a=TCB::exitThread();
    80002050:	00000097          	auipc	ra,0x0
    80002054:	304080e7          	jalr	772(ra) # 80002354 <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002058:	00050513          	mv	a0,a0
    8000205c:	fc9ff06f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::timeSliceCounter = 0;
    80002060:	00005797          	auipc	a5,0x5
    80002064:	1307b783          	ld	a5,304(a5) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002068:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    8000206c:	00000097          	auipc	ra,0x0
    80002070:	1ec080e7          	jalr	492(ra) # 80002258 <_ZN3TCB8dispatchEv>
    80002074:	fb1ff06f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002078:	00058793          	mv	a5,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    8000207c:	00060993          	mv	s3,a2
            sem = new Ksemaphore(a2);
    80002080:	01800513          	li	a0,24
    80002084:	00000097          	auipc	ra,0x0
    80002088:	bb4080e7          	jalr	-1100(ra) # 80001c38 <_Znwm>

typedef Ksemaphore* sem_t;

class Ksemaphore{
public:
    Ksemaphore(unsigned short init =1):val(init){}
    8000208c:	03099993          	slli	s3,s3,0x30
    80002090:	0309d993          	srli	s3,s3,0x30
    80002094:	01352023          	sw	s3,0(a0)
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80002098:	00053423          	sd	zero,8(a0)
    8000209c:	00053823          	sd	zero,16(a0)
            uint64 a= (sem!= nullptr)?0: -1;
    800020a0:	00050863          	beqz	a0,800020b0 <_ZN5Riscv20handleSupervisorTrapEv+0x190>
    800020a4:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    800020a8:	00078513          	mv	a0,a5
    800020ac:	f79ff06f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            uint64 a= (sem!= nullptr)?0: -1;
    800020b0:	fff00793          	li	a5,-1
    800020b4:	ff5ff06f          	j	800020a8 <_ZN5Riscv20handleSupervisorTrapEv+0x188>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800020b8:	00058993          	mv	s3,a1
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    800020bc:	0089b783          	ld	a5,8(s3)
    800020c0:	02078e63          	beqz	a5,800020fc <_ZN5Riscv20handleSupervisorTrapEv+0x1dc>
        return head->data;
    800020c4:	0007b783          	ld	a5,0(a5)
            if(sem->blocked.peekFirst()== nullptr){
    800020c8:	00079c63          	bnez	a5,800020e0 <_ZN5Riscv20handleSupervisorTrapEv+0x1c0>
                a=0;
    800020cc:	00000793          	li	a5,0
    800020d0:	0240006f          	j	800020f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
                    sem->signal();
    800020d4:	00098513          	mv	a0,s3
    800020d8:	fffff097          	auipc	ra,0xfffff
    800020dc:	474080e7          	jalr	1140(ra) # 8000154c <_ZN10Ksemaphore6signalEv>
        if (!head) { return 0; }
    800020e0:	0089b783          	ld	a5,8(s3)
    800020e4:	fe0788e3          	beqz	a5,800020d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
        return head->data;
    800020e8:	0007b783          	ld	a5,0(a5)
                while(sem->blocked.peekFirst()== nullptr){
    800020ec:	fe0784e3          	beqz	a5,800020d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1b4>
                a=-1;
    800020f0:	fff00793          	li	a5,-1
            __asm__ volatile("mv a0, %0"::"r"(a));
    800020f4:	00078513          	mv	a0,a5
    800020f8:	f2dff06f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                a=0;
    800020fc:	00000793          	li	a5,0
    80002100:	ff5ff06f          	j	800020f4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d4>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002104:	00058513          	mv	a0,a1
            a=sem->wait();
    80002108:	fffff097          	auipc	ra,0xfffff
    8000210c:	3fc080e7          	jalr	1020(ra) # 80001504 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002110:	00050513          	mv	a0,a0
    80002114:	f11ff06f          	j	80002024 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
        TCB::timeSliceCounter++;
    80002118:	00005717          	auipc	a4,0x5
    8000211c:	07873703          	ld	a4,120(a4) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002120:	00073783          	ld	a5,0(a4)
    80002124:	00178793          	addi	a5,a5,1
    80002128:	00f73023          	sd	a5,0(a4)
        if (TCB::timeSliceCounter >= TCB::running->getTimeSlice())
    8000212c:	00005717          	auipc	a4,0x5
    80002130:	07c73703          	ld	a4,124(a4) # 800071a8 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002134:	00073703          	ld	a4,0(a4)
    bool isFinished() const { return finished; }


    void setFinished(bool value) { finished = value; }

    uint64 getTimeSlice() const { return timeSlice; }
    80002138:	02873703          	ld	a4,40(a4)
    8000213c:	00e7f863          	bgeu	a5,a4,8000214c <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    80002140:	00200793          	li	a5,2
    80002144:	1447b073          	csrc	sip,a5
}
    80002148:	ee5ff06f          	j	8000202c <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000214c:	141027f3          	csrr	a5,sepc
    80002150:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002154:	fc843483          	ld	s1,-56(s0)
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80002158:	100027f3          	csrr	a5,sstatus
    8000215c:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002160:	fc043903          	ld	s2,-64(s0)
            TCB::timeSliceCounter = 0;
    80002164:	00005797          	auipc	a5,0x5
    80002168:	02c7b783          	ld	a5,44(a5) # 80007190 <_GLOBAL_OFFSET_TABLE_+0x18>
    8000216c:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002170:	00000097          	auipc	ra,0x0
    80002174:	0e8080e7          	jalr	232(ra) # 80002258 <_ZN3TCB8dispatchEv>
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002178:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    8000217c:	14149073          	csrw	sepc,s1
}
    80002180:	fc1ff06f          	j	80002140 <_ZN5Riscv20handleSupervisorTrapEv+0x220>

0000000080002184 <_ZN3TCB12createThreadEPFvPvES0_>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body, void* arg)
{
    80002184:	fd010113          	addi	sp,sp,-48
    80002188:	02113423          	sd	ra,40(sp)
    8000218c:	02813023          	sd	s0,32(sp)
    80002190:	00913c23          	sd	s1,24(sp)
    80002194:	01213823          	sd	s2,16(sp)
    80002198:	01313423          	sd	s3,8(sp)
    8000219c:	03010413          	addi	s0,sp,48
    800021a0:	00050913          	mv	s2,a0
    800021a4:	00058993          	mv	s3,a1
//    tcb->context={(uint64) &threadWrapper,
//                     tcb->stack != nullptr ? (uint64) &tcb->stack[DEFAULT_STACK_SIZE] : 0
//                    };
//    tcb->timeSlice=DEFAULT_TIME_SLICE;
//    tcb->finished=false;
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    800021a8:	03800513          	li	a0,56
    800021ac:	00000097          	auipc	ra,0x0
    800021b0:	a8c080e7          	jalr	-1396(ra) # 80001c38 <_Znwm>
    800021b4:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800021b8:	01253023          	sd	s2,0(a0)
    800021bc:	01353423          	sd	s3,8(a0)
            stack(body != nullptr ? new uint64[DEFAULT_STACK_SIZE] : nullptr),
    800021c0:	00090a63          	beqz	s2,800021d4 <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    800021c4:	00008537          	lui	a0,0x8
    800021c8:	00000097          	auipc	ra,0x0
    800021cc:	a98080e7          	jalr	-1384(ra) # 80001c60 <_Znam>
    800021d0:	0080006f          	j	800021d8 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    800021d4:	00000513          	li	a0,0
            finished(false)
    800021d8:	00a4b823          	sd	a0,16(s1)
    800021dc:	00000797          	auipc	a5,0x0
    800021e0:	11c78793          	addi	a5,a5,284 # 800022f8 <_ZN3TCB13threadWrapperEv>
    800021e4:	00f4bc23          	sd	a5,24(s1)
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    800021e8:	04050663          	beqz	a0,80002234 <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    800021ec:	000087b7          	lui	a5,0x8
    800021f0:	00f507b3          	add	a5,a0,a5
            finished(false)
    800021f4:	02f4b023          	sd	a5,32(s1)
    800021f8:	00200793          	li	a5,2
    800021fc:	02f4b423          	sd	a5,40(s1)
    80002200:	02048823          	sb	zero,48(s1)
    if (body != nullptr) { Scheduler::put(t); }
    80002204:	00090863          	beqz	s2,80002214 <_ZN3TCB12createThreadEPFvPvES0_+0x90>
    80002208:	00048513          	mv	a0,s1
    8000220c:	00000097          	auipc	ra,0x0
    80002210:	268080e7          	jalr	616(ra) # 80002474 <_ZN9Scheduler3putEP3TCB>
    return t;
}
    80002214:	00048513          	mv	a0,s1
    80002218:	02813083          	ld	ra,40(sp)
    8000221c:	02013403          	ld	s0,32(sp)
    80002220:	01813483          	ld	s1,24(sp)
    80002224:	01013903          	ld	s2,16(sp)
    80002228:	00813983          	ld	s3,8(sp)
    8000222c:	03010113          	addi	sp,sp,48
    80002230:	00008067          	ret
                     stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0
    80002234:	00000793          	li	a5,0
    80002238:	fbdff06f          	j	800021f4 <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    8000223c:	00050913          	mv	s2,a0
    TCB * t = new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002240:	00048513          	mv	a0,s1
    80002244:	00000097          	auipc	ra,0x0
    80002248:	a44080e7          	jalr	-1468(ra) # 80001c88 <_ZdlPv>
    8000224c:	00090513          	mv	a0,s2
    80002250:	00006097          	auipc	ra,0x6
    80002254:	0d8080e7          	jalr	216(ra) # 80008328 <_Unwind_Resume>

0000000080002258 <_ZN3TCB8dispatchEv>:
    Riscv::popRegisters();

}

void TCB::dispatch()
{
    80002258:	fe010113          	addi	sp,sp,-32
    8000225c:	00113c23          	sd	ra,24(sp)
    80002260:	00813823          	sd	s0,16(sp)
    80002264:	00913423          	sd	s1,8(sp)
    80002268:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    8000226c:	00005497          	auipc	s1,0x5
    80002270:	fac4b483          	ld	s1,-84(s1) # 80007218 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    80002274:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    80002278:	02078c63          	beqz	a5,800022b0 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    8000227c:	00000097          	auipc	ra,0x0
    80002280:	190080e7          	jalr	400(ra) # 8000240c <_ZN9Scheduler3getEv>
    80002284:	00005797          	auipc	a5,0x5
    80002288:	f8a7ba23          	sd	a0,-108(a5) # 80007218 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    8000228c:	01850593          	addi	a1,a0,24 # 8018 <_entry-0x7fff7fe8>
    80002290:	01848513          	addi	a0,s1,24
    80002294:	fffff097          	auipc	ra,0xfffff
    80002298:	f7c080e7          	jalr	-132(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    8000229c:	01813083          	ld	ra,24(sp)
    800022a0:	01013403          	ld	s0,16(sp)
    800022a4:	00813483          	ld	s1,8(sp)
    800022a8:	02010113          	addi	sp,sp,32
    800022ac:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800022b0:	00048513          	mv	a0,s1
    800022b4:	00000097          	auipc	ra,0x0
    800022b8:	1c0080e7          	jalr	448(ra) # 80002474 <_ZN9Scheduler3putEP3TCB>
    800022bc:	fc1ff06f          	j	8000227c <_ZN3TCB8dispatchEv+0x24>

00000000800022c0 <_ZN3TCB5yieldEv>:
{
    800022c0:	ff010113          	addi	sp,sp,-16
    800022c4:	00113423          	sd	ra,8(sp)
    800022c8:	00813023          	sd	s0,0(sp)
    800022cc:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800022d0:	fffff097          	auipc	ra,0xfffff
    800022d4:	d30080e7          	jalr	-720(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    800022d8:	00000097          	auipc	ra,0x0
    800022dc:	f80080e7          	jalr	-128(ra) # 80002258 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    800022e0:	fffff097          	auipc	ra,0xfffff
    800022e4:	d9c080e7          	jalr	-612(ra) # 8000107c <_ZN5Riscv12popRegistersEv>
}
    800022e8:	00813083          	ld	ra,8(sp)
    800022ec:	00013403          	ld	s0,0(sp)
    800022f0:	01010113          	addi	sp,sp,16
    800022f4:	00008067          	ret

00000000800022f8 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper()
{
    800022f8:	fe010113          	addi	sp,sp,-32
    800022fc:	00113c23          	sd	ra,24(sp)
    80002300:	00813823          	sd	s0,16(sp)
    80002304:	00913423          	sd	s1,8(sp)
    80002308:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000230c:	00000097          	auipc	ra,0x0
    80002310:	bf4080e7          	jalr	-1036(ra) # 80001f00 <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    80002314:	00005497          	auipc	s1,0x5
    80002318:	f0448493          	addi	s1,s1,-252 # 80007218 <_ZN3TCB7runningE>
    8000231c:	0004b783          	ld	a5,0(s1)
    80002320:	0007b703          	ld	a4,0(a5)
    80002324:	0087b503          	ld	a0,8(a5)
    80002328:	000700e7          	jalr	a4
    running->setFinished(true);
    8000232c:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    80002330:	00100713          	li	a4,1
    80002334:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002338:	00000097          	auipc	ra,0x0
    8000233c:	f88080e7          	jalr	-120(ra) # 800022c0 <_ZN3TCB5yieldEv>
}
    80002340:	01813083          	ld	ra,24(sp)
    80002344:	01013403          	ld	s0,16(sp)
    80002348:	00813483          	ld	s1,8(sp)
    8000234c:	02010113          	addi	sp,sp,32
    80002350:	00008067          	ret

0000000080002354 <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    80002354:	fe010113          	addi	sp,sp,-32
    80002358:	00113c23          	sd	ra,24(sp)
    8000235c:	00813823          	sd	s0,16(sp)
    80002360:	00913423          	sd	s1,8(sp)
    80002364:	01213023          	sd	s2,0(sp)
    80002368:	02010413          	addi	s0,sp,32
    running->setFinished(true);
    8000236c:	00005497          	auipc	s1,0x5
    80002370:	eac48493          	addi	s1,s1,-340 # 80007218 <_ZN3TCB7runningE>
    80002374:	0004b903          	ld	s2,0(s1)
    80002378:	00100793          	li	a5,1
    8000237c:	02f90823          	sb	a5,48(s2)
    TCB *old = running;
    running = Scheduler::get();
    80002380:	00000097          	auipc	ra,0x0
    80002384:	08c080e7          	jalr	140(ra) # 8000240c <_ZN9Scheduler3getEv>
    80002388:	00a4b023          	sd	a0,0(s1)
    timeSliceCounter=0;
    8000238c:	0004b423          	sd	zero,8(s1)
    TCB::contextSwitch(&old->context, &running->context);
    80002390:	01850593          	addi	a1,a0,24
    80002394:	01890513          	addi	a0,s2,24
    80002398:	fffff097          	auipc	ra,0xfffff
    8000239c:	e78080e7          	jalr	-392(ra) # 80001210 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
    if (running== nullptr)return -1;
    800023a0:	0004b783          	ld	a5,0(s1)
    800023a4:	02078063          	beqz	a5,800023c4 <_ZN3TCB10exitThreadEv+0x70>
    return 0;
    800023a8:	00000513          	li	a0,0
}
    800023ac:	01813083          	ld	ra,24(sp)
    800023b0:	01013403          	ld	s0,16(sp)
    800023b4:	00813483          	ld	s1,8(sp)
    800023b8:	00013903          	ld	s2,0(sp)
    800023bc:	02010113          	addi	sp,sp,32
    800023c0:	00008067          	ret
    if (running== nullptr)return -1;
    800023c4:	fff00513          	li	a0,-1
    800023c8:	fe5ff06f          	j	800023ac <_ZN3TCB10exitThreadEv+0x58>

00000000800023cc <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(tcb);
}

Scheduler *Scheduler::getInstance() {
    return this->instance;
}
    800023cc:	ff010113          	addi	sp,sp,-16
    800023d0:	00813423          	sd	s0,8(sp)
    800023d4:	01010413          	addi	s0,sp,16
    800023d8:	00100793          	li	a5,1
    800023dc:	00f50863          	beq	a0,a5,800023ec <_Z41__static_initialization_and_destruction_0ii+0x20>
    800023e0:	00813403          	ld	s0,8(sp)
    800023e4:	01010113          	addi	sp,sp,16
    800023e8:	00008067          	ret
    800023ec:	000107b7          	lui	a5,0x10
    800023f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800023f4:	fef596e3          	bne	a1,a5,800023e0 <_Z41__static_initialization_and_destruction_0ii+0x14>
    List() : head(0), tail(0) {}
    800023f8:	00005797          	auipc	a5,0x5
    800023fc:	e3078793          	addi	a5,a5,-464 # 80007228 <_ZN9Scheduler16readyThreadQueueE>
    80002400:	0007b023          	sd	zero,0(a5)
    80002404:	0007b423          	sd	zero,8(a5)
    80002408:	fd9ff06f          	j	800023e0 <_Z41__static_initialization_and_destruction_0ii+0x14>

000000008000240c <_ZN9Scheduler3getEv>:
{
    8000240c:	fe010113          	addi	sp,sp,-32
    80002410:	00113c23          	sd	ra,24(sp)
    80002414:	00813823          	sd	s0,16(sp)
    80002418:	00913423          	sd	s1,8(sp)
    8000241c:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002420:	00005517          	auipc	a0,0x5
    80002424:	e0853503          	ld	a0,-504(a0) # 80007228 <_ZN9Scheduler16readyThreadQueueE>
    80002428:	04050263          	beqz	a0,8000246c <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    8000242c:	00853783          	ld	a5,8(a0)
    80002430:	00005717          	auipc	a4,0x5
    80002434:	def73c23          	sd	a5,-520(a4) # 80007228 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80002438:	02078463          	beqz	a5,80002460 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    8000243c:	00053483          	ld	s1,0(a0)
        delete elem;
    80002440:	00000097          	auipc	ra,0x0
    80002444:	848080e7          	jalr	-1976(ra) # 80001c88 <_ZdlPv>
}
    80002448:	00048513          	mv	a0,s1
    8000244c:	01813083          	ld	ra,24(sp)
    80002450:	01013403          	ld	s0,16(sp)
    80002454:	00813483          	ld	s1,8(sp)
    80002458:	02010113          	addi	sp,sp,32
    8000245c:	00008067          	ret
        if (!head) { tail = 0; }
    80002460:	00005797          	auipc	a5,0x5
    80002464:	dc07b823          	sd	zero,-560(a5) # 80007230 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002468:	fd5ff06f          	j	8000243c <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    8000246c:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    80002470:	fd9ff06f          	j	80002448 <_ZN9Scheduler3getEv+0x3c>

0000000080002474 <_ZN9Scheduler3putEP3TCB>:
{
    80002474:	fe010113          	addi	sp,sp,-32
    80002478:	00113c23          	sd	ra,24(sp)
    8000247c:	00813823          	sd	s0,16(sp)
    80002480:	00913423          	sd	s1,8(sp)
    80002484:	02010413          	addi	s0,sp,32
    80002488:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    8000248c:	01000513          	li	a0,16
    80002490:	fffff097          	auipc	ra,0xfffff
    80002494:	7a8080e7          	jalr	1960(ra) # 80001c38 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002498:	00953023          	sd	s1,0(a0)
    8000249c:	00053423          	sd	zero,8(a0)
        if (tail)
    800024a0:	00005797          	auipc	a5,0x5
    800024a4:	d907b783          	ld	a5,-624(a5) # 80007230 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800024a8:	02078263          	beqz	a5,800024cc <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800024ac:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800024b0:	00005797          	auipc	a5,0x5
    800024b4:	d8a7b023          	sd	a0,-640(a5) # 80007230 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800024b8:	01813083          	ld	ra,24(sp)
    800024bc:	01013403          	ld	s0,16(sp)
    800024c0:	00813483          	ld	s1,8(sp)
    800024c4:	02010113          	addi	sp,sp,32
    800024c8:	00008067          	ret
            head = tail = elem;
    800024cc:	00005797          	auipc	a5,0x5
    800024d0:	d5c78793          	addi	a5,a5,-676 # 80007228 <_ZN9Scheduler16readyThreadQueueE>
    800024d4:	00a7b423          	sd	a0,8(a5)
    800024d8:	00a7b023          	sd	a0,0(a5)
    800024dc:	fddff06f          	j	800024b8 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800024e0 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    800024e0:	ff010113          	addi	sp,sp,-16
    800024e4:	00813423          	sd	s0,8(sp)
    800024e8:	01010413          	addi	s0,sp,16
}
    800024ec:	00053503          	ld	a0,0(a0)
    800024f0:	00813403          	ld	s0,8(sp)
    800024f4:	01010113          	addi	sp,sp,16
    800024f8:	00008067          	ret

00000000800024fc <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800024fc:	ff010113          	addi	sp,sp,-16
    80002500:	00113423          	sd	ra,8(sp)
    80002504:	00813023          	sd	s0,0(sp)
    80002508:	01010413          	addi	s0,sp,16
    8000250c:	000105b7          	lui	a1,0x10
    80002510:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002514:	00100513          	li	a0,1
    80002518:	00000097          	auipc	ra,0x0
    8000251c:	eb4080e7          	jalr	-332(ra) # 800023cc <_Z41__static_initialization_and_destruction_0ii>
    80002520:	00813083          	ld	ra,8(sp)
    80002524:	00013403          	ld	s0,0(sp)
    80002528:	01010113          	addi	sp,sp,16
    8000252c:	00008067          	ret

0000000080002530 <_Z41__static_initialization_and_destruction_0ii>:
    if (block!= nullptr){
        block->free= true;
        return 0;
    }
    return 1;
}
    80002530:	ff010113          	addi	sp,sp,-16
    80002534:	00813423          	sd	s0,8(sp)
    80002538:	01010413          	addi	s0,sp,16
    8000253c:	00100793          	li	a5,1
    80002540:	00f50863          	beq	a0,a5,80002550 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002544:	00813403          	ld	s0,8(sp)
    80002548:	01010113          	addi	sp,sp,16
    8000254c:	00008067          	ret
    80002550:	000107b7          	lui	a5,0x10
    80002554:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80002558:	fef596e3          	bne	a1,a5,80002544 <_Z41__static_initialization_and_destruction_0ii+0x14>
char* MemoryAllocator::heapStart = (char *)HEAP_START_ADDR;
    8000255c:	00005797          	auipc	a5,0x5
    80002560:	c247b783          	ld	a5,-988(a5) # 80007180 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002564:	0007b783          	ld	a5,0(a5)
    80002568:	00005717          	auipc	a4,0x5
    8000256c:	ccf73823          	sd	a5,-816(a4) # 80007238 <_ZN15MemoryAllocator9heapStartE>
}
    80002570:	fd5ff06f          	j	80002544 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002574 <_ZN15MemoryAllocator11getInstanceEv>:
MemoryAllocator *MemoryAllocator::getInstance() {
    80002574:	ff010113          	addi	sp,sp,-16
    80002578:	00813423          	sd	s0,8(sp)
    8000257c:	01010413          	addi	s0,sp,16
    if (MemoryAllocator::instance == nullptr){
    80002580:	00005797          	auipc	a5,0x5
    80002584:	cc07b783          	ld	a5,-832(a5) # 80007240 <_ZN15MemoryAllocator8instanceE>
    80002588:	00078c63          	beqz	a5,800025a0 <_ZN15MemoryAllocator11getInstanceEv+0x2c>
}
    8000258c:	00005517          	auipc	a0,0x5
    80002590:	cb453503          	ld	a0,-844(a0) # 80007240 <_ZN15MemoryAllocator8instanceE>
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret
        instance = (MemoryAllocator*)HEAP_START_ADDR;
    800025a0:	00005797          	auipc	a5,0x5
    800025a4:	c9878793          	addi	a5,a5,-872 # 80007238 <_ZN15MemoryAllocator9heapStartE>
    800025a8:	00005717          	auipc	a4,0x5
    800025ac:	bd873703          	ld	a4,-1064(a4) # 80007180 <_GLOBAL_OFFSET_TABLE_+0x8>
    800025b0:	00073703          	ld	a4,0(a4)
    800025b4:	00e7b423          	sd	a4,8(a5)
        heapStart= heapStart + sizeof(MemoryAllocator);
    800025b8:	0007b703          	ld	a4,0(a5)
    800025bc:	00170713          	addi	a4,a4,1
    800025c0:	00e7b023          	sd	a4,0(a5)
    800025c4:	fc9ff06f          	j	8000258c <_ZN15MemoryAllocator11getInstanceEv+0x18>

00000000800025c8 <_ZN15MemoryAllocator11allocInHeapEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::allocInHeap(size_t size) {
    800025c8:	ff010113          	addi	sp,sp,-16
    800025cc:	00813423          	sd	s0,8(sp)
    800025d0:	01010413          	addi	s0,sp,16
    inline size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    }

    inline size_t allocSize(size_t size) {
        return size + sizeof(BlockHeader);
    800025d4:	01858713          	addi	a4,a1,24
    if((heapStart + sizeB) > ((char*)HEAP_END_ADDR - 1)){
    800025d8:	00005517          	auipc	a0,0x5
    800025dc:	c6053503          	ld	a0,-928(a0) # 80007238 <_ZN15MemoryAllocator9heapStartE>
    800025e0:	00e50733          	add	a4,a0,a4
    800025e4:	00005797          	auipc	a5,0x5
    800025e8:	bcc7b783          	ld	a5,-1076(a5) # 800071b0 <_GLOBAL_OFFSET_TABLE_+0x38>
    800025ec:	0007b783          	ld	a5,0(a5)
    800025f0:	fff78793          	addi	a5,a5,-1
    800025f4:	02e7e263          	bltu	a5,a4,80002618 <_ZN15MemoryAllocator11allocInHeapEm+0x50>
    blockStart->free=false;
    800025f8:	00050823          	sb	zero,16(a0)
    blockStart->size=size;
    800025fc:	00b53423          	sd	a1,8(a0)
    heapStart+=size;
    80002600:	00b505b3          	add	a1,a0,a1
    80002604:	00005797          	auipc	a5,0x5
    80002608:	c2b7ba23          	sd	a1,-972(a5) # 80007238 <_ZN15MemoryAllocator9heapStartE>
}
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret
        return nullptr;
    80002618:	00000513          	li	a0,0
    8000261c:	ff1ff06f          	j	8000260c <_ZN15MemoryAllocator11allocInHeapEm+0x44>

0000000080002620 <_ZN15MemoryAllocator8firstfitEm>:
MemoryAllocator::BlockHeader* MemoryAllocator::firstfit(size_t size){
    80002620:	ff010113          	addi	sp,sp,-16
    80002624:	00813423          	sd	s0,8(sp)
    80002628:	01010413          	addi	s0,sp,16
    BlockHeader* block =blockHead;
    8000262c:	00005517          	auipc	a0,0x5
    80002630:	c1c53503          	ld	a0,-996(a0) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
    80002634:	0080006f          	j	8000263c <_ZN15MemoryAllocator8firstfitEm+0x1c>
            block=block->next;
    80002638:	00053503          	ld	a0,0(a0)
    while(block!= nullptr){
    8000263c:	00050c63          	beqz	a0,80002654 <_ZN15MemoryAllocator8firstfitEm+0x34>
        if(!block->free || block->size < size){
    80002640:	01054783          	lbu	a5,16(a0)
    80002644:	fe078ae3          	beqz	a5,80002638 <_ZN15MemoryAllocator8firstfitEm+0x18>
    80002648:	00853783          	ld	a5,8(a0)
    8000264c:	feb7e6e3          	bltu	a5,a1,80002638 <_ZN15MemoryAllocator8firstfitEm+0x18>
        block->free= false;
    80002650:	00050823          	sb	zero,16(a0)
}
    80002654:	00813403          	ld	s0,8(sp)
    80002658:	01010113          	addi	sp,sp,16
    8000265c:	00008067          	ret

0000000080002660 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>:
MemoryAllocator::BlockHeader* MemoryAllocator::findBlock(BlockHeader* p){
    80002660:	ff010113          	addi	sp,sp,-16
    80002664:	00813423          	sd	s0,8(sp)
    80002668:	01010413          	addi	s0,sp,16
    for(block=blockHead; block != nullptr; block=block->next){
    8000266c:	00005517          	auipc	a0,0x5
    80002670:	bdc53503          	ld	a0,-1060(a0) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
    80002674:	00050863          	beqz	a0,80002684 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
        if(block==p){
    80002678:	00b50663          	beq	a0,a1,80002684 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x24>
    for(block=blockHead; block != nullptr; block=block->next){
    8000267c:	00053503          	ld	a0,0(a0)
    80002680:	ff5ff06f          	j	80002674 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE+0x14>
}
    80002684:	00813403          	ld	s0,8(sp)
    80002688:	01010113          	addi	sp,sp,16
    8000268c:	00008067          	ret

0000000080002690 <_ZN15MemoryAllocator6mallocEm>:
void* MemoryAllocator::malloc(size_t size){
    80002690:	fe010113          	addi	sp,sp,-32
    80002694:	00113c23          	sd	ra,24(sp)
    80002698:	00813823          	sd	s0,16(sp)
    8000269c:	00913423          	sd	s1,8(sp)
    800026a0:	01213023          	sd	s2,0(sp)
    800026a4:	02010413          	addi	s0,sp,32
    800026a8:	00050913          	mv	s2,a0
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    800026ac:	03f58493          	addi	s1,a1,63
    800026b0:	fc04f493          	andi	s1,s1,-64
    if (BlockHeader* block = firstfit(size)){
    800026b4:	00048593          	mv	a1,s1
    800026b8:	00000097          	auipc	ra,0x0
    800026bc:	f68080e7          	jalr	-152(ra) # 80002620 <_ZN15MemoryAllocator8firstfitEm>
    800026c0:	02050a63          	beqz	a0,800026f4 <_ZN15MemoryAllocator6mallocEm+0x64>
        if (blockHead == nullptr)blockHead=block;
    800026c4:	00005797          	auipc	a5,0x5
    800026c8:	b847b783          	ld	a5,-1148(a5) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
    800026cc:	00078e63          	beqz	a5,800026e8 <_ZN15MemoryAllocator6mallocEm+0x58>
}
    800026d0:	01813083          	ld	ra,24(sp)
    800026d4:	01013403          	ld	s0,16(sp)
    800026d8:	00813483          	ld	s1,8(sp)
    800026dc:	00013903          	ld	s2,0(sp)
    800026e0:	02010113          	addi	sp,sp,32
    800026e4:	00008067          	ret
        if (blockHead == nullptr)blockHead=block;
    800026e8:	00005797          	auipc	a5,0x5
    800026ec:	b6a7b023          	sd	a0,-1184(a5) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
        return block;
    800026f0:	fe1ff06f          	j	800026d0 <_ZN15MemoryAllocator6mallocEm+0x40>
    BlockHeader* block = allocInHeap(size);
    800026f4:	00048593          	mv	a1,s1
    800026f8:	00090513          	mv	a0,s2
    800026fc:	00000097          	auipc	ra,0x0
    80002700:	ecc080e7          	jalr	-308(ra) # 800025c8 <_ZN15MemoryAllocator11allocInHeapEm>
    if(blockHead == nullptr){
    80002704:	00005797          	auipc	a5,0x5
    80002708:	b447b783          	ld	a5,-1212(a5) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
    8000270c:	02078063          	beqz	a5,8000272c <_ZN15MemoryAllocator6mallocEm+0x9c>
    if(top != nullptr){
    80002710:	00005797          	auipc	a5,0x5
    80002714:	b407b783          	ld	a5,-1216(a5) # 80007250 <_ZN15MemoryAllocator3topE>
    80002718:	00078463          	beqz	a5,80002720 <_ZN15MemoryAllocator6mallocEm+0x90>
        top->next=block;
    8000271c:	00a7b023          	sd	a0,0(a5)
    top=block;
    80002720:	00005797          	auipc	a5,0x5
    80002724:	b2a7b823          	sd	a0,-1232(a5) # 80007250 <_ZN15MemoryAllocator3topE>
    return block;
    80002728:	fa9ff06f          	j	800026d0 <_ZN15MemoryAllocator6mallocEm+0x40>
        blockHead = block;
    8000272c:	00005797          	auipc	a5,0x5
    80002730:	b0a7be23          	sd	a0,-1252(a5) # 80007248 <_ZN15MemoryAllocator9blockHeadE>
    80002734:	fddff06f          	j	80002710 <_ZN15MemoryAllocator6mallocEm+0x80>

0000000080002738 <_ZN15MemoryAllocator4freeEPv>:
int MemoryAllocator::free(void* p){
    80002738:	ff010113          	addi	sp,sp,-16
    8000273c:	00113423          	sd	ra,8(sp)
    80002740:	00813023          	sd	s0,0(sp)
    80002744:	01010413          	addi	s0,sp,16
    BlockHeader* block = findBlock((BlockHeader*)p);
    80002748:	00000097          	auipc	ra,0x0
    8000274c:	f18080e7          	jalr	-232(ra) # 80002660 <_ZN15MemoryAllocator9findBlockEPNS_11BlockHeaderE>
    if (block!= nullptr){
    80002750:	02050063          	beqz	a0,80002770 <_ZN15MemoryAllocator4freeEPv+0x38>
        block->free= true;
    80002754:	00100793          	li	a5,1
    80002758:	00f50823          	sb	a5,16(a0)
        return 0;
    8000275c:	00000513          	li	a0,0
}
    80002760:	00813083          	ld	ra,8(sp)
    80002764:	00013403          	ld	s0,0(sp)
    80002768:	01010113          	addi	sp,sp,16
    8000276c:	00008067          	ret
    return 1;
    80002770:	00100513          	li	a0,1
    80002774:	fedff06f          	j	80002760 <_ZN15MemoryAllocator4freeEPv+0x28>

0000000080002778 <_GLOBAL__sub_I__ZN15MemoryAllocator9heapStartE>:
}
    80002778:	ff010113          	addi	sp,sp,-16
    8000277c:	00113423          	sd	ra,8(sp)
    80002780:	00813023          	sd	s0,0(sp)
    80002784:	01010413          	addi	s0,sp,16
    80002788:	000105b7          	lui	a1,0x10
    8000278c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80002790:	00100513          	li	a0,1
    80002794:	00000097          	auipc	ra,0x0
    80002798:	d9c080e7          	jalr	-612(ra) # 80002530 <_Z41__static_initialization_and_destruction_0ii>
    8000279c:	00813083          	ld	ra,8(sp)
    800027a0:	00013403          	ld	s0,0(sp)
    800027a4:	01010113          	addi	sp,sp,16
    800027a8:	00008067          	ret

00000000800027ac <_Z9mainStariv>:
//#include "../lib/console.h"
//#include "../h/syscall_cpp.hpp"
#include "../h/MemoryAllocator.hpp"


int mainStari(){
    800027ac:	ff010113          	addi	sp,sp,-16
    800027b0:	00813423          	sd	s0,8(sp)
    800027b4:	01010413          	addi	s0,sp,16
//        __putc(character + 30);
//    }
//    MemoryAllocator* mem = MemoryAllocator::getInstance();

    return 0;
    800027b8:	00000513          	li	a0,0
    800027bc:	00813403          	ld	s0,8(sp)
    800027c0:	01010113          	addi	sp,sp,16
    800027c4:	00008067          	ret

00000000800027c8 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    800027c8:	fe010113          	addi	sp,sp,-32
    800027cc:	00113c23          	sd	ra,24(sp)
    800027d0:	00813823          	sd	s0,16(sp)
    800027d4:	00913423          	sd	s1,8(sp)
    800027d8:	02010413          	addi	s0,sp,32
    800027dc:	00050493          	mv	s1,a0
    LOCK();
    800027e0:	00100613          	li	a2,1
    800027e4:	00000593          	li	a1,0
    800027e8:	00005517          	auipc	a0,0x5
    800027ec:	a7050513          	addi	a0,a0,-1424 # 80007258 <lockPrint>
    800027f0:	fffff097          	auipc	ra,0xfffff
    800027f4:	a34080e7          	jalr	-1484(ra) # 80001224 <copy_and_swap>
    800027f8:	fe0514e3          	bnez	a0,800027e0 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    800027fc:	0004c503          	lbu	a0,0(s1)
    80002800:	00050a63          	beqz	a0,80002814 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002804:	fffff097          	auipc	ra,0xfffff
    80002808:	bec080e7          	jalr	-1044(ra) # 800013f0 <_Z4putcc>
        string++;
    8000280c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002810:	fedff06f          	j	800027fc <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002814:	00000613          	li	a2,0
    80002818:	00100593          	li	a1,1
    8000281c:	00005517          	auipc	a0,0x5
    80002820:	a3c50513          	addi	a0,a0,-1476 # 80007258 <lockPrint>
    80002824:	fffff097          	auipc	ra,0xfffff
    80002828:	a00080e7          	jalr	-1536(ra) # 80001224 <copy_and_swap>
    8000282c:	fe0514e3          	bnez	a0,80002814 <_Z11printStringPKc+0x4c>
}
    80002830:	01813083          	ld	ra,24(sp)
    80002834:	01013403          	ld	s0,16(sp)
    80002838:	00813483          	ld	s1,8(sp)
    8000283c:	02010113          	addi	sp,sp,32
    80002840:	00008067          	ret

0000000080002844 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002844:	fd010113          	addi	sp,sp,-48
    80002848:	02113423          	sd	ra,40(sp)
    8000284c:	02813023          	sd	s0,32(sp)
    80002850:	00913c23          	sd	s1,24(sp)
    80002854:	01213823          	sd	s2,16(sp)
    80002858:	01313423          	sd	s3,8(sp)
    8000285c:	01413023          	sd	s4,0(sp)
    80002860:	03010413          	addi	s0,sp,48
    80002864:	00050993          	mv	s3,a0
    80002868:	00058a13          	mv	s4,a1
    LOCK();
    8000286c:	00100613          	li	a2,1
    80002870:	00000593          	li	a1,0
    80002874:	00005517          	auipc	a0,0x5
    80002878:	9e450513          	addi	a0,a0,-1564 # 80007258 <lockPrint>
    8000287c:	fffff097          	auipc	ra,0xfffff
    80002880:	9a8080e7          	jalr	-1624(ra) # 80001224 <copy_and_swap>
    80002884:	fe0514e3          	bnez	a0,8000286c <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002888:	00000913          	li	s2,0
    8000288c:	00090493          	mv	s1,s2
    80002890:	0019091b          	addiw	s2,s2,1
    80002894:	03495a63          	bge	s2,s4,800028c8 <_Z9getStringPci+0x84>
        cc = getc();
    80002898:	fffff097          	auipc	ra,0xfffff
    8000289c:	b30080e7          	jalr	-1232(ra) # 800013c8 <_Z4getcv>
        if(cc < 1)
    800028a0:	02050463          	beqz	a0,800028c8 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    800028a4:	009984b3          	add	s1,s3,s1
    800028a8:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    800028ac:	00a00793          	li	a5,10
    800028b0:	00f50a63          	beq	a0,a5,800028c4 <_Z9getStringPci+0x80>
    800028b4:	00d00793          	li	a5,13
    800028b8:	fcf51ae3          	bne	a0,a5,8000288c <_Z9getStringPci+0x48>
        buf[i++] = c;
    800028bc:	00090493          	mv	s1,s2
    800028c0:	0080006f          	j	800028c8 <_Z9getStringPci+0x84>
    800028c4:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    800028c8:	009984b3          	add	s1,s3,s1
    800028cc:	00048023          	sb	zero,0(s1)

    UNLOCK();
    800028d0:	00000613          	li	a2,0
    800028d4:	00100593          	li	a1,1
    800028d8:	00005517          	auipc	a0,0x5
    800028dc:	98050513          	addi	a0,a0,-1664 # 80007258 <lockPrint>
    800028e0:	fffff097          	auipc	ra,0xfffff
    800028e4:	944080e7          	jalr	-1724(ra) # 80001224 <copy_and_swap>
    800028e8:	fe0514e3          	bnez	a0,800028d0 <_Z9getStringPci+0x8c>
    return buf;
}
    800028ec:	00098513          	mv	a0,s3
    800028f0:	02813083          	ld	ra,40(sp)
    800028f4:	02013403          	ld	s0,32(sp)
    800028f8:	01813483          	ld	s1,24(sp)
    800028fc:	01013903          	ld	s2,16(sp)
    80002900:	00813983          	ld	s3,8(sp)
    80002904:	00013a03          	ld	s4,0(sp)
    80002908:	03010113          	addi	sp,sp,48
    8000290c:	00008067          	ret

0000000080002910 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002910:	ff010113          	addi	sp,sp,-16
    80002914:	00813423          	sd	s0,8(sp)
    80002918:	01010413          	addi	s0,sp,16
    8000291c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002920:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002924:	0006c603          	lbu	a2,0(a3)
    80002928:	fd06071b          	addiw	a4,a2,-48
    8000292c:	0ff77713          	andi	a4,a4,255
    80002930:	00900793          	li	a5,9
    80002934:	02e7e063          	bltu	a5,a4,80002954 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002938:	0025179b          	slliw	a5,a0,0x2
    8000293c:	00a787bb          	addw	a5,a5,a0
    80002940:	0017979b          	slliw	a5,a5,0x1
    80002944:	00168693          	addi	a3,a3,1
    80002948:	00c787bb          	addw	a5,a5,a2
    8000294c:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002950:	fd5ff06f          	j	80002924 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002954:	00813403          	ld	s0,8(sp)
    80002958:	01010113          	addi	sp,sp,16
    8000295c:	00008067          	ret

0000000080002960 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002960:	fc010113          	addi	sp,sp,-64
    80002964:	02113c23          	sd	ra,56(sp)
    80002968:	02813823          	sd	s0,48(sp)
    8000296c:	02913423          	sd	s1,40(sp)
    80002970:	03213023          	sd	s2,32(sp)
    80002974:	01313c23          	sd	s3,24(sp)
    80002978:	04010413          	addi	s0,sp,64
    8000297c:	00050493          	mv	s1,a0
    80002980:	00058913          	mv	s2,a1
    80002984:	00060993          	mv	s3,a2
    LOCK();
    80002988:	00100613          	li	a2,1
    8000298c:	00000593          	li	a1,0
    80002990:	00005517          	auipc	a0,0x5
    80002994:	8c850513          	addi	a0,a0,-1848 # 80007258 <lockPrint>
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	88c080e7          	jalr	-1908(ra) # 80001224 <copy_and_swap>
    800029a0:	fe0514e3          	bnez	a0,80002988 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    800029a4:	00098463          	beqz	s3,800029ac <_Z8printIntiii+0x4c>
    800029a8:	0804c463          	bltz	s1,80002a30 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    800029ac:	0004851b          	sext.w	a0,s1
    neg = 0;
    800029b0:	00000593          	li	a1,0
    }

    i = 0;
    800029b4:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    800029b8:	0009079b          	sext.w	a5,s2
    800029bc:	0325773b          	remuw	a4,a0,s2
    800029c0:	00048613          	mv	a2,s1
    800029c4:	0014849b          	addiw	s1,s1,1
    800029c8:	02071693          	slli	a3,a4,0x20
    800029cc:	0206d693          	srli	a3,a3,0x20
    800029d0:	00004717          	auipc	a4,0x4
    800029d4:	79070713          	addi	a4,a4,1936 # 80007160 <digits>
    800029d8:	00d70733          	add	a4,a4,a3
    800029dc:	00074683          	lbu	a3,0(a4)
    800029e0:	fd040713          	addi	a4,s0,-48
    800029e4:	00c70733          	add	a4,a4,a2
    800029e8:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    800029ec:	0005071b          	sext.w	a4,a0
    800029f0:	0325553b          	divuw	a0,a0,s2
    800029f4:	fcf772e3          	bgeu	a4,a5,800029b8 <_Z8printIntiii+0x58>
    if(neg)
    800029f8:	00058c63          	beqz	a1,80002a10 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    800029fc:	fd040793          	addi	a5,s0,-48
    80002a00:	009784b3          	add	s1,a5,s1
    80002a04:	02d00793          	li	a5,45
    80002a08:	fef48823          	sb	a5,-16(s1)
    80002a0c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002a10:	fff4849b          	addiw	s1,s1,-1
    80002a14:	0204c463          	bltz	s1,80002a3c <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002a18:	fd040793          	addi	a5,s0,-48
    80002a1c:	009787b3          	add	a5,a5,s1
    80002a20:	ff07c503          	lbu	a0,-16(a5)
    80002a24:	fffff097          	auipc	ra,0xfffff
    80002a28:	9cc080e7          	jalr	-1588(ra) # 800013f0 <_Z4putcc>
    80002a2c:	fe5ff06f          	j	80002a10 <_Z8printIntiii+0xb0>
        x = -xx;
    80002a30:	4090053b          	negw	a0,s1
        neg = 1;
    80002a34:	00100593          	li	a1,1
        x = -xx;
    80002a38:	f7dff06f          	j	800029b4 <_Z8printIntiii+0x54>

    UNLOCK();
    80002a3c:	00000613          	li	a2,0
    80002a40:	00100593          	li	a1,1
    80002a44:	00005517          	auipc	a0,0x5
    80002a48:	81450513          	addi	a0,a0,-2028 # 80007258 <lockPrint>
    80002a4c:	ffffe097          	auipc	ra,0xffffe
    80002a50:	7d8080e7          	jalr	2008(ra) # 80001224 <copy_and_swap>
    80002a54:	fe0514e3          	bnez	a0,80002a3c <_Z8printIntiii+0xdc>
    80002a58:	03813083          	ld	ra,56(sp)
    80002a5c:	03013403          	ld	s0,48(sp)
    80002a60:	02813483          	ld	s1,40(sp)
    80002a64:	02013903          	ld	s2,32(sp)
    80002a68:	01813983          	ld	s3,24(sp)
    80002a6c:	04010113          	addi	sp,sp,64
    80002a70:	00008067          	ret

0000000080002a74 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	01213023          	sd	s2,0(sp)
    80002a88:	02010413          	addi	s0,sp,32
    80002a8c:	00050493          	mv	s1,a0
    80002a90:	0015859b          	addiw	a1,a1,1
    80002a94:	0005851b          	sext.w	a0,a1
    80002a98:	00b4a023          	sw	a1,0(s1)
    80002a9c:	0004a823          	sw	zero,16(s1)
    80002aa0:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002aa4:	00251513          	slli	a0,a0,0x2
    80002aa8:	ffffe097          	auipc	ra,0xffffe
    80002aac:	79c080e7          	jalr	1948(ra) # 80001244 <_Z9mem_allocm>
    80002ab0:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002ab4:	01000513          	li	a0,16
    80002ab8:	fffff097          	auipc	ra,0xfffff
    80002abc:	180080e7          	jalr	384(ra) # 80001c38 <_Znwm>
};


class Semaphore {
public:
    Semaphore (unsigned init = 1){
    80002ac0:	00004917          	auipc	s2,0x4
    80002ac4:	6e093903          	ld	s2,1760(s2) # 800071a0 <_GLOBAL_OFFSET_TABLE_+0x28>
    80002ac8:	01090913          	addi	s2,s2,16
    80002acc:	01253023          	sd	s2,0(a0)
    80002ad0:	02a4b023          	sd	a0,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002ad4:	01000513          	li	a0,16
    80002ad8:	fffff097          	auipc	ra,0xfffff
    80002adc:	160080e7          	jalr	352(ra) # 80001c38 <_Znwm>
    80002ae0:	01253023          	sd	s2,0(a0)
    80002ae4:	00a4bc23          	sd	a0,24(s1)
    mutexHead = new Semaphore(1);
    80002ae8:	01000513          	li	a0,16
    80002aec:	fffff097          	auipc	ra,0xfffff
    80002af0:	14c080e7          	jalr	332(ra) # 80001c38 <_Znwm>
    80002af4:	01253023          	sd	s2,0(a0)
    80002af8:	02a4b423          	sd	a0,40(s1)
    mutexTail = new Semaphore(1);
    80002afc:	01000513          	li	a0,16
    80002b00:	fffff097          	auipc	ra,0xfffff
    80002b04:	138080e7          	jalr	312(ra) # 80001c38 <_Znwm>
    80002b08:	01253023          	sd	s2,0(a0)
    80002b0c:	02a4b823          	sd	a0,48(s1)
}
    80002b10:	01813083          	ld	ra,24(sp)
    80002b14:	01013403          	ld	s0,16(sp)
    80002b18:	00813483          	ld	s1,8(sp)
    80002b1c:	00013903          	ld	s2,0(sp)
    80002b20:	02010113          	addi	sp,sp,32
    80002b24:	00008067          	ret

0000000080002b28 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002b28:	fe010113          	addi	sp,sp,-32
    80002b2c:	00113c23          	sd	ra,24(sp)
    80002b30:	00813823          	sd	s0,16(sp)
    80002b34:	00913423          	sd	s1,8(sp)
    80002b38:	01213023          	sd	s2,0(sp)
    80002b3c:	02010413          	addi	s0,sp,32
    80002b40:	00050493          	mv	s1,a0
    80002b44:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002b48:	01853503          	ld	a0,24(a0)
    80002b4c:	fffff097          	auipc	ra,0xfffff
    80002b50:	27c080e7          	jalr	636(ra) # 80001dc8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002b54:	0304b503          	ld	a0,48(s1)
    80002b58:	fffff097          	auipc	ra,0xfffff
    80002b5c:	270080e7          	jalr	624(ra) # 80001dc8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002b60:	0084b783          	ld	a5,8(s1)
    80002b64:	0144a703          	lw	a4,20(s1)
    80002b68:	00271713          	slli	a4,a4,0x2
    80002b6c:	00e787b3          	add	a5,a5,a4
    80002b70:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002b74:	0144a783          	lw	a5,20(s1)
    80002b78:	0017879b          	addiw	a5,a5,1
    80002b7c:	0004a703          	lw	a4,0(s1)
    80002b80:	02e7e7bb          	remw	a5,a5,a4
    80002b84:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002b88:	0304b503          	ld	a0,48(s1)
    80002b8c:	fffff097          	auipc	ra,0xfffff
    80002b90:	258080e7          	jalr	600(ra) # 80001de4 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002b94:	0204b503          	ld	a0,32(s1)
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	24c080e7          	jalr	588(ra) # 80001de4 <_ZN9Semaphore6signalEv>

}
    80002ba0:	01813083          	ld	ra,24(sp)
    80002ba4:	01013403          	ld	s0,16(sp)
    80002ba8:	00813483          	ld	s1,8(sp)
    80002bac:	00013903          	ld	s2,0(sp)
    80002bb0:	02010113          	addi	sp,sp,32
    80002bb4:	00008067          	ret

0000000080002bb8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002bb8:	fe010113          	addi	sp,sp,-32
    80002bbc:	00113c23          	sd	ra,24(sp)
    80002bc0:	00813823          	sd	s0,16(sp)
    80002bc4:	00913423          	sd	s1,8(sp)
    80002bc8:	01213023          	sd	s2,0(sp)
    80002bcc:	02010413          	addi	s0,sp,32
    80002bd0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002bd4:	02053503          	ld	a0,32(a0)
    80002bd8:	fffff097          	auipc	ra,0xfffff
    80002bdc:	1f0080e7          	jalr	496(ra) # 80001dc8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002be0:	0284b503          	ld	a0,40(s1)
    80002be4:	fffff097          	auipc	ra,0xfffff
    80002be8:	1e4080e7          	jalr	484(ra) # 80001dc8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002bec:	0084b703          	ld	a4,8(s1)
    80002bf0:	0104a783          	lw	a5,16(s1)
    80002bf4:	00279693          	slli	a3,a5,0x2
    80002bf8:	00d70733          	add	a4,a4,a3
    80002bfc:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002c00:	0017879b          	addiw	a5,a5,1
    80002c04:	0004a703          	lw	a4,0(s1)
    80002c08:	02e7e7bb          	remw	a5,a5,a4
    80002c0c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002c10:	0284b503          	ld	a0,40(s1)
    80002c14:	fffff097          	auipc	ra,0xfffff
    80002c18:	1d0080e7          	jalr	464(ra) # 80001de4 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002c1c:	0184b503          	ld	a0,24(s1)
    80002c20:	fffff097          	auipc	ra,0xfffff
    80002c24:	1c4080e7          	jalr	452(ra) # 80001de4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002c28:	00090513          	mv	a0,s2
    80002c2c:	01813083          	ld	ra,24(sp)
    80002c30:	01013403          	ld	s0,16(sp)
    80002c34:	00813483          	ld	s1,8(sp)
    80002c38:	00013903          	ld	s2,0(sp)
    80002c3c:	02010113          	addi	sp,sp,32
    80002c40:	00008067          	ret

0000000080002c44 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002c44:	fe010113          	addi	sp,sp,-32
    80002c48:	00113c23          	sd	ra,24(sp)
    80002c4c:	00813823          	sd	s0,16(sp)
    80002c50:	00913423          	sd	s1,8(sp)
    80002c54:	01213023          	sd	s2,0(sp)
    80002c58:	02010413          	addi	s0,sp,32
    80002c5c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002c60:	02853503          	ld	a0,40(a0)
    80002c64:	fffff097          	auipc	ra,0xfffff
    80002c68:	164080e7          	jalr	356(ra) # 80001dc8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002c6c:	0304b503          	ld	a0,48(s1)
    80002c70:	fffff097          	auipc	ra,0xfffff
    80002c74:	158080e7          	jalr	344(ra) # 80001dc8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002c78:	0144a783          	lw	a5,20(s1)
    80002c7c:	0104a903          	lw	s2,16(s1)
    80002c80:	0327ce63          	blt	a5,s2,80002cbc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002c84:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002c88:	0304b503          	ld	a0,48(s1)
    80002c8c:	fffff097          	auipc	ra,0xfffff
    80002c90:	158080e7          	jalr	344(ra) # 80001de4 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002c94:	0284b503          	ld	a0,40(s1)
    80002c98:	fffff097          	auipc	ra,0xfffff
    80002c9c:	14c080e7          	jalr	332(ra) # 80001de4 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002ca0:	00090513          	mv	a0,s2
    80002ca4:	01813083          	ld	ra,24(sp)
    80002ca8:	01013403          	ld	s0,16(sp)
    80002cac:	00813483          	ld	s1,8(sp)
    80002cb0:	00013903          	ld	s2,0(sp)
    80002cb4:	02010113          	addi	sp,sp,32
    80002cb8:	00008067          	ret
        ret = cap - head + tail;
    80002cbc:	0004a703          	lw	a4,0(s1)
    80002cc0:	4127093b          	subw	s2,a4,s2
    80002cc4:	00f9093b          	addw	s2,s2,a5
    80002cc8:	fc1ff06f          	j	80002c88 <_ZN9BufferCPP6getCntEv+0x44>

0000000080002ccc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80002ccc:	fe010113          	addi	sp,sp,-32
    80002cd0:	00113c23          	sd	ra,24(sp)
    80002cd4:	00813823          	sd	s0,16(sp)
    80002cd8:	00913423          	sd	s1,8(sp)
    80002cdc:	02010413          	addi	s0,sp,32
    80002ce0:	00050493          	mv	s1,a0
    Console::putc('\n');
    80002ce4:	00a00513          	li	a0,10
    80002ce8:	fffff097          	auipc	ra,0xfffff
    80002cec:	180080e7          	jalr	384(ra) # 80001e68 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80002cf0:	00003517          	auipc	a0,0x3
    80002cf4:	43850513          	addi	a0,a0,1080 # 80006128 <CONSOLE_STATUS+0x118>
    80002cf8:	00000097          	auipc	ra,0x0
    80002cfc:	ad0080e7          	jalr	-1328(ra) # 800027c8 <_Z11printStringPKc>
    while (getCnt()) {
    80002d00:	00048513          	mv	a0,s1
    80002d04:	00000097          	auipc	ra,0x0
    80002d08:	f40080e7          	jalr	-192(ra) # 80002c44 <_ZN9BufferCPP6getCntEv>
    80002d0c:	02050c63          	beqz	a0,80002d44 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80002d10:	0084b783          	ld	a5,8(s1)
    80002d14:	0104a703          	lw	a4,16(s1)
    80002d18:	00271713          	slli	a4,a4,0x2
    80002d1c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80002d20:	0007c503          	lbu	a0,0(a5)
    80002d24:	fffff097          	auipc	ra,0xfffff
    80002d28:	144080e7          	jalr	324(ra) # 80001e68 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80002d2c:	0104a783          	lw	a5,16(s1)
    80002d30:	0017879b          	addiw	a5,a5,1
    80002d34:	0004a703          	lw	a4,0(s1)
    80002d38:	02e7e7bb          	remw	a5,a5,a4
    80002d3c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80002d40:	fc1ff06f          	j	80002d00 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80002d44:	02100513          	li	a0,33
    80002d48:	fffff097          	auipc	ra,0xfffff
    80002d4c:	120080e7          	jalr	288(ra) # 80001e68 <_ZN7Console4putcEc>
    Console::putc('\n');
    80002d50:	00a00513          	li	a0,10
    80002d54:	fffff097          	auipc	ra,0xfffff
    80002d58:	114080e7          	jalr	276(ra) # 80001e68 <_ZN7Console4putcEc>
    mem_free(buffer);
    80002d5c:	0084b503          	ld	a0,8(s1)
    80002d60:	ffffe097          	auipc	ra,0xffffe
    80002d64:	50c080e7          	jalr	1292(ra) # 8000126c <_Z8mem_freePv>
    delete itemAvailable;
    80002d68:	0204b503          	ld	a0,32(s1)
    80002d6c:	00050863          	beqz	a0,80002d7c <_ZN9BufferCPPD1Ev+0xb0>
    80002d70:	00053783          	ld	a5,0(a0)
    80002d74:	0087b783          	ld	a5,8(a5)
    80002d78:	000780e7          	jalr	a5
    delete spaceAvailable;
    80002d7c:	0184b503          	ld	a0,24(s1)
    80002d80:	00050863          	beqz	a0,80002d90 <_ZN9BufferCPPD1Ev+0xc4>
    80002d84:	00053783          	ld	a5,0(a0)
    80002d88:	0087b783          	ld	a5,8(a5)
    80002d8c:	000780e7          	jalr	a5
    delete mutexTail;
    80002d90:	0304b503          	ld	a0,48(s1)
    80002d94:	00050863          	beqz	a0,80002da4 <_ZN9BufferCPPD1Ev+0xd8>
    80002d98:	00053783          	ld	a5,0(a0)
    80002d9c:	0087b783          	ld	a5,8(a5)
    80002da0:	000780e7          	jalr	a5
    delete mutexHead;
    80002da4:	0284b503          	ld	a0,40(s1)
    80002da8:	00050863          	beqz	a0,80002db8 <_ZN9BufferCPPD1Ev+0xec>
    80002dac:	00053783          	ld	a5,0(a0)
    80002db0:	0087b783          	ld	a5,8(a5)
    80002db4:	000780e7          	jalr	a5
}
    80002db8:	01813083          	ld	ra,24(sp)
    80002dbc:	01013403          	ld	s0,16(sp)
    80002dc0:	00813483          	ld	s1,8(sp)
    80002dc4:	02010113          	addi	sp,sp,32
    80002dc8:	00008067          	ret

0000000080002dcc <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002dcc:	fe010113          	addi	sp,sp,-32
    80002dd0:	00113c23          	sd	ra,24(sp)
    80002dd4:	00813823          	sd	s0,16(sp)
    80002dd8:	00913423          	sd	s1,8(sp)
    80002ddc:	01213023          	sd	s2,0(sp)
    80002de0:	02010413          	addi	s0,sp,32
    80002de4:	00050493          	mv	s1,a0
    80002de8:	00058913          	mv	s2,a1
    80002dec:	0015879b          	addiw	a5,a1,1
    80002df0:	0007851b          	sext.w	a0,a5
    80002df4:	00f4a023          	sw	a5,0(s1)
    80002df8:	0004a823          	sw	zero,16(s1)
    80002dfc:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002e00:	00251513          	slli	a0,a0,0x2
    80002e04:	ffffe097          	auipc	ra,0xffffe
    80002e08:	440080e7          	jalr	1088(ra) # 80001244 <_Z9mem_allocm>
    80002e0c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80002e10:	00000593          	li	a1,0
    80002e14:	02048513          	addi	a0,s1,32
    80002e18:	ffffe097          	auipc	ra,0xffffe
    80002e1c:	4fc080e7          	jalr	1276(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    80002e20:	00090593          	mv	a1,s2
    80002e24:	01848513          	addi	a0,s1,24
    80002e28:	ffffe097          	auipc	ra,0xffffe
    80002e2c:	4ec080e7          	jalr	1260(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    80002e30:	00100593          	li	a1,1
    80002e34:	02848513          	addi	a0,s1,40
    80002e38:	ffffe097          	auipc	ra,0xffffe
    80002e3c:	4dc080e7          	jalr	1244(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    80002e40:	00100593          	li	a1,1
    80002e44:	03048513          	addi	a0,s1,48
    80002e48:	ffffe097          	auipc	ra,0xffffe
    80002e4c:	4cc080e7          	jalr	1228(ra) # 80001314 <_Z8sem_openPP10Ksemaphorej>
}
    80002e50:	01813083          	ld	ra,24(sp)
    80002e54:	01013403          	ld	s0,16(sp)
    80002e58:	00813483          	ld	s1,8(sp)
    80002e5c:	00013903          	ld	s2,0(sp)
    80002e60:	02010113          	addi	sp,sp,32
    80002e64:	00008067          	ret

0000000080002e68 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80002e68:	fe010113          	addi	sp,sp,-32
    80002e6c:	00113c23          	sd	ra,24(sp)
    80002e70:	00813823          	sd	s0,16(sp)
    80002e74:	00913423          	sd	s1,8(sp)
    80002e78:	01213023          	sd	s2,0(sp)
    80002e7c:	02010413          	addi	s0,sp,32
    80002e80:	00050493          	mv	s1,a0
    80002e84:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80002e88:	01853503          	ld	a0,24(a0)
    80002e8c:	ffffe097          	auipc	ra,0xffffe
    80002e90:	4e4080e7          	jalr	1252(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    80002e94:	0304b503          	ld	a0,48(s1)
    80002e98:	ffffe097          	auipc	ra,0xffffe
    80002e9c:	4d8080e7          	jalr	1240(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    80002ea0:	0084b783          	ld	a5,8(s1)
    80002ea4:	0144a703          	lw	a4,20(s1)
    80002ea8:	00271713          	slli	a4,a4,0x2
    80002eac:	00e787b3          	add	a5,a5,a4
    80002eb0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002eb4:	0144a783          	lw	a5,20(s1)
    80002eb8:	0017879b          	addiw	a5,a5,1
    80002ebc:	0004a703          	lw	a4,0(s1)
    80002ec0:	02e7e7bb          	remw	a5,a5,a4
    80002ec4:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80002ec8:	0304b503          	ld	a0,48(s1)
    80002ecc:	ffffe097          	auipc	ra,0xffffe
    80002ed0:	4d0080e7          	jalr	1232(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80002ed4:	0204b503          	ld	a0,32(s1)
    80002ed8:	ffffe097          	auipc	ra,0xffffe
    80002edc:	4c4080e7          	jalr	1220(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

}
    80002ee0:	01813083          	ld	ra,24(sp)
    80002ee4:	01013403          	ld	s0,16(sp)
    80002ee8:	00813483          	ld	s1,8(sp)
    80002eec:	00013903          	ld	s2,0(sp)
    80002ef0:	02010113          	addi	sp,sp,32
    80002ef4:	00008067          	ret

0000000080002ef8 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80002ef8:	fe010113          	addi	sp,sp,-32
    80002efc:	00113c23          	sd	ra,24(sp)
    80002f00:	00813823          	sd	s0,16(sp)
    80002f04:	00913423          	sd	s1,8(sp)
    80002f08:	01213023          	sd	s2,0(sp)
    80002f0c:	02010413          	addi	s0,sp,32
    80002f10:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80002f14:	02053503          	ld	a0,32(a0)
    80002f18:	ffffe097          	auipc	ra,0xffffe
    80002f1c:	458080e7          	jalr	1112(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    80002f20:	0284b503          	ld	a0,40(s1)
    80002f24:	ffffe097          	auipc	ra,0xffffe
    80002f28:	44c080e7          	jalr	1100(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80002f2c:	0084b703          	ld	a4,8(s1)
    80002f30:	0104a783          	lw	a5,16(s1)
    80002f34:	00279693          	slli	a3,a5,0x2
    80002f38:	00d70733          	add	a4,a4,a3
    80002f3c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f40:	0017879b          	addiw	a5,a5,1
    80002f44:	0004a703          	lw	a4,0(s1)
    80002f48:	02e7e7bb          	remw	a5,a5,a4
    80002f4c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80002f50:	0284b503          	ld	a0,40(s1)
    80002f54:	ffffe097          	auipc	ra,0xffffe
    80002f58:	448080e7          	jalr	1096(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    80002f5c:	0184b503          	ld	a0,24(s1)
    80002f60:	ffffe097          	auipc	ra,0xffffe
    80002f64:	43c080e7          	jalr	1084(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80002f68:	00090513          	mv	a0,s2
    80002f6c:	01813083          	ld	ra,24(sp)
    80002f70:	01013403          	ld	s0,16(sp)
    80002f74:	00813483          	ld	s1,8(sp)
    80002f78:	00013903          	ld	s2,0(sp)
    80002f7c:	02010113          	addi	sp,sp,32
    80002f80:	00008067          	ret

0000000080002f84 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80002f84:	fe010113          	addi	sp,sp,-32
    80002f88:	00113c23          	sd	ra,24(sp)
    80002f8c:	00813823          	sd	s0,16(sp)
    80002f90:	00913423          	sd	s1,8(sp)
    80002f94:	01213023          	sd	s2,0(sp)
    80002f98:	02010413          	addi	s0,sp,32
    80002f9c:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80002fa0:	02853503          	ld	a0,40(a0)
    80002fa4:	ffffe097          	auipc	ra,0xffffe
    80002fa8:	3cc080e7          	jalr	972(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    80002fac:	0304b503          	ld	a0,48(s1)
    80002fb0:	ffffe097          	auipc	ra,0xffffe
    80002fb4:	3c0080e7          	jalr	960(ra) # 80001370 <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80002fb8:	0144a783          	lw	a5,20(s1)
    80002fbc:	0104a903          	lw	s2,16(s1)
    80002fc0:	0327ce63          	blt	a5,s2,80002ffc <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80002fc4:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80002fc8:	0304b503          	ld	a0,48(s1)
    80002fcc:	ffffe097          	auipc	ra,0xffffe
    80002fd0:	3d0080e7          	jalr	976(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80002fd4:	0284b503          	ld	a0,40(s1)
    80002fd8:	ffffe097          	auipc	ra,0xffffe
    80002fdc:	3c4080e7          	jalr	964(ra) # 8000139c <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    80002fe0:	00090513          	mv	a0,s2
    80002fe4:	01813083          	ld	ra,24(sp)
    80002fe8:	01013403          	ld	s0,16(sp)
    80002fec:	00813483          	ld	s1,8(sp)
    80002ff0:	00013903          	ld	s2,0(sp)
    80002ff4:	02010113          	addi	sp,sp,32
    80002ff8:	00008067          	ret
        ret = cap - head + tail;
    80002ffc:	0004a703          	lw	a4,0(s1)
    80003000:	4127093b          	subw	s2,a4,s2
    80003004:	00f9093b          	addw	s2,s2,a5
    80003008:	fc1ff06f          	j	80002fc8 <_ZN6Buffer6getCntEv+0x44>

000000008000300c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    8000300c:	fe010113          	addi	sp,sp,-32
    80003010:	00113c23          	sd	ra,24(sp)
    80003014:	00813823          	sd	s0,16(sp)
    80003018:	00913423          	sd	s1,8(sp)
    8000301c:	02010413          	addi	s0,sp,32
    80003020:	00050493          	mv	s1,a0
    putc('\n');
    80003024:	00a00513          	li	a0,10
    80003028:	ffffe097          	auipc	ra,0xffffe
    8000302c:	3c8080e7          	jalr	968(ra) # 800013f0 <_Z4putcc>
    printString("Buffer deleted!\n");
    80003030:	00003517          	auipc	a0,0x3
    80003034:	0f850513          	addi	a0,a0,248 # 80006128 <CONSOLE_STATUS+0x118>
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	790080e7          	jalr	1936(ra) # 800027c8 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80003040:	00048513          	mv	a0,s1
    80003044:	00000097          	auipc	ra,0x0
    80003048:	f40080e7          	jalr	-192(ra) # 80002f84 <_ZN6Buffer6getCntEv>
    8000304c:	02a05c63          	blez	a0,80003084 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80003050:	0084b783          	ld	a5,8(s1)
    80003054:	0104a703          	lw	a4,16(s1)
    80003058:	00271713          	slli	a4,a4,0x2
    8000305c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80003060:	0007c503          	lbu	a0,0(a5)
    80003064:	ffffe097          	auipc	ra,0xffffe
    80003068:	38c080e7          	jalr	908(ra) # 800013f0 <_Z4putcc>
        head = (head + 1) % cap;
    8000306c:	0104a783          	lw	a5,16(s1)
    80003070:	0017879b          	addiw	a5,a5,1
    80003074:	0004a703          	lw	a4,0(s1)
    80003078:	02e7e7bb          	remw	a5,a5,a4
    8000307c:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80003080:	fc1ff06f          	j	80003040 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80003084:	02100513          	li	a0,33
    80003088:	ffffe097          	auipc	ra,0xffffe
    8000308c:	368080e7          	jalr	872(ra) # 800013f0 <_Z4putcc>
    putc('\n');
    80003090:	00a00513          	li	a0,10
    80003094:	ffffe097          	auipc	ra,0xffffe
    80003098:	35c080e7          	jalr	860(ra) # 800013f0 <_Z4putcc>
    mem_free(buffer);
    8000309c:	0084b503          	ld	a0,8(s1)
    800030a0:	ffffe097          	auipc	ra,0xffffe
    800030a4:	1cc080e7          	jalr	460(ra) # 8000126c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800030a8:	0204b503          	ld	a0,32(s1)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	298080e7          	jalr	664(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    800030b4:	0184b503          	ld	a0,24(s1)
    800030b8:	ffffe097          	auipc	ra,0xffffe
    800030bc:	28c080e7          	jalr	652(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    800030c0:	0304b503          	ld	a0,48(s1)
    800030c4:	ffffe097          	auipc	ra,0xffffe
    800030c8:	280080e7          	jalr	640(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    800030cc:	0284b503          	ld	a0,40(s1)
    800030d0:	ffffe097          	auipc	ra,0xffffe
    800030d4:	274080e7          	jalr	628(ra) # 80001344 <_Z9sem_closeP10Ksemaphore>
}
    800030d8:	01813083          	ld	ra,24(sp)
    800030dc:	01013403          	ld	s0,16(sp)
    800030e0:	00813483          	ld	s1,8(sp)
    800030e4:	02010113          	addi	sp,sp,32
    800030e8:	00008067          	ret

00000000800030ec <start>:
    800030ec:	ff010113          	addi	sp,sp,-16
    800030f0:	00813423          	sd	s0,8(sp)
    800030f4:	01010413          	addi	s0,sp,16
    800030f8:	300027f3          	csrr	a5,mstatus
    800030fc:	ffffe737          	lui	a4,0xffffe
    80003100:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff632f>
    80003104:	00e7f7b3          	and	a5,a5,a4
    80003108:	00001737          	lui	a4,0x1
    8000310c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80003110:	00e7e7b3          	or	a5,a5,a4
    80003114:	30079073          	csrw	mstatus,a5
    80003118:	00000797          	auipc	a5,0x0
    8000311c:	16078793          	addi	a5,a5,352 # 80003278 <system_main>
    80003120:	34179073          	csrw	mepc,a5
    80003124:	00000793          	li	a5,0
    80003128:	18079073          	csrw	satp,a5
    8000312c:	000107b7          	lui	a5,0x10
    80003130:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003134:	30279073          	csrw	medeleg,a5
    80003138:	30379073          	csrw	mideleg,a5
    8000313c:	104027f3          	csrr	a5,sie
    80003140:	2227e793          	ori	a5,a5,546
    80003144:	10479073          	csrw	sie,a5
    80003148:	fff00793          	li	a5,-1
    8000314c:	00a7d793          	srli	a5,a5,0xa
    80003150:	3b079073          	csrw	pmpaddr0,a5
    80003154:	00f00793          	li	a5,15
    80003158:	3a079073          	csrw	pmpcfg0,a5
    8000315c:	f14027f3          	csrr	a5,mhartid
    80003160:	0200c737          	lui	a4,0x200c
    80003164:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003168:	0007869b          	sext.w	a3,a5
    8000316c:	00269713          	slli	a4,a3,0x2
    80003170:	000f4637          	lui	a2,0xf4
    80003174:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003178:	00d70733          	add	a4,a4,a3
    8000317c:	0037979b          	slliw	a5,a5,0x3
    80003180:	020046b7          	lui	a3,0x2004
    80003184:	00d787b3          	add	a5,a5,a3
    80003188:	00c585b3          	add	a1,a1,a2
    8000318c:	00371693          	slli	a3,a4,0x3
    80003190:	00004717          	auipc	a4,0x4
    80003194:	0d070713          	addi	a4,a4,208 # 80007260 <timer_scratch>
    80003198:	00b7b023          	sd	a1,0(a5)
    8000319c:	00d70733          	add	a4,a4,a3
    800031a0:	00f73c23          	sd	a5,24(a4)
    800031a4:	02c73023          	sd	a2,32(a4)
    800031a8:	34071073          	csrw	mscratch,a4
    800031ac:	00000797          	auipc	a5,0x0
    800031b0:	6e478793          	addi	a5,a5,1764 # 80003890 <timervec>
    800031b4:	30579073          	csrw	mtvec,a5
    800031b8:	300027f3          	csrr	a5,mstatus
    800031bc:	0087e793          	ori	a5,a5,8
    800031c0:	30079073          	csrw	mstatus,a5
    800031c4:	304027f3          	csrr	a5,mie
    800031c8:	0807e793          	ori	a5,a5,128
    800031cc:	30479073          	csrw	mie,a5
    800031d0:	f14027f3          	csrr	a5,mhartid
    800031d4:	0007879b          	sext.w	a5,a5
    800031d8:	00078213          	mv	tp,a5
    800031dc:	30200073          	mret
    800031e0:	00813403          	ld	s0,8(sp)
    800031e4:	01010113          	addi	sp,sp,16
    800031e8:	00008067          	ret

00000000800031ec <timerinit>:
    800031ec:	ff010113          	addi	sp,sp,-16
    800031f0:	00813423          	sd	s0,8(sp)
    800031f4:	01010413          	addi	s0,sp,16
    800031f8:	f14027f3          	csrr	a5,mhartid
    800031fc:	0200c737          	lui	a4,0x200c
    80003200:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003204:	0007869b          	sext.w	a3,a5
    80003208:	00269713          	slli	a4,a3,0x2
    8000320c:	000f4637          	lui	a2,0xf4
    80003210:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003214:	00d70733          	add	a4,a4,a3
    80003218:	0037979b          	slliw	a5,a5,0x3
    8000321c:	020046b7          	lui	a3,0x2004
    80003220:	00d787b3          	add	a5,a5,a3
    80003224:	00c585b3          	add	a1,a1,a2
    80003228:	00371693          	slli	a3,a4,0x3
    8000322c:	00004717          	auipc	a4,0x4
    80003230:	03470713          	addi	a4,a4,52 # 80007260 <timer_scratch>
    80003234:	00b7b023          	sd	a1,0(a5)
    80003238:	00d70733          	add	a4,a4,a3
    8000323c:	00f73c23          	sd	a5,24(a4)
    80003240:	02c73023          	sd	a2,32(a4)
    80003244:	34071073          	csrw	mscratch,a4
    80003248:	00000797          	auipc	a5,0x0
    8000324c:	64878793          	addi	a5,a5,1608 # 80003890 <timervec>
    80003250:	30579073          	csrw	mtvec,a5
    80003254:	300027f3          	csrr	a5,mstatus
    80003258:	0087e793          	ori	a5,a5,8
    8000325c:	30079073          	csrw	mstatus,a5
    80003260:	304027f3          	csrr	a5,mie
    80003264:	0807e793          	ori	a5,a5,128
    80003268:	30479073          	csrw	mie,a5
    8000326c:	00813403          	ld	s0,8(sp)
    80003270:	01010113          	addi	sp,sp,16
    80003274:	00008067          	ret

0000000080003278 <system_main>:
    80003278:	fe010113          	addi	sp,sp,-32
    8000327c:	00813823          	sd	s0,16(sp)
    80003280:	00913423          	sd	s1,8(sp)
    80003284:	00113c23          	sd	ra,24(sp)
    80003288:	02010413          	addi	s0,sp,32
    8000328c:	00000097          	auipc	ra,0x0
    80003290:	0c4080e7          	jalr	196(ra) # 80003350 <cpuid>
    80003294:	00004497          	auipc	s1,0x4
    80003298:	f4c48493          	addi	s1,s1,-180 # 800071e0 <started>
    8000329c:	02050263          	beqz	a0,800032c0 <system_main+0x48>
    800032a0:	0004a783          	lw	a5,0(s1)
    800032a4:	0007879b          	sext.w	a5,a5
    800032a8:	fe078ce3          	beqz	a5,800032a0 <system_main+0x28>
    800032ac:	0ff0000f          	fence
    800032b0:	00003517          	auipc	a0,0x3
    800032b4:	ec050513          	addi	a0,a0,-320 # 80006170 <CONSOLE_STATUS+0x160>
    800032b8:	00001097          	auipc	ra,0x1
    800032bc:	a74080e7          	jalr	-1420(ra) # 80003d2c <panic>
    800032c0:	00001097          	auipc	ra,0x1
    800032c4:	9c8080e7          	jalr	-1592(ra) # 80003c88 <consoleinit>
    800032c8:	00001097          	auipc	ra,0x1
    800032cc:	154080e7          	jalr	340(ra) # 8000441c <printfinit>
    800032d0:	00003517          	auipc	a0,0x3
    800032d4:	f8050513          	addi	a0,a0,-128 # 80006250 <CONSOLE_STATUS+0x240>
    800032d8:	00001097          	auipc	ra,0x1
    800032dc:	ab0080e7          	jalr	-1360(ra) # 80003d88 <__printf>
    800032e0:	00003517          	auipc	a0,0x3
    800032e4:	e6050513          	addi	a0,a0,-416 # 80006140 <CONSOLE_STATUS+0x130>
    800032e8:	00001097          	auipc	ra,0x1
    800032ec:	aa0080e7          	jalr	-1376(ra) # 80003d88 <__printf>
    800032f0:	00003517          	auipc	a0,0x3
    800032f4:	f6050513          	addi	a0,a0,-160 # 80006250 <CONSOLE_STATUS+0x240>
    800032f8:	00001097          	auipc	ra,0x1
    800032fc:	a90080e7          	jalr	-1392(ra) # 80003d88 <__printf>
    80003300:	00001097          	auipc	ra,0x1
    80003304:	4a8080e7          	jalr	1192(ra) # 800047a8 <kinit>
    80003308:	00000097          	auipc	ra,0x0
    8000330c:	148080e7          	jalr	328(ra) # 80003450 <trapinit>
    80003310:	00000097          	auipc	ra,0x0
    80003314:	16c080e7          	jalr	364(ra) # 8000347c <trapinithart>
    80003318:	00000097          	auipc	ra,0x0
    8000331c:	5b8080e7          	jalr	1464(ra) # 800038d0 <plicinit>
    80003320:	00000097          	auipc	ra,0x0
    80003324:	5d8080e7          	jalr	1496(ra) # 800038f8 <plicinithart>
    80003328:	00000097          	auipc	ra,0x0
    8000332c:	078080e7          	jalr	120(ra) # 800033a0 <userinit>
    80003330:	0ff0000f          	fence
    80003334:	00100793          	li	a5,1
    80003338:	00003517          	auipc	a0,0x3
    8000333c:	e2050513          	addi	a0,a0,-480 # 80006158 <CONSOLE_STATUS+0x148>
    80003340:	00f4a023          	sw	a5,0(s1)
    80003344:	00001097          	auipc	ra,0x1
    80003348:	a44080e7          	jalr	-1468(ra) # 80003d88 <__printf>
    8000334c:	0000006f          	j	8000334c <system_main+0xd4>

0000000080003350 <cpuid>:
    80003350:	ff010113          	addi	sp,sp,-16
    80003354:	00813423          	sd	s0,8(sp)
    80003358:	01010413          	addi	s0,sp,16
    8000335c:	00020513          	mv	a0,tp
    80003360:	00813403          	ld	s0,8(sp)
    80003364:	0005051b          	sext.w	a0,a0
    80003368:	01010113          	addi	sp,sp,16
    8000336c:	00008067          	ret

0000000080003370 <mycpu>:
    80003370:	ff010113          	addi	sp,sp,-16
    80003374:	00813423          	sd	s0,8(sp)
    80003378:	01010413          	addi	s0,sp,16
    8000337c:	00020793          	mv	a5,tp
    80003380:	00813403          	ld	s0,8(sp)
    80003384:	0007879b          	sext.w	a5,a5
    80003388:	00779793          	slli	a5,a5,0x7
    8000338c:	00005517          	auipc	a0,0x5
    80003390:	f0450513          	addi	a0,a0,-252 # 80008290 <cpus>
    80003394:	00f50533          	add	a0,a0,a5
    80003398:	01010113          	addi	sp,sp,16
    8000339c:	00008067          	ret

00000000800033a0 <userinit>:
    800033a0:	ff010113          	addi	sp,sp,-16
    800033a4:	00813423          	sd	s0,8(sp)
    800033a8:	01010413          	addi	s0,sp,16
    800033ac:	00813403          	ld	s0,8(sp)
    800033b0:	01010113          	addi	sp,sp,16
    800033b4:	ffffe317          	auipc	t1,0xffffe
    800033b8:	7e030067          	jr	2016(t1) # 80001b94 <main>

00000000800033bc <either_copyout>:
    800033bc:	ff010113          	addi	sp,sp,-16
    800033c0:	00813023          	sd	s0,0(sp)
    800033c4:	00113423          	sd	ra,8(sp)
    800033c8:	01010413          	addi	s0,sp,16
    800033cc:	02051663          	bnez	a0,800033f8 <either_copyout+0x3c>
    800033d0:	00058513          	mv	a0,a1
    800033d4:	00060593          	mv	a1,a2
    800033d8:	0006861b          	sext.w	a2,a3
    800033dc:	00002097          	auipc	ra,0x2
    800033e0:	c58080e7          	jalr	-936(ra) # 80005034 <__memmove>
    800033e4:	00813083          	ld	ra,8(sp)
    800033e8:	00013403          	ld	s0,0(sp)
    800033ec:	00000513          	li	a0,0
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret
    800033f8:	00003517          	auipc	a0,0x3
    800033fc:	da050513          	addi	a0,a0,-608 # 80006198 <CONSOLE_STATUS+0x188>
    80003400:	00001097          	auipc	ra,0x1
    80003404:	92c080e7          	jalr	-1748(ra) # 80003d2c <panic>

0000000080003408 <either_copyin>:
    80003408:	ff010113          	addi	sp,sp,-16
    8000340c:	00813023          	sd	s0,0(sp)
    80003410:	00113423          	sd	ra,8(sp)
    80003414:	01010413          	addi	s0,sp,16
    80003418:	02059463          	bnez	a1,80003440 <either_copyin+0x38>
    8000341c:	00060593          	mv	a1,a2
    80003420:	0006861b          	sext.w	a2,a3
    80003424:	00002097          	auipc	ra,0x2
    80003428:	c10080e7          	jalr	-1008(ra) # 80005034 <__memmove>
    8000342c:	00813083          	ld	ra,8(sp)
    80003430:	00013403          	ld	s0,0(sp)
    80003434:	00000513          	li	a0,0
    80003438:	01010113          	addi	sp,sp,16
    8000343c:	00008067          	ret
    80003440:	00003517          	auipc	a0,0x3
    80003444:	d8050513          	addi	a0,a0,-640 # 800061c0 <CONSOLE_STATUS+0x1b0>
    80003448:	00001097          	auipc	ra,0x1
    8000344c:	8e4080e7          	jalr	-1820(ra) # 80003d2c <panic>

0000000080003450 <trapinit>:
    80003450:	ff010113          	addi	sp,sp,-16
    80003454:	00813423          	sd	s0,8(sp)
    80003458:	01010413          	addi	s0,sp,16
    8000345c:	00813403          	ld	s0,8(sp)
    80003460:	00003597          	auipc	a1,0x3
    80003464:	d8858593          	addi	a1,a1,-632 # 800061e8 <CONSOLE_STATUS+0x1d8>
    80003468:	00005517          	auipc	a0,0x5
    8000346c:	ea850513          	addi	a0,a0,-344 # 80008310 <tickslock>
    80003470:	01010113          	addi	sp,sp,16
    80003474:	00001317          	auipc	t1,0x1
    80003478:	5c430067          	jr	1476(t1) # 80004a38 <initlock>

000000008000347c <trapinithart>:
    8000347c:	ff010113          	addi	sp,sp,-16
    80003480:	00813423          	sd	s0,8(sp)
    80003484:	01010413          	addi	s0,sp,16
    80003488:	00000797          	auipc	a5,0x0
    8000348c:	2f878793          	addi	a5,a5,760 # 80003780 <kernelvec>
    80003490:	10579073          	csrw	stvec,a5
    80003494:	00813403          	ld	s0,8(sp)
    80003498:	01010113          	addi	sp,sp,16
    8000349c:	00008067          	ret

00000000800034a0 <usertrap>:
    800034a0:	ff010113          	addi	sp,sp,-16
    800034a4:	00813423          	sd	s0,8(sp)
    800034a8:	01010413          	addi	s0,sp,16
    800034ac:	00813403          	ld	s0,8(sp)
    800034b0:	01010113          	addi	sp,sp,16
    800034b4:	00008067          	ret

00000000800034b8 <usertrapret>:
    800034b8:	ff010113          	addi	sp,sp,-16
    800034bc:	00813423          	sd	s0,8(sp)
    800034c0:	01010413          	addi	s0,sp,16
    800034c4:	00813403          	ld	s0,8(sp)
    800034c8:	01010113          	addi	sp,sp,16
    800034cc:	00008067          	ret

00000000800034d0 <kerneltrap>:
    800034d0:	fe010113          	addi	sp,sp,-32
    800034d4:	00813823          	sd	s0,16(sp)
    800034d8:	00113c23          	sd	ra,24(sp)
    800034dc:	00913423          	sd	s1,8(sp)
    800034e0:	02010413          	addi	s0,sp,32
    800034e4:	142025f3          	csrr	a1,scause
    800034e8:	100027f3          	csrr	a5,sstatus
    800034ec:	0027f793          	andi	a5,a5,2
    800034f0:	10079c63          	bnez	a5,80003608 <kerneltrap+0x138>
    800034f4:	142027f3          	csrr	a5,scause
    800034f8:	0207ce63          	bltz	a5,80003534 <kerneltrap+0x64>
    800034fc:	00003517          	auipc	a0,0x3
    80003500:	d3450513          	addi	a0,a0,-716 # 80006230 <CONSOLE_STATUS+0x220>
    80003504:	00001097          	auipc	ra,0x1
    80003508:	884080e7          	jalr	-1916(ra) # 80003d88 <__printf>
    8000350c:	141025f3          	csrr	a1,sepc
    80003510:	14302673          	csrr	a2,stval
    80003514:	00003517          	auipc	a0,0x3
    80003518:	d2c50513          	addi	a0,a0,-724 # 80006240 <CONSOLE_STATUS+0x230>
    8000351c:	00001097          	auipc	ra,0x1
    80003520:	86c080e7          	jalr	-1940(ra) # 80003d88 <__printf>
    80003524:	00003517          	auipc	a0,0x3
    80003528:	d3450513          	addi	a0,a0,-716 # 80006258 <CONSOLE_STATUS+0x248>
    8000352c:	00001097          	auipc	ra,0x1
    80003530:	800080e7          	jalr	-2048(ra) # 80003d2c <panic>
    80003534:	0ff7f713          	andi	a4,a5,255
    80003538:	00900693          	li	a3,9
    8000353c:	04d70063          	beq	a4,a3,8000357c <kerneltrap+0xac>
    80003540:	fff00713          	li	a4,-1
    80003544:	03f71713          	slli	a4,a4,0x3f
    80003548:	00170713          	addi	a4,a4,1
    8000354c:	fae798e3          	bne	a5,a4,800034fc <kerneltrap+0x2c>
    80003550:	00000097          	auipc	ra,0x0
    80003554:	e00080e7          	jalr	-512(ra) # 80003350 <cpuid>
    80003558:	06050663          	beqz	a0,800035c4 <kerneltrap+0xf4>
    8000355c:	144027f3          	csrr	a5,sip
    80003560:	ffd7f793          	andi	a5,a5,-3
    80003564:	14479073          	csrw	sip,a5
    80003568:	01813083          	ld	ra,24(sp)
    8000356c:	01013403          	ld	s0,16(sp)
    80003570:	00813483          	ld	s1,8(sp)
    80003574:	02010113          	addi	sp,sp,32
    80003578:	00008067          	ret
    8000357c:	00000097          	auipc	ra,0x0
    80003580:	3c8080e7          	jalr	968(ra) # 80003944 <plic_claim>
    80003584:	00a00793          	li	a5,10
    80003588:	00050493          	mv	s1,a0
    8000358c:	06f50863          	beq	a0,a5,800035fc <kerneltrap+0x12c>
    80003590:	fc050ce3          	beqz	a0,80003568 <kerneltrap+0x98>
    80003594:	00050593          	mv	a1,a0
    80003598:	00003517          	auipc	a0,0x3
    8000359c:	c7850513          	addi	a0,a0,-904 # 80006210 <CONSOLE_STATUS+0x200>
    800035a0:	00000097          	auipc	ra,0x0
    800035a4:	7e8080e7          	jalr	2024(ra) # 80003d88 <__printf>
    800035a8:	01013403          	ld	s0,16(sp)
    800035ac:	01813083          	ld	ra,24(sp)
    800035b0:	00048513          	mv	a0,s1
    800035b4:	00813483          	ld	s1,8(sp)
    800035b8:	02010113          	addi	sp,sp,32
    800035bc:	00000317          	auipc	t1,0x0
    800035c0:	3c030067          	jr	960(t1) # 8000397c <plic_complete>
    800035c4:	00005517          	auipc	a0,0x5
    800035c8:	d4c50513          	addi	a0,a0,-692 # 80008310 <tickslock>
    800035cc:	00001097          	auipc	ra,0x1
    800035d0:	490080e7          	jalr	1168(ra) # 80004a5c <acquire>
    800035d4:	00004717          	auipc	a4,0x4
    800035d8:	c1070713          	addi	a4,a4,-1008 # 800071e4 <ticks>
    800035dc:	00072783          	lw	a5,0(a4)
    800035e0:	00005517          	auipc	a0,0x5
    800035e4:	d3050513          	addi	a0,a0,-720 # 80008310 <tickslock>
    800035e8:	0017879b          	addiw	a5,a5,1
    800035ec:	00f72023          	sw	a5,0(a4)
    800035f0:	00001097          	auipc	ra,0x1
    800035f4:	538080e7          	jalr	1336(ra) # 80004b28 <release>
    800035f8:	f65ff06f          	j	8000355c <kerneltrap+0x8c>
    800035fc:	00001097          	auipc	ra,0x1
    80003600:	094080e7          	jalr	148(ra) # 80004690 <uartintr>
    80003604:	fa5ff06f          	j	800035a8 <kerneltrap+0xd8>
    80003608:	00003517          	auipc	a0,0x3
    8000360c:	be850513          	addi	a0,a0,-1048 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003610:	00000097          	auipc	ra,0x0
    80003614:	71c080e7          	jalr	1820(ra) # 80003d2c <panic>

0000000080003618 <clockintr>:
    80003618:	fe010113          	addi	sp,sp,-32
    8000361c:	00813823          	sd	s0,16(sp)
    80003620:	00913423          	sd	s1,8(sp)
    80003624:	00113c23          	sd	ra,24(sp)
    80003628:	02010413          	addi	s0,sp,32
    8000362c:	00005497          	auipc	s1,0x5
    80003630:	ce448493          	addi	s1,s1,-796 # 80008310 <tickslock>
    80003634:	00048513          	mv	a0,s1
    80003638:	00001097          	auipc	ra,0x1
    8000363c:	424080e7          	jalr	1060(ra) # 80004a5c <acquire>
    80003640:	00004717          	auipc	a4,0x4
    80003644:	ba470713          	addi	a4,a4,-1116 # 800071e4 <ticks>
    80003648:	00072783          	lw	a5,0(a4)
    8000364c:	01013403          	ld	s0,16(sp)
    80003650:	01813083          	ld	ra,24(sp)
    80003654:	00048513          	mv	a0,s1
    80003658:	0017879b          	addiw	a5,a5,1
    8000365c:	00813483          	ld	s1,8(sp)
    80003660:	00f72023          	sw	a5,0(a4)
    80003664:	02010113          	addi	sp,sp,32
    80003668:	00001317          	auipc	t1,0x1
    8000366c:	4c030067          	jr	1216(t1) # 80004b28 <release>

0000000080003670 <devintr>:
    80003670:	142027f3          	csrr	a5,scause
    80003674:	00000513          	li	a0,0
    80003678:	0007c463          	bltz	a5,80003680 <devintr+0x10>
    8000367c:	00008067          	ret
    80003680:	fe010113          	addi	sp,sp,-32
    80003684:	00813823          	sd	s0,16(sp)
    80003688:	00113c23          	sd	ra,24(sp)
    8000368c:	00913423          	sd	s1,8(sp)
    80003690:	02010413          	addi	s0,sp,32
    80003694:	0ff7f713          	andi	a4,a5,255
    80003698:	00900693          	li	a3,9
    8000369c:	04d70c63          	beq	a4,a3,800036f4 <devintr+0x84>
    800036a0:	fff00713          	li	a4,-1
    800036a4:	03f71713          	slli	a4,a4,0x3f
    800036a8:	00170713          	addi	a4,a4,1
    800036ac:	00e78c63          	beq	a5,a4,800036c4 <devintr+0x54>
    800036b0:	01813083          	ld	ra,24(sp)
    800036b4:	01013403          	ld	s0,16(sp)
    800036b8:	00813483          	ld	s1,8(sp)
    800036bc:	02010113          	addi	sp,sp,32
    800036c0:	00008067          	ret
    800036c4:	00000097          	auipc	ra,0x0
    800036c8:	c8c080e7          	jalr	-884(ra) # 80003350 <cpuid>
    800036cc:	06050663          	beqz	a0,80003738 <devintr+0xc8>
    800036d0:	144027f3          	csrr	a5,sip
    800036d4:	ffd7f793          	andi	a5,a5,-3
    800036d8:	14479073          	csrw	sip,a5
    800036dc:	01813083          	ld	ra,24(sp)
    800036e0:	01013403          	ld	s0,16(sp)
    800036e4:	00813483          	ld	s1,8(sp)
    800036e8:	00200513          	li	a0,2
    800036ec:	02010113          	addi	sp,sp,32
    800036f0:	00008067          	ret
    800036f4:	00000097          	auipc	ra,0x0
    800036f8:	250080e7          	jalr	592(ra) # 80003944 <plic_claim>
    800036fc:	00a00793          	li	a5,10
    80003700:	00050493          	mv	s1,a0
    80003704:	06f50663          	beq	a0,a5,80003770 <devintr+0x100>
    80003708:	00100513          	li	a0,1
    8000370c:	fa0482e3          	beqz	s1,800036b0 <devintr+0x40>
    80003710:	00048593          	mv	a1,s1
    80003714:	00003517          	auipc	a0,0x3
    80003718:	afc50513          	addi	a0,a0,-1284 # 80006210 <CONSOLE_STATUS+0x200>
    8000371c:	00000097          	auipc	ra,0x0
    80003720:	66c080e7          	jalr	1644(ra) # 80003d88 <__printf>
    80003724:	00048513          	mv	a0,s1
    80003728:	00000097          	auipc	ra,0x0
    8000372c:	254080e7          	jalr	596(ra) # 8000397c <plic_complete>
    80003730:	00100513          	li	a0,1
    80003734:	f7dff06f          	j	800036b0 <devintr+0x40>
    80003738:	00005517          	auipc	a0,0x5
    8000373c:	bd850513          	addi	a0,a0,-1064 # 80008310 <tickslock>
    80003740:	00001097          	auipc	ra,0x1
    80003744:	31c080e7          	jalr	796(ra) # 80004a5c <acquire>
    80003748:	00004717          	auipc	a4,0x4
    8000374c:	a9c70713          	addi	a4,a4,-1380 # 800071e4 <ticks>
    80003750:	00072783          	lw	a5,0(a4)
    80003754:	00005517          	auipc	a0,0x5
    80003758:	bbc50513          	addi	a0,a0,-1092 # 80008310 <tickslock>
    8000375c:	0017879b          	addiw	a5,a5,1
    80003760:	00f72023          	sw	a5,0(a4)
    80003764:	00001097          	auipc	ra,0x1
    80003768:	3c4080e7          	jalr	964(ra) # 80004b28 <release>
    8000376c:	f65ff06f          	j	800036d0 <devintr+0x60>
    80003770:	00001097          	auipc	ra,0x1
    80003774:	f20080e7          	jalr	-224(ra) # 80004690 <uartintr>
    80003778:	fadff06f          	j	80003724 <devintr+0xb4>
    8000377c:	0000                	unimp
	...

0000000080003780 <kernelvec>:
    80003780:	f0010113          	addi	sp,sp,-256
    80003784:	00113023          	sd	ra,0(sp)
    80003788:	00213423          	sd	sp,8(sp)
    8000378c:	00313823          	sd	gp,16(sp)
    80003790:	00413c23          	sd	tp,24(sp)
    80003794:	02513023          	sd	t0,32(sp)
    80003798:	02613423          	sd	t1,40(sp)
    8000379c:	02713823          	sd	t2,48(sp)
    800037a0:	02813c23          	sd	s0,56(sp)
    800037a4:	04913023          	sd	s1,64(sp)
    800037a8:	04a13423          	sd	a0,72(sp)
    800037ac:	04b13823          	sd	a1,80(sp)
    800037b0:	04c13c23          	sd	a2,88(sp)
    800037b4:	06d13023          	sd	a3,96(sp)
    800037b8:	06e13423          	sd	a4,104(sp)
    800037bc:	06f13823          	sd	a5,112(sp)
    800037c0:	07013c23          	sd	a6,120(sp)
    800037c4:	09113023          	sd	a7,128(sp)
    800037c8:	09213423          	sd	s2,136(sp)
    800037cc:	09313823          	sd	s3,144(sp)
    800037d0:	09413c23          	sd	s4,152(sp)
    800037d4:	0b513023          	sd	s5,160(sp)
    800037d8:	0b613423          	sd	s6,168(sp)
    800037dc:	0b713823          	sd	s7,176(sp)
    800037e0:	0b813c23          	sd	s8,184(sp)
    800037e4:	0d913023          	sd	s9,192(sp)
    800037e8:	0da13423          	sd	s10,200(sp)
    800037ec:	0db13823          	sd	s11,208(sp)
    800037f0:	0dc13c23          	sd	t3,216(sp)
    800037f4:	0fd13023          	sd	t4,224(sp)
    800037f8:	0fe13423          	sd	t5,232(sp)
    800037fc:	0ff13823          	sd	t6,240(sp)
    80003800:	cd1ff0ef          	jal	ra,800034d0 <kerneltrap>
    80003804:	00013083          	ld	ra,0(sp)
    80003808:	00813103          	ld	sp,8(sp)
    8000380c:	01013183          	ld	gp,16(sp)
    80003810:	02013283          	ld	t0,32(sp)
    80003814:	02813303          	ld	t1,40(sp)
    80003818:	03013383          	ld	t2,48(sp)
    8000381c:	03813403          	ld	s0,56(sp)
    80003820:	04013483          	ld	s1,64(sp)
    80003824:	04813503          	ld	a0,72(sp)
    80003828:	05013583          	ld	a1,80(sp)
    8000382c:	05813603          	ld	a2,88(sp)
    80003830:	06013683          	ld	a3,96(sp)
    80003834:	06813703          	ld	a4,104(sp)
    80003838:	07013783          	ld	a5,112(sp)
    8000383c:	07813803          	ld	a6,120(sp)
    80003840:	08013883          	ld	a7,128(sp)
    80003844:	08813903          	ld	s2,136(sp)
    80003848:	09013983          	ld	s3,144(sp)
    8000384c:	09813a03          	ld	s4,152(sp)
    80003850:	0a013a83          	ld	s5,160(sp)
    80003854:	0a813b03          	ld	s6,168(sp)
    80003858:	0b013b83          	ld	s7,176(sp)
    8000385c:	0b813c03          	ld	s8,184(sp)
    80003860:	0c013c83          	ld	s9,192(sp)
    80003864:	0c813d03          	ld	s10,200(sp)
    80003868:	0d013d83          	ld	s11,208(sp)
    8000386c:	0d813e03          	ld	t3,216(sp)
    80003870:	0e013e83          	ld	t4,224(sp)
    80003874:	0e813f03          	ld	t5,232(sp)
    80003878:	0f013f83          	ld	t6,240(sp)
    8000387c:	10010113          	addi	sp,sp,256
    80003880:	10200073          	sret
    80003884:	00000013          	nop
    80003888:	00000013          	nop
    8000388c:	00000013          	nop

0000000080003890 <timervec>:
    80003890:	34051573          	csrrw	a0,mscratch,a0
    80003894:	00b53023          	sd	a1,0(a0)
    80003898:	00c53423          	sd	a2,8(a0)
    8000389c:	00d53823          	sd	a3,16(a0)
    800038a0:	01853583          	ld	a1,24(a0)
    800038a4:	02053603          	ld	a2,32(a0)
    800038a8:	0005b683          	ld	a3,0(a1)
    800038ac:	00c686b3          	add	a3,a3,a2
    800038b0:	00d5b023          	sd	a3,0(a1)
    800038b4:	00200593          	li	a1,2
    800038b8:	14459073          	csrw	sip,a1
    800038bc:	01053683          	ld	a3,16(a0)
    800038c0:	00853603          	ld	a2,8(a0)
    800038c4:	00053583          	ld	a1,0(a0)
    800038c8:	34051573          	csrrw	a0,mscratch,a0
    800038cc:	30200073          	mret

00000000800038d0 <plicinit>:
    800038d0:	ff010113          	addi	sp,sp,-16
    800038d4:	00813423          	sd	s0,8(sp)
    800038d8:	01010413          	addi	s0,sp,16
    800038dc:	00813403          	ld	s0,8(sp)
    800038e0:	0c0007b7          	lui	a5,0xc000
    800038e4:	00100713          	li	a4,1
    800038e8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800038ec:	00e7a223          	sw	a4,4(a5)
    800038f0:	01010113          	addi	sp,sp,16
    800038f4:	00008067          	ret

00000000800038f8 <plicinithart>:
    800038f8:	ff010113          	addi	sp,sp,-16
    800038fc:	00813023          	sd	s0,0(sp)
    80003900:	00113423          	sd	ra,8(sp)
    80003904:	01010413          	addi	s0,sp,16
    80003908:	00000097          	auipc	ra,0x0
    8000390c:	a48080e7          	jalr	-1464(ra) # 80003350 <cpuid>
    80003910:	0085171b          	slliw	a4,a0,0x8
    80003914:	0c0027b7          	lui	a5,0xc002
    80003918:	00e787b3          	add	a5,a5,a4
    8000391c:	40200713          	li	a4,1026
    80003920:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003924:	00813083          	ld	ra,8(sp)
    80003928:	00013403          	ld	s0,0(sp)
    8000392c:	00d5151b          	slliw	a0,a0,0xd
    80003930:	0c2017b7          	lui	a5,0xc201
    80003934:	00a78533          	add	a0,a5,a0
    80003938:	00052023          	sw	zero,0(a0)
    8000393c:	01010113          	addi	sp,sp,16
    80003940:	00008067          	ret

0000000080003944 <plic_claim>:
    80003944:	ff010113          	addi	sp,sp,-16
    80003948:	00813023          	sd	s0,0(sp)
    8000394c:	00113423          	sd	ra,8(sp)
    80003950:	01010413          	addi	s0,sp,16
    80003954:	00000097          	auipc	ra,0x0
    80003958:	9fc080e7          	jalr	-1540(ra) # 80003350 <cpuid>
    8000395c:	00813083          	ld	ra,8(sp)
    80003960:	00013403          	ld	s0,0(sp)
    80003964:	00d5151b          	slliw	a0,a0,0xd
    80003968:	0c2017b7          	lui	a5,0xc201
    8000396c:	00a78533          	add	a0,a5,a0
    80003970:	00452503          	lw	a0,4(a0)
    80003974:	01010113          	addi	sp,sp,16
    80003978:	00008067          	ret

000000008000397c <plic_complete>:
    8000397c:	fe010113          	addi	sp,sp,-32
    80003980:	00813823          	sd	s0,16(sp)
    80003984:	00913423          	sd	s1,8(sp)
    80003988:	00113c23          	sd	ra,24(sp)
    8000398c:	02010413          	addi	s0,sp,32
    80003990:	00050493          	mv	s1,a0
    80003994:	00000097          	auipc	ra,0x0
    80003998:	9bc080e7          	jalr	-1604(ra) # 80003350 <cpuid>
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	00d5179b          	slliw	a5,a0,0xd
    800039a8:	0c201737          	lui	a4,0xc201
    800039ac:	00f707b3          	add	a5,a4,a5
    800039b0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800039b4:	00813483          	ld	s1,8(sp)
    800039b8:	02010113          	addi	sp,sp,32
    800039bc:	00008067          	ret

00000000800039c0 <consolewrite>:
    800039c0:	fb010113          	addi	sp,sp,-80
    800039c4:	04813023          	sd	s0,64(sp)
    800039c8:	04113423          	sd	ra,72(sp)
    800039cc:	02913c23          	sd	s1,56(sp)
    800039d0:	03213823          	sd	s2,48(sp)
    800039d4:	03313423          	sd	s3,40(sp)
    800039d8:	03413023          	sd	s4,32(sp)
    800039dc:	01513c23          	sd	s5,24(sp)
    800039e0:	05010413          	addi	s0,sp,80
    800039e4:	06c05c63          	blez	a2,80003a5c <consolewrite+0x9c>
    800039e8:	00060993          	mv	s3,a2
    800039ec:	00050a13          	mv	s4,a0
    800039f0:	00058493          	mv	s1,a1
    800039f4:	00000913          	li	s2,0
    800039f8:	fff00a93          	li	s5,-1
    800039fc:	01c0006f          	j	80003a18 <consolewrite+0x58>
    80003a00:	fbf44503          	lbu	a0,-65(s0)
    80003a04:	0019091b          	addiw	s2,s2,1
    80003a08:	00148493          	addi	s1,s1,1
    80003a0c:	00001097          	auipc	ra,0x1
    80003a10:	a9c080e7          	jalr	-1380(ra) # 800044a8 <uartputc>
    80003a14:	03298063          	beq	s3,s2,80003a34 <consolewrite+0x74>
    80003a18:	00048613          	mv	a2,s1
    80003a1c:	00100693          	li	a3,1
    80003a20:	000a0593          	mv	a1,s4
    80003a24:	fbf40513          	addi	a0,s0,-65
    80003a28:	00000097          	auipc	ra,0x0
    80003a2c:	9e0080e7          	jalr	-1568(ra) # 80003408 <either_copyin>
    80003a30:	fd5518e3          	bne	a0,s5,80003a00 <consolewrite+0x40>
    80003a34:	04813083          	ld	ra,72(sp)
    80003a38:	04013403          	ld	s0,64(sp)
    80003a3c:	03813483          	ld	s1,56(sp)
    80003a40:	02813983          	ld	s3,40(sp)
    80003a44:	02013a03          	ld	s4,32(sp)
    80003a48:	01813a83          	ld	s5,24(sp)
    80003a4c:	00090513          	mv	a0,s2
    80003a50:	03013903          	ld	s2,48(sp)
    80003a54:	05010113          	addi	sp,sp,80
    80003a58:	00008067          	ret
    80003a5c:	00000913          	li	s2,0
    80003a60:	fd5ff06f          	j	80003a34 <consolewrite+0x74>

0000000080003a64 <consoleread>:
    80003a64:	f9010113          	addi	sp,sp,-112
    80003a68:	06813023          	sd	s0,96(sp)
    80003a6c:	04913c23          	sd	s1,88(sp)
    80003a70:	05213823          	sd	s2,80(sp)
    80003a74:	05313423          	sd	s3,72(sp)
    80003a78:	05413023          	sd	s4,64(sp)
    80003a7c:	03513c23          	sd	s5,56(sp)
    80003a80:	03613823          	sd	s6,48(sp)
    80003a84:	03713423          	sd	s7,40(sp)
    80003a88:	03813023          	sd	s8,32(sp)
    80003a8c:	06113423          	sd	ra,104(sp)
    80003a90:	01913c23          	sd	s9,24(sp)
    80003a94:	07010413          	addi	s0,sp,112
    80003a98:	00060b93          	mv	s7,a2
    80003a9c:	00050913          	mv	s2,a0
    80003aa0:	00058c13          	mv	s8,a1
    80003aa4:	00060b1b          	sext.w	s6,a2
    80003aa8:	00005497          	auipc	s1,0x5
    80003aac:	89048493          	addi	s1,s1,-1904 # 80008338 <cons>
    80003ab0:	00400993          	li	s3,4
    80003ab4:	fff00a13          	li	s4,-1
    80003ab8:	00a00a93          	li	s5,10
    80003abc:	05705e63          	blez	s7,80003b18 <consoleread+0xb4>
    80003ac0:	09c4a703          	lw	a4,156(s1)
    80003ac4:	0984a783          	lw	a5,152(s1)
    80003ac8:	0007071b          	sext.w	a4,a4
    80003acc:	08e78463          	beq	a5,a4,80003b54 <consoleread+0xf0>
    80003ad0:	07f7f713          	andi	a4,a5,127
    80003ad4:	00e48733          	add	a4,s1,a4
    80003ad8:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003adc:	0017869b          	addiw	a3,a5,1
    80003ae0:	08d4ac23          	sw	a3,152(s1)
    80003ae4:	00070c9b          	sext.w	s9,a4
    80003ae8:	0b370663          	beq	a4,s3,80003b94 <consoleread+0x130>
    80003aec:	00100693          	li	a3,1
    80003af0:	f9f40613          	addi	a2,s0,-97
    80003af4:	000c0593          	mv	a1,s8
    80003af8:	00090513          	mv	a0,s2
    80003afc:	f8e40fa3          	sb	a4,-97(s0)
    80003b00:	00000097          	auipc	ra,0x0
    80003b04:	8bc080e7          	jalr	-1860(ra) # 800033bc <either_copyout>
    80003b08:	01450863          	beq	a0,s4,80003b18 <consoleread+0xb4>
    80003b0c:	001c0c13          	addi	s8,s8,1
    80003b10:	fffb8b9b          	addiw	s7,s7,-1
    80003b14:	fb5c94e3          	bne	s9,s5,80003abc <consoleread+0x58>
    80003b18:	000b851b          	sext.w	a0,s7
    80003b1c:	06813083          	ld	ra,104(sp)
    80003b20:	06013403          	ld	s0,96(sp)
    80003b24:	05813483          	ld	s1,88(sp)
    80003b28:	05013903          	ld	s2,80(sp)
    80003b2c:	04813983          	ld	s3,72(sp)
    80003b30:	04013a03          	ld	s4,64(sp)
    80003b34:	03813a83          	ld	s5,56(sp)
    80003b38:	02813b83          	ld	s7,40(sp)
    80003b3c:	02013c03          	ld	s8,32(sp)
    80003b40:	01813c83          	ld	s9,24(sp)
    80003b44:	40ab053b          	subw	a0,s6,a0
    80003b48:	03013b03          	ld	s6,48(sp)
    80003b4c:	07010113          	addi	sp,sp,112
    80003b50:	00008067          	ret
    80003b54:	00001097          	auipc	ra,0x1
    80003b58:	1d8080e7          	jalr	472(ra) # 80004d2c <push_on>
    80003b5c:	0984a703          	lw	a4,152(s1)
    80003b60:	09c4a783          	lw	a5,156(s1)
    80003b64:	0007879b          	sext.w	a5,a5
    80003b68:	fef70ce3          	beq	a4,a5,80003b60 <consoleread+0xfc>
    80003b6c:	00001097          	auipc	ra,0x1
    80003b70:	234080e7          	jalr	564(ra) # 80004da0 <pop_on>
    80003b74:	0984a783          	lw	a5,152(s1)
    80003b78:	07f7f713          	andi	a4,a5,127
    80003b7c:	00e48733          	add	a4,s1,a4
    80003b80:	01874703          	lbu	a4,24(a4)
    80003b84:	0017869b          	addiw	a3,a5,1
    80003b88:	08d4ac23          	sw	a3,152(s1)
    80003b8c:	00070c9b          	sext.w	s9,a4
    80003b90:	f5371ee3          	bne	a4,s3,80003aec <consoleread+0x88>
    80003b94:	000b851b          	sext.w	a0,s7
    80003b98:	f96bf2e3          	bgeu	s7,s6,80003b1c <consoleread+0xb8>
    80003b9c:	08f4ac23          	sw	a5,152(s1)
    80003ba0:	f7dff06f          	j	80003b1c <consoleread+0xb8>

0000000080003ba4 <consputc>:
    80003ba4:	10000793          	li	a5,256
    80003ba8:	00f50663          	beq	a0,a5,80003bb4 <consputc+0x10>
    80003bac:	00001317          	auipc	t1,0x1
    80003bb0:	9f430067          	jr	-1548(t1) # 800045a0 <uartputc_sync>
    80003bb4:	ff010113          	addi	sp,sp,-16
    80003bb8:	00113423          	sd	ra,8(sp)
    80003bbc:	00813023          	sd	s0,0(sp)
    80003bc0:	01010413          	addi	s0,sp,16
    80003bc4:	00800513          	li	a0,8
    80003bc8:	00001097          	auipc	ra,0x1
    80003bcc:	9d8080e7          	jalr	-1576(ra) # 800045a0 <uartputc_sync>
    80003bd0:	02000513          	li	a0,32
    80003bd4:	00001097          	auipc	ra,0x1
    80003bd8:	9cc080e7          	jalr	-1588(ra) # 800045a0 <uartputc_sync>
    80003bdc:	00013403          	ld	s0,0(sp)
    80003be0:	00813083          	ld	ra,8(sp)
    80003be4:	00800513          	li	a0,8
    80003be8:	01010113          	addi	sp,sp,16
    80003bec:	00001317          	auipc	t1,0x1
    80003bf0:	9b430067          	jr	-1612(t1) # 800045a0 <uartputc_sync>

0000000080003bf4 <consoleintr>:
    80003bf4:	fe010113          	addi	sp,sp,-32
    80003bf8:	00813823          	sd	s0,16(sp)
    80003bfc:	00913423          	sd	s1,8(sp)
    80003c00:	01213023          	sd	s2,0(sp)
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	02010413          	addi	s0,sp,32
    80003c0c:	00004917          	auipc	s2,0x4
    80003c10:	72c90913          	addi	s2,s2,1836 # 80008338 <cons>
    80003c14:	00050493          	mv	s1,a0
    80003c18:	00090513          	mv	a0,s2
    80003c1c:	00001097          	auipc	ra,0x1
    80003c20:	e40080e7          	jalr	-448(ra) # 80004a5c <acquire>
    80003c24:	02048c63          	beqz	s1,80003c5c <consoleintr+0x68>
    80003c28:	0a092783          	lw	a5,160(s2)
    80003c2c:	09892703          	lw	a4,152(s2)
    80003c30:	07f00693          	li	a3,127
    80003c34:	40e7873b          	subw	a4,a5,a4
    80003c38:	02e6e263          	bltu	a3,a4,80003c5c <consoleintr+0x68>
    80003c3c:	00d00713          	li	a4,13
    80003c40:	04e48063          	beq	s1,a4,80003c80 <consoleintr+0x8c>
    80003c44:	07f7f713          	andi	a4,a5,127
    80003c48:	00e90733          	add	a4,s2,a4
    80003c4c:	0017879b          	addiw	a5,a5,1
    80003c50:	0af92023          	sw	a5,160(s2)
    80003c54:	00970c23          	sb	s1,24(a4)
    80003c58:	08f92e23          	sw	a5,156(s2)
    80003c5c:	01013403          	ld	s0,16(sp)
    80003c60:	01813083          	ld	ra,24(sp)
    80003c64:	00813483          	ld	s1,8(sp)
    80003c68:	00013903          	ld	s2,0(sp)
    80003c6c:	00004517          	auipc	a0,0x4
    80003c70:	6cc50513          	addi	a0,a0,1740 # 80008338 <cons>
    80003c74:	02010113          	addi	sp,sp,32
    80003c78:	00001317          	auipc	t1,0x1
    80003c7c:	eb030067          	jr	-336(t1) # 80004b28 <release>
    80003c80:	00a00493          	li	s1,10
    80003c84:	fc1ff06f          	j	80003c44 <consoleintr+0x50>

0000000080003c88 <consoleinit>:
    80003c88:	fe010113          	addi	sp,sp,-32
    80003c8c:	00113c23          	sd	ra,24(sp)
    80003c90:	00813823          	sd	s0,16(sp)
    80003c94:	00913423          	sd	s1,8(sp)
    80003c98:	02010413          	addi	s0,sp,32
    80003c9c:	00004497          	auipc	s1,0x4
    80003ca0:	69c48493          	addi	s1,s1,1692 # 80008338 <cons>
    80003ca4:	00048513          	mv	a0,s1
    80003ca8:	00002597          	auipc	a1,0x2
    80003cac:	5c058593          	addi	a1,a1,1472 # 80006268 <CONSOLE_STATUS+0x258>
    80003cb0:	00001097          	auipc	ra,0x1
    80003cb4:	d88080e7          	jalr	-632(ra) # 80004a38 <initlock>
    80003cb8:	00000097          	auipc	ra,0x0
    80003cbc:	7ac080e7          	jalr	1964(ra) # 80004464 <uartinit>
    80003cc0:	01813083          	ld	ra,24(sp)
    80003cc4:	01013403          	ld	s0,16(sp)
    80003cc8:	00000797          	auipc	a5,0x0
    80003ccc:	d9c78793          	addi	a5,a5,-612 # 80003a64 <consoleread>
    80003cd0:	0af4bc23          	sd	a5,184(s1)
    80003cd4:	00000797          	auipc	a5,0x0
    80003cd8:	cec78793          	addi	a5,a5,-788 # 800039c0 <consolewrite>
    80003cdc:	0cf4b023          	sd	a5,192(s1)
    80003ce0:	00813483          	ld	s1,8(sp)
    80003ce4:	02010113          	addi	sp,sp,32
    80003ce8:	00008067          	ret

0000000080003cec <console_read>:
    80003cec:	ff010113          	addi	sp,sp,-16
    80003cf0:	00813423          	sd	s0,8(sp)
    80003cf4:	01010413          	addi	s0,sp,16
    80003cf8:	00813403          	ld	s0,8(sp)
    80003cfc:	00004317          	auipc	t1,0x4
    80003d00:	6f433303          	ld	t1,1780(t1) # 800083f0 <devsw+0x10>
    80003d04:	01010113          	addi	sp,sp,16
    80003d08:	00030067          	jr	t1

0000000080003d0c <console_write>:
    80003d0c:	ff010113          	addi	sp,sp,-16
    80003d10:	00813423          	sd	s0,8(sp)
    80003d14:	01010413          	addi	s0,sp,16
    80003d18:	00813403          	ld	s0,8(sp)
    80003d1c:	00004317          	auipc	t1,0x4
    80003d20:	6dc33303          	ld	t1,1756(t1) # 800083f8 <devsw+0x18>
    80003d24:	01010113          	addi	sp,sp,16
    80003d28:	00030067          	jr	t1

0000000080003d2c <panic>:
    80003d2c:	fe010113          	addi	sp,sp,-32
    80003d30:	00113c23          	sd	ra,24(sp)
    80003d34:	00813823          	sd	s0,16(sp)
    80003d38:	00913423          	sd	s1,8(sp)
    80003d3c:	02010413          	addi	s0,sp,32
    80003d40:	00050493          	mv	s1,a0
    80003d44:	00002517          	auipc	a0,0x2
    80003d48:	52c50513          	addi	a0,a0,1324 # 80006270 <CONSOLE_STATUS+0x260>
    80003d4c:	00004797          	auipc	a5,0x4
    80003d50:	7407a623          	sw	zero,1868(a5) # 80008498 <pr+0x18>
    80003d54:	00000097          	auipc	ra,0x0
    80003d58:	034080e7          	jalr	52(ra) # 80003d88 <__printf>
    80003d5c:	00048513          	mv	a0,s1
    80003d60:	00000097          	auipc	ra,0x0
    80003d64:	028080e7          	jalr	40(ra) # 80003d88 <__printf>
    80003d68:	00002517          	auipc	a0,0x2
    80003d6c:	4e850513          	addi	a0,a0,1256 # 80006250 <CONSOLE_STATUS+0x240>
    80003d70:	00000097          	auipc	ra,0x0
    80003d74:	018080e7          	jalr	24(ra) # 80003d88 <__printf>
    80003d78:	00100793          	li	a5,1
    80003d7c:	00003717          	auipc	a4,0x3
    80003d80:	46f72623          	sw	a5,1132(a4) # 800071e8 <panicked>
    80003d84:	0000006f          	j	80003d84 <panic+0x58>

0000000080003d88 <__printf>:
    80003d88:	f3010113          	addi	sp,sp,-208
    80003d8c:	08813023          	sd	s0,128(sp)
    80003d90:	07313423          	sd	s3,104(sp)
    80003d94:	09010413          	addi	s0,sp,144
    80003d98:	05813023          	sd	s8,64(sp)
    80003d9c:	08113423          	sd	ra,136(sp)
    80003da0:	06913c23          	sd	s1,120(sp)
    80003da4:	07213823          	sd	s2,112(sp)
    80003da8:	07413023          	sd	s4,96(sp)
    80003dac:	05513c23          	sd	s5,88(sp)
    80003db0:	05613823          	sd	s6,80(sp)
    80003db4:	05713423          	sd	s7,72(sp)
    80003db8:	03913c23          	sd	s9,56(sp)
    80003dbc:	03a13823          	sd	s10,48(sp)
    80003dc0:	03b13423          	sd	s11,40(sp)
    80003dc4:	00004317          	auipc	t1,0x4
    80003dc8:	6bc30313          	addi	t1,t1,1724 # 80008480 <pr>
    80003dcc:	01832c03          	lw	s8,24(t1)
    80003dd0:	00b43423          	sd	a1,8(s0)
    80003dd4:	00c43823          	sd	a2,16(s0)
    80003dd8:	00d43c23          	sd	a3,24(s0)
    80003ddc:	02e43023          	sd	a4,32(s0)
    80003de0:	02f43423          	sd	a5,40(s0)
    80003de4:	03043823          	sd	a6,48(s0)
    80003de8:	03143c23          	sd	a7,56(s0)
    80003dec:	00050993          	mv	s3,a0
    80003df0:	4a0c1663          	bnez	s8,8000429c <__printf+0x514>
    80003df4:	60098c63          	beqz	s3,8000440c <__printf+0x684>
    80003df8:	0009c503          	lbu	a0,0(s3)
    80003dfc:	00840793          	addi	a5,s0,8
    80003e00:	f6f43c23          	sd	a5,-136(s0)
    80003e04:	00000493          	li	s1,0
    80003e08:	22050063          	beqz	a0,80004028 <__printf+0x2a0>
    80003e0c:	00002a37          	lui	s4,0x2
    80003e10:	00018ab7          	lui	s5,0x18
    80003e14:	000f4b37          	lui	s6,0xf4
    80003e18:	00989bb7          	lui	s7,0x989
    80003e1c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80003e20:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80003e24:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80003e28:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80003e2c:	00148c9b          	addiw	s9,s1,1
    80003e30:	02500793          	li	a5,37
    80003e34:	01998933          	add	s2,s3,s9
    80003e38:	38f51263          	bne	a0,a5,800041bc <__printf+0x434>
    80003e3c:	00094783          	lbu	a5,0(s2)
    80003e40:	00078c9b          	sext.w	s9,a5
    80003e44:	1e078263          	beqz	a5,80004028 <__printf+0x2a0>
    80003e48:	0024849b          	addiw	s1,s1,2
    80003e4c:	07000713          	li	a4,112
    80003e50:	00998933          	add	s2,s3,s1
    80003e54:	38e78a63          	beq	a5,a4,800041e8 <__printf+0x460>
    80003e58:	20f76863          	bltu	a4,a5,80004068 <__printf+0x2e0>
    80003e5c:	42a78863          	beq	a5,a0,8000428c <__printf+0x504>
    80003e60:	06400713          	li	a4,100
    80003e64:	40e79663          	bne	a5,a4,80004270 <__printf+0x4e8>
    80003e68:	f7843783          	ld	a5,-136(s0)
    80003e6c:	0007a603          	lw	a2,0(a5)
    80003e70:	00878793          	addi	a5,a5,8
    80003e74:	f6f43c23          	sd	a5,-136(s0)
    80003e78:	42064a63          	bltz	a2,800042ac <__printf+0x524>
    80003e7c:	00a00713          	li	a4,10
    80003e80:	02e677bb          	remuw	a5,a2,a4
    80003e84:	00002d97          	auipc	s11,0x2
    80003e88:	414d8d93          	addi	s11,s11,1044 # 80006298 <digits>
    80003e8c:	00900593          	li	a1,9
    80003e90:	0006051b          	sext.w	a0,a2
    80003e94:	00000c93          	li	s9,0
    80003e98:	02079793          	slli	a5,a5,0x20
    80003e9c:	0207d793          	srli	a5,a5,0x20
    80003ea0:	00fd87b3          	add	a5,s11,a5
    80003ea4:	0007c783          	lbu	a5,0(a5)
    80003ea8:	02e656bb          	divuw	a3,a2,a4
    80003eac:	f8f40023          	sb	a5,-128(s0)
    80003eb0:	14c5d863          	bge	a1,a2,80004000 <__printf+0x278>
    80003eb4:	06300593          	li	a1,99
    80003eb8:	00100c93          	li	s9,1
    80003ebc:	02e6f7bb          	remuw	a5,a3,a4
    80003ec0:	02079793          	slli	a5,a5,0x20
    80003ec4:	0207d793          	srli	a5,a5,0x20
    80003ec8:	00fd87b3          	add	a5,s11,a5
    80003ecc:	0007c783          	lbu	a5,0(a5)
    80003ed0:	02e6d73b          	divuw	a4,a3,a4
    80003ed4:	f8f400a3          	sb	a5,-127(s0)
    80003ed8:	12a5f463          	bgeu	a1,a0,80004000 <__printf+0x278>
    80003edc:	00a00693          	li	a3,10
    80003ee0:	00900593          	li	a1,9
    80003ee4:	02d777bb          	remuw	a5,a4,a3
    80003ee8:	02079793          	slli	a5,a5,0x20
    80003eec:	0207d793          	srli	a5,a5,0x20
    80003ef0:	00fd87b3          	add	a5,s11,a5
    80003ef4:	0007c503          	lbu	a0,0(a5)
    80003ef8:	02d757bb          	divuw	a5,a4,a3
    80003efc:	f8a40123          	sb	a0,-126(s0)
    80003f00:	48e5f263          	bgeu	a1,a4,80004384 <__printf+0x5fc>
    80003f04:	06300513          	li	a0,99
    80003f08:	02d7f5bb          	remuw	a1,a5,a3
    80003f0c:	02059593          	slli	a1,a1,0x20
    80003f10:	0205d593          	srli	a1,a1,0x20
    80003f14:	00bd85b3          	add	a1,s11,a1
    80003f18:	0005c583          	lbu	a1,0(a1)
    80003f1c:	02d7d7bb          	divuw	a5,a5,a3
    80003f20:	f8b401a3          	sb	a1,-125(s0)
    80003f24:	48e57263          	bgeu	a0,a4,800043a8 <__printf+0x620>
    80003f28:	3e700513          	li	a0,999
    80003f2c:	02d7f5bb          	remuw	a1,a5,a3
    80003f30:	02059593          	slli	a1,a1,0x20
    80003f34:	0205d593          	srli	a1,a1,0x20
    80003f38:	00bd85b3          	add	a1,s11,a1
    80003f3c:	0005c583          	lbu	a1,0(a1)
    80003f40:	02d7d7bb          	divuw	a5,a5,a3
    80003f44:	f8b40223          	sb	a1,-124(s0)
    80003f48:	46e57663          	bgeu	a0,a4,800043b4 <__printf+0x62c>
    80003f4c:	02d7f5bb          	remuw	a1,a5,a3
    80003f50:	02059593          	slli	a1,a1,0x20
    80003f54:	0205d593          	srli	a1,a1,0x20
    80003f58:	00bd85b3          	add	a1,s11,a1
    80003f5c:	0005c583          	lbu	a1,0(a1)
    80003f60:	02d7d7bb          	divuw	a5,a5,a3
    80003f64:	f8b402a3          	sb	a1,-123(s0)
    80003f68:	46ea7863          	bgeu	s4,a4,800043d8 <__printf+0x650>
    80003f6c:	02d7f5bb          	remuw	a1,a5,a3
    80003f70:	02059593          	slli	a1,a1,0x20
    80003f74:	0205d593          	srli	a1,a1,0x20
    80003f78:	00bd85b3          	add	a1,s11,a1
    80003f7c:	0005c583          	lbu	a1,0(a1)
    80003f80:	02d7d7bb          	divuw	a5,a5,a3
    80003f84:	f8b40323          	sb	a1,-122(s0)
    80003f88:	3eeaf863          	bgeu	s5,a4,80004378 <__printf+0x5f0>
    80003f8c:	02d7f5bb          	remuw	a1,a5,a3
    80003f90:	02059593          	slli	a1,a1,0x20
    80003f94:	0205d593          	srli	a1,a1,0x20
    80003f98:	00bd85b3          	add	a1,s11,a1
    80003f9c:	0005c583          	lbu	a1,0(a1)
    80003fa0:	02d7d7bb          	divuw	a5,a5,a3
    80003fa4:	f8b403a3          	sb	a1,-121(s0)
    80003fa8:	42eb7e63          	bgeu	s6,a4,800043e4 <__printf+0x65c>
    80003fac:	02d7f5bb          	remuw	a1,a5,a3
    80003fb0:	02059593          	slli	a1,a1,0x20
    80003fb4:	0205d593          	srli	a1,a1,0x20
    80003fb8:	00bd85b3          	add	a1,s11,a1
    80003fbc:	0005c583          	lbu	a1,0(a1)
    80003fc0:	02d7d7bb          	divuw	a5,a5,a3
    80003fc4:	f8b40423          	sb	a1,-120(s0)
    80003fc8:	42ebfc63          	bgeu	s7,a4,80004400 <__printf+0x678>
    80003fcc:	02079793          	slli	a5,a5,0x20
    80003fd0:	0207d793          	srli	a5,a5,0x20
    80003fd4:	00fd8db3          	add	s11,s11,a5
    80003fd8:	000dc703          	lbu	a4,0(s11)
    80003fdc:	00a00793          	li	a5,10
    80003fe0:	00900c93          	li	s9,9
    80003fe4:	f8e404a3          	sb	a4,-119(s0)
    80003fe8:	00065c63          	bgez	a2,80004000 <__printf+0x278>
    80003fec:	f9040713          	addi	a4,s0,-112
    80003ff0:	00f70733          	add	a4,a4,a5
    80003ff4:	02d00693          	li	a3,45
    80003ff8:	fed70823          	sb	a3,-16(a4)
    80003ffc:	00078c93          	mv	s9,a5
    80004000:	f8040793          	addi	a5,s0,-128
    80004004:	01978cb3          	add	s9,a5,s9
    80004008:	f7f40d13          	addi	s10,s0,-129
    8000400c:	000cc503          	lbu	a0,0(s9)
    80004010:	fffc8c93          	addi	s9,s9,-1
    80004014:	00000097          	auipc	ra,0x0
    80004018:	b90080e7          	jalr	-1136(ra) # 80003ba4 <consputc>
    8000401c:	ffac98e3          	bne	s9,s10,8000400c <__printf+0x284>
    80004020:	00094503          	lbu	a0,0(s2)
    80004024:	e00514e3          	bnez	a0,80003e2c <__printf+0xa4>
    80004028:	1a0c1663          	bnez	s8,800041d4 <__printf+0x44c>
    8000402c:	08813083          	ld	ra,136(sp)
    80004030:	08013403          	ld	s0,128(sp)
    80004034:	07813483          	ld	s1,120(sp)
    80004038:	07013903          	ld	s2,112(sp)
    8000403c:	06813983          	ld	s3,104(sp)
    80004040:	06013a03          	ld	s4,96(sp)
    80004044:	05813a83          	ld	s5,88(sp)
    80004048:	05013b03          	ld	s6,80(sp)
    8000404c:	04813b83          	ld	s7,72(sp)
    80004050:	04013c03          	ld	s8,64(sp)
    80004054:	03813c83          	ld	s9,56(sp)
    80004058:	03013d03          	ld	s10,48(sp)
    8000405c:	02813d83          	ld	s11,40(sp)
    80004060:	0d010113          	addi	sp,sp,208
    80004064:	00008067          	ret
    80004068:	07300713          	li	a4,115
    8000406c:	1ce78a63          	beq	a5,a4,80004240 <__printf+0x4b8>
    80004070:	07800713          	li	a4,120
    80004074:	1ee79e63          	bne	a5,a4,80004270 <__printf+0x4e8>
    80004078:	f7843783          	ld	a5,-136(s0)
    8000407c:	0007a703          	lw	a4,0(a5)
    80004080:	00878793          	addi	a5,a5,8
    80004084:	f6f43c23          	sd	a5,-136(s0)
    80004088:	28074263          	bltz	a4,8000430c <__printf+0x584>
    8000408c:	00002d97          	auipc	s11,0x2
    80004090:	20cd8d93          	addi	s11,s11,524 # 80006298 <digits>
    80004094:	00f77793          	andi	a5,a4,15
    80004098:	00fd87b3          	add	a5,s11,a5
    8000409c:	0007c683          	lbu	a3,0(a5)
    800040a0:	00f00613          	li	a2,15
    800040a4:	0007079b          	sext.w	a5,a4
    800040a8:	f8d40023          	sb	a3,-128(s0)
    800040ac:	0047559b          	srliw	a1,a4,0x4
    800040b0:	0047569b          	srliw	a3,a4,0x4
    800040b4:	00000c93          	li	s9,0
    800040b8:	0ee65063          	bge	a2,a4,80004198 <__printf+0x410>
    800040bc:	00f6f693          	andi	a3,a3,15
    800040c0:	00dd86b3          	add	a3,s11,a3
    800040c4:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    800040c8:	0087d79b          	srliw	a5,a5,0x8
    800040cc:	00100c93          	li	s9,1
    800040d0:	f8d400a3          	sb	a3,-127(s0)
    800040d4:	0cb67263          	bgeu	a2,a1,80004198 <__printf+0x410>
    800040d8:	00f7f693          	andi	a3,a5,15
    800040dc:	00dd86b3          	add	a3,s11,a3
    800040e0:	0006c583          	lbu	a1,0(a3)
    800040e4:	00f00613          	li	a2,15
    800040e8:	0047d69b          	srliw	a3,a5,0x4
    800040ec:	f8b40123          	sb	a1,-126(s0)
    800040f0:	0047d593          	srli	a1,a5,0x4
    800040f4:	28f67e63          	bgeu	a2,a5,80004390 <__printf+0x608>
    800040f8:	00f6f693          	andi	a3,a3,15
    800040fc:	00dd86b3          	add	a3,s11,a3
    80004100:	0006c503          	lbu	a0,0(a3)
    80004104:	0087d813          	srli	a6,a5,0x8
    80004108:	0087d69b          	srliw	a3,a5,0x8
    8000410c:	f8a401a3          	sb	a0,-125(s0)
    80004110:	28b67663          	bgeu	a2,a1,8000439c <__printf+0x614>
    80004114:	00f6f693          	andi	a3,a3,15
    80004118:	00dd86b3          	add	a3,s11,a3
    8000411c:	0006c583          	lbu	a1,0(a3)
    80004120:	00c7d513          	srli	a0,a5,0xc
    80004124:	00c7d69b          	srliw	a3,a5,0xc
    80004128:	f8b40223          	sb	a1,-124(s0)
    8000412c:	29067a63          	bgeu	a2,a6,800043c0 <__printf+0x638>
    80004130:	00f6f693          	andi	a3,a3,15
    80004134:	00dd86b3          	add	a3,s11,a3
    80004138:	0006c583          	lbu	a1,0(a3)
    8000413c:	0107d813          	srli	a6,a5,0x10
    80004140:	0107d69b          	srliw	a3,a5,0x10
    80004144:	f8b402a3          	sb	a1,-123(s0)
    80004148:	28a67263          	bgeu	a2,a0,800043cc <__printf+0x644>
    8000414c:	00f6f693          	andi	a3,a3,15
    80004150:	00dd86b3          	add	a3,s11,a3
    80004154:	0006c683          	lbu	a3,0(a3)
    80004158:	0147d79b          	srliw	a5,a5,0x14
    8000415c:	f8d40323          	sb	a3,-122(s0)
    80004160:	21067663          	bgeu	a2,a6,8000436c <__printf+0x5e4>
    80004164:	02079793          	slli	a5,a5,0x20
    80004168:	0207d793          	srli	a5,a5,0x20
    8000416c:	00fd8db3          	add	s11,s11,a5
    80004170:	000dc683          	lbu	a3,0(s11)
    80004174:	00800793          	li	a5,8
    80004178:	00700c93          	li	s9,7
    8000417c:	f8d403a3          	sb	a3,-121(s0)
    80004180:	00075c63          	bgez	a4,80004198 <__printf+0x410>
    80004184:	f9040713          	addi	a4,s0,-112
    80004188:	00f70733          	add	a4,a4,a5
    8000418c:	02d00693          	li	a3,45
    80004190:	fed70823          	sb	a3,-16(a4)
    80004194:	00078c93          	mv	s9,a5
    80004198:	f8040793          	addi	a5,s0,-128
    8000419c:	01978cb3          	add	s9,a5,s9
    800041a0:	f7f40d13          	addi	s10,s0,-129
    800041a4:	000cc503          	lbu	a0,0(s9)
    800041a8:	fffc8c93          	addi	s9,s9,-1
    800041ac:	00000097          	auipc	ra,0x0
    800041b0:	9f8080e7          	jalr	-1544(ra) # 80003ba4 <consputc>
    800041b4:	ff9d18e3          	bne	s10,s9,800041a4 <__printf+0x41c>
    800041b8:	0100006f          	j	800041c8 <__printf+0x440>
    800041bc:	00000097          	auipc	ra,0x0
    800041c0:	9e8080e7          	jalr	-1560(ra) # 80003ba4 <consputc>
    800041c4:	000c8493          	mv	s1,s9
    800041c8:	00094503          	lbu	a0,0(s2)
    800041cc:	c60510e3          	bnez	a0,80003e2c <__printf+0xa4>
    800041d0:	e40c0ee3          	beqz	s8,8000402c <__printf+0x2a4>
    800041d4:	00004517          	auipc	a0,0x4
    800041d8:	2ac50513          	addi	a0,a0,684 # 80008480 <pr>
    800041dc:	00001097          	auipc	ra,0x1
    800041e0:	94c080e7          	jalr	-1716(ra) # 80004b28 <release>
    800041e4:	e49ff06f          	j	8000402c <__printf+0x2a4>
    800041e8:	f7843783          	ld	a5,-136(s0)
    800041ec:	03000513          	li	a0,48
    800041f0:	01000d13          	li	s10,16
    800041f4:	00878713          	addi	a4,a5,8
    800041f8:	0007bc83          	ld	s9,0(a5)
    800041fc:	f6e43c23          	sd	a4,-136(s0)
    80004200:	00000097          	auipc	ra,0x0
    80004204:	9a4080e7          	jalr	-1628(ra) # 80003ba4 <consputc>
    80004208:	07800513          	li	a0,120
    8000420c:	00000097          	auipc	ra,0x0
    80004210:	998080e7          	jalr	-1640(ra) # 80003ba4 <consputc>
    80004214:	00002d97          	auipc	s11,0x2
    80004218:	084d8d93          	addi	s11,s11,132 # 80006298 <digits>
    8000421c:	03ccd793          	srli	a5,s9,0x3c
    80004220:	00fd87b3          	add	a5,s11,a5
    80004224:	0007c503          	lbu	a0,0(a5)
    80004228:	fffd0d1b          	addiw	s10,s10,-1
    8000422c:	004c9c93          	slli	s9,s9,0x4
    80004230:	00000097          	auipc	ra,0x0
    80004234:	974080e7          	jalr	-1676(ra) # 80003ba4 <consputc>
    80004238:	fe0d12e3          	bnez	s10,8000421c <__printf+0x494>
    8000423c:	f8dff06f          	j	800041c8 <__printf+0x440>
    80004240:	f7843783          	ld	a5,-136(s0)
    80004244:	0007bc83          	ld	s9,0(a5)
    80004248:	00878793          	addi	a5,a5,8
    8000424c:	f6f43c23          	sd	a5,-136(s0)
    80004250:	000c9a63          	bnez	s9,80004264 <__printf+0x4dc>
    80004254:	1080006f          	j	8000435c <__printf+0x5d4>
    80004258:	001c8c93          	addi	s9,s9,1
    8000425c:	00000097          	auipc	ra,0x0
    80004260:	948080e7          	jalr	-1720(ra) # 80003ba4 <consputc>
    80004264:	000cc503          	lbu	a0,0(s9)
    80004268:	fe0518e3          	bnez	a0,80004258 <__printf+0x4d0>
    8000426c:	f5dff06f          	j	800041c8 <__printf+0x440>
    80004270:	02500513          	li	a0,37
    80004274:	00000097          	auipc	ra,0x0
    80004278:	930080e7          	jalr	-1744(ra) # 80003ba4 <consputc>
    8000427c:	000c8513          	mv	a0,s9
    80004280:	00000097          	auipc	ra,0x0
    80004284:	924080e7          	jalr	-1756(ra) # 80003ba4 <consputc>
    80004288:	f41ff06f          	j	800041c8 <__printf+0x440>
    8000428c:	02500513          	li	a0,37
    80004290:	00000097          	auipc	ra,0x0
    80004294:	914080e7          	jalr	-1772(ra) # 80003ba4 <consputc>
    80004298:	f31ff06f          	j	800041c8 <__printf+0x440>
    8000429c:	00030513          	mv	a0,t1
    800042a0:	00000097          	auipc	ra,0x0
    800042a4:	7bc080e7          	jalr	1980(ra) # 80004a5c <acquire>
    800042a8:	b4dff06f          	j	80003df4 <__printf+0x6c>
    800042ac:	40c0053b          	negw	a0,a2
    800042b0:	00a00713          	li	a4,10
    800042b4:	02e576bb          	remuw	a3,a0,a4
    800042b8:	00002d97          	auipc	s11,0x2
    800042bc:	fe0d8d93          	addi	s11,s11,-32 # 80006298 <digits>
    800042c0:	ff700593          	li	a1,-9
    800042c4:	02069693          	slli	a3,a3,0x20
    800042c8:	0206d693          	srli	a3,a3,0x20
    800042cc:	00dd86b3          	add	a3,s11,a3
    800042d0:	0006c683          	lbu	a3,0(a3)
    800042d4:	02e557bb          	divuw	a5,a0,a4
    800042d8:	f8d40023          	sb	a3,-128(s0)
    800042dc:	10b65e63          	bge	a2,a1,800043f8 <__printf+0x670>
    800042e0:	06300593          	li	a1,99
    800042e4:	02e7f6bb          	remuw	a3,a5,a4
    800042e8:	02069693          	slli	a3,a3,0x20
    800042ec:	0206d693          	srli	a3,a3,0x20
    800042f0:	00dd86b3          	add	a3,s11,a3
    800042f4:	0006c683          	lbu	a3,0(a3)
    800042f8:	02e7d73b          	divuw	a4,a5,a4
    800042fc:	00200793          	li	a5,2
    80004300:	f8d400a3          	sb	a3,-127(s0)
    80004304:	bca5ece3          	bltu	a1,a0,80003edc <__printf+0x154>
    80004308:	ce5ff06f          	j	80003fec <__printf+0x264>
    8000430c:	40e007bb          	negw	a5,a4
    80004310:	00002d97          	auipc	s11,0x2
    80004314:	f88d8d93          	addi	s11,s11,-120 # 80006298 <digits>
    80004318:	00f7f693          	andi	a3,a5,15
    8000431c:	00dd86b3          	add	a3,s11,a3
    80004320:	0006c583          	lbu	a1,0(a3)
    80004324:	ff100613          	li	a2,-15
    80004328:	0047d69b          	srliw	a3,a5,0x4
    8000432c:	f8b40023          	sb	a1,-128(s0)
    80004330:	0047d59b          	srliw	a1,a5,0x4
    80004334:	0ac75e63          	bge	a4,a2,800043f0 <__printf+0x668>
    80004338:	00f6f693          	andi	a3,a3,15
    8000433c:	00dd86b3          	add	a3,s11,a3
    80004340:	0006c603          	lbu	a2,0(a3)
    80004344:	00f00693          	li	a3,15
    80004348:	0087d79b          	srliw	a5,a5,0x8
    8000434c:	f8c400a3          	sb	a2,-127(s0)
    80004350:	d8b6e4e3          	bltu	a3,a1,800040d8 <__printf+0x350>
    80004354:	00200793          	li	a5,2
    80004358:	e2dff06f          	j	80004184 <__printf+0x3fc>
    8000435c:	00002c97          	auipc	s9,0x2
    80004360:	f1cc8c93          	addi	s9,s9,-228 # 80006278 <CONSOLE_STATUS+0x268>
    80004364:	02800513          	li	a0,40
    80004368:	ef1ff06f          	j	80004258 <__printf+0x4d0>
    8000436c:	00700793          	li	a5,7
    80004370:	00600c93          	li	s9,6
    80004374:	e0dff06f          	j	80004180 <__printf+0x3f8>
    80004378:	00700793          	li	a5,7
    8000437c:	00600c93          	li	s9,6
    80004380:	c69ff06f          	j	80003fe8 <__printf+0x260>
    80004384:	00300793          	li	a5,3
    80004388:	00200c93          	li	s9,2
    8000438c:	c5dff06f          	j	80003fe8 <__printf+0x260>
    80004390:	00300793          	li	a5,3
    80004394:	00200c93          	li	s9,2
    80004398:	de9ff06f          	j	80004180 <__printf+0x3f8>
    8000439c:	00400793          	li	a5,4
    800043a0:	00300c93          	li	s9,3
    800043a4:	dddff06f          	j	80004180 <__printf+0x3f8>
    800043a8:	00400793          	li	a5,4
    800043ac:	00300c93          	li	s9,3
    800043b0:	c39ff06f          	j	80003fe8 <__printf+0x260>
    800043b4:	00500793          	li	a5,5
    800043b8:	00400c93          	li	s9,4
    800043bc:	c2dff06f          	j	80003fe8 <__printf+0x260>
    800043c0:	00500793          	li	a5,5
    800043c4:	00400c93          	li	s9,4
    800043c8:	db9ff06f          	j	80004180 <__printf+0x3f8>
    800043cc:	00600793          	li	a5,6
    800043d0:	00500c93          	li	s9,5
    800043d4:	dadff06f          	j	80004180 <__printf+0x3f8>
    800043d8:	00600793          	li	a5,6
    800043dc:	00500c93          	li	s9,5
    800043e0:	c09ff06f          	j	80003fe8 <__printf+0x260>
    800043e4:	00800793          	li	a5,8
    800043e8:	00700c93          	li	s9,7
    800043ec:	bfdff06f          	j	80003fe8 <__printf+0x260>
    800043f0:	00100793          	li	a5,1
    800043f4:	d91ff06f          	j	80004184 <__printf+0x3fc>
    800043f8:	00100793          	li	a5,1
    800043fc:	bf1ff06f          	j	80003fec <__printf+0x264>
    80004400:	00900793          	li	a5,9
    80004404:	00800c93          	li	s9,8
    80004408:	be1ff06f          	j	80003fe8 <__printf+0x260>
    8000440c:	00002517          	auipc	a0,0x2
    80004410:	e7450513          	addi	a0,a0,-396 # 80006280 <CONSOLE_STATUS+0x270>
    80004414:	00000097          	auipc	ra,0x0
    80004418:	918080e7          	jalr	-1768(ra) # 80003d2c <panic>

000000008000441c <printfinit>:
    8000441c:	fe010113          	addi	sp,sp,-32
    80004420:	00813823          	sd	s0,16(sp)
    80004424:	00913423          	sd	s1,8(sp)
    80004428:	00113c23          	sd	ra,24(sp)
    8000442c:	02010413          	addi	s0,sp,32
    80004430:	00004497          	auipc	s1,0x4
    80004434:	05048493          	addi	s1,s1,80 # 80008480 <pr>
    80004438:	00048513          	mv	a0,s1
    8000443c:	00002597          	auipc	a1,0x2
    80004440:	e5458593          	addi	a1,a1,-428 # 80006290 <CONSOLE_STATUS+0x280>
    80004444:	00000097          	auipc	ra,0x0
    80004448:	5f4080e7          	jalr	1524(ra) # 80004a38 <initlock>
    8000444c:	01813083          	ld	ra,24(sp)
    80004450:	01013403          	ld	s0,16(sp)
    80004454:	0004ac23          	sw	zero,24(s1)
    80004458:	00813483          	ld	s1,8(sp)
    8000445c:	02010113          	addi	sp,sp,32
    80004460:	00008067          	ret

0000000080004464 <uartinit>:
    80004464:	ff010113          	addi	sp,sp,-16
    80004468:	00813423          	sd	s0,8(sp)
    8000446c:	01010413          	addi	s0,sp,16
    80004470:	100007b7          	lui	a5,0x10000
    80004474:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80004478:	f8000713          	li	a4,-128
    8000447c:	00e781a3          	sb	a4,3(a5)
    80004480:	00300713          	li	a4,3
    80004484:	00e78023          	sb	a4,0(a5)
    80004488:	000780a3          	sb	zero,1(a5)
    8000448c:	00e781a3          	sb	a4,3(a5)
    80004490:	00700693          	li	a3,7
    80004494:	00d78123          	sb	a3,2(a5)
    80004498:	00e780a3          	sb	a4,1(a5)
    8000449c:	00813403          	ld	s0,8(sp)
    800044a0:	01010113          	addi	sp,sp,16
    800044a4:	00008067          	ret

00000000800044a8 <uartputc>:
    800044a8:	00003797          	auipc	a5,0x3
    800044ac:	d407a783          	lw	a5,-704(a5) # 800071e8 <panicked>
    800044b0:	00078463          	beqz	a5,800044b8 <uartputc+0x10>
    800044b4:	0000006f          	j	800044b4 <uartputc+0xc>
    800044b8:	fd010113          	addi	sp,sp,-48
    800044bc:	02813023          	sd	s0,32(sp)
    800044c0:	00913c23          	sd	s1,24(sp)
    800044c4:	01213823          	sd	s2,16(sp)
    800044c8:	01313423          	sd	s3,8(sp)
    800044cc:	02113423          	sd	ra,40(sp)
    800044d0:	03010413          	addi	s0,sp,48
    800044d4:	00003917          	auipc	s2,0x3
    800044d8:	d1c90913          	addi	s2,s2,-740 # 800071f0 <uart_tx_r>
    800044dc:	00093783          	ld	a5,0(s2)
    800044e0:	00003497          	auipc	s1,0x3
    800044e4:	d1848493          	addi	s1,s1,-744 # 800071f8 <uart_tx_w>
    800044e8:	0004b703          	ld	a4,0(s1)
    800044ec:	02078693          	addi	a3,a5,32
    800044f0:	00050993          	mv	s3,a0
    800044f4:	02e69c63          	bne	a3,a4,8000452c <uartputc+0x84>
    800044f8:	00001097          	auipc	ra,0x1
    800044fc:	834080e7          	jalr	-1996(ra) # 80004d2c <push_on>
    80004500:	00093783          	ld	a5,0(s2)
    80004504:	0004b703          	ld	a4,0(s1)
    80004508:	02078793          	addi	a5,a5,32
    8000450c:	00e79463          	bne	a5,a4,80004514 <uartputc+0x6c>
    80004510:	0000006f          	j	80004510 <uartputc+0x68>
    80004514:	00001097          	auipc	ra,0x1
    80004518:	88c080e7          	jalr	-1908(ra) # 80004da0 <pop_on>
    8000451c:	00093783          	ld	a5,0(s2)
    80004520:	0004b703          	ld	a4,0(s1)
    80004524:	02078693          	addi	a3,a5,32
    80004528:	fce688e3          	beq	a3,a4,800044f8 <uartputc+0x50>
    8000452c:	01f77693          	andi	a3,a4,31
    80004530:	00004597          	auipc	a1,0x4
    80004534:	f7058593          	addi	a1,a1,-144 # 800084a0 <uart_tx_buf>
    80004538:	00d586b3          	add	a3,a1,a3
    8000453c:	00170713          	addi	a4,a4,1
    80004540:	01368023          	sb	s3,0(a3)
    80004544:	00e4b023          	sd	a4,0(s1)
    80004548:	10000637          	lui	a2,0x10000
    8000454c:	02f71063          	bne	a4,a5,8000456c <uartputc+0xc4>
    80004550:	0340006f          	j	80004584 <uartputc+0xdc>
    80004554:	00074703          	lbu	a4,0(a4)
    80004558:	00f93023          	sd	a5,0(s2)
    8000455c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80004560:	00093783          	ld	a5,0(s2)
    80004564:	0004b703          	ld	a4,0(s1)
    80004568:	00f70e63          	beq	a4,a5,80004584 <uartputc+0xdc>
    8000456c:	00564683          	lbu	a3,5(a2)
    80004570:	01f7f713          	andi	a4,a5,31
    80004574:	00e58733          	add	a4,a1,a4
    80004578:	0206f693          	andi	a3,a3,32
    8000457c:	00178793          	addi	a5,a5,1
    80004580:	fc069ae3          	bnez	a3,80004554 <uartputc+0xac>
    80004584:	02813083          	ld	ra,40(sp)
    80004588:	02013403          	ld	s0,32(sp)
    8000458c:	01813483          	ld	s1,24(sp)
    80004590:	01013903          	ld	s2,16(sp)
    80004594:	00813983          	ld	s3,8(sp)
    80004598:	03010113          	addi	sp,sp,48
    8000459c:	00008067          	ret

00000000800045a0 <uartputc_sync>:
    800045a0:	ff010113          	addi	sp,sp,-16
    800045a4:	00813423          	sd	s0,8(sp)
    800045a8:	01010413          	addi	s0,sp,16
    800045ac:	00003717          	auipc	a4,0x3
    800045b0:	c3c72703          	lw	a4,-964(a4) # 800071e8 <panicked>
    800045b4:	02071663          	bnez	a4,800045e0 <uartputc_sync+0x40>
    800045b8:	00050793          	mv	a5,a0
    800045bc:	100006b7          	lui	a3,0x10000
    800045c0:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    800045c4:	02077713          	andi	a4,a4,32
    800045c8:	fe070ce3          	beqz	a4,800045c0 <uartputc_sync+0x20>
    800045cc:	0ff7f793          	andi	a5,a5,255
    800045d0:	00f68023          	sb	a5,0(a3)
    800045d4:	00813403          	ld	s0,8(sp)
    800045d8:	01010113          	addi	sp,sp,16
    800045dc:	00008067          	ret
    800045e0:	0000006f          	j	800045e0 <uartputc_sync+0x40>

00000000800045e4 <uartstart>:
    800045e4:	ff010113          	addi	sp,sp,-16
    800045e8:	00813423          	sd	s0,8(sp)
    800045ec:	01010413          	addi	s0,sp,16
    800045f0:	00003617          	auipc	a2,0x3
    800045f4:	c0060613          	addi	a2,a2,-1024 # 800071f0 <uart_tx_r>
    800045f8:	00003517          	auipc	a0,0x3
    800045fc:	c0050513          	addi	a0,a0,-1024 # 800071f8 <uart_tx_w>
    80004600:	00063783          	ld	a5,0(a2)
    80004604:	00053703          	ld	a4,0(a0)
    80004608:	04f70263          	beq	a4,a5,8000464c <uartstart+0x68>
    8000460c:	100005b7          	lui	a1,0x10000
    80004610:	00004817          	auipc	a6,0x4
    80004614:	e9080813          	addi	a6,a6,-368 # 800084a0 <uart_tx_buf>
    80004618:	01c0006f          	j	80004634 <uartstart+0x50>
    8000461c:	0006c703          	lbu	a4,0(a3)
    80004620:	00f63023          	sd	a5,0(a2)
    80004624:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004628:	00063783          	ld	a5,0(a2)
    8000462c:	00053703          	ld	a4,0(a0)
    80004630:	00f70e63          	beq	a4,a5,8000464c <uartstart+0x68>
    80004634:	01f7f713          	andi	a4,a5,31
    80004638:	00e806b3          	add	a3,a6,a4
    8000463c:	0055c703          	lbu	a4,5(a1)
    80004640:	00178793          	addi	a5,a5,1
    80004644:	02077713          	andi	a4,a4,32
    80004648:	fc071ae3          	bnez	a4,8000461c <uartstart+0x38>
    8000464c:	00813403          	ld	s0,8(sp)
    80004650:	01010113          	addi	sp,sp,16
    80004654:	00008067          	ret

0000000080004658 <uartgetc>:
    80004658:	ff010113          	addi	sp,sp,-16
    8000465c:	00813423          	sd	s0,8(sp)
    80004660:	01010413          	addi	s0,sp,16
    80004664:	10000737          	lui	a4,0x10000
    80004668:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000466c:	0017f793          	andi	a5,a5,1
    80004670:	00078c63          	beqz	a5,80004688 <uartgetc+0x30>
    80004674:	00074503          	lbu	a0,0(a4)
    80004678:	0ff57513          	andi	a0,a0,255
    8000467c:	00813403          	ld	s0,8(sp)
    80004680:	01010113          	addi	sp,sp,16
    80004684:	00008067          	ret
    80004688:	fff00513          	li	a0,-1
    8000468c:	ff1ff06f          	j	8000467c <uartgetc+0x24>

0000000080004690 <uartintr>:
    80004690:	100007b7          	lui	a5,0x10000
    80004694:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80004698:	0017f793          	andi	a5,a5,1
    8000469c:	0a078463          	beqz	a5,80004744 <uartintr+0xb4>
    800046a0:	fe010113          	addi	sp,sp,-32
    800046a4:	00813823          	sd	s0,16(sp)
    800046a8:	00913423          	sd	s1,8(sp)
    800046ac:	00113c23          	sd	ra,24(sp)
    800046b0:	02010413          	addi	s0,sp,32
    800046b4:	100004b7          	lui	s1,0x10000
    800046b8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800046bc:	0ff57513          	andi	a0,a0,255
    800046c0:	fffff097          	auipc	ra,0xfffff
    800046c4:	534080e7          	jalr	1332(ra) # 80003bf4 <consoleintr>
    800046c8:	0054c783          	lbu	a5,5(s1)
    800046cc:	0017f793          	andi	a5,a5,1
    800046d0:	fe0794e3          	bnez	a5,800046b8 <uartintr+0x28>
    800046d4:	00003617          	auipc	a2,0x3
    800046d8:	b1c60613          	addi	a2,a2,-1252 # 800071f0 <uart_tx_r>
    800046dc:	00003517          	auipc	a0,0x3
    800046e0:	b1c50513          	addi	a0,a0,-1252 # 800071f8 <uart_tx_w>
    800046e4:	00063783          	ld	a5,0(a2)
    800046e8:	00053703          	ld	a4,0(a0)
    800046ec:	04f70263          	beq	a4,a5,80004730 <uartintr+0xa0>
    800046f0:	100005b7          	lui	a1,0x10000
    800046f4:	00004817          	auipc	a6,0x4
    800046f8:	dac80813          	addi	a6,a6,-596 # 800084a0 <uart_tx_buf>
    800046fc:	01c0006f          	j	80004718 <uartintr+0x88>
    80004700:	0006c703          	lbu	a4,0(a3)
    80004704:	00f63023          	sd	a5,0(a2)
    80004708:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000470c:	00063783          	ld	a5,0(a2)
    80004710:	00053703          	ld	a4,0(a0)
    80004714:	00f70e63          	beq	a4,a5,80004730 <uartintr+0xa0>
    80004718:	01f7f713          	andi	a4,a5,31
    8000471c:	00e806b3          	add	a3,a6,a4
    80004720:	0055c703          	lbu	a4,5(a1)
    80004724:	00178793          	addi	a5,a5,1
    80004728:	02077713          	andi	a4,a4,32
    8000472c:	fc071ae3          	bnez	a4,80004700 <uartintr+0x70>
    80004730:	01813083          	ld	ra,24(sp)
    80004734:	01013403          	ld	s0,16(sp)
    80004738:	00813483          	ld	s1,8(sp)
    8000473c:	02010113          	addi	sp,sp,32
    80004740:	00008067          	ret
    80004744:	00003617          	auipc	a2,0x3
    80004748:	aac60613          	addi	a2,a2,-1364 # 800071f0 <uart_tx_r>
    8000474c:	00003517          	auipc	a0,0x3
    80004750:	aac50513          	addi	a0,a0,-1364 # 800071f8 <uart_tx_w>
    80004754:	00063783          	ld	a5,0(a2)
    80004758:	00053703          	ld	a4,0(a0)
    8000475c:	04f70263          	beq	a4,a5,800047a0 <uartintr+0x110>
    80004760:	100005b7          	lui	a1,0x10000
    80004764:	00004817          	auipc	a6,0x4
    80004768:	d3c80813          	addi	a6,a6,-708 # 800084a0 <uart_tx_buf>
    8000476c:	01c0006f          	j	80004788 <uartintr+0xf8>
    80004770:	0006c703          	lbu	a4,0(a3)
    80004774:	00f63023          	sd	a5,0(a2)
    80004778:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000477c:	00063783          	ld	a5,0(a2)
    80004780:	00053703          	ld	a4,0(a0)
    80004784:	02f70063          	beq	a4,a5,800047a4 <uartintr+0x114>
    80004788:	01f7f713          	andi	a4,a5,31
    8000478c:	00e806b3          	add	a3,a6,a4
    80004790:	0055c703          	lbu	a4,5(a1)
    80004794:	00178793          	addi	a5,a5,1
    80004798:	02077713          	andi	a4,a4,32
    8000479c:	fc071ae3          	bnez	a4,80004770 <uartintr+0xe0>
    800047a0:	00008067          	ret
    800047a4:	00008067          	ret

00000000800047a8 <kinit>:
    800047a8:	fc010113          	addi	sp,sp,-64
    800047ac:	02913423          	sd	s1,40(sp)
    800047b0:	fffff7b7          	lui	a5,0xfffff
    800047b4:	00005497          	auipc	s1,0x5
    800047b8:	d1b48493          	addi	s1,s1,-741 # 800094cf <end+0xfff>
    800047bc:	02813823          	sd	s0,48(sp)
    800047c0:	01313c23          	sd	s3,24(sp)
    800047c4:	00f4f4b3          	and	s1,s1,a5
    800047c8:	02113c23          	sd	ra,56(sp)
    800047cc:	03213023          	sd	s2,32(sp)
    800047d0:	01413823          	sd	s4,16(sp)
    800047d4:	01513423          	sd	s5,8(sp)
    800047d8:	04010413          	addi	s0,sp,64
    800047dc:	000017b7          	lui	a5,0x1
    800047e0:	01100993          	li	s3,17
    800047e4:	00f487b3          	add	a5,s1,a5
    800047e8:	01b99993          	slli	s3,s3,0x1b
    800047ec:	06f9e063          	bltu	s3,a5,8000484c <kinit+0xa4>
    800047f0:	00004a97          	auipc	s5,0x4
    800047f4:	ce0a8a93          	addi	s5,s5,-800 # 800084d0 <end>
    800047f8:	0754ec63          	bltu	s1,s5,80004870 <kinit+0xc8>
    800047fc:	0734fa63          	bgeu	s1,s3,80004870 <kinit+0xc8>
    80004800:	00088a37          	lui	s4,0x88
    80004804:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004808:	00003917          	auipc	s2,0x3
    8000480c:	9f890913          	addi	s2,s2,-1544 # 80007200 <kmem>
    80004810:	00ca1a13          	slli	s4,s4,0xc
    80004814:	0140006f          	j	80004828 <kinit+0x80>
    80004818:	000017b7          	lui	a5,0x1
    8000481c:	00f484b3          	add	s1,s1,a5
    80004820:	0554e863          	bltu	s1,s5,80004870 <kinit+0xc8>
    80004824:	0534f663          	bgeu	s1,s3,80004870 <kinit+0xc8>
    80004828:	00001637          	lui	a2,0x1
    8000482c:	00100593          	li	a1,1
    80004830:	00048513          	mv	a0,s1
    80004834:	00000097          	auipc	ra,0x0
    80004838:	5e4080e7          	jalr	1508(ra) # 80004e18 <__memset>
    8000483c:	00093783          	ld	a5,0(s2)
    80004840:	00f4b023          	sd	a5,0(s1)
    80004844:	00993023          	sd	s1,0(s2)
    80004848:	fd4498e3          	bne	s1,s4,80004818 <kinit+0x70>
    8000484c:	03813083          	ld	ra,56(sp)
    80004850:	03013403          	ld	s0,48(sp)
    80004854:	02813483          	ld	s1,40(sp)
    80004858:	02013903          	ld	s2,32(sp)
    8000485c:	01813983          	ld	s3,24(sp)
    80004860:	01013a03          	ld	s4,16(sp)
    80004864:	00813a83          	ld	s5,8(sp)
    80004868:	04010113          	addi	sp,sp,64
    8000486c:	00008067          	ret
    80004870:	00002517          	auipc	a0,0x2
    80004874:	a4050513          	addi	a0,a0,-1472 # 800062b0 <digits+0x18>
    80004878:	fffff097          	auipc	ra,0xfffff
    8000487c:	4b4080e7          	jalr	1204(ra) # 80003d2c <panic>

0000000080004880 <freerange>:
    80004880:	fc010113          	addi	sp,sp,-64
    80004884:	000017b7          	lui	a5,0x1
    80004888:	02913423          	sd	s1,40(sp)
    8000488c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004890:	009504b3          	add	s1,a0,s1
    80004894:	fffff537          	lui	a0,0xfffff
    80004898:	02813823          	sd	s0,48(sp)
    8000489c:	02113c23          	sd	ra,56(sp)
    800048a0:	03213023          	sd	s2,32(sp)
    800048a4:	01313c23          	sd	s3,24(sp)
    800048a8:	01413823          	sd	s4,16(sp)
    800048ac:	01513423          	sd	s5,8(sp)
    800048b0:	01613023          	sd	s6,0(sp)
    800048b4:	04010413          	addi	s0,sp,64
    800048b8:	00a4f4b3          	and	s1,s1,a0
    800048bc:	00f487b3          	add	a5,s1,a5
    800048c0:	06f5e463          	bltu	a1,a5,80004928 <freerange+0xa8>
    800048c4:	00004a97          	auipc	s5,0x4
    800048c8:	c0ca8a93          	addi	s5,s5,-1012 # 800084d0 <end>
    800048cc:	0954e263          	bltu	s1,s5,80004950 <freerange+0xd0>
    800048d0:	01100993          	li	s3,17
    800048d4:	01b99993          	slli	s3,s3,0x1b
    800048d8:	0734fc63          	bgeu	s1,s3,80004950 <freerange+0xd0>
    800048dc:	00058a13          	mv	s4,a1
    800048e0:	00003917          	auipc	s2,0x3
    800048e4:	92090913          	addi	s2,s2,-1760 # 80007200 <kmem>
    800048e8:	00002b37          	lui	s6,0x2
    800048ec:	0140006f          	j	80004900 <freerange+0x80>
    800048f0:	000017b7          	lui	a5,0x1
    800048f4:	00f484b3          	add	s1,s1,a5
    800048f8:	0554ec63          	bltu	s1,s5,80004950 <freerange+0xd0>
    800048fc:	0534fa63          	bgeu	s1,s3,80004950 <freerange+0xd0>
    80004900:	00001637          	lui	a2,0x1
    80004904:	00100593          	li	a1,1
    80004908:	00048513          	mv	a0,s1
    8000490c:	00000097          	auipc	ra,0x0
    80004910:	50c080e7          	jalr	1292(ra) # 80004e18 <__memset>
    80004914:	00093703          	ld	a4,0(s2)
    80004918:	016487b3          	add	a5,s1,s6
    8000491c:	00e4b023          	sd	a4,0(s1)
    80004920:	00993023          	sd	s1,0(s2)
    80004924:	fcfa76e3          	bgeu	s4,a5,800048f0 <freerange+0x70>
    80004928:	03813083          	ld	ra,56(sp)
    8000492c:	03013403          	ld	s0,48(sp)
    80004930:	02813483          	ld	s1,40(sp)
    80004934:	02013903          	ld	s2,32(sp)
    80004938:	01813983          	ld	s3,24(sp)
    8000493c:	01013a03          	ld	s4,16(sp)
    80004940:	00813a83          	ld	s5,8(sp)
    80004944:	00013b03          	ld	s6,0(sp)
    80004948:	04010113          	addi	sp,sp,64
    8000494c:	00008067          	ret
    80004950:	00002517          	auipc	a0,0x2
    80004954:	96050513          	addi	a0,a0,-1696 # 800062b0 <digits+0x18>
    80004958:	fffff097          	auipc	ra,0xfffff
    8000495c:	3d4080e7          	jalr	980(ra) # 80003d2c <panic>

0000000080004960 <kfree>:
    80004960:	fe010113          	addi	sp,sp,-32
    80004964:	00813823          	sd	s0,16(sp)
    80004968:	00113c23          	sd	ra,24(sp)
    8000496c:	00913423          	sd	s1,8(sp)
    80004970:	02010413          	addi	s0,sp,32
    80004974:	03451793          	slli	a5,a0,0x34
    80004978:	04079c63          	bnez	a5,800049d0 <kfree+0x70>
    8000497c:	00004797          	auipc	a5,0x4
    80004980:	b5478793          	addi	a5,a5,-1196 # 800084d0 <end>
    80004984:	00050493          	mv	s1,a0
    80004988:	04f56463          	bltu	a0,a5,800049d0 <kfree+0x70>
    8000498c:	01100793          	li	a5,17
    80004990:	01b79793          	slli	a5,a5,0x1b
    80004994:	02f57e63          	bgeu	a0,a5,800049d0 <kfree+0x70>
    80004998:	00001637          	lui	a2,0x1
    8000499c:	00100593          	li	a1,1
    800049a0:	00000097          	auipc	ra,0x0
    800049a4:	478080e7          	jalr	1144(ra) # 80004e18 <__memset>
    800049a8:	00003797          	auipc	a5,0x3
    800049ac:	85878793          	addi	a5,a5,-1960 # 80007200 <kmem>
    800049b0:	0007b703          	ld	a4,0(a5)
    800049b4:	01813083          	ld	ra,24(sp)
    800049b8:	01013403          	ld	s0,16(sp)
    800049bc:	00e4b023          	sd	a4,0(s1)
    800049c0:	0097b023          	sd	s1,0(a5)
    800049c4:	00813483          	ld	s1,8(sp)
    800049c8:	02010113          	addi	sp,sp,32
    800049cc:	00008067          	ret
    800049d0:	00002517          	auipc	a0,0x2
    800049d4:	8e050513          	addi	a0,a0,-1824 # 800062b0 <digits+0x18>
    800049d8:	fffff097          	auipc	ra,0xfffff
    800049dc:	354080e7          	jalr	852(ra) # 80003d2c <panic>

00000000800049e0 <kalloc>:
    800049e0:	fe010113          	addi	sp,sp,-32
    800049e4:	00813823          	sd	s0,16(sp)
    800049e8:	00913423          	sd	s1,8(sp)
    800049ec:	00113c23          	sd	ra,24(sp)
    800049f0:	02010413          	addi	s0,sp,32
    800049f4:	00003797          	auipc	a5,0x3
    800049f8:	80c78793          	addi	a5,a5,-2036 # 80007200 <kmem>
    800049fc:	0007b483          	ld	s1,0(a5)
    80004a00:	02048063          	beqz	s1,80004a20 <kalloc+0x40>
    80004a04:	0004b703          	ld	a4,0(s1)
    80004a08:	00001637          	lui	a2,0x1
    80004a0c:	00500593          	li	a1,5
    80004a10:	00048513          	mv	a0,s1
    80004a14:	00e7b023          	sd	a4,0(a5)
    80004a18:	00000097          	auipc	ra,0x0
    80004a1c:	400080e7          	jalr	1024(ra) # 80004e18 <__memset>
    80004a20:	01813083          	ld	ra,24(sp)
    80004a24:	01013403          	ld	s0,16(sp)
    80004a28:	00048513          	mv	a0,s1
    80004a2c:	00813483          	ld	s1,8(sp)
    80004a30:	02010113          	addi	sp,sp,32
    80004a34:	00008067          	ret

0000000080004a38 <initlock>:
    80004a38:	ff010113          	addi	sp,sp,-16
    80004a3c:	00813423          	sd	s0,8(sp)
    80004a40:	01010413          	addi	s0,sp,16
    80004a44:	00813403          	ld	s0,8(sp)
    80004a48:	00b53423          	sd	a1,8(a0)
    80004a4c:	00052023          	sw	zero,0(a0)
    80004a50:	00053823          	sd	zero,16(a0)
    80004a54:	01010113          	addi	sp,sp,16
    80004a58:	00008067          	ret

0000000080004a5c <acquire>:
    80004a5c:	fe010113          	addi	sp,sp,-32
    80004a60:	00813823          	sd	s0,16(sp)
    80004a64:	00913423          	sd	s1,8(sp)
    80004a68:	00113c23          	sd	ra,24(sp)
    80004a6c:	01213023          	sd	s2,0(sp)
    80004a70:	02010413          	addi	s0,sp,32
    80004a74:	00050493          	mv	s1,a0
    80004a78:	10002973          	csrr	s2,sstatus
    80004a7c:	100027f3          	csrr	a5,sstatus
    80004a80:	ffd7f793          	andi	a5,a5,-3
    80004a84:	10079073          	csrw	sstatus,a5
    80004a88:	fffff097          	auipc	ra,0xfffff
    80004a8c:	8e8080e7          	jalr	-1816(ra) # 80003370 <mycpu>
    80004a90:	07852783          	lw	a5,120(a0)
    80004a94:	06078e63          	beqz	a5,80004b10 <acquire+0xb4>
    80004a98:	fffff097          	auipc	ra,0xfffff
    80004a9c:	8d8080e7          	jalr	-1832(ra) # 80003370 <mycpu>
    80004aa0:	07852783          	lw	a5,120(a0)
    80004aa4:	0004a703          	lw	a4,0(s1)
    80004aa8:	0017879b          	addiw	a5,a5,1
    80004aac:	06f52c23          	sw	a5,120(a0)
    80004ab0:	04071063          	bnez	a4,80004af0 <acquire+0x94>
    80004ab4:	00100713          	li	a4,1
    80004ab8:	00070793          	mv	a5,a4
    80004abc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004ac0:	0007879b          	sext.w	a5,a5
    80004ac4:	fe079ae3          	bnez	a5,80004ab8 <acquire+0x5c>
    80004ac8:	0ff0000f          	fence
    80004acc:	fffff097          	auipc	ra,0xfffff
    80004ad0:	8a4080e7          	jalr	-1884(ra) # 80003370 <mycpu>
    80004ad4:	01813083          	ld	ra,24(sp)
    80004ad8:	01013403          	ld	s0,16(sp)
    80004adc:	00a4b823          	sd	a0,16(s1)
    80004ae0:	00013903          	ld	s2,0(sp)
    80004ae4:	00813483          	ld	s1,8(sp)
    80004ae8:	02010113          	addi	sp,sp,32
    80004aec:	00008067          	ret
    80004af0:	0104b903          	ld	s2,16(s1)
    80004af4:	fffff097          	auipc	ra,0xfffff
    80004af8:	87c080e7          	jalr	-1924(ra) # 80003370 <mycpu>
    80004afc:	faa91ce3          	bne	s2,a0,80004ab4 <acquire+0x58>
    80004b00:	00001517          	auipc	a0,0x1
    80004b04:	7b850513          	addi	a0,a0,1976 # 800062b8 <digits+0x20>
    80004b08:	fffff097          	auipc	ra,0xfffff
    80004b0c:	224080e7          	jalr	548(ra) # 80003d2c <panic>
    80004b10:	00195913          	srli	s2,s2,0x1
    80004b14:	fffff097          	auipc	ra,0xfffff
    80004b18:	85c080e7          	jalr	-1956(ra) # 80003370 <mycpu>
    80004b1c:	00197913          	andi	s2,s2,1
    80004b20:	07252e23          	sw	s2,124(a0)
    80004b24:	f75ff06f          	j	80004a98 <acquire+0x3c>

0000000080004b28 <release>:
    80004b28:	fe010113          	addi	sp,sp,-32
    80004b2c:	00813823          	sd	s0,16(sp)
    80004b30:	00113c23          	sd	ra,24(sp)
    80004b34:	00913423          	sd	s1,8(sp)
    80004b38:	01213023          	sd	s2,0(sp)
    80004b3c:	02010413          	addi	s0,sp,32
    80004b40:	00052783          	lw	a5,0(a0)
    80004b44:	00079a63          	bnez	a5,80004b58 <release+0x30>
    80004b48:	00001517          	auipc	a0,0x1
    80004b4c:	77850513          	addi	a0,a0,1912 # 800062c0 <digits+0x28>
    80004b50:	fffff097          	auipc	ra,0xfffff
    80004b54:	1dc080e7          	jalr	476(ra) # 80003d2c <panic>
    80004b58:	01053903          	ld	s2,16(a0)
    80004b5c:	00050493          	mv	s1,a0
    80004b60:	fffff097          	auipc	ra,0xfffff
    80004b64:	810080e7          	jalr	-2032(ra) # 80003370 <mycpu>
    80004b68:	fea910e3          	bne	s2,a0,80004b48 <release+0x20>
    80004b6c:	0004b823          	sd	zero,16(s1)
    80004b70:	0ff0000f          	fence
    80004b74:	0f50000f          	fence	iorw,ow
    80004b78:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004b7c:	ffffe097          	auipc	ra,0xffffe
    80004b80:	7f4080e7          	jalr	2036(ra) # 80003370 <mycpu>
    80004b84:	100027f3          	csrr	a5,sstatus
    80004b88:	0027f793          	andi	a5,a5,2
    80004b8c:	04079a63          	bnez	a5,80004be0 <release+0xb8>
    80004b90:	07852783          	lw	a5,120(a0)
    80004b94:	02f05e63          	blez	a5,80004bd0 <release+0xa8>
    80004b98:	fff7871b          	addiw	a4,a5,-1
    80004b9c:	06e52c23          	sw	a4,120(a0)
    80004ba0:	00071c63          	bnez	a4,80004bb8 <release+0x90>
    80004ba4:	07c52783          	lw	a5,124(a0)
    80004ba8:	00078863          	beqz	a5,80004bb8 <release+0x90>
    80004bac:	100027f3          	csrr	a5,sstatus
    80004bb0:	0027e793          	ori	a5,a5,2
    80004bb4:	10079073          	csrw	sstatus,a5
    80004bb8:	01813083          	ld	ra,24(sp)
    80004bbc:	01013403          	ld	s0,16(sp)
    80004bc0:	00813483          	ld	s1,8(sp)
    80004bc4:	00013903          	ld	s2,0(sp)
    80004bc8:	02010113          	addi	sp,sp,32
    80004bcc:	00008067          	ret
    80004bd0:	00001517          	auipc	a0,0x1
    80004bd4:	71050513          	addi	a0,a0,1808 # 800062e0 <digits+0x48>
    80004bd8:	fffff097          	auipc	ra,0xfffff
    80004bdc:	154080e7          	jalr	340(ra) # 80003d2c <panic>
    80004be0:	00001517          	auipc	a0,0x1
    80004be4:	6e850513          	addi	a0,a0,1768 # 800062c8 <digits+0x30>
    80004be8:	fffff097          	auipc	ra,0xfffff
    80004bec:	144080e7          	jalr	324(ra) # 80003d2c <panic>

0000000080004bf0 <holding>:
    80004bf0:	00052783          	lw	a5,0(a0)
    80004bf4:	00079663          	bnez	a5,80004c00 <holding+0x10>
    80004bf8:	00000513          	li	a0,0
    80004bfc:	00008067          	ret
    80004c00:	fe010113          	addi	sp,sp,-32
    80004c04:	00813823          	sd	s0,16(sp)
    80004c08:	00913423          	sd	s1,8(sp)
    80004c0c:	00113c23          	sd	ra,24(sp)
    80004c10:	02010413          	addi	s0,sp,32
    80004c14:	01053483          	ld	s1,16(a0)
    80004c18:	ffffe097          	auipc	ra,0xffffe
    80004c1c:	758080e7          	jalr	1880(ra) # 80003370 <mycpu>
    80004c20:	01813083          	ld	ra,24(sp)
    80004c24:	01013403          	ld	s0,16(sp)
    80004c28:	40a48533          	sub	a0,s1,a0
    80004c2c:	00153513          	seqz	a0,a0
    80004c30:	00813483          	ld	s1,8(sp)
    80004c34:	02010113          	addi	sp,sp,32
    80004c38:	00008067          	ret

0000000080004c3c <push_off>:
    80004c3c:	fe010113          	addi	sp,sp,-32
    80004c40:	00813823          	sd	s0,16(sp)
    80004c44:	00113c23          	sd	ra,24(sp)
    80004c48:	00913423          	sd	s1,8(sp)
    80004c4c:	02010413          	addi	s0,sp,32
    80004c50:	100024f3          	csrr	s1,sstatus
    80004c54:	100027f3          	csrr	a5,sstatus
    80004c58:	ffd7f793          	andi	a5,a5,-3
    80004c5c:	10079073          	csrw	sstatus,a5
    80004c60:	ffffe097          	auipc	ra,0xffffe
    80004c64:	710080e7          	jalr	1808(ra) # 80003370 <mycpu>
    80004c68:	07852783          	lw	a5,120(a0)
    80004c6c:	02078663          	beqz	a5,80004c98 <push_off+0x5c>
    80004c70:	ffffe097          	auipc	ra,0xffffe
    80004c74:	700080e7          	jalr	1792(ra) # 80003370 <mycpu>
    80004c78:	07852783          	lw	a5,120(a0)
    80004c7c:	01813083          	ld	ra,24(sp)
    80004c80:	01013403          	ld	s0,16(sp)
    80004c84:	0017879b          	addiw	a5,a5,1
    80004c88:	06f52c23          	sw	a5,120(a0)
    80004c8c:	00813483          	ld	s1,8(sp)
    80004c90:	02010113          	addi	sp,sp,32
    80004c94:	00008067          	ret
    80004c98:	0014d493          	srli	s1,s1,0x1
    80004c9c:	ffffe097          	auipc	ra,0xffffe
    80004ca0:	6d4080e7          	jalr	1748(ra) # 80003370 <mycpu>
    80004ca4:	0014f493          	andi	s1,s1,1
    80004ca8:	06952e23          	sw	s1,124(a0)
    80004cac:	fc5ff06f          	j	80004c70 <push_off+0x34>

0000000080004cb0 <pop_off>:
    80004cb0:	ff010113          	addi	sp,sp,-16
    80004cb4:	00813023          	sd	s0,0(sp)
    80004cb8:	00113423          	sd	ra,8(sp)
    80004cbc:	01010413          	addi	s0,sp,16
    80004cc0:	ffffe097          	auipc	ra,0xffffe
    80004cc4:	6b0080e7          	jalr	1712(ra) # 80003370 <mycpu>
    80004cc8:	100027f3          	csrr	a5,sstatus
    80004ccc:	0027f793          	andi	a5,a5,2
    80004cd0:	04079663          	bnez	a5,80004d1c <pop_off+0x6c>
    80004cd4:	07852783          	lw	a5,120(a0)
    80004cd8:	02f05a63          	blez	a5,80004d0c <pop_off+0x5c>
    80004cdc:	fff7871b          	addiw	a4,a5,-1
    80004ce0:	06e52c23          	sw	a4,120(a0)
    80004ce4:	00071c63          	bnez	a4,80004cfc <pop_off+0x4c>
    80004ce8:	07c52783          	lw	a5,124(a0)
    80004cec:	00078863          	beqz	a5,80004cfc <pop_off+0x4c>
    80004cf0:	100027f3          	csrr	a5,sstatus
    80004cf4:	0027e793          	ori	a5,a5,2
    80004cf8:	10079073          	csrw	sstatus,a5
    80004cfc:	00813083          	ld	ra,8(sp)
    80004d00:	00013403          	ld	s0,0(sp)
    80004d04:	01010113          	addi	sp,sp,16
    80004d08:	00008067          	ret
    80004d0c:	00001517          	auipc	a0,0x1
    80004d10:	5d450513          	addi	a0,a0,1492 # 800062e0 <digits+0x48>
    80004d14:	fffff097          	auipc	ra,0xfffff
    80004d18:	018080e7          	jalr	24(ra) # 80003d2c <panic>
    80004d1c:	00001517          	auipc	a0,0x1
    80004d20:	5ac50513          	addi	a0,a0,1452 # 800062c8 <digits+0x30>
    80004d24:	fffff097          	auipc	ra,0xfffff
    80004d28:	008080e7          	jalr	8(ra) # 80003d2c <panic>

0000000080004d2c <push_on>:
    80004d2c:	fe010113          	addi	sp,sp,-32
    80004d30:	00813823          	sd	s0,16(sp)
    80004d34:	00113c23          	sd	ra,24(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	02010413          	addi	s0,sp,32
    80004d40:	100024f3          	csrr	s1,sstatus
    80004d44:	100027f3          	csrr	a5,sstatus
    80004d48:	0027e793          	ori	a5,a5,2
    80004d4c:	10079073          	csrw	sstatus,a5
    80004d50:	ffffe097          	auipc	ra,0xffffe
    80004d54:	620080e7          	jalr	1568(ra) # 80003370 <mycpu>
    80004d58:	07852783          	lw	a5,120(a0)
    80004d5c:	02078663          	beqz	a5,80004d88 <push_on+0x5c>
    80004d60:	ffffe097          	auipc	ra,0xffffe
    80004d64:	610080e7          	jalr	1552(ra) # 80003370 <mycpu>
    80004d68:	07852783          	lw	a5,120(a0)
    80004d6c:	01813083          	ld	ra,24(sp)
    80004d70:	01013403          	ld	s0,16(sp)
    80004d74:	0017879b          	addiw	a5,a5,1
    80004d78:	06f52c23          	sw	a5,120(a0)
    80004d7c:	00813483          	ld	s1,8(sp)
    80004d80:	02010113          	addi	sp,sp,32
    80004d84:	00008067          	ret
    80004d88:	0014d493          	srli	s1,s1,0x1
    80004d8c:	ffffe097          	auipc	ra,0xffffe
    80004d90:	5e4080e7          	jalr	1508(ra) # 80003370 <mycpu>
    80004d94:	0014f493          	andi	s1,s1,1
    80004d98:	06952e23          	sw	s1,124(a0)
    80004d9c:	fc5ff06f          	j	80004d60 <push_on+0x34>

0000000080004da0 <pop_on>:
    80004da0:	ff010113          	addi	sp,sp,-16
    80004da4:	00813023          	sd	s0,0(sp)
    80004da8:	00113423          	sd	ra,8(sp)
    80004dac:	01010413          	addi	s0,sp,16
    80004db0:	ffffe097          	auipc	ra,0xffffe
    80004db4:	5c0080e7          	jalr	1472(ra) # 80003370 <mycpu>
    80004db8:	100027f3          	csrr	a5,sstatus
    80004dbc:	0027f793          	andi	a5,a5,2
    80004dc0:	04078463          	beqz	a5,80004e08 <pop_on+0x68>
    80004dc4:	07852783          	lw	a5,120(a0)
    80004dc8:	02f05863          	blez	a5,80004df8 <pop_on+0x58>
    80004dcc:	fff7879b          	addiw	a5,a5,-1
    80004dd0:	06f52c23          	sw	a5,120(a0)
    80004dd4:	07853783          	ld	a5,120(a0)
    80004dd8:	00079863          	bnez	a5,80004de8 <pop_on+0x48>
    80004ddc:	100027f3          	csrr	a5,sstatus
    80004de0:	ffd7f793          	andi	a5,a5,-3
    80004de4:	10079073          	csrw	sstatus,a5
    80004de8:	00813083          	ld	ra,8(sp)
    80004dec:	00013403          	ld	s0,0(sp)
    80004df0:	01010113          	addi	sp,sp,16
    80004df4:	00008067          	ret
    80004df8:	00001517          	auipc	a0,0x1
    80004dfc:	51050513          	addi	a0,a0,1296 # 80006308 <digits+0x70>
    80004e00:	fffff097          	auipc	ra,0xfffff
    80004e04:	f2c080e7          	jalr	-212(ra) # 80003d2c <panic>
    80004e08:	00001517          	auipc	a0,0x1
    80004e0c:	4e050513          	addi	a0,a0,1248 # 800062e8 <digits+0x50>
    80004e10:	fffff097          	auipc	ra,0xfffff
    80004e14:	f1c080e7          	jalr	-228(ra) # 80003d2c <panic>

0000000080004e18 <__memset>:
    80004e18:	ff010113          	addi	sp,sp,-16
    80004e1c:	00813423          	sd	s0,8(sp)
    80004e20:	01010413          	addi	s0,sp,16
    80004e24:	1a060e63          	beqz	a2,80004fe0 <__memset+0x1c8>
    80004e28:	40a007b3          	neg	a5,a0
    80004e2c:	0077f793          	andi	a5,a5,7
    80004e30:	00778693          	addi	a3,a5,7
    80004e34:	00b00813          	li	a6,11
    80004e38:	0ff5f593          	andi	a1,a1,255
    80004e3c:	fff6071b          	addiw	a4,a2,-1
    80004e40:	1b06e663          	bltu	a3,a6,80004fec <__memset+0x1d4>
    80004e44:	1cd76463          	bltu	a4,a3,8000500c <__memset+0x1f4>
    80004e48:	1a078e63          	beqz	a5,80005004 <__memset+0x1ec>
    80004e4c:	00b50023          	sb	a1,0(a0)
    80004e50:	00100713          	li	a4,1
    80004e54:	1ae78463          	beq	a5,a4,80004ffc <__memset+0x1e4>
    80004e58:	00b500a3          	sb	a1,1(a0)
    80004e5c:	00200713          	li	a4,2
    80004e60:	1ae78a63          	beq	a5,a4,80005014 <__memset+0x1fc>
    80004e64:	00b50123          	sb	a1,2(a0)
    80004e68:	00300713          	li	a4,3
    80004e6c:	18e78463          	beq	a5,a4,80004ff4 <__memset+0x1dc>
    80004e70:	00b501a3          	sb	a1,3(a0)
    80004e74:	00400713          	li	a4,4
    80004e78:	1ae78263          	beq	a5,a4,8000501c <__memset+0x204>
    80004e7c:	00b50223          	sb	a1,4(a0)
    80004e80:	00500713          	li	a4,5
    80004e84:	1ae78063          	beq	a5,a4,80005024 <__memset+0x20c>
    80004e88:	00b502a3          	sb	a1,5(a0)
    80004e8c:	00700713          	li	a4,7
    80004e90:	18e79e63          	bne	a5,a4,8000502c <__memset+0x214>
    80004e94:	00b50323          	sb	a1,6(a0)
    80004e98:	00700e93          	li	t4,7
    80004e9c:	00859713          	slli	a4,a1,0x8
    80004ea0:	00e5e733          	or	a4,a1,a4
    80004ea4:	01059e13          	slli	t3,a1,0x10
    80004ea8:	01c76e33          	or	t3,a4,t3
    80004eac:	01859313          	slli	t1,a1,0x18
    80004eb0:	006e6333          	or	t1,t3,t1
    80004eb4:	02059893          	slli	a7,a1,0x20
    80004eb8:	40f60e3b          	subw	t3,a2,a5
    80004ebc:	011368b3          	or	a7,t1,a7
    80004ec0:	02859813          	slli	a6,a1,0x28
    80004ec4:	0108e833          	or	a6,a7,a6
    80004ec8:	03059693          	slli	a3,a1,0x30
    80004ecc:	003e589b          	srliw	a7,t3,0x3
    80004ed0:	00d866b3          	or	a3,a6,a3
    80004ed4:	03859713          	slli	a4,a1,0x38
    80004ed8:	00389813          	slli	a6,a7,0x3
    80004edc:	00f507b3          	add	a5,a0,a5
    80004ee0:	00e6e733          	or	a4,a3,a4
    80004ee4:	000e089b          	sext.w	a7,t3
    80004ee8:	00f806b3          	add	a3,a6,a5
    80004eec:	00e7b023          	sd	a4,0(a5)
    80004ef0:	00878793          	addi	a5,a5,8
    80004ef4:	fed79ce3          	bne	a5,a3,80004eec <__memset+0xd4>
    80004ef8:	ff8e7793          	andi	a5,t3,-8
    80004efc:	0007871b          	sext.w	a4,a5
    80004f00:	01d787bb          	addw	a5,a5,t4
    80004f04:	0ce88e63          	beq	a7,a4,80004fe0 <__memset+0x1c8>
    80004f08:	00f50733          	add	a4,a0,a5
    80004f0c:	00b70023          	sb	a1,0(a4)
    80004f10:	0017871b          	addiw	a4,a5,1
    80004f14:	0cc77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f18:	00e50733          	add	a4,a0,a4
    80004f1c:	00b70023          	sb	a1,0(a4)
    80004f20:	0027871b          	addiw	a4,a5,2
    80004f24:	0ac77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f28:	00e50733          	add	a4,a0,a4
    80004f2c:	00b70023          	sb	a1,0(a4)
    80004f30:	0037871b          	addiw	a4,a5,3
    80004f34:	0ac77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f38:	00e50733          	add	a4,a0,a4
    80004f3c:	00b70023          	sb	a1,0(a4)
    80004f40:	0047871b          	addiw	a4,a5,4
    80004f44:	08c77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f48:	00e50733          	add	a4,a0,a4
    80004f4c:	00b70023          	sb	a1,0(a4)
    80004f50:	0057871b          	addiw	a4,a5,5
    80004f54:	08c77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f58:	00e50733          	add	a4,a0,a4
    80004f5c:	00b70023          	sb	a1,0(a4)
    80004f60:	0067871b          	addiw	a4,a5,6
    80004f64:	06c77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f68:	00e50733          	add	a4,a0,a4
    80004f6c:	00b70023          	sb	a1,0(a4)
    80004f70:	0077871b          	addiw	a4,a5,7
    80004f74:	06c77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f78:	00e50733          	add	a4,a0,a4
    80004f7c:	00b70023          	sb	a1,0(a4)
    80004f80:	0087871b          	addiw	a4,a5,8
    80004f84:	04c77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f88:	00e50733          	add	a4,a0,a4
    80004f8c:	00b70023          	sb	a1,0(a4)
    80004f90:	0097871b          	addiw	a4,a5,9
    80004f94:	04c77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004f98:	00e50733          	add	a4,a0,a4
    80004f9c:	00b70023          	sb	a1,0(a4)
    80004fa0:	00a7871b          	addiw	a4,a5,10
    80004fa4:	02c77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004fa8:	00e50733          	add	a4,a0,a4
    80004fac:	00b70023          	sb	a1,0(a4)
    80004fb0:	00b7871b          	addiw	a4,a5,11
    80004fb4:	02c77663          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004fb8:	00e50733          	add	a4,a0,a4
    80004fbc:	00b70023          	sb	a1,0(a4)
    80004fc0:	00c7871b          	addiw	a4,a5,12
    80004fc4:	00c77e63          	bgeu	a4,a2,80004fe0 <__memset+0x1c8>
    80004fc8:	00e50733          	add	a4,a0,a4
    80004fcc:	00b70023          	sb	a1,0(a4)
    80004fd0:	00d7879b          	addiw	a5,a5,13
    80004fd4:	00c7f663          	bgeu	a5,a2,80004fe0 <__memset+0x1c8>
    80004fd8:	00f507b3          	add	a5,a0,a5
    80004fdc:	00b78023          	sb	a1,0(a5)
    80004fe0:	00813403          	ld	s0,8(sp)
    80004fe4:	01010113          	addi	sp,sp,16
    80004fe8:	00008067          	ret
    80004fec:	00b00693          	li	a3,11
    80004ff0:	e55ff06f          	j	80004e44 <__memset+0x2c>
    80004ff4:	00300e93          	li	t4,3
    80004ff8:	ea5ff06f          	j	80004e9c <__memset+0x84>
    80004ffc:	00100e93          	li	t4,1
    80005000:	e9dff06f          	j	80004e9c <__memset+0x84>
    80005004:	00000e93          	li	t4,0
    80005008:	e95ff06f          	j	80004e9c <__memset+0x84>
    8000500c:	00000793          	li	a5,0
    80005010:	ef9ff06f          	j	80004f08 <__memset+0xf0>
    80005014:	00200e93          	li	t4,2
    80005018:	e85ff06f          	j	80004e9c <__memset+0x84>
    8000501c:	00400e93          	li	t4,4
    80005020:	e7dff06f          	j	80004e9c <__memset+0x84>
    80005024:	00500e93          	li	t4,5
    80005028:	e75ff06f          	j	80004e9c <__memset+0x84>
    8000502c:	00600e93          	li	t4,6
    80005030:	e6dff06f          	j	80004e9c <__memset+0x84>

0000000080005034 <__memmove>:
    80005034:	ff010113          	addi	sp,sp,-16
    80005038:	00813423          	sd	s0,8(sp)
    8000503c:	01010413          	addi	s0,sp,16
    80005040:	0e060863          	beqz	a2,80005130 <__memmove+0xfc>
    80005044:	fff6069b          	addiw	a3,a2,-1
    80005048:	0006881b          	sext.w	a6,a3
    8000504c:	0ea5e863          	bltu	a1,a0,8000513c <__memmove+0x108>
    80005050:	00758713          	addi	a4,a1,7
    80005054:	00a5e7b3          	or	a5,a1,a0
    80005058:	40a70733          	sub	a4,a4,a0
    8000505c:	0077f793          	andi	a5,a5,7
    80005060:	00f73713          	sltiu	a4,a4,15
    80005064:	00174713          	xori	a4,a4,1
    80005068:	0017b793          	seqz	a5,a5
    8000506c:	00e7f7b3          	and	a5,a5,a4
    80005070:	10078863          	beqz	a5,80005180 <__memmove+0x14c>
    80005074:	00900793          	li	a5,9
    80005078:	1107f463          	bgeu	a5,a6,80005180 <__memmove+0x14c>
    8000507c:	0036581b          	srliw	a6,a2,0x3
    80005080:	fff8081b          	addiw	a6,a6,-1
    80005084:	02081813          	slli	a6,a6,0x20
    80005088:	01d85893          	srli	a7,a6,0x1d
    8000508c:	00858813          	addi	a6,a1,8
    80005090:	00058793          	mv	a5,a1
    80005094:	00050713          	mv	a4,a0
    80005098:	01088833          	add	a6,a7,a6
    8000509c:	0007b883          	ld	a7,0(a5)
    800050a0:	00878793          	addi	a5,a5,8
    800050a4:	00870713          	addi	a4,a4,8
    800050a8:	ff173c23          	sd	a7,-8(a4)
    800050ac:	ff0798e3          	bne	a5,a6,8000509c <__memmove+0x68>
    800050b0:	ff867713          	andi	a4,a2,-8
    800050b4:	02071793          	slli	a5,a4,0x20
    800050b8:	0207d793          	srli	a5,a5,0x20
    800050bc:	00f585b3          	add	a1,a1,a5
    800050c0:	40e686bb          	subw	a3,a3,a4
    800050c4:	00f507b3          	add	a5,a0,a5
    800050c8:	06e60463          	beq	a2,a4,80005130 <__memmove+0xfc>
    800050cc:	0005c703          	lbu	a4,0(a1)
    800050d0:	00e78023          	sb	a4,0(a5)
    800050d4:	04068e63          	beqz	a3,80005130 <__memmove+0xfc>
    800050d8:	0015c603          	lbu	a2,1(a1)
    800050dc:	00100713          	li	a4,1
    800050e0:	00c780a3          	sb	a2,1(a5)
    800050e4:	04e68663          	beq	a3,a4,80005130 <__memmove+0xfc>
    800050e8:	0025c603          	lbu	a2,2(a1)
    800050ec:	00200713          	li	a4,2
    800050f0:	00c78123          	sb	a2,2(a5)
    800050f4:	02e68e63          	beq	a3,a4,80005130 <__memmove+0xfc>
    800050f8:	0035c603          	lbu	a2,3(a1)
    800050fc:	00300713          	li	a4,3
    80005100:	00c781a3          	sb	a2,3(a5)
    80005104:	02e68663          	beq	a3,a4,80005130 <__memmove+0xfc>
    80005108:	0045c603          	lbu	a2,4(a1)
    8000510c:	00400713          	li	a4,4
    80005110:	00c78223          	sb	a2,4(a5)
    80005114:	00e68e63          	beq	a3,a4,80005130 <__memmove+0xfc>
    80005118:	0055c603          	lbu	a2,5(a1)
    8000511c:	00500713          	li	a4,5
    80005120:	00c782a3          	sb	a2,5(a5)
    80005124:	00e68663          	beq	a3,a4,80005130 <__memmove+0xfc>
    80005128:	0065c703          	lbu	a4,6(a1)
    8000512c:	00e78323          	sb	a4,6(a5)
    80005130:	00813403          	ld	s0,8(sp)
    80005134:	01010113          	addi	sp,sp,16
    80005138:	00008067          	ret
    8000513c:	02061713          	slli	a4,a2,0x20
    80005140:	02075713          	srli	a4,a4,0x20
    80005144:	00e587b3          	add	a5,a1,a4
    80005148:	f0f574e3          	bgeu	a0,a5,80005050 <__memmove+0x1c>
    8000514c:	02069613          	slli	a2,a3,0x20
    80005150:	02065613          	srli	a2,a2,0x20
    80005154:	fff64613          	not	a2,a2
    80005158:	00e50733          	add	a4,a0,a4
    8000515c:	00c78633          	add	a2,a5,a2
    80005160:	fff7c683          	lbu	a3,-1(a5)
    80005164:	fff78793          	addi	a5,a5,-1
    80005168:	fff70713          	addi	a4,a4,-1
    8000516c:	00d70023          	sb	a3,0(a4)
    80005170:	fec798e3          	bne	a5,a2,80005160 <__memmove+0x12c>
    80005174:	00813403          	ld	s0,8(sp)
    80005178:	01010113          	addi	sp,sp,16
    8000517c:	00008067          	ret
    80005180:	02069713          	slli	a4,a3,0x20
    80005184:	02075713          	srli	a4,a4,0x20
    80005188:	00170713          	addi	a4,a4,1
    8000518c:	00e50733          	add	a4,a0,a4
    80005190:	00050793          	mv	a5,a0
    80005194:	0005c683          	lbu	a3,0(a1)
    80005198:	00178793          	addi	a5,a5,1
    8000519c:	00158593          	addi	a1,a1,1
    800051a0:	fed78fa3          	sb	a3,-1(a5)
    800051a4:	fee798e3          	bne	a5,a4,80005194 <__memmove+0x160>
    800051a8:	f89ff06f          	j	80005130 <__memmove+0xfc>

00000000800051ac <__mem_free>:
    800051ac:	ff010113          	addi	sp,sp,-16
    800051b0:	00813423          	sd	s0,8(sp)
    800051b4:	01010413          	addi	s0,sp,16
    800051b8:	00002597          	auipc	a1,0x2
    800051bc:	05058593          	addi	a1,a1,80 # 80007208 <freep>
    800051c0:	0005b783          	ld	a5,0(a1)
    800051c4:	ff050693          	addi	a3,a0,-16
    800051c8:	0007b703          	ld	a4,0(a5)
    800051cc:	00d7fc63          	bgeu	a5,a3,800051e4 <__mem_free+0x38>
    800051d0:	00e6ee63          	bltu	a3,a4,800051ec <__mem_free+0x40>
    800051d4:	00e7fc63          	bgeu	a5,a4,800051ec <__mem_free+0x40>
    800051d8:	00070793          	mv	a5,a4
    800051dc:	0007b703          	ld	a4,0(a5)
    800051e0:	fed7e8e3          	bltu	a5,a3,800051d0 <__mem_free+0x24>
    800051e4:	fee7eae3          	bltu	a5,a4,800051d8 <__mem_free+0x2c>
    800051e8:	fee6f8e3          	bgeu	a3,a4,800051d8 <__mem_free+0x2c>
    800051ec:	ff852803          	lw	a6,-8(a0)
    800051f0:	02081613          	slli	a2,a6,0x20
    800051f4:	01c65613          	srli	a2,a2,0x1c
    800051f8:	00c68633          	add	a2,a3,a2
    800051fc:	02c70a63          	beq	a4,a2,80005230 <__mem_free+0x84>
    80005200:	fee53823          	sd	a4,-16(a0)
    80005204:	0087a503          	lw	a0,8(a5)
    80005208:	02051613          	slli	a2,a0,0x20
    8000520c:	01c65613          	srli	a2,a2,0x1c
    80005210:	00c78633          	add	a2,a5,a2
    80005214:	04c68263          	beq	a3,a2,80005258 <__mem_free+0xac>
    80005218:	00813403          	ld	s0,8(sp)
    8000521c:	00d7b023          	sd	a3,0(a5)
    80005220:	00f5b023          	sd	a5,0(a1)
    80005224:	00000513          	li	a0,0
    80005228:	01010113          	addi	sp,sp,16
    8000522c:	00008067          	ret
    80005230:	00872603          	lw	a2,8(a4)
    80005234:	00073703          	ld	a4,0(a4)
    80005238:	0106083b          	addw	a6,a2,a6
    8000523c:	ff052c23          	sw	a6,-8(a0)
    80005240:	fee53823          	sd	a4,-16(a0)
    80005244:	0087a503          	lw	a0,8(a5)
    80005248:	02051613          	slli	a2,a0,0x20
    8000524c:	01c65613          	srli	a2,a2,0x1c
    80005250:	00c78633          	add	a2,a5,a2
    80005254:	fcc692e3          	bne	a3,a2,80005218 <__mem_free+0x6c>
    80005258:	00813403          	ld	s0,8(sp)
    8000525c:	0105053b          	addw	a0,a0,a6
    80005260:	00a7a423          	sw	a0,8(a5)
    80005264:	00e7b023          	sd	a4,0(a5)
    80005268:	00f5b023          	sd	a5,0(a1)
    8000526c:	00000513          	li	a0,0
    80005270:	01010113          	addi	sp,sp,16
    80005274:	00008067          	ret

0000000080005278 <__mem_alloc>:
    80005278:	fc010113          	addi	sp,sp,-64
    8000527c:	02813823          	sd	s0,48(sp)
    80005280:	02913423          	sd	s1,40(sp)
    80005284:	03213023          	sd	s2,32(sp)
    80005288:	01513423          	sd	s5,8(sp)
    8000528c:	02113c23          	sd	ra,56(sp)
    80005290:	01313c23          	sd	s3,24(sp)
    80005294:	01413823          	sd	s4,16(sp)
    80005298:	01613023          	sd	s6,0(sp)
    8000529c:	04010413          	addi	s0,sp,64
    800052a0:	00002a97          	auipc	s5,0x2
    800052a4:	f68a8a93          	addi	s5,s5,-152 # 80007208 <freep>
    800052a8:	00f50913          	addi	s2,a0,15
    800052ac:	000ab683          	ld	a3,0(s5)
    800052b0:	00495913          	srli	s2,s2,0x4
    800052b4:	0019049b          	addiw	s1,s2,1
    800052b8:	00048913          	mv	s2,s1
    800052bc:	0c068c63          	beqz	a3,80005394 <__mem_alloc+0x11c>
    800052c0:	0006b503          	ld	a0,0(a3)
    800052c4:	00852703          	lw	a4,8(a0)
    800052c8:	10977063          	bgeu	a4,s1,800053c8 <__mem_alloc+0x150>
    800052cc:	000017b7          	lui	a5,0x1
    800052d0:	0009099b          	sext.w	s3,s2
    800052d4:	0af4e863          	bltu	s1,a5,80005384 <__mem_alloc+0x10c>
    800052d8:	02099a13          	slli	s4,s3,0x20
    800052dc:	01ca5a13          	srli	s4,s4,0x1c
    800052e0:	fff00b13          	li	s6,-1
    800052e4:	0100006f          	j	800052f4 <__mem_alloc+0x7c>
    800052e8:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    800052ec:	00852703          	lw	a4,8(a0)
    800052f0:	04977463          	bgeu	a4,s1,80005338 <__mem_alloc+0xc0>
    800052f4:	00050793          	mv	a5,a0
    800052f8:	fea698e3          	bne	a3,a0,800052e8 <__mem_alloc+0x70>
    800052fc:	000a0513          	mv	a0,s4
    80005300:	00000097          	auipc	ra,0x0
    80005304:	1f0080e7          	jalr	496(ra) # 800054f0 <kvmincrease>
    80005308:	00050793          	mv	a5,a0
    8000530c:	01050513          	addi	a0,a0,16
    80005310:	07678e63          	beq	a5,s6,8000538c <__mem_alloc+0x114>
    80005314:	0137a423          	sw	s3,8(a5)
    80005318:	00000097          	auipc	ra,0x0
    8000531c:	e94080e7          	jalr	-364(ra) # 800051ac <__mem_free>
    80005320:	000ab783          	ld	a5,0(s5)
    80005324:	06078463          	beqz	a5,8000538c <__mem_alloc+0x114>
    80005328:	0007b503          	ld	a0,0(a5)
    8000532c:	00078693          	mv	a3,a5
    80005330:	00852703          	lw	a4,8(a0)
    80005334:	fc9760e3          	bltu	a4,s1,800052f4 <__mem_alloc+0x7c>
    80005338:	08e48263          	beq	s1,a4,800053bc <__mem_alloc+0x144>
    8000533c:	4127073b          	subw	a4,a4,s2
    80005340:	02071693          	slli	a3,a4,0x20
    80005344:	01c6d693          	srli	a3,a3,0x1c
    80005348:	00e52423          	sw	a4,8(a0)
    8000534c:	00d50533          	add	a0,a0,a3
    80005350:	01252423          	sw	s2,8(a0)
    80005354:	00fab023          	sd	a5,0(s5)
    80005358:	01050513          	addi	a0,a0,16
    8000535c:	03813083          	ld	ra,56(sp)
    80005360:	03013403          	ld	s0,48(sp)
    80005364:	02813483          	ld	s1,40(sp)
    80005368:	02013903          	ld	s2,32(sp)
    8000536c:	01813983          	ld	s3,24(sp)
    80005370:	01013a03          	ld	s4,16(sp)
    80005374:	00813a83          	ld	s5,8(sp)
    80005378:	00013b03          	ld	s6,0(sp)
    8000537c:	04010113          	addi	sp,sp,64
    80005380:	00008067          	ret
    80005384:	000019b7          	lui	s3,0x1
    80005388:	f51ff06f          	j	800052d8 <__mem_alloc+0x60>
    8000538c:	00000513          	li	a0,0
    80005390:	fcdff06f          	j	8000535c <__mem_alloc+0xe4>
    80005394:	00003797          	auipc	a5,0x3
    80005398:	12c78793          	addi	a5,a5,300 # 800084c0 <base>
    8000539c:	00078513          	mv	a0,a5
    800053a0:	00fab023          	sd	a5,0(s5)
    800053a4:	00f7b023          	sd	a5,0(a5)
    800053a8:	00000713          	li	a4,0
    800053ac:	00003797          	auipc	a5,0x3
    800053b0:	1007ae23          	sw	zero,284(a5) # 800084c8 <base+0x8>
    800053b4:	00050693          	mv	a3,a0
    800053b8:	f11ff06f          	j	800052c8 <__mem_alloc+0x50>
    800053bc:	00053703          	ld	a4,0(a0)
    800053c0:	00e7b023          	sd	a4,0(a5)
    800053c4:	f91ff06f          	j	80005354 <__mem_alloc+0xdc>
    800053c8:	00068793          	mv	a5,a3
    800053cc:	f6dff06f          	j	80005338 <__mem_alloc+0xc0>

00000000800053d0 <__putc>:
    800053d0:	fe010113          	addi	sp,sp,-32
    800053d4:	00813823          	sd	s0,16(sp)
    800053d8:	00113c23          	sd	ra,24(sp)
    800053dc:	02010413          	addi	s0,sp,32
    800053e0:	00050793          	mv	a5,a0
    800053e4:	fef40593          	addi	a1,s0,-17
    800053e8:	00100613          	li	a2,1
    800053ec:	00000513          	li	a0,0
    800053f0:	fef407a3          	sb	a5,-17(s0)
    800053f4:	fffff097          	auipc	ra,0xfffff
    800053f8:	918080e7          	jalr	-1768(ra) # 80003d0c <console_write>
    800053fc:	01813083          	ld	ra,24(sp)
    80005400:	01013403          	ld	s0,16(sp)
    80005404:	02010113          	addi	sp,sp,32
    80005408:	00008067          	ret

000000008000540c <__getc>:
    8000540c:	fe010113          	addi	sp,sp,-32
    80005410:	00813823          	sd	s0,16(sp)
    80005414:	00113c23          	sd	ra,24(sp)
    80005418:	02010413          	addi	s0,sp,32
    8000541c:	fe840593          	addi	a1,s0,-24
    80005420:	00100613          	li	a2,1
    80005424:	00000513          	li	a0,0
    80005428:	fffff097          	auipc	ra,0xfffff
    8000542c:	8c4080e7          	jalr	-1852(ra) # 80003cec <console_read>
    80005430:	fe844503          	lbu	a0,-24(s0)
    80005434:	01813083          	ld	ra,24(sp)
    80005438:	01013403          	ld	s0,16(sp)
    8000543c:	02010113          	addi	sp,sp,32
    80005440:	00008067          	ret

0000000080005444 <console_handler>:
    80005444:	fe010113          	addi	sp,sp,-32
    80005448:	00813823          	sd	s0,16(sp)
    8000544c:	00113c23          	sd	ra,24(sp)
    80005450:	00913423          	sd	s1,8(sp)
    80005454:	02010413          	addi	s0,sp,32
    80005458:	14202773          	csrr	a4,scause
    8000545c:	100027f3          	csrr	a5,sstatus
    80005460:	0027f793          	andi	a5,a5,2
    80005464:	06079e63          	bnez	a5,800054e0 <console_handler+0x9c>
    80005468:	00074c63          	bltz	a4,80005480 <console_handler+0x3c>
    8000546c:	01813083          	ld	ra,24(sp)
    80005470:	01013403          	ld	s0,16(sp)
    80005474:	00813483          	ld	s1,8(sp)
    80005478:	02010113          	addi	sp,sp,32
    8000547c:	00008067          	ret
    80005480:	0ff77713          	andi	a4,a4,255
    80005484:	00900793          	li	a5,9
    80005488:	fef712e3          	bne	a4,a5,8000546c <console_handler+0x28>
    8000548c:	ffffe097          	auipc	ra,0xffffe
    80005490:	4b8080e7          	jalr	1208(ra) # 80003944 <plic_claim>
    80005494:	00a00793          	li	a5,10
    80005498:	00050493          	mv	s1,a0
    8000549c:	02f50c63          	beq	a0,a5,800054d4 <console_handler+0x90>
    800054a0:	fc0506e3          	beqz	a0,8000546c <console_handler+0x28>
    800054a4:	00050593          	mv	a1,a0
    800054a8:	00001517          	auipc	a0,0x1
    800054ac:	d6850513          	addi	a0,a0,-664 # 80006210 <CONSOLE_STATUS+0x200>
    800054b0:	fffff097          	auipc	ra,0xfffff
    800054b4:	8d8080e7          	jalr	-1832(ra) # 80003d88 <__printf>
    800054b8:	01013403          	ld	s0,16(sp)
    800054bc:	01813083          	ld	ra,24(sp)
    800054c0:	00048513          	mv	a0,s1
    800054c4:	00813483          	ld	s1,8(sp)
    800054c8:	02010113          	addi	sp,sp,32
    800054cc:	ffffe317          	auipc	t1,0xffffe
    800054d0:	4b030067          	jr	1200(t1) # 8000397c <plic_complete>
    800054d4:	fffff097          	auipc	ra,0xfffff
    800054d8:	1bc080e7          	jalr	444(ra) # 80004690 <uartintr>
    800054dc:	fddff06f          	j	800054b8 <console_handler+0x74>
    800054e0:	00001517          	auipc	a0,0x1
    800054e4:	e3050513          	addi	a0,a0,-464 # 80006310 <digits+0x78>
    800054e8:	fffff097          	auipc	ra,0xfffff
    800054ec:	844080e7          	jalr	-1980(ra) # 80003d2c <panic>

00000000800054f0 <kvmincrease>:
    800054f0:	fe010113          	addi	sp,sp,-32
    800054f4:	01213023          	sd	s2,0(sp)
    800054f8:	00001937          	lui	s2,0x1
    800054fc:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80005500:	00813823          	sd	s0,16(sp)
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	00913423          	sd	s1,8(sp)
    8000550c:	02010413          	addi	s0,sp,32
    80005510:	01250933          	add	s2,a0,s2
    80005514:	00c95913          	srli	s2,s2,0xc
    80005518:	02090863          	beqz	s2,80005548 <kvmincrease+0x58>
    8000551c:	00000493          	li	s1,0
    80005520:	00148493          	addi	s1,s1,1
    80005524:	fffff097          	auipc	ra,0xfffff
    80005528:	4bc080e7          	jalr	1212(ra) # 800049e0 <kalloc>
    8000552c:	fe991ae3          	bne	s2,s1,80005520 <kvmincrease+0x30>
    80005530:	01813083          	ld	ra,24(sp)
    80005534:	01013403          	ld	s0,16(sp)
    80005538:	00813483          	ld	s1,8(sp)
    8000553c:	00013903          	ld	s2,0(sp)
    80005540:	02010113          	addi	sp,sp,32
    80005544:	00008067          	ret
    80005548:	01813083          	ld	ra,24(sp)
    8000554c:	01013403          	ld	s0,16(sp)
    80005550:	00813483          	ld	s1,8(sp)
    80005554:	00013903          	ld	s2,0(sp)
    80005558:	00000513          	li	a0,0
    8000555c:	02010113          	addi	sp,sp,32
    80005560:	00008067          	ret
	...
