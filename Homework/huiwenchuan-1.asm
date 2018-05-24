.data 
array : .space 1000 #array size
#i: .word 0
space : .asciiz "\n"
true : .asciiz "1"
false :.asciiz "0"

.text
main:
li $v0,5 #input array space
syscall #system call
move $t0,$v0 # store array size
#move $t1,$t0 #array size
move $t2,$zero #iterator (Value of i)
#sub $t3,$t0,1 #value of j

input:
la $a0, array #array address
mflo $s0 #add low
add $s0,$s0,$t2 #iterator $s0 += iterator
sll $s0,$s0,2 #shift left ($s0 += 4)
li $a1,1 #syscall read 1
li $v0,8  #syscall for read string
syscall 
li $v0, 4 #syscall for print 
la $a0, space #printing space
syscall
addi $t2,$t2,1 #add iterator by 1(i++) 
bne $t2,$t0,input #if i not equal array size

