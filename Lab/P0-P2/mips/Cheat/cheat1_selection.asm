.data
array:
	.space 1024
spacing:
	.asciiz " "
.text
	
	li $v0, 5		#input size of array
	syscall
	add $s0, $v0, $0	#array size
	sub $s1, $s0, 1
	la $t6, array		#t6 Array first address
	move $t7, $zero		#declare t7 as i = 0
##################################################
input:
	li $v0, 5
	syscall

	move $t0, $t7
	mul $t0, $t0, 4
	addu $t1, $t0, $t6
	sw $v0, 0($t1) 		#input to array
	
	addi $t7, $t7,1		#i++
	blt $t7, $s0, input	#input loop

	move $t2, $zero		#outer loop i
	move $t3, $zero 	#outer loop j
####################################################
sort:
	bge $t2, $s0, output	#if t2 == 10, run output
	addi $t3, $t2, 1	#t3 = t2 + 1
####################################################
inner_loop:
	mul $t1, $t2, 4
	addu $t1, $t1, $t6
	lw $t4 0 ($t1)		#t4 = array[i]
	mul $t1, $t3, 4
	addu $t1, $t1, $t6
	lw $t5, 0($t1)		#t5 = array[j]

	bge $t5, $t4, swap	#if array[j] >= array[i], swap
	addi $t3, $t3, 1
	blt $t3, $s0, inner_loop
	addi $t2, $t2, 1
	blt $t2, $s0, sort
#####################################################
swap:
	mul $t1, $t2, 4
	addu $t1, $t1, $t6
	sw $t5, 0($t1)
	mul $t1, $t3, 4
	addu $t1, $t1, $t6
	sw $t4, 0($t1)
	addi $t3, $t3, 1
	blt $t3, $s1, inner_loop
	blt $t2, $s1, sort
#####################################################
output:
	move $t7, $zero
#####################################################
print_loop:
	move $t0, $t7
	mul $t0, $t0, 4
	addu $t1, $t0, $t6
	lw $a0, 0($t1)
	li $v0, 1
	syscall
	addi $t7, $t7, 1
	la $a0, spacing
	li $v0, 4
	syscall
	blt $t7, $s0, print_loop
	li $v0, 10
	syscall
	
