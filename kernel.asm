
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	56013103          	ld	sp,1376(sp) # 80004560 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	668010ef          	jal	ra,80001684 <start>

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

00000000800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3TCB13contextSwitchEPNS_7ContextES1_
.type _ZN3TCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3TCB13contextSwitchEPNS_7ContextES1_:
    sd ra, 0 * 8(a0)
    800010f8:	00153023          	sd	ra,0(a0) # 1000 <_entry-0x7ffff000>
    sd sp, 1 * 8(a0)
    800010fc:	00253423          	sd	sp,8(a0)

    ld ra, 0 * 8(a1)
    80001100:	0005b083          	ld	ra,0(a1)
    ld sp, 1 * 8(a1)
    80001104:	0085b103          	ld	sp,8(a1)

    80001108:	00008067          	ret

000000008000110c <main>:
#include "../lib/console.h"

void main(){
    8000110c:	ff010113          	addi	sp,sp,-16
    80001110:	00113423          	sd	ra,8(sp)
    80001114:	00813023          	sd	s0,0(sp)
    80001118:	01010413          	addi	s0,sp,16
    __putc('O');
    8000111c:	04f00513          	li	a0,79
    80001120:	00003097          	auipc	ra,0x3
    80001124:	850080e7          	jalr	-1968(ra) # 80003970 <__putc>
    __putc('S');
    80001128:	05300513          	li	a0,83
    8000112c:	00003097          	auipc	ra,0x3
    80001130:	844080e7          	jalr	-1980(ra) # 80003970 <__putc>
    __putc('1');
    80001134:	03100513          	li	a0,49
    80001138:	00003097          	auipc	ra,0x3
    8000113c:	838080e7          	jalr	-1992(ra) # 80003970 <__putc>
    __putc('\n');
    80001140:	00a00513          	li	a0,10
    80001144:	00003097          	auipc	ra,0x3
    80001148:	82c080e7          	jalr	-2004(ra) # 80003970 <__putc>
    __putc('\n');
    8000114c:	00a00513          	li	a0,10
    80001150:	00003097          	auipc	ra,0x3
    80001154:	820080e7          	jalr	-2016(ra) # 80003970 <__putc>

    while(1){
        char character = __getc();
    80001158:	00003097          	auipc	ra,0x3
    8000115c:	854080e7          	jalr	-1964(ra) # 800039ac <__getc>
        __putc(character + 30);
    80001160:	01e5051b          	addiw	a0,a0,30
    80001164:	0ff57513          	andi	a0,a0,255
    80001168:	00003097          	auipc	ra,0x3
    8000116c:	808080e7          	jalr	-2040(ra) # 80003970 <__putc>
    while(1){
    80001170:	fe9ff06f          	j	80001158 <main+0x4c>

0000000080001174 <_ZN3TCB12createThreadEPFvvE>:
TCB *TCB::running = nullptr;

uint64 TCB::timeSliceCounter = 0;

TCB *TCB::createThread(Body body)
{
    80001174:	fe010113          	addi	sp,sp,-32
    80001178:	00113c23          	sd	ra,24(sp)
    8000117c:	00813823          	sd	s0,16(sp)
    80001180:	00913423          	sd	s1,8(sp)
    80001184:	01213023          	sd	s2,0(sp)
    80001188:	02010413          	addi	s0,sp,32
    8000118c:	00050913          	mv	s2,a0
    return new TCB(body, TIME_SLICE);
    80001190:	03000513          	li	a0,48
    80001194:	00000097          	auipc	ra,0x0
    80001198:	184080e7          	jalr	388(ra) # 80001318 <_Znwm>
    8000119c:	00050493          	mv	s1,a0
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
            context({(uint64) &threadWrapper,
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
                    }),
            timeSlice(timeSlice),
            finished(false)
    800011a0:	01253023          	sd	s2,0(a0)
            stack(body != nullptr ? new uint64[STACK_SIZE] : nullptr),
    800011a4:	00090a63          	beqz	s2,800011b8 <_ZN3TCB12createThreadEPFvvE+0x44>
    800011a8:	00002537          	lui	a0,0x2
    800011ac:	00000097          	auipc	ra,0x0
    800011b0:	194080e7          	jalr	404(ra) # 80001340 <_Znam>
    800011b4:	0080006f          	j	800011bc <_ZN3TCB12createThreadEPFvvE+0x48>
    800011b8:	00000513          	li	a0,0
            finished(false)
    800011bc:	00a4b423          	sd	a0,8(s1)
    800011c0:	00000797          	auipc	a5,0x0
    800011c4:	09878793          	addi	a5,a5,152 # 80001258 <_ZN3TCB13threadWrapperEv>
    800011c8:	00f4b823          	sd	a5,16(s1)
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800011cc:	02050863          	beqz	a0,800011fc <_ZN3TCB12createThreadEPFvvE+0x88>
    800011d0:	000027b7          	lui	a5,0x2
    800011d4:	00f507b3          	add	a5,a0,a5
            finished(false)
    800011d8:	00f4bc23          	sd	a5,24(s1)
    800011dc:	00200793          	li	a5,2
    800011e0:	02f4b023          	sd	a5,32(s1)
    800011e4:	02048423          	sb	zero,40(s1)
    {
        if (body != nullptr) { Scheduler::put(this); }
    800011e8:	02090c63          	beqz	s2,80001220 <_ZN3TCB12createThreadEPFvvE+0xac>
    800011ec:	00048513          	mv	a0,s1
    800011f0:	00000097          	auipc	ra,0x0
    800011f4:	290080e7          	jalr	656(ra) # 80001480 <_ZN9Scheduler3putEP3TCB>
    800011f8:	0280006f          	j	80001220 <_ZN3TCB12createThreadEPFvvE+0xac>
                     stack != nullptr ? (uint64) &stack[STACK_SIZE] : 0
    800011fc:	00000793          	li	a5,0
    80001200:	fd9ff06f          	j	800011d8 <_ZN3TCB12createThreadEPFvvE+0x64>
    80001204:	00050913          	mv	s2,a0
    80001208:	00048513          	mv	a0,s1
    8000120c:	00000097          	auipc	ra,0x0
    80001210:	15c080e7          	jalr	348(ra) # 80001368 <_ZdlPv>
    80001214:	00090513          	mv	a0,s2
    80001218:	00004097          	auipc	ra,0x4
    8000121c:	480080e7          	jalr	1152(ra) # 80005698 <_Unwind_Resume>
}
    80001220:	00048513          	mv	a0,s1
    80001224:	01813083          	ld	ra,24(sp)
    80001228:	01013403          	ld	s0,16(sp)
    8000122c:	00813483          	ld	s1,8(sp)
    80001230:	00013903          	ld	s2,0(sp)
    80001234:	02010113          	addi	sp,sp,32
    80001238:	00008067          	ret

000000008000123c <_ZN3TCB5yieldEv>:

void TCB::yield()
{
    8000123c:	ff010113          	addi	sp,sp,-16
    80001240:	00813423          	sd	s0,8(sp)
    80001244:	01010413          	addi	s0,sp,16
    __asm__ volatile ("ecall");
    80001248:	00000073          	ecall
}
    8000124c:	00813403          	ld	s0,8(sp)
    80001250:	01010113          	addi	sp,sp,16
    80001254:	00008067          	ret

0000000080001258 <_ZN3TCB13threadWrapperEv>:

    TCB::contextSwitch(&old->context, &running->context);
}

void TCB::threadWrapper()
{
    80001258:	fe010113          	addi	sp,sp,-32
    8000125c:	00113c23          	sd	ra,24(sp)
    80001260:	00813823          	sd	s0,16(sp)
    80001264:	00913423          	sd	s1,8(sp)
    80001268:	02010413          	addi	s0,sp,32
    Riscv::popSppSpie();
    8000126c:	00000097          	auipc	ra,0x0
    80001270:	14c080e7          	jalr	332(ra) # 800013b8 <_ZN5Riscv10popSppSpieEv>
    running->body();
    80001274:	00003497          	auipc	s1,0x3
    80001278:	33c48493          	addi	s1,s1,828 # 800045b0 <_ZN3TCB7runningE>
    8000127c:	0004b783          	ld	a5,0(s1)
    80001280:	0007b783          	ld	a5,0(a5) # 2000 <_entry-0x7fffe000>
    80001284:	000780e7          	jalr	a5
    running->setFinished(true);
    80001288:	0004b783          	ld	a5,0(s1)
    void setFinished(bool value) { finished = value; }
    8000128c:	00100713          	li	a4,1
    80001290:	02e78423          	sb	a4,40(a5)
    TCB::yield();
    80001294:	00000097          	auipc	ra,0x0
    80001298:	fa8080e7          	jalr	-88(ra) # 8000123c <_ZN3TCB5yieldEv>
}
    8000129c:	01813083          	ld	ra,24(sp)
    800012a0:	01013403          	ld	s0,16(sp)
    800012a4:	00813483          	ld	s1,8(sp)
    800012a8:	02010113          	addi	sp,sp,32
    800012ac:	00008067          	ret

00000000800012b0 <_ZN3TCB8dispatchEv>:
{
    800012b0:	fe010113          	addi	sp,sp,-32
    800012b4:	00113c23          	sd	ra,24(sp)
    800012b8:	00813823          	sd	s0,16(sp)
    800012bc:	00913423          	sd	s1,8(sp)
    800012c0:	02010413          	addi	s0,sp,32
    TCB *old = running;
    800012c4:	00003497          	auipc	s1,0x3
    800012c8:	2ec4b483          	ld	s1,748(s1) # 800045b0 <_ZN3TCB7runningE>
    bool isFinished() const { return finished; }
    800012cc:	0284c783          	lbu	a5,40(s1)
    if (!old->isFinished()) { Scheduler::put(old); }
    800012d0:	02078c63          	beqz	a5,80001308 <_ZN3TCB8dispatchEv+0x58>
    running = Scheduler::get();
    800012d4:	00000097          	auipc	ra,0x0
    800012d8:	144080e7          	jalr	324(ra) # 80001418 <_ZN9Scheduler3getEv>
    800012dc:	00003797          	auipc	a5,0x3
    800012e0:	2ca7ba23          	sd	a0,724(a5) # 800045b0 <_ZN3TCB7runningE>
    TCB::contextSwitch(&old->context, &running->context);
    800012e4:	01050593          	addi	a1,a0,16 # 2010 <_entry-0x7fffdff0>
    800012e8:	01048513          	addi	a0,s1,16
    800012ec:	00000097          	auipc	ra,0x0
    800012f0:	e0c080e7          	jalr	-500(ra) # 800010f8 <_ZN3TCB13contextSwitchEPNS_7ContextES1_>
}
    800012f4:	01813083          	ld	ra,24(sp)
    800012f8:	01013403          	ld	s0,16(sp)
    800012fc:	00813483          	ld	s1,8(sp)
    80001300:	02010113          	addi	sp,sp,32
    80001304:	00008067          	ret
    if (!old->isFinished()) { Scheduler::put(old); }
    80001308:	00048513          	mv	a0,s1
    8000130c:	00000097          	auipc	ra,0x0
    80001310:	174080e7          	jalr	372(ra) # 80001480 <_ZN9Scheduler3putEP3TCB>
    80001314:	fc1ff06f          	j	800012d4 <_ZN3TCB8dispatchEv+0x24>

0000000080001318 <_Znwm>:
#include "../lib/mem.h"

using size_t = decltype(sizeof(0));

void *operator new(size_t n)
{
    80001318:	ff010113          	addi	sp,sp,-16
    8000131c:	00113423          	sd	ra,8(sp)
    80001320:	00813023          	sd	s0,0(sp)
    80001324:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001328:	00002097          	auipc	ra,0x2
    8000132c:	4f0080e7          	jalr	1264(ra) # 80003818 <__mem_alloc>
}
    80001330:	00813083          	ld	ra,8(sp)
    80001334:	00013403          	ld	s0,0(sp)
    80001338:	01010113          	addi	sp,sp,16
    8000133c:	00008067          	ret

0000000080001340 <_Znam>:

void *operator new[](size_t n)
{
    80001340:	ff010113          	addi	sp,sp,-16
    80001344:	00113423          	sd	ra,8(sp)
    80001348:	00813023          	sd	s0,0(sp)
    8000134c:	01010413          	addi	s0,sp,16
    return __mem_alloc(n);
    80001350:	00002097          	auipc	ra,0x2
    80001354:	4c8080e7          	jalr	1224(ra) # 80003818 <__mem_alloc>
}
    80001358:	00813083          	ld	ra,8(sp)
    8000135c:	00013403          	ld	s0,0(sp)
    80001360:	01010113          	addi	sp,sp,16
    80001364:	00008067          	ret

0000000080001368 <_ZdlPv>:

void operator delete(void *p) noexcept
{
    80001368:	ff010113          	addi	sp,sp,-16
    8000136c:	00113423          	sd	ra,8(sp)
    80001370:	00813023          	sd	s0,0(sp)
    80001374:	01010413          	addi	s0,sp,16
__mem_free(p);
    80001378:	00002097          	auipc	ra,0x2
    8000137c:	3d4080e7          	jalr	980(ra) # 8000374c <__mem_free>
}
    80001380:	00813083          	ld	ra,8(sp)
    80001384:	00013403          	ld	s0,0(sp)
    80001388:	01010113          	addi	sp,sp,16
    8000138c:	00008067          	ret

0000000080001390 <_ZdaPv>:

void operator delete[](void *p) noexcept
{
    80001390:	ff010113          	addi	sp,sp,-16
    80001394:	00113423          	sd	ra,8(sp)
    80001398:	00813023          	sd	s0,0(sp)
    8000139c:	01010413          	addi	s0,sp,16
__mem_free(p);
    800013a0:	00002097          	auipc	ra,0x2
    800013a4:	3ac080e7          	jalr	940(ra) # 8000374c <__mem_free>
}
    800013a8:	00813083          	ld	ra,8(sp)
    800013ac:	00013403          	ld	s0,0(sp)
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret

00000000800013b8 <_ZN5Riscv10popSppSpieEv>:
#include "../h/riscv.hpp"
#include "../h/tcb.hpp"
#include "../lib/console.h"

void Riscv::popSppSpie()
{
    800013b8:	ff010113          	addi	sp,sp,-16
    800013bc:	00813423          	sd	s0,8(sp)
    800013c0:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    800013c4:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    800013c8:	10200073          	sret
}
    800013cc:	00813403          	ld	s0,8(sp)
    800013d0:	01010113          	addi	sp,sp,16
    800013d4:	00008067          	ret

00000000800013d8 <_Z41__static_initialization_and_destruction_0ii>:
    readyThreadQueue.addLast(ccb);
}

Scheduler *Scheduler::getInstance() {
    return this->instance;
}
    800013d8:	ff010113          	addi	sp,sp,-16
    800013dc:	00813423          	sd	s0,8(sp)
    800013e0:	01010413          	addi	s0,sp,16
    800013e4:	00100793          	li	a5,1
    800013e8:	00f50863          	beq	a0,a5,800013f8 <_Z41__static_initialization_and_destruction_0ii+0x20>
    800013ec:	00813403          	ld	s0,8(sp)
    800013f0:	01010113          	addi	sp,sp,16
    800013f4:	00008067          	ret
    800013f8:	000107b7          	lui	a5,0x10
    800013fc:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80001400:	fef596e3          	bne	a1,a5,800013ec <_Z41__static_initialization_and_destruction_0ii+0x14>
    };

    Elem *head, *tail;

public:
    List() : head(0), tail(0) {}
    80001404:	00003797          	auipc	a5,0x3
    80001408:	1bc78793          	addi	a5,a5,444 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    8000140c:	0007b023          	sd	zero,0(a5)
    80001410:	0007b423          	sd	zero,8(a5)
    80001414:	fd9ff06f          	j	800013ec <_Z41__static_initialization_and_destruction_0ii+0x14>

0000000080001418 <_ZN9Scheduler3getEv>:
{
    80001418:	fe010113          	addi	sp,sp,-32
    8000141c:	00113c23          	sd	ra,24(sp)
    80001420:	00813823          	sd	s0,16(sp)
    80001424:	00913423          	sd	s1,8(sp)
    80001428:	02010413          	addi	s0,sp,32
        }
    }

    T *removeFirst()
    {
        if (!head) { return 0; }
    8000142c:	00003517          	auipc	a0,0x3
    80001430:	19453503          	ld	a0,404(a0) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    80001434:	04050263          	beqz	a0,80001478 <_ZN9Scheduler3getEv+0x60>

        Elem *elem = head;
        head = head->next;
    80001438:	00853783          	ld	a5,8(a0)
    8000143c:	00003717          	auipc	a4,0x3
    80001440:	18f73223          	sd	a5,388(a4) # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
        if (!head) { tail = 0; }
    80001444:	02078463          	beqz	a5,8000146c <_ZN9Scheduler3getEv+0x54>

        T *ret = elem->data;
    80001448:	00053483          	ld	s1,0(a0)
        delete elem;
    8000144c:	00000097          	auipc	ra,0x0
    80001450:	f1c080e7          	jalr	-228(ra) # 80001368 <_ZdlPv>
}
    80001454:	00048513          	mv	a0,s1
    80001458:	01813083          	ld	ra,24(sp)
    8000145c:	01013403          	ld	s0,16(sp)
    80001460:	00813483          	ld	s1,8(sp)
    80001464:	02010113          	addi	sp,sp,32
    80001468:	00008067          	ret
        if (!head) { tail = 0; }
    8000146c:	00003797          	auipc	a5,0x3
    80001470:	1407be23          	sd	zero,348(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    80001474:	fd5ff06f          	j	80001448 <_ZN9Scheduler3getEv+0x30>
        if (!head) { return 0; }
    80001478:	00050493          	mv	s1,a0
    return readyThreadQueue.removeFirst();
    8000147c:	fd9ff06f          	j	80001454 <_ZN9Scheduler3getEv+0x3c>

0000000080001480 <_ZN9Scheduler3putEP3TCB>:
{
    80001480:	fe010113          	addi	sp,sp,-32
    80001484:	00113c23          	sd	ra,24(sp)
    80001488:	00813823          	sd	s0,16(sp)
    8000148c:	00913423          	sd	s1,8(sp)
    80001490:	02010413          	addi	s0,sp,32
    80001494:	00050493          	mv	s1,a0
        Elem *elem = new Elem(data, 0);
    80001498:	01000513          	li	a0,16
    8000149c:	00000097          	auipc	ra,0x0
    800014a0:	e7c080e7          	jalr	-388(ra) # 80001318 <_Znwm>
        Elem(T *data, Elem *next) : data(data), next(next) {}
    800014a4:	00953023          	sd	s1,0(a0)
    800014a8:	00053423          	sd	zero,8(a0)
        if (tail)
    800014ac:	00003797          	auipc	a5,0x3
    800014b0:	11c7b783          	ld	a5,284(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
    800014b4:	02078263          	beqz	a5,800014d8 <_ZN9Scheduler3putEP3TCB+0x58>
            tail->next = elem;
    800014b8:	00a7b423          	sd	a0,8(a5)
            tail = elem;
    800014bc:	00003797          	auipc	a5,0x3
    800014c0:	10a7b623          	sd	a0,268(a5) # 800045c8 <_ZN9Scheduler16readyThreadQueueE+0x8>
}
    800014c4:	01813083          	ld	ra,24(sp)
    800014c8:	01013403          	ld	s0,16(sp)
    800014cc:	00813483          	ld	s1,8(sp)
    800014d0:	02010113          	addi	sp,sp,32
    800014d4:	00008067          	ret
            head = tail = elem;
    800014d8:	00003797          	auipc	a5,0x3
    800014dc:	0e878793          	addi	a5,a5,232 # 800045c0 <_ZN9Scheduler16readyThreadQueueE>
    800014e0:	00a7b423          	sd	a0,8(a5)
    800014e4:	00a7b023          	sd	a0,0(a5)
    800014e8:	fddff06f          	j	800014c4 <_ZN9Scheduler3putEP3TCB+0x44>

00000000800014ec <_ZN9Scheduler11getInstanceEv>:
Scheduler *Scheduler::getInstance() {
    800014ec:	ff010113          	addi	sp,sp,-16
    800014f0:	00813423          	sd	s0,8(sp)
    800014f4:	01010413          	addi	s0,sp,16
}
    800014f8:	00053503          	ld	a0,0(a0)
    800014fc:	00813403          	ld	s0,8(sp)
    80001500:	01010113          	addi	sp,sp,16
    80001504:	00008067          	ret

0000000080001508 <_GLOBAL__sub_I__ZN9Scheduler16readyThreadQueueE>:
    80001508:	ff010113          	addi	sp,sp,-16
    8000150c:	00113423          	sd	ra,8(sp)
    80001510:	00813023          	sd	s0,0(sp)
    80001514:	01010413          	addi	s0,sp,16
    80001518:	000105b7          	lui	a1,0x10
    8000151c:	fff58593          	addi	a1,a1,-1 # ffff <_entry-0x7fff0001>
    80001520:	00100513          	li	a0,1
    80001524:	00000097          	auipc	ra,0x0
    80001528:	eb4080e7          	jalr	-332(ra) # 800013d8 <_Z41__static_initialization_and_destruction_0ii>
    8000152c:	00813083          	ld	ra,8(sp)
    80001530:	00013403          	ld	s0,0(sp)
    80001534:	01010113          	addi	sp,sp,16
    80001538:	00008067          	ret

000000008000153c <_ZN15MemoryAllocator11getInstanceEv>:
#include "../h/MemoryAllocator.hpp"


MemoryAllocator *MemoryAllocator::getInstance() {
    8000153c:	ff010113          	addi	sp,sp,-16
    80001540:	00813423          	sd	s0,8(sp)
    80001544:	01010413          	addi	s0,sp,16
    return this->instance;
}
    80001548:	00053503          	ld	a0,0(a0)
    8000154c:	00813403          	ld	s0,8(sp)
    80001550:	01010113          	addi	sp,sp,16
    80001554:	00008067          	ret

0000000080001558 <_Z11printStringPKc>:
#include "../h/print.hpp"
#include "../h/riscv.hpp"
#include "../lib/console.h"

void printString(char const *string)
{
    80001558:	fd010113          	addi	sp,sp,-48
    8000155c:	02113423          	sd	ra,40(sp)
    80001560:	02813023          	sd	s0,32(sp)
    80001564:	00913c23          	sd	s1,24(sp)
    80001568:	01213823          	sd	s2,16(sp)
    8000156c:	03010413          	addi	s0,sp,48
    80001570:	00050493          	mv	s1,a0
}

inline uint64 Riscv::r_sstatus()
{
    uint64 volatile sstatus;
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    80001574:	100027f3          	csrr	a5,sstatus
    80001578:	fcf43c23          	sd	a5,-40(s0)
    return sstatus;
    8000157c:	fd843903          	ld	s2,-40(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    80001580:	00200793          	li	a5,2
    80001584:	1007b073          	csrc	sstatus,a5
    uint64 sstatus = Riscv::r_sstatus();
    Riscv::mc_sstatus(Riscv::SSTATUS_SIE);
    while (*string != '\0')
    80001588:	0004c503          	lbu	a0,0(s1)
    8000158c:	00050a63          	beqz	a0,800015a0 <_Z11printStringPKc+0x48>
    {
        __putc(*string);
    80001590:	00002097          	auipc	ra,0x2
    80001594:	3e0080e7          	jalr	992(ra) # 80003970 <__putc>
        string++;
    80001598:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    8000159c:	fedff06f          	j	80001588 <_Z11printStringPKc+0x30>
    }
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    800015a0:	0009091b          	sext.w	s2,s2
    800015a4:	00297913          	andi	s2,s2,2
    800015a8:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    800015ac:	10092073          	csrs	sstatus,s2
}
    800015b0:	02813083          	ld	ra,40(sp)
    800015b4:	02013403          	ld	s0,32(sp)
    800015b8:	01813483          	ld	s1,24(sp)
    800015bc:	01013903          	ld	s2,16(sp)
    800015c0:	03010113          	addi	sp,sp,48
    800015c4:	00008067          	ret

00000000800015c8 <_Z12printIntegerm>:

void printInteger(uint64 integer)
{
    800015c8:	fc010113          	addi	sp,sp,-64
    800015cc:	02113c23          	sd	ra,56(sp)
    800015d0:	02813823          	sd	s0,48(sp)
    800015d4:	02913423          	sd	s1,40(sp)
    800015d8:	03213023          	sd	s2,32(sp)
    800015dc:	04010413          	addi	s0,sp,64
    __asm__ volatile ("csrr %[sstatus], sstatus" : [sstatus] "=r"(sstatus));
    800015e0:	100027f3          	csrr	a5,sstatus
    800015e4:	fcf43423          	sd	a5,-56(s0)
    return sstatus;
    800015e8:	fc843903          	ld	s2,-56(s0)
    __asm__ volatile ("csrc sstatus, %[mask]" : : [mask] "r"(mask));
    800015ec:	00200793          	li	a5,2
    800015f0:	1007b073          	csrc	sstatus,a5
    {
        neg = 1;
        x = -integer;
    } else
    {
        x = integer;
    800015f4:	0005051b          	sext.w	a0,a0
    }

    i = 0;
    800015f8:	00000493          	li	s1,0
    do
    {
        buf[i++] = digits[x % 10];
    800015fc:	00a00613          	li	a2,10
    80001600:	02c5773b          	remuw	a4,a0,a2
    80001604:	02071693          	slli	a3,a4,0x20
    80001608:	0206d693          	srli	a3,a3,0x20
    8000160c:	00003717          	auipc	a4,0x3
    80001610:	9f470713          	addi	a4,a4,-1548 # 80004000 <_ZZ12printIntegermE6digits>
    80001614:	00d70733          	add	a4,a4,a3
    80001618:	00074703          	lbu	a4,0(a4)
    8000161c:	fe040693          	addi	a3,s0,-32
    80001620:	009687b3          	add	a5,a3,s1
    80001624:	0014849b          	addiw	s1,s1,1
    80001628:	fee78823          	sb	a4,-16(a5)
    } while ((x /= 10) != 0);
    8000162c:	0005071b          	sext.w	a4,a0
    80001630:	02c5553b          	divuw	a0,a0,a2
    80001634:	00900793          	li	a5,9
    80001638:	fce7e2e3          	bltu	a5,a4,800015fc <_Z12printIntegerm+0x34>
    if (neg)
        buf[i++] = '-';

    while (--i >= 0) { __putc(buf[i]); }
    8000163c:	fff4849b          	addiw	s1,s1,-1
    80001640:	0004ce63          	bltz	s1,8000165c <_Z12printIntegerm+0x94>
    80001644:	fe040793          	addi	a5,s0,-32
    80001648:	009787b3          	add	a5,a5,s1
    8000164c:	ff07c503          	lbu	a0,-16(a5)
    80001650:	00002097          	auipc	ra,0x2
    80001654:	320080e7          	jalr	800(ra) # 80003970 <__putc>
    80001658:	fe5ff06f          	j	8000163c <_Z12printIntegerm+0x74>
    Riscv::ms_sstatus(sstatus & Riscv::SSTATUS_SIE ? Riscv::SSTATUS_SIE : 0);
    8000165c:	0009091b          	sext.w	s2,s2
    80001660:	00297913          	andi	s2,s2,2
    80001664:	0009091b          	sext.w	s2,s2
    __asm__ volatile ("csrs sstatus, %[mask]" : : [mask] "r"(mask));
    80001668:	10092073          	csrs	sstatus,s2
    8000166c:	03813083          	ld	ra,56(sp)
    80001670:	03013403          	ld	s0,48(sp)
    80001674:	02813483          	ld	s1,40(sp)
    80001678:	02013903          	ld	s2,32(sp)
    8000167c:	04010113          	addi	sp,sp,64
    80001680:	00008067          	ret

0000000080001684 <start>:
    80001684:	ff010113          	addi	sp,sp,-16
    80001688:	00813423          	sd	s0,8(sp)
    8000168c:	01010413          	addi	s0,sp,16
    80001690:	300027f3          	csrr	a5,mstatus
    80001694:	ffffe737          	lui	a4,0xffffe
    80001698:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff8fbf>
    8000169c:	00e7f7b3          	and	a5,a5,a4
    800016a0:	00001737          	lui	a4,0x1
    800016a4:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800016a8:	00e7e7b3          	or	a5,a5,a4
    800016ac:	30079073          	csrw	mstatus,a5
    800016b0:	00000797          	auipc	a5,0x0
    800016b4:	16078793          	addi	a5,a5,352 # 80001810 <system_main>
    800016b8:	34179073          	csrw	mepc,a5
    800016bc:	00000793          	li	a5,0
    800016c0:	18079073          	csrw	satp,a5
    800016c4:	000107b7          	lui	a5,0x10
    800016c8:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800016cc:	30279073          	csrw	medeleg,a5
    800016d0:	30379073          	csrw	mideleg,a5
    800016d4:	104027f3          	csrr	a5,sie
    800016d8:	2227e793          	ori	a5,a5,546
    800016dc:	10479073          	csrw	sie,a5
    800016e0:	fff00793          	li	a5,-1
    800016e4:	00a7d793          	srli	a5,a5,0xa
    800016e8:	3b079073          	csrw	pmpaddr0,a5
    800016ec:	00f00793          	li	a5,15
    800016f0:	3a079073          	csrw	pmpcfg0,a5
    800016f4:	f14027f3          	csrr	a5,mhartid
    800016f8:	0200c737          	lui	a4,0x200c
    800016fc:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001700:	0007869b          	sext.w	a3,a5
    80001704:	00269713          	slli	a4,a3,0x2
    80001708:	000f4637          	lui	a2,0xf4
    8000170c:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001710:	00d70733          	add	a4,a4,a3
    80001714:	0037979b          	slliw	a5,a5,0x3
    80001718:	020046b7          	lui	a3,0x2004
    8000171c:	00d787b3          	add	a5,a5,a3
    80001720:	00c585b3          	add	a1,a1,a2
    80001724:	00371693          	slli	a3,a4,0x3
    80001728:	00003717          	auipc	a4,0x3
    8000172c:	ea870713          	addi	a4,a4,-344 # 800045d0 <timer_scratch>
    80001730:	00b7b023          	sd	a1,0(a5)
    80001734:	00d70733          	add	a4,a4,a3
    80001738:	00f73c23          	sd	a5,24(a4)
    8000173c:	02c73023          	sd	a2,32(a4)
    80001740:	34071073          	csrw	mscratch,a4
    80001744:	00000797          	auipc	a5,0x0
    80001748:	6ec78793          	addi	a5,a5,1772 # 80001e30 <timervec>
    8000174c:	30579073          	csrw	mtvec,a5
    80001750:	300027f3          	csrr	a5,mstatus
    80001754:	0087e793          	ori	a5,a5,8
    80001758:	30079073          	csrw	mstatus,a5
    8000175c:	304027f3          	csrr	a5,mie
    80001760:	0807e793          	ori	a5,a5,128
    80001764:	30479073          	csrw	mie,a5
    80001768:	f14027f3          	csrr	a5,mhartid
    8000176c:	0007879b          	sext.w	a5,a5
    80001770:	00078213          	mv	tp,a5
    80001774:	30200073          	mret
    80001778:	00813403          	ld	s0,8(sp)
    8000177c:	01010113          	addi	sp,sp,16
    80001780:	00008067          	ret

0000000080001784 <timerinit>:
    80001784:	ff010113          	addi	sp,sp,-16
    80001788:	00813423          	sd	s0,8(sp)
    8000178c:	01010413          	addi	s0,sp,16
    80001790:	f14027f3          	csrr	a5,mhartid
    80001794:	0200c737          	lui	a4,0x200c
    80001798:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    8000179c:	0007869b          	sext.w	a3,a5
    800017a0:	00269713          	slli	a4,a3,0x2
    800017a4:	000f4637          	lui	a2,0xf4
    800017a8:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800017ac:	00d70733          	add	a4,a4,a3
    800017b0:	0037979b          	slliw	a5,a5,0x3
    800017b4:	020046b7          	lui	a3,0x2004
    800017b8:	00d787b3          	add	a5,a5,a3
    800017bc:	00c585b3          	add	a1,a1,a2
    800017c0:	00371693          	slli	a3,a4,0x3
    800017c4:	00003717          	auipc	a4,0x3
    800017c8:	e0c70713          	addi	a4,a4,-500 # 800045d0 <timer_scratch>
    800017cc:	00b7b023          	sd	a1,0(a5)
    800017d0:	00d70733          	add	a4,a4,a3
    800017d4:	00f73c23          	sd	a5,24(a4)
    800017d8:	02c73023          	sd	a2,32(a4)
    800017dc:	34071073          	csrw	mscratch,a4
    800017e0:	00000797          	auipc	a5,0x0
    800017e4:	65078793          	addi	a5,a5,1616 # 80001e30 <timervec>
    800017e8:	30579073          	csrw	mtvec,a5
    800017ec:	300027f3          	csrr	a5,mstatus
    800017f0:	0087e793          	ori	a5,a5,8
    800017f4:	30079073          	csrw	mstatus,a5
    800017f8:	304027f3          	csrr	a5,mie
    800017fc:	0807e793          	ori	a5,a5,128
    80001800:	30479073          	csrw	mie,a5
    80001804:	00813403          	ld	s0,8(sp)
    80001808:	01010113          	addi	sp,sp,16
    8000180c:	00008067          	ret

0000000080001810 <system_main>:
    80001810:	fe010113          	addi	sp,sp,-32
    80001814:	00813823          	sd	s0,16(sp)
    80001818:	00913423          	sd	s1,8(sp)
    8000181c:	00113c23          	sd	ra,24(sp)
    80001820:	02010413          	addi	s0,sp,32
    80001824:	00000097          	auipc	ra,0x0
    80001828:	0c4080e7          	jalr	196(ra) # 800018e8 <cpuid>
    8000182c:	00003497          	auipc	s1,0x3
    80001830:	d5448493          	addi	s1,s1,-684 # 80004580 <started>
    80001834:	02050263          	beqz	a0,80001858 <system_main+0x48>
    80001838:	0004a783          	lw	a5,0(s1)
    8000183c:	0007879b          	sext.w	a5,a5
    80001840:	fe078ce3          	beqz	a5,80001838 <system_main+0x28>
    80001844:	0ff0000f          	fence
    80001848:	00002517          	auipc	a0,0x2
    8000184c:	7f850513          	addi	a0,a0,2040 # 80004040 <_ZZ12printIntegermE6digits+0x40>
    80001850:	00001097          	auipc	ra,0x1
    80001854:	a7c080e7          	jalr	-1412(ra) # 800022cc <panic>
    80001858:	00001097          	auipc	ra,0x1
    8000185c:	9d0080e7          	jalr	-1584(ra) # 80002228 <consoleinit>
    80001860:	00001097          	auipc	ra,0x1
    80001864:	15c080e7          	jalr	348(ra) # 800029bc <printfinit>
    80001868:	00003517          	auipc	a0,0x3
    8000186c:	8b850513          	addi	a0,a0,-1864 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80001870:	00001097          	auipc	ra,0x1
    80001874:	ab8080e7          	jalr	-1352(ra) # 80002328 <__printf>
    80001878:	00002517          	auipc	a0,0x2
    8000187c:	79850513          	addi	a0,a0,1944 # 80004010 <_ZZ12printIntegermE6digits+0x10>
    80001880:	00001097          	auipc	ra,0x1
    80001884:	aa8080e7          	jalr	-1368(ra) # 80002328 <__printf>
    80001888:	00003517          	auipc	a0,0x3
    8000188c:	89850513          	addi	a0,a0,-1896 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80001890:	00001097          	auipc	ra,0x1
    80001894:	a98080e7          	jalr	-1384(ra) # 80002328 <__printf>
    80001898:	00001097          	auipc	ra,0x1
    8000189c:	4b0080e7          	jalr	1200(ra) # 80002d48 <kinit>
    800018a0:	00000097          	auipc	ra,0x0
    800018a4:	148080e7          	jalr	328(ra) # 800019e8 <trapinit>
    800018a8:	00000097          	auipc	ra,0x0
    800018ac:	16c080e7          	jalr	364(ra) # 80001a14 <trapinithart>
    800018b0:	00000097          	auipc	ra,0x0
    800018b4:	5c0080e7          	jalr	1472(ra) # 80001e70 <plicinit>
    800018b8:	00000097          	auipc	ra,0x0
    800018bc:	5e0080e7          	jalr	1504(ra) # 80001e98 <plicinithart>
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	078080e7          	jalr	120(ra) # 80001938 <userinit>
    800018c8:	0ff0000f          	fence
    800018cc:	00100793          	li	a5,1
    800018d0:	00002517          	auipc	a0,0x2
    800018d4:	75850513          	addi	a0,a0,1880 # 80004028 <_ZZ12printIntegermE6digits+0x28>
    800018d8:	00f4a023          	sw	a5,0(s1)
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	a4c080e7          	jalr	-1460(ra) # 80002328 <__printf>
    800018e4:	0000006f          	j	800018e4 <system_main+0xd4>

00000000800018e8 <cpuid>:
    800018e8:	ff010113          	addi	sp,sp,-16
    800018ec:	00813423          	sd	s0,8(sp)
    800018f0:	01010413          	addi	s0,sp,16
    800018f4:	00020513          	mv	a0,tp
    800018f8:	00813403          	ld	s0,8(sp)
    800018fc:	0005051b          	sext.w	a0,a0
    80001900:	01010113          	addi	sp,sp,16
    80001904:	00008067          	ret

0000000080001908 <mycpu>:
    80001908:	ff010113          	addi	sp,sp,-16
    8000190c:	00813423          	sd	s0,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    80001914:	00020793          	mv	a5,tp
    80001918:	00813403          	ld	s0,8(sp)
    8000191c:	0007879b          	sext.w	a5,a5
    80001920:	00779793          	slli	a5,a5,0x7
    80001924:	00004517          	auipc	a0,0x4
    80001928:	cdc50513          	addi	a0,a0,-804 # 80005600 <cpus>
    8000192c:	00f50533          	add	a0,a0,a5
    80001930:	01010113          	addi	sp,sp,16
    80001934:	00008067          	ret

0000000080001938 <userinit>:
    80001938:	ff010113          	addi	sp,sp,-16
    8000193c:	00813423          	sd	s0,8(sp)
    80001940:	01010413          	addi	s0,sp,16
    80001944:	00813403          	ld	s0,8(sp)
    80001948:	01010113          	addi	sp,sp,16
    8000194c:	fffff317          	auipc	t1,0xfffff
    80001950:	7c030067          	jr	1984(t1) # 8000110c <main>

0000000080001954 <either_copyout>:
    80001954:	ff010113          	addi	sp,sp,-16
    80001958:	00813023          	sd	s0,0(sp)
    8000195c:	00113423          	sd	ra,8(sp)
    80001960:	01010413          	addi	s0,sp,16
    80001964:	02051663          	bnez	a0,80001990 <either_copyout+0x3c>
    80001968:	00058513          	mv	a0,a1
    8000196c:	00060593          	mv	a1,a2
    80001970:	0006861b          	sext.w	a2,a3
    80001974:	00002097          	auipc	ra,0x2
    80001978:	c60080e7          	jalr	-928(ra) # 800035d4 <__memmove>
    8000197c:	00813083          	ld	ra,8(sp)
    80001980:	00013403          	ld	s0,0(sp)
    80001984:	00000513          	li	a0,0
    80001988:	01010113          	addi	sp,sp,16
    8000198c:	00008067          	ret
    80001990:	00002517          	auipc	a0,0x2
    80001994:	6d850513          	addi	a0,a0,1752 # 80004068 <_ZZ12printIntegermE6digits+0x68>
    80001998:	00001097          	auipc	ra,0x1
    8000199c:	934080e7          	jalr	-1740(ra) # 800022cc <panic>

00000000800019a0 <either_copyin>:
    800019a0:	ff010113          	addi	sp,sp,-16
    800019a4:	00813023          	sd	s0,0(sp)
    800019a8:	00113423          	sd	ra,8(sp)
    800019ac:	01010413          	addi	s0,sp,16
    800019b0:	02059463          	bnez	a1,800019d8 <either_copyin+0x38>
    800019b4:	00060593          	mv	a1,a2
    800019b8:	0006861b          	sext.w	a2,a3
    800019bc:	00002097          	auipc	ra,0x2
    800019c0:	c18080e7          	jalr	-1000(ra) # 800035d4 <__memmove>
    800019c4:	00813083          	ld	ra,8(sp)
    800019c8:	00013403          	ld	s0,0(sp)
    800019cc:	00000513          	li	a0,0
    800019d0:	01010113          	addi	sp,sp,16
    800019d4:	00008067          	ret
    800019d8:	00002517          	auipc	a0,0x2
    800019dc:	6b850513          	addi	a0,a0,1720 # 80004090 <_ZZ12printIntegermE6digits+0x90>
    800019e0:	00001097          	auipc	ra,0x1
    800019e4:	8ec080e7          	jalr	-1812(ra) # 800022cc <panic>

00000000800019e8 <trapinit>:
    800019e8:	ff010113          	addi	sp,sp,-16
    800019ec:	00813423          	sd	s0,8(sp)
    800019f0:	01010413          	addi	s0,sp,16
    800019f4:	00813403          	ld	s0,8(sp)
    800019f8:	00002597          	auipc	a1,0x2
    800019fc:	6c058593          	addi	a1,a1,1728 # 800040b8 <_ZZ12printIntegermE6digits+0xb8>
    80001a00:	00004517          	auipc	a0,0x4
    80001a04:	c8050513          	addi	a0,a0,-896 # 80005680 <tickslock>
    80001a08:	01010113          	addi	sp,sp,16
    80001a0c:	00001317          	auipc	t1,0x1
    80001a10:	5cc30067          	jr	1484(t1) # 80002fd8 <initlock>

0000000080001a14 <trapinithart>:
    80001a14:	ff010113          	addi	sp,sp,-16
    80001a18:	00813423          	sd	s0,8(sp)
    80001a1c:	01010413          	addi	s0,sp,16
    80001a20:	00000797          	auipc	a5,0x0
    80001a24:	30078793          	addi	a5,a5,768 # 80001d20 <kernelvec>
    80001a28:	10579073          	csrw	stvec,a5
    80001a2c:	00813403          	ld	s0,8(sp)
    80001a30:	01010113          	addi	sp,sp,16
    80001a34:	00008067          	ret

0000000080001a38 <usertrap>:
    80001a38:	ff010113          	addi	sp,sp,-16
    80001a3c:	00813423          	sd	s0,8(sp)
    80001a40:	01010413          	addi	s0,sp,16
    80001a44:	00813403          	ld	s0,8(sp)
    80001a48:	01010113          	addi	sp,sp,16
    80001a4c:	00008067          	ret

0000000080001a50 <usertrapret>:
    80001a50:	ff010113          	addi	sp,sp,-16
    80001a54:	00813423          	sd	s0,8(sp)
    80001a58:	01010413          	addi	s0,sp,16
    80001a5c:	00813403          	ld	s0,8(sp)
    80001a60:	01010113          	addi	sp,sp,16
    80001a64:	00008067          	ret

0000000080001a68 <kerneltrap>:
    80001a68:	fe010113          	addi	sp,sp,-32
    80001a6c:	00813823          	sd	s0,16(sp)
    80001a70:	00113c23          	sd	ra,24(sp)
    80001a74:	00913423          	sd	s1,8(sp)
    80001a78:	02010413          	addi	s0,sp,32
    80001a7c:	142025f3          	csrr	a1,scause
    80001a80:	100027f3          	csrr	a5,sstatus
    80001a84:	0027f793          	andi	a5,a5,2
    80001a88:	10079c63          	bnez	a5,80001ba0 <kerneltrap+0x138>
    80001a8c:	142027f3          	csrr	a5,scause
    80001a90:	0207ce63          	bltz	a5,80001acc <kerneltrap+0x64>
    80001a94:	00002517          	auipc	a0,0x2
    80001a98:	66c50513          	addi	a0,a0,1644 # 80004100 <_ZZ12printIntegermE6digits+0x100>
    80001a9c:	00001097          	auipc	ra,0x1
    80001aa0:	88c080e7          	jalr	-1908(ra) # 80002328 <__printf>
    80001aa4:	141025f3          	csrr	a1,sepc
    80001aa8:	14302673          	csrr	a2,stval
    80001aac:	00002517          	auipc	a0,0x2
    80001ab0:	66450513          	addi	a0,a0,1636 # 80004110 <_ZZ12printIntegermE6digits+0x110>
    80001ab4:	00001097          	auipc	ra,0x1
    80001ab8:	874080e7          	jalr	-1932(ra) # 80002328 <__printf>
    80001abc:	00002517          	auipc	a0,0x2
    80001ac0:	66c50513          	addi	a0,a0,1644 # 80004128 <_ZZ12printIntegermE6digits+0x128>
    80001ac4:	00001097          	auipc	ra,0x1
    80001ac8:	808080e7          	jalr	-2040(ra) # 800022cc <panic>
    80001acc:	0ff7f713          	andi	a4,a5,255
    80001ad0:	00900693          	li	a3,9
    80001ad4:	04d70063          	beq	a4,a3,80001b14 <kerneltrap+0xac>
    80001ad8:	fff00713          	li	a4,-1
    80001adc:	03f71713          	slli	a4,a4,0x3f
    80001ae0:	00170713          	addi	a4,a4,1
    80001ae4:	fae798e3          	bne	a5,a4,80001a94 <kerneltrap+0x2c>
    80001ae8:	00000097          	auipc	ra,0x0
    80001aec:	e00080e7          	jalr	-512(ra) # 800018e8 <cpuid>
    80001af0:	06050663          	beqz	a0,80001b5c <kerneltrap+0xf4>
    80001af4:	144027f3          	csrr	a5,sip
    80001af8:	ffd7f793          	andi	a5,a5,-3
    80001afc:	14479073          	csrw	sip,a5
    80001b00:	01813083          	ld	ra,24(sp)
    80001b04:	01013403          	ld	s0,16(sp)
    80001b08:	00813483          	ld	s1,8(sp)
    80001b0c:	02010113          	addi	sp,sp,32
    80001b10:	00008067          	ret
    80001b14:	00000097          	auipc	ra,0x0
    80001b18:	3d0080e7          	jalr	976(ra) # 80001ee4 <plic_claim>
    80001b1c:	00a00793          	li	a5,10
    80001b20:	00050493          	mv	s1,a0
    80001b24:	06f50863          	beq	a0,a5,80001b94 <kerneltrap+0x12c>
    80001b28:	fc050ce3          	beqz	a0,80001b00 <kerneltrap+0x98>
    80001b2c:	00050593          	mv	a1,a0
    80001b30:	00002517          	auipc	a0,0x2
    80001b34:	5b050513          	addi	a0,a0,1456 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001b38:	00000097          	auipc	ra,0x0
    80001b3c:	7f0080e7          	jalr	2032(ra) # 80002328 <__printf>
    80001b40:	01013403          	ld	s0,16(sp)
    80001b44:	01813083          	ld	ra,24(sp)
    80001b48:	00048513          	mv	a0,s1
    80001b4c:	00813483          	ld	s1,8(sp)
    80001b50:	02010113          	addi	sp,sp,32
    80001b54:	00000317          	auipc	t1,0x0
    80001b58:	3c830067          	jr	968(t1) # 80001f1c <plic_complete>
    80001b5c:	00004517          	auipc	a0,0x4
    80001b60:	b2450513          	addi	a0,a0,-1244 # 80005680 <tickslock>
    80001b64:	00001097          	auipc	ra,0x1
    80001b68:	498080e7          	jalr	1176(ra) # 80002ffc <acquire>
    80001b6c:	00003717          	auipc	a4,0x3
    80001b70:	a1870713          	addi	a4,a4,-1512 # 80004584 <ticks>
    80001b74:	00072783          	lw	a5,0(a4)
    80001b78:	00004517          	auipc	a0,0x4
    80001b7c:	b0850513          	addi	a0,a0,-1272 # 80005680 <tickslock>
    80001b80:	0017879b          	addiw	a5,a5,1
    80001b84:	00f72023          	sw	a5,0(a4)
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	540080e7          	jalr	1344(ra) # 800030c8 <release>
    80001b90:	f65ff06f          	j	80001af4 <kerneltrap+0x8c>
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	09c080e7          	jalr	156(ra) # 80002c30 <uartintr>
    80001b9c:	fa5ff06f          	j	80001b40 <kerneltrap+0xd8>
    80001ba0:	00002517          	auipc	a0,0x2
    80001ba4:	52050513          	addi	a0,a0,1312 # 800040c0 <_ZZ12printIntegermE6digits+0xc0>
    80001ba8:	00000097          	auipc	ra,0x0
    80001bac:	724080e7          	jalr	1828(ra) # 800022cc <panic>

0000000080001bb0 <clockintr>:
    80001bb0:	fe010113          	addi	sp,sp,-32
    80001bb4:	00813823          	sd	s0,16(sp)
    80001bb8:	00913423          	sd	s1,8(sp)
    80001bbc:	00113c23          	sd	ra,24(sp)
    80001bc0:	02010413          	addi	s0,sp,32
    80001bc4:	00004497          	auipc	s1,0x4
    80001bc8:	abc48493          	addi	s1,s1,-1348 # 80005680 <tickslock>
    80001bcc:	00048513          	mv	a0,s1
    80001bd0:	00001097          	auipc	ra,0x1
    80001bd4:	42c080e7          	jalr	1068(ra) # 80002ffc <acquire>
    80001bd8:	00003717          	auipc	a4,0x3
    80001bdc:	9ac70713          	addi	a4,a4,-1620 # 80004584 <ticks>
    80001be0:	00072783          	lw	a5,0(a4)
    80001be4:	01013403          	ld	s0,16(sp)
    80001be8:	01813083          	ld	ra,24(sp)
    80001bec:	00048513          	mv	a0,s1
    80001bf0:	0017879b          	addiw	a5,a5,1
    80001bf4:	00813483          	ld	s1,8(sp)
    80001bf8:	00f72023          	sw	a5,0(a4)
    80001bfc:	02010113          	addi	sp,sp,32
    80001c00:	00001317          	auipc	t1,0x1
    80001c04:	4c830067          	jr	1224(t1) # 800030c8 <release>

0000000080001c08 <devintr>:
    80001c08:	142027f3          	csrr	a5,scause
    80001c0c:	00000513          	li	a0,0
    80001c10:	0007c463          	bltz	a5,80001c18 <devintr+0x10>
    80001c14:	00008067          	ret
    80001c18:	fe010113          	addi	sp,sp,-32
    80001c1c:	00813823          	sd	s0,16(sp)
    80001c20:	00113c23          	sd	ra,24(sp)
    80001c24:	00913423          	sd	s1,8(sp)
    80001c28:	02010413          	addi	s0,sp,32
    80001c2c:	0ff7f713          	andi	a4,a5,255
    80001c30:	00900693          	li	a3,9
    80001c34:	04d70c63          	beq	a4,a3,80001c8c <devintr+0x84>
    80001c38:	fff00713          	li	a4,-1
    80001c3c:	03f71713          	slli	a4,a4,0x3f
    80001c40:	00170713          	addi	a4,a4,1
    80001c44:	00e78c63          	beq	a5,a4,80001c5c <devintr+0x54>
    80001c48:	01813083          	ld	ra,24(sp)
    80001c4c:	01013403          	ld	s0,16(sp)
    80001c50:	00813483          	ld	s1,8(sp)
    80001c54:	02010113          	addi	sp,sp,32
    80001c58:	00008067          	ret
    80001c5c:	00000097          	auipc	ra,0x0
    80001c60:	c8c080e7          	jalr	-884(ra) # 800018e8 <cpuid>
    80001c64:	06050663          	beqz	a0,80001cd0 <devintr+0xc8>
    80001c68:	144027f3          	csrr	a5,sip
    80001c6c:	ffd7f793          	andi	a5,a5,-3
    80001c70:	14479073          	csrw	sip,a5
    80001c74:	01813083          	ld	ra,24(sp)
    80001c78:	01013403          	ld	s0,16(sp)
    80001c7c:	00813483          	ld	s1,8(sp)
    80001c80:	00200513          	li	a0,2
    80001c84:	02010113          	addi	sp,sp,32
    80001c88:	00008067          	ret
    80001c8c:	00000097          	auipc	ra,0x0
    80001c90:	258080e7          	jalr	600(ra) # 80001ee4 <plic_claim>
    80001c94:	00a00793          	li	a5,10
    80001c98:	00050493          	mv	s1,a0
    80001c9c:	06f50663          	beq	a0,a5,80001d08 <devintr+0x100>
    80001ca0:	00100513          	li	a0,1
    80001ca4:	fa0482e3          	beqz	s1,80001c48 <devintr+0x40>
    80001ca8:	00048593          	mv	a1,s1
    80001cac:	00002517          	auipc	a0,0x2
    80001cb0:	43450513          	addi	a0,a0,1076 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80001cb4:	00000097          	auipc	ra,0x0
    80001cb8:	674080e7          	jalr	1652(ra) # 80002328 <__printf>
    80001cbc:	00048513          	mv	a0,s1
    80001cc0:	00000097          	auipc	ra,0x0
    80001cc4:	25c080e7          	jalr	604(ra) # 80001f1c <plic_complete>
    80001cc8:	00100513          	li	a0,1
    80001ccc:	f7dff06f          	j	80001c48 <devintr+0x40>
    80001cd0:	00004517          	auipc	a0,0x4
    80001cd4:	9b050513          	addi	a0,a0,-1616 # 80005680 <tickslock>
    80001cd8:	00001097          	auipc	ra,0x1
    80001cdc:	324080e7          	jalr	804(ra) # 80002ffc <acquire>
    80001ce0:	00003717          	auipc	a4,0x3
    80001ce4:	8a470713          	addi	a4,a4,-1884 # 80004584 <ticks>
    80001ce8:	00072783          	lw	a5,0(a4)
    80001cec:	00004517          	auipc	a0,0x4
    80001cf0:	99450513          	addi	a0,a0,-1644 # 80005680 <tickslock>
    80001cf4:	0017879b          	addiw	a5,a5,1
    80001cf8:	00f72023          	sw	a5,0(a4)
    80001cfc:	00001097          	auipc	ra,0x1
    80001d00:	3cc080e7          	jalr	972(ra) # 800030c8 <release>
    80001d04:	f65ff06f          	j	80001c68 <devintr+0x60>
    80001d08:	00001097          	auipc	ra,0x1
    80001d0c:	f28080e7          	jalr	-216(ra) # 80002c30 <uartintr>
    80001d10:	fadff06f          	j	80001cbc <devintr+0xb4>
	...

0000000080001d20 <kernelvec>:
    80001d20:	f0010113          	addi	sp,sp,-256
    80001d24:	00113023          	sd	ra,0(sp)
    80001d28:	00213423          	sd	sp,8(sp)
    80001d2c:	00313823          	sd	gp,16(sp)
    80001d30:	00413c23          	sd	tp,24(sp)
    80001d34:	02513023          	sd	t0,32(sp)
    80001d38:	02613423          	sd	t1,40(sp)
    80001d3c:	02713823          	sd	t2,48(sp)
    80001d40:	02813c23          	sd	s0,56(sp)
    80001d44:	04913023          	sd	s1,64(sp)
    80001d48:	04a13423          	sd	a0,72(sp)
    80001d4c:	04b13823          	sd	a1,80(sp)
    80001d50:	04c13c23          	sd	a2,88(sp)
    80001d54:	06d13023          	sd	a3,96(sp)
    80001d58:	06e13423          	sd	a4,104(sp)
    80001d5c:	06f13823          	sd	a5,112(sp)
    80001d60:	07013c23          	sd	a6,120(sp)
    80001d64:	09113023          	sd	a7,128(sp)
    80001d68:	09213423          	sd	s2,136(sp)
    80001d6c:	09313823          	sd	s3,144(sp)
    80001d70:	09413c23          	sd	s4,152(sp)
    80001d74:	0b513023          	sd	s5,160(sp)
    80001d78:	0b613423          	sd	s6,168(sp)
    80001d7c:	0b713823          	sd	s7,176(sp)
    80001d80:	0b813c23          	sd	s8,184(sp)
    80001d84:	0d913023          	sd	s9,192(sp)
    80001d88:	0da13423          	sd	s10,200(sp)
    80001d8c:	0db13823          	sd	s11,208(sp)
    80001d90:	0dc13c23          	sd	t3,216(sp)
    80001d94:	0fd13023          	sd	t4,224(sp)
    80001d98:	0fe13423          	sd	t5,232(sp)
    80001d9c:	0ff13823          	sd	t6,240(sp)
    80001da0:	cc9ff0ef          	jal	ra,80001a68 <kerneltrap>
    80001da4:	00013083          	ld	ra,0(sp)
    80001da8:	00813103          	ld	sp,8(sp)
    80001dac:	01013183          	ld	gp,16(sp)
    80001db0:	02013283          	ld	t0,32(sp)
    80001db4:	02813303          	ld	t1,40(sp)
    80001db8:	03013383          	ld	t2,48(sp)
    80001dbc:	03813403          	ld	s0,56(sp)
    80001dc0:	04013483          	ld	s1,64(sp)
    80001dc4:	04813503          	ld	a0,72(sp)
    80001dc8:	05013583          	ld	a1,80(sp)
    80001dcc:	05813603          	ld	a2,88(sp)
    80001dd0:	06013683          	ld	a3,96(sp)
    80001dd4:	06813703          	ld	a4,104(sp)
    80001dd8:	07013783          	ld	a5,112(sp)
    80001ddc:	07813803          	ld	a6,120(sp)
    80001de0:	08013883          	ld	a7,128(sp)
    80001de4:	08813903          	ld	s2,136(sp)
    80001de8:	09013983          	ld	s3,144(sp)
    80001dec:	09813a03          	ld	s4,152(sp)
    80001df0:	0a013a83          	ld	s5,160(sp)
    80001df4:	0a813b03          	ld	s6,168(sp)
    80001df8:	0b013b83          	ld	s7,176(sp)
    80001dfc:	0b813c03          	ld	s8,184(sp)
    80001e00:	0c013c83          	ld	s9,192(sp)
    80001e04:	0c813d03          	ld	s10,200(sp)
    80001e08:	0d013d83          	ld	s11,208(sp)
    80001e0c:	0d813e03          	ld	t3,216(sp)
    80001e10:	0e013e83          	ld	t4,224(sp)
    80001e14:	0e813f03          	ld	t5,232(sp)
    80001e18:	0f013f83          	ld	t6,240(sp)
    80001e1c:	10010113          	addi	sp,sp,256
    80001e20:	10200073          	sret
    80001e24:	00000013          	nop
    80001e28:	00000013          	nop
    80001e2c:	00000013          	nop

0000000080001e30 <timervec>:
    80001e30:	34051573          	csrrw	a0,mscratch,a0
    80001e34:	00b53023          	sd	a1,0(a0)
    80001e38:	00c53423          	sd	a2,8(a0)
    80001e3c:	00d53823          	sd	a3,16(a0)
    80001e40:	01853583          	ld	a1,24(a0)
    80001e44:	02053603          	ld	a2,32(a0)
    80001e48:	0005b683          	ld	a3,0(a1)
    80001e4c:	00c686b3          	add	a3,a3,a2
    80001e50:	00d5b023          	sd	a3,0(a1)
    80001e54:	00200593          	li	a1,2
    80001e58:	14459073          	csrw	sip,a1
    80001e5c:	01053683          	ld	a3,16(a0)
    80001e60:	00853603          	ld	a2,8(a0)
    80001e64:	00053583          	ld	a1,0(a0)
    80001e68:	34051573          	csrrw	a0,mscratch,a0
    80001e6c:	30200073          	mret

0000000080001e70 <plicinit>:
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    80001e7c:	00813403          	ld	s0,8(sp)
    80001e80:	0c0007b7          	lui	a5,0xc000
    80001e84:	00100713          	li	a4,1
    80001e88:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    80001e8c:	00e7a223          	sw	a4,4(a5)
    80001e90:	01010113          	addi	sp,sp,16
    80001e94:	00008067          	ret

0000000080001e98 <plicinithart>:
    80001e98:	ff010113          	addi	sp,sp,-16
    80001e9c:	00813023          	sd	s0,0(sp)
    80001ea0:	00113423          	sd	ra,8(sp)
    80001ea4:	01010413          	addi	s0,sp,16
    80001ea8:	00000097          	auipc	ra,0x0
    80001eac:	a40080e7          	jalr	-1472(ra) # 800018e8 <cpuid>
    80001eb0:	0085171b          	slliw	a4,a0,0x8
    80001eb4:	0c0027b7          	lui	a5,0xc002
    80001eb8:	00e787b3          	add	a5,a5,a4
    80001ebc:	40200713          	li	a4,1026
    80001ec0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80001ec4:	00813083          	ld	ra,8(sp)
    80001ec8:	00013403          	ld	s0,0(sp)
    80001ecc:	00d5151b          	slliw	a0,a0,0xd
    80001ed0:	0c2017b7          	lui	a5,0xc201
    80001ed4:	00a78533          	add	a0,a5,a0
    80001ed8:	00052023          	sw	zero,0(a0)
    80001edc:	01010113          	addi	sp,sp,16
    80001ee0:	00008067          	ret

0000000080001ee4 <plic_claim>:
    80001ee4:	ff010113          	addi	sp,sp,-16
    80001ee8:	00813023          	sd	s0,0(sp)
    80001eec:	00113423          	sd	ra,8(sp)
    80001ef0:	01010413          	addi	s0,sp,16
    80001ef4:	00000097          	auipc	ra,0x0
    80001ef8:	9f4080e7          	jalr	-1548(ra) # 800018e8 <cpuid>
    80001efc:	00813083          	ld	ra,8(sp)
    80001f00:	00013403          	ld	s0,0(sp)
    80001f04:	00d5151b          	slliw	a0,a0,0xd
    80001f08:	0c2017b7          	lui	a5,0xc201
    80001f0c:	00a78533          	add	a0,a5,a0
    80001f10:	00452503          	lw	a0,4(a0)
    80001f14:	01010113          	addi	sp,sp,16
    80001f18:	00008067          	ret

0000000080001f1c <plic_complete>:
    80001f1c:	fe010113          	addi	sp,sp,-32
    80001f20:	00813823          	sd	s0,16(sp)
    80001f24:	00913423          	sd	s1,8(sp)
    80001f28:	00113c23          	sd	ra,24(sp)
    80001f2c:	02010413          	addi	s0,sp,32
    80001f30:	00050493          	mv	s1,a0
    80001f34:	00000097          	auipc	ra,0x0
    80001f38:	9b4080e7          	jalr	-1612(ra) # 800018e8 <cpuid>
    80001f3c:	01813083          	ld	ra,24(sp)
    80001f40:	01013403          	ld	s0,16(sp)
    80001f44:	00d5179b          	slliw	a5,a0,0xd
    80001f48:	0c201737          	lui	a4,0xc201
    80001f4c:	00f707b3          	add	a5,a4,a5
    80001f50:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001f54:	00813483          	ld	s1,8(sp)
    80001f58:	02010113          	addi	sp,sp,32
    80001f5c:	00008067          	ret

0000000080001f60 <consolewrite>:
    80001f60:	fb010113          	addi	sp,sp,-80
    80001f64:	04813023          	sd	s0,64(sp)
    80001f68:	04113423          	sd	ra,72(sp)
    80001f6c:	02913c23          	sd	s1,56(sp)
    80001f70:	03213823          	sd	s2,48(sp)
    80001f74:	03313423          	sd	s3,40(sp)
    80001f78:	03413023          	sd	s4,32(sp)
    80001f7c:	01513c23          	sd	s5,24(sp)
    80001f80:	05010413          	addi	s0,sp,80
    80001f84:	06c05c63          	blez	a2,80001ffc <consolewrite+0x9c>
    80001f88:	00060993          	mv	s3,a2
    80001f8c:	00050a13          	mv	s4,a0
    80001f90:	00058493          	mv	s1,a1
    80001f94:	00000913          	li	s2,0
    80001f98:	fff00a93          	li	s5,-1
    80001f9c:	01c0006f          	j	80001fb8 <consolewrite+0x58>
    80001fa0:	fbf44503          	lbu	a0,-65(s0)
    80001fa4:	0019091b          	addiw	s2,s2,1
    80001fa8:	00148493          	addi	s1,s1,1
    80001fac:	00001097          	auipc	ra,0x1
    80001fb0:	a9c080e7          	jalr	-1380(ra) # 80002a48 <uartputc>
    80001fb4:	03298063          	beq	s3,s2,80001fd4 <consolewrite+0x74>
    80001fb8:	00048613          	mv	a2,s1
    80001fbc:	00100693          	li	a3,1
    80001fc0:	000a0593          	mv	a1,s4
    80001fc4:	fbf40513          	addi	a0,s0,-65
    80001fc8:	00000097          	auipc	ra,0x0
    80001fcc:	9d8080e7          	jalr	-1576(ra) # 800019a0 <either_copyin>
    80001fd0:	fd5518e3          	bne	a0,s5,80001fa0 <consolewrite+0x40>
    80001fd4:	04813083          	ld	ra,72(sp)
    80001fd8:	04013403          	ld	s0,64(sp)
    80001fdc:	03813483          	ld	s1,56(sp)
    80001fe0:	02813983          	ld	s3,40(sp)
    80001fe4:	02013a03          	ld	s4,32(sp)
    80001fe8:	01813a83          	ld	s5,24(sp)
    80001fec:	00090513          	mv	a0,s2
    80001ff0:	03013903          	ld	s2,48(sp)
    80001ff4:	05010113          	addi	sp,sp,80
    80001ff8:	00008067          	ret
    80001ffc:	00000913          	li	s2,0
    80002000:	fd5ff06f          	j	80001fd4 <consolewrite+0x74>

0000000080002004 <consoleread>:
    80002004:	f9010113          	addi	sp,sp,-112
    80002008:	06813023          	sd	s0,96(sp)
    8000200c:	04913c23          	sd	s1,88(sp)
    80002010:	05213823          	sd	s2,80(sp)
    80002014:	05313423          	sd	s3,72(sp)
    80002018:	05413023          	sd	s4,64(sp)
    8000201c:	03513c23          	sd	s5,56(sp)
    80002020:	03613823          	sd	s6,48(sp)
    80002024:	03713423          	sd	s7,40(sp)
    80002028:	03813023          	sd	s8,32(sp)
    8000202c:	06113423          	sd	ra,104(sp)
    80002030:	01913c23          	sd	s9,24(sp)
    80002034:	07010413          	addi	s0,sp,112
    80002038:	00060b93          	mv	s7,a2
    8000203c:	00050913          	mv	s2,a0
    80002040:	00058c13          	mv	s8,a1
    80002044:	00060b1b          	sext.w	s6,a2
    80002048:	00003497          	auipc	s1,0x3
    8000204c:	66048493          	addi	s1,s1,1632 # 800056a8 <cons>
    80002050:	00400993          	li	s3,4
    80002054:	fff00a13          	li	s4,-1
    80002058:	00a00a93          	li	s5,10
    8000205c:	05705e63          	blez	s7,800020b8 <consoleread+0xb4>
    80002060:	09c4a703          	lw	a4,156(s1)
    80002064:	0984a783          	lw	a5,152(s1)
    80002068:	0007071b          	sext.w	a4,a4
    8000206c:	08e78463          	beq	a5,a4,800020f4 <consoleread+0xf0>
    80002070:	07f7f713          	andi	a4,a5,127
    80002074:	00e48733          	add	a4,s1,a4
    80002078:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000207c:	0017869b          	addiw	a3,a5,1
    80002080:	08d4ac23          	sw	a3,152(s1)
    80002084:	00070c9b          	sext.w	s9,a4
    80002088:	0b370663          	beq	a4,s3,80002134 <consoleread+0x130>
    8000208c:	00100693          	li	a3,1
    80002090:	f9f40613          	addi	a2,s0,-97
    80002094:	000c0593          	mv	a1,s8
    80002098:	00090513          	mv	a0,s2
    8000209c:	f8e40fa3          	sb	a4,-97(s0)
    800020a0:	00000097          	auipc	ra,0x0
    800020a4:	8b4080e7          	jalr	-1868(ra) # 80001954 <either_copyout>
    800020a8:	01450863          	beq	a0,s4,800020b8 <consoleread+0xb4>
    800020ac:	001c0c13          	addi	s8,s8,1
    800020b0:	fffb8b9b          	addiw	s7,s7,-1
    800020b4:	fb5c94e3          	bne	s9,s5,8000205c <consoleread+0x58>
    800020b8:	000b851b          	sext.w	a0,s7
    800020bc:	06813083          	ld	ra,104(sp)
    800020c0:	06013403          	ld	s0,96(sp)
    800020c4:	05813483          	ld	s1,88(sp)
    800020c8:	05013903          	ld	s2,80(sp)
    800020cc:	04813983          	ld	s3,72(sp)
    800020d0:	04013a03          	ld	s4,64(sp)
    800020d4:	03813a83          	ld	s5,56(sp)
    800020d8:	02813b83          	ld	s7,40(sp)
    800020dc:	02013c03          	ld	s8,32(sp)
    800020e0:	01813c83          	ld	s9,24(sp)
    800020e4:	40ab053b          	subw	a0,s6,a0
    800020e8:	03013b03          	ld	s6,48(sp)
    800020ec:	07010113          	addi	sp,sp,112
    800020f0:	00008067          	ret
    800020f4:	00001097          	auipc	ra,0x1
    800020f8:	1d8080e7          	jalr	472(ra) # 800032cc <push_on>
    800020fc:	0984a703          	lw	a4,152(s1)
    80002100:	09c4a783          	lw	a5,156(s1)
    80002104:	0007879b          	sext.w	a5,a5
    80002108:	fef70ce3          	beq	a4,a5,80002100 <consoleread+0xfc>
    8000210c:	00001097          	auipc	ra,0x1
    80002110:	234080e7          	jalr	564(ra) # 80003340 <pop_on>
    80002114:	0984a783          	lw	a5,152(s1)
    80002118:	07f7f713          	andi	a4,a5,127
    8000211c:	00e48733          	add	a4,s1,a4
    80002120:	01874703          	lbu	a4,24(a4)
    80002124:	0017869b          	addiw	a3,a5,1
    80002128:	08d4ac23          	sw	a3,152(s1)
    8000212c:	00070c9b          	sext.w	s9,a4
    80002130:	f5371ee3          	bne	a4,s3,8000208c <consoleread+0x88>
    80002134:	000b851b          	sext.w	a0,s7
    80002138:	f96bf2e3          	bgeu	s7,s6,800020bc <consoleread+0xb8>
    8000213c:	08f4ac23          	sw	a5,152(s1)
    80002140:	f7dff06f          	j	800020bc <consoleread+0xb8>

0000000080002144 <consputc>:
    80002144:	10000793          	li	a5,256
    80002148:	00f50663          	beq	a0,a5,80002154 <consputc+0x10>
    8000214c:	00001317          	auipc	t1,0x1
    80002150:	9f430067          	jr	-1548(t1) # 80002b40 <uartputc_sync>
    80002154:	ff010113          	addi	sp,sp,-16
    80002158:	00113423          	sd	ra,8(sp)
    8000215c:	00813023          	sd	s0,0(sp)
    80002160:	01010413          	addi	s0,sp,16
    80002164:	00800513          	li	a0,8
    80002168:	00001097          	auipc	ra,0x1
    8000216c:	9d8080e7          	jalr	-1576(ra) # 80002b40 <uartputc_sync>
    80002170:	02000513          	li	a0,32
    80002174:	00001097          	auipc	ra,0x1
    80002178:	9cc080e7          	jalr	-1588(ra) # 80002b40 <uartputc_sync>
    8000217c:	00013403          	ld	s0,0(sp)
    80002180:	00813083          	ld	ra,8(sp)
    80002184:	00800513          	li	a0,8
    80002188:	01010113          	addi	sp,sp,16
    8000218c:	00001317          	auipc	t1,0x1
    80002190:	9b430067          	jr	-1612(t1) # 80002b40 <uartputc_sync>

0000000080002194 <consoleintr>:
    80002194:	fe010113          	addi	sp,sp,-32
    80002198:	00813823          	sd	s0,16(sp)
    8000219c:	00913423          	sd	s1,8(sp)
    800021a0:	01213023          	sd	s2,0(sp)
    800021a4:	00113c23          	sd	ra,24(sp)
    800021a8:	02010413          	addi	s0,sp,32
    800021ac:	00003917          	auipc	s2,0x3
    800021b0:	4fc90913          	addi	s2,s2,1276 # 800056a8 <cons>
    800021b4:	00050493          	mv	s1,a0
    800021b8:	00090513          	mv	a0,s2
    800021bc:	00001097          	auipc	ra,0x1
    800021c0:	e40080e7          	jalr	-448(ra) # 80002ffc <acquire>
    800021c4:	02048c63          	beqz	s1,800021fc <consoleintr+0x68>
    800021c8:	0a092783          	lw	a5,160(s2)
    800021cc:	09892703          	lw	a4,152(s2)
    800021d0:	07f00693          	li	a3,127
    800021d4:	40e7873b          	subw	a4,a5,a4
    800021d8:	02e6e263          	bltu	a3,a4,800021fc <consoleintr+0x68>
    800021dc:	00d00713          	li	a4,13
    800021e0:	04e48063          	beq	s1,a4,80002220 <consoleintr+0x8c>
    800021e4:	07f7f713          	andi	a4,a5,127
    800021e8:	00e90733          	add	a4,s2,a4
    800021ec:	0017879b          	addiw	a5,a5,1
    800021f0:	0af92023          	sw	a5,160(s2)
    800021f4:	00970c23          	sb	s1,24(a4)
    800021f8:	08f92e23          	sw	a5,156(s2)
    800021fc:	01013403          	ld	s0,16(sp)
    80002200:	01813083          	ld	ra,24(sp)
    80002204:	00813483          	ld	s1,8(sp)
    80002208:	00013903          	ld	s2,0(sp)
    8000220c:	00003517          	auipc	a0,0x3
    80002210:	49c50513          	addi	a0,a0,1180 # 800056a8 <cons>
    80002214:	02010113          	addi	sp,sp,32
    80002218:	00001317          	auipc	t1,0x1
    8000221c:	eb030067          	jr	-336(t1) # 800030c8 <release>
    80002220:	00a00493          	li	s1,10
    80002224:	fc1ff06f          	j	800021e4 <consoleintr+0x50>

0000000080002228 <consoleinit>:
    80002228:	fe010113          	addi	sp,sp,-32
    8000222c:	00113c23          	sd	ra,24(sp)
    80002230:	00813823          	sd	s0,16(sp)
    80002234:	00913423          	sd	s1,8(sp)
    80002238:	02010413          	addi	s0,sp,32
    8000223c:	00003497          	auipc	s1,0x3
    80002240:	46c48493          	addi	s1,s1,1132 # 800056a8 <cons>
    80002244:	00048513          	mv	a0,s1
    80002248:	00002597          	auipc	a1,0x2
    8000224c:	ef058593          	addi	a1,a1,-272 # 80004138 <_ZZ12printIntegermE6digits+0x138>
    80002250:	00001097          	auipc	ra,0x1
    80002254:	d88080e7          	jalr	-632(ra) # 80002fd8 <initlock>
    80002258:	00000097          	auipc	ra,0x0
    8000225c:	7ac080e7          	jalr	1964(ra) # 80002a04 <uartinit>
    80002260:	01813083          	ld	ra,24(sp)
    80002264:	01013403          	ld	s0,16(sp)
    80002268:	00000797          	auipc	a5,0x0
    8000226c:	d9c78793          	addi	a5,a5,-612 # 80002004 <consoleread>
    80002270:	0af4bc23          	sd	a5,184(s1)
    80002274:	00000797          	auipc	a5,0x0
    80002278:	cec78793          	addi	a5,a5,-788 # 80001f60 <consolewrite>
    8000227c:	0cf4b023          	sd	a5,192(s1)
    80002280:	00813483          	ld	s1,8(sp)
    80002284:	02010113          	addi	sp,sp,32
    80002288:	00008067          	ret

000000008000228c <console_read>:
    8000228c:	ff010113          	addi	sp,sp,-16
    80002290:	00813423          	sd	s0,8(sp)
    80002294:	01010413          	addi	s0,sp,16
    80002298:	00813403          	ld	s0,8(sp)
    8000229c:	00003317          	auipc	t1,0x3
    800022a0:	4c433303          	ld	t1,1220(t1) # 80005760 <devsw+0x10>
    800022a4:	01010113          	addi	sp,sp,16
    800022a8:	00030067          	jr	t1

00000000800022ac <console_write>:
    800022ac:	ff010113          	addi	sp,sp,-16
    800022b0:	00813423          	sd	s0,8(sp)
    800022b4:	01010413          	addi	s0,sp,16
    800022b8:	00813403          	ld	s0,8(sp)
    800022bc:	00003317          	auipc	t1,0x3
    800022c0:	4ac33303          	ld	t1,1196(t1) # 80005768 <devsw+0x18>
    800022c4:	01010113          	addi	sp,sp,16
    800022c8:	00030067          	jr	t1

00000000800022cc <panic>:
    800022cc:	fe010113          	addi	sp,sp,-32
    800022d0:	00113c23          	sd	ra,24(sp)
    800022d4:	00813823          	sd	s0,16(sp)
    800022d8:	00913423          	sd	s1,8(sp)
    800022dc:	02010413          	addi	s0,sp,32
    800022e0:	00050493          	mv	s1,a0
    800022e4:	00002517          	auipc	a0,0x2
    800022e8:	e5c50513          	addi	a0,a0,-420 # 80004140 <_ZZ12printIntegermE6digits+0x140>
    800022ec:	00003797          	auipc	a5,0x3
    800022f0:	5007ae23          	sw	zero,1308(a5) # 80005808 <pr+0x18>
    800022f4:	00000097          	auipc	ra,0x0
    800022f8:	034080e7          	jalr	52(ra) # 80002328 <__printf>
    800022fc:	00048513          	mv	a0,s1
    80002300:	00000097          	auipc	ra,0x0
    80002304:	028080e7          	jalr	40(ra) # 80002328 <__printf>
    80002308:	00002517          	auipc	a0,0x2
    8000230c:	e1850513          	addi	a0,a0,-488 # 80004120 <_ZZ12printIntegermE6digits+0x120>
    80002310:	00000097          	auipc	ra,0x0
    80002314:	018080e7          	jalr	24(ra) # 80002328 <__printf>
    80002318:	00100793          	li	a5,1
    8000231c:	00002717          	auipc	a4,0x2
    80002320:	26f72623          	sw	a5,620(a4) # 80004588 <panicked>
    80002324:	0000006f          	j	80002324 <panic+0x58>

0000000080002328 <__printf>:
    80002328:	f3010113          	addi	sp,sp,-208
    8000232c:	08813023          	sd	s0,128(sp)
    80002330:	07313423          	sd	s3,104(sp)
    80002334:	09010413          	addi	s0,sp,144
    80002338:	05813023          	sd	s8,64(sp)
    8000233c:	08113423          	sd	ra,136(sp)
    80002340:	06913c23          	sd	s1,120(sp)
    80002344:	07213823          	sd	s2,112(sp)
    80002348:	07413023          	sd	s4,96(sp)
    8000234c:	05513c23          	sd	s5,88(sp)
    80002350:	05613823          	sd	s6,80(sp)
    80002354:	05713423          	sd	s7,72(sp)
    80002358:	03913c23          	sd	s9,56(sp)
    8000235c:	03a13823          	sd	s10,48(sp)
    80002360:	03b13423          	sd	s11,40(sp)
    80002364:	00003317          	auipc	t1,0x3
    80002368:	48c30313          	addi	t1,t1,1164 # 800057f0 <pr>
    8000236c:	01832c03          	lw	s8,24(t1)
    80002370:	00b43423          	sd	a1,8(s0)
    80002374:	00c43823          	sd	a2,16(s0)
    80002378:	00d43c23          	sd	a3,24(s0)
    8000237c:	02e43023          	sd	a4,32(s0)
    80002380:	02f43423          	sd	a5,40(s0)
    80002384:	03043823          	sd	a6,48(s0)
    80002388:	03143c23          	sd	a7,56(s0)
    8000238c:	00050993          	mv	s3,a0
    80002390:	4a0c1663          	bnez	s8,8000283c <__printf+0x514>
    80002394:	60098c63          	beqz	s3,800029ac <__printf+0x684>
    80002398:	0009c503          	lbu	a0,0(s3)
    8000239c:	00840793          	addi	a5,s0,8
    800023a0:	f6f43c23          	sd	a5,-136(s0)
    800023a4:	00000493          	li	s1,0
    800023a8:	22050063          	beqz	a0,800025c8 <__printf+0x2a0>
    800023ac:	00002a37          	lui	s4,0x2
    800023b0:	00018ab7          	lui	s5,0x18
    800023b4:	000f4b37          	lui	s6,0xf4
    800023b8:	00989bb7          	lui	s7,0x989
    800023bc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    800023c0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    800023c4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    800023c8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    800023cc:	00148c9b          	addiw	s9,s1,1
    800023d0:	02500793          	li	a5,37
    800023d4:	01998933          	add	s2,s3,s9
    800023d8:	38f51263          	bne	a0,a5,8000275c <__printf+0x434>
    800023dc:	00094783          	lbu	a5,0(s2)
    800023e0:	00078c9b          	sext.w	s9,a5
    800023e4:	1e078263          	beqz	a5,800025c8 <__printf+0x2a0>
    800023e8:	0024849b          	addiw	s1,s1,2
    800023ec:	07000713          	li	a4,112
    800023f0:	00998933          	add	s2,s3,s1
    800023f4:	38e78a63          	beq	a5,a4,80002788 <__printf+0x460>
    800023f8:	20f76863          	bltu	a4,a5,80002608 <__printf+0x2e0>
    800023fc:	42a78863          	beq	a5,a0,8000282c <__printf+0x504>
    80002400:	06400713          	li	a4,100
    80002404:	40e79663          	bne	a5,a4,80002810 <__printf+0x4e8>
    80002408:	f7843783          	ld	a5,-136(s0)
    8000240c:	0007a603          	lw	a2,0(a5)
    80002410:	00878793          	addi	a5,a5,8
    80002414:	f6f43c23          	sd	a5,-136(s0)
    80002418:	42064a63          	bltz	a2,8000284c <__printf+0x524>
    8000241c:	00a00713          	li	a4,10
    80002420:	02e677bb          	remuw	a5,a2,a4
    80002424:	00002d97          	auipc	s11,0x2
    80002428:	d44d8d93          	addi	s11,s11,-700 # 80004168 <digits>
    8000242c:	00900593          	li	a1,9
    80002430:	0006051b          	sext.w	a0,a2
    80002434:	00000c93          	li	s9,0
    80002438:	02079793          	slli	a5,a5,0x20
    8000243c:	0207d793          	srli	a5,a5,0x20
    80002440:	00fd87b3          	add	a5,s11,a5
    80002444:	0007c783          	lbu	a5,0(a5)
    80002448:	02e656bb          	divuw	a3,a2,a4
    8000244c:	f8f40023          	sb	a5,-128(s0)
    80002450:	14c5d863          	bge	a1,a2,800025a0 <__printf+0x278>
    80002454:	06300593          	li	a1,99
    80002458:	00100c93          	li	s9,1
    8000245c:	02e6f7bb          	remuw	a5,a3,a4
    80002460:	02079793          	slli	a5,a5,0x20
    80002464:	0207d793          	srli	a5,a5,0x20
    80002468:	00fd87b3          	add	a5,s11,a5
    8000246c:	0007c783          	lbu	a5,0(a5)
    80002470:	02e6d73b          	divuw	a4,a3,a4
    80002474:	f8f400a3          	sb	a5,-127(s0)
    80002478:	12a5f463          	bgeu	a1,a0,800025a0 <__printf+0x278>
    8000247c:	00a00693          	li	a3,10
    80002480:	00900593          	li	a1,9
    80002484:	02d777bb          	remuw	a5,a4,a3
    80002488:	02079793          	slli	a5,a5,0x20
    8000248c:	0207d793          	srli	a5,a5,0x20
    80002490:	00fd87b3          	add	a5,s11,a5
    80002494:	0007c503          	lbu	a0,0(a5)
    80002498:	02d757bb          	divuw	a5,a4,a3
    8000249c:	f8a40123          	sb	a0,-126(s0)
    800024a0:	48e5f263          	bgeu	a1,a4,80002924 <__printf+0x5fc>
    800024a4:	06300513          	li	a0,99
    800024a8:	02d7f5bb          	remuw	a1,a5,a3
    800024ac:	02059593          	slli	a1,a1,0x20
    800024b0:	0205d593          	srli	a1,a1,0x20
    800024b4:	00bd85b3          	add	a1,s11,a1
    800024b8:	0005c583          	lbu	a1,0(a1)
    800024bc:	02d7d7bb          	divuw	a5,a5,a3
    800024c0:	f8b401a3          	sb	a1,-125(s0)
    800024c4:	48e57263          	bgeu	a0,a4,80002948 <__printf+0x620>
    800024c8:	3e700513          	li	a0,999
    800024cc:	02d7f5bb          	remuw	a1,a5,a3
    800024d0:	02059593          	slli	a1,a1,0x20
    800024d4:	0205d593          	srli	a1,a1,0x20
    800024d8:	00bd85b3          	add	a1,s11,a1
    800024dc:	0005c583          	lbu	a1,0(a1)
    800024e0:	02d7d7bb          	divuw	a5,a5,a3
    800024e4:	f8b40223          	sb	a1,-124(s0)
    800024e8:	46e57663          	bgeu	a0,a4,80002954 <__printf+0x62c>
    800024ec:	02d7f5bb          	remuw	a1,a5,a3
    800024f0:	02059593          	slli	a1,a1,0x20
    800024f4:	0205d593          	srli	a1,a1,0x20
    800024f8:	00bd85b3          	add	a1,s11,a1
    800024fc:	0005c583          	lbu	a1,0(a1)
    80002500:	02d7d7bb          	divuw	a5,a5,a3
    80002504:	f8b402a3          	sb	a1,-123(s0)
    80002508:	46ea7863          	bgeu	s4,a4,80002978 <__printf+0x650>
    8000250c:	02d7f5bb          	remuw	a1,a5,a3
    80002510:	02059593          	slli	a1,a1,0x20
    80002514:	0205d593          	srli	a1,a1,0x20
    80002518:	00bd85b3          	add	a1,s11,a1
    8000251c:	0005c583          	lbu	a1,0(a1)
    80002520:	02d7d7bb          	divuw	a5,a5,a3
    80002524:	f8b40323          	sb	a1,-122(s0)
    80002528:	3eeaf863          	bgeu	s5,a4,80002918 <__printf+0x5f0>
    8000252c:	02d7f5bb          	remuw	a1,a5,a3
    80002530:	02059593          	slli	a1,a1,0x20
    80002534:	0205d593          	srli	a1,a1,0x20
    80002538:	00bd85b3          	add	a1,s11,a1
    8000253c:	0005c583          	lbu	a1,0(a1)
    80002540:	02d7d7bb          	divuw	a5,a5,a3
    80002544:	f8b403a3          	sb	a1,-121(s0)
    80002548:	42eb7e63          	bgeu	s6,a4,80002984 <__printf+0x65c>
    8000254c:	02d7f5bb          	remuw	a1,a5,a3
    80002550:	02059593          	slli	a1,a1,0x20
    80002554:	0205d593          	srli	a1,a1,0x20
    80002558:	00bd85b3          	add	a1,s11,a1
    8000255c:	0005c583          	lbu	a1,0(a1)
    80002560:	02d7d7bb          	divuw	a5,a5,a3
    80002564:	f8b40423          	sb	a1,-120(s0)
    80002568:	42ebfc63          	bgeu	s7,a4,800029a0 <__printf+0x678>
    8000256c:	02079793          	slli	a5,a5,0x20
    80002570:	0207d793          	srli	a5,a5,0x20
    80002574:	00fd8db3          	add	s11,s11,a5
    80002578:	000dc703          	lbu	a4,0(s11)
    8000257c:	00a00793          	li	a5,10
    80002580:	00900c93          	li	s9,9
    80002584:	f8e404a3          	sb	a4,-119(s0)
    80002588:	00065c63          	bgez	a2,800025a0 <__printf+0x278>
    8000258c:	f9040713          	addi	a4,s0,-112
    80002590:	00f70733          	add	a4,a4,a5
    80002594:	02d00693          	li	a3,45
    80002598:	fed70823          	sb	a3,-16(a4)
    8000259c:	00078c93          	mv	s9,a5
    800025a0:	f8040793          	addi	a5,s0,-128
    800025a4:	01978cb3          	add	s9,a5,s9
    800025a8:	f7f40d13          	addi	s10,s0,-129
    800025ac:	000cc503          	lbu	a0,0(s9)
    800025b0:	fffc8c93          	addi	s9,s9,-1
    800025b4:	00000097          	auipc	ra,0x0
    800025b8:	b90080e7          	jalr	-1136(ra) # 80002144 <consputc>
    800025bc:	ffac98e3          	bne	s9,s10,800025ac <__printf+0x284>
    800025c0:	00094503          	lbu	a0,0(s2)
    800025c4:	e00514e3          	bnez	a0,800023cc <__printf+0xa4>
    800025c8:	1a0c1663          	bnez	s8,80002774 <__printf+0x44c>
    800025cc:	08813083          	ld	ra,136(sp)
    800025d0:	08013403          	ld	s0,128(sp)
    800025d4:	07813483          	ld	s1,120(sp)
    800025d8:	07013903          	ld	s2,112(sp)
    800025dc:	06813983          	ld	s3,104(sp)
    800025e0:	06013a03          	ld	s4,96(sp)
    800025e4:	05813a83          	ld	s5,88(sp)
    800025e8:	05013b03          	ld	s6,80(sp)
    800025ec:	04813b83          	ld	s7,72(sp)
    800025f0:	04013c03          	ld	s8,64(sp)
    800025f4:	03813c83          	ld	s9,56(sp)
    800025f8:	03013d03          	ld	s10,48(sp)
    800025fc:	02813d83          	ld	s11,40(sp)
    80002600:	0d010113          	addi	sp,sp,208
    80002604:	00008067          	ret
    80002608:	07300713          	li	a4,115
    8000260c:	1ce78a63          	beq	a5,a4,800027e0 <__printf+0x4b8>
    80002610:	07800713          	li	a4,120
    80002614:	1ee79e63          	bne	a5,a4,80002810 <__printf+0x4e8>
    80002618:	f7843783          	ld	a5,-136(s0)
    8000261c:	0007a703          	lw	a4,0(a5)
    80002620:	00878793          	addi	a5,a5,8
    80002624:	f6f43c23          	sd	a5,-136(s0)
    80002628:	28074263          	bltz	a4,800028ac <__printf+0x584>
    8000262c:	00002d97          	auipc	s11,0x2
    80002630:	b3cd8d93          	addi	s11,s11,-1220 # 80004168 <digits>
    80002634:	00f77793          	andi	a5,a4,15
    80002638:	00fd87b3          	add	a5,s11,a5
    8000263c:	0007c683          	lbu	a3,0(a5)
    80002640:	00f00613          	li	a2,15
    80002644:	0007079b          	sext.w	a5,a4
    80002648:	f8d40023          	sb	a3,-128(s0)
    8000264c:	0047559b          	srliw	a1,a4,0x4
    80002650:	0047569b          	srliw	a3,a4,0x4
    80002654:	00000c93          	li	s9,0
    80002658:	0ee65063          	bge	a2,a4,80002738 <__printf+0x410>
    8000265c:	00f6f693          	andi	a3,a3,15
    80002660:	00dd86b3          	add	a3,s11,a3
    80002664:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002668:	0087d79b          	srliw	a5,a5,0x8
    8000266c:	00100c93          	li	s9,1
    80002670:	f8d400a3          	sb	a3,-127(s0)
    80002674:	0cb67263          	bgeu	a2,a1,80002738 <__printf+0x410>
    80002678:	00f7f693          	andi	a3,a5,15
    8000267c:	00dd86b3          	add	a3,s11,a3
    80002680:	0006c583          	lbu	a1,0(a3)
    80002684:	00f00613          	li	a2,15
    80002688:	0047d69b          	srliw	a3,a5,0x4
    8000268c:	f8b40123          	sb	a1,-126(s0)
    80002690:	0047d593          	srli	a1,a5,0x4
    80002694:	28f67e63          	bgeu	a2,a5,80002930 <__printf+0x608>
    80002698:	00f6f693          	andi	a3,a3,15
    8000269c:	00dd86b3          	add	a3,s11,a3
    800026a0:	0006c503          	lbu	a0,0(a3)
    800026a4:	0087d813          	srli	a6,a5,0x8
    800026a8:	0087d69b          	srliw	a3,a5,0x8
    800026ac:	f8a401a3          	sb	a0,-125(s0)
    800026b0:	28b67663          	bgeu	a2,a1,8000293c <__printf+0x614>
    800026b4:	00f6f693          	andi	a3,a3,15
    800026b8:	00dd86b3          	add	a3,s11,a3
    800026bc:	0006c583          	lbu	a1,0(a3)
    800026c0:	00c7d513          	srli	a0,a5,0xc
    800026c4:	00c7d69b          	srliw	a3,a5,0xc
    800026c8:	f8b40223          	sb	a1,-124(s0)
    800026cc:	29067a63          	bgeu	a2,a6,80002960 <__printf+0x638>
    800026d0:	00f6f693          	andi	a3,a3,15
    800026d4:	00dd86b3          	add	a3,s11,a3
    800026d8:	0006c583          	lbu	a1,0(a3)
    800026dc:	0107d813          	srli	a6,a5,0x10
    800026e0:	0107d69b          	srliw	a3,a5,0x10
    800026e4:	f8b402a3          	sb	a1,-123(s0)
    800026e8:	28a67263          	bgeu	a2,a0,8000296c <__printf+0x644>
    800026ec:	00f6f693          	andi	a3,a3,15
    800026f0:	00dd86b3          	add	a3,s11,a3
    800026f4:	0006c683          	lbu	a3,0(a3)
    800026f8:	0147d79b          	srliw	a5,a5,0x14
    800026fc:	f8d40323          	sb	a3,-122(s0)
    80002700:	21067663          	bgeu	a2,a6,8000290c <__printf+0x5e4>
    80002704:	02079793          	slli	a5,a5,0x20
    80002708:	0207d793          	srli	a5,a5,0x20
    8000270c:	00fd8db3          	add	s11,s11,a5
    80002710:	000dc683          	lbu	a3,0(s11)
    80002714:	00800793          	li	a5,8
    80002718:	00700c93          	li	s9,7
    8000271c:	f8d403a3          	sb	a3,-121(s0)
    80002720:	00075c63          	bgez	a4,80002738 <__printf+0x410>
    80002724:	f9040713          	addi	a4,s0,-112
    80002728:	00f70733          	add	a4,a4,a5
    8000272c:	02d00693          	li	a3,45
    80002730:	fed70823          	sb	a3,-16(a4)
    80002734:	00078c93          	mv	s9,a5
    80002738:	f8040793          	addi	a5,s0,-128
    8000273c:	01978cb3          	add	s9,a5,s9
    80002740:	f7f40d13          	addi	s10,s0,-129
    80002744:	000cc503          	lbu	a0,0(s9)
    80002748:	fffc8c93          	addi	s9,s9,-1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	9f8080e7          	jalr	-1544(ra) # 80002144 <consputc>
    80002754:	ff9d18e3          	bne	s10,s9,80002744 <__printf+0x41c>
    80002758:	0100006f          	j	80002768 <__printf+0x440>
    8000275c:	00000097          	auipc	ra,0x0
    80002760:	9e8080e7          	jalr	-1560(ra) # 80002144 <consputc>
    80002764:	000c8493          	mv	s1,s9
    80002768:	00094503          	lbu	a0,0(s2)
    8000276c:	c60510e3          	bnez	a0,800023cc <__printf+0xa4>
    80002770:	e40c0ee3          	beqz	s8,800025cc <__printf+0x2a4>
    80002774:	00003517          	auipc	a0,0x3
    80002778:	07c50513          	addi	a0,a0,124 # 800057f0 <pr>
    8000277c:	00001097          	auipc	ra,0x1
    80002780:	94c080e7          	jalr	-1716(ra) # 800030c8 <release>
    80002784:	e49ff06f          	j	800025cc <__printf+0x2a4>
    80002788:	f7843783          	ld	a5,-136(s0)
    8000278c:	03000513          	li	a0,48
    80002790:	01000d13          	li	s10,16
    80002794:	00878713          	addi	a4,a5,8
    80002798:	0007bc83          	ld	s9,0(a5)
    8000279c:	f6e43c23          	sd	a4,-136(s0)
    800027a0:	00000097          	auipc	ra,0x0
    800027a4:	9a4080e7          	jalr	-1628(ra) # 80002144 <consputc>
    800027a8:	07800513          	li	a0,120
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	998080e7          	jalr	-1640(ra) # 80002144 <consputc>
    800027b4:	00002d97          	auipc	s11,0x2
    800027b8:	9b4d8d93          	addi	s11,s11,-1612 # 80004168 <digits>
    800027bc:	03ccd793          	srli	a5,s9,0x3c
    800027c0:	00fd87b3          	add	a5,s11,a5
    800027c4:	0007c503          	lbu	a0,0(a5)
    800027c8:	fffd0d1b          	addiw	s10,s10,-1
    800027cc:	004c9c93          	slli	s9,s9,0x4
    800027d0:	00000097          	auipc	ra,0x0
    800027d4:	974080e7          	jalr	-1676(ra) # 80002144 <consputc>
    800027d8:	fe0d12e3          	bnez	s10,800027bc <__printf+0x494>
    800027dc:	f8dff06f          	j	80002768 <__printf+0x440>
    800027e0:	f7843783          	ld	a5,-136(s0)
    800027e4:	0007bc83          	ld	s9,0(a5)
    800027e8:	00878793          	addi	a5,a5,8
    800027ec:	f6f43c23          	sd	a5,-136(s0)
    800027f0:	000c9a63          	bnez	s9,80002804 <__printf+0x4dc>
    800027f4:	1080006f          	j	800028fc <__printf+0x5d4>
    800027f8:	001c8c93          	addi	s9,s9,1
    800027fc:	00000097          	auipc	ra,0x0
    80002800:	948080e7          	jalr	-1720(ra) # 80002144 <consputc>
    80002804:	000cc503          	lbu	a0,0(s9)
    80002808:	fe0518e3          	bnez	a0,800027f8 <__printf+0x4d0>
    8000280c:	f5dff06f          	j	80002768 <__printf+0x440>
    80002810:	02500513          	li	a0,37
    80002814:	00000097          	auipc	ra,0x0
    80002818:	930080e7          	jalr	-1744(ra) # 80002144 <consputc>
    8000281c:	000c8513          	mv	a0,s9
    80002820:	00000097          	auipc	ra,0x0
    80002824:	924080e7          	jalr	-1756(ra) # 80002144 <consputc>
    80002828:	f41ff06f          	j	80002768 <__printf+0x440>
    8000282c:	02500513          	li	a0,37
    80002830:	00000097          	auipc	ra,0x0
    80002834:	914080e7          	jalr	-1772(ra) # 80002144 <consputc>
    80002838:	f31ff06f          	j	80002768 <__printf+0x440>
    8000283c:	00030513          	mv	a0,t1
    80002840:	00000097          	auipc	ra,0x0
    80002844:	7bc080e7          	jalr	1980(ra) # 80002ffc <acquire>
    80002848:	b4dff06f          	j	80002394 <__printf+0x6c>
    8000284c:	40c0053b          	negw	a0,a2
    80002850:	00a00713          	li	a4,10
    80002854:	02e576bb          	remuw	a3,a0,a4
    80002858:	00002d97          	auipc	s11,0x2
    8000285c:	910d8d93          	addi	s11,s11,-1776 # 80004168 <digits>
    80002860:	ff700593          	li	a1,-9
    80002864:	02069693          	slli	a3,a3,0x20
    80002868:	0206d693          	srli	a3,a3,0x20
    8000286c:	00dd86b3          	add	a3,s11,a3
    80002870:	0006c683          	lbu	a3,0(a3)
    80002874:	02e557bb          	divuw	a5,a0,a4
    80002878:	f8d40023          	sb	a3,-128(s0)
    8000287c:	10b65e63          	bge	a2,a1,80002998 <__printf+0x670>
    80002880:	06300593          	li	a1,99
    80002884:	02e7f6bb          	remuw	a3,a5,a4
    80002888:	02069693          	slli	a3,a3,0x20
    8000288c:	0206d693          	srli	a3,a3,0x20
    80002890:	00dd86b3          	add	a3,s11,a3
    80002894:	0006c683          	lbu	a3,0(a3)
    80002898:	02e7d73b          	divuw	a4,a5,a4
    8000289c:	00200793          	li	a5,2
    800028a0:	f8d400a3          	sb	a3,-127(s0)
    800028a4:	bca5ece3          	bltu	a1,a0,8000247c <__printf+0x154>
    800028a8:	ce5ff06f          	j	8000258c <__printf+0x264>
    800028ac:	40e007bb          	negw	a5,a4
    800028b0:	00002d97          	auipc	s11,0x2
    800028b4:	8b8d8d93          	addi	s11,s11,-1864 # 80004168 <digits>
    800028b8:	00f7f693          	andi	a3,a5,15
    800028bc:	00dd86b3          	add	a3,s11,a3
    800028c0:	0006c583          	lbu	a1,0(a3)
    800028c4:	ff100613          	li	a2,-15
    800028c8:	0047d69b          	srliw	a3,a5,0x4
    800028cc:	f8b40023          	sb	a1,-128(s0)
    800028d0:	0047d59b          	srliw	a1,a5,0x4
    800028d4:	0ac75e63          	bge	a4,a2,80002990 <__printf+0x668>
    800028d8:	00f6f693          	andi	a3,a3,15
    800028dc:	00dd86b3          	add	a3,s11,a3
    800028e0:	0006c603          	lbu	a2,0(a3)
    800028e4:	00f00693          	li	a3,15
    800028e8:	0087d79b          	srliw	a5,a5,0x8
    800028ec:	f8c400a3          	sb	a2,-127(s0)
    800028f0:	d8b6e4e3          	bltu	a3,a1,80002678 <__printf+0x350>
    800028f4:	00200793          	li	a5,2
    800028f8:	e2dff06f          	j	80002724 <__printf+0x3fc>
    800028fc:	00002c97          	auipc	s9,0x2
    80002900:	84cc8c93          	addi	s9,s9,-1972 # 80004148 <_ZZ12printIntegermE6digits+0x148>
    80002904:	02800513          	li	a0,40
    80002908:	ef1ff06f          	j	800027f8 <__printf+0x4d0>
    8000290c:	00700793          	li	a5,7
    80002910:	00600c93          	li	s9,6
    80002914:	e0dff06f          	j	80002720 <__printf+0x3f8>
    80002918:	00700793          	li	a5,7
    8000291c:	00600c93          	li	s9,6
    80002920:	c69ff06f          	j	80002588 <__printf+0x260>
    80002924:	00300793          	li	a5,3
    80002928:	00200c93          	li	s9,2
    8000292c:	c5dff06f          	j	80002588 <__printf+0x260>
    80002930:	00300793          	li	a5,3
    80002934:	00200c93          	li	s9,2
    80002938:	de9ff06f          	j	80002720 <__printf+0x3f8>
    8000293c:	00400793          	li	a5,4
    80002940:	00300c93          	li	s9,3
    80002944:	dddff06f          	j	80002720 <__printf+0x3f8>
    80002948:	00400793          	li	a5,4
    8000294c:	00300c93          	li	s9,3
    80002950:	c39ff06f          	j	80002588 <__printf+0x260>
    80002954:	00500793          	li	a5,5
    80002958:	00400c93          	li	s9,4
    8000295c:	c2dff06f          	j	80002588 <__printf+0x260>
    80002960:	00500793          	li	a5,5
    80002964:	00400c93          	li	s9,4
    80002968:	db9ff06f          	j	80002720 <__printf+0x3f8>
    8000296c:	00600793          	li	a5,6
    80002970:	00500c93          	li	s9,5
    80002974:	dadff06f          	j	80002720 <__printf+0x3f8>
    80002978:	00600793          	li	a5,6
    8000297c:	00500c93          	li	s9,5
    80002980:	c09ff06f          	j	80002588 <__printf+0x260>
    80002984:	00800793          	li	a5,8
    80002988:	00700c93          	li	s9,7
    8000298c:	bfdff06f          	j	80002588 <__printf+0x260>
    80002990:	00100793          	li	a5,1
    80002994:	d91ff06f          	j	80002724 <__printf+0x3fc>
    80002998:	00100793          	li	a5,1
    8000299c:	bf1ff06f          	j	8000258c <__printf+0x264>
    800029a0:	00900793          	li	a5,9
    800029a4:	00800c93          	li	s9,8
    800029a8:	be1ff06f          	j	80002588 <__printf+0x260>
    800029ac:	00001517          	auipc	a0,0x1
    800029b0:	7a450513          	addi	a0,a0,1956 # 80004150 <_ZZ12printIntegermE6digits+0x150>
    800029b4:	00000097          	auipc	ra,0x0
    800029b8:	918080e7          	jalr	-1768(ra) # 800022cc <panic>

00000000800029bc <printfinit>:
    800029bc:	fe010113          	addi	sp,sp,-32
    800029c0:	00813823          	sd	s0,16(sp)
    800029c4:	00913423          	sd	s1,8(sp)
    800029c8:	00113c23          	sd	ra,24(sp)
    800029cc:	02010413          	addi	s0,sp,32
    800029d0:	00003497          	auipc	s1,0x3
    800029d4:	e2048493          	addi	s1,s1,-480 # 800057f0 <pr>
    800029d8:	00048513          	mv	a0,s1
    800029dc:	00001597          	auipc	a1,0x1
    800029e0:	78458593          	addi	a1,a1,1924 # 80004160 <_ZZ12printIntegermE6digits+0x160>
    800029e4:	00000097          	auipc	ra,0x0
    800029e8:	5f4080e7          	jalr	1524(ra) # 80002fd8 <initlock>
    800029ec:	01813083          	ld	ra,24(sp)
    800029f0:	01013403          	ld	s0,16(sp)
    800029f4:	0004ac23          	sw	zero,24(s1)
    800029f8:	00813483          	ld	s1,8(sp)
    800029fc:	02010113          	addi	sp,sp,32
    80002a00:	00008067          	ret

0000000080002a04 <uartinit>:
    80002a04:	ff010113          	addi	sp,sp,-16
    80002a08:	00813423          	sd	s0,8(sp)
    80002a0c:	01010413          	addi	s0,sp,16
    80002a10:	100007b7          	lui	a5,0x10000
    80002a14:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002a18:	f8000713          	li	a4,-128
    80002a1c:	00e781a3          	sb	a4,3(a5)
    80002a20:	00300713          	li	a4,3
    80002a24:	00e78023          	sb	a4,0(a5)
    80002a28:	000780a3          	sb	zero,1(a5)
    80002a2c:	00e781a3          	sb	a4,3(a5)
    80002a30:	00700693          	li	a3,7
    80002a34:	00d78123          	sb	a3,2(a5)
    80002a38:	00e780a3          	sb	a4,1(a5)
    80002a3c:	00813403          	ld	s0,8(sp)
    80002a40:	01010113          	addi	sp,sp,16
    80002a44:	00008067          	ret

0000000080002a48 <uartputc>:
    80002a48:	00002797          	auipc	a5,0x2
    80002a4c:	b407a783          	lw	a5,-1216(a5) # 80004588 <panicked>
    80002a50:	00078463          	beqz	a5,80002a58 <uartputc+0x10>
    80002a54:	0000006f          	j	80002a54 <uartputc+0xc>
    80002a58:	fd010113          	addi	sp,sp,-48
    80002a5c:	02813023          	sd	s0,32(sp)
    80002a60:	00913c23          	sd	s1,24(sp)
    80002a64:	01213823          	sd	s2,16(sp)
    80002a68:	01313423          	sd	s3,8(sp)
    80002a6c:	02113423          	sd	ra,40(sp)
    80002a70:	03010413          	addi	s0,sp,48
    80002a74:	00002917          	auipc	s2,0x2
    80002a78:	b1c90913          	addi	s2,s2,-1252 # 80004590 <uart_tx_r>
    80002a7c:	00093783          	ld	a5,0(s2)
    80002a80:	00002497          	auipc	s1,0x2
    80002a84:	b1848493          	addi	s1,s1,-1256 # 80004598 <uart_tx_w>
    80002a88:	0004b703          	ld	a4,0(s1)
    80002a8c:	02078693          	addi	a3,a5,32
    80002a90:	00050993          	mv	s3,a0
    80002a94:	02e69c63          	bne	a3,a4,80002acc <uartputc+0x84>
    80002a98:	00001097          	auipc	ra,0x1
    80002a9c:	834080e7          	jalr	-1996(ra) # 800032cc <push_on>
    80002aa0:	00093783          	ld	a5,0(s2)
    80002aa4:	0004b703          	ld	a4,0(s1)
    80002aa8:	02078793          	addi	a5,a5,32
    80002aac:	00e79463          	bne	a5,a4,80002ab4 <uartputc+0x6c>
    80002ab0:	0000006f          	j	80002ab0 <uartputc+0x68>
    80002ab4:	00001097          	auipc	ra,0x1
    80002ab8:	88c080e7          	jalr	-1908(ra) # 80003340 <pop_on>
    80002abc:	00093783          	ld	a5,0(s2)
    80002ac0:	0004b703          	ld	a4,0(s1)
    80002ac4:	02078693          	addi	a3,a5,32
    80002ac8:	fce688e3          	beq	a3,a4,80002a98 <uartputc+0x50>
    80002acc:	01f77693          	andi	a3,a4,31
    80002ad0:	00003597          	auipc	a1,0x3
    80002ad4:	d4058593          	addi	a1,a1,-704 # 80005810 <uart_tx_buf>
    80002ad8:	00d586b3          	add	a3,a1,a3
    80002adc:	00170713          	addi	a4,a4,1
    80002ae0:	01368023          	sb	s3,0(a3)
    80002ae4:	00e4b023          	sd	a4,0(s1)
    80002ae8:	10000637          	lui	a2,0x10000
    80002aec:	02f71063          	bne	a4,a5,80002b0c <uartputc+0xc4>
    80002af0:	0340006f          	j	80002b24 <uartputc+0xdc>
    80002af4:	00074703          	lbu	a4,0(a4)
    80002af8:	00f93023          	sd	a5,0(s2)
    80002afc:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002b00:	00093783          	ld	a5,0(s2)
    80002b04:	0004b703          	ld	a4,0(s1)
    80002b08:	00f70e63          	beq	a4,a5,80002b24 <uartputc+0xdc>
    80002b0c:	00564683          	lbu	a3,5(a2)
    80002b10:	01f7f713          	andi	a4,a5,31
    80002b14:	00e58733          	add	a4,a1,a4
    80002b18:	0206f693          	andi	a3,a3,32
    80002b1c:	00178793          	addi	a5,a5,1
    80002b20:	fc069ae3          	bnez	a3,80002af4 <uartputc+0xac>
    80002b24:	02813083          	ld	ra,40(sp)
    80002b28:	02013403          	ld	s0,32(sp)
    80002b2c:	01813483          	ld	s1,24(sp)
    80002b30:	01013903          	ld	s2,16(sp)
    80002b34:	00813983          	ld	s3,8(sp)
    80002b38:	03010113          	addi	sp,sp,48
    80002b3c:	00008067          	ret

0000000080002b40 <uartputc_sync>:
    80002b40:	ff010113          	addi	sp,sp,-16
    80002b44:	00813423          	sd	s0,8(sp)
    80002b48:	01010413          	addi	s0,sp,16
    80002b4c:	00002717          	auipc	a4,0x2
    80002b50:	a3c72703          	lw	a4,-1476(a4) # 80004588 <panicked>
    80002b54:	02071663          	bnez	a4,80002b80 <uartputc_sync+0x40>
    80002b58:	00050793          	mv	a5,a0
    80002b5c:	100006b7          	lui	a3,0x10000
    80002b60:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002b64:	02077713          	andi	a4,a4,32
    80002b68:	fe070ce3          	beqz	a4,80002b60 <uartputc_sync+0x20>
    80002b6c:	0ff7f793          	andi	a5,a5,255
    80002b70:	00f68023          	sb	a5,0(a3)
    80002b74:	00813403          	ld	s0,8(sp)
    80002b78:	01010113          	addi	sp,sp,16
    80002b7c:	00008067          	ret
    80002b80:	0000006f          	j	80002b80 <uartputc_sync+0x40>

0000000080002b84 <uartstart>:
    80002b84:	ff010113          	addi	sp,sp,-16
    80002b88:	00813423          	sd	s0,8(sp)
    80002b8c:	01010413          	addi	s0,sp,16
    80002b90:	00002617          	auipc	a2,0x2
    80002b94:	a0060613          	addi	a2,a2,-1536 # 80004590 <uart_tx_r>
    80002b98:	00002517          	auipc	a0,0x2
    80002b9c:	a0050513          	addi	a0,a0,-1536 # 80004598 <uart_tx_w>
    80002ba0:	00063783          	ld	a5,0(a2)
    80002ba4:	00053703          	ld	a4,0(a0)
    80002ba8:	04f70263          	beq	a4,a5,80002bec <uartstart+0x68>
    80002bac:	100005b7          	lui	a1,0x10000
    80002bb0:	00003817          	auipc	a6,0x3
    80002bb4:	c6080813          	addi	a6,a6,-928 # 80005810 <uart_tx_buf>
    80002bb8:	01c0006f          	j	80002bd4 <uartstart+0x50>
    80002bbc:	0006c703          	lbu	a4,0(a3)
    80002bc0:	00f63023          	sd	a5,0(a2)
    80002bc4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002bc8:	00063783          	ld	a5,0(a2)
    80002bcc:	00053703          	ld	a4,0(a0)
    80002bd0:	00f70e63          	beq	a4,a5,80002bec <uartstart+0x68>
    80002bd4:	01f7f713          	andi	a4,a5,31
    80002bd8:	00e806b3          	add	a3,a6,a4
    80002bdc:	0055c703          	lbu	a4,5(a1)
    80002be0:	00178793          	addi	a5,a5,1
    80002be4:	02077713          	andi	a4,a4,32
    80002be8:	fc071ae3          	bnez	a4,80002bbc <uartstart+0x38>
    80002bec:	00813403          	ld	s0,8(sp)
    80002bf0:	01010113          	addi	sp,sp,16
    80002bf4:	00008067          	ret

0000000080002bf8 <uartgetc>:
    80002bf8:	ff010113          	addi	sp,sp,-16
    80002bfc:	00813423          	sd	s0,8(sp)
    80002c00:	01010413          	addi	s0,sp,16
    80002c04:	10000737          	lui	a4,0x10000
    80002c08:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    80002c0c:	0017f793          	andi	a5,a5,1
    80002c10:	00078c63          	beqz	a5,80002c28 <uartgetc+0x30>
    80002c14:	00074503          	lbu	a0,0(a4)
    80002c18:	0ff57513          	andi	a0,a0,255
    80002c1c:	00813403          	ld	s0,8(sp)
    80002c20:	01010113          	addi	sp,sp,16
    80002c24:	00008067          	ret
    80002c28:	fff00513          	li	a0,-1
    80002c2c:	ff1ff06f          	j	80002c1c <uartgetc+0x24>

0000000080002c30 <uartintr>:
    80002c30:	100007b7          	lui	a5,0x10000
    80002c34:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002c38:	0017f793          	andi	a5,a5,1
    80002c3c:	0a078463          	beqz	a5,80002ce4 <uartintr+0xb4>
    80002c40:	fe010113          	addi	sp,sp,-32
    80002c44:	00813823          	sd	s0,16(sp)
    80002c48:	00913423          	sd	s1,8(sp)
    80002c4c:	00113c23          	sd	ra,24(sp)
    80002c50:	02010413          	addi	s0,sp,32
    80002c54:	100004b7          	lui	s1,0x10000
    80002c58:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    80002c5c:	0ff57513          	andi	a0,a0,255
    80002c60:	fffff097          	auipc	ra,0xfffff
    80002c64:	534080e7          	jalr	1332(ra) # 80002194 <consoleintr>
    80002c68:	0054c783          	lbu	a5,5(s1)
    80002c6c:	0017f793          	andi	a5,a5,1
    80002c70:	fe0794e3          	bnez	a5,80002c58 <uartintr+0x28>
    80002c74:	00002617          	auipc	a2,0x2
    80002c78:	91c60613          	addi	a2,a2,-1764 # 80004590 <uart_tx_r>
    80002c7c:	00002517          	auipc	a0,0x2
    80002c80:	91c50513          	addi	a0,a0,-1764 # 80004598 <uart_tx_w>
    80002c84:	00063783          	ld	a5,0(a2)
    80002c88:	00053703          	ld	a4,0(a0)
    80002c8c:	04f70263          	beq	a4,a5,80002cd0 <uartintr+0xa0>
    80002c90:	100005b7          	lui	a1,0x10000
    80002c94:	00003817          	auipc	a6,0x3
    80002c98:	b7c80813          	addi	a6,a6,-1156 # 80005810 <uart_tx_buf>
    80002c9c:	01c0006f          	j	80002cb8 <uartintr+0x88>
    80002ca0:	0006c703          	lbu	a4,0(a3)
    80002ca4:	00f63023          	sd	a5,0(a2)
    80002ca8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002cac:	00063783          	ld	a5,0(a2)
    80002cb0:	00053703          	ld	a4,0(a0)
    80002cb4:	00f70e63          	beq	a4,a5,80002cd0 <uartintr+0xa0>
    80002cb8:	01f7f713          	andi	a4,a5,31
    80002cbc:	00e806b3          	add	a3,a6,a4
    80002cc0:	0055c703          	lbu	a4,5(a1)
    80002cc4:	00178793          	addi	a5,a5,1
    80002cc8:	02077713          	andi	a4,a4,32
    80002ccc:	fc071ae3          	bnez	a4,80002ca0 <uartintr+0x70>
    80002cd0:	01813083          	ld	ra,24(sp)
    80002cd4:	01013403          	ld	s0,16(sp)
    80002cd8:	00813483          	ld	s1,8(sp)
    80002cdc:	02010113          	addi	sp,sp,32
    80002ce0:	00008067          	ret
    80002ce4:	00002617          	auipc	a2,0x2
    80002ce8:	8ac60613          	addi	a2,a2,-1876 # 80004590 <uart_tx_r>
    80002cec:	00002517          	auipc	a0,0x2
    80002cf0:	8ac50513          	addi	a0,a0,-1876 # 80004598 <uart_tx_w>
    80002cf4:	00063783          	ld	a5,0(a2)
    80002cf8:	00053703          	ld	a4,0(a0)
    80002cfc:	04f70263          	beq	a4,a5,80002d40 <uartintr+0x110>
    80002d00:	100005b7          	lui	a1,0x10000
    80002d04:	00003817          	auipc	a6,0x3
    80002d08:	b0c80813          	addi	a6,a6,-1268 # 80005810 <uart_tx_buf>
    80002d0c:	01c0006f          	j	80002d28 <uartintr+0xf8>
    80002d10:	0006c703          	lbu	a4,0(a3)
    80002d14:	00f63023          	sd	a5,0(a2)
    80002d18:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80002d1c:	00063783          	ld	a5,0(a2)
    80002d20:	00053703          	ld	a4,0(a0)
    80002d24:	02f70063          	beq	a4,a5,80002d44 <uartintr+0x114>
    80002d28:	01f7f713          	andi	a4,a5,31
    80002d2c:	00e806b3          	add	a3,a6,a4
    80002d30:	0055c703          	lbu	a4,5(a1)
    80002d34:	00178793          	addi	a5,a5,1
    80002d38:	02077713          	andi	a4,a4,32
    80002d3c:	fc071ae3          	bnez	a4,80002d10 <uartintr+0xe0>
    80002d40:	00008067          	ret
    80002d44:	00008067          	ret

0000000080002d48 <kinit>:
    80002d48:	fc010113          	addi	sp,sp,-64
    80002d4c:	02913423          	sd	s1,40(sp)
    80002d50:	fffff7b7          	lui	a5,0xfffff
    80002d54:	00004497          	auipc	s1,0x4
    80002d58:	aeb48493          	addi	s1,s1,-1301 # 8000683f <end+0xfff>
    80002d5c:	02813823          	sd	s0,48(sp)
    80002d60:	01313c23          	sd	s3,24(sp)
    80002d64:	00f4f4b3          	and	s1,s1,a5
    80002d68:	02113c23          	sd	ra,56(sp)
    80002d6c:	03213023          	sd	s2,32(sp)
    80002d70:	01413823          	sd	s4,16(sp)
    80002d74:	01513423          	sd	s5,8(sp)
    80002d78:	04010413          	addi	s0,sp,64
    80002d7c:	000017b7          	lui	a5,0x1
    80002d80:	01100993          	li	s3,17
    80002d84:	00f487b3          	add	a5,s1,a5
    80002d88:	01b99993          	slli	s3,s3,0x1b
    80002d8c:	06f9e063          	bltu	s3,a5,80002dec <kinit+0xa4>
    80002d90:	00003a97          	auipc	s5,0x3
    80002d94:	ab0a8a93          	addi	s5,s5,-1360 # 80005840 <end>
    80002d98:	0754ec63          	bltu	s1,s5,80002e10 <kinit+0xc8>
    80002d9c:	0734fa63          	bgeu	s1,s3,80002e10 <kinit+0xc8>
    80002da0:	00088a37          	lui	s4,0x88
    80002da4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80002da8:	00001917          	auipc	s2,0x1
    80002dac:	7f890913          	addi	s2,s2,2040 # 800045a0 <kmem>
    80002db0:	00ca1a13          	slli	s4,s4,0xc
    80002db4:	0140006f          	j	80002dc8 <kinit+0x80>
    80002db8:	000017b7          	lui	a5,0x1
    80002dbc:	00f484b3          	add	s1,s1,a5
    80002dc0:	0554e863          	bltu	s1,s5,80002e10 <kinit+0xc8>
    80002dc4:	0534f663          	bgeu	s1,s3,80002e10 <kinit+0xc8>
    80002dc8:	00001637          	lui	a2,0x1
    80002dcc:	00100593          	li	a1,1
    80002dd0:	00048513          	mv	a0,s1
    80002dd4:	00000097          	auipc	ra,0x0
    80002dd8:	5e4080e7          	jalr	1508(ra) # 800033b8 <__memset>
    80002ddc:	00093783          	ld	a5,0(s2)
    80002de0:	00f4b023          	sd	a5,0(s1)
    80002de4:	00993023          	sd	s1,0(s2)
    80002de8:	fd4498e3          	bne	s1,s4,80002db8 <kinit+0x70>
    80002dec:	03813083          	ld	ra,56(sp)
    80002df0:	03013403          	ld	s0,48(sp)
    80002df4:	02813483          	ld	s1,40(sp)
    80002df8:	02013903          	ld	s2,32(sp)
    80002dfc:	01813983          	ld	s3,24(sp)
    80002e00:	01013a03          	ld	s4,16(sp)
    80002e04:	00813a83          	ld	s5,8(sp)
    80002e08:	04010113          	addi	sp,sp,64
    80002e0c:	00008067          	ret
    80002e10:	00001517          	auipc	a0,0x1
    80002e14:	37050513          	addi	a0,a0,880 # 80004180 <digits+0x18>
    80002e18:	fffff097          	auipc	ra,0xfffff
    80002e1c:	4b4080e7          	jalr	1204(ra) # 800022cc <panic>

0000000080002e20 <freerange>:
    80002e20:	fc010113          	addi	sp,sp,-64
    80002e24:	000017b7          	lui	a5,0x1
    80002e28:	02913423          	sd	s1,40(sp)
    80002e2c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002e30:	009504b3          	add	s1,a0,s1
    80002e34:	fffff537          	lui	a0,0xfffff
    80002e38:	02813823          	sd	s0,48(sp)
    80002e3c:	02113c23          	sd	ra,56(sp)
    80002e40:	03213023          	sd	s2,32(sp)
    80002e44:	01313c23          	sd	s3,24(sp)
    80002e48:	01413823          	sd	s4,16(sp)
    80002e4c:	01513423          	sd	s5,8(sp)
    80002e50:	01613023          	sd	s6,0(sp)
    80002e54:	04010413          	addi	s0,sp,64
    80002e58:	00a4f4b3          	and	s1,s1,a0
    80002e5c:	00f487b3          	add	a5,s1,a5
    80002e60:	06f5e463          	bltu	a1,a5,80002ec8 <freerange+0xa8>
    80002e64:	00003a97          	auipc	s5,0x3
    80002e68:	9dca8a93          	addi	s5,s5,-1572 # 80005840 <end>
    80002e6c:	0954e263          	bltu	s1,s5,80002ef0 <freerange+0xd0>
    80002e70:	01100993          	li	s3,17
    80002e74:	01b99993          	slli	s3,s3,0x1b
    80002e78:	0734fc63          	bgeu	s1,s3,80002ef0 <freerange+0xd0>
    80002e7c:	00058a13          	mv	s4,a1
    80002e80:	00001917          	auipc	s2,0x1
    80002e84:	72090913          	addi	s2,s2,1824 # 800045a0 <kmem>
    80002e88:	00002b37          	lui	s6,0x2
    80002e8c:	0140006f          	j	80002ea0 <freerange+0x80>
    80002e90:	000017b7          	lui	a5,0x1
    80002e94:	00f484b3          	add	s1,s1,a5
    80002e98:	0554ec63          	bltu	s1,s5,80002ef0 <freerange+0xd0>
    80002e9c:	0534fa63          	bgeu	s1,s3,80002ef0 <freerange+0xd0>
    80002ea0:	00001637          	lui	a2,0x1
    80002ea4:	00100593          	li	a1,1
    80002ea8:	00048513          	mv	a0,s1
    80002eac:	00000097          	auipc	ra,0x0
    80002eb0:	50c080e7          	jalr	1292(ra) # 800033b8 <__memset>
    80002eb4:	00093703          	ld	a4,0(s2)
    80002eb8:	016487b3          	add	a5,s1,s6
    80002ebc:	00e4b023          	sd	a4,0(s1)
    80002ec0:	00993023          	sd	s1,0(s2)
    80002ec4:	fcfa76e3          	bgeu	s4,a5,80002e90 <freerange+0x70>
    80002ec8:	03813083          	ld	ra,56(sp)
    80002ecc:	03013403          	ld	s0,48(sp)
    80002ed0:	02813483          	ld	s1,40(sp)
    80002ed4:	02013903          	ld	s2,32(sp)
    80002ed8:	01813983          	ld	s3,24(sp)
    80002edc:	01013a03          	ld	s4,16(sp)
    80002ee0:	00813a83          	ld	s5,8(sp)
    80002ee4:	00013b03          	ld	s6,0(sp)
    80002ee8:	04010113          	addi	sp,sp,64
    80002eec:	00008067          	ret
    80002ef0:	00001517          	auipc	a0,0x1
    80002ef4:	29050513          	addi	a0,a0,656 # 80004180 <digits+0x18>
    80002ef8:	fffff097          	auipc	ra,0xfffff
    80002efc:	3d4080e7          	jalr	980(ra) # 800022cc <panic>

0000000080002f00 <kfree>:
    80002f00:	fe010113          	addi	sp,sp,-32
    80002f04:	00813823          	sd	s0,16(sp)
    80002f08:	00113c23          	sd	ra,24(sp)
    80002f0c:	00913423          	sd	s1,8(sp)
    80002f10:	02010413          	addi	s0,sp,32
    80002f14:	03451793          	slli	a5,a0,0x34
    80002f18:	04079c63          	bnez	a5,80002f70 <kfree+0x70>
    80002f1c:	00003797          	auipc	a5,0x3
    80002f20:	92478793          	addi	a5,a5,-1756 # 80005840 <end>
    80002f24:	00050493          	mv	s1,a0
    80002f28:	04f56463          	bltu	a0,a5,80002f70 <kfree+0x70>
    80002f2c:	01100793          	li	a5,17
    80002f30:	01b79793          	slli	a5,a5,0x1b
    80002f34:	02f57e63          	bgeu	a0,a5,80002f70 <kfree+0x70>
    80002f38:	00001637          	lui	a2,0x1
    80002f3c:	00100593          	li	a1,1
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	478080e7          	jalr	1144(ra) # 800033b8 <__memset>
    80002f48:	00001797          	auipc	a5,0x1
    80002f4c:	65878793          	addi	a5,a5,1624 # 800045a0 <kmem>
    80002f50:	0007b703          	ld	a4,0(a5)
    80002f54:	01813083          	ld	ra,24(sp)
    80002f58:	01013403          	ld	s0,16(sp)
    80002f5c:	00e4b023          	sd	a4,0(s1)
    80002f60:	0097b023          	sd	s1,0(a5)
    80002f64:	00813483          	ld	s1,8(sp)
    80002f68:	02010113          	addi	sp,sp,32
    80002f6c:	00008067          	ret
    80002f70:	00001517          	auipc	a0,0x1
    80002f74:	21050513          	addi	a0,a0,528 # 80004180 <digits+0x18>
    80002f78:	fffff097          	auipc	ra,0xfffff
    80002f7c:	354080e7          	jalr	852(ra) # 800022cc <panic>

0000000080002f80 <kalloc>:
    80002f80:	fe010113          	addi	sp,sp,-32
    80002f84:	00813823          	sd	s0,16(sp)
    80002f88:	00913423          	sd	s1,8(sp)
    80002f8c:	00113c23          	sd	ra,24(sp)
    80002f90:	02010413          	addi	s0,sp,32
    80002f94:	00001797          	auipc	a5,0x1
    80002f98:	60c78793          	addi	a5,a5,1548 # 800045a0 <kmem>
    80002f9c:	0007b483          	ld	s1,0(a5)
    80002fa0:	02048063          	beqz	s1,80002fc0 <kalloc+0x40>
    80002fa4:	0004b703          	ld	a4,0(s1)
    80002fa8:	00001637          	lui	a2,0x1
    80002fac:	00500593          	li	a1,5
    80002fb0:	00048513          	mv	a0,s1
    80002fb4:	00e7b023          	sd	a4,0(a5)
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	400080e7          	jalr	1024(ra) # 800033b8 <__memset>
    80002fc0:	01813083          	ld	ra,24(sp)
    80002fc4:	01013403          	ld	s0,16(sp)
    80002fc8:	00048513          	mv	a0,s1
    80002fcc:	00813483          	ld	s1,8(sp)
    80002fd0:	02010113          	addi	sp,sp,32
    80002fd4:	00008067          	ret

0000000080002fd8 <initlock>:
    80002fd8:	ff010113          	addi	sp,sp,-16
    80002fdc:	00813423          	sd	s0,8(sp)
    80002fe0:	01010413          	addi	s0,sp,16
    80002fe4:	00813403          	ld	s0,8(sp)
    80002fe8:	00b53423          	sd	a1,8(a0)
    80002fec:	00052023          	sw	zero,0(a0)
    80002ff0:	00053823          	sd	zero,16(a0)
    80002ff4:	01010113          	addi	sp,sp,16
    80002ff8:	00008067          	ret

0000000080002ffc <acquire>:
    80002ffc:	fe010113          	addi	sp,sp,-32
    80003000:	00813823          	sd	s0,16(sp)
    80003004:	00913423          	sd	s1,8(sp)
    80003008:	00113c23          	sd	ra,24(sp)
    8000300c:	01213023          	sd	s2,0(sp)
    80003010:	02010413          	addi	s0,sp,32
    80003014:	00050493          	mv	s1,a0
    80003018:	10002973          	csrr	s2,sstatus
    8000301c:	100027f3          	csrr	a5,sstatus
    80003020:	ffd7f793          	andi	a5,a5,-3
    80003024:	10079073          	csrw	sstatus,a5
    80003028:	fffff097          	auipc	ra,0xfffff
    8000302c:	8e0080e7          	jalr	-1824(ra) # 80001908 <mycpu>
    80003030:	07852783          	lw	a5,120(a0)
    80003034:	06078e63          	beqz	a5,800030b0 <acquire+0xb4>
    80003038:	fffff097          	auipc	ra,0xfffff
    8000303c:	8d0080e7          	jalr	-1840(ra) # 80001908 <mycpu>
    80003040:	07852783          	lw	a5,120(a0)
    80003044:	0004a703          	lw	a4,0(s1)
    80003048:	0017879b          	addiw	a5,a5,1
    8000304c:	06f52c23          	sw	a5,120(a0)
    80003050:	04071063          	bnez	a4,80003090 <acquire+0x94>
    80003054:	00100713          	li	a4,1
    80003058:	00070793          	mv	a5,a4
    8000305c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80003060:	0007879b          	sext.w	a5,a5
    80003064:	fe079ae3          	bnez	a5,80003058 <acquire+0x5c>
    80003068:	0ff0000f          	fence
    8000306c:	fffff097          	auipc	ra,0xfffff
    80003070:	89c080e7          	jalr	-1892(ra) # 80001908 <mycpu>
    80003074:	01813083          	ld	ra,24(sp)
    80003078:	01013403          	ld	s0,16(sp)
    8000307c:	00a4b823          	sd	a0,16(s1)
    80003080:	00013903          	ld	s2,0(sp)
    80003084:	00813483          	ld	s1,8(sp)
    80003088:	02010113          	addi	sp,sp,32
    8000308c:	00008067          	ret
    80003090:	0104b903          	ld	s2,16(s1)
    80003094:	fffff097          	auipc	ra,0xfffff
    80003098:	874080e7          	jalr	-1932(ra) # 80001908 <mycpu>
    8000309c:	faa91ce3          	bne	s2,a0,80003054 <acquire+0x58>
    800030a0:	00001517          	auipc	a0,0x1
    800030a4:	0e850513          	addi	a0,a0,232 # 80004188 <digits+0x20>
    800030a8:	fffff097          	auipc	ra,0xfffff
    800030ac:	224080e7          	jalr	548(ra) # 800022cc <panic>
    800030b0:	00195913          	srli	s2,s2,0x1
    800030b4:	fffff097          	auipc	ra,0xfffff
    800030b8:	854080e7          	jalr	-1964(ra) # 80001908 <mycpu>
    800030bc:	00197913          	andi	s2,s2,1
    800030c0:	07252e23          	sw	s2,124(a0)
    800030c4:	f75ff06f          	j	80003038 <acquire+0x3c>

00000000800030c8 <release>:
    800030c8:	fe010113          	addi	sp,sp,-32
    800030cc:	00813823          	sd	s0,16(sp)
    800030d0:	00113c23          	sd	ra,24(sp)
    800030d4:	00913423          	sd	s1,8(sp)
    800030d8:	01213023          	sd	s2,0(sp)
    800030dc:	02010413          	addi	s0,sp,32
    800030e0:	00052783          	lw	a5,0(a0)
    800030e4:	00079a63          	bnez	a5,800030f8 <release+0x30>
    800030e8:	00001517          	auipc	a0,0x1
    800030ec:	0a850513          	addi	a0,a0,168 # 80004190 <digits+0x28>
    800030f0:	fffff097          	auipc	ra,0xfffff
    800030f4:	1dc080e7          	jalr	476(ra) # 800022cc <panic>
    800030f8:	01053903          	ld	s2,16(a0)
    800030fc:	00050493          	mv	s1,a0
    80003100:	fffff097          	auipc	ra,0xfffff
    80003104:	808080e7          	jalr	-2040(ra) # 80001908 <mycpu>
    80003108:	fea910e3          	bne	s2,a0,800030e8 <release+0x20>
    8000310c:	0004b823          	sd	zero,16(s1)
    80003110:	0ff0000f          	fence
    80003114:	0f50000f          	fence	iorw,ow
    80003118:	0804a02f          	amoswap.w	zero,zero,(s1)
    8000311c:	ffffe097          	auipc	ra,0xffffe
    80003120:	7ec080e7          	jalr	2028(ra) # 80001908 <mycpu>
    80003124:	100027f3          	csrr	a5,sstatus
    80003128:	0027f793          	andi	a5,a5,2
    8000312c:	04079a63          	bnez	a5,80003180 <release+0xb8>
    80003130:	07852783          	lw	a5,120(a0)
    80003134:	02f05e63          	blez	a5,80003170 <release+0xa8>
    80003138:	fff7871b          	addiw	a4,a5,-1
    8000313c:	06e52c23          	sw	a4,120(a0)
    80003140:	00071c63          	bnez	a4,80003158 <release+0x90>
    80003144:	07c52783          	lw	a5,124(a0)
    80003148:	00078863          	beqz	a5,80003158 <release+0x90>
    8000314c:	100027f3          	csrr	a5,sstatus
    80003150:	0027e793          	ori	a5,a5,2
    80003154:	10079073          	csrw	sstatus,a5
    80003158:	01813083          	ld	ra,24(sp)
    8000315c:	01013403          	ld	s0,16(sp)
    80003160:	00813483          	ld	s1,8(sp)
    80003164:	00013903          	ld	s2,0(sp)
    80003168:	02010113          	addi	sp,sp,32
    8000316c:	00008067          	ret
    80003170:	00001517          	auipc	a0,0x1
    80003174:	04050513          	addi	a0,a0,64 # 800041b0 <digits+0x48>
    80003178:	fffff097          	auipc	ra,0xfffff
    8000317c:	154080e7          	jalr	340(ra) # 800022cc <panic>
    80003180:	00001517          	auipc	a0,0x1
    80003184:	01850513          	addi	a0,a0,24 # 80004198 <digits+0x30>
    80003188:	fffff097          	auipc	ra,0xfffff
    8000318c:	144080e7          	jalr	324(ra) # 800022cc <panic>

0000000080003190 <holding>:
    80003190:	00052783          	lw	a5,0(a0)
    80003194:	00079663          	bnez	a5,800031a0 <holding+0x10>
    80003198:	00000513          	li	a0,0
    8000319c:	00008067          	ret
    800031a0:	fe010113          	addi	sp,sp,-32
    800031a4:	00813823          	sd	s0,16(sp)
    800031a8:	00913423          	sd	s1,8(sp)
    800031ac:	00113c23          	sd	ra,24(sp)
    800031b0:	02010413          	addi	s0,sp,32
    800031b4:	01053483          	ld	s1,16(a0)
    800031b8:	ffffe097          	auipc	ra,0xffffe
    800031bc:	750080e7          	jalr	1872(ra) # 80001908 <mycpu>
    800031c0:	01813083          	ld	ra,24(sp)
    800031c4:	01013403          	ld	s0,16(sp)
    800031c8:	40a48533          	sub	a0,s1,a0
    800031cc:	00153513          	seqz	a0,a0
    800031d0:	00813483          	ld	s1,8(sp)
    800031d4:	02010113          	addi	sp,sp,32
    800031d8:	00008067          	ret

00000000800031dc <push_off>:
    800031dc:	fe010113          	addi	sp,sp,-32
    800031e0:	00813823          	sd	s0,16(sp)
    800031e4:	00113c23          	sd	ra,24(sp)
    800031e8:	00913423          	sd	s1,8(sp)
    800031ec:	02010413          	addi	s0,sp,32
    800031f0:	100024f3          	csrr	s1,sstatus
    800031f4:	100027f3          	csrr	a5,sstatus
    800031f8:	ffd7f793          	andi	a5,a5,-3
    800031fc:	10079073          	csrw	sstatus,a5
    80003200:	ffffe097          	auipc	ra,0xffffe
    80003204:	708080e7          	jalr	1800(ra) # 80001908 <mycpu>
    80003208:	07852783          	lw	a5,120(a0)
    8000320c:	02078663          	beqz	a5,80003238 <push_off+0x5c>
    80003210:	ffffe097          	auipc	ra,0xffffe
    80003214:	6f8080e7          	jalr	1784(ra) # 80001908 <mycpu>
    80003218:	07852783          	lw	a5,120(a0)
    8000321c:	01813083          	ld	ra,24(sp)
    80003220:	01013403          	ld	s0,16(sp)
    80003224:	0017879b          	addiw	a5,a5,1
    80003228:	06f52c23          	sw	a5,120(a0)
    8000322c:	00813483          	ld	s1,8(sp)
    80003230:	02010113          	addi	sp,sp,32
    80003234:	00008067          	ret
    80003238:	0014d493          	srli	s1,s1,0x1
    8000323c:	ffffe097          	auipc	ra,0xffffe
    80003240:	6cc080e7          	jalr	1740(ra) # 80001908 <mycpu>
    80003244:	0014f493          	andi	s1,s1,1
    80003248:	06952e23          	sw	s1,124(a0)
    8000324c:	fc5ff06f          	j	80003210 <push_off+0x34>

0000000080003250 <pop_off>:
    80003250:	ff010113          	addi	sp,sp,-16
    80003254:	00813023          	sd	s0,0(sp)
    80003258:	00113423          	sd	ra,8(sp)
    8000325c:	01010413          	addi	s0,sp,16
    80003260:	ffffe097          	auipc	ra,0xffffe
    80003264:	6a8080e7          	jalr	1704(ra) # 80001908 <mycpu>
    80003268:	100027f3          	csrr	a5,sstatus
    8000326c:	0027f793          	andi	a5,a5,2
    80003270:	04079663          	bnez	a5,800032bc <pop_off+0x6c>
    80003274:	07852783          	lw	a5,120(a0)
    80003278:	02f05a63          	blez	a5,800032ac <pop_off+0x5c>
    8000327c:	fff7871b          	addiw	a4,a5,-1
    80003280:	06e52c23          	sw	a4,120(a0)
    80003284:	00071c63          	bnez	a4,8000329c <pop_off+0x4c>
    80003288:	07c52783          	lw	a5,124(a0)
    8000328c:	00078863          	beqz	a5,8000329c <pop_off+0x4c>
    80003290:	100027f3          	csrr	a5,sstatus
    80003294:	0027e793          	ori	a5,a5,2
    80003298:	10079073          	csrw	sstatus,a5
    8000329c:	00813083          	ld	ra,8(sp)
    800032a0:	00013403          	ld	s0,0(sp)
    800032a4:	01010113          	addi	sp,sp,16
    800032a8:	00008067          	ret
    800032ac:	00001517          	auipc	a0,0x1
    800032b0:	f0450513          	addi	a0,a0,-252 # 800041b0 <digits+0x48>
    800032b4:	fffff097          	auipc	ra,0xfffff
    800032b8:	018080e7          	jalr	24(ra) # 800022cc <panic>
    800032bc:	00001517          	auipc	a0,0x1
    800032c0:	edc50513          	addi	a0,a0,-292 # 80004198 <digits+0x30>
    800032c4:	fffff097          	auipc	ra,0xfffff
    800032c8:	008080e7          	jalr	8(ra) # 800022cc <panic>

00000000800032cc <push_on>:
    800032cc:	fe010113          	addi	sp,sp,-32
    800032d0:	00813823          	sd	s0,16(sp)
    800032d4:	00113c23          	sd	ra,24(sp)
    800032d8:	00913423          	sd	s1,8(sp)
    800032dc:	02010413          	addi	s0,sp,32
    800032e0:	100024f3          	csrr	s1,sstatus
    800032e4:	100027f3          	csrr	a5,sstatus
    800032e8:	0027e793          	ori	a5,a5,2
    800032ec:	10079073          	csrw	sstatus,a5
    800032f0:	ffffe097          	auipc	ra,0xffffe
    800032f4:	618080e7          	jalr	1560(ra) # 80001908 <mycpu>
    800032f8:	07852783          	lw	a5,120(a0)
    800032fc:	02078663          	beqz	a5,80003328 <push_on+0x5c>
    80003300:	ffffe097          	auipc	ra,0xffffe
    80003304:	608080e7          	jalr	1544(ra) # 80001908 <mycpu>
    80003308:	07852783          	lw	a5,120(a0)
    8000330c:	01813083          	ld	ra,24(sp)
    80003310:	01013403          	ld	s0,16(sp)
    80003314:	0017879b          	addiw	a5,a5,1
    80003318:	06f52c23          	sw	a5,120(a0)
    8000331c:	00813483          	ld	s1,8(sp)
    80003320:	02010113          	addi	sp,sp,32
    80003324:	00008067          	ret
    80003328:	0014d493          	srli	s1,s1,0x1
    8000332c:	ffffe097          	auipc	ra,0xffffe
    80003330:	5dc080e7          	jalr	1500(ra) # 80001908 <mycpu>
    80003334:	0014f493          	andi	s1,s1,1
    80003338:	06952e23          	sw	s1,124(a0)
    8000333c:	fc5ff06f          	j	80003300 <push_on+0x34>

0000000080003340 <pop_on>:
    80003340:	ff010113          	addi	sp,sp,-16
    80003344:	00813023          	sd	s0,0(sp)
    80003348:	00113423          	sd	ra,8(sp)
    8000334c:	01010413          	addi	s0,sp,16
    80003350:	ffffe097          	auipc	ra,0xffffe
    80003354:	5b8080e7          	jalr	1464(ra) # 80001908 <mycpu>
    80003358:	100027f3          	csrr	a5,sstatus
    8000335c:	0027f793          	andi	a5,a5,2
    80003360:	04078463          	beqz	a5,800033a8 <pop_on+0x68>
    80003364:	07852783          	lw	a5,120(a0)
    80003368:	02f05863          	blez	a5,80003398 <pop_on+0x58>
    8000336c:	fff7879b          	addiw	a5,a5,-1
    80003370:	06f52c23          	sw	a5,120(a0)
    80003374:	07853783          	ld	a5,120(a0)
    80003378:	00079863          	bnez	a5,80003388 <pop_on+0x48>
    8000337c:	100027f3          	csrr	a5,sstatus
    80003380:	ffd7f793          	andi	a5,a5,-3
    80003384:	10079073          	csrw	sstatus,a5
    80003388:	00813083          	ld	ra,8(sp)
    8000338c:	00013403          	ld	s0,0(sp)
    80003390:	01010113          	addi	sp,sp,16
    80003394:	00008067          	ret
    80003398:	00001517          	auipc	a0,0x1
    8000339c:	e4050513          	addi	a0,a0,-448 # 800041d8 <digits+0x70>
    800033a0:	fffff097          	auipc	ra,0xfffff
    800033a4:	f2c080e7          	jalr	-212(ra) # 800022cc <panic>
    800033a8:	00001517          	auipc	a0,0x1
    800033ac:	e1050513          	addi	a0,a0,-496 # 800041b8 <digits+0x50>
    800033b0:	fffff097          	auipc	ra,0xfffff
    800033b4:	f1c080e7          	jalr	-228(ra) # 800022cc <panic>

00000000800033b8 <__memset>:
    800033b8:	ff010113          	addi	sp,sp,-16
    800033bc:	00813423          	sd	s0,8(sp)
    800033c0:	01010413          	addi	s0,sp,16
    800033c4:	1a060e63          	beqz	a2,80003580 <__memset+0x1c8>
    800033c8:	40a007b3          	neg	a5,a0
    800033cc:	0077f793          	andi	a5,a5,7
    800033d0:	00778693          	addi	a3,a5,7
    800033d4:	00b00813          	li	a6,11
    800033d8:	0ff5f593          	andi	a1,a1,255
    800033dc:	fff6071b          	addiw	a4,a2,-1
    800033e0:	1b06e663          	bltu	a3,a6,8000358c <__memset+0x1d4>
    800033e4:	1cd76463          	bltu	a4,a3,800035ac <__memset+0x1f4>
    800033e8:	1a078e63          	beqz	a5,800035a4 <__memset+0x1ec>
    800033ec:	00b50023          	sb	a1,0(a0)
    800033f0:	00100713          	li	a4,1
    800033f4:	1ae78463          	beq	a5,a4,8000359c <__memset+0x1e4>
    800033f8:	00b500a3          	sb	a1,1(a0)
    800033fc:	00200713          	li	a4,2
    80003400:	1ae78a63          	beq	a5,a4,800035b4 <__memset+0x1fc>
    80003404:	00b50123          	sb	a1,2(a0)
    80003408:	00300713          	li	a4,3
    8000340c:	18e78463          	beq	a5,a4,80003594 <__memset+0x1dc>
    80003410:	00b501a3          	sb	a1,3(a0)
    80003414:	00400713          	li	a4,4
    80003418:	1ae78263          	beq	a5,a4,800035bc <__memset+0x204>
    8000341c:	00b50223          	sb	a1,4(a0)
    80003420:	00500713          	li	a4,5
    80003424:	1ae78063          	beq	a5,a4,800035c4 <__memset+0x20c>
    80003428:	00b502a3          	sb	a1,5(a0)
    8000342c:	00700713          	li	a4,7
    80003430:	18e79e63          	bne	a5,a4,800035cc <__memset+0x214>
    80003434:	00b50323          	sb	a1,6(a0)
    80003438:	00700e93          	li	t4,7
    8000343c:	00859713          	slli	a4,a1,0x8
    80003440:	00e5e733          	or	a4,a1,a4
    80003444:	01059e13          	slli	t3,a1,0x10
    80003448:	01c76e33          	or	t3,a4,t3
    8000344c:	01859313          	slli	t1,a1,0x18
    80003450:	006e6333          	or	t1,t3,t1
    80003454:	02059893          	slli	a7,a1,0x20
    80003458:	40f60e3b          	subw	t3,a2,a5
    8000345c:	011368b3          	or	a7,t1,a7
    80003460:	02859813          	slli	a6,a1,0x28
    80003464:	0108e833          	or	a6,a7,a6
    80003468:	03059693          	slli	a3,a1,0x30
    8000346c:	003e589b          	srliw	a7,t3,0x3
    80003470:	00d866b3          	or	a3,a6,a3
    80003474:	03859713          	slli	a4,a1,0x38
    80003478:	00389813          	slli	a6,a7,0x3
    8000347c:	00f507b3          	add	a5,a0,a5
    80003480:	00e6e733          	or	a4,a3,a4
    80003484:	000e089b          	sext.w	a7,t3
    80003488:	00f806b3          	add	a3,a6,a5
    8000348c:	00e7b023          	sd	a4,0(a5)
    80003490:	00878793          	addi	a5,a5,8
    80003494:	fed79ce3          	bne	a5,a3,8000348c <__memset+0xd4>
    80003498:	ff8e7793          	andi	a5,t3,-8
    8000349c:	0007871b          	sext.w	a4,a5
    800034a0:	01d787bb          	addw	a5,a5,t4
    800034a4:	0ce88e63          	beq	a7,a4,80003580 <__memset+0x1c8>
    800034a8:	00f50733          	add	a4,a0,a5
    800034ac:	00b70023          	sb	a1,0(a4)
    800034b0:	0017871b          	addiw	a4,a5,1
    800034b4:	0cc77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    800034b8:	00e50733          	add	a4,a0,a4
    800034bc:	00b70023          	sb	a1,0(a4)
    800034c0:	0027871b          	addiw	a4,a5,2
    800034c4:	0ac77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    800034c8:	00e50733          	add	a4,a0,a4
    800034cc:	00b70023          	sb	a1,0(a4)
    800034d0:	0037871b          	addiw	a4,a5,3
    800034d4:	0ac77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    800034d8:	00e50733          	add	a4,a0,a4
    800034dc:	00b70023          	sb	a1,0(a4)
    800034e0:	0047871b          	addiw	a4,a5,4
    800034e4:	08c77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    800034e8:	00e50733          	add	a4,a0,a4
    800034ec:	00b70023          	sb	a1,0(a4)
    800034f0:	0057871b          	addiw	a4,a5,5
    800034f4:	08c77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    800034f8:	00e50733          	add	a4,a0,a4
    800034fc:	00b70023          	sb	a1,0(a4)
    80003500:	0067871b          	addiw	a4,a5,6
    80003504:	06c77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003508:	00e50733          	add	a4,a0,a4
    8000350c:	00b70023          	sb	a1,0(a4)
    80003510:	0077871b          	addiw	a4,a5,7
    80003514:	06c77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003518:	00e50733          	add	a4,a0,a4
    8000351c:	00b70023          	sb	a1,0(a4)
    80003520:	0087871b          	addiw	a4,a5,8
    80003524:	04c77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003528:	00e50733          	add	a4,a0,a4
    8000352c:	00b70023          	sb	a1,0(a4)
    80003530:	0097871b          	addiw	a4,a5,9
    80003534:	04c77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003538:	00e50733          	add	a4,a0,a4
    8000353c:	00b70023          	sb	a1,0(a4)
    80003540:	00a7871b          	addiw	a4,a5,10
    80003544:	02c77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003548:	00e50733          	add	a4,a0,a4
    8000354c:	00b70023          	sb	a1,0(a4)
    80003550:	00b7871b          	addiw	a4,a5,11
    80003554:	02c77663          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003558:	00e50733          	add	a4,a0,a4
    8000355c:	00b70023          	sb	a1,0(a4)
    80003560:	00c7871b          	addiw	a4,a5,12
    80003564:	00c77e63          	bgeu	a4,a2,80003580 <__memset+0x1c8>
    80003568:	00e50733          	add	a4,a0,a4
    8000356c:	00b70023          	sb	a1,0(a4)
    80003570:	00d7879b          	addiw	a5,a5,13
    80003574:	00c7f663          	bgeu	a5,a2,80003580 <__memset+0x1c8>
    80003578:	00f507b3          	add	a5,a0,a5
    8000357c:	00b78023          	sb	a1,0(a5)
    80003580:	00813403          	ld	s0,8(sp)
    80003584:	01010113          	addi	sp,sp,16
    80003588:	00008067          	ret
    8000358c:	00b00693          	li	a3,11
    80003590:	e55ff06f          	j	800033e4 <__memset+0x2c>
    80003594:	00300e93          	li	t4,3
    80003598:	ea5ff06f          	j	8000343c <__memset+0x84>
    8000359c:	00100e93          	li	t4,1
    800035a0:	e9dff06f          	j	8000343c <__memset+0x84>
    800035a4:	00000e93          	li	t4,0
    800035a8:	e95ff06f          	j	8000343c <__memset+0x84>
    800035ac:	00000793          	li	a5,0
    800035b0:	ef9ff06f          	j	800034a8 <__memset+0xf0>
    800035b4:	00200e93          	li	t4,2
    800035b8:	e85ff06f          	j	8000343c <__memset+0x84>
    800035bc:	00400e93          	li	t4,4
    800035c0:	e7dff06f          	j	8000343c <__memset+0x84>
    800035c4:	00500e93          	li	t4,5
    800035c8:	e75ff06f          	j	8000343c <__memset+0x84>
    800035cc:	00600e93          	li	t4,6
    800035d0:	e6dff06f          	j	8000343c <__memset+0x84>

00000000800035d4 <__memmove>:
    800035d4:	ff010113          	addi	sp,sp,-16
    800035d8:	00813423          	sd	s0,8(sp)
    800035dc:	01010413          	addi	s0,sp,16
    800035e0:	0e060863          	beqz	a2,800036d0 <__memmove+0xfc>
    800035e4:	fff6069b          	addiw	a3,a2,-1
    800035e8:	0006881b          	sext.w	a6,a3
    800035ec:	0ea5e863          	bltu	a1,a0,800036dc <__memmove+0x108>
    800035f0:	00758713          	addi	a4,a1,7
    800035f4:	00a5e7b3          	or	a5,a1,a0
    800035f8:	40a70733          	sub	a4,a4,a0
    800035fc:	0077f793          	andi	a5,a5,7
    80003600:	00f73713          	sltiu	a4,a4,15
    80003604:	00174713          	xori	a4,a4,1
    80003608:	0017b793          	seqz	a5,a5
    8000360c:	00e7f7b3          	and	a5,a5,a4
    80003610:	10078863          	beqz	a5,80003720 <__memmove+0x14c>
    80003614:	00900793          	li	a5,9
    80003618:	1107f463          	bgeu	a5,a6,80003720 <__memmove+0x14c>
    8000361c:	0036581b          	srliw	a6,a2,0x3
    80003620:	fff8081b          	addiw	a6,a6,-1
    80003624:	02081813          	slli	a6,a6,0x20
    80003628:	01d85893          	srli	a7,a6,0x1d
    8000362c:	00858813          	addi	a6,a1,8
    80003630:	00058793          	mv	a5,a1
    80003634:	00050713          	mv	a4,a0
    80003638:	01088833          	add	a6,a7,a6
    8000363c:	0007b883          	ld	a7,0(a5)
    80003640:	00878793          	addi	a5,a5,8
    80003644:	00870713          	addi	a4,a4,8
    80003648:	ff173c23          	sd	a7,-8(a4)
    8000364c:	ff0798e3          	bne	a5,a6,8000363c <__memmove+0x68>
    80003650:	ff867713          	andi	a4,a2,-8
    80003654:	02071793          	slli	a5,a4,0x20
    80003658:	0207d793          	srli	a5,a5,0x20
    8000365c:	00f585b3          	add	a1,a1,a5
    80003660:	40e686bb          	subw	a3,a3,a4
    80003664:	00f507b3          	add	a5,a0,a5
    80003668:	06e60463          	beq	a2,a4,800036d0 <__memmove+0xfc>
    8000366c:	0005c703          	lbu	a4,0(a1)
    80003670:	00e78023          	sb	a4,0(a5)
    80003674:	04068e63          	beqz	a3,800036d0 <__memmove+0xfc>
    80003678:	0015c603          	lbu	a2,1(a1)
    8000367c:	00100713          	li	a4,1
    80003680:	00c780a3          	sb	a2,1(a5)
    80003684:	04e68663          	beq	a3,a4,800036d0 <__memmove+0xfc>
    80003688:	0025c603          	lbu	a2,2(a1)
    8000368c:	00200713          	li	a4,2
    80003690:	00c78123          	sb	a2,2(a5)
    80003694:	02e68e63          	beq	a3,a4,800036d0 <__memmove+0xfc>
    80003698:	0035c603          	lbu	a2,3(a1)
    8000369c:	00300713          	li	a4,3
    800036a0:	00c781a3          	sb	a2,3(a5)
    800036a4:	02e68663          	beq	a3,a4,800036d0 <__memmove+0xfc>
    800036a8:	0045c603          	lbu	a2,4(a1)
    800036ac:	00400713          	li	a4,4
    800036b0:	00c78223          	sb	a2,4(a5)
    800036b4:	00e68e63          	beq	a3,a4,800036d0 <__memmove+0xfc>
    800036b8:	0055c603          	lbu	a2,5(a1)
    800036bc:	00500713          	li	a4,5
    800036c0:	00c782a3          	sb	a2,5(a5)
    800036c4:	00e68663          	beq	a3,a4,800036d0 <__memmove+0xfc>
    800036c8:	0065c703          	lbu	a4,6(a1)
    800036cc:	00e78323          	sb	a4,6(a5)
    800036d0:	00813403          	ld	s0,8(sp)
    800036d4:	01010113          	addi	sp,sp,16
    800036d8:	00008067          	ret
    800036dc:	02061713          	slli	a4,a2,0x20
    800036e0:	02075713          	srli	a4,a4,0x20
    800036e4:	00e587b3          	add	a5,a1,a4
    800036e8:	f0f574e3          	bgeu	a0,a5,800035f0 <__memmove+0x1c>
    800036ec:	02069613          	slli	a2,a3,0x20
    800036f0:	02065613          	srli	a2,a2,0x20
    800036f4:	fff64613          	not	a2,a2
    800036f8:	00e50733          	add	a4,a0,a4
    800036fc:	00c78633          	add	a2,a5,a2
    80003700:	fff7c683          	lbu	a3,-1(a5)
    80003704:	fff78793          	addi	a5,a5,-1
    80003708:	fff70713          	addi	a4,a4,-1
    8000370c:	00d70023          	sb	a3,0(a4)
    80003710:	fec798e3          	bne	a5,a2,80003700 <__memmove+0x12c>
    80003714:	00813403          	ld	s0,8(sp)
    80003718:	01010113          	addi	sp,sp,16
    8000371c:	00008067          	ret
    80003720:	02069713          	slli	a4,a3,0x20
    80003724:	02075713          	srli	a4,a4,0x20
    80003728:	00170713          	addi	a4,a4,1
    8000372c:	00e50733          	add	a4,a0,a4
    80003730:	00050793          	mv	a5,a0
    80003734:	0005c683          	lbu	a3,0(a1)
    80003738:	00178793          	addi	a5,a5,1
    8000373c:	00158593          	addi	a1,a1,1
    80003740:	fed78fa3          	sb	a3,-1(a5)
    80003744:	fee798e3          	bne	a5,a4,80003734 <__memmove+0x160>
    80003748:	f89ff06f          	j	800036d0 <__memmove+0xfc>

000000008000374c <__mem_free>:
    8000374c:	ff010113          	addi	sp,sp,-16
    80003750:	00813423          	sd	s0,8(sp)
    80003754:	01010413          	addi	s0,sp,16
    80003758:	00001597          	auipc	a1,0x1
    8000375c:	e5058593          	addi	a1,a1,-432 # 800045a8 <freep>
    80003760:	0005b783          	ld	a5,0(a1)
    80003764:	ff050693          	addi	a3,a0,-16
    80003768:	0007b703          	ld	a4,0(a5)
    8000376c:	00d7fc63          	bgeu	a5,a3,80003784 <__mem_free+0x38>
    80003770:	00e6ee63          	bltu	a3,a4,8000378c <__mem_free+0x40>
    80003774:	00e7fc63          	bgeu	a5,a4,8000378c <__mem_free+0x40>
    80003778:	00070793          	mv	a5,a4
    8000377c:	0007b703          	ld	a4,0(a5)
    80003780:	fed7e8e3          	bltu	a5,a3,80003770 <__mem_free+0x24>
    80003784:	fee7eae3          	bltu	a5,a4,80003778 <__mem_free+0x2c>
    80003788:	fee6f8e3          	bgeu	a3,a4,80003778 <__mem_free+0x2c>
    8000378c:	ff852803          	lw	a6,-8(a0)
    80003790:	02081613          	slli	a2,a6,0x20
    80003794:	01c65613          	srli	a2,a2,0x1c
    80003798:	00c68633          	add	a2,a3,a2
    8000379c:	02c70a63          	beq	a4,a2,800037d0 <__mem_free+0x84>
    800037a0:	fee53823          	sd	a4,-16(a0)
    800037a4:	0087a503          	lw	a0,8(a5)
    800037a8:	02051613          	slli	a2,a0,0x20
    800037ac:	01c65613          	srli	a2,a2,0x1c
    800037b0:	00c78633          	add	a2,a5,a2
    800037b4:	04c68263          	beq	a3,a2,800037f8 <__mem_free+0xac>
    800037b8:	00813403          	ld	s0,8(sp)
    800037bc:	00d7b023          	sd	a3,0(a5)
    800037c0:	00f5b023          	sd	a5,0(a1)
    800037c4:	00000513          	li	a0,0
    800037c8:	01010113          	addi	sp,sp,16
    800037cc:	00008067          	ret
    800037d0:	00872603          	lw	a2,8(a4)
    800037d4:	00073703          	ld	a4,0(a4)
    800037d8:	0106083b          	addw	a6,a2,a6
    800037dc:	ff052c23          	sw	a6,-8(a0)
    800037e0:	fee53823          	sd	a4,-16(a0)
    800037e4:	0087a503          	lw	a0,8(a5)
    800037e8:	02051613          	slli	a2,a0,0x20
    800037ec:	01c65613          	srli	a2,a2,0x1c
    800037f0:	00c78633          	add	a2,a5,a2
    800037f4:	fcc692e3          	bne	a3,a2,800037b8 <__mem_free+0x6c>
    800037f8:	00813403          	ld	s0,8(sp)
    800037fc:	0105053b          	addw	a0,a0,a6
    80003800:	00a7a423          	sw	a0,8(a5)
    80003804:	00e7b023          	sd	a4,0(a5)
    80003808:	00f5b023          	sd	a5,0(a1)
    8000380c:	00000513          	li	a0,0
    80003810:	01010113          	addi	sp,sp,16
    80003814:	00008067          	ret

0000000080003818 <__mem_alloc>:
    80003818:	fc010113          	addi	sp,sp,-64
    8000381c:	02813823          	sd	s0,48(sp)
    80003820:	02913423          	sd	s1,40(sp)
    80003824:	03213023          	sd	s2,32(sp)
    80003828:	01513423          	sd	s5,8(sp)
    8000382c:	02113c23          	sd	ra,56(sp)
    80003830:	01313c23          	sd	s3,24(sp)
    80003834:	01413823          	sd	s4,16(sp)
    80003838:	01613023          	sd	s6,0(sp)
    8000383c:	04010413          	addi	s0,sp,64
    80003840:	00001a97          	auipc	s5,0x1
    80003844:	d68a8a93          	addi	s5,s5,-664 # 800045a8 <freep>
    80003848:	00f50913          	addi	s2,a0,15
    8000384c:	000ab683          	ld	a3,0(s5)
    80003850:	00495913          	srli	s2,s2,0x4
    80003854:	0019049b          	addiw	s1,s2,1
    80003858:	00048913          	mv	s2,s1
    8000385c:	0c068c63          	beqz	a3,80003934 <__mem_alloc+0x11c>
    80003860:	0006b503          	ld	a0,0(a3)
    80003864:	00852703          	lw	a4,8(a0)
    80003868:	10977063          	bgeu	a4,s1,80003968 <__mem_alloc+0x150>
    8000386c:	000017b7          	lui	a5,0x1
    80003870:	0009099b          	sext.w	s3,s2
    80003874:	0af4e863          	bltu	s1,a5,80003924 <__mem_alloc+0x10c>
    80003878:	02099a13          	slli	s4,s3,0x20
    8000387c:	01ca5a13          	srli	s4,s4,0x1c
    80003880:	fff00b13          	li	s6,-1
    80003884:	0100006f          	j	80003894 <__mem_alloc+0x7c>
    80003888:	0007b503          	ld	a0,0(a5) # 1000 <_entry-0x7ffff000>
    8000388c:	00852703          	lw	a4,8(a0)
    80003890:	04977463          	bgeu	a4,s1,800038d8 <__mem_alloc+0xc0>
    80003894:	00050793          	mv	a5,a0
    80003898:	fea698e3          	bne	a3,a0,80003888 <__mem_alloc+0x70>
    8000389c:	000a0513          	mv	a0,s4
    800038a0:	00000097          	auipc	ra,0x0
    800038a4:	1f0080e7          	jalr	496(ra) # 80003a90 <kvmincrease>
    800038a8:	00050793          	mv	a5,a0
    800038ac:	01050513          	addi	a0,a0,16
    800038b0:	07678e63          	beq	a5,s6,8000392c <__mem_alloc+0x114>
    800038b4:	0137a423          	sw	s3,8(a5)
    800038b8:	00000097          	auipc	ra,0x0
    800038bc:	e94080e7          	jalr	-364(ra) # 8000374c <__mem_free>
    800038c0:	000ab783          	ld	a5,0(s5)
    800038c4:	06078463          	beqz	a5,8000392c <__mem_alloc+0x114>
    800038c8:	0007b503          	ld	a0,0(a5)
    800038cc:	00078693          	mv	a3,a5
    800038d0:	00852703          	lw	a4,8(a0)
    800038d4:	fc9760e3          	bltu	a4,s1,80003894 <__mem_alloc+0x7c>
    800038d8:	08e48263          	beq	s1,a4,8000395c <__mem_alloc+0x144>
    800038dc:	4127073b          	subw	a4,a4,s2
    800038e0:	02071693          	slli	a3,a4,0x20
    800038e4:	01c6d693          	srli	a3,a3,0x1c
    800038e8:	00e52423          	sw	a4,8(a0)
    800038ec:	00d50533          	add	a0,a0,a3
    800038f0:	01252423          	sw	s2,8(a0)
    800038f4:	00fab023          	sd	a5,0(s5)
    800038f8:	01050513          	addi	a0,a0,16
    800038fc:	03813083          	ld	ra,56(sp)
    80003900:	03013403          	ld	s0,48(sp)
    80003904:	02813483          	ld	s1,40(sp)
    80003908:	02013903          	ld	s2,32(sp)
    8000390c:	01813983          	ld	s3,24(sp)
    80003910:	01013a03          	ld	s4,16(sp)
    80003914:	00813a83          	ld	s5,8(sp)
    80003918:	00013b03          	ld	s6,0(sp)
    8000391c:	04010113          	addi	sp,sp,64
    80003920:	00008067          	ret
    80003924:	000019b7          	lui	s3,0x1
    80003928:	f51ff06f          	j	80003878 <__mem_alloc+0x60>
    8000392c:	00000513          	li	a0,0
    80003930:	fcdff06f          	j	800038fc <__mem_alloc+0xe4>
    80003934:	00002797          	auipc	a5,0x2
    80003938:	efc78793          	addi	a5,a5,-260 # 80005830 <base>
    8000393c:	00078513          	mv	a0,a5
    80003940:	00fab023          	sd	a5,0(s5)
    80003944:	00f7b023          	sd	a5,0(a5)
    80003948:	00000713          	li	a4,0
    8000394c:	00002797          	auipc	a5,0x2
    80003950:	ee07a623          	sw	zero,-276(a5) # 80005838 <base+0x8>
    80003954:	00050693          	mv	a3,a0
    80003958:	f11ff06f          	j	80003868 <__mem_alloc+0x50>
    8000395c:	00053703          	ld	a4,0(a0)
    80003960:	00e7b023          	sd	a4,0(a5)
    80003964:	f91ff06f          	j	800038f4 <__mem_alloc+0xdc>
    80003968:	00068793          	mv	a5,a3
    8000396c:	f6dff06f          	j	800038d8 <__mem_alloc+0xc0>

0000000080003970 <__putc>:
    80003970:	fe010113          	addi	sp,sp,-32
    80003974:	00813823          	sd	s0,16(sp)
    80003978:	00113c23          	sd	ra,24(sp)
    8000397c:	02010413          	addi	s0,sp,32
    80003980:	00050793          	mv	a5,a0
    80003984:	fef40593          	addi	a1,s0,-17
    80003988:	00100613          	li	a2,1
    8000398c:	00000513          	li	a0,0
    80003990:	fef407a3          	sb	a5,-17(s0)
    80003994:	fffff097          	auipc	ra,0xfffff
    80003998:	918080e7          	jalr	-1768(ra) # 800022ac <console_write>
    8000399c:	01813083          	ld	ra,24(sp)
    800039a0:	01013403          	ld	s0,16(sp)
    800039a4:	02010113          	addi	sp,sp,32
    800039a8:	00008067          	ret

00000000800039ac <__getc>:
    800039ac:	fe010113          	addi	sp,sp,-32
    800039b0:	00813823          	sd	s0,16(sp)
    800039b4:	00113c23          	sd	ra,24(sp)
    800039b8:	02010413          	addi	s0,sp,32
    800039bc:	fe840593          	addi	a1,s0,-24
    800039c0:	00100613          	li	a2,1
    800039c4:	00000513          	li	a0,0
    800039c8:	fffff097          	auipc	ra,0xfffff
    800039cc:	8c4080e7          	jalr	-1852(ra) # 8000228c <console_read>
    800039d0:	fe844503          	lbu	a0,-24(s0)
    800039d4:	01813083          	ld	ra,24(sp)
    800039d8:	01013403          	ld	s0,16(sp)
    800039dc:	02010113          	addi	sp,sp,32
    800039e0:	00008067          	ret

00000000800039e4 <console_handler>:
    800039e4:	fe010113          	addi	sp,sp,-32
    800039e8:	00813823          	sd	s0,16(sp)
    800039ec:	00113c23          	sd	ra,24(sp)
    800039f0:	00913423          	sd	s1,8(sp)
    800039f4:	02010413          	addi	s0,sp,32
    800039f8:	14202773          	csrr	a4,scause
    800039fc:	100027f3          	csrr	a5,sstatus
    80003a00:	0027f793          	andi	a5,a5,2
    80003a04:	06079e63          	bnez	a5,80003a80 <console_handler+0x9c>
    80003a08:	00074c63          	bltz	a4,80003a20 <console_handler+0x3c>
    80003a0c:	01813083          	ld	ra,24(sp)
    80003a10:	01013403          	ld	s0,16(sp)
    80003a14:	00813483          	ld	s1,8(sp)
    80003a18:	02010113          	addi	sp,sp,32
    80003a1c:	00008067          	ret
    80003a20:	0ff77713          	andi	a4,a4,255
    80003a24:	00900793          	li	a5,9
    80003a28:	fef712e3          	bne	a4,a5,80003a0c <console_handler+0x28>
    80003a2c:	ffffe097          	auipc	ra,0xffffe
    80003a30:	4b8080e7          	jalr	1208(ra) # 80001ee4 <plic_claim>
    80003a34:	00a00793          	li	a5,10
    80003a38:	00050493          	mv	s1,a0
    80003a3c:	02f50c63          	beq	a0,a5,80003a74 <console_handler+0x90>
    80003a40:	fc0506e3          	beqz	a0,80003a0c <console_handler+0x28>
    80003a44:	00050593          	mv	a1,a0
    80003a48:	00000517          	auipc	a0,0x0
    80003a4c:	69850513          	addi	a0,a0,1688 # 800040e0 <_ZZ12printIntegermE6digits+0xe0>
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	8d8080e7          	jalr	-1832(ra) # 80002328 <__printf>
    80003a58:	01013403          	ld	s0,16(sp)
    80003a5c:	01813083          	ld	ra,24(sp)
    80003a60:	00048513          	mv	a0,s1
    80003a64:	00813483          	ld	s1,8(sp)
    80003a68:	02010113          	addi	sp,sp,32
    80003a6c:	ffffe317          	auipc	t1,0xffffe
    80003a70:	4b030067          	jr	1200(t1) # 80001f1c <plic_complete>
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	1bc080e7          	jalr	444(ra) # 80002c30 <uartintr>
    80003a7c:	fddff06f          	j	80003a58 <console_handler+0x74>
    80003a80:	00000517          	auipc	a0,0x0
    80003a84:	76050513          	addi	a0,a0,1888 # 800041e0 <digits+0x78>
    80003a88:	fffff097          	auipc	ra,0xfffff
    80003a8c:	844080e7          	jalr	-1980(ra) # 800022cc <panic>

0000000080003a90 <kvmincrease>:
    80003a90:	fe010113          	addi	sp,sp,-32
    80003a94:	01213023          	sd	s2,0(sp)
    80003a98:	00001937          	lui	s2,0x1
    80003a9c:	fff90913          	addi	s2,s2,-1 # fff <_entry-0x7ffff001>
    80003aa0:	00813823          	sd	s0,16(sp)
    80003aa4:	00113c23          	sd	ra,24(sp)
    80003aa8:	00913423          	sd	s1,8(sp)
    80003aac:	02010413          	addi	s0,sp,32
    80003ab0:	01250933          	add	s2,a0,s2
    80003ab4:	00c95913          	srli	s2,s2,0xc
    80003ab8:	02090863          	beqz	s2,80003ae8 <kvmincrease+0x58>
    80003abc:	00000493          	li	s1,0
    80003ac0:	00148493          	addi	s1,s1,1
    80003ac4:	fffff097          	auipc	ra,0xfffff
    80003ac8:	4bc080e7          	jalr	1212(ra) # 80002f80 <kalloc>
    80003acc:	fe991ae3          	bne	s2,s1,80003ac0 <kvmincrease+0x30>
    80003ad0:	01813083          	ld	ra,24(sp)
    80003ad4:	01013403          	ld	s0,16(sp)
    80003ad8:	00813483          	ld	s1,8(sp)
    80003adc:	00013903          	ld	s2,0(sp)
    80003ae0:	02010113          	addi	sp,sp,32
    80003ae4:	00008067          	ret
    80003ae8:	01813083          	ld	ra,24(sp)
    80003aec:	01013403          	ld	s0,16(sp)
    80003af0:	00813483          	ld	s1,8(sp)
    80003af4:	00013903          	ld	s2,0(sp)
    80003af8:	00000513          	li	a0,0
    80003afc:	02010113          	addi	sp,sp,32
    80003b00:	00008067          	ret
	...
