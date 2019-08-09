	.file	"count.c"
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
LC1:
	.ascii "'%c'or'%c'\11%d\12\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB10:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	andl	$-16, %esp
	subl	$1152, %esp
	.cfi_offset 7, -12
	call	___main
	leal	1044(%esp), %edx
	movl	$0, %eax
	movl	$26, %ecx
	movl	%edx, %edi
	rep stosl
	movl	$0, 20(%esp)
	leal	24(%esp), %edx
	movl	$0, %eax
	movl	$255, %ecx
	movl	%edx, %edi
	rep stosl
	leal	20(%esp), %eax
	movl	%eax, 4(%esp)
	movl	$LC0, (%esp)
	call	_scanf
	movl	$0, 1148(%esp)
	jmp	L2
L5:
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$96, %al
	jle	L3
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$122, %al
	jg	L3
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$97, %eax
	movl	1044(%esp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, 1044(%esp,%eax,4)
	jmp	L4
L3:
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$64, %al
	jle	L4
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	cmpb	$90, %al
	jg	L4
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$65, %eax
	movl	1044(%esp,%eax,4), %edx
	addl	$1, %edx
	movl	%edx, 1044(%esp,%eax,4)
L4:
	addl	$1, 1148(%esp)
L2:
	leal	20(%esp), %edx
	movl	1148(%esp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	jne	L5
	movl	$0, 1148(%esp)
	jmp	L6
L8:
	movl	1148(%esp), %eax
	movl	1044(%esp,%eax,4), %eax
	testl	%eax, %eax
	je	L7
	movl	1148(%esp), %eax
	movl	1044(%esp,%eax,4), %eax
	movl	1148(%esp), %edx
	leal	65(%edx), %ecx
	movl	1148(%esp), %edx
	addl	$97, %edx
	movl	%eax, 12(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 4(%esp)
	movl	$LC1, (%esp)
	call	_printf
L7:
	addl	$1, 1148(%esp)
L6:
	cmpl	$25, 1148(%esp)
	jle	L8
	movl	$0, %eax
	movl	-4(%ebp), %edi
	leave
	.cfi_restore 5
	.cfi_restore 7
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE10:
	.ident	"GCC: (MinGW.org GCC-6.3.0-1) 6.3.0"
	.def	_scanf;	.scl	2;	.type	32;	.endef
	.def	_printf;	.scl	2;	.type	32;	.endef
