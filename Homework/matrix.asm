.data
 	space : .asciiz " "
	array : .word 0:40
	array2:.word 0:40
	newline: .asciiz "\n"
	
.text

input:
li $v0,5 	#input command
syscall
move $t0, $v0 		#input n put in t0

move $t1, $t0 		#$t1 number of rows (Matrix 1)
move $t2, $t0 		#$t2 number of columns (Matrix 1)

#move $t3, $t0 		#$t1 number of rows (Matrix 2)
#move $t4, $t0 		#$t2 number of columns (Matrix 2)

move $s0, $zero 	#s0 row counter (Matrix 1)
move $s1, $zero 	#s1 column counter (Matrix 1)

#move $s3, $zero 	#s0 row counter (Matrix 2)
#move $s4, $zero 	#s1 column counter (Matrix 2)

#la $t3, array
#move $t3, $zero #the value 1 to be store
#move $t4, $zero #the value 2 to be store

loop_input1:

mult $s0, $t2 		#row*col (s0)
mflo $s2
add $s2, $s2, $s1 	#s2 += column counter
sll $s2, $s2, 2 	#$s2 += 4 (shift left 2bits) 
#addu $s2, $s2, $t3 #memory loaction
li $v0,5 #input command
syscall
#move $t4, $v0 #put number
sw $v0, array($s2) #store value in matrix
#loop control
addi $s1,$s1,1 #column counter +1
bne $s1, $t2,loop_input1 #not at end of row, loop back

move $s1, $zero #reset column counter 
addi $s0, $s0,1 #row counter +1
bne $s0, $t1,loop_input1 #not at end of matrix loop back 

reset:
move $s0, $zero 	#s0 row counter (Matrix 2)
move $s1, $zero 	#s1 column counter (Matrix 2)

loop_input2:
mult $s0, $t2 		#row*col (s0)
mflo $s2
add  $s2, $s2, $s1 	#s2 += column counter
sll $s2, $s2, 2 	#$s2 += 4 (shift left 2bits) 
#addu $s2, $s2, $t3 #memory loaction
li $v0,5 #input command
syscall
#move $t4, $v0 #put number
sw $v0, array2($s2) #store value in matrix
#loop control
addi $s1,$s1,1 #column counter +1
bne $s1, $t2,loop_input2 #not at end of row, loop back

move $s1, $zero #reset column counter 
addi $s0, $s0,1 #row counter +1
bne $s0, $t1,loop_input2 #not at end of matrix loop back

reset1:
move $s2, $zero #write s2 as zero
transpose:



multiplication:


printing:
lw $t3,array($s2)
li $v0,1
addi $a0, $t3, 0 
syscall

lw $t3,array2($s2)
li $v0,1
addi $a0, $t3, 0
syscall

exit:
li $v0, 10 #exit
syscall 

