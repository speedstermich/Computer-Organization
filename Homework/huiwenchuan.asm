.data
array : .word 0:1000 #array size
#i: .word 0
space : .asciiz "\n"
true : .asciiz "1"
false :.asciiz "0"
.text

main:
li $v0,5 		#input array space
syscall 		#system call
move $t0,$v0 		# store array size

move $t2,$zero 		#iterator (Value of i)


input:
mflo $s0
add $s0,$s0,$t2 	#iterator $s0 += iterator
sll $s0,$s0,2 		#shift left ($s0 += 4)
li $v0,12  		#syscall for read string
li $a1,1 		#syscall read 1
syscall 

sw $v0,array($s0) 	#store string in array
li $v0, 4 		#syscall for print 
la $a0, space 		#printing space
syscall
addi $t2,$t2,1 		#add iterator by 1(i++) 
bne $t2,$t0,input 	#if i not equal array size

 
move $s1,$s0 		#value of j
move $s0,$zero 		#value of i
check:
lw $t3,array($s0) 	#memory of i
lw $t4,array($s1) 	#memory of j
addi $s0,$s0,4 		#i + 4
subi $s1,$s1,4		#j-4
beq $t3,$t4,check1

check1:
lw $t3,array($s0) 	#memory of i
lw $t4,array($s1) 	#memory of j
addi $s0,$s0,4 		#i + 4
subi $s1,$s1,4		#j-4
bne $t3,$t4,print2
j check2

check2:
lw $t3,array($s0) 	#memory of i
lw $t4,array($s1) 	#memory of j
addi $s0,$s0,4 		#i + 4
subi $s1,$s1,4		#j-4
bne $t3,$t4,print2
beq $t3,$t4,print

print:
li $v0,4
la $a0, true
syscall

exit:
li $v0,10 #system exit
syscall #exit

print2:
li $v0,4
la $a0, false
syscall

exit2:
li $v0,10 #system exit
syscall #exit
