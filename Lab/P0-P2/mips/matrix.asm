.text
li $v0, 5
syscall 
add $s0, $v0, $0	#$s0 == N-matrix
###########################################
mult $s0, $s0
mflo $t0		#Matrix number
###########################################
#preloop1
addi $t6, $sp, 0	#first address
addi $t9, $0, 0		#t = 0

loop1:
beq $t9, $t0, preloop2
li $v0, 5
syscall 
add $t5, $v0, $0	#input first number
sw $t5, 0($sp)
subi $sp, $sp, 4
addi $t9, $t9, 1
j loop1
##########################################
preloop2:
addi $t7, $sp, 0
addi $t9, $0, 0  	#reset t = 0

loop2:
beq $t9, $t0, end_build
li $v0, 5
syscall 
add $t5, $v0, $0	#input first number
sw $t5, 0($sp)
subi $sp, $sp, 4
addi $t9, $t9, 1
j loop2
########################################
end_build:
addi $s1, $0, 0		#$s1 ------- i = 0
addi $s2, $0, 0		#$s2 ------- j = 0
addi $s3, $0, 0		#$s3 ------- k = 0
addi $s1, $0, 0		#$s4 ------- sum = 0
########################################
loopi:
beq $s1, $s0, endi
loopj:
beq $s2, $s0, endj
loopk:
beq $s3, $s0, endk
mult $s1, $s0
mflo $t8
add $t8,$s3,$t8
sll $t8,$t8,2
sub $t8,$t6,$t8
lw $t8,0($t8)              #$t8------a[i][k]
mult $s3,$s0
mflo $t9
add $t9,$s2,$t9
sll $t9,$t9,2
sub $t9,$t7,$t9
lw $t9,0($t9)             #$t9-------b[k][j]
#####################################################      
mult $t8,$t9
mflo $s7             #$s7------a[i][k]*b[k][j]
add $s4,$s4,$s7      #sum---$s4-----block[i][j]
addi $s3,$s3,1       #k++
j loopk
#####################################################
endk:
li $v0,1
move $a0,$s4
syscall                 #输出这个数       
la $a0,' '
li $v0,11
syscall
#######################################################
addi $s4,$0,0      #sum=0
addi $s3,$0,0       #k=0
addi $s2,$s2,1   #j++
j loopj
##########################################################
endj:
la $a0,'\n'
li $v0,11
syscall
addi $s2,$0,0         #j=0
addi $s1,$s1,1          #i++
j loopi
##########################################################
endi:
li $v0,10
syscall 
