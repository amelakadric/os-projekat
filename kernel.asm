
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00007117          	auipc	sp,0x7
    80000004:	35813103          	ld	sp,856(sp) # 80007358 <_GLOBAL_OFFSET_TABLE_+0x20>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	41c030ef          	jal	ra,80003438 <start>

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
    80001170:	69d000ef          	jal	ra,8000200c <_ZN5Riscv20handleSupervisorTrapEv>

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
    80001428:	114080e7          	jalr	276(ra) # 80005538 <__getc>
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
    80001450:	0b0080e7          	jalr	176(ra) # 800054fc <__putc>
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
    80001484:	ee07b783          	ld	a5,-288(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001488:	0007b903          	ld	s2,0(a5)
        if (!tail) { tail = head; }
    }

    void addLast(T *data)
    {
        Elem *elem = new Elem(data, 0);
    8000148c:	01000513          	li	a0,16
    80001490:	00001097          	auipc	ra,0x1
    80001494:	a10080e7          	jalr	-1520(ra) # 80001ea0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80001498:	01253023          	sd	s2,0(a0)
    8000149c:	00053423          	sd	zero,8(a0)
        if (tail)
    800014a0:	0104b783          	ld	a5,16(s1)
    800014a4:	04078463          	beqz	a5,800014ec <_ZN10Ksemaphore5blockEv+0x88>
        {
            tail->next = elem;
    800014a8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014ac:	00a4b823          	sd	a0,16(s1)
    blocked.addLast(tr);
    TCB::running=Scheduler::get();
    800014b0:	00001097          	auipc	ra,0x1
    800014b4:	1c4080e7          	jalr	452(ra) # 80002674 <_ZN9Scheduler3getEv>
    800014b8:	00006797          	auipc	a5,0x6
    800014bc:	ea87b783          	ld	a5,-344(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x28>
    800014c0:	00a7b023          	sd	a0,0(a5)
    TCB::contextSwitch(&tr->context, &TCB::running->context);
    800014c4:	01850593          	addi	a1,a0,24
    800014c8:	01890513          	addi	a0,s2,24
    800014cc:	00000097          	auipc	ra,0x0
    800014d0:	d34080e7          	jalr	-716(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800014d4:	01813083          	ld	ra,24(sp)
    800014d8:	01013403          	ld	s0,16(sp)
    800014dc:	00813483          	ld	s1,8(sp)
    800014e0:	00013903          	ld	s2,0(sp)
    800014e4:	02010113          	addi	sp,sp,32
    800014e8:	00008067          	ret
        } else
        {
            head = tail = elem;
    800014ec:	00a4b823          	sd	a0,16(s1)
    800014f0:	00a4b423          	sd	a0,8(s1)
    800014f4:	fbdff06f          	j	800014b0 <_ZN10Ksemaphore5blockEv+0x4c>

00000000800014f8 <_ZN10Ksemaphore7unblockEv>:

void Ksemaphore::unblock() {
    800014f8:	fe010113          	addi	sp,sp,-32
    800014fc:	00113c23          	sd	ra,24(sp)
    80001500:	00813823          	sd	s0,16(sp)
    80001504:	00913423          	sd	s1,8(sp)
    80001508:	02010413          	addi	s0,sp,32
    8000150c:	00050793          	mv	a5,a0
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    80001510:	00853503          	ld	a0,8(a0)
    80001514:	04050263          	beqz	a0,80001558 <_ZN10Ksemaphore7unblockEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001518:	00853703          	ld	a4,8(a0)
    8000151c:	00e7b423          	sd	a4,8(a5)
        if (!head) { tail = 0; }
    80001520:	02070863          	beqz	a4,80001550 <_ZN10Ksemaphore7unblockEv+0x58>

        T *ret = elem->data;
    80001524:	00053483          	ld	s1,0(a0)
        delete elem;
    80001528:	00001097          	auipc	ra,0x1
    8000152c:	9c8080e7          	jalr	-1592(ra) # 80001ef0 <_ZdlPv>
    TCB *t = blocked.removeFirst();
    Scheduler::put(t);
    80001530:	00048513          	mv	a0,s1
    80001534:	00001097          	auipc	ra,0x1
    80001538:	1a8080e7          	jalr	424(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
}
    8000153c:	01813083          	ld	ra,24(sp)
    80001540:	01013403          	ld	s0,16(sp)
    80001544:	00813483          	ld	s1,8(sp)
    80001548:	02010113          	addi	sp,sp,32
    8000154c:	00008067          	ret
        if (!head) { tail = 0; }
    80001550:	0007b823          	sd	zero,16(a5)
    80001554:	fd1ff06f          	j	80001524 <_ZN10Ksemaphore7unblockEv+0x2c>
        if (!head) { return 0; }
    80001558:	00050493          	mv	s1,a0
    8000155c:	fd5ff06f          	j	80001530 <_ZN10Ksemaphore7unblockEv+0x38>

0000000080001560 <_ZN10Ksemaphore4waitEv>:

int Ksemaphore::wait() {
    if(--val<0){
    80001560:	00052783          	lw	a5,0(a0)
    80001564:	fff7879b          	addiw	a5,a5,-1
    80001568:	00f52023          	sw	a5,0(a0)
    8000156c:	02079713          	slli	a4,a5,0x20
    80001570:	00074663          	bltz	a4,8000157c <_ZN10Ksemaphore4waitEv+0x1c>
        block();
//        TCB::dispatchWithoutScheduler();
        return 0;
    }
    return 0;
}
    80001574:	00000513          	li	a0,0
    80001578:	00008067          	ret
int Ksemaphore::wait() {
    8000157c:	ff010113          	addi	sp,sp,-16
    80001580:	00113423          	sd	ra,8(sp)
    80001584:	00813023          	sd	s0,0(sp)
    80001588:	01010413          	addi	s0,sp,16
        block();
    8000158c:	00000097          	auipc	ra,0x0
    80001590:	ed8080e7          	jalr	-296(ra) # 80001464 <_ZN10Ksemaphore5blockEv>
}
    80001594:	00000513          	li	a0,0
    80001598:	00813083          	ld	ra,8(sp)
    8000159c:	00013403          	ld	s0,0(sp)
    800015a0:	01010113          	addi	sp,sp,16
    800015a4:	00008067          	ret

00000000800015a8 <_ZN10Ksemaphore6signalEv>:

int Ksemaphore::signal() {
    if(++val<=0) {
    800015a8:	00052783          	lw	a5,0(a0)
    800015ac:	0017879b          	addiw	a5,a5,1
    800015b0:	0007871b          	sext.w	a4,a5
    800015b4:	00f52023          	sw	a5,0(a0)
    800015b8:	00e05663          	blez	a4,800015c4 <_ZN10Ksemaphore6signalEv+0x1c>
        unblock();
        return 0;
    }
    return 1;
    800015bc:	00100513          	li	a0,1
}
    800015c0:	00008067          	ret
int Ksemaphore::signal() {
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00113423          	sd	ra,8(sp)
    800015cc:	00813023          	sd	s0,0(sp)
    800015d0:	01010413          	addi	s0,sp,16
        unblock();
    800015d4:	00000097          	auipc	ra,0x0
    800015d8:	f24080e7          	jalr	-220(ra) # 800014f8 <_ZN10Ksemaphore7unblockEv>
        return 0;
    800015dc:	00000513          	li	a0,0
}
    800015e0:	00813083          	ld	ra,8(sp)
    800015e4:	00013403          	ld	s0,0(sp)
    800015e8:	01010113          	addi	sp,sp,16
    800015ec:	00008067          	ret

00000000800015f0 <_ZN10Ksemaphore14closeSemaphoreEv>:
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    ksem->val=init;
    return ksem;
}

int Ksemaphore::closeSemaphore(){
    800015f0:	fe010113          	addi	sp,sp,-32
    800015f4:	00113c23          	sd	ra,24(sp)
    800015f8:	00813823          	sd	s0,16(sp)
    800015fc:	00913423          	sd	s1,8(sp)
    80001600:	01213023          	sd	s2,0(sp)
    80001604:	02010413          	addi	s0,sp,32
    80001608:	00050493          	mv	s1,a0
    8000160c:	0200006f          	j	8000162c <_ZN10Ksemaphore14closeSemaphoreEv+0x3c>
        if (!head) { tail = 0; }
    80001610:	0004b823          	sd	zero,16(s1)
        T *ret = elem->data;
    80001614:	00053903          	ld	s2,0(a0)
        delete elem;
    80001618:	00001097          	auipc	ra,0x1
    8000161c:	8d8080e7          	jalr	-1832(ra) # 80001ef0 <_ZdlPv>
    TCB* tcb;
    while((tcb= blocked.peekFirst())!= nullptr){
        tcb=blocked.removeFirst();
        Scheduler::put(tcb);
    80001620:	00090513          	mv	a0,s2
    80001624:	00001097          	auipc	ra,0x1
    80001628:	0b8080e7          	jalr	184(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
        return ret;
    }

    T *peekFirst()
    {
        if (!head) { return 0; }
    8000162c:	0084b503          	ld	a0,8(s1)
    80001630:	00050e63          	beqz	a0,8000164c <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        return head->data;
    80001634:	00053783          	ld	a5,0(a0)
    while((tcb= blocked.peekFirst())!= nullptr){
    80001638:	00078a63          	beqz	a5,8000164c <_ZN10Ksemaphore14closeSemaphoreEv+0x5c>
        head = head->next;
    8000163c:	00853783          	ld	a5,8(a0)
    80001640:	00f4b423          	sd	a5,8(s1)
        if (!head) { tail = 0; }
    80001644:	fc0798e3          	bnez	a5,80001614 <_ZN10Ksemaphore14closeSemaphoreEv+0x24>
    80001648:	fc9ff06f          	j	80001610 <_ZN10Ksemaphore14closeSemaphoreEv+0x20>
    }
    return 0;
}
    8000164c:	00000513          	li	a0,0
    80001650:	01813083          	ld	ra,24(sp)
    80001654:	01013403          	ld	s0,16(sp)
    80001658:	00813483          	ld	s1,8(sp)
    8000165c:	00013903          	ld	s2,0(sp)
    80001660:	02010113          	addi	sp,sp,32
    80001664:	00008067          	ret

0000000080001668 <_ZN10KsemaphoredlEPv>:
void Ksemaphore::operator delete(void *p) {
    80001668:	ff010113          	addi	sp,sp,-16
    8000166c:	00113423          	sd	ra,8(sp)
    80001670:	00813023          	sd	s0,0(sp)
    80001674:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001678:	00001097          	auipc	ra,0x1
    8000167c:	20c080e7          	jalr	524(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
    return;
}
    80001680:	00813083          	ld	ra,8(sp)
    80001684:	00013403          	ld	s0,0(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_ZN10KsemaphorenwEm>:

void *Ksemaphore::operator new(size_t n) {
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00113423          	sd	ra,8(sp)
    80001698:	00813023          	sd	s0,0(sp)
    8000169c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (Ksemaphore));
    800016a0:	01800513          	li	a0,24
    800016a4:	00001097          	auipc	ra,0x1
    800016a8:	144080e7          	jalr	324(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
}
    800016ac:	00813083          	ld	ra,8(sp)
    800016b0:	00013403          	ld	s0,0(sp)
    800016b4:	01010113          	addi	sp,sp,16
    800016b8:	00008067          	ret

00000000800016bc <_ZN10Ksemaphore15createSemaphoreEj>:
Ksemaphore *Ksemaphore::createSemaphore(unsigned int init) {
    800016bc:	fe010113          	addi	sp,sp,-32
    800016c0:	00113c23          	sd	ra,24(sp)
    800016c4:	00813823          	sd	s0,16(sp)
    800016c8:	00913423          	sd	s1,8(sp)
    800016cc:	02010413          	addi	s0,sp,32
    800016d0:	00050493          	mv	s1,a0
    Ksemaphore* ksem = (Ksemaphore*) new Ksemaphore(init);
    800016d4:	01800513          	li	a0,24
    800016d8:	00000097          	auipc	ra,0x0
    800016dc:	fb8080e7          	jalr	-72(ra) # 80001690 <_ZN10KsemaphorenwEm>

typedef Ksemaphore* sem_t;


class Ksemaphore{
    Ksemaphore(unsigned init =1):val(init){}
    800016e0:	00952023          	sw	s1,0(a0)
    List() : head(0), tail(0) {}
    800016e4:	00053423          	sd	zero,8(a0)
    800016e8:	00053823          	sd	zero,16(a0)
}
    800016ec:	01813083          	ld	ra,24(sp)
    800016f0:	01013403          	ld	s0,16(sp)
    800016f4:	00813483          	ld	s1,8(sp)
    800016f8:	02010113          	addi	sp,sp,32
    800016fc:	00008067          	ret

0000000080001700 <_Z16producerKeyboardPv>:
    sem_t wait;
};

volatile int threadEnd = 0;

void producerKeyboard(void *arg) {
    80001700:	fe010113          	addi	sp,sp,-32
    80001704:	00113c23          	sd	ra,24(sp)
    80001708:	00813823          	sd	s0,16(sp)
    8000170c:	00913423          	sd	s1,8(sp)
    80001710:	01213023          	sd	s2,0(sp)
    80001714:	02010413          	addi	s0,sp,32
    80001718:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int key;
    int i = 0;
    8000171c:	00000913          	li	s2,0
    80001720:	00c0006f          	j	8000172c <_Z16producerKeyboardPv+0x2c>
    while ((key = getc()) != 'A') {
        data->buffer->put(key);
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    80001724:	00000097          	auipc	ra,0x0
    80001728:	bc0080e7          	jalr	-1088(ra) # 800012e4 <_Z15thread_dispatchv>
    while ((key = getc()) != 'A') {
    8000172c:	00000097          	auipc	ra,0x0
    80001730:	ce8080e7          	jalr	-792(ra) # 80001414 <_Z4getcv>
    80001734:	0005059b          	sext.w	a1,a0
    80001738:	04100793          	li	a5,65
    8000173c:	02f58a63          	beq	a1,a5,80001770 <_Z16producerKeyboardPv+0x70>
        data->buffer->put(key);
    80001740:	0084b503          	ld	a0,8(s1)
    80001744:	00002097          	auipc	ra,0x2
    80001748:	a70080e7          	jalr	-1424(ra) # 800031b4 <_ZN6Buffer3putEi>
        i++;
    8000174c:	0019071b          	addiw	a4,s2,1
    80001750:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001754:	0004a683          	lw	a3,0(s1)
    80001758:	0026979b          	slliw	a5,a3,0x2
    8000175c:	00d787bb          	addw	a5,a5,a3
    80001760:	0017979b          	slliw	a5,a5,0x1
    80001764:	02f767bb          	remw	a5,a4,a5
    80001768:	fc0792e3          	bnez	a5,8000172c <_Z16producerKeyboardPv+0x2c>
    8000176c:	fb9ff06f          	j	80001724 <_Z16producerKeyboardPv+0x24>
        }
    }

    threadEnd = 1;
    80001770:	00100793          	li	a5,1
    80001774:	00006717          	auipc	a4,0x6
    80001778:	c4f72623          	sw	a5,-948(a4) # 800073c0 <threadEnd>
    data->buffer->put('!');
    8000177c:	02100593          	li	a1,33
    80001780:	0084b503          	ld	a0,8(s1)
    80001784:	00002097          	auipc	ra,0x2
    80001788:	a30080e7          	jalr	-1488(ra) # 800031b4 <_ZN6Buffer3putEi>

    sem_signal(data->wait);
    8000178c:	0104b503          	ld	a0,16(s1)
    80001790:	00000097          	auipc	ra,0x0
    80001794:	c58080e7          	jalr	-936(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80001798:	01813083          	ld	ra,24(sp)
    8000179c:	01013403          	ld	s0,16(sp)
    800017a0:	00813483          	ld	s1,8(sp)
    800017a4:	00013903          	ld	s2,0(sp)
    800017a8:	02010113          	addi	sp,sp,32
    800017ac:	00008067          	ret

00000000800017b0 <_Z8producerPv>:

void producer(void *arg) {
    800017b0:	fe010113          	addi	sp,sp,-32
    800017b4:	00113c23          	sd	ra,24(sp)
    800017b8:	00813823          	sd	s0,16(sp)
    800017bc:	00913423          	sd	s1,8(sp)
    800017c0:	01213023          	sd	s2,0(sp)
    800017c4:	02010413          	addi	s0,sp,32
    800017c8:	00050493          	mv	s1,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    800017cc:	00000913          	li	s2,0
    800017d0:	00c0006f          	j	800017dc <_Z8producerPv+0x2c>
    while (!threadEnd) {
        data->buffer->put(data->id + '0');
        i++;

        if (i % (10 * data->id) == 0) {
            thread_dispatch();
    800017d4:	00000097          	auipc	ra,0x0
    800017d8:	b10080e7          	jalr	-1264(ra) # 800012e4 <_Z15thread_dispatchv>
    while (!threadEnd) {
    800017dc:	00006797          	auipc	a5,0x6
    800017e0:	be47a783          	lw	a5,-1052(a5) # 800073c0 <threadEnd>
    800017e4:	02079e63          	bnez	a5,80001820 <_Z8producerPv+0x70>
        data->buffer->put(data->id + '0');
    800017e8:	0004a583          	lw	a1,0(s1)
    800017ec:	0305859b          	addiw	a1,a1,48
    800017f0:	0084b503          	ld	a0,8(s1)
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	9c0080e7          	jalr	-1600(ra) # 800031b4 <_ZN6Buffer3putEi>
        i++;
    800017fc:	0019071b          	addiw	a4,s2,1
    80001800:	0007091b          	sext.w	s2,a4
        if (i % (10 * data->id) == 0) {
    80001804:	0004a683          	lw	a3,0(s1)
    80001808:	0026979b          	slliw	a5,a3,0x2
    8000180c:	00d787bb          	addw	a5,a5,a3
    80001810:	0017979b          	slliw	a5,a5,0x1
    80001814:	02f767bb          	remw	a5,a4,a5
    80001818:	fc0792e3          	bnez	a5,800017dc <_Z8producerPv+0x2c>
    8000181c:	fb9ff06f          	j	800017d4 <_Z8producerPv+0x24>
        }
    }

    sem_signal(data->wait);
    80001820:	0104b503          	ld	a0,16(s1)
    80001824:	00000097          	auipc	ra,0x0
    80001828:	bc4080e7          	jalr	-1084(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    8000182c:	01813083          	ld	ra,24(sp)
    80001830:	01013403          	ld	s0,16(sp)
    80001834:	00813483          	ld	s1,8(sp)
    80001838:	00013903          	ld	s2,0(sp)
    8000183c:	02010113          	addi	sp,sp,32
    80001840:	00008067          	ret

0000000080001844 <_Z8consumerPv>:

void consumer(void *arg) {
    80001844:	fd010113          	addi	sp,sp,-48
    80001848:	02113423          	sd	ra,40(sp)
    8000184c:	02813023          	sd	s0,32(sp)
    80001850:	00913c23          	sd	s1,24(sp)
    80001854:	01213823          	sd	s2,16(sp)
    80001858:	01313423          	sd	s3,8(sp)
    8000185c:	03010413          	addi	s0,sp,48
    80001860:	00050913          	mv	s2,a0
    struct thread_data *data = (struct thread_data *) arg;

    int i = 0;
    80001864:	00000993          	li	s3,0
    80001868:	01c0006f          	j	80001884 <_Z8consumerPv+0x40>
        i++;

        putc(key);

        if (i % (5 * data->id) == 0) {
            thread_dispatch();
    8000186c:	00000097          	auipc	ra,0x0
    80001870:	a78080e7          	jalr	-1416(ra) # 800012e4 <_Z15thread_dispatchv>
    80001874:	0500006f          	j	800018c4 <_Z8consumerPv+0x80>
        }

        if (i % 80 == 0) {
            putc('\n');
    80001878:	00a00513          	li	a0,10
    8000187c:	00000097          	auipc	ra,0x0
    80001880:	bc0080e7          	jalr	-1088(ra) # 8000143c <_Z4putcc>
    while (!threadEnd) {
    80001884:	00006797          	auipc	a5,0x6
    80001888:	b3c7a783          	lw	a5,-1220(a5) # 800073c0 <threadEnd>
    8000188c:	06079063          	bnez	a5,800018ec <_Z8consumerPv+0xa8>
        int key = data->buffer->get();
    80001890:	00893503          	ld	a0,8(s2)
    80001894:	00002097          	auipc	ra,0x2
    80001898:	9b0080e7          	jalr	-1616(ra) # 80003244 <_ZN6Buffer3getEv>
        i++;
    8000189c:	0019849b          	addiw	s1,s3,1
    800018a0:	0004899b          	sext.w	s3,s1
        putc(key);
    800018a4:	0ff57513          	andi	a0,a0,255
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	b94080e7          	jalr	-1132(ra) # 8000143c <_Z4putcc>
        if (i % (5 * data->id) == 0) {
    800018b0:	00092703          	lw	a4,0(s2)
    800018b4:	0027179b          	slliw	a5,a4,0x2
    800018b8:	00e787bb          	addw	a5,a5,a4
    800018bc:	02f4e7bb          	remw	a5,s1,a5
    800018c0:	fa0786e3          	beqz	a5,8000186c <_Z8consumerPv+0x28>
        if (i % 80 == 0) {
    800018c4:	05000793          	li	a5,80
    800018c8:	02f4e4bb          	remw	s1,s1,a5
    800018cc:	fa049ce3          	bnez	s1,80001884 <_Z8consumerPv+0x40>
    800018d0:	fa9ff06f          	j	80001878 <_Z8consumerPv+0x34>
        }
    }

    while (data->buffer->getCnt() > 0) {
        int key = data->buffer->get();
    800018d4:	00893503          	ld	a0,8(s2)
    800018d8:	00002097          	auipc	ra,0x2
    800018dc:	96c080e7          	jalr	-1684(ra) # 80003244 <_ZN6Buffer3getEv>
        putc(key);
    800018e0:	0ff57513          	andi	a0,a0,255
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	b58080e7          	jalr	-1192(ra) # 8000143c <_Z4putcc>
    while (data->buffer->getCnt() > 0) {
    800018ec:	00893503          	ld	a0,8(s2)
    800018f0:	00002097          	auipc	ra,0x2
    800018f4:	9e0080e7          	jalr	-1568(ra) # 800032d0 <_ZN6Buffer6getCntEv>
    800018f8:	fca04ee3          	bgtz	a0,800018d4 <_Z8consumerPv+0x90>
    }
  sem_signal(data->wait);
    800018fc:	01093503          	ld	a0,16(s2)
    80001900:	00000097          	auipc	ra,0x0
    80001904:	ae8080e7          	jalr	-1304(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80001908:	02813083          	ld	ra,40(sp)
    8000190c:	02013403          	ld	s0,32(sp)
    80001910:	01813483          	ld	s1,24(sp)
    80001914:	01013903          	ld	s2,16(sp)
    80001918:	00813983          	ld	s3,8(sp)
    8000191c:	03010113          	addi	sp,sp,48
    80001920:	00008067          	ret

0000000080001924 <_Z22producerConsumer_C_APIv>:

void producerConsumer_C_API() {
    80001924:	f9010113          	addi	sp,sp,-112
    80001928:	06113423          	sd	ra,104(sp)
    8000192c:	06813023          	sd	s0,96(sp)
    80001930:	04913c23          	sd	s1,88(sp)
    80001934:	05213823          	sd	s2,80(sp)
    80001938:	05313423          	sd	s3,72(sp)
    8000193c:	05413023          	sd	s4,64(sp)
    80001940:	03513c23          	sd	s5,56(sp)
    80001944:	03613823          	sd	s6,48(sp)
    80001948:	07010413          	addi	s0,sp,112
        sem_wait(waitForAll);
    }

    sem_close(waitForAll);

    delete buffer;
    8000194c:	00010b13          	mv	s6,sp
    printString("Unesite broj proizvodjaca?\n");
    80001950:	00004517          	auipc	a0,0x4
    80001954:	6d050513          	addi	a0,a0,1744 # 80006020 <CONSOLE_STATUS+0x10>
    80001958:	00001097          	auipc	ra,0x1
    8000195c:	11c080e7          	jalr	284(ra) # 80002a74 <_Z11printStringPKc>
    getString(input, 30);
    80001960:	01e00593          	li	a1,30
    80001964:	fa040493          	addi	s1,s0,-96
    80001968:	00048513          	mv	a0,s1
    8000196c:	00001097          	auipc	ra,0x1
    80001970:	184080e7          	jalr	388(ra) # 80002af0 <_Z9getStringPci>
    threadNum = stringToInt(input);
    80001974:	00048513          	mv	a0,s1
    80001978:	00001097          	auipc	ra,0x1
    8000197c:	244080e7          	jalr	580(ra) # 80002bbc <_Z11stringToIntPKc>
    80001980:	00050913          	mv	s2,a0
    printString("Unesite velicinu bafera?\n");
    80001984:	00004517          	auipc	a0,0x4
    80001988:	6bc50513          	addi	a0,a0,1724 # 80006040 <CONSOLE_STATUS+0x30>
    8000198c:	00001097          	auipc	ra,0x1
    80001990:	0e8080e7          	jalr	232(ra) # 80002a74 <_Z11printStringPKc>
    getString(input, 30);
    80001994:	01e00593          	li	a1,30
    80001998:	00048513          	mv	a0,s1
    8000199c:	00001097          	auipc	ra,0x1
    800019a0:	154080e7          	jalr	340(ra) # 80002af0 <_Z9getStringPci>
    n = stringToInt(input);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00001097          	auipc	ra,0x1
    800019ac:	214080e7          	jalr	532(ra) # 80002bbc <_Z11stringToIntPKc>
    800019b0:	00050493          	mv	s1,a0
    printString("Broj proizvodjaca "); printInt(threadNum);
    800019b4:	00004517          	auipc	a0,0x4
    800019b8:	6ac50513          	addi	a0,a0,1708 # 80006060 <CONSOLE_STATUS+0x50>
    800019bc:	00001097          	auipc	ra,0x1
    800019c0:	0b8080e7          	jalr	184(ra) # 80002a74 <_Z11printStringPKc>
    800019c4:	00000613          	li	a2,0
    800019c8:	00a00593          	li	a1,10
    800019cc:	00090513          	mv	a0,s2
    800019d0:	00001097          	auipc	ra,0x1
    800019d4:	23c080e7          	jalr	572(ra) # 80002c0c <_Z8printIntiii>
    printString(" i velicina bafera "); printInt(n);
    800019d8:	00004517          	auipc	a0,0x4
    800019dc:	6a050513          	addi	a0,a0,1696 # 80006078 <CONSOLE_STATUS+0x68>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	094080e7          	jalr	148(ra) # 80002a74 <_Z11printStringPKc>
    800019e8:	00000613          	li	a2,0
    800019ec:	00a00593          	li	a1,10
    800019f0:	00048513          	mv	a0,s1
    800019f4:	00001097          	auipc	ra,0x1
    800019f8:	218080e7          	jalr	536(ra) # 80002c0c <_Z8printIntiii>
    printString(".\n");
    800019fc:	00004517          	auipc	a0,0x4
    80001a00:	69450513          	addi	a0,a0,1684 # 80006090 <CONSOLE_STATUS+0x80>
    80001a04:	00001097          	auipc	ra,0x1
    80001a08:	070080e7          	jalr	112(ra) # 80002a74 <_Z11printStringPKc>
    if(threadNum > n) {
    80001a0c:	0324c463          	blt	s1,s2,80001a34 <_Z22producerConsumer_C_APIv+0x110>
    } else if (threadNum < 1) {
    80001a10:	03205c63          	blez	s2,80001a48 <_Z22producerConsumer_C_APIv+0x124>
    Buffer *buffer = new Buffer(n);
    80001a14:	03800513          	li	a0,56
    80001a18:	00000097          	auipc	ra,0x0
    80001a1c:	488080e7          	jalr	1160(ra) # 80001ea0 <_Znwm>
    80001a20:	00050a13          	mv	s4,a0
    80001a24:	00048593          	mv	a1,s1
    80001a28:	00001097          	auipc	ra,0x1
    80001a2c:	6f0080e7          	jalr	1776(ra) # 80003118 <_ZN6BufferC1Ei>
    80001a30:	0300006f          	j	80001a60 <_Z22producerConsumer_C_APIv+0x13c>
        printString("Broj proizvodjaca ne sme biti manji od velicine bafera!\n");
    80001a34:	00004517          	auipc	a0,0x4
    80001a38:	66450513          	addi	a0,a0,1636 # 80006098 <CONSOLE_STATUS+0x88>
    80001a3c:	00001097          	auipc	ra,0x1
    80001a40:	038080e7          	jalr	56(ra) # 80002a74 <_Z11printStringPKc>
        return;
    80001a44:	0140006f          	j	80001a58 <_Z22producerConsumer_C_APIv+0x134>
        printString("Broj proizvodjaca mora biti veci od nula!\n");
    80001a48:	00004517          	auipc	a0,0x4
    80001a4c:	69050513          	addi	a0,a0,1680 # 800060d8 <CONSOLE_STATUS+0xc8>
    80001a50:	00001097          	auipc	ra,0x1
    80001a54:	024080e7          	jalr	36(ra) # 80002a74 <_Z11printStringPKc>
        return;
    80001a58:	000b0113          	mv	sp,s6
    80001a5c:	1500006f          	j	80001bac <_Z22producerConsumer_C_APIv+0x288>
    sem_open(&waitForAll, 0);
    80001a60:	00000593          	li	a1,0
    80001a64:	00006517          	auipc	a0,0x6
    80001a68:	96450513          	addi	a0,a0,-1692 # 800073c8 <waitForAll>
    80001a6c:	00000097          	auipc	ra,0x0
    80001a70:	8f4080e7          	jalr	-1804(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    thread_t threads[threadNum];
    80001a74:	00391793          	slli	a5,s2,0x3
    80001a78:	00f78793          	addi	a5,a5,15
    80001a7c:	ff07f793          	andi	a5,a5,-16
    80001a80:	40f10133          	sub	sp,sp,a5
    80001a84:	00010a93          	mv	s5,sp
    struct thread_data data[threadNum + 1];
    80001a88:	0019071b          	addiw	a4,s2,1
    80001a8c:	00171793          	slli	a5,a4,0x1
    80001a90:	00e787b3          	add	a5,a5,a4
    80001a94:	00379793          	slli	a5,a5,0x3
    80001a98:	00f78793          	addi	a5,a5,15
    80001a9c:	ff07f793          	andi	a5,a5,-16
    80001aa0:	40f10133          	sub	sp,sp,a5
    80001aa4:	00010993          	mv	s3,sp
    data[threadNum].id = threadNum;
    80001aa8:	00191613          	slli	a2,s2,0x1
    80001aac:	012607b3          	add	a5,a2,s2
    80001ab0:	00379793          	slli	a5,a5,0x3
    80001ab4:	00f987b3          	add	a5,s3,a5
    80001ab8:	0127a023          	sw	s2,0(a5)
    data[threadNum].buffer = buffer;
    80001abc:	0147b423          	sd	s4,8(a5)
    data[threadNum].wait = waitForAll;
    80001ac0:	00006717          	auipc	a4,0x6
    80001ac4:	90873703          	ld	a4,-1784(a4) # 800073c8 <waitForAll>
    80001ac8:	00e7b823          	sd	a4,16(a5)
    thread_create(&consumerThread, consumer, data + threadNum);
    80001acc:	00078613          	mv	a2,a5
    80001ad0:	00000597          	auipc	a1,0x0
    80001ad4:	d7458593          	addi	a1,a1,-652 # 80001844 <_Z8consumerPv>
    80001ad8:	f9840513          	addi	a0,s0,-104
    80001adc:	fffff097          	auipc	ra,0xfffff
    80001ae0:	7ac080e7          	jalr	1964(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001ae4:	00000493          	li	s1,0
    80001ae8:	0280006f          	j	80001b10 <_Z22producerConsumer_C_APIv+0x1ec>
        thread_create(threads + i,
    80001aec:	00000597          	auipc	a1,0x0
    80001af0:	c1458593          	addi	a1,a1,-1004 # 80001700 <_Z16producerKeyboardPv>
                      data + i);
    80001af4:	00179613          	slli	a2,a5,0x1
    80001af8:	00f60633          	add	a2,a2,a5
    80001afc:	00361613          	slli	a2,a2,0x3
        thread_create(threads + i,
    80001b00:	00c98633          	add	a2,s3,a2
    80001b04:	fffff097          	auipc	ra,0xfffff
    80001b08:	784080e7          	jalr	1924(ra) # 80001288 <_Z13thread_createPP3TCBPFvPvES2_>
    for (int i = 0; i < threadNum; i++) {
    80001b0c:	0014849b          	addiw	s1,s1,1
    80001b10:	0524d263          	bge	s1,s2,80001b54 <_Z22producerConsumer_C_APIv+0x230>
        data[i].id = i;
    80001b14:	00149793          	slli	a5,s1,0x1
    80001b18:	009787b3          	add	a5,a5,s1
    80001b1c:	00379793          	slli	a5,a5,0x3
    80001b20:	00f987b3          	add	a5,s3,a5
    80001b24:	0097a023          	sw	s1,0(a5)
        data[i].buffer = buffer;
    80001b28:	0147b423          	sd	s4,8(a5)
        data[i].wait = waitForAll;
    80001b2c:	00006717          	auipc	a4,0x6
    80001b30:	89c73703          	ld	a4,-1892(a4) # 800073c8 <waitForAll>
    80001b34:	00e7b823          	sd	a4,16(a5)
        thread_create(threads + i,
    80001b38:	00048793          	mv	a5,s1
    80001b3c:	00349513          	slli	a0,s1,0x3
    80001b40:	00aa8533          	add	a0,s5,a0
    80001b44:	fa9054e3          	blez	s1,80001aec <_Z22producerConsumer_C_APIv+0x1c8>
    80001b48:	00000597          	auipc	a1,0x0
    80001b4c:	c6858593          	addi	a1,a1,-920 # 800017b0 <_Z8producerPv>
    80001b50:	fa5ff06f          	j	80001af4 <_Z22producerConsumer_C_APIv+0x1d0>
    thread_dispatch();
    80001b54:	fffff097          	auipc	ra,0xfffff
    80001b58:	790080e7          	jalr	1936(ra) # 800012e4 <_Z15thread_dispatchv>
    for (int i = 0; i <= threadNum; i++) {
    80001b5c:	00000493          	li	s1,0
    80001b60:	00994e63          	blt	s2,s1,80001b7c <_Z22producerConsumer_C_APIv+0x258>
        sem_wait(waitForAll);
    80001b64:	00006517          	auipc	a0,0x6
    80001b68:	86453503          	ld	a0,-1948(a0) # 800073c8 <waitForAll>
    80001b6c:	00000097          	auipc	ra,0x0
    80001b70:	850080e7          	jalr	-1968(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    for (int i = 0; i <= threadNum; i++) {
    80001b74:	0014849b          	addiw	s1,s1,1
    80001b78:	fe9ff06f          	j	80001b60 <_Z22producerConsumer_C_APIv+0x23c>
    sem_close(waitForAll);
    80001b7c:	00006517          	auipc	a0,0x6
    80001b80:	84c53503          	ld	a0,-1972(a0) # 800073c8 <waitForAll>
    80001b84:	00000097          	auipc	ra,0x0
    80001b88:	80c080e7          	jalr	-2036(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    delete buffer;
    80001b8c:	000a0e63          	beqz	s4,80001ba8 <_Z22producerConsumer_C_APIv+0x284>
    80001b90:	000a0513          	mv	a0,s4
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	7c4080e7          	jalr	1988(ra) # 80003358 <_ZN6BufferD1Ev>
    80001b9c:	000a0513          	mv	a0,s4
    80001ba0:	00000097          	auipc	ra,0x0
    80001ba4:	350080e7          	jalr	848(ra) # 80001ef0 <_ZdlPv>
    80001ba8:	000b0113          	mv	sp,s6

}
    80001bac:	f9040113          	addi	sp,s0,-112
    80001bb0:	06813083          	ld	ra,104(sp)
    80001bb4:	06013403          	ld	s0,96(sp)
    80001bb8:	05813483          	ld	s1,88(sp)
    80001bbc:	05013903          	ld	s2,80(sp)
    80001bc0:	04813983          	ld	s3,72(sp)
    80001bc4:	04013a03          	ld	s4,64(sp)
    80001bc8:	03813a83          	ld	s5,56(sp)
    80001bcc:	03013b03          	ld	s6,48(sp)
    80001bd0:	07010113          	addi	sp,sp,112
    80001bd4:	00008067          	ret
    80001bd8:	00050493          	mv	s1,a0
    Buffer *buffer = new Buffer(n);
    80001bdc:	000a0513          	mv	a0,s4
    80001be0:	00000097          	auipc	ra,0x0
    80001be4:	310080e7          	jalr	784(ra) # 80001ef0 <_ZdlPv>
    80001be8:	00048513          	mv	a0,s1
    80001bec:	00007097          	auipc	ra,0x7
    80001bf0:	8ec080e7          	jalr	-1812(ra) # 800084d8 <_Unwind_Resume>

0000000080001bf4 <_Z8userMainv>:
//#include "../test/ConsumerProducer_CPP_Sync_API_test.hpp" // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

//#include "../test/ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "../test/ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain() {
    80001bf4:	ff010113          	addi	sp,sp,-16
    80001bf8:	00113423          	sd	ra,8(sp)
    80001bfc:	00813023          	sd	s0,0(sp)
    80001c00:	01010413          	addi	s0,sp,16
//    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
//    Threads_CPP_API_test(); // zadatak 2., niti CPP API i sinhrona promena konteksta

    producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    80001c04:	00000097          	auipc	ra,0x0
    80001c08:	d20080e7          	jalr	-736(ra) # 80001924 <_Z22producerConsumer_C_APIv>
//    producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
//    ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega

    80001c0c:	00813083          	ld	ra,8(sp)
    80001c10:	00013403          	ld	s0,0(sp)
    80001c14:	01010113          	addi	sp,sp,16
    80001c18:	00008067          	ret

0000000080001c1c <main>:
#include "../h/riscv.hpp"
#include "../h/syscall_c.h"

void userMain();

int main() {
    80001c1c:	ff010113          	addi	sp,sp,-16
    80001c20:	00113423          	sd	ra,8(sp)
    80001c24:	00813023          	sd	s0,0(sp)
    80001c28:	01010413          	addi	s0,sp,16
    MemoryAllocator::initMemoryAllocator();
    80001c2c:	00001097          	auipc	ra,0x1
    80001c30:	de8080e7          	jalr	-536(ra) # 80002a14 <_ZN15MemoryAllocator19initMemoryAllocatorEv>

    TCB::running= TCB::createThread(nullptr, nullptr);
    80001c34:	00000593          	li	a1,0
    80001c38:	00000513          	li	a0,0
    80001c3c:	00001097          	auipc	ra,0x1
    80001c40:	860080e7          	jalr	-1952(ra) # 8000249c <_ZN3TCB12createThreadEPFvPvES0_>
    80001c44:	00005797          	auipc	a5,0x5
    80001c48:	71c7b783          	ld	a5,1820(a5) # 80007360 <_GLOBAL_OFFSET_TABLE_+0x28>
    80001c4c:	00a7b023          	sd	a0,0(a5)

    Riscv::w_stvec((uint64) &Riscv::supervisorTrap);
    80001c50:	00005797          	auipc	a5,0x5
    80001c54:	6f87b783          	ld	a5,1784(a5) # 80007348 <_GLOBAL_OFFSET_TABLE_+0x10>
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec)
{
    __asm__ volatile ("csrw stvec, %[stvec]" : : [stvec] "r"(stvec));
    80001c58:	10579073          	csrw	stvec,a5
    __asm__ volatile ("csrw sip, %[sip]" : : [sip] "r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask)
{
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001c5c:	00200793          	li	a5,2
    80001c60:	1007a073          	csrs	sstatus,a5
    Riscv::ms_sstatus(Riscv::SSTATUS_SIE);

    userMain();
    80001c64:	00000097          	auipc	ra,0x0
    80001c68:	f90080e7          	jalr	-112(ra) # 80001bf4 <_Z8userMainv>

    return 0;

}
    80001c6c:	00000513          	li	a0,0
    80001c70:	00813083          	ld	ra,8(sp)
    80001c74:	00013403          	ld	s0,0(sp)
    80001c78:	01010113          	addi	sp,sp,16
    80001c7c:	00008067          	ret

0000000080001c80 <_ZN6ThreadD1Ev>:
#define _syscall_cpp
#include "../lib/console.h"
#include "syscall_c.h"


class Thread {
    80001c80:	ff010113          	addi	sp,sp,-16
    80001c84:	00813423          	sd	s0,8(sp)
    80001c88:	01010413          	addi	s0,sp,16
    80001c8c:	00813403          	ld	s0,8(sp)
    80001c90:	01010113          	addi	sp,sp,16
    80001c94:	00008067          	ret

0000000080001c98 <_ZN9SemaphoreD1Ev>:

Semaphore::Semaphore(unsigned int init) {
    sem_open(&myHandle, init);
}

Semaphore::~Semaphore() {
    80001c98:	ff010113          	addi	sp,sp,-16
    80001c9c:	00113423          	sd	ra,8(sp)
    80001ca0:	00813023          	sd	s0,0(sp)
    80001ca4:	01010413          	addi	s0,sp,16
    80001ca8:	00005797          	auipc	a5,0x5
    80001cac:	66878793          	addi	a5,a5,1640 # 80007310 <_ZTV9Semaphore+0x10>
    80001cb0:	00f53023          	sd	a5,0(a0)
    sem_close(myHandle);
    80001cb4:	00853503          	ld	a0,8(a0)
    80001cb8:	fffff097          	auipc	ra,0xfffff
    80001cbc:	6d8080e7          	jalr	1752(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80001cc0:	00813083          	ld	ra,8(sp)
    80001cc4:	00013403          	ld	s0,0(sp)
    80001cc8:	01010113          	addi	sp,sp,16
    80001ccc:	00008067          	ret

0000000080001cd0 <_ZN6Thread5startEv>:
int Thread::start (){
    80001cd0:	ff010113          	addi	sp,sp,-16
    80001cd4:	00113423          	sd	ra,8(sp)
    80001cd8:	00813023          	sd	s0,0(sp)
    80001cdc:	01010413          	addi	s0,sp,16
    thread_start(&myHandle);
    80001ce0:	00850513          	addi	a0,a0,8
    80001ce4:	fffff097          	auipc	ra,0xfffff
    80001ce8:	620080e7          	jalr	1568(ra) # 80001304 <_Z12thread_startPP3TCB>
}
    80001cec:	00000513          	li	a0,0
    80001cf0:	00813083          	ld	ra,8(sp)
    80001cf4:	00013403          	ld	s0,0(sp)
    80001cf8:	01010113          	addi	sp,sp,16
    80001cfc:	00008067          	ret

0000000080001d00 <_ZN6Thread8dispatchEv>:
void Thread::dispatch (){
    80001d00:	ff010113          	addi	sp,sp,-16
    80001d04:	00113423          	sd	ra,8(sp)
    80001d08:	00813023          	sd	s0,0(sp)
    80001d0c:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80001d10:	fffff097          	auipc	ra,0xfffff
    80001d14:	5d4080e7          	jalr	1492(ra) # 800012e4 <_Z15thread_dispatchv>
}
    80001d18:	00813083          	ld	ra,8(sp)
    80001d1c:	00013403          	ld	s0,0(sp)
    80001d20:	01010113          	addi	sp,sp,16
    80001d24:	00008067          	ret

0000000080001d28 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void*), void* arg) {
    80001d28:	ff010113          	addi	sp,sp,-16
    80001d2c:	00113423          	sd	ra,8(sp)
    80001d30:	00813023          	sd	s0,0(sp)
    80001d34:	01010413          	addi	s0,sp,16
    80001d38:	00005797          	auipc	a5,0x5
    80001d3c:	5b078793          	addi	a5,a5,1456 # 800072e8 <_ZTV6Thread+0x10>
    80001d40:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, body, arg);
    80001d44:	00850513          	addi	a0,a0,8
    80001d48:	fffff097          	auipc	ra,0xfffff
    80001d4c:	5e4080e7          	jalr	1508(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80001d50:	00813083          	ld	ra,8(sp)
    80001d54:	00013403          	ld	s0,0(sp)
    80001d58:	01010113          	addi	sp,sp,16
    80001d5c:	00008067          	ret

0000000080001d60 <_ZN6ThreadC1Ev>:
Thread::Thread() {
    80001d60:	ff010113          	addi	sp,sp,-16
    80001d64:	00113423          	sd	ra,8(sp)
    80001d68:	00813023          	sd	s0,0(sp)
    80001d6c:	01010413          	addi	s0,sp,16
    80001d70:	00005797          	auipc	a5,0x5
    80001d74:	57878793          	addi	a5,a5,1400 # 800072e8 <_ZTV6Thread+0x10>
    80001d78:	00f53023          	sd	a5,0(a0)
    thread_create2(&myHandle, myWrapper, this);
    80001d7c:	00050613          	mv	a2,a0
    80001d80:	00000597          	auipc	a1,0x0
    80001d84:	24058593          	addi	a1,a1,576 # 80001fc0 <_ZN6Thread9myWrapperEPv>
    80001d88:	00850513          	addi	a0,a0,8
    80001d8c:	fffff097          	auipc	ra,0xfffff
    80001d90:	5a0080e7          	jalr	1440(ra) # 8000132c <_Z14thread_create2PP3TCBPFvPvES2_>
}
    80001d94:	00813083          	ld	ra,8(sp)
    80001d98:	00013403          	ld	s0,0(sp)
    80001d9c:	01010113          	addi	sp,sp,16
    80001da0:	00008067          	ret

0000000080001da4 <_ZN6Thread5sleepEm>:
int Thread::sleep(time_t) {
    80001da4:	ff010113          	addi	sp,sp,-16
    80001da8:	00813423          	sd	s0,8(sp)
    80001dac:	01010413          	addi	s0,sp,16
}
    80001db0:	00000513          	li	a0,0
    80001db4:	00813403          	ld	s0,8(sp)
    80001db8:	01010113          	addi	sp,sp,16
    80001dbc:	00008067          	ret

0000000080001dc0 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init) {
    80001dc0:	ff010113          	addi	sp,sp,-16
    80001dc4:	00113423          	sd	ra,8(sp)
    80001dc8:	00813023          	sd	s0,0(sp)
    80001dcc:	01010413          	addi	s0,sp,16
    80001dd0:	00005797          	auipc	a5,0x5
    80001dd4:	54078793          	addi	a5,a5,1344 # 80007310 <_ZTV9Semaphore+0x10>
    80001dd8:	00f53023          	sd	a5,0(a0)
    sem_open(&myHandle, init);
    80001ddc:	00850513          	addi	a0,a0,8
    80001de0:	fffff097          	auipc	ra,0xfffff
    80001de4:	580080e7          	jalr	1408(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    80001de8:	00813083          	ld	ra,8(sp)
    80001dec:	00013403          	ld	s0,0(sp)
    80001df0:	01010113          	addi	sp,sp,16
    80001df4:	00008067          	ret

0000000080001df8 <_ZN9Semaphore4waitEv>:

int Semaphore::wait() {
    80001df8:	ff010113          	addi	sp,sp,-16
    80001dfc:	00113423          	sd	ra,8(sp)
    80001e00:	00813023          	sd	s0,0(sp)
    80001e04:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80001e08:	00853503          	ld	a0,8(a0)
    80001e0c:	fffff097          	auipc	ra,0xfffff
    80001e10:	5b0080e7          	jalr	1456(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
}
    80001e14:	00813083          	ld	ra,8(sp)
    80001e18:	00013403          	ld	s0,0(sp)
    80001e1c:	01010113          	addi	sp,sp,16
    80001e20:	00008067          	ret

0000000080001e24 <_ZN9Semaphore6signalEv>:

int Semaphore::signal() {
    80001e24:	ff010113          	addi	sp,sp,-16
    80001e28:	00113423          	sd	ra,8(sp)
    80001e2c:	00813023          	sd	s0,0(sp)
    80001e30:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80001e34:	00853503          	ld	a0,8(a0)
    80001e38:	fffff097          	auipc	ra,0xfffff
    80001e3c:	5b0080e7          	jalr	1456(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
}
    80001e40:	00813083          	ld	ra,8(sp)
    80001e44:	00013403          	ld	s0,0(sp)
    80001e48:	01010113          	addi	sp,sp,16
    80001e4c:	00008067          	ret

0000000080001e50 <_ZN7Console4getcEv>:

char Console::getc() {
    80001e50:	ff010113          	addi	sp,sp,-16
    80001e54:	00113423          	sd	ra,8(sp)
    80001e58:	00813023          	sd	s0,0(sp)
    80001e5c:	01010413          	addi	s0,sp,16
    return __getc();
    80001e60:	00003097          	auipc	ra,0x3
    80001e64:	6d8080e7          	jalr	1752(ra) # 80005538 <__getc>
}
    80001e68:	00813083          	ld	ra,8(sp)
    80001e6c:	00013403          	ld	s0,0(sp)
    80001e70:	01010113          	addi	sp,sp,16
    80001e74:	00008067          	ret

0000000080001e78 <_ZN7Console4putcEc>:

void Console::putc(char c) {
    80001e78:	ff010113          	addi	sp,sp,-16
    80001e7c:	00113423          	sd	ra,8(sp)
    80001e80:	00813023          	sd	s0,0(sp)
    80001e84:	01010413          	addi	s0,sp,16
    __putc(c);
    80001e88:	00003097          	auipc	ra,0x3
    80001e8c:	674080e7          	jalr	1652(ra) # 800054fc <__putc>
}
    80001e90:	00813083          	ld	ra,8(sp)
    80001e94:	00013403          	ld	s0,0(sp)
    80001e98:	01010113          	addi	sp,sp,16
    80001e9c:	00008067          	ret

0000000080001ea0 <_Znwm>:

void *operator new(size_t n)
{
    80001ea0:	ff010113          	addi	sp,sp,-16
    80001ea4:	00113423          	sd	ra,8(sp)
    80001ea8:	00813023          	sd	s0,0(sp)
    80001eac:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80001eb0:	00001097          	auipc	ra,0x1
    80001eb4:	938080e7          	jalr	-1736(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
//    return mem_alloc(n);
}
    80001eb8:	00813083          	ld	ra,8(sp)
    80001ebc:	00013403          	ld	s0,0(sp)
    80001ec0:	01010113          	addi	sp,sp,16
    80001ec4:	00008067          	ret

0000000080001ec8 <_Znam>:

void *operator new[](size_t n)
{
    80001ec8:	ff010113          	addi	sp,sp,-16
    80001ecc:	00113423          	sd	ra,8(sp)
    80001ed0:	00813023          	sd	s0,0(sp)
    80001ed4:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80001ed8:	00001097          	auipc	ra,0x1
    80001edc:	910080e7          	jalr	-1776(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
//   return mem_alloc(n);
}
    80001ee0:	00813083          	ld	ra,8(sp)
    80001ee4:	00013403          	ld	s0,0(sp)
    80001ee8:	01010113          	addi	sp,sp,16
    80001eec:	00008067          	ret

0000000080001ef0 <_ZdlPv>:

void operator delete(void *p)
{
    80001ef0:	ff010113          	addi	sp,sp,-16
    80001ef4:	00113423          	sd	ra,8(sp)
    80001ef8:	00813023          	sd	s0,0(sp)
    80001efc:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001f00:	00001097          	auipc	ra,0x1
    80001f04:	984080e7          	jalr	-1660(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80001f08:	00813083          	ld	ra,8(sp)
    80001f0c:	00013403          	ld	s0,0(sp)
    80001f10:	01010113          	addi	sp,sp,16
    80001f14:	00008067          	ret

0000000080001f18 <_ZN6ThreadD0Ev>:
    80001f18:	ff010113          	addi	sp,sp,-16
    80001f1c:	00113423          	sd	ra,8(sp)
    80001f20:	00813023          	sd	s0,0(sp)
    80001f24:	01010413          	addi	s0,sp,16
    80001f28:	00000097          	auipc	ra,0x0
    80001f2c:	fc8080e7          	jalr	-56(ra) # 80001ef0 <_ZdlPv>
    80001f30:	00813083          	ld	ra,8(sp)
    80001f34:	00013403          	ld	s0,0(sp)
    80001f38:	01010113          	addi	sp,sp,16
    80001f3c:	00008067          	ret

0000000080001f40 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80001f40:	fe010113          	addi	sp,sp,-32
    80001f44:	00113c23          	sd	ra,24(sp)
    80001f48:	00813823          	sd	s0,16(sp)
    80001f4c:	00913423          	sd	s1,8(sp)
    80001f50:	02010413          	addi	s0,sp,32
    80001f54:	00050493          	mv	s1,a0
}
    80001f58:	00000097          	auipc	ra,0x0
    80001f5c:	d40080e7          	jalr	-704(ra) # 80001c98 <_ZN9SemaphoreD1Ev>
    80001f60:	00048513          	mv	a0,s1
    80001f64:	00000097          	auipc	ra,0x0
    80001f68:	f8c080e7          	jalr	-116(ra) # 80001ef0 <_ZdlPv>
    80001f6c:	01813083          	ld	ra,24(sp)
    80001f70:	01013403          	ld	s0,16(sp)
    80001f74:	00813483          	ld	s1,8(sp)
    80001f78:	02010113          	addi	sp,sp,32
    80001f7c:	00008067          	ret

0000000080001f80 <_ZdaPv>:

void operator delete[](void *p)
{
    80001f80:	ff010113          	addi	sp,sp,-16
    80001f84:	00113423          	sd	ra,8(sp)
    80001f88:	00813023          	sd	s0,0(sp)
    80001f8c:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80001f90:	00001097          	auipc	ra,0x1
    80001f94:	8f4080e7          	jalr	-1804(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
//    mem_free(p);
}
    80001f98:	00813083          	ld	ra,8(sp)
    80001f9c:	00013403          	ld	s0,0(sp)
    80001fa0:	01010113          	addi	sp,sp,16
    80001fa4:	00008067          	ret

0000000080001fa8 <_ZN6Thread3runEv>:
    static void dispatch ();
    static int sleep (time_t);

protected:
    Thread ();
    virtual void run (){}
    80001fa8:	ff010113          	addi	sp,sp,-16
    80001fac:	00813423          	sd	s0,8(sp)
    80001fb0:	01010413          	addi	s0,sp,16
    80001fb4:	00813403          	ld	s0,8(sp)
    80001fb8:	01010113          	addi	sp,sp,16
    80001fbc:	00008067          	ret

0000000080001fc0 <_ZN6Thread9myWrapperEPv>:
private:
    thread_t myHandle;
    static void myWrapper(void* ptr)
    80001fc0:	ff010113          	addi	sp,sp,-16
    80001fc4:	00113423          	sd	ra,8(sp)
    80001fc8:	00813023          	sd	s0,0(sp)
    80001fcc:	01010413          	addi	s0,sp,16
    {
        Thread* thread = (Thread*)ptr;
        thread->run();
    80001fd0:	00053783          	ld	a5,0(a0)
    80001fd4:	0107b783          	ld	a5,16(a5)
    80001fd8:	000780e7          	jalr	a5
    }
    80001fdc:	00813083          	ld	ra,8(sp)
    80001fe0:	00013403          	ld	s0,0(sp)
    80001fe4:	01010113          	addi	sp,sp,16
    80001fe8:	00008067          	ret

0000000080001fec <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"

using Body = void (*)(void*);

void Riscv::popSppSpie()
{
    80001fec:	ff010113          	addi	sp,sp,-16
    80001ff0:	00813423          	sd	s0,8(sp)
    80001ff4:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    80001ff8:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80001ffc:	10200073          	sret
}
    80002000:	00813403          	ld	s0,8(sp)
    80002004:	01010113          	addi	sp,sp,16
    80002008:	00008067          	ret

000000008000200c <_ZN5Riscv20handleSupervisorTrapEv>:

void Riscv::handleSupervisorTrap()
{
    8000200c:	fb010113          	addi	sp,sp,-80
    80002010:	04113423          	sd	ra,72(sp)
    80002014:	04813023          	sd	s0,64(sp)
    80002018:	02913c23          	sd	s1,56(sp)
    8000201c:	03213823          	sd	s2,48(sp)
    80002020:	03313423          	sd	s3,40(sp)
    80002024:	05010413          	addi	s0,sp,80
    __asm__ volatile ("csrr %[scause], scause" : [scause] "=r"(scause));
    80002028:	142027f3          	csrr	a5,scause
    8000202c:	faf43823          	sd	a5,-80(s0)
    return scause;
    80002030:	fb043703          	ld	a4,-80(s0)
    uint64 scause = r_scause();

    if (scause == 0x0000000000000008UL || scause == 0x0000000000000009UL)
    80002034:	ff870693          	addi	a3,a4,-8
    80002038:	00100793          	li	a5,1
    8000203c:	02d7f863          	bgeu	a5,a3,8000206c <_ZN5Riscv20handleSupervisorTrapEv+0x60>

        w_sstatus(sstatus);
        w_sepc(sepc);


    } else if (scause == 0x8000000000000001UL)
    80002040:	fff00793          	li	a5,-1
    80002044:	03f79793          	slli	a5,a5,0x3f
    80002048:	00178793          	addi	a5,a5,1
    8000204c:	20f70063          	beq	a4,a5,8000224c <_ZN5Riscv20handleSupervisorTrapEv+0x240>
//            TCB::dispatch();
//            w_sstatus(sstatus);
//            w_sepc(sepc);
//        }
        mc_sip(SIP_SSIP);
    } else if (scause == 0x8000000000000009UL)
    80002050:	fff00793          	li	a5,-1
    80002054:	03f79793          	slli	a5,a5,0x3f
    80002058:	00978793          	addi	a5,a5,9
    8000205c:	0af71e63          	bne	a4,a5,80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    {
        // interrupt: yes; cause code: supervisor external interrupt (PLIC; could be keyboard)
        console_handler();
    80002060:	00003097          	auipc	ra,0x3
    80002064:	510080e7          	jalr	1296(ra) # 80005570 <console_handler>
    }else
    {
        // unexpected trap cause
    }
    80002068:	0b00006f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>
    __asm__ volatile ("csrr %[sepc], sepc" : [sepc] "=r"(sepc));
    8000206c:	141027f3          	csrr	a5,sepc
    80002070:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    80002074:	fc843483          	ld	s1,-56(s0)
        uint64 sepc = r_sepc() + 4;
    80002078:	00448493          	addi	s1,s1,4
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    8000207c:	100027f3          	csrr	a5,sstatus
    80002080:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    80002084:	fc043903          	ld	s2,-64(s0)


inline uint64 Riscv::r_a0()
{
    uint64 volatile a0;
    __asm__ volatile ("mv %[a0], a0" : [a0] "=r"(a0));
    80002088:	00050793          	mv	a5,a0
    8000208c:	faf43c23          	sd	a5,-72(s0)
    return a0;
    80002090:	fb843783          	ld	a5,-72(s0)
        if (a0 == 0x0000000000000001UL){
    80002094:	00100713          	li	a4,1
    80002098:	06e78463          	beq	a5,a4,80002100 <_ZN5Riscv20handleSupervisorTrapEv+0xf4>
        else if (a0 == 0x0000000000000002UL){
    8000209c:	00200713          	li	a4,2
    800020a0:	08e78a63          	beq	a5,a4,80002134 <_ZN5Riscv20handleSupervisorTrapEv+0x128>
        else if (a0 == 0x0000000000000011UL){
    800020a4:	01100713          	li	a4,17
    800020a8:	0ae78063          	beq	a5,a4,80002148 <_ZN5Riscv20handleSupervisorTrapEv+0x13c>
        else if (a0 == 0x0000000000000012UL){
    800020ac:	01200713          	li	a4,18
    800020b0:	0ce78463          	beq	a5,a4,80002178 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
        else if (a0 == 0x0000000000000013UL){
    800020b4:	01300713          	li	a4,19
    800020b8:	0ce78863          	beq	a5,a4,80002188 <_ZN5Riscv20handleSupervisorTrapEv+0x17c>
        else if (a0 == 0x0000000000000014UL){
    800020bc:	01400713          	li	a4,20
    800020c0:	0ee78063          	beq	a5,a4,800021a0 <_ZN5Riscv20handleSupervisorTrapEv+0x194>
        else if (a0 == 0x0000000000000015UL){
    800020c4:	01500713          	li	a4,21
    800020c8:	0ee78663          	beq	a5,a4,800021b4 <_ZN5Riscv20handleSupervisorTrapEv+0x1a8>
        else if (a0 == 0x0000000000000021UL) {
    800020cc:	02100713          	li	a4,33
    800020d0:	10e78a63          	beq	a5,a4,800021e4 <_ZN5Riscv20handleSupervisorTrapEv+0x1d8>
        else if (a0 == 0x0000000000000022UL) {
    800020d4:	02200713          	li	a4,34
    800020d8:	12e78e63          	beq	a5,a4,80002214 <_ZN5Riscv20handleSupervisorTrapEv+0x208>
        else if (a0 == 0x0000000000000023UL) {
    800020dc:	02300713          	li	a4,35
    800020e0:	14e78c63          	beq	a5,a4,80002238 <_ZN5Riscv20handleSupervisorTrapEv+0x22c>
        else if (a0 == 0x0000000000000024UL) {
    800020e4:	02400713          	li	a4,36
    800020e8:	02e79463          	bne	a5,a4,80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800020ec:	00058513          	mv	a0,a1
            a=sem->signal();
    800020f0:	fffff097          	auipc	ra,0xfffff
    800020f4:	4b8080e7          	jalr	1208(ra) # 800015a8 <_ZN10Ksemaphore6signalEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    800020f8:	00050513          	mv	a0,a0
    800020fc:	0140006f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002100:	00088513          	mv	a0,a7
            a=MemoryAllocator::malloc(a7);
    80002104:	00000097          	auipc	ra,0x0
    80002108:	6e4080e7          	jalr	1764(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
            __asm__ volatile("mv a0, %0"::"r"(a));
    8000210c:	00050513          	mv	a0,a0
    __asm__ volatile ("csrw sstatus, %[sstatus]" : : [sstatus] "r"(sstatus));
    80002110:	10091073          	csrw	sstatus,s2
    __asm__ volatile ("csrw sepc, %[sepc]" : : [sepc] "r"(sepc));
    80002114:	14149073          	csrw	sepc,s1
    80002118:	04813083          	ld	ra,72(sp)
    8000211c:	04013403          	ld	s0,64(sp)
    80002120:	03813483          	ld	s1,56(sp)
    80002124:	03013903          	ld	s2,48(sp)
    80002128:	02813983          	ld	s3,40(sp)
    8000212c:	05010113          	addi	sp,sp,80
    80002130:	00008067          	ret
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002134:	00088513          	mv	a0,a7
            a=MemoryAllocator::free(a7);
    80002138:	00000097          	auipc	ra,0x0
    8000213c:	74c080e7          	jalr	1868(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002140:	00050513          	mv	a0,a0
    80002144:	fcdff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    80002148:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    8000214c:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    80002150:	00088593          	mv	a1,a7
            *tcb = TCB::createThread(a2, a7);
    80002154:	00000097          	auipc	ra,0x0
    80002158:	348080e7          	jalr	840(ra) # 8000249c <_ZN3TCB12createThreadEPFvPvES0_>
    8000215c:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    80002160:	00098863          	beqz	s3,80002170 <_ZN5Riscv20handleSupervisorTrapEv+0x164>
    80002164:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    80002168:	00078513          	mv	a0,a5
    8000216c:	fa5ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    80002170:	fff00793          	li	a5,-1
    80002174:	ff5ff06f          	j	80002168 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            a=TCB::exitThread();
    80002178:	00000097          	auipc	ra,0x0
    8000217c:	204080e7          	jalr	516(ra) # 8000237c <_ZN3TCB10exitThreadEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002180:	00050513          	mv	a0,a0
    80002184:	f8dff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            TCB::timeSliceCounter = 0;
    80002188:	00005797          	auipc	a5,0x5
    8000218c:	1c87b783          	ld	a5,456(a5) # 80007350 <_GLOBAL_OFFSET_TABLE_+0x18>
    80002190:	0007b023          	sd	zero,0(a5)
            TCB::dispatch();
    80002194:	00000097          	auipc	ra,0x0
    80002198:	0ec080e7          	jalr	236(ra) # 80002280 <_ZN3TCB8dispatchEv>
    8000219c:	f75ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800021a0:	00058793          	mv	a5,a1
            Scheduler::put(*tcb);
    800021a4:	0007b503          	ld	a0,0(a5)
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	534080e7          	jalr	1332(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
    800021b0:	f61ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(tcb));
    800021b4:	00058993          	mv	s3,a1
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800021b8:	00060513          	mv	a0,a2
            __asm__ volatile ("mv %[a7], a7" : [a7] "=r"(a7));
    800021bc:	00088593          	mv	a1,a7
            *tcb = TCB::createThreadWithoutPuttingInScheduler(a2, a7);
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	3b0080e7          	jalr	944(ra) # 80002570 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>
    800021c8:	00a9b023          	sd	a0,0(s3)
            a0=(tcb!= nullptr)?0 : -1;
    800021cc:	00098863          	beqz	s3,800021dc <_ZN5Riscv20handleSupervisorTrapEv+0x1d0>
    800021d0:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a0));
    800021d4:	00078513          	mv	a0,a5
    800021d8:	f39ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            a0=(tcb!= nullptr)?0 : -1;
    800021dc:	fff00793          	li	a5,-1
    800021e0:	ff5ff06f          	j	800021d4 <_ZN5Riscv20handleSupervisorTrapEv+0x1c8>
            __asm__ volatile ("mv %[a2], a2" : [a2] "=r"(a2));
    800021e4:	00060513          	mv	a0,a2
    800021e8:	0005051b          	sext.w	a0,a0
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    800021ec:	00058993          	mv	s3,a1
            *sem = Ksemaphore::createSemaphore(a2);
    800021f0:	fffff097          	auipc	ra,0xfffff
    800021f4:	4cc080e7          	jalr	1228(ra) # 800016bc <_ZN10Ksemaphore15createSemaphoreEj>
    800021f8:	00a9b023          	sd	a0,0(s3)
            uint64 a= (sem!= nullptr)?0: -1;
    800021fc:	00098863          	beqz	s3,8000220c <_ZN5Riscv20handleSupervisorTrapEv+0x200>
    80002200:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002204:	00078513          	mv	a0,a5
    80002208:	f09ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
            uint64 a= (sem!= nullptr)?0: -1;
    8000220c:	fff00793          	li	a5,-1
    80002210:	ff5ff06f          	j	80002204 <_ZN5Riscv20handleSupervisorTrapEv+0x1f8>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(sem));
    80002214:	00058513          	mv	a0,a1
            if(sem== nullptr){
    80002218:	00050c63          	beqz	a0,80002230 <_ZN5Riscv20handleSupervisorTrapEv+0x224>
                sem->closeSemaphore();
    8000221c:	fffff097          	auipc	ra,0xfffff
    80002220:	3d4080e7          	jalr	980(ra) # 800015f0 <_ZN10Ksemaphore14closeSemaphoreEv>
            a=0;
    80002224:	00000793          	li	a5,0
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002228:	00078513          	mv	a0,a5
    8000222c:	ee5ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
                a=1;
    80002230:	00100793          	li	a5,1
    80002234:	ff5ff06f          	j	80002228 <_ZN5Riscv20handleSupervisorTrapEv+0x21c>
            __asm__ volatile ("mv %[a1], a1" : [a1] "=r"(a1));
    80002238:	00058513          	mv	a0,a1
            a = a1->wait();
    8000223c:	fffff097          	auipc	ra,0xfffff
    80002240:	324080e7          	jalr	804(ra) # 80001560 <_ZN10Ksemaphore4waitEv>
            __asm__ volatile("mv a0, %0"::"r"(a));
    80002244:	00050513          	mv	a0,a0
    80002248:	ec9ff06f          	j	80002110 <_ZN5Riscv20handleSupervisorTrapEv+0x104>
    __asm__ volatile ("csrc sip, %[mask]" : : [mask] "r"(mask));
    8000224c:	00200793          	li	a5,2
    80002250:	1447b073          	csrc	sip,a5
}
    80002254:	ec5ff06f          	j	80002118 <_ZN5Riscv20handleSupervisorTrapEv+0x10c>

0000000080002258 <_ZN3TCB14putInSchedulerEPS_>:
        Scheduler::put(t);
    }
    return t;
}

void TCB::putInScheduler(TCB *tcb) {
    80002258:	ff010113          	addi	sp,sp,-16
    8000225c:	00113423          	sd	ra,8(sp)
    80002260:	00813023          	sd	s0,0(sp)
    80002264:	01010413          	addi	s0,sp,16
    Scheduler::put(tcb);
    80002268:	00000097          	auipc	ra,0x0
    8000226c:	474080e7          	jalr	1140(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
}
    80002270:	00813083          	ld	ra,8(sp)
    80002274:	00013403          	ld	s0,0(sp)
    80002278:	01010113          	addi	sp,sp,16
    8000227c:	00008067          	ret

0000000080002280 <_ZN3TCB8dispatchEv>:
    TCB::dispatchWithoutScheduler();
    Riscv::popRegisters();
}

void TCB::dispatch()
{
    80002280:	fe010113          	addi	sp,sp,-32
    80002284:	00113c23          	sd	ra,24(sp)
    80002288:	00813823          	sd	s0,16(sp)
    8000228c:	00913423          	sd	s1,8(sp)
    80002290:	02010413          	addi	s0,sp,32
//    running = Scheduler::get();
//    if(old== nullptr){
//        old=running;
//        return;
//    }
    TCB *old = running;
    80002294:	00005497          	auipc	s1,0x5
    80002298:	13c4b483          	ld	s1,316(s1) # 800073d0 <_ZN3TCB7runningE>
    using Body = void (*)(void*);
    TCB();

    ~TCB() { delete[] stack; }

    bool isFinished() const { return finished; }
    8000229c:	0304c783          	lbu	a5,48(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800022a0:	02078c63          	beqz	a5,800022d8 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800022a4:	00000097          	auipc	ra,0x0
    800022a8:	3d0080e7          	jalr	976(ra) # 80002674 <_ZN9Scheduler3getEv>
    800022ac:	00005797          	auipc	a5,0x5
    800022b0:	12a7b223          	sd	a0,292(a5) # 800073d0 <_ZN3TCB7runningE>

    TCB::contextSwitch(&old->context, &running->context);
    800022b4:	01850593          	addi	a1,a0,24
    800022b8:	01848513          	addi	a0,s1,24
    800022bc:	fffff097          	auipc	ra,0xfffff
    800022c0:	f44080e7          	jalr	-188(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800022c4:	01813083          	ld	ra,24(sp)
    800022c8:	01013403          	ld	s0,16(sp)
    800022cc:	00813483          	ld	s1,8(sp)
    800022d0:	02010113          	addi	sp,sp,32
    800022d4:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    800022d8:	00048513          	mv	a0,s1
    800022dc:	00000097          	auipc	ra,0x0
    800022e0:	400080e7          	jalr	1024(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
    800022e4:	fc1ff06f          	j	800022a4 <_ZN3TCB8dispatchEv+0x24>

00000000800022e8 <_ZN3TCB5yieldEv>:
{
    800022e8:	ff010113          	addi	sp,sp,-16
    800022ec:	00113423          	sd	ra,8(sp)
    800022f0:	00813023          	sd	s0,0(sp)
    800022f4:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    800022f8:	fffff097          	auipc	ra,0xfffff
    800022fc:	d08080e7          	jalr	-760(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatch();
    80002300:	00000097          	auipc	ra,0x0
    80002304:	f80080e7          	jalr	-128(ra) # 80002280 <_ZN3TCB8dispatchEv>
    Riscv::popRegisters();
    80002308:	fffff097          	auipc	ra,0xfffff
    8000230c:	d70080e7          	jalr	-656(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002310:	00813083          	ld	ra,8(sp)
    80002314:	00013403          	ld	s0,0(sp)
    80002318:	01010113          	addi	sp,sp,16
    8000231c:	00008067          	ret

0000000080002320 <_ZN3TCB13threadWrapperEv>:

void TCB::threadWrapper(){
    80002320:	fe010113          	addi	sp,sp,-32
    80002324:	00113c23          	sd	ra,24(sp)
    80002328:	00813823          	sd	s0,16(sp)
    8000232c:	00913423          	sd	s1,8(sp)
    80002330:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    80002334:	00000097          	auipc	ra,0x0
    80002338:	cb8080e7          	jalr	-840(ra) # 80001fec <_ZN5Riscv10popSppSpieEv>
    running->body(running->arg);
    8000233c:	00005497          	auipc	s1,0x5
    80002340:	09448493          	addi	s1,s1,148 # 800073d0 <_ZN3TCB7runningE>
    80002344:	0004b783          	ld	a5,0(s1)
    80002348:	0007b703          	ld	a4,0(a5)
    8000234c:	0087b503          	ld	a0,8(a5)
    80002350:	000700e7          	jalr	a4
    running->setFinished(true);
    80002354:	0004b783          	ld	a5,0(s1)


    void setFinished(bool value) { finished = value; }
    80002358:	00100713          	li	a4,1
    8000235c:	02e78823          	sb	a4,48(a5)
    TCB::yield();
    80002360:	00000097          	auipc	ra,0x0
    80002364:	f88080e7          	jalr	-120(ra) # 800022e8 <_ZN3TCB5yieldEv>
}
    80002368:	01813083          	ld	ra,24(sp)
    8000236c:	01013403          	ld	s0,16(sp)
    80002370:	00813483          	ld	s1,8(sp)
    80002374:	02010113          	addi	sp,sp,32
    80002378:	00008067          	ret

000000008000237c <_ZN3TCB10exitThreadEv>:

int TCB::exitThread() {
    8000237c:	ff010113          	addi	sp,sp,-16
    80002380:	00113423          	sd	ra,8(sp)
    80002384:	00813023          	sd	s0,0(sp)
    80002388:	01010413          	addi	s0,sp,16
    8000238c:	00005797          	auipc	a5,0x5
    80002390:	0447b783          	ld	a5,68(a5) # 800073d0 <_ZN3TCB7runningE>
    80002394:	00100713          	li	a4,1
    80002398:	02e78823          	sb	a4,48(a5)
    running->setFinished(true);
    dispatch();
    8000239c:	00000097          	auipc	ra,0x0
    800023a0:	ee4080e7          	jalr	-284(ra) # 80002280 <_ZN3TCB8dispatchEv>
//    running = Scheduler::get();
//    timeSliceCounter=0;
//    TCB::contextSwitch(&old->context, &running->context);
//    if (running== nullptr)return -1;
    return 0;
}
    800023a4:	00000513          	li	a0,0
    800023a8:	00813083          	ld	ra,8(sp)
    800023ac:	00013403          	ld	s0,0(sp)
    800023b0:	01010113          	addi	sp,sp,16
    800023b4:	00008067          	ret

00000000800023b8 <_ZN3TCB24dispatchWithoutSchedulerEv>:


void TCB::dispatchWithoutScheduler(){
    800023b8:	fe010113          	addi	sp,sp,-32
    800023bc:	00113c23          	sd	ra,24(sp)
    800023c0:	00813823          	sd	s0,16(sp)
    800023c4:	00913423          	sd	s1,8(sp)
    800023c8:	01213023          	sd	s2,0(sp)
    800023cc:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800023d0:	00005497          	auipc	s1,0x5
    800023d4:	00048493          	mv	s1,s1
    800023d8:	0004b903          	ld	s2,0(s1) # 800073d0 <_ZN3TCB7runningE>
    running = Scheduler::get();
    800023dc:	00000097          	auipc	ra,0x0
    800023e0:	298080e7          	jalr	664(ra) # 80002674 <_ZN9Scheduler3getEv>
    800023e4:	00a4b023          	sd	a0,0(s1)
    TCB::contextSwitch(&old->context, &running->context);
    800023e8:	01850593          	addi	a1,a0,24
    800023ec:	01890513          	addi	a0,s2,24
    800023f0:	fffff097          	auipc	ra,0xfffff
    800023f4:	e10080e7          	jalr	-496(ra) # 80001200 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800023f8:	01813083          	ld	ra,24(sp)
    800023fc:	01013403          	ld	s0,16(sp)
    80002400:	00813483          	ld	s1,8(sp)
    80002404:	00013903          	ld	s2,0(sp)
    80002408:	02010113          	addi	sp,sp,32
    8000240c:	00008067          	ret

0000000080002410 <_ZN3TCB21yieldWithoutSchedulerEv>:
{
    80002410:	ff010113          	addi	sp,sp,-16
    80002414:	00113423          	sd	ra,8(sp)
    80002418:	00813023          	sd	s0,0(sp)
    8000241c:	01010413          	addi	s0,sp,16
    Riscv::pushRegisters();
    80002420:	fffff097          	auipc	ra,0xfffff
    80002424:	be0080e7          	jalr	-1056(ra) # 80001000 <_ZN5Riscv13pushRegistersEv>
    TCB::dispatchWithoutScheduler();
    80002428:	00000097          	auipc	ra,0x0
    8000242c:	f90080e7          	jalr	-112(ra) # 800023b8 <_ZN3TCB24dispatchWithoutSchedulerEv>
    Riscv::popRegisters();
    80002430:	fffff097          	auipc	ra,0xfffff
    80002434:	c48080e7          	jalr	-952(ra) # 80001078 <_ZN5Riscv12popRegistersEv>
}
    80002438:	00813083          	ld	ra,8(sp)
    8000243c:	00013403          	ld	s0,0(sp)
    80002440:	01010113          	addi	sp,sp,16
    80002444:	00008067          	ret

0000000080002448 <_ZN3TCBdlEPv>:

void TCB::operator delete(void *p) {
    80002448:	ff010113          	addi	sp,sp,-16
    8000244c:	00113423          	sd	ra,8(sp)
    80002450:	00813023          	sd	s0,0(sp)
    80002454:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    80002458:	00000097          	auipc	ra,0x0
    8000245c:	42c080e7          	jalr	1068(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
    return;

}
    80002460:	00813083          	ld	ra,8(sp)
    80002464:	00013403          	ld	s0,0(sp)
    80002468:	01010113          	addi	sp,sp,16
    8000246c:	00008067          	ret

0000000080002470 <_ZN3TCBnwEm>:

void *TCB::operator new(size_t n) {
    80002470:	ff010113          	addi	sp,sp,-16
    80002474:	00113423          	sd	ra,8(sp)
    80002478:	00813023          	sd	s0,0(sp)
    8000247c:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(sizeof (TCB));
    80002480:	03800513          	li	a0,56
    80002484:	00000097          	auipc	ra,0x0
    80002488:	364080e7          	jalr	868(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>

}
    8000248c:	00813083          	ld	ra,8(sp)
    80002490:	00013403          	ld	s0,0(sp)
    80002494:	01010113          	addi	sp,sp,16
    80002498:	00008067          	ret

000000008000249c <_ZN3TCB12createThreadEPFvPvES0_>:
{
    8000249c:	fd010113          	addi	sp,sp,-48
    800024a0:	02113423          	sd	ra,40(sp)
    800024a4:	02813023          	sd	s0,32(sp)
    800024a8:	00913c23          	sd	s1,24(sp)
    800024ac:	01213823          	sd	s2,16(sp)
    800024b0:	01313423          	sd	s3,8(sp)
    800024b4:	03010413          	addi	s0,sp,48
    800024b8:	00050913          	mv	s2,a0
    800024bc:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    800024c0:	03800513          	li	a0,56
    800024c4:	00000097          	auipc	ra,0x0
    800024c8:	fac080e7          	jalr	-84(ra) # 80002470 <_ZN3TCBnwEm>
    800024cc:	00050493          	mv	s1,a0
//    }),
//    timeSlice(timeSlice),
//            finished(false)
    TCB(Body bodyy, void* argg, uint64 timeSlicee)
    {
        body = bodyy;
    800024d0:	01253023          	sd	s2,0(a0)
        arg=argg;
    800024d4:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    800024d8:	00090a63          	beqz	s2,800024ec <_ZN3TCB12createThreadEPFvPvES0_+0x50>
    800024dc:	00008537          	lui	a0,0x8
    800024e0:	00000097          	auipc	ra,0x0
    800024e4:	308080e7          	jalr	776(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
    800024e8:	0080006f          	j	800024f0 <_ZN3TCB12createThreadEPFvPvES0_+0x54>
    800024ec:	00000513          	li	a0,0
    800024f0:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    800024f4:	00000797          	auipc	a5,0x0
    800024f8:	e2c78793          	addi	a5,a5,-468 # 80002320 <_ZN3TCB13threadWrapperEv>
    800024fc:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002500:	04050663          	beqz	a0,8000254c <_ZN3TCB12createThreadEPFvPvES0_+0xb0>
    80002504:	000087b7          	lui	a5,0x8
    80002508:	00f507b3          	add	a5,a0,a5
    8000250c:	02f4b023          	sd	a5,32(s1)
        timeSlice=timeSlicee;
    80002510:	00200793          	li	a5,2
    80002514:	02f4b423          	sd	a5,40(s1)
        finished= false;
    80002518:	02048823          	sb	zero,48(s1)
    if (body != nullptr) {
    8000251c:	00090863          	beqz	s2,8000252c <_ZN3TCB12createThreadEPFvPvES0_+0x90>
        Scheduler::put(t);
    80002520:	00048513          	mv	a0,s1
    80002524:	00000097          	auipc	ra,0x0
    80002528:	1b8080e7          	jalr	440(ra) # 800026dc <_ZN9Scheduler3putEP3TCB>
}
    8000252c:	00048513          	mv	a0,s1
    80002530:	02813083          	ld	ra,40(sp)
    80002534:	02013403          	ld	s0,32(sp)
    80002538:	01813483          	ld	s1,24(sp)
    8000253c:	01013903          	ld	s2,16(sp)
    80002540:	00813983          	ld	s3,8(sp)
    80002544:	03010113          	addi	sp,sp,48
    80002548:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    8000254c:	00000793          	li	a5,0
    80002550:	fbdff06f          	j	8000250c <_ZN3TCB12createThreadEPFvPvES0_+0x70>
    80002554:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002558:	00048513          	mv	a0,s1
    8000255c:	00000097          	auipc	ra,0x0
    80002560:	eec080e7          	jalr	-276(ra) # 80002448 <_ZN3TCBdlEPv>
    80002564:	00090513          	mv	a0,s2
    80002568:	00006097          	auipc	ra,0x6
    8000256c:	f70080e7          	jalr	-144(ra) # 800084d8 <_Unwind_Resume>

0000000080002570 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_>:
{
    80002570:	fd010113          	addi	sp,sp,-48
    80002574:	02113423          	sd	ra,40(sp)
    80002578:	02813023          	sd	s0,32(sp)
    8000257c:	00913c23          	sd	s1,24(sp)
    80002580:	01213823          	sd	s2,16(sp)
    80002584:	01313423          	sd	s3,8(sp)
    80002588:	03010413          	addi	s0,sp,48
    8000258c:	00050913          	mv	s2,a0
    80002590:	00058993          	mv	s3,a1
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    80002594:	03800513          	li	a0,56
    80002598:	00000097          	auipc	ra,0x0
    8000259c:	ed8080e7          	jalr	-296(ra) # 80002470 <_ZN3TCBnwEm>
    800025a0:	00050493          	mv	s1,a0
        body = bodyy;
    800025a4:	01253023          	sd	s2,0(a0) # 8000 <_entry-0x7fff8000>
        arg=argg;
    800025a8:	01353423          	sd	s3,8(a0)
        stack=(body != nullptr ? (uint64*)MemoryAllocator::malloc(sizeof(uint64) * DEFAULT_STACK_SIZE) : nullptr);
    800025ac:	00090a63          	beqz	s2,800025c0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x50>
    800025b0:	00008537          	lui	a0,0x8
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	234080e7          	jalr	564(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
    800025bc:	0080006f          	j	800025c4 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x54>
    800025c0:	00000513          	li	a0,0
    800025c4:	00a4b823          	sd	a0,16(s1)
        context.ra = (uint64) &threadWrapper;
    800025c8:	00000797          	auipc	a5,0x0
    800025cc:	d5878793          	addi	a5,a5,-680 # 80002320 <_ZN3TCB13threadWrapperEv>
    800025d0:	00f4bc23          	sd	a5,24(s1)
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    800025d4:	02050e63          	beqz	a0,80002610 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0xa0>
    800025d8:	000087b7          	lui	a5,0x8
    800025dc:	00f50533          	add	a0,a0,a5
    800025e0:	02a4b023          	sd	a0,32(s1)
        timeSlice=timeSlicee;
    800025e4:	00200793          	li	a5,2
    800025e8:	02f4b423          	sd	a5,40(s1)
        finished= false;
    800025ec:	02048823          	sb	zero,48(s1)
}
    800025f0:	00048513          	mv	a0,s1
    800025f4:	02813083          	ld	ra,40(sp)
    800025f8:	02013403          	ld	s0,32(sp)
    800025fc:	01813483          	ld	s1,24(sp)
    80002600:	01013903          	ld	s2,16(sp)
    80002604:	00813983          	ld	s3,8(sp)
    80002608:	03010113          	addi	sp,sp,48
    8000260c:	00008067          	ret
        context.sp =(stack != nullptr ? (uint64) &stack[DEFAULT_STACK_SIZE] : 0);
    80002610:	00000513          	li	a0,0
    80002614:	fcdff06f          	j	800025e0 <_ZN3TCB37createThreadWithoutPuttingInSchedulerEPFvPvES0_+0x70>
    80002618:	00050913          	mv	s2,a0
    TCB* t = (TCB*)new TCB(body, arg, DEFAULT_TIME_SLICE);
    8000261c:	00048513          	mv	a0,s1
    80002620:	00000097          	auipc	ra,0x0
    80002624:	e28080e7          	jalr	-472(ra) # 80002448 <_ZN3TCBdlEPv>
    80002628:	00090513          	mv	a0,s2
    8000262c:	00006097          	auipc	ra,0x6
    80002630:	eac080e7          	jalr	-340(ra) # 800084d8 <_Unwind_Resume>

0000000080002634 <_Z41__static_initialization_and_destruction_0ii>:
}

void Scheduler::operator delete(void *p) {
    MemoryAllocator::free(p);
    return;
}
    80002634:	ff010113          	addi	sp,sp,-16
    80002638:	00813423          	sd	s0,8(sp)
    8000263c:	01010413          	addi	s0,sp,16
    80002640:	00100793          	li	a5,1
    80002644:	00f50863          	beq	a0,a5,80002654 <_Z41__static_initialization_and_destruction_0ii+0x20>
    80002648:	00813403          	ld	s0,8(sp)
    8000264c:	01010113          	addi	sp,sp,16
    80002650:	00008067          	ret
    80002654:	000107b7          	lui	a5,0x10
    80002658:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    8000265c:	fef596e3          	bne	a1,a5,80002648 <_Z41__static_initialization_and_destruction_0ii+0x14>
    80002660:	00005797          	auipc	a5,0x5
    80002664:	d8078793          	addi	a5,a5,-640 # 800073e0 <_ZN9Scheduler16readyThreadQueueE>
    80002668:	0007b023          	sd	zero,0(a5)
    8000266c:	0007b423          	sd	zero,8(a5)
    80002670:	fd9ff06f          	j	80002648 <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080002674 <_ZN9Scheduler3getEv>:
{
    80002674:	fe010113          	addi	sp,sp,-32
    80002678:	00113c23          	sd	ra,24(sp)
    8000267c:	00813823          	sd	s0,16(sp)
    80002680:	00913423          	sd	s1,8(sp)
    80002684:	02010413          	addi	s0,sp,32
        if (!head) { return 0; }
    80002688:	00005517          	auipc	a0,0x5
    8000268c:	d5853503          	ld	a0,-680(a0) # 800073e0 <_ZN9Scheduler16readyThreadQueueE>
    80002690:	04050263          	beqz	a0,800026d4 <_ZN9Scheduler3getEv+0x60>
        head = head->next;
    80002694:	00853783          	ld	a5,8(a0)
    80002698:	00005717          	auipc	a4,0x5
    8000269c:	d4f73423          	sd	a5,-696(a4) # 800073e0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    800026a0:	02078463          	beqz	a5,800026c8 <_ZN9Scheduler3getEv+0x54>
        T *ret = elem->data;
    800026a4:	00053483          	ld	s1,0(a0)
        delete elem;
    800026a8:	00000097          	auipc	ra,0x0
    800026ac:	848080e7          	jalr	-1976(ra) # 80001ef0 <_ZdlPv>
}
    800026b0:	00048513          	mv	a0,s1
    800026b4:	01813083          	ld	ra,24(sp)
    800026b8:	01013403          	ld	s0,16(sp)
    800026bc:	00813483          	ld	s1,8(sp)
    800026c0:	02010113          	addi	sp,sp,32
    800026c4:	00008067          	ret
        if (!head) { tail = 0; }
    800026c8:	00005797          	auipc	a5,0x5
    800026cc:	d207b023          	sd	zero,-736(a5) # 800073e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800026d0:	fd5ff06f          	j	800026a4 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    800026d4:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    800026d8:	fd9ff06f          	j	800026b0 <_ZN9Scheduler3getEv+0x3c>

00000000800026dc <_ZN9Scheduler3putEP3TCB>:
{
    800026dc:	fe010113          	addi	sp,sp,-32
    800026e0:	00113c23          	sd	ra,24(sp)
    800026e4:	00813823          	sd	s0,16(sp)
    800026e8:	00913423          	sd	s1,8(sp)
    800026ec:	02010413          	addi	s0,sp,32
    800026f0:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    800026f4:	01000513          	li	a0,16
    800026f8:	fffff097          	auipc	ra,0xfffff
    800026fc:	7a8080e7          	jalr	1960(ra) # 80001ea0 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    80002700:	00953023          	sd	s1,0(a0)
    80002704:	00053423          	sd	zero,8(a0)
        if (tail)
    80002708:	00005797          	auipc	a5,0x5
    8000270c:	ce07b783          	ld	a5,-800(a5) # 800073e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80002710:	02078263          	beqz	a5,80002734 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    80002714:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    80002718:	00005797          	auipc	a5,0x5
    8000271c:	cca7b823          	sd	a0,-816(a5) # 800073e8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    80002720:	01813083          	ld	ra,24(sp)
    80002724:	01013403          	ld	s0,16(sp)
    80002728:	00813483          	ld	s1,8(sp)
    8000272c:	02010113          	addi	sp,sp,32
    80002730:	00008067          	ret
            head = tail = elem;
    80002734:	00005797          	auipc	a5,0x5
    80002738:	cac78793          	addi	a5,a5,-852 # 800073e0 <_ZN9Scheduler16readyThreadQueueE>
    8000273c:	00a7b423          	sd	a0,8(a5)
    80002740:	00a7b023          	sd	a0,0(a5)
    80002744:	fddff06f          	j	80002720 <_ZN9Scheduler3putEP3TCB+0x44>

0000000080002748 <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    80002748:	ff010113          	addi	sp,sp,-16
    8000274c:	00813423          	sd	s0,8(sp)
    80002750:	01010413          	addi	s0,sp,16
}
    80002754:	00053503          	ld	a0,0(a0)
    80002758:	00813403          	ld	s0,8(sp)
    8000275c:	01010113          	addi	sp,sp,16
    80002760:	00008067          	ret

0000000080002764 <_ZN9SchedulernwEm>:
void *Scheduler::operator new(size_t n) {
    80002764:	ff010113          	addi	sp,sp,-16
    80002768:	00113423          	sd	ra,8(sp)
    8000276c:	00813023          	sd	s0,0(sp)
    80002770:	01010413          	addi	s0,sp,16
    return MemoryAllocator::malloc(n);
    80002774:	00000097          	auipc	ra,0x0
    80002778:	074080e7          	jalr	116(ra) # 800027e8 <_ZN15MemoryAllocator6mallocEm>
}
    8000277c:	00813083          	ld	ra,8(sp)
    80002780:	00013403          	ld	s0,0(sp)
    80002784:	01010113          	addi	sp,sp,16
    80002788:	00008067          	ret

000000008000278c <_ZN9SchedulerdlEPv>:
void Scheduler::operator delete(void *p) {
    8000278c:	ff010113          	addi	sp,sp,-16
    80002790:	00113423          	sd	ra,8(sp)
    80002794:	00813023          	sd	s0,0(sp)
    80002798:	01010413          	addi	s0,sp,16
    MemoryAllocator::free(p);
    8000279c:	00000097          	auipc	ra,0x0
    800027a0:	0e8080e7          	jalr	232(ra) # 80002884 <_ZN15MemoryAllocator4freeEPv>
}
    800027a4:	00813083          	ld	ra,8(sp)
    800027a8:	00013403          	ld	s0,0(sp)
    800027ac:	01010113          	addi	sp,sp,16
    800027b0:	00008067          	ret

00000000800027b4 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    800027b4:	ff010113          	addi	sp,sp,-16
    800027b8:	00113423          	sd	ra,8(sp)
    800027bc:	00813023          	sd	s0,0(sp)
    800027c0:	01010413          	addi	s0,sp,16
    800027c4:	000105b7          	lui	a1,0x10
    800027c8:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    800027cc:	00100513          	li	a0,1
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	e64080e7          	jalr	-412(ra) # 80002634 <_Z41__static_initialization_and_destruction_0ii>
    800027d8:	00813083          	ld	ra,8(sp)
    800027dc:	00013403          	ld	s0,0(sp)
    800027e0:	01010113          	addi	sp,sp,16
    800027e4:	00008067          	ret

00000000800027e8 <_ZN15MemoryAllocator6mallocEm>:
MemoryAllocator::FreeBlockHeader* MemoryAllocator::tail = nullptr;
char* MemoryAllocator::heapStartAddr = nullptr;



void* MemoryAllocator::malloc(size_t size){
    800027e8:	ff010113          	addi	sp,sp,-16
    800027ec:	00813423          	sd	s0,8(sp)
    800027f0:	01010413          	addi	s0,sp,16
    static FreeBlockHeader *freeBlockHead;
    static FreeBlockHeader *tail;
    static char* heapStartAddr;

    inline static size_t align(size_t n) {
        return (n + MEM_BLOCK_SIZE - 1) & ~(MEM_BLOCK_SIZE - 1);
    800027f4:	04750713          	addi	a4,a0,71
    size= allocSize(size);
    size_t sizeInBlocks= align(size)/MEM_BLOCK_SIZE;
    800027f8:	00675713          	srli	a4,a4,0x6
    FreeBlockHeader *freeBlock;
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    800027fc:	00005517          	auipc	a0,0x5
    80002800:	bf453503          	ld	a0,-1036(a0) # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002804:	0440006f          	j	80002848 <_ZN15MemoryAllocator6mallocEm+0x60>
        if(freeBlock->size >sizeInBlocks){
            freeBlock->size-=sizeInBlocks;
    80002808:	40e787b3          	sub	a5,a5,a4
    8000280c:	00f53823          	sd	a5,16(a0)
            *(size_t*)((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)=sizeInBlocks;
    80002810:	fe878793          	addi	a5,a5,-24
    80002814:	00679793          	slli	a5,a5,0x6
    80002818:	fe878793          	addi	a5,a5,-24
    8000281c:	00f507b3          	add	a5,a0,a5
    80002820:	00e7b023          	sd	a4,0(a5)
            return (void*)(((char*)freeBlock-sizeof(FreeBlockHeader)+(freeBlock->size-sizeof(FreeBlockHeader))*MEM_BLOCK_SIZE)+sizeof(size_t));
    80002824:	01053783          	ld	a5,16(a0)
    80002828:	fe878793          	addi	a5,a5,-24
    8000282c:	00679793          	slli	a5,a5,0x6
    80002830:	ff078793          	addi	a5,a5,-16
    80002834:	00f50533          	add	a0,a0,a5
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
        }

    }
    return nullptr;
}
    80002838:	00813403          	ld	s0,8(sp)
    8000283c:	01010113          	addi	sp,sp,16
    80002840:	00008067          	ret
    for(freeBlock = freeBlockHead; freeBlock!= nullptr; freeBlock=freeBlock->next){
    80002844:	00053503          	ld	a0,0(a0)
    80002848:	fe0508e3          	beqz	a0,80002838 <_ZN15MemoryAllocator6mallocEm+0x50>
        if(freeBlock->size >sizeInBlocks){
    8000284c:	01053783          	ld	a5,16(a0)
    80002850:	faf76ce3          	bltu	a4,a5,80002808 <_ZN15MemoryAllocator6mallocEm+0x20>
        else if(freeBlock->size==sizeInBlocks){
    80002854:	fee798e3          	bne	a5,a4,80002844 <_ZN15MemoryAllocator6mallocEm+0x5c>
            if(freeBlock->prev)
    80002858:	00853783          	ld	a5,8(a0)
    8000285c:	00078663          	beqz	a5,80002868 <_ZN15MemoryAllocator6mallocEm+0x80>
                freeBlock->prev->next=freeBlock->next;
    80002860:	00053683          	ld	a3,0(a0)
    80002864:	00d7b023          	sd	a3,0(a5)
            if(freeBlock->next)
    80002868:	00053783          	ld	a5,0(a0)
    8000286c:	00078663          	beqz	a5,80002878 <_ZN15MemoryAllocator6mallocEm+0x90>
                freeBlock->next->prev=freeBlock->prev;
    80002870:	00853683          	ld	a3,8(a0)
    80002874:	00d7b423          	sd	a3,8(a5)
            (*(size_t*)freeBlock)=sizeInBlocks;
    80002878:	00e53023          	sd	a4,0(a0)
            return (void*)((char*)freeBlock-sizeof(FreeBlockHeader)+sizeof(size_t));
    8000287c:	ff050513          	addi	a0,a0,-16
    80002880:	fb9ff06f          	j	80002838 <_ZN15MemoryAllocator6mallocEm+0x50>

0000000080002884 <_ZN15MemoryAllocator4freeEPv>:

int MemoryAllocator::free(void* p){
    80002884:	ff010113          	addi	sp,sp,-16
    80002888:	00813423          	sd	s0,8(sp)
    8000288c:	01010413          	addi	s0,sp,16
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    80002890:	14050663          	beqz	a0,800029dc <_ZN15MemoryAllocator4freeEPv+0x158>
    80002894:	00005797          	auipc	a5,0x5
    80002898:	ad47b783          	ld	a5,-1324(a5) # 80007368 <_GLOBAL_OFFSET_TABLE_+0x30>
    8000289c:	0007b783          	ld	a5,0(a5)
    800028a0:	14a7e263          	bltu	a5,a0,800029e4 <_ZN15MemoryAllocator4freeEPv+0x160>
    800028a4:	00005797          	auipc	a5,0x5
    800028a8:	a9c7b783          	ld	a5,-1380(a5) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x8>
    800028ac:	0007b783          	ld	a5,0(a5)
    800028b0:	14f56263          	bltu	a0,a5,800029f4 <_ZN15MemoryAllocator4freeEPv+0x170>
    char* block=(char*)p-sizeof(size_t);
    800028b4:	ff850713          	addi	a4,a0,-8
    if(block== nullptr)return 1;
    800028b8:	14070263          	beqz	a4,800029fc <_ZN15MemoryAllocator4freeEPv+0x178>
    size_t size = *(size_t*)block;
    800028bc:	ff853783          	ld	a5,-8(a0)
    FreeBlockHeader* newFreeBlock= (FreeBlockHeader*)block;
    newFreeBlock->size=size;
    800028c0:	00f53423          	sd	a5,8(a0)

//    uvezivanje po redu

    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    800028c4:	00005797          	auipc	a5,0x5
    800028c8:	b2c7b783          	ld	a5,-1236(a5) # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
    800028cc:	0140006f          	j	800028e0 <_ZN15MemoryAllocator4freeEPv+0x5c>
            newFreeBlock->next=fb->next;
            newFreeBlock->prev=fb;
            fb->next->prev=newFreeBlock;
            fb->next=newFreeBlock;
        }
        else if(fb==tail){
    800028d0:	00005697          	auipc	a3,0x5
    800028d4:	b286b683          	ld	a3,-1240(a3) # 800073f8 <_ZN15MemoryAllocator4tailE>
    800028d8:	02f68e63          	beq	a3,a5,80002914 <_ZN15MemoryAllocator4freeEPv+0x90>
    for(FreeBlockHeader *fb = freeBlockHead; fb != nullptr; fb=fb->next){
    800028dc:	0007b783          	ld	a5,0(a5)
    800028e0:	04078863          	beqz	a5,80002930 <_ZN15MemoryAllocator4freeEPv+0xac>
        if(fb<newFreeBlock && fb->next>newFreeBlock && fb!=tail){
    800028e4:	fee7f6e3          	bgeu	a5,a4,800028d0 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800028e8:	0007b683          	ld	a3,0(a5)
    800028ec:	fed772e3          	bgeu	a4,a3,800028d0 <_ZN15MemoryAllocator4freeEPv+0x4c>
    800028f0:	00005617          	auipc	a2,0x5
    800028f4:	b0863603          	ld	a2,-1272(a2) # 800073f8 <_ZN15MemoryAllocator4tailE>
    800028f8:	fcf60ce3          	beq	a2,a5,800028d0 <_ZN15MemoryAllocator4freeEPv+0x4c>
            newFreeBlock->next=fb->next;
    800028fc:	fed53c23          	sd	a3,-8(a0)
            newFreeBlock->prev=fb;
    80002900:	00f53023          	sd	a5,0(a0)
            fb->next->prev=newFreeBlock;
    80002904:	0007b683          	ld	a3,0(a5)
    80002908:	00e6b423          	sd	a4,8(a3)
            fb->next=newFreeBlock;
    8000290c:	00e7b023          	sd	a4,0(a5)
    80002910:	fcdff06f          	j	800028dc <_ZN15MemoryAllocator4freeEPv+0x58>
            tail->next=newFreeBlock;
    80002914:	00e6b023          	sd	a4,0(a3)
            newFreeBlock->prev=tail;
    80002918:	00005797          	auipc	a5,0x5
    8000291c:	ad878793          	addi	a5,a5,-1320 # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002920:	0087b683          	ld	a3,8(a5)
    80002924:	00d53023          	sd	a3,0(a0)
            newFreeBlock->next= nullptr;
    80002928:	fe053c23          	sd	zero,-8(a0)
            tail=newFreeBlock;
    8000292c:	00e7b423          	sd	a4,8(a5)
            break;
        }
    }
    if(freeBlockHead==nullptr){
    80002930:	00005797          	auipc	a5,0x5
    80002934:	ac07b783          	ld	a5,-1344(a5) # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002938:	02078e63          	beqz	a5,80002974 <_ZN15MemoryAllocator4freeEPv+0xf0>
        freeBlockHead=newFreeBlock;
        return 0;
    }

    //mergeovanje nazad
    if(newFreeBlock->prev) {
    8000293c:	00053783          	ld	a5,0(a0)
    80002940:	00078a63          	beqz	a5,80002954 <_ZN15MemoryAllocator4freeEPv+0xd0>
        if (((char *)newFreeBlock->prev + newFreeBlock->prev->size * MEM_BLOCK_SIZE) == (char *)newFreeBlock) {
    80002944:	0107b603          	ld	a2,16(a5)
    80002948:	00661693          	slli	a3,a2,0x6
    8000294c:	00d786b3          	add	a3,a5,a3
    80002950:	02e68a63          	beq	a3,a4,80002984 <_ZN15MemoryAllocator4freeEPv+0x100>
            }
            newFreeBlock = newFreeBlock->prev;
        }
    }
    //mergovanje napred
    if(newFreeBlock->next!= nullptr) {
    80002954:	00073783          	ld	a5,0(a4)
    80002958:	0a078663          	beqz	a5,80002a04 <_ZN15MemoryAllocator4freeEPv+0x180>
        if (((char *) newFreeBlock + newFreeBlock->size * MEM_BLOCK_SIZE) == (char *) newFreeBlock->next) {
    8000295c:	01073603          	ld	a2,16(a4)
    80002960:	00661693          	slli	a3,a2,0x6
    80002964:	00d706b3          	add	a3,a4,a3
    80002968:	04d78463          	beq	a5,a3,800029b0 <_ZN15MemoryAllocator4freeEPv+0x12c>
                nextBlock->next->prev = newFreeBlock;
                newFreeBlock->next = newFreeBlock->next->next;
            }
        }
    }
    return 0;
    8000296c:	00000513          	li	a0,0
    80002970:	0780006f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
        freeBlockHead=newFreeBlock;
    80002974:	00005797          	auipc	a5,0x5
    80002978:	a6e7be23          	sd	a4,-1412(a5) # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
        return 0;
    8000297c:	00000513          	li	a0,0
    80002980:	0680006f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
            newFreeBlock->prev->size += newFreeBlock->size;
    80002984:	00853703          	ld	a4,8(a0)
    80002988:	00e60633          	add	a2,a2,a4
    8000298c:	00c7b823          	sd	a2,16(a5)
            newFreeBlock->prev->next = newFreeBlock->next;
    80002990:	00053703          	ld	a4,0(a0)
    80002994:	ff853783          	ld	a5,-8(a0)
    80002998:	00f73023          	sd	a5,0(a4)
            if (newFreeBlock->next) {
    8000299c:	00078663          	beqz	a5,800029a8 <_ZN15MemoryAllocator4freeEPv+0x124>
                newFreeBlock->next->prev = newFreeBlock->prev;
    800029a0:	00053703          	ld	a4,0(a0)
    800029a4:	00e7b423          	sd	a4,8(a5)
            newFreeBlock = newFreeBlock->prev;
    800029a8:	00053703          	ld	a4,0(a0)
    800029ac:	fa9ff06f          	j	80002954 <_ZN15MemoryAllocator4freeEPv+0xd0>
            newFreeBlock->size += newFreeBlock->next->size;
    800029b0:	0107b683          	ld	a3,16(a5)
    800029b4:	00d60633          	add	a2,a2,a3
    800029b8:	00c73823          	sd	a2,16(a4)
            if (newFreeBlock->next->next) {
    800029bc:	0007b783          	ld	a5,0(a5)
    800029c0:	04078663          	beqz	a5,80002a0c <_ZN15MemoryAllocator4freeEPv+0x188>
                nextBlock->next->prev = newFreeBlock;
    800029c4:	00e7b423          	sd	a4,8(a5)
                newFreeBlock->next = newFreeBlock->next->next;
    800029c8:	00073783          	ld	a5,0(a4)
    800029cc:	0007b783          	ld	a5,0(a5)
    800029d0:	00f73023          	sd	a5,0(a4)
    return 0;
    800029d4:	00000513          	li	a0,0
    800029d8:	0100006f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    800029dc:	00100513          	li	a0,1
    800029e0:	0080006f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
    800029e4:	00100513          	li	a0,1
}
    800029e8:	00813403          	ld	s0,8(sp)
    800029ec:	01010113          	addi	sp,sp,16
    800029f0:	00008067          	ret
    if(p == nullptr || (char*)p > HEAP_END_ADDR || (char*)p < HEAP_START_ADDR )return 1;
    800029f4:	00100513          	li	a0,1
    800029f8:	ff1ff06f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
    if(block== nullptr)return 1;
    800029fc:	00100513          	li	a0,1
    80002a00:	fe9ff06f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
    return 0;
    80002a04:	00000513          	li	a0,0
    80002a08:	fe1ff06f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>
    80002a0c:	00000513          	li	a0,0
    80002a10:	fd9ff06f          	j	800029e8 <_ZN15MemoryAllocator4freeEPv+0x164>

0000000080002a14 <_ZN15MemoryAllocator19initMemoryAllocatorEv>:

void MemoryAllocator::initMemoryAllocator() {
    80002a14:	ff010113          	addi	sp,sp,-16
    80002a18:	00813423          	sd	s0,8(sp)
    80002a1c:	01010413          	addi	s0,sp,16
    heapStartAddr=(char*)HEAP_START_ADDR;
    80002a20:	00005797          	auipc	a5,0x5
    80002a24:	9207b783          	ld	a5,-1760(a5) # 80007340 <_GLOBAL_OFFSET_TABLE_+0x8>
    80002a28:	0007b703          	ld	a4,0(a5)
    80002a2c:	00005697          	auipc	a3,0x5
    80002a30:	9c468693          	addi	a3,a3,-1596 # 800073f0 <_ZN15MemoryAllocator13freeBlockHeadE>
    80002a34:	00e6b823          	sd	a4,16(a3)
    freeBlockHead=(FreeBlockHeader*)heapStartAddr;
    80002a38:	00e6b023          	sd	a4,0(a3)
    size_t size = align((char*)HEAP_END_ADDR - (char*)HEAP_START_ADDR)/MEM_BLOCK_SIZE;
    80002a3c:	00005797          	auipc	a5,0x5
    80002a40:	92c7b783          	ld	a5,-1748(a5) # 80007368 <_GLOBAL_OFFSET_TABLE_+0x30>
    80002a44:	0007b783          	ld	a5,0(a5)
    80002a48:	40e787b3          	sub	a5,a5,a4
    80002a4c:	03f78793          	addi	a5,a5,63
    80002a50:	0067d793          	srli	a5,a5,0x6
    freeBlockHead->size=size;
    80002a54:	00f73823          	sd	a5,16(a4)
    tail=freeBlockHead;
    80002a58:	00e6b423          	sd	a4,8(a3)
    freeBlockHead->next= nullptr;
    80002a5c:	00073023          	sd	zero,0(a4)
    freeBlockHead->prev= nullptr;
    80002a60:	0006b783          	ld	a5,0(a3)
    80002a64:	0007b423          	sd	zero,8(a5)
}
    80002a68:	00813403          	ld	s0,8(sp)
    80002a6c:	01010113          	addi	sp,sp,16
    80002a70:	00008067          	ret

0000000080002a74 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80002a74:	fe010113          	addi	sp,sp,-32
    80002a78:	00113c23          	sd	ra,24(sp)
    80002a7c:	00813823          	sd	s0,16(sp)
    80002a80:	00913423          	sd	s1,8(sp)
    80002a84:	02010413          	addi	s0,sp,32
    80002a88:	00050493          	mv	s1,a0
    LOCK();
    80002a8c:	00100613          	li	a2,1
    80002a90:	00000593          	li	a1,0
    80002a94:	00005517          	auipc	a0,0x5
    80002a98:	97450513          	addi	a0,a0,-1676 # 80007408 <lockPrint>
    80002a9c:	ffffe097          	auipc	ra,0xffffe
    80002aa0:	778080e7          	jalr	1912(ra) # 80001214 <copy_and_swap>
    80002aa4:	fe0514e3          	bnez	a0,80002a8c <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80002aa8:	0004c503          	lbu	a0,0(s1)
    80002aac:	00050a63          	beqz	a0,80002ac0 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80002ab0:	fffff097          	auipc	ra,0xfffff
    80002ab4:	98c080e7          	jalr	-1652(ra) # 8000143c <_Z4putcc>
        string++;
    80002ab8:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80002abc:	fedff06f          	j	80002aa8 <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80002ac0:	00000613          	li	a2,0
    80002ac4:	00100593          	li	a1,1
    80002ac8:	00005517          	auipc	a0,0x5
    80002acc:	94050513          	addi	a0,a0,-1728 # 80007408 <lockPrint>
    80002ad0:	ffffe097          	auipc	ra,0xffffe
    80002ad4:	744080e7          	jalr	1860(ra) # 80001214 <copy_and_swap>
    80002ad8:	fe0514e3          	bnez	a0,80002ac0 <_Z11printStringPKc+0x4c>
}
    80002adc:	01813083          	ld	ra,24(sp)
    80002ae0:	01013403          	ld	s0,16(sp)
    80002ae4:	00813483          	ld	s1,8(sp)
    80002ae8:	02010113          	addi	sp,sp,32
    80002aec:	00008067          	ret

0000000080002af0 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80002af0:	fd010113          	addi	sp,sp,-48
    80002af4:	02113423          	sd	ra,40(sp)
    80002af8:	02813023          	sd	s0,32(sp)
    80002afc:	00913c23          	sd	s1,24(sp)
    80002b00:	01213823          	sd	s2,16(sp)
    80002b04:	01313423          	sd	s3,8(sp)
    80002b08:	01413023          	sd	s4,0(sp)
    80002b0c:	03010413          	addi	s0,sp,48
    80002b10:	00050993          	mv	s3,a0
    80002b14:	00058a13          	mv	s4,a1
    LOCK();
    80002b18:	00100613          	li	a2,1
    80002b1c:	00000593          	li	a1,0
    80002b20:	00005517          	auipc	a0,0x5
    80002b24:	8e850513          	addi	a0,a0,-1816 # 80007408 <lockPrint>
    80002b28:	ffffe097          	auipc	ra,0xffffe
    80002b2c:	6ec080e7          	jalr	1772(ra) # 80001214 <copy_and_swap>
    80002b30:	fe0514e3          	bnez	a0,80002b18 <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80002b34:	00000913          	li	s2,0
    80002b38:	00090493          	mv	s1,s2
    80002b3c:	0019091b          	addiw	s2,s2,1
    80002b40:	03495a63          	bge	s2,s4,80002b74 <_Z9getStringPci+0x84>
        cc = getc();
    80002b44:	fffff097          	auipc	ra,0xfffff
    80002b48:	8d0080e7          	jalr	-1840(ra) # 80001414 <_Z4getcv>
        if(cc < 1)
    80002b4c:	02050463          	beqz	a0,80002b74 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80002b50:	009984b3          	add	s1,s3,s1
    80002b54:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80002b58:	00a00793          	li	a5,10
    80002b5c:	00f50a63          	beq	a0,a5,80002b70 <_Z9getStringPci+0x80>
    80002b60:	00d00793          	li	a5,13
    80002b64:	fcf51ae3          	bne	a0,a5,80002b38 <_Z9getStringPci+0x48>
        buf[i++] = c;
    80002b68:	00090493          	mv	s1,s2
    80002b6c:	0080006f          	j	80002b74 <_Z9getStringPci+0x84>
    80002b70:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80002b74:	009984b3          	add	s1,s3,s1
    80002b78:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80002b7c:	00000613          	li	a2,0
    80002b80:	00100593          	li	a1,1
    80002b84:	00005517          	auipc	a0,0x5
    80002b88:	88450513          	addi	a0,a0,-1916 # 80007408 <lockPrint>
    80002b8c:	ffffe097          	auipc	ra,0xffffe
    80002b90:	688080e7          	jalr	1672(ra) # 80001214 <copy_and_swap>
    80002b94:	fe0514e3          	bnez	a0,80002b7c <_Z9getStringPci+0x8c>
    return buf;
}
    80002b98:	00098513          	mv	a0,s3
    80002b9c:	02813083          	ld	ra,40(sp)
    80002ba0:	02013403          	ld	s0,32(sp)
    80002ba4:	01813483          	ld	s1,24(sp)
    80002ba8:	01013903          	ld	s2,16(sp)
    80002bac:	00813983          	ld	s3,8(sp)
    80002bb0:	00013a03          	ld	s4,0(sp)
    80002bb4:	03010113          	addi	sp,sp,48
    80002bb8:	00008067          	ret

0000000080002bbc <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80002bbc:	ff010113          	addi	sp,sp,-16
    80002bc0:	00813423          	sd	s0,8(sp)
    80002bc4:	01010413          	addi	s0,sp,16
    80002bc8:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80002bcc:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80002bd0:	0006c603          	lbu	a2,0(a3)
    80002bd4:	fd06071b          	addiw	a4,a2,-48
    80002bd8:	0ff77713          	andi	a4,a4,255
    80002bdc:	00900793          	li	a5,9
    80002be0:	02e7e063          	bltu	a5,a4,80002c00 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80002be4:	0025179b          	slliw	a5,a0,0x2
    80002be8:	00a787bb          	addw	a5,a5,a0
    80002bec:	0017979b          	slliw	a5,a5,0x1
    80002bf0:	00168693          	addi	a3,a3,1
    80002bf4:	00c787bb          	addw	a5,a5,a2
    80002bf8:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80002bfc:	fd5ff06f          	j	80002bd0 <_Z11stringToIntPKc+0x14>
    return n;
}
    80002c00:	00813403          	ld	s0,8(sp)
    80002c04:	01010113          	addi	sp,sp,16
    80002c08:	00008067          	ret

0000000080002c0c <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80002c0c:	fc010113          	addi	sp,sp,-64
    80002c10:	02113c23          	sd	ra,56(sp)
    80002c14:	02813823          	sd	s0,48(sp)
    80002c18:	02913423          	sd	s1,40(sp)
    80002c1c:	03213023          	sd	s2,32(sp)
    80002c20:	01313c23          	sd	s3,24(sp)
    80002c24:	04010413          	addi	s0,sp,64
    80002c28:	00050493          	mv	s1,a0
    80002c2c:	00058913          	mv	s2,a1
    80002c30:	00060993          	mv	s3,a2
    LOCK();
    80002c34:	00100613          	li	a2,1
    80002c38:	00000593          	li	a1,0
    80002c3c:	00004517          	auipc	a0,0x4
    80002c40:	7cc50513          	addi	a0,a0,1996 # 80007408 <lockPrint>
    80002c44:	ffffe097          	auipc	ra,0xffffe
    80002c48:	5d0080e7          	jalr	1488(ra) # 80001214 <copy_and_swap>
    80002c4c:	fe0514e3          	bnez	a0,80002c34 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80002c50:	00098463          	beqz	s3,80002c58 <_Z8printIntiii+0x4c>
    80002c54:	0804c463          	bltz	s1,80002cdc <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    80002c58:	0004851b          	sext.w	a0,s1
    neg = 0;
    80002c5c:	00000593          	li	a1,0
    }

    i = 0;
    80002c60:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80002c64:	0009079b          	sext.w	a5,s2
    80002c68:	0325773b          	remuw	a4,a0,s2
    80002c6c:	00048613          	mv	a2,s1
    80002c70:	0014849b          	addiw	s1,s1,1
    80002c74:	02071693          	slli	a3,a4,0x20
    80002c78:	0206d693          	srli	a3,a3,0x20
    80002c7c:	00004717          	auipc	a4,0x4
    80002c80:	6a470713          	addi	a4,a4,1700 # 80007320 <digits>
    80002c84:	00d70733          	add	a4,a4,a3
    80002c88:	00074683          	lbu	a3,0(a4)
    80002c8c:	fd040713          	addi	a4,s0,-48
    80002c90:	00c70733          	add	a4,a4,a2
    80002c94:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    80002c98:	0005071b          	sext.w	a4,a0
    80002c9c:	0325553b          	divuw	a0,a0,s2
    80002ca0:	fcf772e3          	bgeu	a4,a5,80002c64 <_Z8printIntiii+0x58>
    if(neg)
    80002ca4:	00058c63          	beqz	a1,80002cbc <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    80002ca8:	fd040793          	addi	a5,s0,-48
    80002cac:	009784b3          	add	s1,a5,s1
    80002cb0:	02d00793          	li	a5,45
    80002cb4:	fef48823          	sb	a5,-16(s1)
    80002cb8:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80002cbc:	fff4849b          	addiw	s1,s1,-1
    80002cc0:	0204c463          	bltz	s1,80002ce8 <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80002cc4:	fd040793          	addi	a5,s0,-48
    80002cc8:	009787b3          	add	a5,a5,s1
    80002ccc:	ff07c503          	lbu	a0,-16(a5)
    80002cd0:	ffffe097          	auipc	ra,0xffffe
    80002cd4:	76c080e7          	jalr	1900(ra) # 8000143c <_Z4putcc>
    80002cd8:	fe5ff06f          	j	80002cbc <_Z8printIntiii+0xb0>
        x = -xx;
    80002cdc:	4090053b          	negw	a0,s1
        neg = 1;
    80002ce0:	00100593          	li	a1,1
        x = -xx;
    80002ce4:	f7dff06f          	j	80002c60 <_Z8printIntiii+0x54>

    UNLOCK();
    80002ce8:	00000613          	li	a2,0
    80002cec:	00100593          	li	a1,1
    80002cf0:	00004517          	auipc	a0,0x4
    80002cf4:	71850513          	addi	a0,a0,1816 # 80007408 <lockPrint>
    80002cf8:	ffffe097          	auipc	ra,0xffffe
    80002cfc:	51c080e7          	jalr	1308(ra) # 80001214 <copy_and_swap>
    80002d00:	fe0514e3          	bnez	a0,80002ce8 <_Z8printIntiii+0xdc>
    80002d04:	03813083          	ld	ra,56(sp)
    80002d08:	03013403          	ld	s0,48(sp)
    80002d0c:	02813483          	ld	s1,40(sp)
    80002d10:	02013903          	ld	s2,32(sp)
    80002d14:	01813983          	ld	s3,24(sp)
    80002d18:	04010113          	addi	sp,sp,64
    80002d1c:	00008067          	ret

0000000080002d20 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80002d20:	fd010113          	addi	sp,sp,-48
    80002d24:	02113423          	sd	ra,40(sp)
    80002d28:	02813023          	sd	s0,32(sp)
    80002d2c:	00913c23          	sd	s1,24(sp)
    80002d30:	01213823          	sd	s2,16(sp)
    80002d34:	01313423          	sd	s3,8(sp)
    80002d38:	03010413          	addi	s0,sp,48
    80002d3c:	00050493          	mv	s1,a0
    80002d40:	00058913          	mv	s2,a1
    80002d44:	0015879b          	addiw	a5,a1,1
    80002d48:	0007851b          	sext.w	a0,a5
    80002d4c:	00f4a023          	sw	a5,0(s1)
    80002d50:	0004a823          	sw	zero,16(s1)
    80002d54:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80002d58:	00251513          	slli	a0,a0,0x2
    80002d5c:	ffffe097          	auipc	ra,0xffffe
    80002d60:	4d8080e7          	jalr	1240(ra) # 80001234 <_Z9mem_allocm>
    80002d64:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    80002d68:	01000513          	li	a0,16
    80002d6c:	fffff097          	auipc	ra,0xfffff
    80002d70:	134080e7          	jalr	308(ra) # 80001ea0 <_Znwm>
    80002d74:	00050993          	mv	s3,a0
    80002d78:	00000593          	li	a1,0
    80002d7c:	fffff097          	auipc	ra,0xfffff
    80002d80:	044080e7          	jalr	68(ra) # 80001dc0 <_ZN9SemaphoreC1Ej>
    80002d84:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    80002d88:	01000513          	li	a0,16
    80002d8c:	fffff097          	auipc	ra,0xfffff
    80002d90:	114080e7          	jalr	276(ra) # 80001ea0 <_Znwm>
    80002d94:	00050993          	mv	s3,a0
    80002d98:	00090593          	mv	a1,s2
    80002d9c:	fffff097          	auipc	ra,0xfffff
    80002da0:	024080e7          	jalr	36(ra) # 80001dc0 <_ZN9SemaphoreC1Ej>
    80002da4:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    80002da8:	01000513          	li	a0,16
    80002dac:	fffff097          	auipc	ra,0xfffff
    80002db0:	0f4080e7          	jalr	244(ra) # 80001ea0 <_Znwm>
    80002db4:	00050913          	mv	s2,a0
    80002db8:	00100593          	li	a1,1
    80002dbc:	fffff097          	auipc	ra,0xfffff
    80002dc0:	004080e7          	jalr	4(ra) # 80001dc0 <_ZN9SemaphoreC1Ej>
    80002dc4:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    80002dc8:	01000513          	li	a0,16
    80002dcc:	fffff097          	auipc	ra,0xfffff
    80002dd0:	0d4080e7          	jalr	212(ra) # 80001ea0 <_Znwm>
    80002dd4:	00050913          	mv	s2,a0
    80002dd8:	00100593          	li	a1,1
    80002ddc:	fffff097          	auipc	ra,0xfffff
    80002de0:	fe4080e7          	jalr	-28(ra) # 80001dc0 <_ZN9SemaphoreC1Ej>
    80002de4:	0324b823          	sd	s2,48(s1)
}
    80002de8:	02813083          	ld	ra,40(sp)
    80002dec:	02013403          	ld	s0,32(sp)
    80002df0:	01813483          	ld	s1,24(sp)
    80002df4:	01013903          	ld	s2,16(sp)
    80002df8:	00813983          	ld	s3,8(sp)
    80002dfc:	03010113          	addi	sp,sp,48
    80002e00:	00008067          	ret
    80002e04:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    80002e08:	00098513          	mv	a0,s3
    80002e0c:	fffff097          	auipc	ra,0xfffff
    80002e10:	0e4080e7          	jalr	228(ra) # 80001ef0 <_ZdlPv>
    80002e14:	00048513          	mv	a0,s1
    80002e18:	00005097          	auipc	ra,0x5
    80002e1c:	6c0080e7          	jalr	1728(ra) # 800084d8 <_Unwind_Resume>
    80002e20:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    80002e24:	00098513          	mv	a0,s3
    80002e28:	fffff097          	auipc	ra,0xfffff
    80002e2c:	0c8080e7          	jalr	200(ra) # 80001ef0 <_ZdlPv>
    80002e30:	00048513          	mv	a0,s1
    80002e34:	00005097          	auipc	ra,0x5
    80002e38:	6a4080e7          	jalr	1700(ra) # 800084d8 <_Unwind_Resume>
    80002e3c:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80002e40:	00090513          	mv	a0,s2
    80002e44:	fffff097          	auipc	ra,0xfffff
    80002e48:	0ac080e7          	jalr	172(ra) # 80001ef0 <_ZdlPv>
    80002e4c:	00048513          	mv	a0,s1
    80002e50:	00005097          	auipc	ra,0x5
    80002e54:	688080e7          	jalr	1672(ra) # 800084d8 <_Unwind_Resume>
    80002e58:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80002e5c:	00090513          	mv	a0,s2
    80002e60:	fffff097          	auipc	ra,0xfffff
    80002e64:	090080e7          	jalr	144(ra) # 80001ef0 <_ZdlPv>
    80002e68:	00048513          	mv	a0,s1
    80002e6c:	00005097          	auipc	ra,0x5
    80002e70:	66c080e7          	jalr	1644(ra) # 800084d8 <_Unwind_Resume>

0000000080002e74 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80002e74:	fe010113          	addi	sp,sp,-32
    80002e78:	00113c23          	sd	ra,24(sp)
    80002e7c:	00813823          	sd	s0,16(sp)
    80002e80:	00913423          	sd	s1,8(sp)
    80002e84:	01213023          	sd	s2,0(sp)
    80002e88:	02010413          	addi	s0,sp,32
    80002e8c:	00050493          	mv	s1,a0
    80002e90:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80002e94:	01853503          	ld	a0,24(a0)
    80002e98:	fffff097          	auipc	ra,0xfffff
    80002e9c:	f60080e7          	jalr	-160(ra) # 80001df8 <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80002ea0:	0304b503          	ld	a0,48(s1)
    80002ea4:	fffff097          	auipc	ra,0xfffff
    80002ea8:	f54080e7          	jalr	-172(ra) # 80001df8 <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80002eac:	0084b783          	ld	a5,8(s1)
    80002eb0:	0144a703          	lw	a4,20(s1)
    80002eb4:	00271713          	slli	a4,a4,0x2
    80002eb8:	00e787b3          	add	a5,a5,a4
    80002ebc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80002ec0:	0144a783          	lw	a5,20(s1)
    80002ec4:	0017879b          	addiw	a5,a5,1
    80002ec8:	0004a703          	lw	a4,0(s1)
    80002ecc:	02e7e7bb          	remw	a5,a5,a4
    80002ed0:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80002ed4:	0304b503          	ld	a0,48(s1)
    80002ed8:	fffff097          	auipc	ra,0xfffff
    80002edc:	f4c080e7          	jalr	-180(ra) # 80001e24 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    80002ee0:	0204b503          	ld	a0,32(s1)
    80002ee4:	fffff097          	auipc	ra,0xfffff
    80002ee8:	f40080e7          	jalr	-192(ra) # 80001e24 <_ZN9Semaphore6signalEv>

}
    80002eec:	01813083          	ld	ra,24(sp)
    80002ef0:	01013403          	ld	s0,16(sp)
    80002ef4:	00813483          	ld	s1,8(sp)
    80002ef8:	00013903          	ld	s2,0(sp)
    80002efc:	02010113          	addi	sp,sp,32
    80002f00:	00008067          	ret

0000000080002f04 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    80002f04:	fe010113          	addi	sp,sp,-32
    80002f08:	00113c23          	sd	ra,24(sp)
    80002f0c:	00813823          	sd	s0,16(sp)
    80002f10:	00913423          	sd	s1,8(sp)
    80002f14:	01213023          	sd	s2,0(sp)
    80002f18:	02010413          	addi	s0,sp,32
    80002f1c:	00050493          	mv	s1,a0
    itemAvailable->wait();
    80002f20:	02053503          	ld	a0,32(a0)
    80002f24:	fffff097          	auipc	ra,0xfffff
    80002f28:	ed4080e7          	jalr	-300(ra) # 80001df8 <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    80002f2c:	0284b503          	ld	a0,40(s1)
    80002f30:	fffff097          	auipc	ra,0xfffff
    80002f34:	ec8080e7          	jalr	-312(ra) # 80001df8 <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    80002f38:	0084b703          	ld	a4,8(s1)
    80002f3c:	0104a783          	lw	a5,16(s1)
    80002f40:	00279693          	slli	a3,a5,0x2
    80002f44:	00d70733          	add	a4,a4,a3
    80002f48:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80002f4c:	0017879b          	addiw	a5,a5,1
    80002f50:	0004a703          	lw	a4,0(s1)
    80002f54:	02e7e7bb          	remw	a5,a5,a4
    80002f58:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80002f5c:	0284b503          	ld	a0,40(s1)
    80002f60:	fffff097          	auipc	ra,0xfffff
    80002f64:	ec4080e7          	jalr	-316(ra) # 80001e24 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    80002f68:	0184b503          	ld	a0,24(s1)
    80002f6c:	fffff097          	auipc	ra,0xfffff
    80002f70:	eb8080e7          	jalr	-328(ra) # 80001e24 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002f74:	00090513          	mv	a0,s2
    80002f78:	01813083          	ld	ra,24(sp)
    80002f7c:	01013403          	ld	s0,16(sp)
    80002f80:	00813483          	ld	s1,8(sp)
    80002f84:	00013903          	ld	s2,0(sp)
    80002f88:	02010113          	addi	sp,sp,32
    80002f8c:	00008067          	ret

0000000080002f90 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80002f90:	fe010113          	addi	sp,sp,-32
    80002f94:	00113c23          	sd	ra,24(sp)
    80002f98:	00813823          	sd	s0,16(sp)
    80002f9c:	00913423          	sd	s1,8(sp)
    80002fa0:	01213023          	sd	s2,0(sp)
    80002fa4:	02010413          	addi	s0,sp,32
    80002fa8:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80002fac:	02853503          	ld	a0,40(a0)
    80002fb0:	fffff097          	auipc	ra,0xfffff
    80002fb4:	e48080e7          	jalr	-440(ra) # 80001df8 <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    80002fb8:	0304b503          	ld	a0,48(s1)
    80002fbc:	fffff097          	auipc	ra,0xfffff
    80002fc0:	e3c080e7          	jalr	-452(ra) # 80001df8 <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80002fc4:	0144a783          	lw	a5,20(s1)
    80002fc8:	0104a903          	lw	s2,16(s1)
    80002fcc:	0327ce63          	blt	a5,s2,80003008 <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80002fd0:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80002fd4:	0304b503          	ld	a0,48(s1)
    80002fd8:	fffff097          	auipc	ra,0xfffff
    80002fdc:	e4c080e7          	jalr	-436(ra) # 80001e24 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    80002fe0:	0284b503          	ld	a0,40(s1)
    80002fe4:	fffff097          	auipc	ra,0xfffff
    80002fe8:	e40080e7          	jalr	-448(ra) # 80001e24 <_ZN9Semaphore6signalEv>

    return ret;
}
    80002fec:	00090513          	mv	a0,s2
    80002ff0:	01813083          	ld	ra,24(sp)
    80002ff4:	01013403          	ld	s0,16(sp)
    80002ff8:	00813483          	ld	s1,8(sp)
    80002ffc:	00013903          	ld	s2,0(sp)
    80003000:	02010113          	addi	sp,sp,32
    80003004:	00008067          	ret
        ret = cap - head + tail;
    80003008:	0004a703          	lw	a4,0(s1)
    8000300c:	4127093b          	subw	s2,a4,s2
    80003010:	00f9093b          	addw	s2,s2,a5
    80003014:	fc1ff06f          	j	80002fd4 <_ZN9BufferCPP6getCntEv+0x44>

0000000080003018 <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    80003018:	fe010113          	addi	sp,sp,-32
    8000301c:	00113c23          	sd	ra,24(sp)
    80003020:	00813823          	sd	s0,16(sp)
    80003024:	00913423          	sd	s1,8(sp)
    80003028:	02010413          	addi	s0,sp,32
    8000302c:	00050493          	mv	s1,a0
    Console::putc('\n');
    80003030:	00a00513          	li	a0,10
    80003034:	fffff097          	auipc	ra,0xfffff
    80003038:	e44080e7          	jalr	-444(ra) # 80001e78 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    8000303c:	00003517          	auipc	a0,0x3
    80003040:	0cc50513          	addi	a0,a0,204 # 80006108 <CONSOLE_STATUS+0xf8>
    80003044:	00000097          	auipc	ra,0x0
    80003048:	a30080e7          	jalr	-1488(ra) # 80002a74 <_Z11printStringPKc>
    while (getCnt()) {
    8000304c:	00048513          	mv	a0,s1
    80003050:	00000097          	auipc	ra,0x0
    80003054:	f40080e7          	jalr	-192(ra) # 80002f90 <_ZN9BufferCPP6getCntEv>
    80003058:	02050c63          	beqz	a0,80003090 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    8000305c:	0084b783          	ld	a5,8(s1)
    80003060:	0104a703          	lw	a4,16(s1)
    80003064:	00271713          	slli	a4,a4,0x2
    80003068:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    8000306c:	0007c503          	lbu	a0,0(a5)
    80003070:	fffff097          	auipc	ra,0xfffff
    80003074:	e08080e7          	jalr	-504(ra) # 80001e78 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    80003078:	0104a783          	lw	a5,16(s1)
    8000307c:	0017879b          	addiw	a5,a5,1
    80003080:	0004a703          	lw	a4,0(s1)
    80003084:	02e7e7bb          	remw	a5,a5,a4
    80003088:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    8000308c:	fc1ff06f          	j	8000304c <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80003090:	02100513          	li	a0,33
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	de4080e7          	jalr	-540(ra) # 80001e78 <_ZN7Console4putcEc>
    Console::putc('\n');
    8000309c:	00a00513          	li	a0,10
    800030a0:	fffff097          	auipc	ra,0xfffff
    800030a4:	dd8080e7          	jalr	-552(ra) # 80001e78 <_ZN7Console4putcEc>
    mem_free(buffer);
    800030a8:	0084b503          	ld	a0,8(s1)
    800030ac:	ffffe097          	auipc	ra,0xffffe
    800030b0:	1b0080e7          	jalr	432(ra) # 8000125c <_Z8mem_freePv>
    delete itemAvailable;
    800030b4:	0204b503          	ld	a0,32(s1)
    800030b8:	00050863          	beqz	a0,800030c8 <_ZN9BufferCPPD1Ev+0xb0>
    800030bc:	00053783          	ld	a5,0(a0)
    800030c0:	0087b783          	ld	a5,8(a5)
    800030c4:	000780e7          	jalr	a5
    delete spaceAvailable;
    800030c8:	0184b503          	ld	a0,24(s1)
    800030cc:	00050863          	beqz	a0,800030dc <_ZN9BufferCPPD1Ev+0xc4>
    800030d0:	00053783          	ld	a5,0(a0)
    800030d4:	0087b783          	ld	a5,8(a5)
    800030d8:	000780e7          	jalr	a5
    delete mutexTail;
    800030dc:	0304b503          	ld	a0,48(s1)
    800030e0:	00050863          	beqz	a0,800030f0 <_ZN9BufferCPPD1Ev+0xd8>
    800030e4:	00053783          	ld	a5,0(a0)
    800030e8:	0087b783          	ld	a5,8(a5)
    800030ec:	000780e7          	jalr	a5
    delete mutexHead;
    800030f0:	0284b503          	ld	a0,40(s1)
    800030f4:	00050863          	beqz	a0,80003104 <_ZN9BufferCPPD1Ev+0xec>
    800030f8:	00053783          	ld	a5,0(a0)
    800030fc:	0087b783          	ld	a5,8(a5)
    80003100:	000780e7          	jalr	a5
}
    80003104:	01813083          	ld	ra,24(sp)
    80003108:	01013403          	ld	s0,16(sp)
    8000310c:	00813483          	ld	s1,8(sp)
    80003110:	02010113          	addi	sp,sp,32
    80003114:	00008067          	ret

0000000080003118 <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80003118:	fe010113          	addi	sp,sp,-32
    8000311c:	00113c23          	sd	ra,24(sp)
    80003120:	00813823          	sd	s0,16(sp)
    80003124:	00913423          	sd	s1,8(sp)
    80003128:	01213023          	sd	s2,0(sp)
    8000312c:	02010413          	addi	s0,sp,32
    80003130:	00050493          	mv	s1,a0
    80003134:	00058913          	mv	s2,a1
    80003138:	0015879b          	addiw	a5,a1,1
    8000313c:	0007851b          	sext.w	a0,a5
    80003140:	00f4a023          	sw	a5,0(s1)
    80003144:	0004a823          	sw	zero,16(s1)
    80003148:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000314c:	00251513          	slli	a0,a0,0x2
    80003150:	ffffe097          	auipc	ra,0xffffe
    80003154:	0e4080e7          	jalr	228(ra) # 80001234 <_Z9mem_allocm>
    80003158:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    8000315c:	00000593          	li	a1,0
    80003160:	02048513          	addi	a0,s1,32
    80003164:	ffffe097          	auipc	ra,0xffffe
    80003168:	1fc080e7          	jalr	508(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&spaceAvailable, _cap);
    8000316c:	00090593          	mv	a1,s2
    80003170:	01848513          	addi	a0,s1,24
    80003174:	ffffe097          	auipc	ra,0xffffe
    80003178:	1ec080e7          	jalr	492(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexHead, 1);
    8000317c:	00100593          	li	a1,1
    80003180:	02848513          	addi	a0,s1,40
    80003184:	ffffe097          	auipc	ra,0xffffe
    80003188:	1dc080e7          	jalr	476(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
    sem_open(&mutexTail, 1);
    8000318c:	00100593          	li	a1,1
    80003190:	03048513          	addi	a0,s1,48
    80003194:	ffffe097          	auipc	ra,0xffffe
    80003198:	1cc080e7          	jalr	460(ra) # 80001360 <_Z8sem_openPP10Ksemaphorej>
}
    8000319c:	01813083          	ld	ra,24(sp)
    800031a0:	01013403          	ld	s0,16(sp)
    800031a4:	00813483          	ld	s1,8(sp)
    800031a8:	00013903          	ld	s2,0(sp)
    800031ac:	02010113          	addi	sp,sp,32
    800031b0:	00008067          	ret

00000000800031b4 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    800031b4:	fe010113          	addi	sp,sp,-32
    800031b8:	00113c23          	sd	ra,24(sp)
    800031bc:	00813823          	sd	s0,16(sp)
    800031c0:	00913423          	sd	s1,8(sp)
    800031c4:	01213023          	sd	s2,0(sp)
    800031c8:	02010413          	addi	s0,sp,32
    800031cc:	00050493          	mv	s1,a0
    800031d0:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    800031d4:	01853503          	ld	a0,24(a0)
    800031d8:	ffffe097          	auipc	ra,0xffffe
    800031dc:	1e4080e7          	jalr	484(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexTail);
    800031e0:	0304b503          	ld	a0,48(s1)
    800031e4:	ffffe097          	auipc	ra,0xffffe
    800031e8:	1d8080e7          	jalr	472(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    buffer[tail] = val;
    800031ec:	0084b783          	ld	a5,8(s1)
    800031f0:	0144a703          	lw	a4,20(s1)
    800031f4:	00271713          	slli	a4,a4,0x2
    800031f8:	00e787b3          	add	a5,a5,a4
    800031fc:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80003200:	0144a783          	lw	a5,20(s1)
    80003204:	0017879b          	addiw	a5,a5,1
    80003208:	0004a703          	lw	a4,0(s1)
    8000320c:	02e7e7bb          	remw	a5,a5,a4
    80003210:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80003214:	0304b503          	ld	a0,48(s1)
    80003218:	ffffe097          	auipc	ra,0xffffe
    8000321c:	1d0080e7          	jalr	464(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(itemAvailable);
    80003220:	0204b503          	ld	a0,32(s1)
    80003224:	ffffe097          	auipc	ra,0xffffe
    80003228:	1c4080e7          	jalr	452(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

}
    8000322c:	01813083          	ld	ra,24(sp)
    80003230:	01013403          	ld	s0,16(sp)
    80003234:	00813483          	ld	s1,8(sp)
    80003238:	00013903          	ld	s2,0(sp)
    8000323c:	02010113          	addi	sp,sp,32
    80003240:	00008067          	ret

0000000080003244 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80003244:	fe010113          	addi	sp,sp,-32
    80003248:	00113c23          	sd	ra,24(sp)
    8000324c:	00813823          	sd	s0,16(sp)
    80003250:	00913423          	sd	s1,8(sp)
    80003254:	01213023          	sd	s2,0(sp)
    80003258:	02010413          	addi	s0,sp,32
    8000325c:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80003260:	02053503          	ld	a0,32(a0)
    80003264:	ffffe097          	auipc	ra,0xffffe
    80003268:	158080e7          	jalr	344(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    sem_wait(mutexHead);
    8000326c:	0284b503          	ld	a0,40(s1)
    80003270:	ffffe097          	auipc	ra,0xffffe
    80003274:	14c080e7          	jalr	332(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    int ret = buffer[head];
    80003278:	0084b703          	ld	a4,8(s1)
    8000327c:	0104a783          	lw	a5,16(s1)
    80003280:	00279693          	slli	a3,a5,0x2
    80003284:	00d70733          	add	a4,a4,a3
    80003288:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    8000328c:	0017879b          	addiw	a5,a5,1
    80003290:	0004a703          	lw	a4,0(s1)
    80003294:	02e7e7bb          	remw	a5,a5,a4
    80003298:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    8000329c:	0284b503          	ld	a0,40(s1)
    800032a0:	ffffe097          	auipc	ra,0xffffe
    800032a4:	148080e7          	jalr	328(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    sem_signal(spaceAvailable);
    800032a8:	0184b503          	ld	a0,24(s1)
    800032ac:	ffffe097          	auipc	ra,0xffffe
    800032b0:	13c080e7          	jalr	316(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    800032b4:	00090513          	mv	a0,s2
    800032b8:	01813083          	ld	ra,24(sp)
    800032bc:	01013403          	ld	s0,16(sp)
    800032c0:	00813483          	ld	s1,8(sp)
    800032c4:	00013903          	ld	s2,0(sp)
    800032c8:	02010113          	addi	sp,sp,32
    800032cc:	00008067          	ret

00000000800032d0 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    800032d0:	fe010113          	addi	sp,sp,-32
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00813823          	sd	s0,16(sp)
    800032dc:	00913423          	sd	s1,8(sp)
    800032e0:	01213023          	sd	s2,0(sp)
    800032e4:	02010413          	addi	s0,sp,32
    800032e8:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    800032ec:	02853503          	ld	a0,40(a0)
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	0cc080e7          	jalr	204(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>
    sem_wait(mutexTail);
    800032f8:	0304b503          	ld	a0,48(s1)
    800032fc:	ffffe097          	auipc	ra,0xffffe
    80003300:	0c0080e7          	jalr	192(ra) # 800013bc <_Z8sem_waitP10Ksemaphore>

    if (tail >= head) {
    80003304:	0144a783          	lw	a5,20(s1)
    80003308:	0104a903          	lw	s2,16(s1)
    8000330c:	0327ce63          	blt	a5,s2,80003348 <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80003310:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80003314:	0304b503          	ld	a0,48(s1)
    80003318:	ffffe097          	auipc	ra,0xffffe
    8000331c:	0d0080e7          	jalr	208(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>
    sem_signal(mutexHead);
    80003320:	0284b503          	ld	a0,40(s1)
    80003324:	ffffe097          	auipc	ra,0xffffe
    80003328:	0c4080e7          	jalr	196(ra) # 800013e8 <_Z10sem_signalP10Ksemaphore>

    return ret;
}
    8000332c:	00090513          	mv	a0,s2
    80003330:	01813083          	ld	ra,24(sp)
    80003334:	01013403          	ld	s0,16(sp)
    80003338:	00813483          	ld	s1,8(sp)
    8000333c:	00013903          	ld	s2,0(sp)
    80003340:	02010113          	addi	sp,sp,32
    80003344:	00008067          	ret
        ret = cap - head + tail;
    80003348:	0004a703          	lw	a4,0(s1)
    8000334c:	4127093b          	subw	s2,a4,s2
    80003350:	00f9093b          	addw	s2,s2,a5
    80003354:	fc1ff06f          	j	80003314 <_ZN6Buffer6getCntEv+0x44>

0000000080003358 <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80003358:	fe010113          	addi	sp,sp,-32
    8000335c:	00113c23          	sd	ra,24(sp)
    80003360:	00813823          	sd	s0,16(sp)
    80003364:	00913423          	sd	s1,8(sp)
    80003368:	02010413          	addi	s0,sp,32
    8000336c:	00050493          	mv	s1,a0
    putc('\n');
    80003370:	00a00513          	li	a0,10
    80003374:	ffffe097          	auipc	ra,0xffffe
    80003378:	0c8080e7          	jalr	200(ra) # 8000143c <_Z4putcc>
    printString("Buffer deleted!\n");
    8000337c:	00003517          	auipc	a0,0x3
    80003380:	d8c50513          	addi	a0,a0,-628 # 80006108 <CONSOLE_STATUS+0xf8>
    80003384:	fffff097          	auipc	ra,0xfffff
    80003388:	6f0080e7          	jalr	1776(ra) # 80002a74 <_Z11printStringPKc>
    while (getCnt() > 0) {
    8000338c:	00048513          	mv	a0,s1
    80003390:	00000097          	auipc	ra,0x0
    80003394:	f40080e7          	jalr	-192(ra) # 800032d0 <_ZN6Buffer6getCntEv>
    80003398:	02a05c63          	blez	a0,800033d0 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    8000339c:	0084b783          	ld	a5,8(s1)
    800033a0:	0104a703          	lw	a4,16(s1)
    800033a4:	00271713          	slli	a4,a4,0x2
    800033a8:	00e787b3          	add	a5,a5,a4
        putc(ch);
    800033ac:	0007c503          	lbu	a0,0(a5)
    800033b0:	ffffe097          	auipc	ra,0xffffe
    800033b4:	08c080e7          	jalr	140(ra) # 8000143c <_Z4putcc>
        head = (head + 1) % cap;
    800033b8:	0104a783          	lw	a5,16(s1)
    800033bc:	0017879b          	addiw	a5,a5,1
    800033c0:	0004a703          	lw	a4,0(s1)
    800033c4:	02e7e7bb          	remw	a5,a5,a4
    800033c8:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    800033cc:	fc1ff06f          	j	8000338c <_ZN6BufferD1Ev+0x34>
    __putc('!');
    800033d0:	02100513          	li	a0,33
    800033d4:	00002097          	auipc	ra,0x2
    800033d8:	128080e7          	jalr	296(ra) # 800054fc <__putc>
    __putc('\n');
    800033dc:	00a00513          	li	a0,10
    800033e0:	00002097          	auipc	ra,0x2
    800033e4:	11c080e7          	jalr	284(ra) # 800054fc <__putc>
    mem_free(buffer);
    800033e8:	0084b503          	ld	a0,8(s1)
    800033ec:	ffffe097          	auipc	ra,0xffffe
    800033f0:	e70080e7          	jalr	-400(ra) # 8000125c <_Z8mem_freePv>
    sem_close(itemAvailable);
    800033f4:	0204b503          	ld	a0,32(s1)
    800033f8:	ffffe097          	auipc	ra,0xffffe
    800033fc:	f98080e7          	jalr	-104(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(spaceAvailable);
    80003400:	0184b503          	ld	a0,24(s1)
    80003404:	ffffe097          	auipc	ra,0xffffe
    80003408:	f8c080e7          	jalr	-116(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexTail);
    8000340c:	0304b503          	ld	a0,48(s1)
    80003410:	ffffe097          	auipc	ra,0xffffe
    80003414:	f80080e7          	jalr	-128(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
    sem_close(mutexHead);
    80003418:	0284b503          	ld	a0,40(s1)
    8000341c:	ffffe097          	auipc	ra,0xffffe
    80003420:	f74080e7          	jalr	-140(ra) # 80001390 <_Z9sem_closeP10Ksemaphore>
}
    80003424:	01813083          	ld	ra,24(sp)
    80003428:	01013403          	ld	s0,16(sp)
    8000342c:	00813483          	ld	s1,8(sp)
    80003430:	02010113          	addi	sp,sp,32
    80003434:	00008067          	ret

0000000080003438 <start>:
    80003438:	ff010113          	addi	sp,sp,-16
    8000343c:	00813423          	sd	s0,8(sp)
    80003440:	01010413          	addi	s0,sp,16
    80003444:	300027f3          	csrr	a5,mstatus
    80003448:	ffffe737          	lui	a4,0xffffe
    8000344c:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff618f>
    80003450:	00e7f7b3          	and	a5,a5,a4
    80003454:	00001737          	lui	a4,0x1
    80003458:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    8000345c:	00e7e7b3          	or	a5,a5,a4
    80003460:	30079073          	csrw	mstatus,a5
    80003464:	00000797          	auipc	a5,0x0
    80003468:	16078793          	addi	a5,a5,352 # 800035c4 <system_main>
    8000346c:	34179073          	csrw	mepc,a5
    80003470:	00000793          	li	a5,0
    80003474:	18079073          	csrw	satp,a5
    80003478:	000107b7          	lui	a5,0x10
    8000347c:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80003480:	30279073          	csrw	medeleg,a5
    80003484:	30379073          	csrw	mideleg,a5
    80003488:	104027f3          	csrr	a5,sie
    8000348c:	2227e793          	ori	a5,a5,546
    80003490:	10479073          	csrw	sie,a5
    80003494:	fff00793          	li	a5,-1
    80003498:	00a7d793          	srli	a5,a5,0xa
    8000349c:	3b079073          	csrw	pmpaddr0,a5
    800034a0:	00f00793          	li	a5,15
    800034a4:	3a079073          	csrw	pmpcfg0,a5
    800034a8:	f14027f3          	csrr	a5,mhartid
    800034ac:	0200c737          	lui	a4,0x200c
    800034b0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800034b4:	0007869b          	sext.w	a3,a5
    800034b8:	00269713          	slli	a4,a3,0x2
    800034bc:	000f4637          	lui	a2,0xf4
    800034c0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800034c4:	00d70733          	add	a4,a4,a3
    800034c8:	0037979b          	slliw	a5,a5,0x3
    800034cc:	020046b7          	lui	a3,0x2004
    800034d0:	00d787b3          	add	a5,a5,a3
    800034d4:	00c585b3          	add	a1,a1,a2
    800034d8:	00371693          	slli	a3,a4,0x3
    800034dc:	00004717          	auipc	a4,0x4
    800034e0:	f3470713          	addi	a4,a4,-204 # 80007410 <timer_scratch>
    800034e4:	00b7b023          	sd	a1,0(a5)
    800034e8:	00d70733          	add	a4,a4,a3
    800034ec:	00f73c23          	sd	a5,24(a4)
    800034f0:	02c73023          	sd	a2,32(a4)
    800034f4:	34071073          	csrw	mscratch,a4
    800034f8:	00000797          	auipc	a5,0x0
    800034fc:	6e878793          	addi	a5,a5,1768 # 80003be0 <timervec>
    80003500:	30579073          	csrw	mtvec,a5
    80003504:	300027f3          	csrr	a5,mstatus
    80003508:	0087e793          	ori	a5,a5,8
    8000350c:	30079073          	csrw	mstatus,a5
    80003510:	304027f3          	csrr	a5,mie
    80003514:	0807e793          	ori	a5,a5,128
    80003518:	30479073          	csrw	mie,a5
    8000351c:	f14027f3          	csrr	a5,mhartid
    80003520:	0007879b          	sext.w	a5,a5
    80003524:	00078213          	mv	tp,a5
    80003528:	30200073          	mret
    8000352c:	00813403          	ld	s0,8(sp)
    80003530:	01010113          	addi	sp,sp,16
    80003534:	00008067          	ret

0000000080003538 <timerinit>:
    80003538:	ff010113          	addi	sp,sp,-16
    8000353c:	00813423          	sd	s0,8(sp)
    80003540:	01010413          	addi	s0,sp,16
    80003544:	f14027f3          	csrr	a5,mhartid
    80003548:	0200c737          	lui	a4,0x200c
    8000354c:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80003550:	0007869b          	sext.w	a3,a5
    80003554:	00269713          	slli	a4,a3,0x2
    80003558:	000f4637          	lui	a2,0xf4
    8000355c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80003560:	00d70733          	add	a4,a4,a3
    80003564:	0037979b          	slliw	a5,a5,0x3
    80003568:	020046b7          	lui	a3,0x2004
    8000356c:	00d787b3          	add	a5,a5,a3
    80003570:	00c585b3          	add	a1,a1,a2
    80003574:	00371693          	slli	a3,a4,0x3
    80003578:	00004717          	auipc	a4,0x4
    8000357c:	e9870713          	addi	a4,a4,-360 # 80007410 <timer_scratch>
    80003580:	00b7b023          	sd	a1,0(a5)
    80003584:	00d70733          	add	a4,a4,a3
    80003588:	00f73c23          	sd	a5,24(a4)
    8000358c:	02c73023          	sd	a2,32(a4)
    80003590:	34071073          	csrw	mscratch,a4
    80003594:	00000797          	auipc	a5,0x0
    80003598:	64c78793          	addi	a5,a5,1612 # 80003be0 <timervec>
    8000359c:	30579073          	csrw	mtvec,a5
    800035a0:	300027f3          	csrr	a5,mstatus
    800035a4:	0087e793          	ori	a5,a5,8
    800035a8:	30079073          	csrw	mstatus,a5
    800035ac:	304027f3          	csrr	a5,mie
    800035b0:	0807e793          	ori	a5,a5,128
    800035b4:	30479073          	csrw	mie,a5
    800035b8:	00813403          	ld	s0,8(sp)
    800035bc:	01010113          	addi	sp,sp,16
    800035c0:	00008067          	ret

00000000800035c4 <system_main>:
    800035c4:	fe010113          	addi	sp,sp,-32
    800035c8:	00813823          	sd	s0,16(sp)
    800035cc:	00913423          	sd	s1,8(sp)
    800035d0:	00113c23          	sd	ra,24(sp)
    800035d4:	02010413          	addi	s0,sp,32
    800035d8:	00000097          	auipc	ra,0x0
    800035dc:	0c4080e7          	jalr	196(ra) # 8000369c <cpuid>
    800035e0:	00004497          	auipc	s1,0x4
    800035e4:	db048493          	addi	s1,s1,-592 # 80007390 <started>
    800035e8:	02050263          	beqz	a0,8000360c <system_main+0x48>
    800035ec:	0004a783          	lw	a5,0(s1)
    800035f0:	0007879b          	sext.w	a5,a5
    800035f4:	fe078ce3          	beqz	a5,800035ec <system_main+0x28>
    800035f8:	0ff0000f          	fence
    800035fc:	00003517          	auipc	a0,0x3
    80003600:	b5450513          	addi	a0,a0,-1196 # 80006150 <CONSOLE_STATUS+0x140>
    80003604:	00001097          	auipc	ra,0x1
    80003608:	a78080e7          	jalr	-1416(ra) # 8000407c <panic>
    8000360c:	00001097          	auipc	ra,0x1
    80003610:	9cc080e7          	jalr	-1588(ra) # 80003fd8 <consoleinit>
    80003614:	00001097          	auipc	ra,0x1
    80003618:	158080e7          	jalr	344(ra) # 8000476c <printfinit>
    8000361c:	00003517          	auipc	a0,0x3
    80003620:	a3c50513          	addi	a0,a0,-1476 # 80006058 <CONSOLE_STATUS+0x48>
    80003624:	00001097          	auipc	ra,0x1
    80003628:	ab4080e7          	jalr	-1356(ra) # 800040d8 <__printf>
    8000362c:	00003517          	auipc	a0,0x3
    80003630:	af450513          	addi	a0,a0,-1292 # 80006120 <CONSOLE_STATUS+0x110>
    80003634:	00001097          	auipc	ra,0x1
    80003638:	aa4080e7          	jalr	-1372(ra) # 800040d8 <__printf>
    8000363c:	00003517          	auipc	a0,0x3
    80003640:	a1c50513          	addi	a0,a0,-1508 # 80006058 <CONSOLE_STATUS+0x48>
    80003644:	00001097          	auipc	ra,0x1
    80003648:	a94080e7          	jalr	-1388(ra) # 800040d8 <__printf>
    8000364c:	00001097          	auipc	ra,0x1
    80003650:	4ac080e7          	jalr	1196(ra) # 80004af8 <kinit>
    80003654:	00000097          	auipc	ra,0x0
    80003658:	148080e7          	jalr	328(ra) # 8000379c <trapinit>
    8000365c:	00000097          	auipc	ra,0x0
    80003660:	16c080e7          	jalr	364(ra) # 800037c8 <trapinithart>
    80003664:	00000097          	auipc	ra,0x0
    80003668:	5bc080e7          	jalr	1468(ra) # 80003c20 <plicinit>
    8000366c:	00000097          	auipc	ra,0x0
    80003670:	5dc080e7          	jalr	1500(ra) # 80003c48 <plicinithart>
    80003674:	00000097          	auipc	ra,0x0
    80003678:	078080e7          	jalr	120(ra) # 800036ec <userinit>
    8000367c:	0ff0000f          	fence
    80003680:	00100793          	li	a5,1
    80003684:	00003517          	auipc	a0,0x3
    80003688:	ab450513          	addi	a0,a0,-1356 # 80006138 <CONSOLE_STATUS+0x128>
    8000368c:	00f4a023          	sw	a5,0(s1)
    80003690:	00001097          	auipc	ra,0x1
    80003694:	a48080e7          	jalr	-1464(ra) # 800040d8 <__printf>
    80003698:	0000006f          	j	80003698 <system_main+0xd4>

000000008000369c <cpuid>:
    8000369c:	ff010113          	addi	sp,sp,-16
    800036a0:	00813423          	sd	s0,8(sp)
    800036a4:	01010413          	addi	s0,sp,16
    800036a8:	00020513          	mv	a0,tp
    800036ac:	00813403          	ld	s0,8(sp)
    800036b0:	0005051b          	sext.w	a0,a0
    800036b4:	01010113          	addi	sp,sp,16
    800036b8:	00008067          	ret

00000000800036bc <mycpu>:
    800036bc:	ff010113          	addi	sp,sp,-16
    800036c0:	00813423          	sd	s0,8(sp)
    800036c4:	01010413          	addi	s0,sp,16
    800036c8:	00020793          	mv	a5,tp
    800036cc:	00813403          	ld	s0,8(sp)
    800036d0:	0007879b          	sext.w	a5,a5
    800036d4:	00779793          	slli	a5,a5,0x7
    800036d8:	00005517          	auipc	a0,0x5
    800036dc:	d6850513          	addi	a0,a0,-664 # 80008440 <cpus>
    800036e0:	00f50533          	add	a0,a0,a5
    800036e4:	01010113          	addi	sp,sp,16
    800036e8:	00008067          	ret

00000000800036ec <userinit>:
    800036ec:	ff010113          	addi	sp,sp,-16
    800036f0:	00813423          	sd	s0,8(sp)
    800036f4:	01010413          	addi	s0,sp,16
    800036f8:	00813403          	ld	s0,8(sp)
    800036fc:	01010113          	addi	sp,sp,16
    80003700:	ffffe317          	auipc	t1,0xffffe
    80003704:	51c30067          	jr	1308(t1) # 80001c1c <main>

0000000080003708 <either_copyout>:
    80003708:	ff010113          	addi	sp,sp,-16
    8000370c:	00813023          	sd	s0,0(sp)
    80003710:	00113423          	sd	ra,8(sp)
    80003714:	01010413          	addi	s0,sp,16
    80003718:	02051663          	bnez	a0,80003744 <either_copyout+0x3c>
    8000371c:	00058513          	mv	a0,a1
    80003720:	00060593          	mv	a1,a2
    80003724:	0006861b          	sext.w	a2,a3
    80003728:	00002097          	auipc	ra,0x2
    8000372c:	c5c080e7          	jalr	-932(ra) # 80005384 <__memmove>
    80003730:	00813083          	ld	ra,8(sp)
    80003734:	00013403          	ld	s0,0(sp)
    80003738:	00000513          	li	a0,0
    8000373c:	01010113          	addi	sp,sp,16
    80003740:	00008067          	ret
    80003744:	00003517          	auipc	a0,0x3
    80003748:	a3450513          	addi	a0,a0,-1484 # 80006178 <CONSOLE_STATUS+0x168>
    8000374c:	00001097          	auipc	ra,0x1
    80003750:	930080e7          	jalr	-1744(ra) # 8000407c <panic>

0000000080003754 <either_copyin>:
    80003754:	ff010113          	addi	sp,sp,-16
    80003758:	00813023          	sd	s0,0(sp)
    8000375c:	00113423          	sd	ra,8(sp)
    80003760:	01010413          	addi	s0,sp,16
    80003764:	02059463          	bnez	a1,8000378c <either_copyin+0x38>
    80003768:	00060593          	mv	a1,a2
    8000376c:	0006861b          	sext.w	a2,a3
    80003770:	00002097          	auipc	ra,0x2
    80003774:	c14080e7          	jalr	-1004(ra) # 80005384 <__memmove>
    80003778:	00813083          	ld	ra,8(sp)
    8000377c:	00013403          	ld	s0,0(sp)
    80003780:	00000513          	li	a0,0
    80003784:	01010113          	addi	sp,sp,16
    80003788:	00008067          	ret
    8000378c:	00003517          	auipc	a0,0x3
    80003790:	a1450513          	addi	a0,a0,-1516 # 800061a0 <CONSOLE_STATUS+0x190>
    80003794:	00001097          	auipc	ra,0x1
    80003798:	8e8080e7          	jalr	-1816(ra) # 8000407c <panic>

000000008000379c <trapinit>:
    8000379c:	ff010113          	addi	sp,sp,-16
    800037a0:	00813423          	sd	s0,8(sp)
    800037a4:	01010413          	addi	s0,sp,16
    800037a8:	00813403          	ld	s0,8(sp)
    800037ac:	00003597          	auipc	a1,0x3
    800037b0:	a1c58593          	addi	a1,a1,-1508 # 800061c8 <CONSOLE_STATUS+0x1b8>
    800037b4:	00005517          	auipc	a0,0x5
    800037b8:	d0c50513          	addi	a0,a0,-756 # 800084c0 <tickslock>
    800037bc:	01010113          	addi	sp,sp,16
    800037c0:	00001317          	auipc	t1,0x1
    800037c4:	5c830067          	jr	1480(t1) # 80004d88 <initlock>

00000000800037c8 <trapinithart>:
    800037c8:	ff010113          	addi	sp,sp,-16
    800037cc:	00813423          	sd	s0,8(sp)
    800037d0:	01010413          	addi	s0,sp,16
    800037d4:	00000797          	auipc	a5,0x0
    800037d8:	2fc78793          	addi	a5,a5,764 # 80003ad0 <kernelvec>
    800037dc:	10579073          	csrw	stvec,a5
    800037e0:	00813403          	ld	s0,8(sp)
    800037e4:	01010113          	addi	sp,sp,16
    800037e8:	00008067          	ret

00000000800037ec <usertrap>:
    800037ec:	ff010113          	addi	sp,sp,-16
    800037f0:	00813423          	sd	s0,8(sp)
    800037f4:	01010413          	addi	s0,sp,16
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	01010113          	addi	sp,sp,16
    80003800:	00008067          	ret

0000000080003804 <usertrapret>:
    80003804:	ff010113          	addi	sp,sp,-16
    80003808:	00813423          	sd	s0,8(sp)
    8000380c:	01010413          	addi	s0,sp,16
    80003810:	00813403          	ld	s0,8(sp)
    80003814:	01010113          	addi	sp,sp,16
    80003818:	00008067          	ret

000000008000381c <kerneltrap>:
    8000381c:	fe010113          	addi	sp,sp,-32
    80003820:	00813823          	sd	s0,16(sp)
    80003824:	00113c23          	sd	ra,24(sp)
    80003828:	00913423          	sd	s1,8(sp)
    8000382c:	02010413          	addi	s0,sp,32
    80003830:	142025f3          	csrr	a1,scause
    80003834:	100027f3          	csrr	a5,sstatus
    80003838:	0027f793          	andi	a5,a5,2
    8000383c:	10079c63          	bnez	a5,80003954 <kerneltrap+0x138>
    80003840:	142027f3          	csrr	a5,scause
    80003844:	0207ce63          	bltz	a5,80003880 <kerneltrap+0x64>
    80003848:	00003517          	auipc	a0,0x3
    8000384c:	9c850513          	addi	a0,a0,-1592 # 80006210 <CONSOLE_STATUS+0x200>
    80003850:	00001097          	auipc	ra,0x1
    80003854:	888080e7          	jalr	-1912(ra) # 800040d8 <__printf>
    80003858:	141025f3          	csrr	a1,sepc
    8000385c:	14302673          	csrr	a2,stval
    80003860:	00003517          	auipc	a0,0x3
    80003864:	9c050513          	addi	a0,a0,-1600 # 80006220 <CONSOLE_STATUS+0x210>
    80003868:	00001097          	auipc	ra,0x1
    8000386c:	870080e7          	jalr	-1936(ra) # 800040d8 <__printf>
    80003870:	00003517          	auipc	a0,0x3
    80003874:	9c850513          	addi	a0,a0,-1592 # 80006238 <CONSOLE_STATUS+0x228>
    80003878:	00001097          	auipc	ra,0x1
    8000387c:	804080e7          	jalr	-2044(ra) # 8000407c <panic>
    80003880:	0ff7f713          	andi	a4,a5,255
    80003884:	00900693          	li	a3,9
    80003888:	04d70063          	beq	a4,a3,800038c8 <kerneltrap+0xac>
    8000388c:	fff00713          	li	a4,-1
    80003890:	03f71713          	slli	a4,a4,0x3f
    80003894:	00170713          	addi	a4,a4,1
    80003898:	fae798e3          	bne	a5,a4,80003848 <kerneltrap+0x2c>
    8000389c:	00000097          	auipc	ra,0x0
    800038a0:	e00080e7          	jalr	-512(ra) # 8000369c <cpuid>
    800038a4:	06050663          	beqz	a0,80003910 <kerneltrap+0xf4>
    800038a8:	144027f3          	csrr	a5,sip
    800038ac:	ffd7f793          	andi	a5,a5,-3
    800038b0:	14479073          	csrw	sip,a5
    800038b4:	01813083          	ld	ra,24(sp)
    800038b8:	01013403          	ld	s0,16(sp)
    800038bc:	00813483          	ld	s1,8(sp)
    800038c0:	02010113          	addi	sp,sp,32
    800038c4:	00008067          	ret
    800038c8:	00000097          	auipc	ra,0x0
    800038cc:	3cc080e7          	jalr	972(ra) # 80003c94 <plic_claim>
    800038d0:	00a00793          	li	a5,10
    800038d4:	00050493          	mv	s1,a0
    800038d8:	06f50863          	beq	a0,a5,80003948 <kerneltrap+0x12c>
    800038dc:	fc050ce3          	beqz	a0,800038b4 <kerneltrap+0x98>
    800038e0:	00050593          	mv	a1,a0
    800038e4:	00003517          	auipc	a0,0x3
    800038e8:	90c50513          	addi	a0,a0,-1780 # 800061f0 <CONSOLE_STATUS+0x1e0>
    800038ec:	00000097          	auipc	ra,0x0
    800038f0:	7ec080e7          	jalr	2028(ra) # 800040d8 <__printf>
    800038f4:	01013403          	ld	s0,16(sp)
    800038f8:	01813083          	ld	ra,24(sp)
    800038fc:	00048513          	mv	a0,s1
    80003900:	00813483          	ld	s1,8(sp)
    80003904:	02010113          	addi	sp,sp,32
    80003908:	00000317          	auipc	t1,0x0
    8000390c:	3c430067          	jr	964(t1) # 80003ccc <plic_complete>
    80003910:	00005517          	auipc	a0,0x5
    80003914:	bb050513          	addi	a0,a0,-1104 # 800084c0 <tickslock>
    80003918:	00001097          	auipc	ra,0x1
    8000391c:	494080e7          	jalr	1172(ra) # 80004dac <acquire>
    80003920:	00004717          	auipc	a4,0x4
    80003924:	a7470713          	addi	a4,a4,-1420 # 80007394 <ticks>
    80003928:	00072783          	lw	a5,0(a4)
    8000392c:	00005517          	auipc	a0,0x5
    80003930:	b9450513          	addi	a0,a0,-1132 # 800084c0 <tickslock>
    80003934:	0017879b          	addiw	a5,a5,1
    80003938:	00f72023          	sw	a5,0(a4)
    8000393c:	00001097          	auipc	ra,0x1
    80003940:	53c080e7          	jalr	1340(ra) # 80004e78 <release>
    80003944:	f65ff06f          	j	800038a8 <kerneltrap+0x8c>
    80003948:	00001097          	auipc	ra,0x1
    8000394c:	098080e7          	jalr	152(ra) # 800049e0 <uartintr>
    80003950:	fa5ff06f          	j	800038f4 <kerneltrap+0xd8>
    80003954:	00003517          	auipc	a0,0x3
    80003958:	87c50513          	addi	a0,a0,-1924 # 800061d0 <CONSOLE_STATUS+0x1c0>
    8000395c:	00000097          	auipc	ra,0x0
    80003960:	720080e7          	jalr	1824(ra) # 8000407c <panic>

0000000080003964 <clockintr>:
    80003964:	fe010113          	addi	sp,sp,-32
    80003968:	00813823          	sd	s0,16(sp)
    8000396c:	00913423          	sd	s1,8(sp)
    80003970:	00113c23          	sd	ra,24(sp)
    80003974:	02010413          	addi	s0,sp,32
    80003978:	00005497          	auipc	s1,0x5
    8000397c:	b4848493          	addi	s1,s1,-1208 # 800084c0 <tickslock>
    80003980:	00048513          	mv	a0,s1
    80003984:	00001097          	auipc	ra,0x1
    80003988:	428080e7          	jalr	1064(ra) # 80004dac <acquire>
    8000398c:	00004717          	auipc	a4,0x4
    80003990:	a0870713          	addi	a4,a4,-1528 # 80007394 <ticks>
    80003994:	00072783          	lw	a5,0(a4)
    80003998:	01013403          	ld	s0,16(sp)
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	00048513          	mv	a0,s1
    800039a4:	0017879b          	addiw	a5,a5,1
    800039a8:	00813483          	ld	s1,8(sp)
    800039ac:	00f72023          	sw	a5,0(a4)
    800039b0:	02010113          	addi	sp,sp,32
    800039b4:	00001317          	auipc	t1,0x1
    800039b8:	4c430067          	jr	1220(t1) # 80004e78 <release>

00000000800039bc <devintr>:
    800039bc:	142027f3          	csrr	a5,scause
    800039c0:	00000513          	li	a0,0
    800039c4:	0007c463          	bltz	a5,800039cc <devintr+0x10>
    800039c8:	00008067          	ret
    800039cc:	fe010113          	addi	sp,sp,-32
    800039d0:	00813823          	sd	s0,16(sp)
    800039d4:	00113c23          	sd	ra,24(sp)
    800039d8:	00913423          	sd	s1,8(sp)
    800039dc:	02010413          	addi	s0,sp,32
    800039e0:	0ff7f713          	andi	a4,a5,255
    800039e4:	00900693          	li	a3,9
    800039e8:	04d70c63          	beq	a4,a3,80003a40 <devintr+0x84>
    800039ec:	fff00713          	li	a4,-1
    800039f0:	03f71713          	slli	a4,a4,0x3f
    800039f4:	00170713          	addi	a4,a4,1
    800039f8:	00e78c63          	beq	a5,a4,80003a10 <devintr+0x54>
    800039fc:	01813083          	ld	ra,24(sp)
    80003a00:	01013403          	ld	s0,16(sp)
    80003a04:	00813483          	ld	s1,8(sp)
    80003a08:	02010113          	addi	sp,sp,32
    80003a0c:	00008067          	ret
    80003a10:	00000097          	auipc	ra,0x0
    80003a14:	c8c080e7          	jalr	-884(ra) # 8000369c <cpuid>
    80003a18:	06050663          	beqz	a0,80003a84 <devintr+0xc8>
    80003a1c:	144027f3          	csrr	a5,sip
    80003a20:	ffd7f793          	andi	a5,a5,-3
    80003a24:	14479073          	csrw	sip,a5
    80003a28:	01813083          	ld	ra,24(sp)
    80003a2c:	01013403          	ld	s0,16(sp)
    80003a30:	00813483          	ld	s1,8(sp)
    80003a34:	00200513          	li	a0,2
    80003a38:	02010113          	addi	sp,sp,32
    80003a3c:	00008067          	ret
    80003a40:	00000097          	auipc	ra,0x0
    80003a44:	254080e7          	jalr	596(ra) # 80003c94 <plic_claim>
    80003a48:	00a00793          	li	a5,10
    80003a4c:	00050493          	mv	s1,a0
    80003a50:	06f50663          	beq	a0,a5,80003abc <devintr+0x100>
    80003a54:	00100513          	li	a0,1
    80003a58:	fa0482e3          	beqz	s1,800039fc <devintr+0x40>
    80003a5c:	00048593          	mv	a1,s1
    80003a60:	00002517          	auipc	a0,0x2
    80003a64:	79050513          	addi	a0,a0,1936 # 800061f0 <CONSOLE_STATUS+0x1e0>
    80003a68:	00000097          	auipc	ra,0x0
    80003a6c:	670080e7          	jalr	1648(ra) # 800040d8 <__printf>
    80003a70:	00048513          	mv	a0,s1
    80003a74:	00000097          	auipc	ra,0x0
    80003a78:	258080e7          	jalr	600(ra) # 80003ccc <plic_complete>
    80003a7c:	00100513          	li	a0,1
    80003a80:	f7dff06f          	j	800039fc <devintr+0x40>
    80003a84:	00005517          	auipc	a0,0x5
    80003a88:	a3c50513          	addi	a0,a0,-1476 # 800084c0 <tickslock>
    80003a8c:	00001097          	auipc	ra,0x1
    80003a90:	320080e7          	jalr	800(ra) # 80004dac <acquire>
    80003a94:	00004717          	auipc	a4,0x4
    80003a98:	90070713          	addi	a4,a4,-1792 # 80007394 <ticks>
    80003a9c:	00072783          	lw	a5,0(a4)
    80003aa0:	00005517          	auipc	a0,0x5
    80003aa4:	a2050513          	addi	a0,a0,-1504 # 800084c0 <tickslock>
    80003aa8:	0017879b          	addiw	a5,a5,1
    80003aac:	00f72023          	sw	a5,0(a4)
    80003ab0:	00001097          	auipc	ra,0x1
    80003ab4:	3c8080e7          	jalr	968(ra) # 80004e78 <release>
    80003ab8:	f65ff06f          	j	80003a1c <devintr+0x60>
    80003abc:	00001097          	auipc	ra,0x1
    80003ac0:	f24080e7          	jalr	-220(ra) # 800049e0 <uartintr>
    80003ac4:	fadff06f          	j	80003a70 <devintr+0xb4>
	...

0000000080003ad0 <kernelvec>:
    80003ad0:	f0010113          	addi	sp,sp,-256
    80003ad4:	00113023          	sd	ra,0(sp)
    80003ad8:	00213423          	sd	sp,8(sp)
    80003adc:	00313823          	sd	gp,16(sp)
    80003ae0:	00413c23          	sd	tp,24(sp)
    80003ae4:	02513023          	sd	t0,32(sp)
    80003ae8:	02613423          	sd	t1,40(sp)
    80003aec:	02713823          	sd	t2,48(sp)
    80003af0:	02813c23          	sd	s0,56(sp)
    80003af4:	04913023          	sd	s1,64(sp)
    80003af8:	04a13423          	sd	a0,72(sp)
    80003afc:	04b13823          	sd	a1,80(sp)
    80003b00:	04c13c23          	sd	a2,88(sp)
    80003b04:	06d13023          	sd	a3,96(sp)
    80003b08:	06e13423          	sd	a4,104(sp)
    80003b0c:	06f13823          	sd	a5,112(sp)
    80003b10:	07013c23          	sd	a6,120(sp)
    80003b14:	09113023          	sd	a7,128(sp)
    80003b18:	09213423          	sd	s2,136(sp)
    80003b1c:	09313823          	sd	s3,144(sp)
    80003b20:	09413c23          	sd	s4,152(sp)
    80003b24:	0b513023          	sd	s5,160(sp)
    80003b28:	0b613423          	sd	s6,168(sp)
    80003b2c:	0b713823          	sd	s7,176(sp)
    80003b30:	0b813c23          	sd	s8,184(sp)
    80003b34:	0d913023          	sd	s9,192(sp)
    80003b38:	0da13423          	sd	s10,200(sp)
    80003b3c:	0db13823          	sd	s11,208(sp)
    80003b40:	0dc13c23          	sd	t3,216(sp)
    80003b44:	0fd13023          	sd	t4,224(sp)
    80003b48:	0fe13423          	sd	t5,232(sp)
    80003b4c:	0ff13823          	sd	t6,240(sp)
    80003b50:	ccdff0ef          	jal	ra,8000381c <kerneltrap>
    80003b54:	00013083          	ld	ra,0(sp)
    80003b58:	00813103          	ld	sp,8(sp)
    80003b5c:	01013183          	ld	gp,16(sp)
    80003b60:	02013283          	ld	t0,32(sp)
    80003b64:	02813303          	ld	t1,40(sp)
    80003b68:	03013383          	ld	t2,48(sp)
    80003b6c:	03813403          	ld	s0,56(sp)
    80003b70:	04013483          	ld	s1,64(sp)
    80003b74:	04813503          	ld	a0,72(sp)
    80003b78:	05013583          	ld	a1,80(sp)
    80003b7c:	05813603          	ld	a2,88(sp)
    80003b80:	06013683          	ld	a3,96(sp)
    80003b84:	06813703          	ld	a4,104(sp)
    80003b88:	07013783          	ld	a5,112(sp)
    80003b8c:	07813803          	ld	a6,120(sp)
    80003b90:	08013883          	ld	a7,128(sp)
    80003b94:	08813903          	ld	s2,136(sp)
    80003b98:	09013983          	ld	s3,144(sp)
    80003b9c:	09813a03          	ld	s4,152(sp)
    80003ba0:	0a013a83          	ld	s5,160(sp)
    80003ba4:	0a813b03          	ld	s6,168(sp)
    80003ba8:	0b013b83          	ld	s7,176(sp)
    80003bac:	0b813c03          	ld	s8,184(sp)
    80003bb0:	0c013c83          	ld	s9,192(sp)
    80003bb4:	0c813d03          	ld	s10,200(sp)
    80003bb8:	0d013d83          	ld	s11,208(sp)
    80003bbc:	0d813e03          	ld	t3,216(sp)
    80003bc0:	0e013e83          	ld	t4,224(sp)
    80003bc4:	0e813f03          	ld	t5,232(sp)
    80003bc8:	0f013f83          	ld	t6,240(sp)
    80003bcc:	10010113          	addi	sp,sp,256
    80003bd0:	10200073          	sret
    80003bd4:	00000013          	nop
    80003bd8:	00000013          	nop
    80003bdc:	00000013          	nop

0000000080003be0 <timervec>:
    80003be0:	34051573          	csrrw	a0,mscratch,a0
    80003be4:	00b53023          	sd	a1,0(a0)
    80003be8:	00c53423          	sd	a2,8(a0)
    80003bec:	00d53823          	sd	a3,16(a0)
    80003bf0:	01853583          	ld	a1,24(a0)
    80003bf4:	02053603          	ld	a2,32(a0)
    80003bf8:	0005b683          	ld	a3,0(a1)
    80003bfc:	00c686b3          	add	a3,a3,a2
    80003c00:	00d5b023          	sd	a3,0(a1)
    80003c04:	00200593          	li	a1,2
    80003c08:	14459073          	csrw	sip,a1
    80003c0c:	01053683          	ld	a3,16(a0)
    80003c10:	00853603          	ld	a2,8(a0)
    80003c14:	00053583          	ld	a1,0(a0)
    80003c18:	34051573          	csrrw	a0,mscratch,a0
    80003c1c:	30200073          	mret

0000000080003c20 <plicinit>:
    80003c20:	ff010113          	addi	sp,sp,-16
    80003c24:	00813423          	sd	s0,8(sp)
    80003c28:	01010413          	addi	s0,sp,16
    80003c2c:	00813403          	ld	s0,8(sp)
    80003c30:	0c0007b7          	lui	a5,0xc000
    80003c34:	00100713          	li	a4,1
    80003c38:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80003c3c:	00e7a223          	sw	a4,4(a5)
    80003c40:	01010113          	addi	sp,sp,16
    80003c44:	00008067          	ret

0000000080003c48 <plicinithart>:
    80003c48:	ff010113          	addi	sp,sp,-16
    80003c4c:	00813023          	sd	s0,0(sp)
    80003c50:	00113423          	sd	ra,8(sp)
    80003c54:	01010413          	addi	s0,sp,16
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	a44080e7          	jalr	-1468(ra) # 8000369c <cpuid>
    80003c60:	0085171b          	slliw	a4,a0,0x8
    80003c64:	0c0027b7          	lui	a5,0xc002
    80003c68:	00e787b3          	add	a5,a5,a4
    80003c6c:	40200713          	li	a4,1026
    80003c70:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80003c74:	00813083          	ld	ra,8(sp)
    80003c78:	00013403          	ld	s0,0(sp)
    80003c7c:	00d5151b          	slliw	a0,a0,0xd
    80003c80:	0c2017b7          	lui	a5,0xc201
    80003c84:	00a78533          	add	a0,a5,a0
    80003c88:	00052023          	sw	zero,0(a0)
    80003c8c:	01010113          	addi	sp,sp,16
    80003c90:	00008067          	ret

0000000080003c94 <plic_claim>:
    80003c94:	ff010113          	addi	sp,sp,-16
    80003c98:	00813023          	sd	s0,0(sp)
    80003c9c:	00113423          	sd	ra,8(sp)
    80003ca0:	01010413          	addi	s0,sp,16
    80003ca4:	00000097          	auipc	ra,0x0
    80003ca8:	9f8080e7          	jalr	-1544(ra) # 8000369c <cpuid>
    80003cac:	00813083          	ld	ra,8(sp)
    80003cb0:	00013403          	ld	s0,0(sp)
    80003cb4:	00d5151b          	slliw	a0,a0,0xd
    80003cb8:	0c2017b7          	lui	a5,0xc201
    80003cbc:	00a78533          	add	a0,a5,a0
    80003cc0:	00452503          	lw	a0,4(a0)
    80003cc4:	01010113          	addi	sp,sp,16
    80003cc8:	00008067          	ret

0000000080003ccc <plic_complete>:
    80003ccc:	fe010113          	addi	sp,sp,-32
    80003cd0:	00813823          	sd	s0,16(sp)
    80003cd4:	00913423          	sd	s1,8(sp)
    80003cd8:	00113c23          	sd	ra,24(sp)
    80003cdc:	02010413          	addi	s0,sp,32
    80003ce0:	00050493          	mv	s1,a0
    80003ce4:	00000097          	auipc	ra,0x0
    80003ce8:	9b8080e7          	jalr	-1608(ra) # 8000369c <cpuid>
    80003cec:	01813083          	ld	ra,24(sp)
    80003cf0:	01013403          	ld	s0,16(sp)
    80003cf4:	00d5179b          	slliw	a5,a0,0xd
    80003cf8:	0c201737          	lui	a4,0xc201
    80003cfc:	00f707b3          	add	a5,a4,a5
    80003d00:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80003d04:	00813483          	ld	s1,8(sp)
    80003d08:	02010113          	addi	sp,sp,32
    80003d0c:	00008067          	ret

0000000080003d10 <consolewrite>:
    80003d10:	fb010113          	addi	sp,sp,-80
    80003d14:	04813023          	sd	s0,64(sp)
    80003d18:	04113423          	sd	ra,72(sp)
    80003d1c:	02913c23          	sd	s1,56(sp)
    80003d20:	03213823          	sd	s2,48(sp)
    80003d24:	03313423          	sd	s3,40(sp)
    80003d28:	03413023          	sd	s4,32(sp)
    80003d2c:	01513c23          	sd	s5,24(sp)
    80003d30:	05010413          	addi	s0,sp,80
    80003d34:	06c05c63          	blez	a2,80003dac <consolewrite+0x9c>
    80003d38:	00060993          	mv	s3,a2
    80003d3c:	00050a13          	mv	s4,a0
    80003d40:	00058493          	mv	s1,a1
    80003d44:	00000913          	li	s2,0
    80003d48:	fff00a93          	li	s5,-1
    80003d4c:	01c0006f          	j	80003d68 <consolewrite+0x58>
    80003d50:	fbf44503          	lbu	a0,-65(s0)
    80003d54:	0019091b          	addiw	s2,s2,1
    80003d58:	00148493          	addi	s1,s1,1
    80003d5c:	00001097          	auipc	ra,0x1
    80003d60:	a9c080e7          	jalr	-1380(ra) # 800047f8 <uartputc>
    80003d64:	03298063          	beq	s3,s2,80003d84 <consolewrite+0x74>
    80003d68:	00048613          	mv	a2,s1
    80003d6c:	00100693          	li	a3,1
    80003d70:	000a0593          	mv	a1,s4
    80003d74:	fbf40513          	addi	a0,s0,-65
    80003d78:	00000097          	auipc	ra,0x0
    80003d7c:	9dc080e7          	jalr	-1572(ra) # 80003754 <either_copyin>
    80003d80:	fd5518e3          	bne	a0,s5,80003d50 <consolewrite+0x40>
    80003d84:	04813083          	ld	ra,72(sp)
    80003d88:	04013403          	ld	s0,64(sp)
    80003d8c:	03813483          	ld	s1,56(sp)
    80003d90:	02813983          	ld	s3,40(sp)
    80003d94:	02013a03          	ld	s4,32(sp)
    80003d98:	01813a83          	ld	s5,24(sp)
    80003d9c:	00090513          	mv	a0,s2
    80003da0:	03013903          	ld	s2,48(sp)
    80003da4:	05010113          	addi	sp,sp,80
    80003da8:	00008067          	ret
    80003dac:	00000913          	li	s2,0
    80003db0:	fd5ff06f          	j	80003d84 <consolewrite+0x74>

0000000080003db4 <consoleread>:
    80003db4:	f9010113          	addi	sp,sp,-112
    80003db8:	06813023          	sd	s0,96(sp)
    80003dbc:	04913c23          	sd	s1,88(sp)
    80003dc0:	05213823          	sd	s2,80(sp)
    80003dc4:	05313423          	sd	s3,72(sp)
    80003dc8:	05413023          	sd	s4,64(sp)
    80003dcc:	03513c23          	sd	s5,56(sp)
    80003dd0:	03613823          	sd	s6,48(sp)
    80003dd4:	03713423          	sd	s7,40(sp)
    80003dd8:	03813023          	sd	s8,32(sp)
    80003ddc:	06113423          	sd	ra,104(sp)
    80003de0:	01913c23          	sd	s9,24(sp)
    80003de4:	07010413          	addi	s0,sp,112
    80003de8:	00060b93          	mv	s7,a2
    80003dec:	00050913          	mv	s2,a0
    80003df0:	00058c13          	mv	s8,a1
    80003df4:	00060b1b          	sext.w	s6,a2
    80003df8:	00004497          	auipc	s1,0x4
    80003dfc:	6f048493          	addi	s1,s1,1776 # 800084e8 <cons>
    80003e00:	00400993          	li	s3,4
    80003e04:	fff00a13          	li	s4,-1
    80003e08:	00a00a93          	li	s5,10
    80003e0c:	05705e63          	blez	s7,80003e68 <consoleread+0xb4>
    80003e10:	09c4a703          	lw	a4,156(s1)
    80003e14:	0984a783          	lw	a5,152(s1)
    80003e18:	0007071b          	sext.w	a4,a4
    80003e1c:	08e78463          	beq	a5,a4,80003ea4 <consoleread+0xf0>
    80003e20:	07f7f713          	andi	a4,a5,127
    80003e24:	00e48733          	add	a4,s1,a4
    80003e28:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80003e2c:	0017869b          	addiw	a3,a5,1
    80003e30:	08d4ac23          	sw	a3,152(s1)
    80003e34:	00070c9b          	sext.w	s9,a4
    80003e38:	0b370663          	beq	a4,s3,80003ee4 <consoleread+0x130>
    80003e3c:	00100693          	li	a3,1
    80003e40:	f9f40613          	addi	a2,s0,-97
    80003e44:	000c0593          	mv	a1,s8
    80003e48:	00090513          	mv	a0,s2
    80003e4c:	f8e40fa3          	sb	a4,-97(s0)
    80003e50:	00000097          	auipc	ra,0x0
    80003e54:	8b8080e7          	jalr	-1864(ra) # 80003708 <either_copyout>
    80003e58:	01450863          	beq	a0,s4,80003e68 <consoleread+0xb4>
    80003e5c:	001c0c13          	addi	s8,s8,1
    80003e60:	fffb8b9b          	addiw	s7,s7,-1
    80003e64:	fb5c94e3          	bne	s9,s5,80003e0c <consoleread+0x58>
    80003e68:	000b851b          	sext.w	a0,s7
    80003e6c:	06813083          	ld	ra,104(sp)
    80003e70:	06013403          	ld	s0,96(sp)
    80003e74:	05813483          	ld	s1,88(sp)
    80003e78:	05013903          	ld	s2,80(sp)
    80003e7c:	04813983          	ld	s3,72(sp)
    80003e80:	04013a03          	ld	s4,64(sp)
    80003e84:	03813a83          	ld	s5,56(sp)
    80003e88:	02813b83          	ld	s7,40(sp)
    80003e8c:	02013c03          	ld	s8,32(sp)
    80003e90:	01813c83          	ld	s9,24(sp)
    80003e94:	40ab053b          	subw	a0,s6,a0
    80003e98:	03013b03          	ld	s6,48(sp)
    80003e9c:	07010113          	addi	sp,sp,112
    80003ea0:	00008067          	ret
    80003ea4:	00001097          	auipc	ra,0x1
    80003ea8:	1d8080e7          	jalr	472(ra) # 8000507c <push_on>
    80003eac:	0984a703          	lw	a4,152(s1)
    80003eb0:	09c4a783          	lw	a5,156(s1)
    80003eb4:	0007879b          	sext.w	a5,a5
    80003eb8:	fef70ce3          	beq	a4,a5,80003eb0 <consoleread+0xfc>
    80003ebc:	00001097          	auipc	ra,0x1
    80003ec0:	234080e7          	jalr	564(ra) # 800050f0 <pop_on>
    80003ec4:	0984a783          	lw	a5,152(s1)
    80003ec8:	07f7f713          	andi	a4,a5,127
    80003ecc:	00e48733          	add	a4,s1,a4
    80003ed0:	01874703          	lbu	a4,24(a4)
    80003ed4:	0017869b          	addiw	a3,a5,1
    80003ed8:	08d4ac23          	sw	a3,152(s1)
    80003edc:	00070c9b          	sext.w	s9,a4
    80003ee0:	f5371ee3          	bne	a4,s3,80003e3c <consoleread+0x88>
    80003ee4:	000b851b          	sext.w	a0,s7
    80003ee8:	f96bf2e3          	bgeu	s7,s6,80003e6c <consoleread+0xb8>
    80003eec:	08f4ac23          	sw	a5,152(s1)
    80003ef0:	f7dff06f          	j	80003e6c <consoleread+0xb8>

0000000080003ef4 <consputc>:
    80003ef4:	10000793          	li	a5,256
    80003ef8:	00f50663          	beq	a0,a5,80003f04 <consputc+0x10>
    80003efc:	00001317          	auipc	t1,0x1
    80003f00:	9f430067          	jr	-1548(t1) # 800048f0 <uartputc_sync>
    80003f04:	ff010113          	addi	sp,sp,-16
    80003f08:	00113423          	sd	ra,8(sp)
    80003f0c:	00813023          	sd	s0,0(sp)
    80003f10:	01010413          	addi	s0,sp,16
    80003f14:	00800513          	li	a0,8
    80003f18:	00001097          	auipc	ra,0x1
    80003f1c:	9d8080e7          	jalr	-1576(ra) # 800048f0 <uartputc_sync>
    80003f20:	02000513          	li	a0,32
    80003f24:	00001097          	auipc	ra,0x1
    80003f28:	9cc080e7          	jalr	-1588(ra) # 800048f0 <uartputc_sync>
    80003f2c:	00013403          	ld	s0,0(sp)
    80003f30:	00813083          	ld	ra,8(sp)
    80003f34:	00800513          	li	a0,8
    80003f38:	01010113          	addi	sp,sp,16
    80003f3c:	00001317          	auipc	t1,0x1
    80003f40:	9b430067          	jr	-1612(t1) # 800048f0 <uartputc_sync>

0000000080003f44 <consoleintr>:
    80003f44:	fe010113          	addi	sp,sp,-32
    80003f48:	00813823          	sd	s0,16(sp)
    80003f4c:	00913423          	sd	s1,8(sp)
    80003f50:	01213023          	sd	s2,0(sp)
    80003f54:	00113c23          	sd	ra,24(sp)
    80003f58:	02010413          	addi	s0,sp,32
    80003f5c:	00004917          	auipc	s2,0x4
    80003f60:	58c90913          	addi	s2,s2,1420 # 800084e8 <cons>
    80003f64:	00050493          	mv	s1,a0
    80003f68:	00090513          	mv	a0,s2
    80003f6c:	00001097          	auipc	ra,0x1
    80003f70:	e40080e7          	jalr	-448(ra) # 80004dac <acquire>
    80003f74:	02048c63          	beqz	s1,80003fac <consoleintr+0x68>
    80003f78:	0a092783          	lw	a5,160(s2)
    80003f7c:	09892703          	lw	a4,152(s2)
    80003f80:	07f00693          	li	a3,127
    80003f84:	40e7873b          	subw	a4,a5,a4
    80003f88:	02e6e263          	bltu	a3,a4,80003fac <consoleintr+0x68>
    80003f8c:	00d00713          	li	a4,13
    80003f90:	04e48063          	beq	s1,a4,80003fd0 <consoleintr+0x8c>
    80003f94:	07f7f713          	andi	a4,a5,127
    80003f98:	00e90733          	add	a4,s2,a4
    80003f9c:	0017879b          	addiw	a5,a5,1
    80003fa0:	0af92023          	sw	a5,160(s2)
    80003fa4:	00970c23          	sb	s1,24(a4)
    80003fa8:	08f92e23          	sw	a5,156(s2)
    80003fac:	01013403          	ld	s0,16(sp)
    80003fb0:	01813083          	ld	ra,24(sp)
    80003fb4:	00813483          	ld	s1,8(sp)
    80003fb8:	00013903          	ld	s2,0(sp)
    80003fbc:	00004517          	auipc	a0,0x4
    80003fc0:	52c50513          	addi	a0,a0,1324 # 800084e8 <cons>
    80003fc4:	02010113          	addi	sp,sp,32
    80003fc8:	00001317          	auipc	t1,0x1
    80003fcc:	eb030067          	jr	-336(t1) # 80004e78 <release>
    80003fd0:	00a00493          	li	s1,10
    80003fd4:	fc1ff06f          	j	80003f94 <consoleintr+0x50>

0000000080003fd8 <consoleinit>:
    80003fd8:	fe010113          	addi	sp,sp,-32
    80003fdc:	00113c23          	sd	ra,24(sp)
    80003fe0:	00813823          	sd	s0,16(sp)
    80003fe4:	00913423          	sd	s1,8(sp)
    80003fe8:	02010413          	addi	s0,sp,32
    80003fec:	00004497          	auipc	s1,0x4
    80003ff0:	4fc48493          	addi	s1,s1,1276 # 800084e8 <cons>
    80003ff4:	00048513          	mv	a0,s1
    80003ff8:	00002597          	auipc	a1,0x2
    80003ffc:	25058593          	addi	a1,a1,592 # 80006248 <CONSOLE_STATUS+0x238>
    80004000:	00001097          	auipc	ra,0x1
    80004004:	d88080e7          	jalr	-632(ra) # 80004d88 <initlock>
    80004008:	00000097          	auipc	ra,0x0
    8000400c:	7ac080e7          	jalr	1964(ra) # 800047b4 <uartinit>
    80004010:	01813083          	ld	ra,24(sp)
    80004014:	01013403          	ld	s0,16(sp)
    80004018:	00000797          	auipc	a5,0x0
    8000401c:	d9c78793          	addi	a5,a5,-612 # 80003db4 <consoleread>
    80004020:	0af4bc23          	sd	a5,184(s1)
    80004024:	00000797          	auipc	a5,0x0
    80004028:	cec78793          	addi	a5,a5,-788 # 80003d10 <consolewrite>
    8000402c:	0cf4b023          	sd	a5,192(s1)
    80004030:	00813483          	ld	s1,8(sp)
    80004034:	02010113          	addi	sp,sp,32
    80004038:	00008067          	ret

000000008000403c <console_read>:
    8000403c:	ff010113          	addi	sp,sp,-16
    80004040:	00813423          	sd	s0,8(sp)
    80004044:	01010413          	addi	s0,sp,16
    80004048:	00813403          	ld	s0,8(sp)
    8000404c:	00004317          	auipc	t1,0x4
    80004050:	55433303          	ld	t1,1364(t1) # 800085a0 <devsw+0x10>
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00030067          	jr	t1

000000008000405c <console_write>:
    8000405c:	ff010113          	addi	sp,sp,-16
    80004060:	00813423          	sd	s0,8(sp)
    80004064:	01010413          	addi	s0,sp,16
    80004068:	00813403          	ld	s0,8(sp)
    8000406c:	00004317          	auipc	t1,0x4
    80004070:	53c33303          	ld	t1,1340(t1) # 800085a8 <devsw+0x18>
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00030067          	jr	t1

000000008000407c <panic>:
    8000407c:	fe010113          	addi	sp,sp,-32
    80004080:	00113c23          	sd	ra,24(sp)
    80004084:	00813823          	sd	s0,16(sp)
    80004088:	00913423          	sd	s1,8(sp)
    8000408c:	02010413          	addi	s0,sp,32
    80004090:	00050493          	mv	s1,a0
    80004094:	00002517          	auipc	a0,0x2
    80004098:	1bc50513          	addi	a0,a0,444 # 80006250 <CONSOLE_STATUS+0x240>
    8000409c:	00004797          	auipc	a5,0x4
    800040a0:	5a07a623          	sw	zero,1452(a5) # 80008648 <pr+0x18>
    800040a4:	00000097          	auipc	ra,0x0
    800040a8:	034080e7          	jalr	52(ra) # 800040d8 <__printf>
    800040ac:	00048513          	mv	a0,s1
    800040b0:	00000097          	auipc	ra,0x0
    800040b4:	028080e7          	jalr	40(ra) # 800040d8 <__printf>
    800040b8:	00002517          	auipc	a0,0x2
    800040bc:	fa050513          	addi	a0,a0,-96 # 80006058 <CONSOLE_STATUS+0x48>
    800040c0:	00000097          	auipc	ra,0x0
    800040c4:	018080e7          	jalr	24(ra) # 800040d8 <__printf>
    800040c8:	00100793          	li	a5,1
    800040cc:	00003717          	auipc	a4,0x3
    800040d0:	2cf72623          	sw	a5,716(a4) # 80007398 <panicked>
    800040d4:	0000006f          	j	800040d4 <panic+0x58>

00000000800040d8 <__printf>:
    800040d8:	f3010113          	addi	sp,sp,-208
    800040dc:	08813023          	sd	s0,128(sp)
    800040e0:	07313423          	sd	s3,104(sp)
    800040e4:	09010413          	addi	s0,sp,144
    800040e8:	05813023          	sd	s8,64(sp)
    800040ec:	08113423          	sd	ra,136(sp)
    800040f0:	06913c23          	sd	s1,120(sp)
    800040f4:	07213823          	sd	s2,112(sp)
    800040f8:	07413023          	sd	s4,96(sp)
    800040fc:	05513c23          	sd	s5,88(sp)
    80004100:	05613823          	sd	s6,80(sp)
    80004104:	05713423          	sd	s7,72(sp)
    80004108:	03913c23          	sd	s9,56(sp)
    8000410c:	03a13823          	sd	s10,48(sp)
    80004110:	03b13423          	sd	s11,40(sp)
    80004114:	00004317          	auipc	t1,0x4
    80004118:	51c30313          	addi	t1,t1,1308 # 80008630 <pr>
    8000411c:	01832c03          	lw	s8,24(t1)
    80004120:	00b43423          	sd	a1,8(s0)
    80004124:	00c43823          	sd	a2,16(s0)
    80004128:	00d43c23          	sd	a3,24(s0)
    8000412c:	02e43023          	sd	a4,32(s0)
    80004130:	02f43423          	sd	a5,40(s0)
    80004134:	03043823          	sd	a6,48(s0)
    80004138:	03143c23          	sd	a7,56(s0)
    8000413c:	00050993          	mv	s3,a0
    80004140:	4a0c1663          	bnez	s8,800045ec <__printf+0x514>
    80004144:	60098c63          	beqz	s3,8000475c <__printf+0x684>
    80004148:	0009c503          	lbu	a0,0(s3)
    8000414c:	00840793          	addi	a5,s0,8
    80004150:	f6f43c23          	sd	a5,-136(s0)
    80004154:	00000493          	li	s1,0
    80004158:	22050063          	beqz	a0,80004378 <__printf+0x2a0>
    8000415c:	00002a37          	lui	s4,0x2
    80004160:	00018ab7          	lui	s5,0x18
    80004164:	000f4b37          	lui	s6,0xf4
    80004168:	00989bb7          	lui	s7,0x989
    8000416c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80004170:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80004174:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80004178:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    8000417c:	00148c9b          	addiw	s9,s1,1
    80004180:	02500793          	li	a5,37
    80004184:	01998933          	add	s2,s3,s9
    80004188:	38f51263          	bne	a0,a5,8000450c <__printf+0x434>
    8000418c:	00094783          	lbu	a5,0(s2)
    80004190:	00078c9b          	sext.w	s9,a5
    80004194:	1e078263          	beqz	a5,80004378 <__printf+0x2a0>
    80004198:	0024849b          	addiw	s1,s1,2
    8000419c:	07000713          	li	a4,112
    800041a0:	00998933          	add	s2,s3,s1
    800041a4:	38e78a63          	beq	a5,a4,80004538 <__printf+0x460>
    800041a8:	20f76863          	bltu	a4,a5,800043b8 <__printf+0x2e0>
    800041ac:	42a78863          	beq	a5,a0,800045dc <__printf+0x504>
    800041b0:	06400713          	li	a4,100
    800041b4:	40e79663          	bne	a5,a4,800045c0 <__printf+0x4e8>
    800041b8:	f7843783          	ld	a5,-136(s0)
    800041bc:	0007a603          	lw	a2,0(a5)
    800041c0:	00878793          	addi	a5,a5,8
    800041c4:	f6f43c23          	sd	a5,-136(s0)
    800041c8:	42064a63          	bltz	a2,800045fc <__printf+0x524>
    800041cc:	00a00713          	li	a4,10
    800041d0:	02e677bb          	remuw	a5,a2,a4
    800041d4:	00002d97          	auipc	s11,0x2
    800041d8:	0a4d8d93          	addi	s11,s11,164 # 80006278 <digits>
    800041dc:	00900593          	li	a1,9
    800041e0:	0006051b          	sext.w	a0,a2
    800041e4:	00000c93          	li	s9,0
    800041e8:	02079793          	slli	a5,a5,0x20
    800041ec:	0207d793          	srli	a5,a5,0x20
    800041f0:	00fd87b3          	add	a5,s11,a5
    800041f4:	0007c783          	lbu	a5,0(a5)
    800041f8:	02e656bb          	divuw	a3,a2,a4
    800041fc:	f8f40023          	sb	a5,-128(s0)
    80004200:	14c5d863          	bge	a1,a2,80004350 <__printf+0x278>
    80004204:	06300593          	li	a1,99
    80004208:	00100c93          	li	s9,1
    8000420c:	02e6f7bb          	remuw	a5,a3,a4
    80004210:	02079793          	slli	a5,a5,0x20
    80004214:	0207d793          	srli	a5,a5,0x20
    80004218:	00fd87b3          	add	a5,s11,a5
    8000421c:	0007c783          	lbu	a5,0(a5)
    80004220:	02e6d73b          	divuw	a4,a3,a4
    80004224:	f8f400a3          	sb	a5,-127(s0)
    80004228:	12a5f463          	bgeu	a1,a0,80004350 <__printf+0x278>
    8000422c:	00a00693          	li	a3,10
    80004230:	00900593          	li	a1,9
    80004234:	02d777bb          	remuw	a5,a4,a3
    80004238:	02079793          	slli	a5,a5,0x20
    8000423c:	0207d793          	srli	a5,a5,0x20
    80004240:	00fd87b3          	add	a5,s11,a5
    80004244:	0007c503          	lbu	a0,0(a5)
    80004248:	02d757bb          	divuw	a5,a4,a3
    8000424c:	f8a40123          	sb	a0,-126(s0)
    80004250:	48e5f263          	bgeu	a1,a4,800046d4 <__printf+0x5fc>
    80004254:	06300513          	li	a0,99
    80004258:	02d7f5bb          	remuw	a1,a5,a3
    8000425c:	02059593          	slli	a1,a1,0x20
    80004260:	0205d593          	srli	a1,a1,0x20
    80004264:	00bd85b3          	add	a1,s11,a1
    80004268:	0005c583          	lbu	a1,0(a1)
    8000426c:	02d7d7bb          	divuw	a5,a5,a3
    80004270:	f8b401a3          	sb	a1,-125(s0)
    80004274:	48e57263          	bgeu	a0,a4,800046f8 <__printf+0x620>
    80004278:	3e700513          	li	a0,999
    8000427c:	02d7f5bb          	remuw	a1,a5,a3
    80004280:	02059593          	slli	a1,a1,0x20
    80004284:	0205d593          	srli	a1,a1,0x20
    80004288:	00bd85b3          	add	a1,s11,a1
    8000428c:	0005c583          	lbu	a1,0(a1)
    80004290:	02d7d7bb          	divuw	a5,a5,a3
    80004294:	f8b40223          	sb	a1,-124(s0)
    80004298:	46e57663          	bgeu	a0,a4,80004704 <__printf+0x62c>
    8000429c:	02d7f5bb          	remuw	a1,a5,a3
    800042a0:	02059593          	slli	a1,a1,0x20
    800042a4:	0205d593          	srli	a1,a1,0x20
    800042a8:	00bd85b3          	add	a1,s11,a1
    800042ac:	0005c583          	lbu	a1,0(a1)
    800042b0:	02d7d7bb          	divuw	a5,a5,a3
    800042b4:	f8b402a3          	sb	a1,-123(s0)
    800042b8:	46ea7863          	bgeu	s4,a4,80004728 <__printf+0x650>
    800042bc:	02d7f5bb          	remuw	a1,a5,a3
    800042c0:	02059593          	slli	a1,a1,0x20
    800042c4:	0205d593          	srli	a1,a1,0x20
    800042c8:	00bd85b3          	add	a1,s11,a1
    800042cc:	0005c583          	lbu	a1,0(a1)
    800042d0:	02d7d7bb          	divuw	a5,a5,a3
    800042d4:	f8b40323          	sb	a1,-122(s0)
    800042d8:	3eeaf863          	bgeu	s5,a4,800046c8 <__printf+0x5f0>
    800042dc:	02d7f5bb          	remuw	a1,a5,a3
    800042e0:	02059593          	slli	a1,a1,0x20
    800042e4:	0205d593          	srli	a1,a1,0x20
    800042e8:	00bd85b3          	add	a1,s11,a1
    800042ec:	0005c583          	lbu	a1,0(a1)
    800042f0:	02d7d7bb          	divuw	a5,a5,a3
    800042f4:	f8b403a3          	sb	a1,-121(s0)
    800042f8:	42eb7e63          	bgeu	s6,a4,80004734 <__printf+0x65c>
    800042fc:	02d7f5bb          	remuw	a1,a5,a3
    80004300:	02059593          	slli	a1,a1,0x20
    80004304:	0205d593          	srli	a1,a1,0x20
    80004308:	00bd85b3          	add	a1,s11,a1
    8000430c:	0005c583          	lbu	a1,0(a1)
    80004310:	02d7d7bb          	divuw	a5,a5,a3
    80004314:	f8b40423          	sb	a1,-120(s0)
    80004318:	42ebfc63          	bgeu	s7,a4,80004750 <__printf+0x678>
    8000431c:	02079793          	slli	a5,a5,0x20
    80004320:	0207d793          	srli	a5,a5,0x20
    80004324:	00fd8db3          	add	s11,s11,a5
    80004328:	000dc703          	lbu	a4,0(s11)
    8000432c:	00a00793          	li	a5,10
    80004330:	00900c93          	li	s9,9
    80004334:	f8e404a3          	sb	a4,-119(s0)
    80004338:	00065c63          	bgez	a2,80004350 <__printf+0x278>
    8000433c:	f9040713          	addi	a4,s0,-112
    80004340:	00f70733          	add	a4,a4,a5
    80004344:	02d00693          	li	a3,45
    80004348:	fed70823          	sb	a3,-16(a4)
    8000434c:	00078c93          	mv	s9,a5
    80004350:	f8040793          	addi	a5,s0,-128
    80004354:	01978cb3          	add	s9,a5,s9
    80004358:	f7f40d13          	addi	s10,s0,-129
    8000435c:	000cc503          	lbu	a0,0(s9)
    80004360:	fffc8c93          	addi	s9,s9,-1
    80004364:	00000097          	auipc	ra,0x0
    80004368:	b90080e7          	jalr	-1136(ra) # 80003ef4 <consputc>
    8000436c:	ffac98e3          	bne	s9,s10,8000435c <__printf+0x284>
    80004370:	00094503          	lbu	a0,0(s2)
    80004374:	e00514e3          	bnez	a0,8000417c <__printf+0xa4>
    80004378:	1a0c1663          	bnez	s8,80004524 <__printf+0x44c>
    8000437c:	08813083          	ld	ra,136(sp)
    80004380:	08013403          	ld	s0,128(sp)
    80004384:	07813483          	ld	s1,120(sp)
    80004388:	07013903          	ld	s2,112(sp)
    8000438c:	06813983          	ld	s3,104(sp)
    80004390:	06013a03          	ld	s4,96(sp)
    80004394:	05813a83          	ld	s5,88(sp)
    80004398:	05013b03          	ld	s6,80(sp)
    8000439c:	04813b83          	ld	s7,72(sp)
    800043a0:	04013c03          	ld	s8,64(sp)
    800043a4:	03813c83          	ld	s9,56(sp)
    800043a8:	03013d03          	ld	s10,48(sp)
    800043ac:	02813d83          	ld	s11,40(sp)
    800043b0:	0d010113          	addi	sp,sp,208
    800043b4:	00008067          	ret
    800043b8:	07300713          	li	a4,115
    800043bc:	1ce78a63          	beq	a5,a4,80004590 <__printf+0x4b8>
    800043c0:	07800713          	li	a4,120
    800043c4:	1ee79e63          	bne	a5,a4,800045c0 <__printf+0x4e8>
    800043c8:	f7843783          	ld	a5,-136(s0)
    800043cc:	0007a703          	lw	a4,0(a5)
    800043d0:	00878793          	addi	a5,a5,8
    800043d4:	f6f43c23          	sd	a5,-136(s0)
    800043d8:	28074263          	bltz	a4,8000465c <__printf+0x584>
    800043dc:	00002d97          	auipc	s11,0x2
    800043e0:	e9cd8d93          	addi	s11,s11,-356 # 80006278 <digits>
    800043e4:	00f77793          	andi	a5,a4,15
    800043e8:	00fd87b3          	add	a5,s11,a5
    800043ec:	0007c683          	lbu	a3,0(a5)
    800043f0:	00f00613          	li	a2,15
    800043f4:	0007079b          	sext.w	a5,a4
    800043f8:	f8d40023          	sb	a3,-128(s0)
    800043fc:	0047559b          	srliw	a1,a4,0x4
    80004400:	0047569b          	srliw	a3,a4,0x4
    80004404:	00000c93          	li	s9,0
    80004408:	0ee65063          	bge	a2,a4,800044e8 <__printf+0x410>
    8000440c:	00f6f693          	andi	a3,a3,15
    80004410:	00dd86b3          	add	a3,s11,a3
    80004414:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80004418:	0087d79b          	srliw	a5,a5,0x8
    8000441c:	00100c93          	li	s9,1
    80004420:	f8d400a3          	sb	a3,-127(s0)
    80004424:	0cb67263          	bgeu	a2,a1,800044e8 <__printf+0x410>
    80004428:	00f7f693          	andi	a3,a5,15
    8000442c:	00dd86b3          	add	a3,s11,a3
    80004430:	0006c583          	lbu	a1,0(a3)
    80004434:	00f00613          	li	a2,15
    80004438:	0047d69b          	srliw	a3,a5,0x4
    8000443c:	f8b40123          	sb	a1,-126(s0)
    80004440:	0047d593          	srli	a1,a5,0x4
    80004444:	28f67e63          	bgeu	a2,a5,800046e0 <__printf+0x608>
    80004448:	00f6f693          	andi	a3,a3,15
    8000444c:	00dd86b3          	add	a3,s11,a3
    80004450:	0006c503          	lbu	a0,0(a3)
    80004454:	0087d813          	srli	a6,a5,0x8
    80004458:	0087d69b          	srliw	a3,a5,0x8
    8000445c:	f8a401a3          	sb	a0,-125(s0)
    80004460:	28b67663          	bgeu	a2,a1,800046ec <__printf+0x614>
    80004464:	00f6f693          	andi	a3,a3,15
    80004468:	00dd86b3          	add	a3,s11,a3
    8000446c:	0006c583          	lbu	a1,0(a3)
    80004470:	00c7d513          	srli	a0,a5,0xc
    80004474:	00c7d69b          	srliw	a3,a5,0xc
    80004478:	f8b40223          	sb	a1,-124(s0)
    8000447c:	29067a63          	bgeu	a2,a6,80004710 <__printf+0x638>
    80004480:	00f6f693          	andi	a3,a3,15
    80004484:	00dd86b3          	add	a3,s11,a3
    80004488:	0006c583          	lbu	a1,0(a3)
    8000448c:	0107d813          	srli	a6,a5,0x10
    80004490:	0107d69b          	srliw	a3,a5,0x10
    80004494:	f8b402a3          	sb	a1,-123(s0)
    80004498:	28a67263          	bgeu	a2,a0,8000471c <__printf+0x644>
    8000449c:	00f6f693          	andi	a3,a3,15
    800044a0:	00dd86b3          	add	a3,s11,a3
    800044a4:	0006c683          	lbu	a3,0(a3)
    800044a8:	0147d79b          	srliw	a5,a5,0x14
    800044ac:	f8d40323          	sb	a3,-122(s0)
    800044b0:	21067663          	bgeu	a2,a6,800046bc <__printf+0x5e4>
    800044b4:	02079793          	slli	a5,a5,0x20
    800044b8:	0207d793          	srli	a5,a5,0x20
    800044bc:	00fd8db3          	add	s11,s11,a5
    800044c0:	000dc683          	lbu	a3,0(s11)
    800044c4:	00800793          	li	a5,8
    800044c8:	00700c93          	li	s9,7
    800044cc:	f8d403a3          	sb	a3,-121(s0)
    800044d0:	00075c63          	bgez	a4,800044e8 <__printf+0x410>
    800044d4:	f9040713          	addi	a4,s0,-112
    800044d8:	00f70733          	add	a4,a4,a5
    800044dc:	02d00693          	li	a3,45
    800044e0:	fed70823          	sb	a3,-16(a4)
    800044e4:	00078c93          	mv	s9,a5
    800044e8:	f8040793          	addi	a5,s0,-128
    800044ec:	01978cb3          	add	s9,a5,s9
    800044f0:	f7f40d13          	addi	s10,s0,-129
    800044f4:	000cc503          	lbu	a0,0(s9)
    800044f8:	fffc8c93          	addi	s9,s9,-1
    800044fc:	00000097          	auipc	ra,0x0
    80004500:	9f8080e7          	jalr	-1544(ra) # 80003ef4 <consputc>
    80004504:	ff9d18e3          	bne	s10,s9,800044f4 <__printf+0x41c>
    80004508:	0100006f          	j	80004518 <__printf+0x440>
    8000450c:	00000097          	auipc	ra,0x0
    80004510:	9e8080e7          	jalr	-1560(ra) # 80003ef4 <consputc>
    80004514:	000c8493          	mv	s1,s9
    80004518:	00094503          	lbu	a0,0(s2)
    8000451c:	c60510e3          	bnez	a0,8000417c <__printf+0xa4>
    80004520:	e40c0ee3          	beqz	s8,8000437c <__printf+0x2a4>
    80004524:	00004517          	auipc	a0,0x4
    80004528:	10c50513          	addi	a0,a0,268 # 80008630 <pr>
    8000452c:	00001097          	auipc	ra,0x1
    80004530:	94c080e7          	jalr	-1716(ra) # 80004e78 <release>
    80004534:	e49ff06f          	j	8000437c <__printf+0x2a4>
    80004538:	f7843783          	ld	a5,-136(s0)
    8000453c:	03000513          	li	a0,48
    80004540:	01000d13          	li	s10,16
    80004544:	00878713          	addi	a4,a5,8
    80004548:	0007bc83          	ld	s9,0(a5)
    8000454c:	f6e43c23          	sd	a4,-136(s0)
    80004550:	00000097          	auipc	ra,0x0
    80004554:	9a4080e7          	jalr	-1628(ra) # 80003ef4 <consputc>
    80004558:	07800513          	li	a0,120
    8000455c:	00000097          	auipc	ra,0x0
    80004560:	998080e7          	jalr	-1640(ra) # 80003ef4 <consputc>
    80004564:	00002d97          	auipc	s11,0x2
    80004568:	d14d8d93          	addi	s11,s11,-748 # 80006278 <digits>
    8000456c:	03ccd793          	srli	a5,s9,0x3c
    80004570:	00fd87b3          	add	a5,s11,a5
    80004574:	0007c503          	lbu	a0,0(a5)
    80004578:	fffd0d1b          	addiw	s10,s10,-1
    8000457c:	004c9c93          	slli	s9,s9,0x4
    80004580:	00000097          	auipc	ra,0x0
    80004584:	974080e7          	jalr	-1676(ra) # 80003ef4 <consputc>
    80004588:	fe0d12e3          	bnez	s10,8000456c <__printf+0x494>
    8000458c:	f8dff06f          	j	80004518 <__printf+0x440>
    80004590:	f7843783          	ld	a5,-136(s0)
    80004594:	0007bc83          	ld	s9,0(a5)
    80004598:	00878793          	addi	a5,a5,8
    8000459c:	f6f43c23          	sd	a5,-136(s0)
    800045a0:	000c9a63          	bnez	s9,800045b4 <__printf+0x4dc>
    800045a4:	1080006f          	j	800046ac <__printf+0x5d4>
    800045a8:	001c8c93          	addi	s9,s9,1
    800045ac:	00000097          	auipc	ra,0x0
    800045b0:	948080e7          	jalr	-1720(ra) # 80003ef4 <consputc>
    800045b4:	000cc503          	lbu	a0,0(s9)
    800045b8:	fe0518e3          	bnez	a0,800045a8 <__printf+0x4d0>
    800045bc:	f5dff06f          	j	80004518 <__printf+0x440>
    800045c0:	02500513          	li	a0,37
    800045c4:	00000097          	auipc	ra,0x0
    800045c8:	930080e7          	jalr	-1744(ra) # 80003ef4 <consputc>
    800045cc:	000c8513          	mv	a0,s9
    800045d0:	00000097          	auipc	ra,0x0
    800045d4:	924080e7          	jalr	-1756(ra) # 80003ef4 <consputc>
    800045d8:	f41ff06f          	j	80004518 <__printf+0x440>
    800045dc:	02500513          	li	a0,37
    800045e0:	00000097          	auipc	ra,0x0
    800045e4:	914080e7          	jalr	-1772(ra) # 80003ef4 <consputc>
    800045e8:	f31ff06f          	j	80004518 <__printf+0x440>
    800045ec:	00030513          	mv	a0,t1
    800045f0:	00000097          	auipc	ra,0x0
    800045f4:	7bc080e7          	jalr	1980(ra) # 80004dac <acquire>
    800045f8:	b4dff06f          	j	80004144 <__printf+0x6c>
    800045fc:	40c0053b          	negw	a0,a2
    80004600:	00a00713          	li	a4,10
    80004604:	02e576bb          	remuw	a3,a0,a4
    80004608:	00002d97          	auipc	s11,0x2
    8000460c:	c70d8d93          	addi	s11,s11,-912 # 80006278 <digits>
    80004610:	ff700593          	li	a1,-9
    80004614:	02069693          	slli	a3,a3,0x20
    80004618:	0206d693          	srli	a3,a3,0x20
    8000461c:	00dd86b3          	add	a3,s11,a3
    80004620:	0006c683          	lbu	a3,0(a3)
    80004624:	02e557bb          	divuw	a5,a0,a4
    80004628:	f8d40023          	sb	a3,-128(s0)
    8000462c:	10b65e63          	bge	a2,a1,80004748 <__printf+0x670>
    80004630:	06300593          	li	a1,99
    80004634:	02e7f6bb          	remuw	a3,a5,a4
    80004638:	02069693          	slli	a3,a3,0x20
    8000463c:	0206d693          	srli	a3,a3,0x20
    80004640:	00dd86b3          	add	a3,s11,a3
    80004644:	0006c683          	lbu	a3,0(a3)
    80004648:	02e7d73b          	divuw	a4,a5,a4
    8000464c:	00200793          	li	a5,2
    80004650:	f8d400a3          	sb	a3,-127(s0)
    80004654:	bca5ece3          	bltu	a1,a0,8000422c <__printf+0x154>
    80004658:	ce5ff06f          	j	8000433c <__printf+0x264>
    8000465c:	40e007bb          	negw	a5,a4
    80004660:	00002d97          	auipc	s11,0x2
    80004664:	c18d8d93          	addi	s11,s11,-1000 # 80006278 <digits>
    80004668:	00f7f693          	andi	a3,a5,15
    8000466c:	00dd86b3          	add	a3,s11,a3
    80004670:	0006c583          	lbu	a1,0(a3)
    80004674:	ff100613          	li	a2,-15
    80004678:	0047d69b          	srliw	a3,a5,0x4
    8000467c:	f8b40023          	sb	a1,-128(s0)
    80004680:	0047d59b          	srliw	a1,a5,0x4
    80004684:	0ac75e63          	bge	a4,a2,80004740 <__printf+0x668>
    80004688:	00f6f693          	andi	a3,a3,15
    8000468c:	00dd86b3          	add	a3,s11,a3
    80004690:	0006c603          	lbu	a2,0(a3)
    80004694:	00f00693          	li	a3,15
    80004698:	0087d79b          	srliw	a5,a5,0x8
    8000469c:	f8c400a3          	sb	a2,-127(s0)
    800046a0:	d8b6e4e3          	bltu	a3,a1,80004428 <__printf+0x350>
    800046a4:	00200793          	li	a5,2
    800046a8:	e2dff06f          	j	800044d4 <__printf+0x3fc>
    800046ac:	00002c97          	auipc	s9,0x2
    800046b0:	bacc8c93          	addi	s9,s9,-1108 # 80006258 <CONSOLE_STATUS+0x248>
    800046b4:	02800513          	li	a0,40
    800046b8:	ef1ff06f          	j	800045a8 <__printf+0x4d0>
    800046bc:	00700793          	li	a5,7
    800046c0:	00600c93          	li	s9,6
    800046c4:	e0dff06f          	j	800044d0 <__printf+0x3f8>
    800046c8:	00700793          	li	a5,7
    800046cc:	00600c93          	li	s9,6
    800046d0:	c69ff06f          	j	80004338 <__printf+0x260>
    800046d4:	00300793          	li	a5,3
    800046d8:	00200c93          	li	s9,2
    800046dc:	c5dff06f          	j	80004338 <__printf+0x260>
    800046e0:	00300793          	li	a5,3
    800046e4:	00200c93          	li	s9,2
    800046e8:	de9ff06f          	j	800044d0 <__printf+0x3f8>
    800046ec:	00400793          	li	a5,4
    800046f0:	00300c93          	li	s9,3
    800046f4:	dddff06f          	j	800044d0 <__printf+0x3f8>
    800046f8:	00400793          	li	a5,4
    800046fc:	00300c93          	li	s9,3
    80004700:	c39ff06f          	j	80004338 <__printf+0x260>
    80004704:	00500793          	li	a5,5
    80004708:	00400c93          	li	s9,4
    8000470c:	c2dff06f          	j	80004338 <__printf+0x260>
    80004710:	00500793          	li	a5,5
    80004714:	00400c93          	li	s9,4
    80004718:	db9ff06f          	j	800044d0 <__printf+0x3f8>
    8000471c:	00600793          	li	a5,6
    80004720:	00500c93          	li	s9,5
    80004724:	dadff06f          	j	800044d0 <__printf+0x3f8>
    80004728:	00600793          	li	a5,6
    8000472c:	00500c93          	li	s9,5
    80004730:	c09ff06f          	j	80004338 <__printf+0x260>
    80004734:	00800793          	li	a5,8
    80004738:	00700c93          	li	s9,7
    8000473c:	bfdff06f          	j	80004338 <__printf+0x260>
    80004740:	00100793          	li	a5,1
    80004744:	d91ff06f          	j	800044d4 <__printf+0x3fc>
    80004748:	00100793          	li	a5,1
    8000474c:	bf1ff06f          	j	8000433c <__printf+0x264>
    80004750:	00900793          	li	a5,9
    80004754:	00800c93          	li	s9,8
    80004758:	be1ff06f          	j	80004338 <__printf+0x260>
    8000475c:	00002517          	auipc	a0,0x2
    80004760:	b0450513          	addi	a0,a0,-1276 # 80006260 <CONSOLE_STATUS+0x250>
    80004764:	00000097          	auipc	ra,0x0
    80004768:	918080e7          	jalr	-1768(ra) # 8000407c <panic>

000000008000476c <printfinit>:
    8000476c:	fe010113          	addi	sp,sp,-32
    80004770:	00813823          	sd	s0,16(sp)
    80004774:	00913423          	sd	s1,8(sp)
    80004778:	00113c23          	sd	ra,24(sp)
    8000477c:	02010413          	addi	s0,sp,32
    80004780:	00004497          	auipc	s1,0x4
    80004784:	eb048493          	addi	s1,s1,-336 # 80008630 <pr>
    80004788:	00048513          	mv	a0,s1
    8000478c:	00002597          	auipc	a1,0x2
    80004790:	ae458593          	addi	a1,a1,-1308 # 80006270 <CONSOLE_STATUS+0x260>
    80004794:	00000097          	auipc	ra,0x0
    80004798:	5f4080e7          	jalr	1524(ra) # 80004d88 <initlock>
    8000479c:	01813083          	ld	ra,24(sp)
    800047a0:	01013403          	ld	s0,16(sp)
    800047a4:	0004ac23          	sw	zero,24(s1)
    800047a8:	00813483          	ld	s1,8(sp)
    800047ac:	02010113          	addi	sp,sp,32
    800047b0:	00008067          	ret

00000000800047b4 <uartinit>:
    800047b4:	ff010113          	addi	sp,sp,-16
    800047b8:	00813423          	sd	s0,8(sp)
    800047bc:	01010413          	addi	s0,sp,16
    800047c0:	100007b7          	lui	a5,0x10000
    800047c4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800047c8:	f8000713          	li	a4,-128
    800047cc:	00e781a3          	sb	a4,3(a5)
    800047d0:	00300713          	li	a4,3
    800047d4:	00e78023          	sb	a4,0(a5)
    800047d8:	000780a3          	sb	zero,1(a5)
    800047dc:	00e781a3          	sb	a4,3(a5)
    800047e0:	00700693          	li	a3,7
    800047e4:	00d78123          	sb	a3,2(a5)
    800047e8:	00e780a3          	sb	a4,1(a5)
    800047ec:	00813403          	ld	s0,8(sp)
    800047f0:	01010113          	addi	sp,sp,16
    800047f4:	00008067          	ret

00000000800047f8 <uartputc>:
    800047f8:	00003797          	auipc	a5,0x3
    800047fc:	ba07a783          	lw	a5,-1120(a5) # 80007398 <panicked>
    80004800:	00078463          	beqz	a5,80004808 <uartputc+0x10>
    80004804:	0000006f          	j	80004804 <uartputc+0xc>
    80004808:	fd010113          	addi	sp,sp,-48
    8000480c:	02813023          	sd	s0,32(sp)
    80004810:	00913c23          	sd	s1,24(sp)
    80004814:	01213823          	sd	s2,16(sp)
    80004818:	01313423          	sd	s3,8(sp)
    8000481c:	02113423          	sd	ra,40(sp)
    80004820:	03010413          	addi	s0,sp,48
    80004824:	00003917          	auipc	s2,0x3
    80004828:	b7c90913          	addi	s2,s2,-1156 # 800073a0 <uart_tx_r>
    8000482c:	00093783          	ld	a5,0(s2)
    80004830:	00003497          	auipc	s1,0x3
    80004834:	b7848493          	addi	s1,s1,-1160 # 800073a8 <uart_tx_w>
    80004838:	0004b703          	ld	a4,0(s1)
    8000483c:	02078693          	addi	a3,a5,32
    80004840:	00050993          	mv	s3,a0
    80004844:	02e69c63          	bne	a3,a4,8000487c <uartputc+0x84>
    80004848:	00001097          	auipc	ra,0x1
    8000484c:	834080e7          	jalr	-1996(ra) # 8000507c <push_on>
    80004850:	00093783          	ld	a5,0(s2)
    80004854:	0004b703          	ld	a4,0(s1)
    80004858:	02078793          	addi	a5,a5,32
    8000485c:	00e79463          	bne	a5,a4,80004864 <uartputc+0x6c>
    80004860:	0000006f          	j	80004860 <uartputc+0x68>
    80004864:	00001097          	auipc	ra,0x1
    80004868:	88c080e7          	jalr	-1908(ra) # 800050f0 <pop_on>
    8000486c:	00093783          	ld	a5,0(s2)
    80004870:	0004b703          	ld	a4,0(s1)
    80004874:	02078693          	addi	a3,a5,32
    80004878:	fce688e3          	beq	a3,a4,80004848 <uartputc+0x50>
    8000487c:	01f77693          	andi	a3,a4,31
    80004880:	00004597          	auipc	a1,0x4
    80004884:	dd058593          	addi	a1,a1,-560 # 80008650 <uart_tx_buf>
    80004888:	00d586b3          	add	a3,a1,a3
    8000488c:	00170713          	addi	a4,a4,1
    80004890:	01368023          	sb	s3,0(a3)
    80004894:	00e4b023          	sd	a4,0(s1)
    80004898:	10000637          	lui	a2,0x10000
    8000489c:	02f71063          	bne	a4,a5,800048bc <uartputc+0xc4>
    800048a0:	0340006f          	j	800048d4 <uartputc+0xdc>
    800048a4:	00074703          	lbu	a4,0(a4)
    800048a8:	00f93023          	sd	a5,0(s2)
    800048ac:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800048b0:	00093783          	ld	a5,0(s2)
    800048b4:	0004b703          	ld	a4,0(s1)
    800048b8:	00f70e63          	beq	a4,a5,800048d4 <uartputc+0xdc>
    800048bc:	00564683          	lbu	a3,5(a2)
    800048c0:	01f7f713          	andi	a4,a5,31
    800048c4:	00e58733          	add	a4,a1,a4
    800048c8:	0206f693          	andi	a3,a3,32
    800048cc:	00178793          	addi	a5,a5,1
    800048d0:	fc069ae3          	bnez	a3,800048a4 <uartputc+0xac>
    800048d4:	02813083          	ld	ra,40(sp)
    800048d8:	02013403          	ld	s0,32(sp)
    800048dc:	01813483          	ld	s1,24(sp)
    800048e0:	01013903          	ld	s2,16(sp)
    800048e4:	00813983          	ld	s3,8(sp)
    800048e8:	03010113          	addi	sp,sp,48
    800048ec:	00008067          	ret

00000000800048f0 <uartputc_sync>:
    800048f0:	ff010113          	addi	sp,sp,-16
    800048f4:	00813423          	sd	s0,8(sp)
    800048f8:	01010413          	addi	s0,sp,16
    800048fc:	00003717          	auipc	a4,0x3
    80004900:	a9c72703          	lw	a4,-1380(a4) # 80007398 <panicked>
    80004904:	02071663          	bnez	a4,80004930 <uartputc_sync+0x40>
    80004908:	00050793          	mv	a5,a0
    8000490c:	100006b7          	lui	a3,0x10000
    80004910:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80004914:	02077713          	andi	a4,a4,32
    80004918:	fe070ce3          	beqz	a4,80004910 <uartputc_sync+0x20>
    8000491c:	0ff7f793          	andi	a5,a5,255
    80004920:	00f68023          	sb	a5,0(a3)
    80004924:	00813403          	ld	s0,8(sp)
    80004928:	01010113          	addi	sp,sp,16
    8000492c:	00008067          	ret
    80004930:	0000006f          	j	80004930 <uartputc_sync+0x40>

0000000080004934 <uartstart>:
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00813423          	sd	s0,8(sp)
    8000493c:	01010413          	addi	s0,sp,16
    80004940:	00003617          	auipc	a2,0x3
    80004944:	a6060613          	addi	a2,a2,-1440 # 800073a0 <uart_tx_r>
    80004948:	00003517          	auipc	a0,0x3
    8000494c:	a6050513          	addi	a0,a0,-1440 # 800073a8 <uart_tx_w>
    80004950:	00063783          	ld	a5,0(a2)
    80004954:	00053703          	ld	a4,0(a0)
    80004958:	04f70263          	beq	a4,a5,8000499c <uartstart+0x68>
    8000495c:	100005b7          	lui	a1,0x10000
    80004960:	00004817          	auipc	a6,0x4
    80004964:	cf080813          	addi	a6,a6,-784 # 80008650 <uart_tx_buf>
    80004968:	01c0006f          	j	80004984 <uartstart+0x50>
    8000496c:	0006c703          	lbu	a4,0(a3)
    80004970:	00f63023          	sd	a5,0(a2)
    80004974:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004978:	00063783          	ld	a5,0(a2)
    8000497c:	00053703          	ld	a4,0(a0)
    80004980:	00f70e63          	beq	a4,a5,8000499c <uartstart+0x68>
    80004984:	01f7f713          	andi	a4,a5,31
    80004988:	00e806b3          	add	a3,a6,a4
    8000498c:	0055c703          	lbu	a4,5(a1)
    80004990:	00178793          	addi	a5,a5,1
    80004994:	02077713          	andi	a4,a4,32
    80004998:	fc071ae3          	bnez	a4,8000496c <uartstart+0x38>
    8000499c:	00813403          	ld	s0,8(sp)
    800049a0:	01010113          	addi	sp,sp,16
    800049a4:	00008067          	ret

00000000800049a8 <uartgetc>:
    800049a8:	ff010113          	addi	sp,sp,-16
    800049ac:	00813423          	sd	s0,8(sp)
    800049b0:	01010413          	addi	s0,sp,16
    800049b4:	10000737          	lui	a4,0x10000
    800049b8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800049bc:	0017f793          	andi	a5,a5,1
    800049c0:	00078c63          	beqz	a5,800049d8 <uartgetc+0x30>
    800049c4:	00074503          	lbu	a0,0(a4)
    800049c8:	0ff57513          	andi	a0,a0,255
    800049cc:	00813403          	ld	s0,8(sp)
    800049d0:	01010113          	addi	sp,sp,16
    800049d4:	00008067          	ret
    800049d8:	fff00513          	li	a0,-1
    800049dc:	ff1ff06f          	j	800049cc <uartgetc+0x24>

00000000800049e0 <uartintr>:
    800049e0:	100007b7          	lui	a5,0x10000
    800049e4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800049e8:	0017f793          	andi	a5,a5,1
    800049ec:	0a078463          	beqz	a5,80004a94 <uartintr+0xb4>
    800049f0:	fe010113          	addi	sp,sp,-32
    800049f4:	00813823          	sd	s0,16(sp)
    800049f8:	00913423          	sd	s1,8(sp)
    800049fc:	00113c23          	sd	ra,24(sp)
    80004a00:	02010413          	addi	s0,sp,32
    80004a04:	100004b7          	lui	s1,0x10000
    80004a08:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80004a0c:	0ff57513          	andi	a0,a0,255
    80004a10:	fffff097          	auipc	ra,0xfffff
    80004a14:	534080e7          	jalr	1332(ra) # 80003f44 <consoleintr>
    80004a18:	0054c783          	lbu	a5,5(s1)
    80004a1c:	0017f793          	andi	a5,a5,1
    80004a20:	fe0794e3          	bnez	a5,80004a08 <uartintr+0x28>
    80004a24:	00003617          	auipc	a2,0x3
    80004a28:	97c60613          	addi	a2,a2,-1668 # 800073a0 <uart_tx_r>
    80004a2c:	00003517          	auipc	a0,0x3
    80004a30:	97c50513          	addi	a0,a0,-1668 # 800073a8 <uart_tx_w>
    80004a34:	00063783          	ld	a5,0(a2)
    80004a38:	00053703          	ld	a4,0(a0)
    80004a3c:	04f70263          	beq	a4,a5,80004a80 <uartintr+0xa0>
    80004a40:	100005b7          	lui	a1,0x10000
    80004a44:	00004817          	auipc	a6,0x4
    80004a48:	c0c80813          	addi	a6,a6,-1012 # 80008650 <uart_tx_buf>
    80004a4c:	01c0006f          	j	80004a68 <uartintr+0x88>
    80004a50:	0006c703          	lbu	a4,0(a3)
    80004a54:	00f63023          	sd	a5,0(a2)
    80004a58:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004a5c:	00063783          	ld	a5,0(a2)
    80004a60:	00053703          	ld	a4,0(a0)
    80004a64:	00f70e63          	beq	a4,a5,80004a80 <uartintr+0xa0>
    80004a68:	01f7f713          	andi	a4,a5,31
    80004a6c:	00e806b3          	add	a3,a6,a4
    80004a70:	0055c703          	lbu	a4,5(a1)
    80004a74:	00178793          	addi	a5,a5,1
    80004a78:	02077713          	andi	a4,a4,32
    80004a7c:	fc071ae3          	bnez	a4,80004a50 <uartintr+0x70>
    80004a80:	01813083          	ld	ra,24(sp)
    80004a84:	01013403          	ld	s0,16(sp)
    80004a88:	00813483          	ld	s1,8(sp)
    80004a8c:	02010113          	addi	sp,sp,32
    80004a90:	00008067          	ret
    80004a94:	00003617          	auipc	a2,0x3
    80004a98:	90c60613          	addi	a2,a2,-1780 # 800073a0 <uart_tx_r>
    80004a9c:	00003517          	auipc	a0,0x3
    80004aa0:	90c50513          	addi	a0,a0,-1780 # 800073a8 <uart_tx_w>
    80004aa4:	00063783          	ld	a5,0(a2)
    80004aa8:	00053703          	ld	a4,0(a0)
    80004aac:	04f70263          	beq	a4,a5,80004af0 <uartintr+0x110>
    80004ab0:	100005b7          	lui	a1,0x10000
    80004ab4:	00004817          	auipc	a6,0x4
    80004ab8:	b9c80813          	addi	a6,a6,-1124 # 80008650 <uart_tx_buf>
    80004abc:	01c0006f          	j	80004ad8 <uartintr+0xf8>
    80004ac0:	0006c703          	lbu	a4,0(a3)
    80004ac4:	00f63023          	sd	a5,0(a2)
    80004ac8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80004acc:	00063783          	ld	a5,0(a2)
    80004ad0:	00053703          	ld	a4,0(a0)
    80004ad4:	02f70063          	beq	a4,a5,80004af4 <uartintr+0x114>
    80004ad8:	01f7f713          	andi	a4,a5,31
    80004adc:	00e806b3          	add	a3,a6,a4
    80004ae0:	0055c703          	lbu	a4,5(a1)
    80004ae4:	00178793          	addi	a5,a5,1
    80004ae8:	02077713          	andi	a4,a4,32
    80004aec:	fc071ae3          	bnez	a4,80004ac0 <uartintr+0xe0>
    80004af0:	00008067          	ret
    80004af4:	00008067          	ret

0000000080004af8 <kinit>:
    80004af8:	fc010113          	addi	sp,sp,-64
    80004afc:	02913423          	sd	s1,40(sp)
    80004b00:	fffff7b7          	lui	a5,0xfffff
    80004b04:	00005497          	auipc	s1,0x5
    80004b08:	b6b48493          	addi	s1,s1,-1173 # 8000966f <end+0xfff>
    80004b0c:	02813823          	sd	s0,48(sp)
    80004b10:	01313c23          	sd	s3,24(sp)
    80004b14:	00f4f4b3          	and	s1,s1,a5
    80004b18:	02113c23          	sd	ra,56(sp)
    80004b1c:	03213023          	sd	s2,32(sp)
    80004b20:	01413823          	sd	s4,16(sp)
    80004b24:	01513423          	sd	s5,8(sp)
    80004b28:	04010413          	addi	s0,sp,64
    80004b2c:	000017b7          	lui	a5,0x1
    80004b30:	01100993          	li	s3,17
    80004b34:	00f487b3          	add	a5,s1,a5
    80004b38:	01b99993          	slli	s3,s3,0x1b
    80004b3c:	06f9e063          	bltu	s3,a5,80004b9c <kinit+0xa4>
    80004b40:	00004a97          	auipc	s5,0x4
    80004b44:	b30a8a93          	addi	s5,s5,-1232 # 80008670 <end>
    80004b48:	0754ec63          	bltu	s1,s5,80004bc0 <kinit+0xc8>
    80004b4c:	0734fa63          	bgeu	s1,s3,80004bc0 <kinit+0xc8>
    80004b50:	00088a37          	lui	s4,0x88
    80004b54:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80004b58:	00003917          	auipc	s2,0x3
    80004b5c:	85890913          	addi	s2,s2,-1960 # 800073b0 <kmem>
    80004b60:	00ca1a13          	slli	s4,s4,0xc
    80004b64:	0140006f          	j	80004b78 <kinit+0x80>
    80004b68:	000017b7          	lui	a5,0x1
    80004b6c:	00f484b3          	add	s1,s1,a5
    80004b70:	0554e863          	bltu	s1,s5,80004bc0 <kinit+0xc8>
    80004b74:	0534f663          	bgeu	s1,s3,80004bc0 <kinit+0xc8>
    80004b78:	00001637          	lui	a2,0x1
    80004b7c:	00100593          	li	a1,1
    80004b80:	00048513          	mv	a0,s1
    80004b84:	00000097          	auipc	ra,0x0
    80004b88:	5e4080e7          	jalr	1508(ra) # 80005168 <__memset>
    80004b8c:	00093783          	ld	a5,0(s2)
    80004b90:	00f4b023          	sd	a5,0(s1)
    80004b94:	00993023          	sd	s1,0(s2)
    80004b98:	fd4498e3          	bne	s1,s4,80004b68 <kinit+0x70>
    80004b9c:	03813083          	ld	ra,56(sp)
    80004ba0:	03013403          	ld	s0,48(sp)
    80004ba4:	02813483          	ld	s1,40(sp)
    80004ba8:	02013903          	ld	s2,32(sp)
    80004bac:	01813983          	ld	s3,24(sp)
    80004bb0:	01013a03          	ld	s4,16(sp)
    80004bb4:	00813a83          	ld	s5,8(sp)
    80004bb8:	04010113          	addi	sp,sp,64
    80004bbc:	00008067          	ret
    80004bc0:	00001517          	auipc	a0,0x1
    80004bc4:	6d050513          	addi	a0,a0,1744 # 80006290 <digits+0x18>
    80004bc8:	fffff097          	auipc	ra,0xfffff
    80004bcc:	4b4080e7          	jalr	1204(ra) # 8000407c <panic>

0000000080004bd0 <freerange>:
    80004bd0:	fc010113          	addi	sp,sp,-64
    80004bd4:	000017b7          	lui	a5,0x1
    80004bd8:	02913423          	sd	s1,40(sp)
    80004bdc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80004be0:	009504b3          	add	s1,a0,s1
    80004be4:	fffff537          	lui	a0,0xfffff
    80004be8:	02813823          	sd	s0,48(sp)
    80004bec:	02113c23          	sd	ra,56(sp)
    80004bf0:	03213023          	sd	s2,32(sp)
    80004bf4:	01313c23          	sd	s3,24(sp)
    80004bf8:	01413823          	sd	s4,16(sp)
    80004bfc:	01513423          	sd	s5,8(sp)
    80004c00:	01613023          	sd	s6,0(sp)
    80004c04:	04010413          	addi	s0,sp,64
    80004c08:	00a4f4b3          	and	s1,s1,a0
    80004c0c:	00f487b3          	add	a5,s1,a5
    80004c10:	06f5e463          	bltu	a1,a5,80004c78 <freerange+0xa8>
    80004c14:	00004a97          	auipc	s5,0x4
    80004c18:	a5ca8a93          	addi	s5,s5,-1444 # 80008670 <end>
    80004c1c:	0954e263          	bltu	s1,s5,80004ca0 <freerange+0xd0>
    80004c20:	01100993          	li	s3,17
    80004c24:	01b99993          	slli	s3,s3,0x1b
    80004c28:	0734fc63          	bgeu	s1,s3,80004ca0 <freerange+0xd0>
    80004c2c:	00058a13          	mv	s4,a1
    80004c30:	00002917          	auipc	s2,0x2
    80004c34:	78090913          	addi	s2,s2,1920 # 800073b0 <kmem>
    80004c38:	00002b37          	lui	s6,0x2
    80004c3c:	0140006f          	j	80004c50 <freerange+0x80>
    80004c40:	000017b7          	lui	a5,0x1
    80004c44:	00f484b3          	add	s1,s1,a5
    80004c48:	0554ec63          	bltu	s1,s5,80004ca0 <freerange+0xd0>
    80004c4c:	0534fa63          	bgeu	s1,s3,80004ca0 <freerange+0xd0>
    80004c50:	00001637          	lui	a2,0x1
    80004c54:	00100593          	li	a1,1
    80004c58:	00048513          	mv	a0,s1
    80004c5c:	00000097          	auipc	ra,0x0
    80004c60:	50c080e7          	jalr	1292(ra) # 80005168 <__memset>
    80004c64:	00093703          	ld	a4,0(s2)
    80004c68:	016487b3          	add	a5,s1,s6
    80004c6c:	00e4b023          	sd	a4,0(s1)
    80004c70:	00993023          	sd	s1,0(s2)
    80004c74:	fcfa76e3          	bgeu	s4,a5,80004c40 <freerange+0x70>
    80004c78:	03813083          	ld	ra,56(sp)
    80004c7c:	03013403          	ld	s0,48(sp)
    80004c80:	02813483          	ld	s1,40(sp)
    80004c84:	02013903          	ld	s2,32(sp)
    80004c88:	01813983          	ld	s3,24(sp)
    80004c8c:	01013a03          	ld	s4,16(sp)
    80004c90:	00813a83          	ld	s5,8(sp)
    80004c94:	00013b03          	ld	s6,0(sp)
    80004c98:	04010113          	addi	sp,sp,64
    80004c9c:	00008067          	ret
    80004ca0:	00001517          	auipc	a0,0x1
    80004ca4:	5f050513          	addi	a0,a0,1520 # 80006290 <digits+0x18>
    80004ca8:	fffff097          	auipc	ra,0xfffff
    80004cac:	3d4080e7          	jalr	980(ra) # 8000407c <panic>

0000000080004cb0 <kfree>:
    80004cb0:	fe010113          	addi	sp,sp,-32
    80004cb4:	00813823          	sd	s0,16(sp)
    80004cb8:	00113c23          	sd	ra,24(sp)
    80004cbc:	00913423          	sd	s1,8(sp)
    80004cc0:	02010413          	addi	s0,sp,32
    80004cc4:	03451793          	slli	a5,a0,0x34
    80004cc8:	04079c63          	bnez	a5,80004d20 <kfree+0x70>
    80004ccc:	00004797          	auipc	a5,0x4
    80004cd0:	9a478793          	addi	a5,a5,-1628 # 80008670 <end>
    80004cd4:	00050493          	mv	s1,a0
    80004cd8:	04f56463          	bltu	a0,a5,80004d20 <kfree+0x70>
    80004cdc:	01100793          	li	a5,17
    80004ce0:	01b79793          	slli	a5,a5,0x1b
    80004ce4:	02f57e63          	bgeu	a0,a5,80004d20 <kfree+0x70>
    80004ce8:	00001637          	lui	a2,0x1
    80004cec:	00100593          	li	a1,1
    80004cf0:	00000097          	auipc	ra,0x0
    80004cf4:	478080e7          	jalr	1144(ra) # 80005168 <__memset>
    80004cf8:	00002797          	auipc	a5,0x2
    80004cfc:	6b878793          	addi	a5,a5,1720 # 800073b0 <kmem>
    80004d00:	0007b703          	ld	a4,0(a5)
    80004d04:	01813083          	ld	ra,24(sp)
    80004d08:	01013403          	ld	s0,16(sp)
    80004d0c:	00e4b023          	sd	a4,0(s1)
    80004d10:	0097b023          	sd	s1,0(a5)
    80004d14:	00813483          	ld	s1,8(sp)
    80004d18:	02010113          	addi	sp,sp,32
    80004d1c:	00008067          	ret
    80004d20:	00001517          	auipc	a0,0x1
    80004d24:	57050513          	addi	a0,a0,1392 # 80006290 <digits+0x18>
    80004d28:	fffff097          	auipc	ra,0xfffff
    80004d2c:	354080e7          	jalr	852(ra) # 8000407c <panic>

0000000080004d30 <kalloc>:
    80004d30:	fe010113          	addi	sp,sp,-32
    80004d34:	00813823          	sd	s0,16(sp)
    80004d38:	00913423          	sd	s1,8(sp)
    80004d3c:	00113c23          	sd	ra,24(sp)
    80004d40:	02010413          	addi	s0,sp,32
    80004d44:	00002797          	auipc	a5,0x2
    80004d48:	66c78793          	addi	a5,a5,1644 # 800073b0 <kmem>
    80004d4c:	0007b483          	ld	s1,0(a5)
    80004d50:	02048063          	beqz	s1,80004d70 <kalloc+0x40>
    80004d54:	0004b703          	ld	a4,0(s1)
    80004d58:	00001637          	lui	a2,0x1
    80004d5c:	00500593          	li	a1,5
    80004d60:	00048513          	mv	a0,s1
    80004d64:	00e7b023          	sd	a4,0(a5)
    80004d68:	00000097          	auipc	ra,0x0
    80004d6c:	400080e7          	jalr	1024(ra) # 80005168 <__memset>
    80004d70:	01813083          	ld	ra,24(sp)
    80004d74:	01013403          	ld	s0,16(sp)
    80004d78:	00048513          	mv	a0,s1
    80004d7c:	00813483          	ld	s1,8(sp)
    80004d80:	02010113          	addi	sp,sp,32
    80004d84:	00008067          	ret

0000000080004d88 <initlock>:
    80004d88:	ff010113          	addi	sp,sp,-16
    80004d8c:	00813423          	sd	s0,8(sp)
    80004d90:	01010413          	addi	s0,sp,16
    80004d94:	00813403          	ld	s0,8(sp)
    80004d98:	00b53423          	sd	a1,8(a0)
    80004d9c:	00052023          	sw	zero,0(a0)
    80004da0:	00053823          	sd	zero,16(a0)
    80004da4:	01010113          	addi	sp,sp,16
    80004da8:	00008067          	ret

0000000080004dac <acquire>:
    80004dac:	fe010113          	addi	sp,sp,-32
    80004db0:	00813823          	sd	s0,16(sp)
    80004db4:	00913423          	sd	s1,8(sp)
    80004db8:	00113c23          	sd	ra,24(sp)
    80004dbc:	01213023          	sd	s2,0(sp)
    80004dc0:	02010413          	addi	s0,sp,32
    80004dc4:	00050493          	mv	s1,a0
    80004dc8:	10002973          	csrr	s2,sstatus
    80004dcc:	100027f3          	csrr	a5,sstatus
    80004dd0:	ffd7f793          	andi	a5,a5,-3
    80004dd4:	10079073          	csrw	sstatus,a5
    80004dd8:	fffff097          	auipc	ra,0xfffff
    80004ddc:	8e4080e7          	jalr	-1820(ra) # 800036bc <mycpu>
    80004de0:	07852783          	lw	a5,120(a0)
    80004de4:	06078e63          	beqz	a5,80004e60 <acquire+0xb4>
    80004de8:	fffff097          	auipc	ra,0xfffff
    80004dec:	8d4080e7          	jalr	-1836(ra) # 800036bc <mycpu>
    80004df0:	07852783          	lw	a5,120(a0)
    80004df4:	0004a703          	lw	a4,0(s1)
    80004df8:	0017879b          	addiw	a5,a5,1
    80004dfc:	06f52c23          	sw	a5,120(a0)
    80004e00:	04071063          	bnez	a4,80004e40 <acquire+0x94>
    80004e04:	00100713          	li	a4,1
    80004e08:	00070793          	mv	a5,a4
    80004e0c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80004e10:	0007879b          	sext.w	a5,a5
    80004e14:	fe079ae3          	bnez	a5,80004e08 <acquire+0x5c>
    80004e18:	0ff0000f          	fence
    80004e1c:	fffff097          	auipc	ra,0xfffff
    80004e20:	8a0080e7          	jalr	-1888(ra) # 800036bc <mycpu>
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00a4b823          	sd	a0,16(s1)
    80004e30:	00013903          	ld	s2,0(sp)
    80004e34:	00813483          	ld	s1,8(sp)
    80004e38:	02010113          	addi	sp,sp,32
    80004e3c:	00008067          	ret
    80004e40:	0104b903          	ld	s2,16(s1)
    80004e44:	fffff097          	auipc	ra,0xfffff
    80004e48:	878080e7          	jalr	-1928(ra) # 800036bc <mycpu>
    80004e4c:	faa91ce3          	bne	s2,a0,80004e04 <acquire+0x58>
    80004e50:	00001517          	auipc	a0,0x1
    80004e54:	44850513          	addi	a0,a0,1096 # 80006298 <digits+0x20>
    80004e58:	fffff097          	auipc	ra,0xfffff
    80004e5c:	224080e7          	jalr	548(ra) # 8000407c <panic>
    80004e60:	00195913          	srli	s2,s2,0x1
    80004e64:	fffff097          	auipc	ra,0xfffff
    80004e68:	858080e7          	jalr	-1960(ra) # 800036bc <mycpu>
    80004e6c:	00197913          	andi	s2,s2,1
    80004e70:	07252e23          	sw	s2,124(a0)
    80004e74:	f75ff06f          	j	80004de8 <acquire+0x3c>

0000000080004e78 <release>:
    80004e78:	fe010113          	addi	sp,sp,-32
    80004e7c:	00813823          	sd	s0,16(sp)
    80004e80:	00113c23          	sd	ra,24(sp)
    80004e84:	00913423          	sd	s1,8(sp)
    80004e88:	01213023          	sd	s2,0(sp)
    80004e8c:	02010413          	addi	s0,sp,32
    80004e90:	00052783          	lw	a5,0(a0)
    80004e94:	00079a63          	bnez	a5,80004ea8 <release+0x30>
    80004e98:	00001517          	auipc	a0,0x1
    80004e9c:	40850513          	addi	a0,a0,1032 # 800062a0 <digits+0x28>
    80004ea0:	fffff097          	auipc	ra,0xfffff
    80004ea4:	1dc080e7          	jalr	476(ra) # 8000407c <panic>
    80004ea8:	01053903          	ld	s2,16(a0)
    80004eac:	00050493          	mv	s1,a0
    80004eb0:	fffff097          	auipc	ra,0xfffff
    80004eb4:	80c080e7          	jalr	-2036(ra) # 800036bc <mycpu>
    80004eb8:	fea910e3          	bne	s2,a0,80004e98 <release+0x20>
    80004ebc:	0004b823          	sd	zero,16(s1)
    80004ec0:	0ff0000f          	fence
    80004ec4:	0f50000f          	fence	iorw,ow
    80004ec8:	0804a02f          	amoswap.w	zero,zero,(s1)
    80004ecc:	ffffe097          	auipc	ra,0xffffe
    80004ed0:	7f0080e7          	jalr	2032(ra) # 800036bc <mycpu>
    80004ed4:	100027f3          	csrr	a5,sstatus
    80004ed8:	0027f793          	andi	a5,a5,2
    80004edc:	04079a63          	bnez	a5,80004f30 <release+0xb8>
    80004ee0:	07852783          	lw	a5,120(a0)
    80004ee4:	02f05e63          	blez	a5,80004f20 <release+0xa8>
    80004ee8:	fff7871b          	addiw	a4,a5,-1
    80004eec:	06e52c23          	sw	a4,120(a0)
    80004ef0:	00071c63          	bnez	a4,80004f08 <release+0x90>
    80004ef4:	07c52783          	lw	a5,124(a0)
    80004ef8:	00078863          	beqz	a5,80004f08 <release+0x90>
    80004efc:	100027f3          	csrr	a5,sstatus
    80004f00:	0027e793          	ori	a5,a5,2
    80004f04:	10079073          	csrw	sstatus,a5
    80004f08:	01813083          	ld	ra,24(sp)
    80004f0c:	01013403          	ld	s0,16(sp)
    80004f10:	00813483          	ld	s1,8(sp)
    80004f14:	00013903          	ld	s2,0(sp)
    80004f18:	02010113          	addi	sp,sp,32
    80004f1c:	00008067          	ret
    80004f20:	00001517          	auipc	a0,0x1
    80004f24:	3a050513          	addi	a0,a0,928 # 800062c0 <digits+0x48>
    80004f28:	fffff097          	auipc	ra,0xfffff
    80004f2c:	154080e7          	jalr	340(ra) # 8000407c <panic>
    80004f30:	00001517          	auipc	a0,0x1
    80004f34:	37850513          	addi	a0,a0,888 # 800062a8 <digits+0x30>
    80004f38:	fffff097          	auipc	ra,0xfffff
    80004f3c:	144080e7          	jalr	324(ra) # 8000407c <panic>

0000000080004f40 <holding>:
    80004f40:	00052783          	lw	a5,0(a0)
    80004f44:	00079663          	bnez	a5,80004f50 <holding+0x10>
    80004f48:	00000513          	li	a0,0
    80004f4c:	00008067          	ret
    80004f50:	fe010113          	addi	sp,sp,-32
    80004f54:	00813823          	sd	s0,16(sp)
    80004f58:	00913423          	sd	s1,8(sp)
    80004f5c:	00113c23          	sd	ra,24(sp)
    80004f60:	02010413          	addi	s0,sp,32
    80004f64:	01053483          	ld	s1,16(a0)
    80004f68:	ffffe097          	auipc	ra,0xffffe
    80004f6c:	754080e7          	jalr	1876(ra) # 800036bc <mycpu>
    80004f70:	01813083          	ld	ra,24(sp)
    80004f74:	01013403          	ld	s0,16(sp)
    80004f78:	40a48533          	sub	a0,s1,a0
    80004f7c:	00153513          	seqz	a0,a0
    80004f80:	00813483          	ld	s1,8(sp)
    80004f84:	02010113          	addi	sp,sp,32
    80004f88:	00008067          	ret

0000000080004f8c <push_off>:
    80004f8c:	fe010113          	addi	sp,sp,-32
    80004f90:	00813823          	sd	s0,16(sp)
    80004f94:	00113c23          	sd	ra,24(sp)
    80004f98:	00913423          	sd	s1,8(sp)
    80004f9c:	02010413          	addi	s0,sp,32
    80004fa0:	100024f3          	csrr	s1,sstatus
    80004fa4:	100027f3          	csrr	a5,sstatus
    80004fa8:	ffd7f793          	andi	a5,a5,-3
    80004fac:	10079073          	csrw	sstatus,a5
    80004fb0:	ffffe097          	auipc	ra,0xffffe
    80004fb4:	70c080e7          	jalr	1804(ra) # 800036bc <mycpu>
    80004fb8:	07852783          	lw	a5,120(a0)
    80004fbc:	02078663          	beqz	a5,80004fe8 <push_off+0x5c>
    80004fc0:	ffffe097          	auipc	ra,0xffffe
    80004fc4:	6fc080e7          	jalr	1788(ra) # 800036bc <mycpu>
    80004fc8:	07852783          	lw	a5,120(a0)
    80004fcc:	01813083          	ld	ra,24(sp)
    80004fd0:	01013403          	ld	s0,16(sp)
    80004fd4:	0017879b          	addiw	a5,a5,1
    80004fd8:	06f52c23          	sw	a5,120(a0)
    80004fdc:	00813483          	ld	s1,8(sp)
    80004fe0:	02010113          	addi	sp,sp,32
    80004fe4:	00008067          	ret
    80004fe8:	0014d493          	srli	s1,s1,0x1
    80004fec:	ffffe097          	auipc	ra,0xffffe
    80004ff0:	6d0080e7          	jalr	1744(ra) # 800036bc <mycpu>
    80004ff4:	0014f493          	andi	s1,s1,1
    80004ff8:	06952e23          	sw	s1,124(a0)
    80004ffc:	fc5ff06f          	j	80004fc0 <push_off+0x34>

0000000080005000 <pop_off>:
    80005000:	ff010113          	addi	sp,sp,-16
    80005004:	00813023          	sd	s0,0(sp)
    80005008:	00113423          	sd	ra,8(sp)
    8000500c:	01010413          	addi	s0,sp,16
    80005010:	ffffe097          	auipc	ra,0xffffe
    80005014:	6ac080e7          	jalr	1708(ra) # 800036bc <mycpu>
    80005018:	100027f3          	csrr	a5,sstatus
    8000501c:	0027f793          	andi	a5,a5,2
    80005020:	04079663          	bnez	a5,8000506c <pop_off+0x6c>
    80005024:	07852783          	lw	a5,120(a0)
    80005028:	02f05a63          	blez	a5,8000505c <pop_off+0x5c>
    8000502c:	fff7871b          	addiw	a4,a5,-1
    80005030:	06e52c23          	sw	a4,120(a0)
    80005034:	00071c63          	bnez	a4,8000504c <pop_off+0x4c>
    80005038:	07c52783          	lw	a5,124(a0)
    8000503c:	00078863          	beqz	a5,8000504c <pop_off+0x4c>
    80005040:	100027f3          	csrr	a5,sstatus
    80005044:	0027e793          	ori	a5,a5,2
    80005048:	10079073          	csrw	sstatus,a5
    8000504c:	00813083          	ld	ra,8(sp)
    80005050:	00013403          	ld	s0,0(sp)
    80005054:	01010113          	addi	sp,sp,16
    80005058:	00008067          	ret
    8000505c:	00001517          	auipc	a0,0x1
    80005060:	26450513          	addi	a0,a0,612 # 800062c0 <digits+0x48>
    80005064:	fffff097          	auipc	ra,0xfffff
    80005068:	018080e7          	jalr	24(ra) # 8000407c <panic>
    8000506c:	00001517          	auipc	a0,0x1
    80005070:	23c50513          	addi	a0,a0,572 # 800062a8 <digits+0x30>
    80005074:	fffff097          	auipc	ra,0xfffff
    80005078:	008080e7          	jalr	8(ra) # 8000407c <panic>

000000008000507c <push_on>:
    8000507c:	fe010113          	addi	sp,sp,-32
    80005080:	00813823          	sd	s0,16(sp)
    80005084:	00113c23          	sd	ra,24(sp)
    80005088:	00913423          	sd	s1,8(sp)
    8000508c:	02010413          	addi	s0,sp,32
    80005090:	100024f3          	csrr	s1,sstatus
    80005094:	100027f3          	csrr	a5,sstatus
    80005098:	0027e793          	ori	a5,a5,2
    8000509c:	10079073          	csrw	sstatus,a5
    800050a0:	ffffe097          	auipc	ra,0xffffe
    800050a4:	61c080e7          	jalr	1564(ra) # 800036bc <mycpu>
    800050a8:	07852783          	lw	a5,120(a0)
    800050ac:	02078663          	beqz	a5,800050d8 <push_on+0x5c>
    800050b0:	ffffe097          	auipc	ra,0xffffe
    800050b4:	60c080e7          	jalr	1548(ra) # 800036bc <mycpu>
    800050b8:	07852783          	lw	a5,120(a0)
    800050bc:	01813083          	ld	ra,24(sp)
    800050c0:	01013403          	ld	s0,16(sp)
    800050c4:	0017879b          	addiw	a5,a5,1
    800050c8:	06f52c23          	sw	a5,120(a0)
    800050cc:	00813483          	ld	s1,8(sp)
    800050d0:	02010113          	addi	sp,sp,32
    800050d4:	00008067          	ret
    800050d8:	0014d493          	srli	s1,s1,0x1
    800050dc:	ffffe097          	auipc	ra,0xffffe
    800050e0:	5e0080e7          	jalr	1504(ra) # 800036bc <mycpu>
    800050e4:	0014f493          	andi	s1,s1,1
    800050e8:	06952e23          	sw	s1,124(a0)
    800050ec:	fc5ff06f          	j	800050b0 <push_on+0x34>

00000000800050f0 <pop_on>:
    800050f0:	ff010113          	addi	sp,sp,-16
    800050f4:	00813023          	sd	s0,0(sp)
    800050f8:	00113423          	sd	ra,8(sp)
    800050fc:	01010413          	addi	s0,sp,16
    80005100:	ffffe097          	auipc	ra,0xffffe
    80005104:	5bc080e7          	jalr	1468(ra) # 800036bc <mycpu>
    80005108:	100027f3          	csrr	a5,sstatus
    8000510c:	0027f793          	andi	a5,a5,2
    80005110:	04078463          	beqz	a5,80005158 <pop_on+0x68>
    80005114:	07852783          	lw	a5,120(a0)
    80005118:	02f05863          	blez	a5,80005148 <pop_on+0x58>
    8000511c:	fff7879b          	addiw	a5,a5,-1
    80005120:	06f52c23          	sw	a5,120(a0)
    80005124:	07853783          	ld	a5,120(a0)
    80005128:	00079863          	bnez	a5,80005138 <pop_on+0x48>
    8000512c:	100027f3          	csrr	a5,sstatus
    80005130:	ffd7f793          	andi	a5,a5,-3
    80005134:	10079073          	csrw	sstatus,a5
    80005138:	00813083          	ld	ra,8(sp)
    8000513c:	00013403          	ld	s0,0(sp)
    80005140:	01010113          	addi	sp,sp,16
    80005144:	00008067          	ret
    80005148:	00001517          	auipc	a0,0x1
    8000514c:	1a050513          	addi	a0,a0,416 # 800062e8 <digits+0x70>
    80005150:	fffff097          	auipc	ra,0xfffff
    80005154:	f2c080e7          	jalr	-212(ra) # 8000407c <panic>
    80005158:	00001517          	auipc	a0,0x1
    8000515c:	17050513          	addi	a0,a0,368 # 800062c8 <digits+0x50>
    80005160:	fffff097          	auipc	ra,0xfffff
    80005164:	f1c080e7          	jalr	-228(ra) # 8000407c <panic>

0000000080005168 <__memset>:
    80005168:	ff010113          	addi	sp,sp,-16
    8000516c:	00813423          	sd	s0,8(sp)
    80005170:	01010413          	addi	s0,sp,16
    80005174:	1a060e63          	beqz	a2,80005330 <__memset+0x1c8>
    80005178:	40a007b3          	neg	a5,a0
    8000517c:	0077f793          	andi	a5,a5,7
    80005180:	00778693          	addi	a3,a5,7
    80005184:	00b00813          	li	a6,11
    80005188:	0ff5f593          	andi	a1,a1,255
    8000518c:	fff6071b          	addiw	a4,a2,-1
    80005190:	1b06e663          	bltu	a3,a6,8000533c <__memset+0x1d4>
    80005194:	1cd76463          	bltu	a4,a3,8000535c <__memset+0x1f4>
    80005198:	1a078e63          	beqz	a5,80005354 <__memset+0x1ec>
    8000519c:	00b50023          	sb	a1,0(a0)
    800051a0:	00100713          	li	a4,1
    800051a4:	1ae78463          	beq	a5,a4,8000534c <__memset+0x1e4>
    800051a8:	00b500a3          	sb	a1,1(a0)
    800051ac:	00200713          	li	a4,2
    800051b0:	1ae78a63          	beq	a5,a4,80005364 <__memset+0x1fc>
    800051b4:	00b50123          	sb	a1,2(a0)
    800051b8:	00300713          	li	a4,3
    800051bc:	18e78463          	beq	a5,a4,80005344 <__memset+0x1dc>
    800051c0:	00b501a3          	sb	a1,3(a0)
    800051c4:	00400713          	li	a4,4
    800051c8:	1ae78263          	beq	a5,a4,8000536c <__memset+0x204>
    800051cc:	00b50223          	sb	a1,4(a0)
    800051d0:	00500713          	li	a4,5
    800051d4:	1ae78063          	beq	a5,a4,80005374 <__memset+0x20c>
    800051d8:	00b502a3          	sb	a1,5(a0)
    800051dc:	00700713          	li	a4,7
    800051e0:	18e79e63          	bne	a5,a4,8000537c <__memset+0x214>
    800051e4:	00b50323          	sb	a1,6(a0)
    800051e8:	00700e93          	li	t4,7
    800051ec:	00859713          	slli	a4,a1,0x8
    800051f0:	00e5e733          	or	a4,a1,a4
    800051f4:	01059e13          	slli	t3,a1,0x10
    800051f8:	01c76e33          	or	t3,a4,t3
    800051fc:	01859313          	slli	t1,a1,0x18
    80005200:	006e6333          	or	t1,t3,t1
    80005204:	02059893          	slli	a7,a1,0x20
    80005208:	40f60e3b          	subw	t3,a2,a5
    8000520c:	011368b3          	or	a7,t1,a7
    80005210:	02859813          	slli	a6,a1,0x28
    80005214:	0108e833          	or	a6,a7,a6
    80005218:	03059693          	slli	a3,a1,0x30
    8000521c:	003e589b          	srliw	a7,t3,0x3
    80005220:	00d866b3          	or	a3,a6,a3
    80005224:	03859713          	slli	a4,a1,0x38
    80005228:	00389813          	slli	a6,a7,0x3
    8000522c:	00f507b3          	add	a5,a0,a5
    80005230:	00e6e733          	or	a4,a3,a4
    80005234:	000e089b          	sext.w	a7,t3
    80005238:	00f806b3          	add	a3,a6,a5
    8000523c:	00e7b023          	sd	a4,0(a5)
    80005240:	00878793          	addi	a5,a5,8
    80005244:	fed79ce3          	bne	a5,a3,8000523c <__memset+0xd4>
    80005248:	ff8e7793          	andi	a5,t3,-8
    8000524c:	0007871b          	sext.w	a4,a5
    80005250:	01d787bb          	addw	a5,a5,t4
    80005254:	0ce88e63          	beq	a7,a4,80005330 <__memset+0x1c8>
    80005258:	00f50733          	add	a4,a0,a5
    8000525c:	00b70023          	sb	a1,0(a4)
    80005260:	0017871b          	addiw	a4,a5,1
    80005264:	0cc77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005268:	00e50733          	add	a4,a0,a4
    8000526c:	00b70023          	sb	a1,0(a4)
    80005270:	0027871b          	addiw	a4,a5,2
    80005274:	0ac77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005278:	00e50733          	add	a4,a0,a4
    8000527c:	00b70023          	sb	a1,0(a4)
    80005280:	0037871b          	addiw	a4,a5,3
    80005284:	0ac77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005288:	00e50733          	add	a4,a0,a4
    8000528c:	00b70023          	sb	a1,0(a4)
    80005290:	0047871b          	addiw	a4,a5,4
    80005294:	08c77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005298:	00e50733          	add	a4,a0,a4
    8000529c:	00b70023          	sb	a1,0(a4)
    800052a0:	0057871b          	addiw	a4,a5,5
    800052a4:	08c77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052a8:	00e50733          	add	a4,a0,a4
    800052ac:	00b70023          	sb	a1,0(a4)
    800052b0:	0067871b          	addiw	a4,a5,6
    800052b4:	06c77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052b8:	00e50733          	add	a4,a0,a4
    800052bc:	00b70023          	sb	a1,0(a4)
    800052c0:	0077871b          	addiw	a4,a5,7
    800052c4:	06c77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052c8:	00e50733          	add	a4,a0,a4
    800052cc:	00b70023          	sb	a1,0(a4)
    800052d0:	0087871b          	addiw	a4,a5,8
    800052d4:	04c77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052d8:	00e50733          	add	a4,a0,a4
    800052dc:	00b70023          	sb	a1,0(a4)
    800052e0:	0097871b          	addiw	a4,a5,9
    800052e4:	04c77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052e8:	00e50733          	add	a4,a0,a4
    800052ec:	00b70023          	sb	a1,0(a4)
    800052f0:	00a7871b          	addiw	a4,a5,10
    800052f4:	02c77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    800052f8:	00e50733          	add	a4,a0,a4
    800052fc:	00b70023          	sb	a1,0(a4)
    80005300:	00b7871b          	addiw	a4,a5,11
    80005304:	02c77663          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005308:	00e50733          	add	a4,a0,a4
    8000530c:	00b70023          	sb	a1,0(a4)
    80005310:	00c7871b          	addiw	a4,a5,12
    80005314:	00c77e63          	bgeu	a4,a2,80005330 <__memset+0x1c8>
    80005318:	00e50733          	add	a4,a0,a4
    8000531c:	00b70023          	sb	a1,0(a4)
    80005320:	00d7879b          	addiw	a5,a5,13
    80005324:	00c7f663          	bgeu	a5,a2,80005330 <__memset+0x1c8>
    80005328:	00f507b3          	add	a5,a0,a5
    8000532c:	00b78023          	sb	a1,0(a5)
    80005330:	00813403          	ld	s0,8(sp)
    80005334:	01010113          	addi	sp,sp,16
    80005338:	00008067          	ret
    8000533c:	00b00693          	li	a3,11
    80005340:	e55ff06f          	j	80005194 <__memset+0x2c>
    80005344:	00300e93          	li	t4,3
    80005348:	ea5ff06f          	j	800051ec <__memset+0x84>
    8000534c:	00100e93          	li	t4,1
    80005350:	e9dff06f          	j	800051ec <__memset+0x84>
    80005354:	00000e93          	li	t4,0
    80005358:	e95ff06f          	j	800051ec <__memset+0x84>
    8000535c:	00000793          	li	a5,0
    80005360:	ef9ff06f          	j	80005258 <__memset+0xf0>
    80005364:	00200e93          	li	t4,2
    80005368:	e85ff06f          	j	800051ec <__memset+0x84>
    8000536c:	00400e93          	li	t4,4
    80005370:	e7dff06f          	j	800051ec <__memset+0x84>
    80005374:	00500e93          	li	t4,5
    80005378:	e75ff06f          	j	800051ec <__memset+0x84>
    8000537c:	00600e93          	li	t4,6
    80005380:	e6dff06f          	j	800051ec <__memset+0x84>

0000000080005384 <__memmove>:
    80005384:	ff010113          	addi	sp,sp,-16
    80005388:	00813423          	sd	s0,8(sp)
    8000538c:	01010413          	addi	s0,sp,16
    80005390:	0e060863          	beqz	a2,80005480 <__memmove+0xfc>
    80005394:	fff6069b          	addiw	a3,a2,-1
    80005398:	0006881b          	sext.w	a6,a3
    8000539c:	0ea5e863          	bltu	a1,a0,8000548c <__memmove+0x108>
    800053a0:	00758713          	addi	a4,a1,7
    800053a4:	00a5e7b3          	or	a5,a1,a0
    800053a8:	40a70733          	sub	a4,a4,a0
    800053ac:	0077f793          	andi	a5,a5,7
    800053b0:	00f73713          	sltiu	a4,a4,15
    800053b4:	00174713          	xori	a4,a4,1
    800053b8:	0017b793          	seqz	a5,a5
    800053bc:	00e7f7b3          	and	a5,a5,a4
    800053c0:	10078863          	beqz	a5,800054d0 <__memmove+0x14c>
    800053c4:	00900793          	li	a5,9
    800053c8:	1107f463          	bgeu	a5,a6,800054d0 <__memmove+0x14c>
    800053cc:	0036581b          	srliw	a6,a2,0x3
    800053d0:	fff8081b          	addiw	a6,a6,-1
    800053d4:	02081813          	slli	a6,a6,0x20
    800053d8:	01d85893          	srli	a7,a6,0x1d
    800053dc:	00858813          	addi	a6,a1,8
    800053e0:	00058793          	mv	a5,a1
    800053e4:	00050713          	mv	a4,a0
    800053e8:	01088833          	add	a6,a7,a6
    800053ec:	0007b883          	ld	a7,0(a5)
    800053f0:	00878793          	addi	a5,a5,8
    800053f4:	00870713          	addi	a4,a4,8
    800053f8:	ff173c23          	sd	a7,-8(a4)
    800053fc:	ff0798e3          	bne	a5,a6,800053ec <__memmove+0x68>
    80005400:	ff867713          	andi	a4,a2,-8
    80005404:	02071793          	slli	a5,a4,0x20
    80005408:	0207d793          	srli	a5,a5,0x20
    8000540c:	00f585b3          	add	a1,a1,a5
    80005410:	40e686bb          	subw	a3,a3,a4
    80005414:	00f507b3          	add	a5,a0,a5
    80005418:	06e60463          	beq	a2,a4,80005480 <__memmove+0xfc>
    8000541c:	0005c703          	lbu	a4,0(a1)
    80005420:	00e78023          	sb	a4,0(a5)
    80005424:	04068e63          	beqz	a3,80005480 <__memmove+0xfc>
    80005428:	0015c603          	lbu	a2,1(a1)
    8000542c:	00100713          	li	a4,1
    80005430:	00c780a3          	sb	a2,1(a5)
    80005434:	04e68663          	beq	a3,a4,80005480 <__memmove+0xfc>
    80005438:	0025c603          	lbu	a2,2(a1)
    8000543c:	00200713          	li	a4,2
    80005440:	00c78123          	sb	a2,2(a5)
    80005444:	02e68e63          	beq	a3,a4,80005480 <__memmove+0xfc>
    80005448:	0035c603          	lbu	a2,3(a1)
    8000544c:	00300713          	li	a4,3
    80005450:	00c781a3          	sb	a2,3(a5)
    80005454:	02e68663          	beq	a3,a4,80005480 <__memmove+0xfc>
    80005458:	0045c603          	lbu	a2,4(a1)
    8000545c:	00400713          	li	a4,4
    80005460:	00c78223          	sb	a2,4(a5)
    80005464:	00e68e63          	beq	a3,a4,80005480 <__memmove+0xfc>
    80005468:	0055c603          	lbu	a2,5(a1)
    8000546c:	00500713          	li	a4,5
    80005470:	00c782a3          	sb	a2,5(a5)
    80005474:	00e68663          	beq	a3,a4,80005480 <__memmove+0xfc>
    80005478:	0065c703          	lbu	a4,6(a1)
    8000547c:	00e78323          	sb	a4,6(a5)
    80005480:	00813403          	ld	s0,8(sp)
    80005484:	01010113          	addi	sp,sp,16
    80005488:	00008067          	ret
    8000548c:	02061713          	slli	a4,a2,0x20
    80005490:	02075713          	srli	a4,a4,0x20
    80005494:	00e587b3          	add	a5,a1,a4
    80005498:	f0f574e3          	bgeu	a0,a5,800053a0 <__memmove+0x1c>
    8000549c:	02069613          	slli	a2,a3,0x20
    800054a0:	02065613          	srli	a2,a2,0x20
    800054a4:	fff64613          	not	a2,a2
    800054a8:	00e50733          	add	a4,a0,a4
    800054ac:	00c78633          	add	a2,a5,a2
    800054b0:	fff7c683          	lbu	a3,-1(a5)
    800054b4:	fff78793          	addi	a5,a5,-1
    800054b8:	fff70713          	addi	a4,a4,-1
    800054bc:	00d70023          	sb	a3,0(a4)
    800054c0:	fec798e3          	bne	a5,a2,800054b0 <__memmove+0x12c>
    800054c4:	00813403          	ld	s0,8(sp)
    800054c8:	01010113          	addi	sp,sp,16
    800054cc:	00008067          	ret
    800054d0:	02069713          	slli	a4,a3,0x20
    800054d4:	02075713          	srli	a4,a4,0x20
    800054d8:	00170713          	addi	a4,a4,1
    800054dc:	00e50733          	add	a4,a0,a4
    800054e0:	00050793          	mv	a5,a0
    800054e4:	0005c683          	lbu	a3,0(a1)
    800054e8:	00178793          	addi	a5,a5,1
    800054ec:	00158593          	addi	a1,a1,1
    800054f0:	fed78fa3          	sb	a3,-1(a5)
    800054f4:	fee798e3          	bne	a5,a4,800054e4 <__memmove+0x160>
    800054f8:	f89ff06f          	j	80005480 <__memmove+0xfc>

00000000800054fc <__putc>:
    800054fc:	fe010113          	addi	sp,sp,-32
    80005500:	00813823          	sd	s0,16(sp)
    80005504:	00113c23          	sd	ra,24(sp)
    80005508:	02010413          	addi	s0,sp,32
    8000550c:	00050793          	mv	a5,a0
    80005510:	fef40593          	addi	a1,s0,-17
    80005514:	00100613          	li	a2,1
    80005518:	00000513          	li	a0,0
    8000551c:	fef407a3          	sb	a5,-17(s0)
    80005520:	fffff097          	auipc	ra,0xfffff
    80005524:	b3c080e7          	jalr	-1220(ra) # 8000405c <console_write>
    80005528:	01813083          	ld	ra,24(sp)
    8000552c:	01013403          	ld	s0,16(sp)
    80005530:	02010113          	addi	sp,sp,32
    80005534:	00008067          	ret

0000000080005538 <__getc>:
    80005538:	fe010113          	addi	sp,sp,-32
    8000553c:	00813823          	sd	s0,16(sp)
    80005540:	00113c23          	sd	ra,24(sp)
    80005544:	02010413          	addi	s0,sp,32
    80005548:	fe840593          	addi	a1,s0,-24
    8000554c:	00100613          	li	a2,1
    80005550:	00000513          	li	a0,0
    80005554:	fffff097          	auipc	ra,0xfffff
    80005558:	ae8080e7          	jalr	-1304(ra) # 8000403c <console_read>
    8000555c:	fe844503          	lbu	a0,-24(s0)
    80005560:	01813083          	ld	ra,24(sp)
    80005564:	01013403          	ld	s0,16(sp)
    80005568:	02010113          	addi	sp,sp,32
    8000556c:	00008067          	ret

0000000080005570 <console_handler>:
    80005570:	fe010113          	addi	sp,sp,-32
    80005574:	00813823          	sd	s0,16(sp)
    80005578:	00113c23          	sd	ra,24(sp)
    8000557c:	00913423          	sd	s1,8(sp)
    80005580:	02010413          	addi	s0,sp,32
    80005584:	14202773          	csrr	a4,scause
    80005588:	100027f3          	csrr	a5,sstatus
    8000558c:	0027f793          	andi	a5,a5,2
    80005590:	06079e63          	bnez	a5,8000560c <console_handler+0x9c>
    80005594:	00074c63          	bltz	a4,800055ac <console_handler+0x3c>
    80005598:	01813083          	ld	ra,24(sp)
    8000559c:	01013403          	ld	s0,16(sp)
    800055a0:	00813483          	ld	s1,8(sp)
    800055a4:	02010113          	addi	sp,sp,32
    800055a8:	00008067          	ret
    800055ac:	0ff77713          	andi	a4,a4,255
    800055b0:	00900793          	li	a5,9
    800055b4:	fef712e3          	bne	a4,a5,80005598 <console_handler+0x28>
    800055b8:	ffffe097          	auipc	ra,0xffffe
    800055bc:	6dc080e7          	jalr	1756(ra) # 80003c94 <plic_claim>
    800055c0:	00a00793          	li	a5,10
    800055c4:	00050493          	mv	s1,a0
    800055c8:	02f50c63          	beq	a0,a5,80005600 <console_handler+0x90>
    800055cc:	fc0506e3          	beqz	a0,80005598 <console_handler+0x28>
    800055d0:	00050593          	mv	a1,a0
    800055d4:	00001517          	auipc	a0,0x1
    800055d8:	c1c50513          	addi	a0,a0,-996 # 800061f0 <CONSOLE_STATUS+0x1e0>
    800055dc:	fffff097          	auipc	ra,0xfffff
    800055e0:	afc080e7          	jalr	-1284(ra) # 800040d8 <__printf>
    800055e4:	01013403          	ld	s0,16(sp)
    800055e8:	01813083          	ld	ra,24(sp)
    800055ec:	00048513          	mv	a0,s1
    800055f0:	00813483          	ld	s1,8(sp)
    800055f4:	02010113          	addi	sp,sp,32
    800055f8:	ffffe317          	auipc	t1,0xffffe
    800055fc:	6d430067          	jr	1748(t1) # 80003ccc <plic_complete>
    80005600:	fffff097          	auipc	ra,0xfffff
    80005604:	3e0080e7          	jalr	992(ra) # 800049e0 <uartintr>
    80005608:	fddff06f          	j	800055e4 <console_handler+0x74>
    8000560c:	00001517          	auipc	a0,0x1
    80005610:	ce450513          	addi	a0,a0,-796 # 800062f0 <digits+0x78>
    80005614:	fffff097          	auipc	ra,0xfffff
    80005618:	a68080e7          	jalr	-1432(ra) # 8000407c <panic>
	...
