
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	00004117          	auipc	sp,0x4
    80000004:	23813103          	ld	sp,568(sp) # 80004238 <_GLOBAL_OFFSET_TABLE_+0x8>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	090010ef          	jal	ra,800010ac <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <add>:
.global add
.type add, @function


add:
    add a0, a0, a1
    80001000:	00b50533          	add	a0,a0,a1
    ret
    80001004:	00008067          	ret

0000000080001008 <main>:
#include "../lib/console.h"

extern int add(int x, int y);

void main(){
    80001008:	ff010113          	addi	sp,sp,-16
    8000100c:	00113423          	sd	ra,8(sp)
    80001010:	00813023          	sd	s0,0(sp)
    80001014:	01010413          	addi	s0,sp,16
    __putc('O');
    80001018:	04f00513          	li	a0,79
    8000101c:	00002097          	auipc	ra,0x2
    80001020:	150080e7          	jalr	336(ra) # 8000316c <__putc>
    __putc('S');
    80001024:	05300513          	li	a0,83
    80001028:	00002097          	auipc	ra,0x2
    8000102c:	144080e7          	jalr	324(ra) # 8000316c <__putc>
    __putc('1');
    80001030:	03100513          	li	a0,49
    80001034:	00002097          	auipc	ra,0x2
    80001038:	138080e7          	jalr	312(ra) # 8000316c <__putc>
    __putc('\n');
    8000103c:	00a00513          	li	a0,10
    80001040:	00002097          	auipc	ra,0x2
    80001044:	12c080e7          	jalr	300(ra) # 8000316c <__putc>
    __putc('\n');
    80001048:	00a00513          	li	a0,10
    8000104c:	00002097          	auipc	ra,0x2
    80001050:	120080e7          	jalr	288(ra) # 8000316c <__putc>

    int result = add(1, 2);
    80001054:	00200593          	li	a1,2
    80001058:	00100513          	li	a0,1
    8000105c:	00000097          	auipc	ra,0x0
    80001060:	fa4080e7          	jalr	-92(ra) # 80001000 <add>
    __putc('0'+result);
    80001064:	0305051b          	addiw	a0,a0,48
    80001068:	0ff57513          	andi	a0,a0,255
    8000106c:	00002097          	auipc	ra,0x2
    80001070:	100080e7          	jalr	256(ra) # 8000316c <__putc>

//    printf("Result: %x", result);


    while(1){
        char character = __getc();
    80001074:	00002097          	auipc	ra,0x2
    80001078:	134080e7          	jalr	308(ra) # 800031a8 <__getc>
        __putc(character + 30);
    8000107c:	01e5051b          	addiw	a0,a0,30
    80001080:	0ff57513          	andi	a0,a0,255
    80001084:	00002097          	auipc	ra,0x2
    80001088:	0e8080e7          	jalr	232(ra) # 8000316c <__putc>
    while(1){
    8000108c:	fe9ff06f          	j	80001074 <main+0x6c>

0000000080001090 <_ZN15MemoryAllocator11getInstanceEv>:
//

#include "../h/MemoryAllocator.hpp"


MemoryAllocator *MemoryAllocator::getInstance() {
    80001090:	ff010113          	addi	sp,sp,-16
    80001094:	00813423          	sd	s0,8(sp)
    80001098:	01010413          	addi	s0,sp,16
    return this->instance;
}
    8000109c:	00053503          	ld	a0,0(a0) # 1000 <_entry-0x7ffff000>
    800010a0:	00813403          	ld	s0,8(sp)
    800010a4:	01010113          	addi	sp,sp,16
    800010a8:	00008067          	ret

00000000800010ac <start>:
    800010ac:	ff010113          	addi	sp,sp,-16
    800010b0:	00813423          	sd	s0,8(sp)
    800010b4:	01010413          	addi	s0,sp,16
    800010b8:	300027f3          	csrr	a5,mstatus
    800010bc:	ffffe737          	lui	a4,0xffffe
    800010c0:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7fff932f>
    800010c4:	00e7f7b3          	and	a5,a5,a4
    800010c8:	00001737          	lui	a4,0x1
    800010cc:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    800010d0:	00e7e7b3          	or	a5,a5,a4
    800010d4:	30079073          	csrw	mstatus,a5
    800010d8:	00000797          	auipc	a5,0x0
    800010dc:	16078793          	addi	a5,a5,352 # 80001238 <system_main>
    800010e0:	34179073          	csrw	mepc,a5
    800010e4:	00000793          	li	a5,0
    800010e8:	18079073          	csrw	satp,a5
    800010ec:	000107b7          	lui	a5,0x10
    800010f0:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    800010f4:	30279073          	csrw	medeleg,a5
    800010f8:	30379073          	csrw	mideleg,a5
    800010fc:	104027f3          	csrr	a5,sie
    80001100:	2227e793          	ori	a5,a5,546
    80001104:	10479073          	csrw	sie,a5
    80001108:	fff00793          	li	a5,-1
    8000110c:	00a7d793          	srli	a5,a5,0xa
    80001110:	3b079073          	csrw	pmpaddr0,a5
    80001114:	00f00793          	li	a5,15
    80001118:	3a079073          	csrw	pmpcfg0,a5
    8000111c:	f14027f3          	csrr	a5,mhartid
    80001120:	0200c737          	lui	a4,0x200c
    80001124:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80001128:	0007869b          	sext.w	a3,a5
    8000112c:	00269713          	slli	a4,a3,0x2
    80001130:	000f4637          	lui	a2,0xf4
    80001134:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80001138:	00d70733          	add	a4,a4,a3
    8000113c:	0037979b          	slliw	a5,a5,0x3
    80001140:	020046b7          	lui	a3,0x2004
    80001144:	00d787b3          	add	a5,a5,a3
    80001148:	00c585b3          	add	a1,a1,a2
    8000114c:	00371693          	slli	a3,a4,0x3
    80001150:	00003717          	auipc	a4,0x3
    80001154:	13070713          	addi	a4,a4,304 # 80004280 <timer_scratch>
    80001158:	00b7b023          	sd	a1,0(a5)
    8000115c:	00d70733          	add	a4,a4,a3
    80001160:	00f73c23          	sd	a5,24(a4)
    80001164:	02c73023          	sd	a2,32(a4)
    80001168:	34071073          	csrw	mscratch,a4
    8000116c:	00000797          	auipc	a5,0x0
    80001170:	6e478793          	addi	a5,a5,1764 # 80001850 <timervec>
    80001174:	30579073          	csrw	mtvec,a5
    80001178:	300027f3          	csrr	a5,mstatus
    8000117c:	0087e793          	ori	a5,a5,8
    80001180:	30079073          	csrw	mstatus,a5
    80001184:	304027f3          	csrr	a5,mie
    80001188:	0807e793          	ori	a5,a5,128
    8000118c:	30479073          	csrw	mie,a5
    80001190:	f14027f3          	csrr	a5,mhartid
    80001194:	0007879b          	sext.w	a5,a5
    80001198:	00078213          	mv	tp,a5
    8000119c:	30200073          	mret
    800011a0:	00813403          	ld	s0,8(sp)
    800011a4:	01010113          	addi	sp,sp,16
    800011a8:	00008067          	ret

00000000800011ac <timerinit>:
    800011ac:	ff010113          	addi	sp,sp,-16
    800011b0:	00813423          	sd	s0,8(sp)
    800011b4:	01010413          	addi	s0,sp,16
    800011b8:	f14027f3          	csrr	a5,mhartid
    800011bc:	0200c737          	lui	a4,0x200c
    800011c0:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    800011c4:	0007869b          	sext.w	a3,a5
    800011c8:	00269713          	slli	a4,a3,0x2
    800011cc:	000f4637          	lui	a2,0xf4
    800011d0:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    800011d4:	00d70733          	add	a4,a4,a3
    800011d8:	0037979b          	slliw	a5,a5,0x3
    800011dc:	020046b7          	lui	a3,0x2004
    800011e0:	00d787b3          	add	a5,a5,a3
    800011e4:	00c585b3          	add	a1,a1,a2
    800011e8:	00371693          	slli	a3,a4,0x3
    800011ec:	00003717          	auipc	a4,0x3
    800011f0:	09470713          	addi	a4,a4,148 # 80004280 <timer_scratch>
    800011f4:	00b7b023          	sd	a1,0(a5)
    800011f8:	00d70733          	add	a4,a4,a3
    800011fc:	00f73c23          	sd	a5,24(a4)
    80001200:	02c73023          	sd	a2,32(a4)
    80001204:	34071073          	csrw	mscratch,a4
    80001208:	00000797          	auipc	a5,0x0
    8000120c:	64878793          	addi	a5,a5,1608 # 80001850 <timervec>
    80001210:	30579073          	csrw	mtvec,a5
    80001214:	300027f3          	csrr	a5,mstatus
    80001218:	0087e793          	ori	a5,a5,8
    8000121c:	30079073          	csrw	mstatus,a5
    80001220:	304027f3          	csrr	a5,mie
    80001224:	0807e793          	ori	a5,a5,128
    80001228:	30479073          	csrw	mie,a5
    8000122c:	00813403          	ld	s0,8(sp)
    80001230:	01010113          	addi	sp,sp,16
    80001234:	00008067          	ret

0000000080001238 <system_main>:
    80001238:	fe010113          	addi	sp,sp,-32
    8000123c:	00813823          	sd	s0,16(sp)
    80001240:	00913423          	sd	s1,8(sp)
    80001244:	00113c23          	sd	ra,24(sp)
    80001248:	02010413          	addi	s0,sp,32
    8000124c:	00000097          	auipc	ra,0x0
    80001250:	0c4080e7          	jalr	196(ra) # 80001310 <cpuid>
    80001254:	00003497          	auipc	s1,0x3
    80001258:	ffc48493          	addi	s1,s1,-4 # 80004250 <started>
    8000125c:	02050263          	beqz	a0,80001280 <system_main+0x48>
    80001260:	0004a783          	lw	a5,0(s1)
    80001264:	0007879b          	sext.w	a5,a5
    80001268:	fe078ce3          	beqz	a5,80001260 <system_main+0x28>
    8000126c:	0ff0000f          	fence
    80001270:	00003517          	auipc	a0,0x3
    80001274:	dc050513          	addi	a0,a0,-576 # 80004030 <console_handler+0xe50>
    80001278:	00001097          	auipc	ra,0x1
    8000127c:	a74080e7          	jalr	-1420(ra) # 80001cec <panic>
    80001280:	00001097          	auipc	ra,0x1
    80001284:	9c8080e7          	jalr	-1592(ra) # 80001c48 <consoleinit>
    80001288:	00001097          	auipc	ra,0x1
    8000128c:	154080e7          	jalr	340(ra) # 800023dc <printfinit>
    80001290:	00003517          	auipc	a0,0x3
    80001294:	e8050513          	addi	a0,a0,-384 # 80004110 <console_handler+0xf30>
    80001298:	00001097          	auipc	ra,0x1
    8000129c:	ab0080e7          	jalr	-1360(ra) # 80001d48 <__printf>
    800012a0:	00003517          	auipc	a0,0x3
    800012a4:	d6050513          	addi	a0,a0,-672 # 80004000 <console_handler+0xe20>
    800012a8:	00001097          	auipc	ra,0x1
    800012ac:	aa0080e7          	jalr	-1376(ra) # 80001d48 <__printf>
    800012b0:	00003517          	auipc	a0,0x3
    800012b4:	e6050513          	addi	a0,a0,-416 # 80004110 <console_handler+0xf30>
    800012b8:	00001097          	auipc	ra,0x1
    800012bc:	a90080e7          	jalr	-1392(ra) # 80001d48 <__printf>
    800012c0:	00001097          	auipc	ra,0x1
    800012c4:	4a8080e7          	jalr	1192(ra) # 80002768 <kinit>
    800012c8:	00000097          	auipc	ra,0x0
    800012cc:	148080e7          	jalr	328(ra) # 80001410 <trapinit>
    800012d0:	00000097          	auipc	ra,0x0
    800012d4:	16c080e7          	jalr	364(ra) # 8000143c <trapinithart>
    800012d8:	00000097          	auipc	ra,0x0
    800012dc:	5b8080e7          	jalr	1464(ra) # 80001890 <plicinit>
    800012e0:	00000097          	auipc	ra,0x0
    800012e4:	5d8080e7          	jalr	1496(ra) # 800018b8 <plicinithart>
    800012e8:	00000097          	auipc	ra,0x0
    800012ec:	078080e7          	jalr	120(ra) # 80001360 <userinit>
    800012f0:	0ff0000f          	fence
    800012f4:	00100793          	li	a5,1
    800012f8:	00003517          	auipc	a0,0x3
    800012fc:	d2050513          	addi	a0,a0,-736 # 80004018 <console_handler+0xe38>
    80001300:	00f4a023          	sw	a5,0(s1)
    80001304:	00001097          	auipc	ra,0x1
    80001308:	a44080e7          	jalr	-1468(ra) # 80001d48 <__printf>
    8000130c:	0000006f          	j	8000130c <system_main+0xd4>

0000000080001310 <cpuid>:
    80001310:	ff010113          	addi	sp,sp,-16
    80001314:	00813423          	sd	s0,8(sp)
    80001318:	01010413          	addi	s0,sp,16
    8000131c:	00020513          	mv	a0,tp
    80001320:	00813403          	ld	s0,8(sp)
    80001324:	0005051b          	sext.w	a0,a0
    80001328:	01010113          	addi	sp,sp,16
    8000132c:	00008067          	ret

0000000080001330 <mycpu>:
    80001330:	ff010113          	addi	sp,sp,-16
    80001334:	00813423          	sd	s0,8(sp)
    80001338:	01010413          	addi	s0,sp,16
    8000133c:	00020793          	mv	a5,tp
    80001340:	00813403          	ld	s0,8(sp)
    80001344:	0007879b          	sext.w	a5,a5
    80001348:	00779793          	slli	a5,a5,0x7
    8000134c:	00004517          	auipc	a0,0x4
    80001350:	f6450513          	addi	a0,a0,-156 # 800052b0 <cpus>
    80001354:	00f50533          	add	a0,a0,a5
    80001358:	01010113          	addi	sp,sp,16
    8000135c:	00008067          	ret

0000000080001360 <userinit>:
    80001360:	ff010113          	addi	sp,sp,-16
    80001364:	00813423          	sd	s0,8(sp)
    80001368:	01010413          	addi	s0,sp,16
    8000136c:	00813403          	ld	s0,8(sp)
    80001370:	01010113          	addi	sp,sp,16
    80001374:	00000317          	auipc	t1,0x0
    80001378:	c9430067          	jr	-876(t1) # 80001008 <main>

000000008000137c <either_copyout>:
    8000137c:	ff010113          	addi	sp,sp,-16
    80001380:	00813023          	sd	s0,0(sp)
    80001384:	00113423          	sd	ra,8(sp)
    80001388:	01010413          	addi	s0,sp,16
    8000138c:	02051663          	bnez	a0,800013b8 <either_copyout+0x3c>
    80001390:	00058513          	mv	a0,a1
    80001394:	00060593          	mv	a1,a2
    80001398:	0006861b          	sext.w	a2,a3
    8000139c:	00002097          	auipc	ra,0x2
    800013a0:	c58080e7          	jalr	-936(ra) # 80002ff4 <__memmove>
    800013a4:	00813083          	ld	ra,8(sp)
    800013a8:	00013403          	ld	s0,0(sp)
    800013ac:	00000513          	li	a0,0
    800013b0:	01010113          	addi	sp,sp,16
    800013b4:	00008067          	ret
    800013b8:	00003517          	auipc	a0,0x3
    800013bc:	ca050513          	addi	a0,a0,-864 # 80004058 <console_handler+0xe78>
    800013c0:	00001097          	auipc	ra,0x1
    800013c4:	92c080e7          	jalr	-1748(ra) # 80001cec <panic>

00000000800013c8 <either_copyin>:
    800013c8:	ff010113          	addi	sp,sp,-16
    800013cc:	00813023          	sd	s0,0(sp)
    800013d0:	00113423          	sd	ra,8(sp)
    800013d4:	01010413          	addi	s0,sp,16
    800013d8:	02059463          	bnez	a1,80001400 <either_copyin+0x38>
    800013dc:	00060593          	mv	a1,a2
    800013e0:	0006861b          	sext.w	a2,a3
    800013e4:	00002097          	auipc	ra,0x2
    800013e8:	c10080e7          	jalr	-1008(ra) # 80002ff4 <__memmove>
    800013ec:	00813083          	ld	ra,8(sp)
    800013f0:	00013403          	ld	s0,0(sp)
    800013f4:	00000513          	li	a0,0
    800013f8:	01010113          	addi	sp,sp,16
    800013fc:	00008067          	ret
    80001400:	00003517          	auipc	a0,0x3
    80001404:	c8050513          	addi	a0,a0,-896 # 80004080 <console_handler+0xea0>
    80001408:	00001097          	auipc	ra,0x1
    8000140c:	8e4080e7          	jalr	-1820(ra) # 80001cec <panic>

0000000080001410 <trapinit>:
    80001410:	ff010113          	addi	sp,sp,-16
    80001414:	00813423          	sd	s0,8(sp)
    80001418:	01010413          	addi	s0,sp,16
    8000141c:	00813403          	ld	s0,8(sp)
    80001420:	00003597          	auipc	a1,0x3
    80001424:	c8858593          	addi	a1,a1,-888 # 800040a8 <console_handler+0xec8>
    80001428:	00004517          	auipc	a0,0x4
    8000142c:	f0850513          	addi	a0,a0,-248 # 80005330 <tickslock>
    80001430:	01010113          	addi	sp,sp,16
    80001434:	00001317          	auipc	t1,0x1
    80001438:	5c430067          	jr	1476(t1) # 800029f8 <initlock>

000000008000143c <trapinithart>:
    8000143c:	ff010113          	addi	sp,sp,-16
    80001440:	00813423          	sd	s0,8(sp)
    80001444:	01010413          	addi	s0,sp,16
    80001448:	00000797          	auipc	a5,0x0
    8000144c:	2f878793          	addi	a5,a5,760 # 80001740 <kernelvec>
    80001450:	10579073          	csrw	stvec,a5
    80001454:	00813403          	ld	s0,8(sp)
    80001458:	01010113          	addi	sp,sp,16
    8000145c:	00008067          	ret

0000000080001460 <usertrap>:
    80001460:	ff010113          	addi	sp,sp,-16
    80001464:	00813423          	sd	s0,8(sp)
    80001468:	01010413          	addi	s0,sp,16
    8000146c:	00813403          	ld	s0,8(sp)
    80001470:	01010113          	addi	sp,sp,16
    80001474:	00008067          	ret

0000000080001478 <usertrapret>:
    80001478:	ff010113          	addi	sp,sp,-16
    8000147c:	00813423          	sd	s0,8(sp)
    80001480:	01010413          	addi	s0,sp,16
    80001484:	00813403          	ld	s0,8(sp)
    80001488:	01010113          	addi	sp,sp,16
    8000148c:	00008067          	ret

0000000080001490 <kerneltrap>:
    80001490:	fe010113          	addi	sp,sp,-32
    80001494:	00813823          	sd	s0,16(sp)
    80001498:	00113c23          	sd	ra,24(sp)
    8000149c:	00913423          	sd	s1,8(sp)
    800014a0:	02010413          	addi	s0,sp,32
    800014a4:	142025f3          	csrr	a1,scause
    800014a8:	100027f3          	csrr	a5,sstatus
    800014ac:	0027f793          	andi	a5,a5,2
    800014b0:	10079c63          	bnez	a5,800015c8 <kerneltrap+0x138>
    800014b4:	142027f3          	csrr	a5,scause
    800014b8:	0207ce63          	bltz	a5,800014f4 <kerneltrap+0x64>
    800014bc:	00003517          	auipc	a0,0x3
    800014c0:	c3450513          	addi	a0,a0,-972 # 800040f0 <console_handler+0xf10>
    800014c4:	00001097          	auipc	ra,0x1
    800014c8:	884080e7          	jalr	-1916(ra) # 80001d48 <__printf>
    800014cc:	141025f3          	csrr	a1,sepc
    800014d0:	14302673          	csrr	a2,stval
    800014d4:	00003517          	auipc	a0,0x3
    800014d8:	c2c50513          	addi	a0,a0,-980 # 80004100 <console_handler+0xf20>
    800014dc:	00001097          	auipc	ra,0x1
    800014e0:	86c080e7          	jalr	-1940(ra) # 80001d48 <__printf>
    800014e4:	00003517          	auipc	a0,0x3
    800014e8:	c3450513          	addi	a0,a0,-972 # 80004118 <console_handler+0xf38>
    800014ec:	00001097          	auipc	ra,0x1
    800014f0:	800080e7          	jalr	-2048(ra) # 80001cec <panic>
    800014f4:	0ff7f713          	andi	a4,a5,255
    800014f8:	00900693          	li	a3,9
    800014fc:	04d70063          	beq	a4,a3,8000153c <kerneltrap+0xac>
    80001500:	fff00713          	li	a4,-1
    80001504:	03f71713          	slli	a4,a4,0x3f
    80001508:	00170713          	addi	a4,a4,1
    8000150c:	fae798e3          	bne	a5,a4,800014bc <kerneltrap+0x2c>
    80001510:	00000097          	auipc	ra,0x0
    80001514:	e00080e7          	jalr	-512(ra) # 80001310 <cpuid>
    80001518:	06050663          	beqz	a0,80001584 <kerneltrap+0xf4>
    8000151c:	144027f3          	csrr	a5,sip
    80001520:	ffd7f793          	andi	a5,a5,-3
    80001524:	14479073          	csrw	sip,a5
    80001528:	01813083          	ld	ra,24(sp)
    8000152c:	01013403          	ld	s0,16(sp)
    80001530:	00813483          	ld	s1,8(sp)
    80001534:	02010113          	addi	sp,sp,32
    80001538:	00008067          	ret
    8000153c:	00000097          	auipc	ra,0x0
    80001540:	3c8080e7          	jalr	968(ra) # 80001904 <plic_claim>
    80001544:	00a00793          	li	a5,10
    80001548:	00050493          	mv	s1,a0
    8000154c:	06f50863          	beq	a0,a5,800015bc <kerneltrap+0x12c>
    80001550:	fc050ce3          	beqz	a0,80001528 <kerneltrap+0x98>
    80001554:	00050593          	mv	a1,a0
    80001558:	00003517          	auipc	a0,0x3
    8000155c:	b7850513          	addi	a0,a0,-1160 # 800040d0 <console_handler+0xef0>
    80001560:	00000097          	auipc	ra,0x0
    80001564:	7e8080e7          	jalr	2024(ra) # 80001d48 <__printf>
    80001568:	01013403          	ld	s0,16(sp)
    8000156c:	01813083          	ld	ra,24(sp)
    80001570:	00048513          	mv	a0,s1
    80001574:	00813483          	ld	s1,8(sp)
    80001578:	02010113          	addi	sp,sp,32
    8000157c:	00000317          	auipc	t1,0x0
    80001580:	3c030067          	jr	960(t1) # 8000193c <plic_complete>
    80001584:	00004517          	auipc	a0,0x4
    80001588:	dac50513          	addi	a0,a0,-596 # 80005330 <tickslock>
    8000158c:	00001097          	auipc	ra,0x1
    80001590:	490080e7          	jalr	1168(ra) # 80002a1c <acquire>
    80001594:	00003717          	auipc	a4,0x3
    80001598:	cc070713          	addi	a4,a4,-832 # 80004254 <ticks>
    8000159c:	00072783          	lw	a5,0(a4)
    800015a0:	00004517          	auipc	a0,0x4
    800015a4:	d9050513          	addi	a0,a0,-624 # 80005330 <tickslock>
    800015a8:	0017879b          	addiw	a5,a5,1
    800015ac:	00f72023          	sw	a5,0(a4)
    800015b0:	00001097          	auipc	ra,0x1
    800015b4:	538080e7          	jalr	1336(ra) # 80002ae8 <release>
    800015b8:	f65ff06f          	j	8000151c <kerneltrap+0x8c>
    800015bc:	00001097          	auipc	ra,0x1
    800015c0:	094080e7          	jalr	148(ra) # 80002650 <uartintr>
    800015c4:	fa5ff06f          	j	80001568 <kerneltrap+0xd8>
    800015c8:	00003517          	auipc	a0,0x3
    800015cc:	ae850513          	addi	a0,a0,-1304 # 800040b0 <console_handler+0xed0>
    800015d0:	00000097          	auipc	ra,0x0
    800015d4:	71c080e7          	jalr	1820(ra) # 80001cec <panic>

00000000800015d8 <clockintr>:
    800015d8:	fe010113          	addi	sp,sp,-32
    800015dc:	00813823          	sd	s0,16(sp)
    800015e0:	00913423          	sd	s1,8(sp)
    800015e4:	00113c23          	sd	ra,24(sp)
    800015e8:	02010413          	addi	s0,sp,32
    800015ec:	00004497          	auipc	s1,0x4
    800015f0:	d4448493          	addi	s1,s1,-700 # 80005330 <tickslock>
    800015f4:	00048513          	mv	a0,s1
    800015f8:	00001097          	auipc	ra,0x1
    800015fc:	424080e7          	jalr	1060(ra) # 80002a1c <acquire>
    80001600:	00003717          	auipc	a4,0x3
    80001604:	c5470713          	addi	a4,a4,-940 # 80004254 <ticks>
    80001608:	00072783          	lw	a5,0(a4)
    8000160c:	01013403          	ld	s0,16(sp)
    80001610:	01813083          	ld	ra,24(sp)
    80001614:	00048513          	mv	a0,s1
    80001618:	0017879b          	addiw	a5,a5,1
    8000161c:	00813483          	ld	s1,8(sp)
    80001620:	00f72023          	sw	a5,0(a4)
    80001624:	02010113          	addi	sp,sp,32
    80001628:	00001317          	auipc	t1,0x1
    8000162c:	4c030067          	jr	1216(t1) # 80002ae8 <release>

0000000080001630 <devintr>:
    80001630:	142027f3          	csrr	a5,scause
    80001634:	00000513          	li	a0,0
    80001638:	0007c463          	bltz	a5,80001640 <devintr+0x10>
    8000163c:	00008067          	ret
    80001640:	fe010113          	addi	sp,sp,-32
    80001644:	00813823          	sd	s0,16(sp)
    80001648:	00113c23          	sd	ra,24(sp)
    8000164c:	00913423          	sd	s1,8(sp)
    80001650:	02010413          	addi	s0,sp,32
    80001654:	0ff7f713          	andi	a4,a5,255
    80001658:	00900693          	li	a3,9
    8000165c:	04d70c63          	beq	a4,a3,800016b4 <devintr+0x84>
    80001660:	fff00713          	li	a4,-1
    80001664:	03f71713          	slli	a4,a4,0x3f
    80001668:	00170713          	addi	a4,a4,1
    8000166c:	00e78c63          	beq	a5,a4,80001684 <devintr+0x54>
    80001670:	01813083          	ld	ra,24(sp)
    80001674:	01013403          	ld	s0,16(sp)
    80001678:	00813483          	ld	s1,8(sp)
    8000167c:	02010113          	addi	sp,sp,32
    80001680:	00008067          	ret
    80001684:	00000097          	auipc	ra,0x0
    80001688:	c8c080e7          	jalr	-884(ra) # 80001310 <cpuid>
    8000168c:	06050663          	beqz	a0,800016f8 <devintr+0xc8>
    80001690:	144027f3          	csrr	a5,sip
    80001694:	ffd7f793          	andi	a5,a5,-3
    80001698:	14479073          	csrw	sip,a5
    8000169c:	01813083          	ld	ra,24(sp)
    800016a0:	01013403          	ld	s0,16(sp)
    800016a4:	00813483          	ld	s1,8(sp)
    800016a8:	00200513          	li	a0,2
    800016ac:	02010113          	addi	sp,sp,32
    800016b0:	00008067          	ret
    800016b4:	00000097          	auipc	ra,0x0
    800016b8:	250080e7          	jalr	592(ra) # 80001904 <plic_claim>
    800016bc:	00a00793          	li	a5,10
    800016c0:	00050493          	mv	s1,a0
    800016c4:	06f50663          	beq	a0,a5,80001730 <devintr+0x100>
    800016c8:	00100513          	li	a0,1
    800016cc:	fa0482e3          	beqz	s1,80001670 <devintr+0x40>
    800016d0:	00048593          	mv	a1,s1
    800016d4:	00003517          	auipc	a0,0x3
    800016d8:	9fc50513          	addi	a0,a0,-1540 # 800040d0 <console_handler+0xef0>
    800016dc:	00000097          	auipc	ra,0x0
    800016e0:	66c080e7          	jalr	1644(ra) # 80001d48 <__printf>
    800016e4:	00048513          	mv	a0,s1
    800016e8:	00000097          	auipc	ra,0x0
    800016ec:	254080e7          	jalr	596(ra) # 8000193c <plic_complete>
    800016f0:	00100513          	li	a0,1
    800016f4:	f7dff06f          	j	80001670 <devintr+0x40>
    800016f8:	00004517          	auipc	a0,0x4
    800016fc:	c3850513          	addi	a0,a0,-968 # 80005330 <tickslock>
    80001700:	00001097          	auipc	ra,0x1
    80001704:	31c080e7          	jalr	796(ra) # 80002a1c <acquire>
    80001708:	00003717          	auipc	a4,0x3
    8000170c:	b4c70713          	addi	a4,a4,-1204 # 80004254 <ticks>
    80001710:	00072783          	lw	a5,0(a4)
    80001714:	00004517          	auipc	a0,0x4
    80001718:	c1c50513          	addi	a0,a0,-996 # 80005330 <tickslock>
    8000171c:	0017879b          	addiw	a5,a5,1
    80001720:	00f72023          	sw	a5,0(a4)
    80001724:	00001097          	auipc	ra,0x1
    80001728:	3c4080e7          	jalr	964(ra) # 80002ae8 <release>
    8000172c:	f65ff06f          	j	80001690 <devintr+0x60>
    80001730:	00001097          	auipc	ra,0x1
    80001734:	f20080e7          	jalr	-224(ra) # 80002650 <uartintr>
    80001738:	fadff06f          	j	800016e4 <devintr+0xb4>
    8000173c:	0000                	unimp
	...

0000000080001740 <kernelvec>:
    80001740:	f0010113          	addi	sp,sp,-256
    80001744:	00113023          	sd	ra,0(sp)
    80001748:	00213423          	sd	sp,8(sp)
    8000174c:	00313823          	sd	gp,16(sp)
    80001750:	00413c23          	sd	tp,24(sp)
    80001754:	02513023          	sd	t0,32(sp)
    80001758:	02613423          	sd	t1,40(sp)
    8000175c:	02713823          	sd	t2,48(sp)
    80001760:	02813c23          	sd	s0,56(sp)
    80001764:	04913023          	sd	s1,64(sp)
    80001768:	04a13423          	sd	a0,72(sp)
    8000176c:	04b13823          	sd	a1,80(sp)
    80001770:	04c13c23          	sd	a2,88(sp)
    80001774:	06d13023          	sd	a3,96(sp)
    80001778:	06e13423          	sd	a4,104(sp)
    8000177c:	06f13823          	sd	a5,112(sp)
    80001780:	07013c23          	sd	a6,120(sp)
    80001784:	09113023          	sd	a7,128(sp)
    80001788:	09213423          	sd	s2,136(sp)
    8000178c:	09313823          	sd	s3,144(sp)
    80001790:	09413c23          	sd	s4,152(sp)
    80001794:	0b513023          	sd	s5,160(sp)
    80001798:	0b613423          	sd	s6,168(sp)
    8000179c:	0b713823          	sd	s7,176(sp)
    800017a0:	0b813c23          	sd	s8,184(sp)
    800017a4:	0d913023          	sd	s9,192(sp)
    800017a8:	0da13423          	sd	s10,200(sp)
    800017ac:	0db13823          	sd	s11,208(sp)
    800017b0:	0dc13c23          	sd	t3,216(sp)
    800017b4:	0fd13023          	sd	t4,224(sp)
    800017b8:	0fe13423          	sd	t5,232(sp)
    800017bc:	0ff13823          	sd	t6,240(sp)
    800017c0:	cd1ff0ef          	jal	ra,80001490 <kerneltrap>
    800017c4:	00013083          	ld	ra,0(sp)
    800017c8:	00813103          	ld	sp,8(sp)
    800017cc:	01013183          	ld	gp,16(sp)
    800017d0:	02013283          	ld	t0,32(sp)
    800017d4:	02813303          	ld	t1,40(sp)
    800017d8:	03013383          	ld	t2,48(sp)
    800017dc:	03813403          	ld	s0,56(sp)
    800017e0:	04013483          	ld	s1,64(sp)
    800017e4:	04813503          	ld	a0,72(sp)
    800017e8:	05013583          	ld	a1,80(sp)
    800017ec:	05813603          	ld	a2,88(sp)
    800017f0:	06013683          	ld	a3,96(sp)
    800017f4:	06813703          	ld	a4,104(sp)
    800017f8:	07013783          	ld	a5,112(sp)
    800017fc:	07813803          	ld	a6,120(sp)
    80001800:	08013883          	ld	a7,128(sp)
    80001804:	08813903          	ld	s2,136(sp)
    80001808:	09013983          	ld	s3,144(sp)
    8000180c:	09813a03          	ld	s4,152(sp)
    80001810:	0a013a83          	ld	s5,160(sp)
    80001814:	0a813b03          	ld	s6,168(sp)
    80001818:	0b013b83          	ld	s7,176(sp)
    8000181c:	0b813c03          	ld	s8,184(sp)
    80001820:	0c013c83          	ld	s9,192(sp)
    80001824:	0c813d03          	ld	s10,200(sp)
    80001828:	0d013d83          	ld	s11,208(sp)
    8000182c:	0d813e03          	ld	t3,216(sp)
    80001830:	0e013e83          	ld	t4,224(sp)
    80001834:	0e813f03          	ld	t5,232(sp)
    80001838:	0f013f83          	ld	t6,240(sp)
    8000183c:	10010113          	addi	sp,sp,256
    80001840:	10200073          	sret
    80001844:	00000013          	nop
    80001848:	00000013          	nop
    8000184c:	00000013          	nop

0000000080001850 <timervec>:
    80001850:	34051573          	csrrw	a0,mscratch,a0
    80001854:	00b53023          	sd	a1,0(a0)
    80001858:	00c53423          	sd	a2,8(a0)
    8000185c:	00d53823          	sd	a3,16(a0)
    80001860:	01853583          	ld	a1,24(a0)
    80001864:	02053603          	ld	a2,32(a0)
    80001868:	0005b683          	ld	a3,0(a1)
    8000186c:	00c686b3          	add	a3,a3,a2
    80001870:	00d5b023          	sd	a3,0(a1)
    80001874:	00200593          	li	a1,2
    80001878:	14459073          	csrw	sip,a1
    8000187c:	01053683          	ld	a3,16(a0)
    80001880:	00853603          	ld	a2,8(a0)
    80001884:	00053583          	ld	a1,0(a0)
    80001888:	34051573          	csrrw	a0,mscratch,a0
    8000188c:	30200073          	mret

0000000080001890 <plicinit>:
    80001890:	ff010113          	addi	sp,sp,-16
    80001894:	00813423          	sd	s0,8(sp)
    80001898:	01010413          	addi	s0,sp,16
    8000189c:	00813403          	ld	s0,8(sp)
    800018a0:	0c0007b7          	lui	a5,0xc000
    800018a4:	00100713          	li	a4,1
    800018a8:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    800018ac:	00e7a223          	sw	a4,4(a5)
    800018b0:	01010113          	addi	sp,sp,16
    800018b4:	00008067          	ret

00000000800018b8 <plicinithart>:
    800018b8:	ff010113          	addi	sp,sp,-16
    800018bc:	00813023          	sd	s0,0(sp)
    800018c0:	00113423          	sd	ra,8(sp)
    800018c4:	01010413          	addi	s0,sp,16
    800018c8:	00000097          	auipc	ra,0x0
    800018cc:	a48080e7          	jalr	-1464(ra) # 80001310 <cpuid>
    800018d0:	0085171b          	slliw	a4,a0,0x8
    800018d4:	0c0027b7          	lui	a5,0xc002
    800018d8:	00e787b3          	add	a5,a5,a4
    800018dc:	40200713          	li	a4,1026
    800018e0:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    800018e4:	00813083          	ld	ra,8(sp)
    800018e8:	00013403          	ld	s0,0(sp)
    800018ec:	00d5151b          	slliw	a0,a0,0xd
    800018f0:	0c2017b7          	lui	a5,0xc201
    800018f4:	00a78533          	add	a0,a5,a0
    800018f8:	00052023          	sw	zero,0(a0)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <plic_claim>:
    80001904:	ff010113          	addi	sp,sp,-16
    80001908:	00813023          	sd	s0,0(sp)
    8000190c:	00113423          	sd	ra,8(sp)
    80001910:	01010413          	addi	s0,sp,16
    80001914:	00000097          	auipc	ra,0x0
    80001918:	9fc080e7          	jalr	-1540(ra) # 80001310 <cpuid>
    8000191c:	00813083          	ld	ra,8(sp)
    80001920:	00013403          	ld	s0,0(sp)
    80001924:	00d5151b          	slliw	a0,a0,0xd
    80001928:	0c2017b7          	lui	a5,0xc201
    8000192c:	00a78533          	add	a0,a5,a0
    80001930:	00452503          	lw	a0,4(a0)
    80001934:	01010113          	addi	sp,sp,16
    80001938:	00008067          	ret

000000008000193c <plic_complete>:
    8000193c:	fe010113          	addi	sp,sp,-32
    80001940:	00813823          	sd	s0,16(sp)
    80001944:	00913423          	sd	s1,8(sp)
    80001948:	00113c23          	sd	ra,24(sp)
    8000194c:	02010413          	addi	s0,sp,32
    80001950:	00050493          	mv	s1,a0
    80001954:	00000097          	auipc	ra,0x0
    80001958:	9bc080e7          	jalr	-1604(ra) # 80001310 <cpuid>
    8000195c:	01813083          	ld	ra,24(sp)
    80001960:	01013403          	ld	s0,16(sp)
    80001964:	00d5179b          	slliw	a5,a0,0xd
    80001968:	0c201737          	lui	a4,0xc201
    8000196c:	00f707b3          	add	a5,a4,a5
    80001970:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    80001974:	00813483          	ld	s1,8(sp)
    80001978:	02010113          	addi	sp,sp,32
    8000197c:	00008067          	ret

0000000080001980 <consolewrite>:
    80001980:	fb010113          	addi	sp,sp,-80
    80001984:	04813023          	sd	s0,64(sp)
    80001988:	04113423          	sd	ra,72(sp)
    8000198c:	02913c23          	sd	s1,56(sp)
    80001990:	03213823          	sd	s2,48(sp)
    80001994:	03313423          	sd	s3,40(sp)
    80001998:	03413023          	sd	s4,32(sp)
    8000199c:	01513c23          	sd	s5,24(sp)
    800019a0:	05010413          	addi	s0,sp,80
    800019a4:	06c05c63          	blez	a2,80001a1c <consolewrite+0x9c>
    800019a8:	00060993          	mv	s3,a2
    800019ac:	00050a13          	mv	s4,a0
    800019b0:	00058493          	mv	s1,a1
    800019b4:	00000913          	li	s2,0
    800019b8:	fff00a93          	li	s5,-1
    800019bc:	01c0006f          	j	800019d8 <consolewrite+0x58>
    800019c0:	fbf44503          	lbu	a0,-65(s0)
    800019c4:	0019091b          	addiw	s2,s2,1
    800019c8:	00148493          	addi	s1,s1,1
    800019cc:	00001097          	auipc	ra,0x1
    800019d0:	a9c080e7          	jalr	-1380(ra) # 80002468 <uartputc>
    800019d4:	03298063          	beq	s3,s2,800019f4 <consolewrite+0x74>
    800019d8:	00048613          	mv	a2,s1
    800019dc:	00100693          	li	a3,1
    800019e0:	000a0593          	mv	a1,s4
    800019e4:	fbf40513          	addi	a0,s0,-65
    800019e8:	00000097          	auipc	ra,0x0
    800019ec:	9e0080e7          	jalr	-1568(ra) # 800013c8 <either_copyin>
    800019f0:	fd5518e3          	bne	a0,s5,800019c0 <consolewrite+0x40>
    800019f4:	04813083          	ld	ra,72(sp)
    800019f8:	04013403          	ld	s0,64(sp)
    800019fc:	03813483          	ld	s1,56(sp)
    80001a00:	02813983          	ld	s3,40(sp)
    80001a04:	02013a03          	ld	s4,32(sp)
    80001a08:	01813a83          	ld	s5,24(sp)
    80001a0c:	00090513          	mv	a0,s2
    80001a10:	03013903          	ld	s2,48(sp)
    80001a14:	05010113          	addi	sp,sp,80
    80001a18:	00008067          	ret
    80001a1c:	00000913          	li	s2,0
    80001a20:	fd5ff06f          	j	800019f4 <consolewrite+0x74>

0000000080001a24 <consoleread>:
    80001a24:	f9010113          	addi	sp,sp,-112
    80001a28:	06813023          	sd	s0,96(sp)
    80001a2c:	04913c23          	sd	s1,88(sp)
    80001a30:	05213823          	sd	s2,80(sp)
    80001a34:	05313423          	sd	s3,72(sp)
    80001a38:	05413023          	sd	s4,64(sp)
    80001a3c:	03513c23          	sd	s5,56(sp)
    80001a40:	03613823          	sd	s6,48(sp)
    80001a44:	03713423          	sd	s7,40(sp)
    80001a48:	03813023          	sd	s8,32(sp)
    80001a4c:	06113423          	sd	ra,104(sp)
    80001a50:	01913c23          	sd	s9,24(sp)
    80001a54:	07010413          	addi	s0,sp,112
    80001a58:	00060b93          	mv	s7,a2
    80001a5c:	00050913          	mv	s2,a0
    80001a60:	00058c13          	mv	s8,a1
    80001a64:	00060b1b          	sext.w	s6,a2
    80001a68:	00004497          	auipc	s1,0x4
    80001a6c:	8e048493          	addi	s1,s1,-1824 # 80005348 <cons>
    80001a70:	00400993          	li	s3,4
    80001a74:	fff00a13          	li	s4,-1
    80001a78:	00a00a93          	li	s5,10
    80001a7c:	05705e63          	blez	s7,80001ad8 <consoleread+0xb4>
    80001a80:	09c4a703          	lw	a4,156(s1)
    80001a84:	0984a783          	lw	a5,152(s1)
    80001a88:	0007071b          	sext.w	a4,a4
    80001a8c:	08e78463          	beq	a5,a4,80001b14 <consoleread+0xf0>
    80001a90:	07f7f713          	andi	a4,a5,127
    80001a94:	00e48733          	add	a4,s1,a4
    80001a98:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    80001a9c:	0017869b          	addiw	a3,a5,1
    80001aa0:	08d4ac23          	sw	a3,152(s1)
    80001aa4:	00070c9b          	sext.w	s9,a4
    80001aa8:	0b370663          	beq	a4,s3,80001b54 <consoleread+0x130>
    80001aac:	00100693          	li	a3,1
    80001ab0:	f9f40613          	addi	a2,s0,-97
    80001ab4:	000c0593          	mv	a1,s8
    80001ab8:	00090513          	mv	a0,s2
    80001abc:	f8e40fa3          	sb	a4,-97(s0)
    80001ac0:	00000097          	auipc	ra,0x0
    80001ac4:	8bc080e7          	jalr	-1860(ra) # 8000137c <either_copyout>
    80001ac8:	01450863          	beq	a0,s4,80001ad8 <consoleread+0xb4>
    80001acc:	001c0c13          	addi	s8,s8,1
    80001ad0:	fffb8b9b          	addiw	s7,s7,-1
    80001ad4:	fb5c94e3          	bne	s9,s5,80001a7c <consoleread+0x58>
    80001ad8:	000b851b          	sext.w	a0,s7
    80001adc:	06813083          	ld	ra,104(sp)
    80001ae0:	06013403          	ld	s0,96(sp)
    80001ae4:	05813483          	ld	s1,88(sp)
    80001ae8:	05013903          	ld	s2,80(sp)
    80001aec:	04813983          	ld	s3,72(sp)
    80001af0:	04013a03          	ld	s4,64(sp)
    80001af4:	03813a83          	ld	s5,56(sp)
    80001af8:	02813b83          	ld	s7,40(sp)
    80001afc:	02013c03          	ld	s8,32(sp)
    80001b00:	01813c83          	ld	s9,24(sp)
    80001b04:	40ab053b          	subw	a0,s6,a0
    80001b08:	03013b03          	ld	s6,48(sp)
    80001b0c:	07010113          	addi	sp,sp,112
    80001b10:	00008067          	ret
    80001b14:	00001097          	auipc	ra,0x1
    80001b18:	1d8080e7          	jalr	472(ra) # 80002cec <push_on>
    80001b1c:	0984a703          	lw	a4,152(s1)
    80001b20:	09c4a783          	lw	a5,156(s1)
    80001b24:	0007879b          	sext.w	a5,a5
    80001b28:	fef70ce3          	beq	a4,a5,80001b20 <consoleread+0xfc>
    80001b2c:	00001097          	auipc	ra,0x1
    80001b30:	234080e7          	jalr	564(ra) # 80002d60 <pop_on>
    80001b34:	0984a783          	lw	a5,152(s1)
    80001b38:	07f7f713          	andi	a4,a5,127
    80001b3c:	00e48733          	add	a4,s1,a4
    80001b40:	01874703          	lbu	a4,24(a4)
    80001b44:	0017869b          	addiw	a3,a5,1
    80001b48:	08d4ac23          	sw	a3,152(s1)
    80001b4c:	00070c9b          	sext.w	s9,a4
    80001b50:	f5371ee3          	bne	a4,s3,80001aac <consoleread+0x88>
    80001b54:	000b851b          	sext.w	a0,s7
    80001b58:	f96bf2e3          	bgeu	s7,s6,80001adc <consoleread+0xb8>
    80001b5c:	08f4ac23          	sw	a5,152(s1)
    80001b60:	f7dff06f          	j	80001adc <consoleread+0xb8>

0000000080001b64 <consputc>:
    80001b64:	10000793          	li	a5,256
    80001b68:	00f50663          	beq	a0,a5,80001b74 <consputc+0x10>
    80001b6c:	00001317          	auipc	t1,0x1
    80001b70:	9f430067          	jr	-1548(t1) # 80002560 <uartputc_sync>
    80001b74:	ff010113          	addi	sp,sp,-16
    80001b78:	00113423          	sd	ra,8(sp)
    80001b7c:	00813023          	sd	s0,0(sp)
    80001b80:	01010413          	addi	s0,sp,16
    80001b84:	00800513          	li	a0,8
    80001b88:	00001097          	auipc	ra,0x1
    80001b8c:	9d8080e7          	jalr	-1576(ra) # 80002560 <uartputc_sync>
    80001b90:	02000513          	li	a0,32
    80001b94:	00001097          	auipc	ra,0x1
    80001b98:	9cc080e7          	jalr	-1588(ra) # 80002560 <uartputc_sync>
    80001b9c:	00013403          	ld	s0,0(sp)
    80001ba0:	00813083          	ld	ra,8(sp)
    80001ba4:	00800513          	li	a0,8
    80001ba8:	01010113          	addi	sp,sp,16
    80001bac:	00001317          	auipc	t1,0x1
    80001bb0:	9b430067          	jr	-1612(t1) # 80002560 <uartputc_sync>

0000000080001bb4 <consoleintr>:
    80001bb4:	fe010113          	addi	sp,sp,-32
    80001bb8:	00813823          	sd	s0,16(sp)
    80001bbc:	00913423          	sd	s1,8(sp)
    80001bc0:	01213023          	sd	s2,0(sp)
    80001bc4:	00113c23          	sd	ra,24(sp)
    80001bc8:	02010413          	addi	s0,sp,32
    80001bcc:	00003917          	auipc	s2,0x3
    80001bd0:	77c90913          	addi	s2,s2,1916 # 80005348 <cons>
    80001bd4:	00050493          	mv	s1,a0
    80001bd8:	00090513          	mv	a0,s2
    80001bdc:	00001097          	auipc	ra,0x1
    80001be0:	e40080e7          	jalr	-448(ra) # 80002a1c <acquire>
    80001be4:	02048c63          	beqz	s1,80001c1c <consoleintr+0x68>
    80001be8:	0a092783          	lw	a5,160(s2)
    80001bec:	09892703          	lw	a4,152(s2)
    80001bf0:	07f00693          	li	a3,127
    80001bf4:	40e7873b          	subw	a4,a5,a4
    80001bf8:	02e6e263          	bltu	a3,a4,80001c1c <consoleintr+0x68>
    80001bfc:	00d00713          	li	a4,13
    80001c00:	04e48063          	beq	s1,a4,80001c40 <consoleintr+0x8c>
    80001c04:	07f7f713          	andi	a4,a5,127
    80001c08:	00e90733          	add	a4,s2,a4
    80001c0c:	0017879b          	addiw	a5,a5,1
    80001c10:	0af92023          	sw	a5,160(s2)
    80001c14:	00970c23          	sb	s1,24(a4)
    80001c18:	08f92e23          	sw	a5,156(s2)
    80001c1c:	01013403          	ld	s0,16(sp)
    80001c20:	01813083          	ld	ra,24(sp)
    80001c24:	00813483          	ld	s1,8(sp)
    80001c28:	00013903          	ld	s2,0(sp)
    80001c2c:	00003517          	auipc	a0,0x3
    80001c30:	71c50513          	addi	a0,a0,1820 # 80005348 <cons>
    80001c34:	02010113          	addi	sp,sp,32
    80001c38:	00001317          	auipc	t1,0x1
    80001c3c:	eb030067          	jr	-336(t1) # 80002ae8 <release>
    80001c40:	00a00493          	li	s1,10
    80001c44:	fc1ff06f          	j	80001c04 <consoleintr+0x50>

0000000080001c48 <consoleinit>:
    80001c48:	fe010113          	addi	sp,sp,-32
    80001c4c:	00113c23          	sd	ra,24(sp)
    80001c50:	00813823          	sd	s0,16(sp)
    80001c54:	00913423          	sd	s1,8(sp)
    80001c58:	02010413          	addi	s0,sp,32
    80001c5c:	00003497          	auipc	s1,0x3
    80001c60:	6ec48493          	addi	s1,s1,1772 # 80005348 <cons>
    80001c64:	00048513          	mv	a0,s1
    80001c68:	00002597          	auipc	a1,0x2
    80001c6c:	4c058593          	addi	a1,a1,1216 # 80004128 <console_handler+0xf48>
    80001c70:	00001097          	auipc	ra,0x1
    80001c74:	d88080e7          	jalr	-632(ra) # 800029f8 <initlock>
    80001c78:	00000097          	auipc	ra,0x0
    80001c7c:	7ac080e7          	jalr	1964(ra) # 80002424 <uartinit>
    80001c80:	01813083          	ld	ra,24(sp)
    80001c84:	01013403          	ld	s0,16(sp)
    80001c88:	00000797          	auipc	a5,0x0
    80001c8c:	d9c78793          	addi	a5,a5,-612 # 80001a24 <consoleread>
    80001c90:	0af4bc23          	sd	a5,184(s1)
    80001c94:	00000797          	auipc	a5,0x0
    80001c98:	cec78793          	addi	a5,a5,-788 # 80001980 <consolewrite>
    80001c9c:	0cf4b023          	sd	a5,192(s1)
    80001ca0:	00813483          	ld	s1,8(sp)
    80001ca4:	02010113          	addi	sp,sp,32
    80001ca8:	00008067          	ret

0000000080001cac <console_read>:
    80001cac:	ff010113          	addi	sp,sp,-16
    80001cb0:	00813423          	sd	s0,8(sp)
    80001cb4:	01010413          	addi	s0,sp,16
    80001cb8:	00813403          	ld	s0,8(sp)
    80001cbc:	00003317          	auipc	t1,0x3
    80001cc0:	74433303          	ld	t1,1860(t1) # 80005400 <devsw+0x10>
    80001cc4:	01010113          	addi	sp,sp,16
    80001cc8:	00030067          	jr	t1

0000000080001ccc <console_write>:
    80001ccc:	ff010113          	addi	sp,sp,-16
    80001cd0:	00813423          	sd	s0,8(sp)
    80001cd4:	01010413          	addi	s0,sp,16
    80001cd8:	00813403          	ld	s0,8(sp)
    80001cdc:	00003317          	auipc	t1,0x3
    80001ce0:	72c33303          	ld	t1,1836(t1) # 80005408 <devsw+0x18>
    80001ce4:	01010113          	addi	sp,sp,16
    80001ce8:	00030067          	jr	t1

0000000080001cec <panic>:
    80001cec:	fe010113          	addi	sp,sp,-32
    80001cf0:	00113c23          	sd	ra,24(sp)
    80001cf4:	00813823          	sd	s0,16(sp)
    80001cf8:	00913423          	sd	s1,8(sp)
    80001cfc:	02010413          	addi	s0,sp,32
    80001d00:	00050493          	mv	s1,a0
    80001d04:	00002517          	auipc	a0,0x2
    80001d08:	42c50513          	addi	a0,a0,1068 # 80004130 <console_handler+0xf50>
    80001d0c:	00003797          	auipc	a5,0x3
    80001d10:	7807ae23          	sw	zero,1948(a5) # 800054a8 <pr+0x18>
    80001d14:	00000097          	auipc	ra,0x0
    80001d18:	034080e7          	jalr	52(ra) # 80001d48 <__printf>
    80001d1c:	00048513          	mv	a0,s1
    80001d20:	00000097          	auipc	ra,0x0
    80001d24:	028080e7          	jalr	40(ra) # 80001d48 <__printf>
    80001d28:	00002517          	auipc	a0,0x2
    80001d2c:	3e850513          	addi	a0,a0,1000 # 80004110 <console_handler+0xf30>
    80001d30:	00000097          	auipc	ra,0x0
    80001d34:	018080e7          	jalr	24(ra) # 80001d48 <__printf>
    80001d38:	00100793          	li	a5,1
    80001d3c:	00002717          	auipc	a4,0x2
    80001d40:	50f72e23          	sw	a5,1308(a4) # 80004258 <panicked>
    80001d44:	0000006f          	j	80001d44 <panic+0x58>

0000000080001d48 <__printf>:
    80001d48:	f3010113          	addi	sp,sp,-208
    80001d4c:	08813023          	sd	s0,128(sp)
    80001d50:	07313423          	sd	s3,104(sp)
    80001d54:	09010413          	addi	s0,sp,144
    80001d58:	05813023          	sd	s8,64(sp)
    80001d5c:	08113423          	sd	ra,136(sp)
    80001d60:	06913c23          	sd	s1,120(sp)
    80001d64:	07213823          	sd	s2,112(sp)
    80001d68:	07413023          	sd	s4,96(sp)
    80001d6c:	05513c23          	sd	s5,88(sp)
    80001d70:	05613823          	sd	s6,80(sp)
    80001d74:	05713423          	sd	s7,72(sp)
    80001d78:	03913c23          	sd	s9,56(sp)
    80001d7c:	03a13823          	sd	s10,48(sp)
    80001d80:	03b13423          	sd	s11,40(sp)
    80001d84:	00003317          	auipc	t1,0x3
    80001d88:	70c30313          	addi	t1,t1,1804 # 80005490 <pr>
    80001d8c:	01832c03          	lw	s8,24(t1)
    80001d90:	00b43423          	sd	a1,8(s0)
    80001d94:	00c43823          	sd	a2,16(s0)
    80001d98:	00d43c23          	sd	a3,24(s0)
    80001d9c:	02e43023          	sd	a4,32(s0)
    80001da0:	02f43423          	sd	a5,40(s0)
    80001da4:	03043823          	sd	a6,48(s0)
    80001da8:	03143c23          	sd	a7,56(s0)
    80001dac:	00050993          	mv	s3,a0
    80001db0:	4a0c1663          	bnez	s8,8000225c <__printf+0x514>
    80001db4:	60098c63          	beqz	s3,800023cc <__printf+0x684>
    80001db8:	0009c503          	lbu	a0,0(s3)
    80001dbc:	00840793          	addi	a5,s0,8
    80001dc0:	f6f43c23          	sd	a5,-136(s0)
    80001dc4:	00000493          	li	s1,0
    80001dc8:	22050063          	beqz	a0,80001fe8 <__printf+0x2a0>
    80001dcc:	00002a37          	lui	s4,0x2
    80001dd0:	00018ab7          	lui	s5,0x18
    80001dd4:	000f4b37          	lui	s6,0xf4
    80001dd8:	00989bb7          	lui	s7,0x989
    80001ddc:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80001de0:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80001de4:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80001de8:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80001dec:	00148c9b          	addiw	s9,s1,1
    80001df0:	02500793          	li	a5,37
    80001df4:	01998933          	add	s2,s3,s9
    80001df8:	38f51263          	bne	a0,a5,8000217c <__printf+0x434>
    80001dfc:	00094783          	lbu	a5,0(s2)
    80001e00:	00078c9b          	sext.w	s9,a5
    80001e04:	1e078263          	beqz	a5,80001fe8 <__printf+0x2a0>
    80001e08:	0024849b          	addiw	s1,s1,2
    80001e0c:	07000713          	li	a4,112
    80001e10:	00998933          	add	s2,s3,s1
    80001e14:	38e78a63          	beq	a5,a4,800021a8 <__printf+0x460>
    80001e18:	20f76863          	bltu	a4,a5,80002028 <__printf+0x2e0>
    80001e1c:	42a78863          	beq	a5,a0,8000224c <__printf+0x504>
    80001e20:	06400713          	li	a4,100
    80001e24:	40e79663          	bne	a5,a4,80002230 <__printf+0x4e8>
    80001e28:	f7843783          	ld	a5,-136(s0)
    80001e2c:	0007a603          	lw	a2,0(a5)
    80001e30:	00878793          	addi	a5,a5,8
    80001e34:	f6f43c23          	sd	a5,-136(s0)
    80001e38:	42064a63          	bltz	a2,8000226c <__printf+0x524>
    80001e3c:	00a00713          	li	a4,10
    80001e40:	02e677bb          	remuw	a5,a2,a4
    80001e44:	00002d97          	auipc	s11,0x2
    80001e48:	314d8d93          	addi	s11,s11,788 # 80004158 <digits>
    80001e4c:	00900593          	li	a1,9
    80001e50:	0006051b          	sext.w	a0,a2
    80001e54:	00000c93          	li	s9,0
    80001e58:	02079793          	slli	a5,a5,0x20
    80001e5c:	0207d793          	srli	a5,a5,0x20
    80001e60:	00fd87b3          	add	a5,s11,a5
    80001e64:	0007c783          	lbu	a5,0(a5)
    80001e68:	02e656bb          	divuw	a3,a2,a4
    80001e6c:	f8f40023          	sb	a5,-128(s0)
    80001e70:	14c5d863          	bge	a1,a2,80001fc0 <__printf+0x278>
    80001e74:	06300593          	li	a1,99
    80001e78:	00100c93          	li	s9,1
    80001e7c:	02e6f7bb          	remuw	a5,a3,a4
    80001e80:	02079793          	slli	a5,a5,0x20
    80001e84:	0207d793          	srli	a5,a5,0x20
    80001e88:	00fd87b3          	add	a5,s11,a5
    80001e8c:	0007c783          	lbu	a5,0(a5)
    80001e90:	02e6d73b          	divuw	a4,a3,a4
    80001e94:	f8f400a3          	sb	a5,-127(s0)
    80001e98:	12a5f463          	bgeu	a1,a0,80001fc0 <__printf+0x278>
    80001e9c:	00a00693          	li	a3,10
    80001ea0:	00900593          	li	a1,9
    80001ea4:	02d777bb          	remuw	a5,a4,a3
    80001ea8:	02079793          	slli	a5,a5,0x20
    80001eac:	0207d793          	srli	a5,a5,0x20
    80001eb0:	00fd87b3          	add	a5,s11,a5
    80001eb4:	0007c503          	lbu	a0,0(a5)
    80001eb8:	02d757bb          	divuw	a5,a4,a3
    80001ebc:	f8a40123          	sb	a0,-126(s0)
    80001ec0:	48e5f263          	bgeu	a1,a4,80002344 <__printf+0x5fc>
    80001ec4:	06300513          	li	a0,99
    80001ec8:	02d7f5bb          	remuw	a1,a5,a3
    80001ecc:	02059593          	slli	a1,a1,0x20
    80001ed0:	0205d593          	srli	a1,a1,0x20
    80001ed4:	00bd85b3          	add	a1,s11,a1
    80001ed8:	0005c583          	lbu	a1,0(a1)
    80001edc:	02d7d7bb          	divuw	a5,a5,a3
    80001ee0:	f8b401a3          	sb	a1,-125(s0)
    80001ee4:	48e57263          	bgeu	a0,a4,80002368 <__printf+0x620>
    80001ee8:	3e700513          	li	a0,999
    80001eec:	02d7f5bb          	remuw	a1,a5,a3
    80001ef0:	02059593          	slli	a1,a1,0x20
    80001ef4:	0205d593          	srli	a1,a1,0x20
    80001ef8:	00bd85b3          	add	a1,s11,a1
    80001efc:	0005c583          	lbu	a1,0(a1)
    80001f00:	02d7d7bb          	divuw	a5,a5,a3
    80001f04:	f8b40223          	sb	a1,-124(s0)
    80001f08:	46e57663          	bgeu	a0,a4,80002374 <__printf+0x62c>
    80001f0c:	02d7f5bb          	remuw	a1,a5,a3
    80001f10:	02059593          	slli	a1,a1,0x20
    80001f14:	0205d593          	srli	a1,a1,0x20
    80001f18:	00bd85b3          	add	a1,s11,a1
    80001f1c:	0005c583          	lbu	a1,0(a1)
    80001f20:	02d7d7bb          	divuw	a5,a5,a3
    80001f24:	f8b402a3          	sb	a1,-123(s0)
    80001f28:	46ea7863          	bgeu	s4,a4,80002398 <__printf+0x650>
    80001f2c:	02d7f5bb          	remuw	a1,a5,a3
    80001f30:	02059593          	slli	a1,a1,0x20
    80001f34:	0205d593          	srli	a1,a1,0x20
    80001f38:	00bd85b3          	add	a1,s11,a1
    80001f3c:	0005c583          	lbu	a1,0(a1)
    80001f40:	02d7d7bb          	divuw	a5,a5,a3
    80001f44:	f8b40323          	sb	a1,-122(s0)
    80001f48:	3eeaf863          	bgeu	s5,a4,80002338 <__printf+0x5f0>
    80001f4c:	02d7f5bb          	remuw	a1,a5,a3
    80001f50:	02059593          	slli	a1,a1,0x20
    80001f54:	0205d593          	srli	a1,a1,0x20
    80001f58:	00bd85b3          	add	a1,s11,a1
    80001f5c:	0005c583          	lbu	a1,0(a1)
    80001f60:	02d7d7bb          	divuw	a5,a5,a3
    80001f64:	f8b403a3          	sb	a1,-121(s0)
    80001f68:	42eb7e63          	bgeu	s6,a4,800023a4 <__printf+0x65c>
    80001f6c:	02d7f5bb          	remuw	a1,a5,a3
    80001f70:	02059593          	slli	a1,a1,0x20
    80001f74:	0205d593          	srli	a1,a1,0x20
    80001f78:	00bd85b3          	add	a1,s11,a1
    80001f7c:	0005c583          	lbu	a1,0(a1)
    80001f80:	02d7d7bb          	divuw	a5,a5,a3
    80001f84:	f8b40423          	sb	a1,-120(s0)
    80001f88:	42ebfc63          	bgeu	s7,a4,800023c0 <__printf+0x678>
    80001f8c:	02079793          	slli	a5,a5,0x20
    80001f90:	0207d793          	srli	a5,a5,0x20
    80001f94:	00fd8db3          	add	s11,s11,a5
    80001f98:	000dc703          	lbu	a4,0(s11)
    80001f9c:	00a00793          	li	a5,10
    80001fa0:	00900c93          	li	s9,9
    80001fa4:	f8e404a3          	sb	a4,-119(s0)
    80001fa8:	00065c63          	bgez	a2,80001fc0 <__printf+0x278>
    80001fac:	f9040713          	addi	a4,s0,-112
    80001fb0:	00f70733          	add	a4,a4,a5
    80001fb4:	02d00693          	li	a3,45
    80001fb8:	fed70823          	sb	a3,-16(a4)
    80001fbc:	00078c93          	mv	s9,a5
    80001fc0:	f8040793          	addi	a5,s0,-128
    80001fc4:	01978cb3          	add	s9,a5,s9
    80001fc8:	f7f40d13          	addi	s10,s0,-129
    80001fcc:	000cc503          	lbu	a0,0(s9)
    80001fd0:	fffc8c93          	addi	s9,s9,-1
    80001fd4:	00000097          	auipc	ra,0x0
    80001fd8:	b90080e7          	jalr	-1136(ra) # 80001b64 <consputc>
    80001fdc:	ffac98e3          	bne	s9,s10,80001fcc <__printf+0x284>
    80001fe0:	00094503          	lbu	a0,0(s2)
    80001fe4:	e00514e3          	bnez	a0,80001dec <__printf+0xa4>
    80001fe8:	1a0c1663          	bnez	s8,80002194 <__printf+0x44c>
    80001fec:	08813083          	ld	ra,136(sp)
    80001ff0:	08013403          	ld	s0,128(sp)
    80001ff4:	07813483          	ld	s1,120(sp)
    80001ff8:	07013903          	ld	s2,112(sp)
    80001ffc:	06813983          	ld	s3,104(sp)
    80002000:	06013a03          	ld	s4,96(sp)
    80002004:	05813a83          	ld	s5,88(sp)
    80002008:	05013b03          	ld	s6,80(sp)
    8000200c:	04813b83          	ld	s7,72(sp)
    80002010:	04013c03          	ld	s8,64(sp)
    80002014:	03813c83          	ld	s9,56(sp)
    80002018:	03013d03          	ld	s10,48(sp)
    8000201c:	02813d83          	ld	s11,40(sp)
    80002020:	0d010113          	addi	sp,sp,208
    80002024:	00008067          	ret
    80002028:	07300713          	li	a4,115
    8000202c:	1ce78a63          	beq	a5,a4,80002200 <__printf+0x4b8>
    80002030:	07800713          	li	a4,120
    80002034:	1ee79e63          	bne	a5,a4,80002230 <__printf+0x4e8>
    80002038:	f7843783          	ld	a5,-136(s0)
    8000203c:	0007a703          	lw	a4,0(a5)
    80002040:	00878793          	addi	a5,a5,8
    80002044:	f6f43c23          	sd	a5,-136(s0)
    80002048:	28074263          	bltz	a4,800022cc <__printf+0x584>
    8000204c:	00002d97          	auipc	s11,0x2
    80002050:	10cd8d93          	addi	s11,s11,268 # 80004158 <digits>
    80002054:	00f77793          	andi	a5,a4,15
    80002058:	00fd87b3          	add	a5,s11,a5
    8000205c:	0007c683          	lbu	a3,0(a5)
    80002060:	00f00613          	li	a2,15
    80002064:	0007079b          	sext.w	a5,a4
    80002068:	f8d40023          	sb	a3,-128(s0)
    8000206c:	0047559b          	srliw	a1,a4,0x4
    80002070:	0047569b          	srliw	a3,a4,0x4
    80002074:	00000c93          	li	s9,0
    80002078:	0ee65063          	bge	a2,a4,80002158 <__printf+0x410>
    8000207c:	00f6f693          	andi	a3,a3,15
    80002080:	00dd86b3          	add	a3,s11,a3
    80002084:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80002088:	0087d79b          	srliw	a5,a5,0x8
    8000208c:	00100c93          	li	s9,1
    80002090:	f8d400a3          	sb	a3,-127(s0)
    80002094:	0cb67263          	bgeu	a2,a1,80002158 <__printf+0x410>
    80002098:	00f7f693          	andi	a3,a5,15
    8000209c:	00dd86b3          	add	a3,s11,a3
    800020a0:	0006c583          	lbu	a1,0(a3)
    800020a4:	00f00613          	li	a2,15
    800020a8:	0047d69b          	srliw	a3,a5,0x4
    800020ac:	f8b40123          	sb	a1,-126(s0)
    800020b0:	0047d593          	srli	a1,a5,0x4
    800020b4:	28f67e63          	bgeu	a2,a5,80002350 <__printf+0x608>
    800020b8:	00f6f693          	andi	a3,a3,15
    800020bc:	00dd86b3          	add	a3,s11,a3
    800020c0:	0006c503          	lbu	a0,0(a3)
    800020c4:	0087d813          	srli	a6,a5,0x8
    800020c8:	0087d69b          	srliw	a3,a5,0x8
    800020cc:	f8a401a3          	sb	a0,-125(s0)
    800020d0:	28b67663          	bgeu	a2,a1,8000235c <__printf+0x614>
    800020d4:	00f6f693          	andi	a3,a3,15
    800020d8:	00dd86b3          	add	a3,s11,a3
    800020dc:	0006c583          	lbu	a1,0(a3)
    800020e0:	00c7d513          	srli	a0,a5,0xc
    800020e4:	00c7d69b          	srliw	a3,a5,0xc
    800020e8:	f8b40223          	sb	a1,-124(s0)
    800020ec:	29067a63          	bgeu	a2,a6,80002380 <__printf+0x638>
    800020f0:	00f6f693          	andi	a3,a3,15
    800020f4:	00dd86b3          	add	a3,s11,a3
    800020f8:	0006c583          	lbu	a1,0(a3)
    800020fc:	0107d813          	srli	a6,a5,0x10
    80002100:	0107d69b          	srliw	a3,a5,0x10
    80002104:	f8b402a3          	sb	a1,-123(s0)
    80002108:	28a67263          	bgeu	a2,a0,8000238c <__printf+0x644>
    8000210c:	00f6f693          	andi	a3,a3,15
    80002110:	00dd86b3          	add	a3,s11,a3
    80002114:	0006c683          	lbu	a3,0(a3)
    80002118:	0147d79b          	srliw	a5,a5,0x14
    8000211c:	f8d40323          	sb	a3,-122(s0)
    80002120:	21067663          	bgeu	a2,a6,8000232c <__printf+0x5e4>
    80002124:	02079793          	slli	a5,a5,0x20
    80002128:	0207d793          	srli	a5,a5,0x20
    8000212c:	00fd8db3          	add	s11,s11,a5
    80002130:	000dc683          	lbu	a3,0(s11)
    80002134:	00800793          	li	a5,8
    80002138:	00700c93          	li	s9,7
    8000213c:	f8d403a3          	sb	a3,-121(s0)
    80002140:	00075c63          	bgez	a4,80002158 <__printf+0x410>
    80002144:	f9040713          	addi	a4,s0,-112
    80002148:	00f70733          	add	a4,a4,a5
    8000214c:	02d00693          	li	a3,45
    80002150:	fed70823          	sb	a3,-16(a4)
    80002154:	00078c93          	mv	s9,a5
    80002158:	f8040793          	addi	a5,s0,-128
    8000215c:	01978cb3          	add	s9,a5,s9
    80002160:	f7f40d13          	addi	s10,s0,-129
    80002164:	000cc503          	lbu	a0,0(s9)
    80002168:	fffc8c93          	addi	s9,s9,-1
    8000216c:	00000097          	auipc	ra,0x0
    80002170:	9f8080e7          	jalr	-1544(ra) # 80001b64 <consputc>
    80002174:	ff9d18e3          	bne	s10,s9,80002164 <__printf+0x41c>
    80002178:	0100006f          	j	80002188 <__printf+0x440>
    8000217c:	00000097          	auipc	ra,0x0
    80002180:	9e8080e7          	jalr	-1560(ra) # 80001b64 <consputc>
    80002184:	000c8493          	mv	s1,s9
    80002188:	00094503          	lbu	a0,0(s2)
    8000218c:	c60510e3          	bnez	a0,80001dec <__printf+0xa4>
    80002190:	e40c0ee3          	beqz	s8,80001fec <__printf+0x2a4>
    80002194:	00003517          	auipc	a0,0x3
    80002198:	2fc50513          	addi	a0,a0,764 # 80005490 <pr>
    8000219c:	00001097          	auipc	ra,0x1
    800021a0:	94c080e7          	jalr	-1716(ra) # 80002ae8 <release>
    800021a4:	e49ff06f          	j	80001fec <__printf+0x2a4>
    800021a8:	f7843783          	ld	a5,-136(s0)
    800021ac:	03000513          	li	a0,48
    800021b0:	01000d13          	li	s10,16
    800021b4:	00878713          	addi	a4,a5,8
    800021b8:	0007bc83          	ld	s9,0(a5)
    800021bc:	f6e43c23          	sd	a4,-136(s0)
    800021c0:	00000097          	auipc	ra,0x0
    800021c4:	9a4080e7          	jalr	-1628(ra) # 80001b64 <consputc>
    800021c8:	07800513          	li	a0,120
    800021cc:	00000097          	auipc	ra,0x0
    800021d0:	998080e7          	jalr	-1640(ra) # 80001b64 <consputc>
    800021d4:	00002d97          	auipc	s11,0x2
    800021d8:	f84d8d93          	addi	s11,s11,-124 # 80004158 <digits>
    800021dc:	03ccd793          	srli	a5,s9,0x3c
    800021e0:	00fd87b3          	add	a5,s11,a5
    800021e4:	0007c503          	lbu	a0,0(a5)
    800021e8:	fffd0d1b          	addiw	s10,s10,-1
    800021ec:	004c9c93          	slli	s9,s9,0x4
    800021f0:	00000097          	auipc	ra,0x0
    800021f4:	974080e7          	jalr	-1676(ra) # 80001b64 <consputc>
    800021f8:	fe0d12e3          	bnez	s10,800021dc <__printf+0x494>
    800021fc:	f8dff06f          	j	80002188 <__printf+0x440>
    80002200:	f7843783          	ld	a5,-136(s0)
    80002204:	0007bc83          	ld	s9,0(a5)
    80002208:	00878793          	addi	a5,a5,8
    8000220c:	f6f43c23          	sd	a5,-136(s0)
    80002210:	000c9a63          	bnez	s9,80002224 <__printf+0x4dc>
    80002214:	1080006f          	j	8000231c <__printf+0x5d4>
    80002218:	001c8c93          	addi	s9,s9,1
    8000221c:	00000097          	auipc	ra,0x0
    80002220:	948080e7          	jalr	-1720(ra) # 80001b64 <consputc>
    80002224:	000cc503          	lbu	a0,0(s9)
    80002228:	fe0518e3          	bnez	a0,80002218 <__printf+0x4d0>
    8000222c:	f5dff06f          	j	80002188 <__printf+0x440>
    80002230:	02500513          	li	a0,37
    80002234:	00000097          	auipc	ra,0x0
    80002238:	930080e7          	jalr	-1744(ra) # 80001b64 <consputc>
    8000223c:	000c8513          	mv	a0,s9
    80002240:	00000097          	auipc	ra,0x0
    80002244:	924080e7          	jalr	-1756(ra) # 80001b64 <consputc>
    80002248:	f41ff06f          	j	80002188 <__printf+0x440>
    8000224c:	02500513          	li	a0,37
    80002250:	00000097          	auipc	ra,0x0
    80002254:	914080e7          	jalr	-1772(ra) # 80001b64 <consputc>
    80002258:	f31ff06f          	j	80002188 <__printf+0x440>
    8000225c:	00030513          	mv	a0,t1
    80002260:	00000097          	auipc	ra,0x0
    80002264:	7bc080e7          	jalr	1980(ra) # 80002a1c <acquire>
    80002268:	b4dff06f          	j	80001db4 <__printf+0x6c>
    8000226c:	40c0053b          	negw	a0,a2
    80002270:	00a00713          	li	a4,10
    80002274:	02e576bb          	remuw	a3,a0,a4
    80002278:	00002d97          	auipc	s11,0x2
    8000227c:	ee0d8d93          	addi	s11,s11,-288 # 80004158 <digits>
    80002280:	ff700593          	li	a1,-9
    80002284:	02069693          	slli	a3,a3,0x20
    80002288:	0206d693          	srli	a3,a3,0x20
    8000228c:	00dd86b3          	add	a3,s11,a3
    80002290:	0006c683          	lbu	a3,0(a3)
    80002294:	02e557bb          	divuw	a5,a0,a4
    80002298:	f8d40023          	sb	a3,-128(s0)
    8000229c:	10b65e63          	bge	a2,a1,800023b8 <__printf+0x670>
    800022a0:	06300593          	li	a1,99
    800022a4:	02e7f6bb          	remuw	a3,a5,a4
    800022a8:	02069693          	slli	a3,a3,0x20
    800022ac:	0206d693          	srli	a3,a3,0x20
    800022b0:	00dd86b3          	add	a3,s11,a3
    800022b4:	0006c683          	lbu	a3,0(a3)
    800022b8:	02e7d73b          	divuw	a4,a5,a4
    800022bc:	00200793          	li	a5,2
    800022c0:	f8d400a3          	sb	a3,-127(s0)
    800022c4:	bca5ece3          	bltu	a1,a0,80001e9c <__printf+0x154>
    800022c8:	ce5ff06f          	j	80001fac <__printf+0x264>
    800022cc:	40e007bb          	negw	a5,a4
    800022d0:	00002d97          	auipc	s11,0x2
    800022d4:	e88d8d93          	addi	s11,s11,-376 # 80004158 <digits>
    800022d8:	00f7f693          	andi	a3,a5,15
    800022dc:	00dd86b3          	add	a3,s11,a3
    800022e0:	0006c583          	lbu	a1,0(a3)
    800022e4:	ff100613          	li	a2,-15
    800022e8:	0047d69b          	srliw	a3,a5,0x4
    800022ec:	f8b40023          	sb	a1,-128(s0)
    800022f0:	0047d59b          	srliw	a1,a5,0x4
    800022f4:	0ac75e63          	bge	a4,a2,800023b0 <__printf+0x668>
    800022f8:	00f6f693          	andi	a3,a3,15
    800022fc:	00dd86b3          	add	a3,s11,a3
    80002300:	0006c603          	lbu	a2,0(a3)
    80002304:	00f00693          	li	a3,15
    80002308:	0087d79b          	srliw	a5,a5,0x8
    8000230c:	f8c400a3          	sb	a2,-127(s0)
    80002310:	d8b6e4e3          	bltu	a3,a1,80002098 <__printf+0x350>
    80002314:	00200793          	li	a5,2
    80002318:	e2dff06f          	j	80002144 <__printf+0x3fc>
    8000231c:	00002c97          	auipc	s9,0x2
    80002320:	e1cc8c93          	addi	s9,s9,-484 # 80004138 <console_handler+0xf58>
    80002324:	02800513          	li	a0,40
    80002328:	ef1ff06f          	j	80002218 <__printf+0x4d0>
    8000232c:	00700793          	li	a5,7
    80002330:	00600c93          	li	s9,6
    80002334:	e0dff06f          	j	80002140 <__printf+0x3f8>
    80002338:	00700793          	li	a5,7
    8000233c:	00600c93          	li	s9,6
    80002340:	c69ff06f          	j	80001fa8 <__printf+0x260>
    80002344:	00300793          	li	a5,3
    80002348:	00200c93          	li	s9,2
    8000234c:	c5dff06f          	j	80001fa8 <__printf+0x260>
    80002350:	00300793          	li	a5,3
    80002354:	00200c93          	li	s9,2
    80002358:	de9ff06f          	j	80002140 <__printf+0x3f8>
    8000235c:	00400793          	li	a5,4
    80002360:	00300c93          	li	s9,3
    80002364:	dddff06f          	j	80002140 <__printf+0x3f8>
    80002368:	00400793          	li	a5,4
    8000236c:	00300c93          	li	s9,3
    80002370:	c39ff06f          	j	80001fa8 <__printf+0x260>
    80002374:	00500793          	li	a5,5
    80002378:	00400c93          	li	s9,4
    8000237c:	c2dff06f          	j	80001fa8 <__printf+0x260>
    80002380:	00500793          	li	a5,5
    80002384:	00400c93          	li	s9,4
    80002388:	db9ff06f          	j	80002140 <__printf+0x3f8>
    8000238c:	00600793          	li	a5,6
    80002390:	00500c93          	li	s9,5
    80002394:	dadff06f          	j	80002140 <__printf+0x3f8>
    80002398:	00600793          	li	a5,6
    8000239c:	00500c93          	li	s9,5
    800023a0:	c09ff06f          	j	80001fa8 <__printf+0x260>
    800023a4:	00800793          	li	a5,8
    800023a8:	00700c93          	li	s9,7
    800023ac:	bfdff06f          	j	80001fa8 <__printf+0x260>
    800023b0:	00100793          	li	a5,1
    800023b4:	d91ff06f          	j	80002144 <__printf+0x3fc>
    800023b8:	00100793          	li	a5,1
    800023bc:	bf1ff06f          	j	80001fac <__printf+0x264>
    800023c0:	00900793          	li	a5,9
    800023c4:	00800c93          	li	s9,8
    800023c8:	be1ff06f          	j	80001fa8 <__printf+0x260>
    800023cc:	00002517          	auipc	a0,0x2
    800023d0:	d7450513          	addi	a0,a0,-652 # 80004140 <console_handler+0xf60>
    800023d4:	00000097          	auipc	ra,0x0
    800023d8:	918080e7          	jalr	-1768(ra) # 80001cec <panic>

00000000800023dc <printfinit>:
    800023dc:	fe010113          	addi	sp,sp,-32
    800023e0:	00813823          	sd	s0,16(sp)
    800023e4:	00913423          	sd	s1,8(sp)
    800023e8:	00113c23          	sd	ra,24(sp)
    800023ec:	02010413          	addi	s0,sp,32
    800023f0:	00003497          	auipc	s1,0x3
    800023f4:	0a048493          	addi	s1,s1,160 # 80005490 <pr>
    800023f8:	00048513          	mv	a0,s1
    800023fc:	00002597          	auipc	a1,0x2
    80002400:	d5458593          	addi	a1,a1,-684 # 80004150 <console_handler+0xf70>
    80002404:	00000097          	auipc	ra,0x0
    80002408:	5f4080e7          	jalr	1524(ra) # 800029f8 <initlock>
    8000240c:	01813083          	ld	ra,24(sp)
    80002410:	01013403          	ld	s0,16(sp)
    80002414:	0004ac23          	sw	zero,24(s1)
    80002418:	00813483          	ld	s1,8(sp)
    8000241c:	02010113          	addi	sp,sp,32
    80002420:	00008067          	ret

0000000080002424 <uartinit>:
    80002424:	ff010113          	addi	sp,sp,-16
    80002428:	00813423          	sd	s0,8(sp)
    8000242c:	01010413          	addi	s0,sp,16
    80002430:	100007b7          	lui	a5,0x10000
    80002434:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    80002438:	f8000713          	li	a4,-128
    8000243c:	00e781a3          	sb	a4,3(a5)
    80002440:	00300713          	li	a4,3
    80002444:	00e78023          	sb	a4,0(a5)
    80002448:	000780a3          	sb	zero,1(a5)
    8000244c:	00e781a3          	sb	a4,3(a5)
    80002450:	00700693          	li	a3,7
    80002454:	00d78123          	sb	a3,2(a5)
    80002458:	00e780a3          	sb	a4,1(a5)
    8000245c:	00813403          	ld	s0,8(sp)
    80002460:	01010113          	addi	sp,sp,16
    80002464:	00008067          	ret

0000000080002468 <uartputc>:
    80002468:	00002797          	auipc	a5,0x2
    8000246c:	df07a783          	lw	a5,-528(a5) # 80004258 <panicked>
    80002470:	00078463          	beqz	a5,80002478 <uartputc+0x10>
    80002474:	0000006f          	j	80002474 <uartputc+0xc>
    80002478:	fd010113          	addi	sp,sp,-48
    8000247c:	02813023          	sd	s0,32(sp)
    80002480:	00913c23          	sd	s1,24(sp)
    80002484:	01213823          	sd	s2,16(sp)
    80002488:	01313423          	sd	s3,8(sp)
    8000248c:	02113423          	sd	ra,40(sp)
    80002490:	03010413          	addi	s0,sp,48
    80002494:	00002917          	auipc	s2,0x2
    80002498:	dcc90913          	addi	s2,s2,-564 # 80004260 <uart_tx_r>
    8000249c:	00093783          	ld	a5,0(s2)
    800024a0:	00002497          	auipc	s1,0x2
    800024a4:	dc848493          	addi	s1,s1,-568 # 80004268 <uart_tx_w>
    800024a8:	0004b703          	ld	a4,0(s1)
    800024ac:	02078693          	addi	a3,a5,32
    800024b0:	00050993          	mv	s3,a0
    800024b4:	02e69c63          	bne	a3,a4,800024ec <uartputc+0x84>
    800024b8:	00001097          	auipc	ra,0x1
    800024bc:	834080e7          	jalr	-1996(ra) # 80002cec <push_on>
    800024c0:	00093783          	ld	a5,0(s2)
    800024c4:	0004b703          	ld	a4,0(s1)
    800024c8:	02078793          	addi	a5,a5,32
    800024cc:	00e79463          	bne	a5,a4,800024d4 <uartputc+0x6c>
    800024d0:	0000006f          	j	800024d0 <uartputc+0x68>
    800024d4:	00001097          	auipc	ra,0x1
    800024d8:	88c080e7          	jalr	-1908(ra) # 80002d60 <pop_on>
    800024dc:	00093783          	ld	a5,0(s2)
    800024e0:	0004b703          	ld	a4,0(s1)
    800024e4:	02078693          	addi	a3,a5,32
    800024e8:	fce688e3          	beq	a3,a4,800024b8 <uartputc+0x50>
    800024ec:	01f77693          	andi	a3,a4,31
    800024f0:	00003597          	auipc	a1,0x3
    800024f4:	fc058593          	addi	a1,a1,-64 # 800054b0 <uart_tx_buf>
    800024f8:	00d586b3          	add	a3,a1,a3
    800024fc:	00170713          	addi	a4,a4,1
    80002500:	01368023          	sb	s3,0(a3)
    80002504:	00e4b023          	sd	a4,0(s1)
    80002508:	10000637          	lui	a2,0x10000
    8000250c:	02f71063          	bne	a4,a5,8000252c <uartputc+0xc4>
    80002510:	0340006f          	j	80002544 <uartputc+0xdc>
    80002514:	00074703          	lbu	a4,0(a4)
    80002518:	00f93023          	sd	a5,0(s2)
    8000251c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    80002520:	00093783          	ld	a5,0(s2)
    80002524:	0004b703          	ld	a4,0(s1)
    80002528:	00f70e63          	beq	a4,a5,80002544 <uartputc+0xdc>
    8000252c:	00564683          	lbu	a3,5(a2)
    80002530:	01f7f713          	andi	a4,a5,31
    80002534:	00e58733          	add	a4,a1,a4
    80002538:	0206f693          	andi	a3,a3,32
    8000253c:	00178793          	addi	a5,a5,1
    80002540:	fc069ae3          	bnez	a3,80002514 <uartputc+0xac>
    80002544:	02813083          	ld	ra,40(sp)
    80002548:	02013403          	ld	s0,32(sp)
    8000254c:	01813483          	ld	s1,24(sp)
    80002550:	01013903          	ld	s2,16(sp)
    80002554:	00813983          	ld	s3,8(sp)
    80002558:	03010113          	addi	sp,sp,48
    8000255c:	00008067          	ret

0000000080002560 <uartputc_sync>:
    80002560:	ff010113          	addi	sp,sp,-16
    80002564:	00813423          	sd	s0,8(sp)
    80002568:	01010413          	addi	s0,sp,16
    8000256c:	00002717          	auipc	a4,0x2
    80002570:	cec72703          	lw	a4,-788(a4) # 80004258 <panicked>
    80002574:	02071663          	bnez	a4,800025a0 <uartputc_sync+0x40>
    80002578:	00050793          	mv	a5,a0
    8000257c:	100006b7          	lui	a3,0x10000
    80002580:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80002584:	02077713          	andi	a4,a4,32
    80002588:	fe070ce3          	beqz	a4,80002580 <uartputc_sync+0x20>
    8000258c:	0ff7f793          	andi	a5,a5,255
    80002590:	00f68023          	sb	a5,0(a3)
    80002594:	00813403          	ld	s0,8(sp)
    80002598:	01010113          	addi	sp,sp,16
    8000259c:	00008067          	ret
    800025a0:	0000006f          	j	800025a0 <uartputc_sync+0x40>

00000000800025a4 <uartstart>:
    800025a4:	ff010113          	addi	sp,sp,-16
    800025a8:	00813423          	sd	s0,8(sp)
    800025ac:	01010413          	addi	s0,sp,16
    800025b0:	00002617          	auipc	a2,0x2
    800025b4:	cb060613          	addi	a2,a2,-848 # 80004260 <uart_tx_r>
    800025b8:	00002517          	auipc	a0,0x2
    800025bc:	cb050513          	addi	a0,a0,-848 # 80004268 <uart_tx_w>
    800025c0:	00063783          	ld	a5,0(a2)
    800025c4:	00053703          	ld	a4,0(a0)
    800025c8:	04f70263          	beq	a4,a5,8000260c <uartstart+0x68>
    800025cc:	100005b7          	lui	a1,0x10000
    800025d0:	00003817          	auipc	a6,0x3
    800025d4:	ee080813          	addi	a6,a6,-288 # 800054b0 <uart_tx_buf>
    800025d8:	01c0006f          	j	800025f4 <uartstart+0x50>
    800025dc:	0006c703          	lbu	a4,0(a3)
    800025e0:	00f63023          	sd	a5,0(a2)
    800025e4:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800025e8:	00063783          	ld	a5,0(a2)
    800025ec:	00053703          	ld	a4,0(a0)
    800025f0:	00f70e63          	beq	a4,a5,8000260c <uartstart+0x68>
    800025f4:	01f7f713          	andi	a4,a5,31
    800025f8:	00e806b3          	add	a3,a6,a4
    800025fc:	0055c703          	lbu	a4,5(a1)
    80002600:	00178793          	addi	a5,a5,1
    80002604:	02077713          	andi	a4,a4,32
    80002608:	fc071ae3          	bnez	a4,800025dc <uartstart+0x38>
    8000260c:	00813403          	ld	s0,8(sp)
    80002610:	01010113          	addi	sp,sp,16
    80002614:	00008067          	ret

0000000080002618 <uartgetc>:
    80002618:	ff010113          	addi	sp,sp,-16
    8000261c:	00813423          	sd	s0,8(sp)
    80002620:	01010413          	addi	s0,sp,16
    80002624:	10000737          	lui	a4,0x10000
    80002628:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    8000262c:	0017f793          	andi	a5,a5,1
    80002630:	00078c63          	beqz	a5,80002648 <uartgetc+0x30>
    80002634:	00074503          	lbu	a0,0(a4)
    80002638:	0ff57513          	andi	a0,a0,255
    8000263c:	00813403          	ld	s0,8(sp)
    80002640:	01010113          	addi	sp,sp,16
    80002644:	00008067          	ret
    80002648:	fff00513          	li	a0,-1
    8000264c:	ff1ff06f          	j	8000263c <uartgetc+0x24>

0000000080002650 <uartintr>:
    80002650:	100007b7          	lui	a5,0x10000
    80002654:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    80002658:	0017f793          	andi	a5,a5,1
    8000265c:	0a078463          	beqz	a5,80002704 <uartintr+0xb4>
    80002660:	fe010113          	addi	sp,sp,-32
    80002664:	00813823          	sd	s0,16(sp)
    80002668:	00913423          	sd	s1,8(sp)
    8000266c:	00113c23          	sd	ra,24(sp)
    80002670:	02010413          	addi	s0,sp,32
    80002674:	100004b7          	lui	s1,0x10000
    80002678:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    8000267c:	0ff57513          	andi	a0,a0,255
    80002680:	fffff097          	auipc	ra,0xfffff
    80002684:	534080e7          	jalr	1332(ra) # 80001bb4 <consoleintr>
    80002688:	0054c783          	lbu	a5,5(s1)
    8000268c:	0017f793          	andi	a5,a5,1
    80002690:	fe0794e3          	bnez	a5,80002678 <uartintr+0x28>
    80002694:	00002617          	auipc	a2,0x2
    80002698:	bcc60613          	addi	a2,a2,-1076 # 80004260 <uart_tx_r>
    8000269c:	00002517          	auipc	a0,0x2
    800026a0:	bcc50513          	addi	a0,a0,-1076 # 80004268 <uart_tx_w>
    800026a4:	00063783          	ld	a5,0(a2)
    800026a8:	00053703          	ld	a4,0(a0)
    800026ac:	04f70263          	beq	a4,a5,800026f0 <uartintr+0xa0>
    800026b0:	100005b7          	lui	a1,0x10000
    800026b4:	00003817          	auipc	a6,0x3
    800026b8:	dfc80813          	addi	a6,a6,-516 # 800054b0 <uart_tx_buf>
    800026bc:	01c0006f          	j	800026d8 <uartintr+0x88>
    800026c0:	0006c703          	lbu	a4,0(a3)
    800026c4:	00f63023          	sd	a5,0(a2)
    800026c8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800026cc:	00063783          	ld	a5,0(a2)
    800026d0:	00053703          	ld	a4,0(a0)
    800026d4:	00f70e63          	beq	a4,a5,800026f0 <uartintr+0xa0>
    800026d8:	01f7f713          	andi	a4,a5,31
    800026dc:	00e806b3          	add	a3,a6,a4
    800026e0:	0055c703          	lbu	a4,5(a1)
    800026e4:	00178793          	addi	a5,a5,1
    800026e8:	02077713          	andi	a4,a4,32
    800026ec:	fc071ae3          	bnez	a4,800026c0 <uartintr+0x70>
    800026f0:	01813083          	ld	ra,24(sp)
    800026f4:	01013403          	ld	s0,16(sp)
    800026f8:	00813483          	ld	s1,8(sp)
    800026fc:	02010113          	addi	sp,sp,32
    80002700:	00008067          	ret
    80002704:	00002617          	auipc	a2,0x2
    80002708:	b5c60613          	addi	a2,a2,-1188 # 80004260 <uart_tx_r>
    8000270c:	00002517          	auipc	a0,0x2
    80002710:	b5c50513          	addi	a0,a0,-1188 # 80004268 <uart_tx_w>
    80002714:	00063783          	ld	a5,0(a2)
    80002718:	00053703          	ld	a4,0(a0)
    8000271c:	04f70263          	beq	a4,a5,80002760 <uartintr+0x110>
    80002720:	100005b7          	lui	a1,0x10000
    80002724:	00003817          	auipc	a6,0x3
    80002728:	d8c80813          	addi	a6,a6,-628 # 800054b0 <uart_tx_buf>
    8000272c:	01c0006f          	j	80002748 <uartintr+0xf8>
    80002730:	0006c703          	lbu	a4,0(a3)
    80002734:	00f63023          	sd	a5,0(a2)
    80002738:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000273c:	00063783          	ld	a5,0(a2)
    80002740:	00053703          	ld	a4,0(a0)
    80002744:	02f70063          	beq	a4,a5,80002764 <uartintr+0x114>
    80002748:	01f7f713          	andi	a4,a5,31
    8000274c:	00e806b3          	add	a3,a6,a4
    80002750:	0055c703          	lbu	a4,5(a1)
    80002754:	00178793          	addi	a5,a5,1
    80002758:	02077713          	andi	a4,a4,32
    8000275c:	fc071ae3          	bnez	a4,80002730 <uartintr+0xe0>
    80002760:	00008067          	ret
    80002764:	00008067          	ret

0000000080002768 <kinit>:
    80002768:	fc010113          	addi	sp,sp,-64
    8000276c:	02913423          	sd	s1,40(sp)
    80002770:	fffff7b7          	lui	a5,0xfffff
    80002774:	00004497          	auipc	s1,0x4
    80002778:	d5b48493          	addi	s1,s1,-677 # 800064cf <end+0xfff>
    8000277c:	02813823          	sd	s0,48(sp)
    80002780:	01313c23          	sd	s3,24(sp)
    80002784:	00f4f4b3          	and	s1,s1,a5
    80002788:	02113c23          	sd	ra,56(sp)
    8000278c:	03213023          	sd	s2,32(sp)
    80002790:	01413823          	sd	s4,16(sp)
    80002794:	01513423          	sd	s5,8(sp)
    80002798:	04010413          	addi	s0,sp,64
    8000279c:	000017b7          	lui	a5,0x1
    800027a0:	01100993          	li	s3,17
    800027a4:	00f487b3          	add	a5,s1,a5
    800027a8:	01b99993          	slli	s3,s3,0x1b
    800027ac:	06f9e063          	bltu	s3,a5,8000280c <kinit+0xa4>
    800027b0:	00003a97          	auipc	s5,0x3
    800027b4:	d20a8a93          	addi	s5,s5,-736 # 800054d0 <end>
    800027b8:	0754ec63          	bltu	s1,s5,80002830 <kinit+0xc8>
    800027bc:	0734fa63          	bgeu	s1,s3,80002830 <kinit+0xc8>
    800027c0:	00088a37          	lui	s4,0x88
    800027c4:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    800027c8:	00002917          	auipc	s2,0x2
    800027cc:	aa890913          	addi	s2,s2,-1368 # 80004270 <kmem>
    800027d0:	00ca1a13          	slli	s4,s4,0xc
    800027d4:	0140006f          	j	800027e8 <kinit+0x80>
    800027d8:	000017b7          	lui	a5,0x1
    800027dc:	00f484b3          	add	s1,s1,a5
    800027e0:	0554e863          	bltu	s1,s5,80002830 <kinit+0xc8>
    800027e4:	0534f663          	bgeu	s1,s3,80002830 <kinit+0xc8>
    800027e8:	00001637          	lui	a2,0x1
    800027ec:	00100593          	li	a1,1
    800027f0:	00048513          	mv	a0,s1
    800027f4:	00000097          	auipc	ra,0x0
    800027f8:	5e4080e7          	jalr	1508(ra) # 80002dd8 <__memset>
    800027fc:	00093783          	ld	a5,0(s2)
    80002800:	00f4b023          	sd	a5,0(s1)
    80002804:	00993023          	sd	s1,0(s2)
    80002808:	fd4498e3          	bne	s1,s4,800027d8 <kinit+0x70>
    8000280c:	03813083          	ld	ra,56(sp)
    80002810:	03013403          	ld	s0,48(sp)
    80002814:	02813483          	ld	s1,40(sp)
    80002818:	02013903          	ld	s2,32(sp)
    8000281c:	01813983          	ld	s3,24(sp)
    80002820:	01013a03          	ld	s4,16(sp)
    80002824:	00813a83          	ld	s5,8(sp)
    80002828:	04010113          	addi	sp,sp,64
    8000282c:	00008067          	ret
    80002830:	00002517          	auipc	a0,0x2
    80002834:	94050513          	addi	a0,a0,-1728 # 80004170 <digits+0x18>
    80002838:	fffff097          	auipc	ra,0xfffff
    8000283c:	4b4080e7          	jalr	1204(ra) # 80001cec <panic>

0000000080002840 <freerange>:
    80002840:	fc010113          	addi	sp,sp,-64
    80002844:	000017b7          	lui	a5,0x1
    80002848:	02913423          	sd	s1,40(sp)
    8000284c:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    80002850:	009504b3          	add	s1,a0,s1
    80002854:	fffff537          	lui	a0,0xfffff
    80002858:	02813823          	sd	s0,48(sp)
    8000285c:	02113c23          	sd	ra,56(sp)
    80002860:	03213023          	sd	s2,32(sp)
    80002864:	01313c23          	sd	s3,24(sp)
    80002868:	01413823          	sd	s4,16(sp)
    8000286c:	01513423          	sd	s5,8(sp)
    80002870:	01613023          	sd	s6,0(sp)
    80002874:	04010413          	addi	s0,sp,64
    80002878:	00a4f4b3          	and	s1,s1,a0
    8000287c:	00f487b3          	add	a5,s1,a5
    80002880:	06f5e463          	bltu	a1,a5,800028e8 <freerange+0xa8>
    80002884:	00003a97          	auipc	s5,0x3
    80002888:	c4ca8a93          	addi	s5,s5,-948 # 800054d0 <end>
    8000288c:	0954e263          	bltu	s1,s5,80002910 <freerange+0xd0>
    80002890:	01100993          	li	s3,17
    80002894:	01b99993          	slli	s3,s3,0x1b
    80002898:	0734fc63          	bgeu	s1,s3,80002910 <freerange+0xd0>
    8000289c:	00058a13          	mv	s4,a1
    800028a0:	00002917          	auipc	s2,0x2
    800028a4:	9d090913          	addi	s2,s2,-1584 # 80004270 <kmem>
    800028a8:	00002b37          	lui	s6,0x2
    800028ac:	0140006f          	j	800028c0 <freerange+0x80>
    800028b0:	000017b7          	lui	a5,0x1
    800028b4:	00f484b3          	add	s1,s1,a5
    800028b8:	0554ec63          	bltu	s1,s5,80002910 <freerange+0xd0>
    800028bc:	0534fa63          	bgeu	s1,s3,80002910 <freerange+0xd0>
    800028c0:	00001637          	lui	a2,0x1
    800028c4:	00100593          	li	a1,1
    800028c8:	00048513          	mv	a0,s1
    800028cc:	00000097          	auipc	ra,0x0
    800028d0:	50c080e7          	jalr	1292(ra) # 80002dd8 <__memset>
    800028d4:	00093703          	ld	a4,0(s2)
    800028d8:	016487b3          	add	a5,s1,s6
    800028dc:	00e4b023          	sd	a4,0(s1)
    800028e0:	00993023          	sd	s1,0(s2)
    800028e4:	fcfa76e3          	bgeu	s4,a5,800028b0 <freerange+0x70>
    800028e8:	03813083          	ld	ra,56(sp)
    800028ec:	03013403          	ld	s0,48(sp)
    800028f0:	02813483          	ld	s1,40(sp)
    800028f4:	02013903          	ld	s2,32(sp)
    800028f8:	01813983          	ld	s3,24(sp)
    800028fc:	01013a03          	ld	s4,16(sp)
    80002900:	00813a83          	ld	s5,8(sp)
    80002904:	00013b03          	ld	s6,0(sp)
    80002908:	04010113          	addi	sp,sp,64
    8000290c:	00008067          	ret
    80002910:	00002517          	auipc	a0,0x2
    80002914:	86050513          	addi	a0,a0,-1952 # 80004170 <digits+0x18>
    80002918:	fffff097          	auipc	ra,0xfffff
    8000291c:	3d4080e7          	jalr	980(ra) # 80001cec <panic>

0000000080002920 <kfree>:
    80002920:	fe010113          	addi	sp,sp,-32
    80002924:	00813823          	sd	s0,16(sp)
    80002928:	00113c23          	sd	ra,24(sp)
    8000292c:	00913423          	sd	s1,8(sp)
    80002930:	02010413          	addi	s0,sp,32
    80002934:	03451793          	slli	a5,a0,0x34
    80002938:	04079c63          	bnez	a5,80002990 <kfree+0x70>
    8000293c:	00003797          	auipc	a5,0x3
    80002940:	b9478793          	addi	a5,a5,-1132 # 800054d0 <end>
    80002944:	00050493          	mv	s1,a0
    80002948:	04f56463          	bltu	a0,a5,80002990 <kfree+0x70>
    8000294c:	01100793          	li	a5,17
    80002950:	01b79793          	slli	a5,a5,0x1b
    80002954:	02f57e63          	bgeu	a0,a5,80002990 <kfree+0x70>
    80002958:	00001637          	lui	a2,0x1
    8000295c:	00100593          	li	a1,1
    80002960:	00000097          	auipc	ra,0x0
    80002964:	478080e7          	jalr	1144(ra) # 80002dd8 <__memset>
    80002968:	00002797          	auipc	a5,0x2
    8000296c:	90878793          	addi	a5,a5,-1784 # 80004270 <kmem>
    80002970:	0007b703          	ld	a4,0(a5)
    80002974:	01813083          	ld	ra,24(sp)
    80002978:	01013403          	ld	s0,16(sp)
    8000297c:	00e4b023          	sd	a4,0(s1)
    80002980:	0097b023          	sd	s1,0(a5)
    80002984:	00813483          	ld	s1,8(sp)
    80002988:	02010113          	addi	sp,sp,32
    8000298c:	00008067          	ret
    80002990:	00001517          	auipc	a0,0x1
    80002994:	7e050513          	addi	a0,a0,2016 # 80004170 <digits+0x18>
    80002998:	fffff097          	auipc	ra,0xfffff
    8000299c:	354080e7          	jalr	852(ra) # 80001cec <panic>

00000000800029a0 <kalloc>:
    800029a0:	fe010113          	addi	sp,sp,-32
    800029a4:	00813823          	sd	s0,16(sp)
    800029a8:	00913423          	sd	s1,8(sp)
    800029ac:	00113c23          	sd	ra,24(sp)
    800029b0:	02010413          	addi	s0,sp,32
    800029b4:	00002797          	auipc	a5,0x2
    800029b8:	8bc78793          	addi	a5,a5,-1860 # 80004270 <kmem>
    800029bc:	0007b483          	ld	s1,0(a5)
    800029c0:	02048063          	beqz	s1,800029e0 <kalloc+0x40>
    800029c4:	0004b703          	ld	a4,0(s1)
    800029c8:	00001637          	lui	a2,0x1
    800029cc:	00500593          	li	a1,5
    800029d0:	00048513          	mv	a0,s1
    800029d4:	00e7b023          	sd	a4,0(a5)
    800029d8:	00000097          	auipc	ra,0x0
    800029dc:	400080e7          	jalr	1024(ra) # 80002dd8 <__memset>
    800029e0:	01813083          	ld	ra,24(sp)
    800029e4:	01013403          	ld	s0,16(sp)
    800029e8:	00048513          	mv	a0,s1
    800029ec:	00813483          	ld	s1,8(sp)
    800029f0:	02010113          	addi	sp,sp,32
    800029f4:	00008067          	ret

00000000800029f8 <initlock>:
    800029f8:	ff010113          	addi	sp,sp,-16
    800029fc:	00813423          	sd	s0,8(sp)
    80002a00:	01010413          	addi	s0,sp,16
    80002a04:	00813403          	ld	s0,8(sp)
    80002a08:	00b53423          	sd	a1,8(a0)
    80002a0c:	00052023          	sw	zero,0(a0)
    80002a10:	00053823          	sd	zero,16(a0)
    80002a14:	01010113          	addi	sp,sp,16
    80002a18:	00008067          	ret

0000000080002a1c <acquire>:
    80002a1c:	fe010113          	addi	sp,sp,-32
    80002a20:	00813823          	sd	s0,16(sp)
    80002a24:	00913423          	sd	s1,8(sp)
    80002a28:	00113c23          	sd	ra,24(sp)
    80002a2c:	01213023          	sd	s2,0(sp)
    80002a30:	02010413          	addi	s0,sp,32
    80002a34:	00050493          	mv	s1,a0
    80002a38:	10002973          	csrr	s2,sstatus
    80002a3c:	100027f3          	csrr	a5,sstatus
    80002a40:	ffd7f793          	andi	a5,a5,-3
    80002a44:	10079073          	csrw	sstatus,a5
    80002a48:	fffff097          	auipc	ra,0xfffff
    80002a4c:	8e8080e7          	jalr	-1816(ra) # 80001330 <mycpu>
    80002a50:	07852783          	lw	a5,120(a0)
    80002a54:	06078e63          	beqz	a5,80002ad0 <acquire+0xb4>
    80002a58:	fffff097          	auipc	ra,0xfffff
    80002a5c:	8d8080e7          	jalr	-1832(ra) # 80001330 <mycpu>
    80002a60:	07852783          	lw	a5,120(a0)
    80002a64:	0004a703          	lw	a4,0(s1)
    80002a68:	0017879b          	addiw	a5,a5,1
    80002a6c:	06f52c23          	sw	a5,120(a0)
    80002a70:	04071063          	bnez	a4,80002ab0 <acquire+0x94>
    80002a74:	00100713          	li	a4,1
    80002a78:	00070793          	mv	a5,a4
    80002a7c:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80002a80:	0007879b          	sext.w	a5,a5
    80002a84:	fe079ae3          	bnez	a5,80002a78 <acquire+0x5c>
    80002a88:	0ff0000f          	fence
    80002a8c:	fffff097          	auipc	ra,0xfffff
    80002a90:	8a4080e7          	jalr	-1884(ra) # 80001330 <mycpu>
    80002a94:	01813083          	ld	ra,24(sp)
    80002a98:	01013403          	ld	s0,16(sp)
    80002a9c:	00a4b823          	sd	a0,16(s1)
    80002aa0:	00013903          	ld	s2,0(sp)
    80002aa4:	00813483          	ld	s1,8(sp)
    80002aa8:	02010113          	addi	sp,sp,32
    80002aac:	00008067          	ret
    80002ab0:	0104b903          	ld	s2,16(s1)
    80002ab4:	fffff097          	auipc	ra,0xfffff
    80002ab8:	87c080e7          	jalr	-1924(ra) # 80001330 <mycpu>
    80002abc:	faa91ce3          	bne	s2,a0,80002a74 <acquire+0x58>
    80002ac0:	00001517          	auipc	a0,0x1
    80002ac4:	6b850513          	addi	a0,a0,1720 # 80004178 <digits+0x20>
    80002ac8:	fffff097          	auipc	ra,0xfffff
    80002acc:	224080e7          	jalr	548(ra) # 80001cec <panic>
    80002ad0:	00195913          	srli	s2,s2,0x1
    80002ad4:	fffff097          	auipc	ra,0xfffff
    80002ad8:	85c080e7          	jalr	-1956(ra) # 80001330 <mycpu>
    80002adc:	00197913          	andi	s2,s2,1
    80002ae0:	07252e23          	sw	s2,124(a0)
    80002ae4:	f75ff06f          	j	80002a58 <acquire+0x3c>

0000000080002ae8 <release>:
    80002ae8:	fe010113          	addi	sp,sp,-32
    80002aec:	00813823          	sd	s0,16(sp)
    80002af0:	00113c23          	sd	ra,24(sp)
    80002af4:	00913423          	sd	s1,8(sp)
    80002af8:	01213023          	sd	s2,0(sp)
    80002afc:	02010413          	addi	s0,sp,32
    80002b00:	00052783          	lw	a5,0(a0)
    80002b04:	00079a63          	bnez	a5,80002b18 <release+0x30>
    80002b08:	00001517          	auipc	a0,0x1
    80002b0c:	67850513          	addi	a0,a0,1656 # 80004180 <digits+0x28>
    80002b10:	fffff097          	auipc	ra,0xfffff
    80002b14:	1dc080e7          	jalr	476(ra) # 80001cec <panic>
    80002b18:	01053903          	ld	s2,16(a0)
    80002b1c:	00050493          	mv	s1,a0
    80002b20:	fffff097          	auipc	ra,0xfffff
    80002b24:	810080e7          	jalr	-2032(ra) # 80001330 <mycpu>
    80002b28:	fea910e3          	bne	s2,a0,80002b08 <release+0x20>
    80002b2c:	0004b823          	sd	zero,16(s1)
    80002b30:	0ff0000f          	fence
    80002b34:	0f50000f          	fence	iorw,ow
    80002b38:	0804a02f          	amoswap.w	zero,zero,(s1)
    80002b3c:	ffffe097          	auipc	ra,0xffffe
    80002b40:	7f4080e7          	jalr	2036(ra) # 80001330 <mycpu>
    80002b44:	100027f3          	csrr	a5,sstatus
    80002b48:	0027f793          	andi	a5,a5,2
    80002b4c:	04079a63          	bnez	a5,80002ba0 <release+0xb8>
    80002b50:	07852783          	lw	a5,120(a0)
    80002b54:	02f05e63          	blez	a5,80002b90 <release+0xa8>
    80002b58:	fff7871b          	addiw	a4,a5,-1
    80002b5c:	06e52c23          	sw	a4,120(a0)
    80002b60:	00071c63          	bnez	a4,80002b78 <release+0x90>
    80002b64:	07c52783          	lw	a5,124(a0)
    80002b68:	00078863          	beqz	a5,80002b78 <release+0x90>
    80002b6c:	100027f3          	csrr	a5,sstatus
    80002b70:	0027e793          	ori	a5,a5,2
    80002b74:	10079073          	csrw	sstatus,a5
    80002b78:	01813083          	ld	ra,24(sp)
    80002b7c:	01013403          	ld	s0,16(sp)
    80002b80:	00813483          	ld	s1,8(sp)
    80002b84:	00013903          	ld	s2,0(sp)
    80002b88:	02010113          	addi	sp,sp,32
    80002b8c:	00008067          	ret
    80002b90:	00001517          	auipc	a0,0x1
    80002b94:	61050513          	addi	a0,a0,1552 # 800041a0 <digits+0x48>
    80002b98:	fffff097          	auipc	ra,0xfffff
    80002b9c:	154080e7          	jalr	340(ra) # 80001cec <panic>
    80002ba0:	00001517          	auipc	a0,0x1
    80002ba4:	5e850513          	addi	a0,a0,1512 # 80004188 <digits+0x30>
    80002ba8:	fffff097          	auipc	ra,0xfffff
    80002bac:	144080e7          	jalr	324(ra) # 80001cec <panic>

0000000080002bb0 <holding>:
    80002bb0:	00052783          	lw	a5,0(a0)
    80002bb4:	00079663          	bnez	a5,80002bc0 <holding+0x10>
    80002bb8:	00000513          	li	a0,0
    80002bbc:	00008067          	ret
    80002bc0:	fe010113          	addi	sp,sp,-32
    80002bc4:	00813823          	sd	s0,16(sp)
    80002bc8:	00913423          	sd	s1,8(sp)
    80002bcc:	00113c23          	sd	ra,24(sp)
    80002bd0:	02010413          	addi	s0,sp,32
    80002bd4:	01053483          	ld	s1,16(a0)
    80002bd8:	ffffe097          	auipc	ra,0xffffe
    80002bdc:	758080e7          	jalr	1880(ra) # 80001330 <mycpu>
    80002be0:	01813083          	ld	ra,24(sp)
    80002be4:	01013403          	ld	s0,16(sp)
    80002be8:	40a48533          	sub	a0,s1,a0
    80002bec:	00153513          	seqz	a0,a0
    80002bf0:	00813483          	ld	s1,8(sp)
    80002bf4:	02010113          	addi	sp,sp,32
    80002bf8:	00008067          	ret

0000000080002bfc <push_off>:
    80002bfc:	fe010113          	addi	sp,sp,-32
    80002c00:	00813823          	sd	s0,16(sp)
    80002c04:	00113c23          	sd	ra,24(sp)
    80002c08:	00913423          	sd	s1,8(sp)
    80002c0c:	02010413          	addi	s0,sp,32
    80002c10:	100024f3          	csrr	s1,sstatus
    80002c14:	100027f3          	csrr	a5,sstatus
    80002c18:	ffd7f793          	andi	a5,a5,-3
    80002c1c:	10079073          	csrw	sstatus,a5
    80002c20:	ffffe097          	auipc	ra,0xffffe
    80002c24:	710080e7          	jalr	1808(ra) # 80001330 <mycpu>
    80002c28:	07852783          	lw	a5,120(a0)
    80002c2c:	02078663          	beqz	a5,80002c58 <push_off+0x5c>
    80002c30:	ffffe097          	auipc	ra,0xffffe
    80002c34:	700080e7          	jalr	1792(ra) # 80001330 <mycpu>
    80002c38:	07852783          	lw	a5,120(a0)
    80002c3c:	01813083          	ld	ra,24(sp)
    80002c40:	01013403          	ld	s0,16(sp)
    80002c44:	0017879b          	addiw	a5,a5,1
    80002c48:	06f52c23          	sw	a5,120(a0)
    80002c4c:	00813483          	ld	s1,8(sp)
    80002c50:	02010113          	addi	sp,sp,32
    80002c54:	00008067          	ret
    80002c58:	0014d493          	srli	s1,s1,0x1
    80002c5c:	ffffe097          	auipc	ra,0xffffe
    80002c60:	6d4080e7          	jalr	1748(ra) # 80001330 <mycpu>
    80002c64:	0014f493          	andi	s1,s1,1
    80002c68:	06952e23          	sw	s1,124(a0)
    80002c6c:	fc5ff06f          	j	80002c30 <push_off+0x34>

0000000080002c70 <pop_off>:
    80002c70:	ff010113          	addi	sp,sp,-16
    80002c74:	00813023          	sd	s0,0(sp)
    80002c78:	00113423          	sd	ra,8(sp)
    80002c7c:	01010413          	addi	s0,sp,16
    80002c80:	ffffe097          	auipc	ra,0xffffe
    80002c84:	6b0080e7          	jalr	1712(ra) # 80001330 <mycpu>
    80002c88:	100027f3          	csrr	a5,sstatus
    80002c8c:	0027f793          	andi	a5,a5,2
    80002c90:	04079663          	bnez	a5,80002cdc <pop_off+0x6c>
    80002c94:	07852783          	lw	a5,120(a0)
    80002c98:	02f05a63          	blez	a5,80002ccc <pop_off+0x5c>
    80002c9c:	fff7871b          	addiw	a4,a5,-1
    80002ca0:	06e52c23          	sw	a4,120(a0)
    80002ca4:	00071c63          	bnez	a4,80002cbc <pop_off+0x4c>
    80002ca8:	07c52783          	lw	a5,124(a0)
    80002cac:	00078863          	beqz	a5,80002cbc <pop_off+0x4c>
    80002cb0:	100027f3          	csrr	a5,sstatus
    80002cb4:	0027e793          	ori	a5,a5,2
    80002cb8:	10079073          	csrw	sstatus,a5
    80002cbc:	00813083          	ld	ra,8(sp)
    80002cc0:	00013403          	ld	s0,0(sp)
    80002cc4:	01010113          	addi	sp,sp,16
    80002cc8:	00008067          	ret
    80002ccc:	00001517          	auipc	a0,0x1
    80002cd0:	4d450513          	addi	a0,a0,1236 # 800041a0 <digits+0x48>
    80002cd4:	fffff097          	auipc	ra,0xfffff
    80002cd8:	018080e7          	jalr	24(ra) # 80001cec <panic>
    80002cdc:	00001517          	auipc	a0,0x1
    80002ce0:	4ac50513          	addi	a0,a0,1196 # 80004188 <digits+0x30>
    80002ce4:	fffff097          	auipc	ra,0xfffff
    80002ce8:	008080e7          	jalr	8(ra) # 80001cec <panic>

0000000080002cec <push_on>:
    80002cec:	fe010113          	addi	sp,sp,-32
    80002cf0:	00813823          	sd	s0,16(sp)
    80002cf4:	00113c23          	sd	ra,24(sp)
    80002cf8:	00913423          	sd	s1,8(sp)
    80002cfc:	02010413          	addi	s0,sp,32
    80002d00:	100024f3          	csrr	s1,sstatus
    80002d04:	100027f3          	csrr	a5,sstatus
    80002d08:	0027e793          	ori	a5,a5,2
    80002d0c:	10079073          	csrw	sstatus,a5
    80002d10:	ffffe097          	auipc	ra,0xffffe
    80002d14:	620080e7          	jalr	1568(ra) # 80001330 <mycpu>
    80002d18:	07852783          	lw	a5,120(a0)
    80002d1c:	02078663          	beqz	a5,80002d48 <push_on+0x5c>
    80002d20:	ffffe097          	auipc	ra,0xffffe
    80002d24:	610080e7          	jalr	1552(ra) # 80001330 <mycpu>
    80002d28:	07852783          	lw	a5,120(a0)
    80002d2c:	01813083          	ld	ra,24(sp)
    80002d30:	01013403          	ld	s0,16(sp)
    80002d34:	0017879b          	addiw	a5,a5,1
    80002d38:	06f52c23          	sw	a5,120(a0)
    80002d3c:	00813483          	ld	s1,8(sp)
    80002d40:	02010113          	addi	sp,sp,32
    80002d44:	00008067          	ret
    80002d48:	0014d493          	srli	s1,s1,0x1
    80002d4c:	ffffe097          	auipc	ra,0xffffe
    80002d50:	5e4080e7          	jalr	1508(ra) # 80001330 <mycpu>
    80002d54:	0014f493          	andi	s1,s1,1
    80002d58:	06952e23          	sw	s1,124(a0)
    80002d5c:	fc5ff06f          	j	80002d20 <push_on+0x34>

0000000080002d60 <pop_on>:
    80002d60:	ff010113          	addi	sp,sp,-16
    80002d64:	00813023          	sd	s0,0(sp)
    80002d68:	00113423          	sd	ra,8(sp)
    80002d6c:	01010413          	addi	s0,sp,16
    80002d70:	ffffe097          	auipc	ra,0xffffe
    80002d74:	5c0080e7          	jalr	1472(ra) # 80001330 <mycpu>
    80002d78:	100027f3          	csrr	a5,sstatus
    80002d7c:	0027f793          	andi	a5,a5,2
    80002d80:	04078463          	beqz	a5,80002dc8 <pop_on+0x68>
    80002d84:	07852783          	lw	a5,120(a0)
    80002d88:	02f05863          	blez	a5,80002db8 <pop_on+0x58>
    80002d8c:	fff7879b          	addiw	a5,a5,-1
    80002d90:	06f52c23          	sw	a5,120(a0)
    80002d94:	07853783          	ld	a5,120(a0)
    80002d98:	00079863          	bnez	a5,80002da8 <pop_on+0x48>
    80002d9c:	100027f3          	csrr	a5,sstatus
    80002da0:	ffd7f793          	andi	a5,a5,-3
    80002da4:	10079073          	csrw	sstatus,a5
    80002da8:	00813083          	ld	ra,8(sp)
    80002dac:	00013403          	ld	s0,0(sp)
    80002db0:	01010113          	addi	sp,sp,16
    80002db4:	00008067          	ret
    80002db8:	00001517          	auipc	a0,0x1
    80002dbc:	41050513          	addi	a0,a0,1040 # 800041c8 <digits+0x70>
    80002dc0:	fffff097          	auipc	ra,0xfffff
    80002dc4:	f2c080e7          	jalr	-212(ra) # 80001cec <panic>
    80002dc8:	00001517          	auipc	a0,0x1
    80002dcc:	3e050513          	addi	a0,a0,992 # 800041a8 <digits+0x50>
    80002dd0:	fffff097          	auipc	ra,0xfffff
    80002dd4:	f1c080e7          	jalr	-228(ra) # 80001cec <panic>

0000000080002dd8 <__memset>:
    80002dd8:	ff010113          	addi	sp,sp,-16
    80002ddc:	00813423          	sd	s0,8(sp)
    80002de0:	01010413          	addi	s0,sp,16
    80002de4:	1a060e63          	beqz	a2,80002fa0 <__memset+0x1c8>
    80002de8:	40a007b3          	neg	a5,a0
    80002dec:	0077f793          	andi	a5,a5,7
    80002df0:	00778693          	addi	a3,a5,7
    80002df4:	00b00813          	li	a6,11
    80002df8:	0ff5f593          	andi	a1,a1,255
    80002dfc:	fff6071b          	addiw	a4,a2,-1
    80002e00:	1b06e663          	bltu	a3,a6,80002fac <__memset+0x1d4>
    80002e04:	1cd76463          	bltu	a4,a3,80002fcc <__memset+0x1f4>
    80002e08:	1a078e63          	beqz	a5,80002fc4 <__memset+0x1ec>
    80002e0c:	00b50023          	sb	a1,0(a0)
    80002e10:	00100713          	li	a4,1
    80002e14:	1ae78463          	beq	a5,a4,80002fbc <__memset+0x1e4>
    80002e18:	00b500a3          	sb	a1,1(a0)
    80002e1c:	00200713          	li	a4,2
    80002e20:	1ae78a63          	beq	a5,a4,80002fd4 <__memset+0x1fc>
    80002e24:	00b50123          	sb	a1,2(a0)
    80002e28:	00300713          	li	a4,3
    80002e2c:	18e78463          	beq	a5,a4,80002fb4 <__memset+0x1dc>
    80002e30:	00b501a3          	sb	a1,3(a0)
    80002e34:	00400713          	li	a4,4
    80002e38:	1ae78263          	beq	a5,a4,80002fdc <__memset+0x204>
    80002e3c:	00b50223          	sb	a1,4(a0)
    80002e40:	00500713          	li	a4,5
    80002e44:	1ae78063          	beq	a5,a4,80002fe4 <__memset+0x20c>
    80002e48:	00b502a3          	sb	a1,5(a0)
    80002e4c:	00700713          	li	a4,7
    80002e50:	18e79e63          	bne	a5,a4,80002fec <__memset+0x214>
    80002e54:	00b50323          	sb	a1,6(a0)
    80002e58:	00700e93          	li	t4,7
    80002e5c:	00859713          	slli	a4,a1,0x8
    80002e60:	00e5e733          	or	a4,a1,a4
    80002e64:	01059e13          	slli	t3,a1,0x10
    80002e68:	01c76e33          	or	t3,a4,t3
    80002e6c:	01859313          	slli	t1,a1,0x18
    80002e70:	006e6333          	or	t1,t3,t1
    80002e74:	02059893          	slli	a7,a1,0x20
    80002e78:	40f60e3b          	subw	t3,a2,a5
    80002e7c:	011368b3          	or	a7,t1,a7
    80002e80:	02859813          	slli	a6,a1,0x28
    80002e84:	0108e833          	or	a6,a7,a6
    80002e88:	03059693          	slli	a3,a1,0x30
    80002e8c:	003e589b          	srliw	a7,t3,0x3
    80002e90:	00d866b3          	or	a3,a6,a3
    80002e94:	03859713          	slli	a4,a1,0x38
    80002e98:	00389813          	slli	a6,a7,0x3
    80002e9c:	00f507b3          	add	a5,a0,a5
    80002ea0:	00e6e733          	or	a4,a3,a4
    80002ea4:	000e089b          	sext.w	a7,t3
    80002ea8:	00f806b3          	add	a3,a6,a5
    80002eac:	00e7b023          	sd	a4,0(a5)
    80002eb0:	00878793          	addi	a5,a5,8
    80002eb4:	fed79ce3          	bne	a5,a3,80002eac <__memset+0xd4>
    80002eb8:	ff8e7793          	andi	a5,t3,-8
    80002ebc:	0007871b          	sext.w	a4,a5
    80002ec0:	01d787bb          	addw	a5,a5,t4
    80002ec4:	0ce88e63          	beq	a7,a4,80002fa0 <__memset+0x1c8>
    80002ec8:	00f50733          	add	a4,a0,a5
    80002ecc:	00b70023          	sb	a1,0(a4)
    80002ed0:	0017871b          	addiw	a4,a5,1
    80002ed4:	0cc77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002ed8:	00e50733          	add	a4,a0,a4
    80002edc:	00b70023          	sb	a1,0(a4)
    80002ee0:	0027871b          	addiw	a4,a5,2
    80002ee4:	0ac77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002ee8:	00e50733          	add	a4,a0,a4
    80002eec:	00b70023          	sb	a1,0(a4)
    80002ef0:	0037871b          	addiw	a4,a5,3
    80002ef4:	0ac77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002ef8:	00e50733          	add	a4,a0,a4
    80002efc:	00b70023          	sb	a1,0(a4)
    80002f00:	0047871b          	addiw	a4,a5,4
    80002f04:	08c77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f08:	00e50733          	add	a4,a0,a4
    80002f0c:	00b70023          	sb	a1,0(a4)
    80002f10:	0057871b          	addiw	a4,a5,5
    80002f14:	08c77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f18:	00e50733          	add	a4,a0,a4
    80002f1c:	00b70023          	sb	a1,0(a4)
    80002f20:	0067871b          	addiw	a4,a5,6
    80002f24:	06c77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f28:	00e50733          	add	a4,a0,a4
    80002f2c:	00b70023          	sb	a1,0(a4)
    80002f30:	0077871b          	addiw	a4,a5,7
    80002f34:	06c77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f38:	00e50733          	add	a4,a0,a4
    80002f3c:	00b70023          	sb	a1,0(a4)
    80002f40:	0087871b          	addiw	a4,a5,8
    80002f44:	04c77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f48:	00e50733          	add	a4,a0,a4
    80002f4c:	00b70023          	sb	a1,0(a4)
    80002f50:	0097871b          	addiw	a4,a5,9
    80002f54:	04c77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f58:	00e50733          	add	a4,a0,a4
    80002f5c:	00b70023          	sb	a1,0(a4)
    80002f60:	00a7871b          	addiw	a4,a5,10
    80002f64:	02c77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f68:	00e50733          	add	a4,a0,a4
    80002f6c:	00b70023          	sb	a1,0(a4)
    80002f70:	00b7871b          	addiw	a4,a5,11
    80002f74:	02c77663          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f78:	00e50733          	add	a4,a0,a4
    80002f7c:	00b70023          	sb	a1,0(a4)
    80002f80:	00c7871b          	addiw	a4,a5,12
    80002f84:	00c77e63          	bgeu	a4,a2,80002fa0 <__memset+0x1c8>
    80002f88:	00e50733          	add	a4,a0,a4
    80002f8c:	00b70023          	sb	a1,0(a4)
    80002f90:	00d7879b          	addiw	a5,a5,13
    80002f94:	00c7f663          	bgeu	a5,a2,80002fa0 <__memset+0x1c8>
    80002f98:	00f507b3          	add	a5,a0,a5
    80002f9c:	00b78023          	sb	a1,0(a5)
    80002fa0:	00813403          	ld	s0,8(sp)
    80002fa4:	01010113          	addi	sp,sp,16
    80002fa8:	00008067          	ret
    80002fac:	00b00693          	li	a3,11
    80002fb0:	e55ff06f          	j	80002e04 <__memset+0x2c>
    80002fb4:	00300e93          	li	t4,3
    80002fb8:	ea5ff06f          	j	80002e5c <__memset+0x84>
    80002fbc:	00100e93          	li	t4,1
    80002fc0:	e9dff06f          	j	80002e5c <__memset+0x84>
    80002fc4:	00000e93          	li	t4,0
    80002fc8:	e95ff06f          	j	80002e5c <__memset+0x84>
    80002fcc:	00000793          	li	a5,0
    80002fd0:	ef9ff06f          	j	80002ec8 <__memset+0xf0>
    80002fd4:	00200e93          	li	t4,2
    80002fd8:	e85ff06f          	j	80002e5c <__memset+0x84>
    80002fdc:	00400e93          	li	t4,4
    80002fe0:	e7dff06f          	j	80002e5c <__memset+0x84>
    80002fe4:	00500e93          	li	t4,5
    80002fe8:	e75ff06f          	j	80002e5c <__memset+0x84>
    80002fec:	00600e93          	li	t4,6
    80002ff0:	e6dff06f          	j	80002e5c <__memset+0x84>

0000000080002ff4 <__memmove>:
    80002ff4:	ff010113          	addi	sp,sp,-16
    80002ff8:	00813423          	sd	s0,8(sp)
    80002ffc:	01010413          	addi	s0,sp,16
    80003000:	0e060863          	beqz	a2,800030f0 <__memmove+0xfc>
    80003004:	fff6069b          	addiw	a3,a2,-1
    80003008:	0006881b          	sext.w	a6,a3
    8000300c:	0ea5e863          	bltu	a1,a0,800030fc <__memmove+0x108>
    80003010:	00758713          	addi	a4,a1,7
    80003014:	00a5e7b3          	or	a5,a1,a0
    80003018:	40a70733          	sub	a4,a4,a0
    8000301c:	0077f793          	andi	a5,a5,7
    80003020:	00f73713          	sltiu	a4,a4,15
    80003024:	00174713          	xori	a4,a4,1
    80003028:	0017b793          	seqz	a5,a5
    8000302c:	00e7f7b3          	and	a5,a5,a4
    80003030:	10078863          	beqz	a5,80003140 <__memmove+0x14c>
    80003034:	00900793          	li	a5,9
    80003038:	1107f463          	bgeu	a5,a6,80003140 <__memmove+0x14c>
    8000303c:	0036581b          	srliw	a6,a2,0x3
    80003040:	fff8081b          	addiw	a6,a6,-1
    80003044:	02081813          	slli	a6,a6,0x20
    80003048:	01d85893          	srli	a7,a6,0x1d
    8000304c:	00858813          	addi	a6,a1,8
    80003050:	00058793          	mv	a5,a1
    80003054:	00050713          	mv	a4,a0
    80003058:	01088833          	add	a6,a7,a6
    8000305c:	0007b883          	ld	a7,0(a5)
    80003060:	00878793          	addi	a5,a5,8
    80003064:	00870713          	addi	a4,a4,8
    80003068:	ff173c23          	sd	a7,-8(a4)
    8000306c:	ff0798e3          	bne	a5,a6,8000305c <__memmove+0x68>
    80003070:	ff867713          	andi	a4,a2,-8
    80003074:	02071793          	slli	a5,a4,0x20
    80003078:	0207d793          	srli	a5,a5,0x20
    8000307c:	00f585b3          	add	a1,a1,a5
    80003080:	40e686bb          	subw	a3,a3,a4
    80003084:	00f507b3          	add	a5,a0,a5
    80003088:	06e60463          	beq	a2,a4,800030f0 <__memmove+0xfc>
    8000308c:	0005c703          	lbu	a4,0(a1)
    80003090:	00e78023          	sb	a4,0(a5)
    80003094:	04068e63          	beqz	a3,800030f0 <__memmove+0xfc>
    80003098:	0015c603          	lbu	a2,1(a1)
    8000309c:	00100713          	li	a4,1
    800030a0:	00c780a3          	sb	a2,1(a5)
    800030a4:	04e68663          	beq	a3,a4,800030f0 <__memmove+0xfc>
    800030a8:	0025c603          	lbu	a2,2(a1)
    800030ac:	00200713          	li	a4,2
    800030b0:	00c78123          	sb	a2,2(a5)
    800030b4:	02e68e63          	beq	a3,a4,800030f0 <__memmove+0xfc>
    800030b8:	0035c603          	lbu	a2,3(a1)
    800030bc:	00300713          	li	a4,3
    800030c0:	00c781a3          	sb	a2,3(a5)
    800030c4:	02e68663          	beq	a3,a4,800030f0 <__memmove+0xfc>
    800030c8:	0045c603          	lbu	a2,4(a1)
    800030cc:	00400713          	li	a4,4
    800030d0:	00c78223          	sb	a2,4(a5)
    800030d4:	00e68e63          	beq	a3,a4,800030f0 <__memmove+0xfc>
    800030d8:	0055c603          	lbu	a2,5(a1)
    800030dc:	00500713          	li	a4,5
    800030e0:	00c782a3          	sb	a2,5(a5)
    800030e4:	00e68663          	beq	a3,a4,800030f0 <__memmove+0xfc>
    800030e8:	0065c703          	lbu	a4,6(a1)
    800030ec:	00e78323          	sb	a4,6(a5)
    800030f0:	00813403          	ld	s0,8(sp)
    800030f4:	01010113          	addi	sp,sp,16
    800030f8:	00008067          	ret
    800030fc:	02061713          	slli	a4,a2,0x20
    80003100:	02075713          	srli	a4,a4,0x20
    80003104:	00e587b3          	add	a5,a1,a4
    80003108:	f0f574e3          	bgeu	a0,a5,80003010 <__memmove+0x1c>
    8000310c:	02069613          	slli	a2,a3,0x20
    80003110:	02065613          	srli	a2,a2,0x20
    80003114:	fff64613          	not	a2,a2
    80003118:	00e50733          	add	a4,a0,a4
    8000311c:	00c78633          	add	a2,a5,a2
    80003120:	fff7c683          	lbu	a3,-1(a5)
    80003124:	fff78793          	addi	a5,a5,-1
    80003128:	fff70713          	addi	a4,a4,-1
    8000312c:	00d70023          	sb	a3,0(a4)
    80003130:	fec798e3          	bne	a5,a2,80003120 <__memmove+0x12c>
    80003134:	00813403          	ld	s0,8(sp)
    80003138:	01010113          	addi	sp,sp,16
    8000313c:	00008067          	ret
    80003140:	02069713          	slli	a4,a3,0x20
    80003144:	02075713          	srli	a4,a4,0x20
    80003148:	00170713          	addi	a4,a4,1
    8000314c:	00e50733          	add	a4,a0,a4
    80003150:	00050793          	mv	a5,a0
    80003154:	0005c683          	lbu	a3,0(a1)
    80003158:	00178793          	addi	a5,a5,1
    8000315c:	00158593          	addi	a1,a1,1
    80003160:	fed78fa3          	sb	a3,-1(a5)
    80003164:	fee798e3          	bne	a5,a4,80003154 <__memmove+0x160>
    80003168:	f89ff06f          	j	800030f0 <__memmove+0xfc>

000000008000316c <__putc>:
    8000316c:	fe010113          	addi	sp,sp,-32
    80003170:	00813823          	sd	s0,16(sp)
    80003174:	00113c23          	sd	ra,24(sp)
    80003178:	02010413          	addi	s0,sp,32
    8000317c:	00050793          	mv	a5,a0
    80003180:	fef40593          	addi	a1,s0,-17
    80003184:	00100613          	li	a2,1
    80003188:	00000513          	li	a0,0
    8000318c:	fef407a3          	sb	a5,-17(s0)
    80003190:	fffff097          	auipc	ra,0xfffff
    80003194:	b3c080e7          	jalr	-1220(ra) # 80001ccc <console_write>
    80003198:	01813083          	ld	ra,24(sp)
    8000319c:	01013403          	ld	s0,16(sp)
    800031a0:	02010113          	addi	sp,sp,32
    800031a4:	00008067          	ret

00000000800031a8 <__getc>:
    800031a8:	fe010113          	addi	sp,sp,-32
    800031ac:	00813823          	sd	s0,16(sp)
    800031b0:	00113c23          	sd	ra,24(sp)
    800031b4:	02010413          	addi	s0,sp,32
    800031b8:	fe840593          	addi	a1,s0,-24
    800031bc:	00100613          	li	a2,1
    800031c0:	00000513          	li	a0,0
    800031c4:	fffff097          	auipc	ra,0xfffff
    800031c8:	ae8080e7          	jalr	-1304(ra) # 80001cac <console_read>
    800031cc:	fe844503          	lbu	a0,-24(s0)
    800031d0:	01813083          	ld	ra,24(sp)
    800031d4:	01013403          	ld	s0,16(sp)
    800031d8:	02010113          	addi	sp,sp,32
    800031dc:	00008067          	ret

00000000800031e0 <console_handler>:
    800031e0:	fe010113          	addi	sp,sp,-32
    800031e4:	00813823          	sd	s0,16(sp)
    800031e8:	00113c23          	sd	ra,24(sp)
    800031ec:	00913423          	sd	s1,8(sp)
    800031f0:	02010413          	addi	s0,sp,32
    800031f4:	14202773          	csrr	a4,scause
    800031f8:	100027f3          	csrr	a5,sstatus
    800031fc:	0027f793          	andi	a5,a5,2
    80003200:	06079e63          	bnez	a5,8000327c <console_handler+0x9c>
    80003204:	00074c63          	bltz	a4,8000321c <console_handler+0x3c>
    80003208:	01813083          	ld	ra,24(sp)
    8000320c:	01013403          	ld	s0,16(sp)
    80003210:	00813483          	ld	s1,8(sp)
    80003214:	02010113          	addi	sp,sp,32
    80003218:	00008067          	ret
    8000321c:	0ff77713          	andi	a4,a4,255
    80003220:	00900793          	li	a5,9
    80003224:	fef712e3          	bne	a4,a5,80003208 <console_handler+0x28>
    80003228:	ffffe097          	auipc	ra,0xffffe
    8000322c:	6dc080e7          	jalr	1756(ra) # 80001904 <plic_claim>
    80003230:	00a00793          	li	a5,10
    80003234:	00050493          	mv	s1,a0
    80003238:	02f50c63          	beq	a0,a5,80003270 <console_handler+0x90>
    8000323c:	fc0506e3          	beqz	a0,80003208 <console_handler+0x28>
    80003240:	00050593          	mv	a1,a0
    80003244:	00001517          	auipc	a0,0x1
    80003248:	e8c50513          	addi	a0,a0,-372 # 800040d0 <console_handler+0xef0>
    8000324c:	fffff097          	auipc	ra,0xfffff
    80003250:	afc080e7          	jalr	-1284(ra) # 80001d48 <__printf>
    80003254:	01013403          	ld	s0,16(sp)
    80003258:	01813083          	ld	ra,24(sp)
    8000325c:	00048513          	mv	a0,s1
    80003260:	00813483          	ld	s1,8(sp)
    80003264:	02010113          	addi	sp,sp,32
    80003268:	ffffe317          	auipc	t1,0xffffe
    8000326c:	6d430067          	jr	1748(t1) # 8000193c <plic_complete>
    80003270:	fffff097          	auipc	ra,0xfffff
    80003274:	3e0080e7          	jalr	992(ra) # 80002650 <uartintr>
    80003278:	fddff06f          	j	80003254 <console_handler+0x74>
    8000327c:	00001517          	auipc	a0,0x1
    80003280:	f5450513          	addi	a0,a0,-172 # 800041d0 <digits+0x78>
    80003284:	fffff097          	auipc	ra,0xfffff
    80003288:	a68080e7          	jalr	-1432(ra) # 80001cec <panic>
	...
