.data
	matrix1:	.space 256
	matrix2:	.space 256
.text
	li $v0, 5
	syscall
	move $t0, $v0 # total column number
	
	move $s0, $zero #current row number
	move $s1, $zero #current column number

# put the numbers into the matrix
loop1:	li $v0, 5
	syscall
	move $t1, $v0 #current value input to be stored
	
	#to get the current index since it's a 2D array, we have to multiply the current row number with the total row number
	mul $s2, $s0, $t0
	add $s2, $s2, $s1 #mult result + column number means in the current row of the $s1 column number
	sll $s2, $s2, 2
	sw $t1, matrix1($s2) #store the input value to the $s2 address of the matrix
	 
	addi $s1, $s1, 1 #move to the next column of the current row
	bne $s1, $t0, loop1 #if column number hasn't reached the max column number then loop
	
	#if is at the end of column
	move $s1, $zero	#restart column number
	addi $s0, $s0, 1 #row number + 1
	bne $s0, $t0, loop1 #if row number hasn't reached max row number then loop
	
	move $s0, $zero #reset row number
	move $s1, $zero #reset column number

loop2:	li $v0, 5
	syscall
	move $t1, $v0 #current value input to be stored
	
	#same logic with matrix1
	#mult $s0, $t0
	#mflo $s2
	mul $s2, $s0, $t0
	add $s2, $s2, $s1
	sll $s2, $s2, 2
	sw $t1, matrix2($s2)
	 
	addi $s1, $s1, 1
	bne $s1, $t0, loop2
	
	move $s1, $zero
	addi $s0, $s0, 1
	bne $s0, $t0, loop2
	
	move $s0, $zero #reset row number
	move $s1, $zero #reset column number
	addi $s1, $s0, 1
	
trans:	subi $t2, $t0, 1	#number of row (or column) - 1
	
	mul $s3, $s0, $t0
	add $s3, $s3, $s1	#column counter initialize
	
	addi $s5, $t0, 1 #diagonal position
	mul $s5, $s5, $s0
	sub $t3, $s3, $s5	#current column - row number(diagonal position)
	mul $t2, $t3, $t2
	add $s2, $s3, $t2	#second current column += number of row - 1
	
	#add $s3, $s3, $s1
	sll $s3, $s3, 2
	lw $t4, matrix2($s3)
	
	#add $s2, $s2, $s1
	sll $s2, $s2, 2
	lw $t5, matrix2($s2)
	
	sw $t5, matrix2($s3)
	sw $t4, matrix2($s2)
	
	addi $s1, $s1, 1
	bne $s1, $t0, trans
	
	addi $s0, $s0, 1
	addi $s1, $s0, 1
	addi $s4, $s0, 1
	beq $s4, $t0, pre
	j trans

pre:
	#for matrix 1
	move $s0, $zero #reset row number
	move $s1, $zero #reset column number
	#for matrix 2
	move $s3, $zero #reset row number
	move $s4, $zero #reset column number
	move $t3, $zero
	
multiply:
	mul $s2, $s0, $t0
	add $s2, $s2, $s1
	sll $s2, $s2, 2
	lw $t1, matrix1($s2)
	
	mul $s5, $s3, $t0
	add $s5, $s5, $s4
	sll $s5, $s5, 2
	lw $t2, matrix2($s5)
	
	mul $t2, $t1, $t2 #multiply matrix1[j] with matrix2[j]
	add $t3, $t2, $t3 #1 element multiply result
	
	addi $s1, $s1, 1 #matrix 1 j++
	addi $s4, $s4, 1 #matrix 2 j++
	bne $s4, $t0, multiply
	
	j print

multiply2:
	move $s1, $zero	#reset matrix1 column counter
	move $s4, $zero #reset matrix2 column counter
	
	addi $s3, $s3, 1 #row + 1
	blt $s3, $t0, multiply
	j enter
	
multiply3:
	move $s1, $zero
	move $s3, $zero
	move $s4, $zero
	addi $s0, $s0, 1
	bne $s0, $t0, multiply
	j end

print:	move $a0, $t3
	li $v0, 1
	syscall
	move $t3, $zero
	j space

space:	li $a0, ' '
	li $v0, 11
	syscall
	j multiply2

enter:	li $a0, '\n'
	li $v0, 11
	syscall
	j multiply3
	
end:	li $v0, 10
	syscall