.data 

ryan : .asciiz "ryan\n"
jose : .asciiz "jose\n"
black : .asciiz "black\n"
tami : .asciiz "tami\n"

names: .word ryan,tami,black,jose # x = {ryan,jose,black,tami}
iterator: .word 0
size: .word 3

.text
main:
la $t0,names
lw $t1,iterator
lw $t2,size

#system println
begin_loop:
bgt  $t1,$t2,exit_loop
sll $t3, $t1,2 #T3 = 4*I
addu $t3,$t3,$t0 #4i = 4i + memory location

li $v0,4
lw $a0,0($t3)
syscall

addi $t1,$t1,1

  j begin_loop  
exit_loop:   