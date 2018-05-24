.data
array: .space 16
message_input_n: .asciiz "Please Input year:\n"
message_output_true: .asciiz "1"
message_output_false: .asciiz "0"



.text
input:
#la $a0, message_input_n
#li $v0, 4
#syscall

li $v0, 5
syscall
move $t1, $v0

li $t3, 4
li $t4, 100
li $t5, 400
#li $v0, 5
#syscall
#move $t2, $v0


#slt $t3,$t2,$t1
div $t2,$t1,$t3
div $t6,$t1,$t4
div $t7,$t1,$t5
mfhi $t2
mfhi $t6
mfhi $t7
bne $t2,$0,if_1_else
beq $t6,$0, if_1_else
bne $t7,$0, if_1_else
and $s1,$t2,$t6
or $s2,$s1,$t7
nop

la $a0, message_output_true
li $v0, 4
syscall
j if_1_end
nop

if_1_else:
la $a0, message_output_false
li $v0,4
syscall

if_1_end:
