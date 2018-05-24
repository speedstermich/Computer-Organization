.data
array : .space 1000

.text
	addi $s0, $zero, 0
	addi $s1, $zero, 10
	addi $s2, $zero, 12
	
	#index = $t0
	addi $t0,$zero,4
	
	sw $s0, array($t0)
		addi $t0,$t0,4
	sw $s1, array($t0)
		addi $t0,$t0,4
	sw $s2, array($t0)
		#addi $t0,$t0,4
		
	lw $t6, array($t0)
	
	li $v0, 1
	addi $a0, $t6, 0
	syscall
	