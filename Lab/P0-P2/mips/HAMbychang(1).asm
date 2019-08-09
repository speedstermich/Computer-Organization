.text
addi $t9,$0,1    #$t9-----1
#########################################################################
li $v0,5
syscall
add $s0,$v0,$0    #n-$s0
li $v0,5
syscall
add $s1,$v0,$0    #m-$s1
###########################################################################
add $s7,$sp,$0    #$sp首地址存入$s7
###########################################################################
mult $s0,$s0
mflo $s2          #$s2------多少个数-多少个空间
addi $t0,$0,0     #$t0------i=0
createspace_initial0:
beq $t0,$s2,end_createspace_initial0                           #a[i][j]=0
addi $sp,$sp,-4
add $s6,$sp,0     #$sp尾地址(矩阵）存入$s6
sw $0,0($sp)
addi $t0,$t0,1  #i++
j createspace_initial0
###########################################################################
end_createspace_initial0:
sll $s2,$s1,1     #$s2------m*2-------输入多少数
addi $t0,$0,0     #$t0------i=0
build_matrix:
beq $t0,$s2,end_build_matrix
li $v0,5
syscall
add $t1,$v0,$0   #$t1------输入的第一个数
li $v0,5
syscall
add $t2,$v0,$0   #$t2------输入的第二个数
#####
sub $t3,$s0,$t1
sub $t4,$s0,$t2   
#####
mult $t3,$s0
mflo $t5
add $t5,$t5,$t4  
sll $t5,$t5,2    #t5------第一个数要移的位数
add $t5,$s6,$t5
lw $t7,0($t5)    
addi $t7,$t7,1   #a[d1][d2]++
sw $t7,0($t5)
#####
mult $t4,$s0
mflo $t6
add $t6,$t6,$t3
sll $t6,$t6,2    #t6-------第二个数要移的位数
add $t6,$s6,$t6
lw $t7,0($t6)
addi $t7,$t7,1  #a[d2][d1]++
sw $t7,0($t6)
addi $t0,$t0,2
j build_matrix
#########################################################################
end_build_matrix:
addi $t0,$0,0    #$t0--------i=0
initial_dot1:
beq $t0,$s0,end_initial_dot1
addi $sp,$sp,-4
add $s5,$sp,$0   #$sp尾地址（点）存入$s5
sw $t9,0($sp)
addi $t0,$t0,1
j initial_dot1
#########################################################################
end_initial_dot1:
#########################################################################
addi $s2,$0,0     #$s2----use=0
addi $t1,$0,1     #$t1----d1=1
addi $t8,$0,0     #$t8----judge=0
move $a0, $t1
jal find

move $a0, $t8
li $v0, 1
syscall
li $v0, 10
syscall

find:
move $t1, $a0

beq $s2,$s0,judge1   #use==n?
j pre_loop

judge1:
bne $t1,$t9, pre_loop   #d1==1?

li $t8, 1
move $a0, $t8
li $v0, 1
syscall
li $v0, 10
syscall

####
pre_loop:
li $t2,1    #$t2-------d2=1
loop:
bgt $t2,$s0,judge_root
#####
sub $t3,$s0,$t1
sub $t4,$s0,$t2
#####
mult $t3,$s0
mflo $t5
add $t5,$t5,$t4  
sll $t5,$t5,2    #t5------第一个数要移的位数
add $t5,$s6,$t5  #t5------找到这个数的地址
lw $t5,0($t5)  #$t5----地址上的数值
beq $t5,$0,d2plusplus #若不满足a[d1][d2]!=0 d2++

sll $t6,$t2,2
sub $t6,$s6,$t6  #$t6-----数的地址
lw $t6,0($t6)    #$t6-----地址上的数值
bne $t6,$t9,d2plusplus  #若不满足b[d2]==1 d2++

sll $t6,$t2,2
sub $t6,$s6,$t6  #$t6-----数的地址
sw $0,0($t6)  #b[d2]=0
#####
mult $t3,$s0
mflo $t5
add $t5,$t5,$t4  
sll $t5,$t5,2    #t5------第一个数要移的位数
add $t5,$s6,$t5  #t5------找到这个数的地址
lw $t7,0($t5)
addi $t7,$t7,-1
sw $t7,0($t5) #a[d1][d2]--


mult $t4,$s0
mflo $t5
add $t5,$t5,$t3
sll $t5,$t5,2    #t5------第二个数要移的位数
add $t5,$t5,$s6  #t5------找到这个数的地址
lw $t7,0($t5)
addi $t7,$t7,-1
sw $t7,0($t5)   #a[d2][d1]--
####
addi $s5,$s5,-12
sw $t1,8($s5)
sw $t2,4($s5)
sw $ra,0($s5)

addi $s2,$s2,1  #use+1
move $a0, $t2

jal find

lw $ra,0($s5)
lw $t2,4($s5)
lw $t1,8($s5)
addi $s2,$s2,-1  #use-1
addi $s5,$s5,12

sub $t3,$s0,$t1
sub $t4,$s0,$t2

mult $t3,$s0
mflo $t5
add $t5,$t5,$t4  
sll $t5,$t5,2    #t5------第一个数要移的位数
add $t5,$s6,$t5  #t5------找到这个数的地址
lw $t7,0($t5)
addi $t7,$t7,1
sw $t7,0($t5)   #a[d1][d2]++

mult $t4,$s0
mflo $t5
add $t5,$t5,$t3
sll $t5,$t5,2
add $t5,$t5,$s6
lw $t7,0($t5)
addi $t7,$t7,1
sw $t7,0($t5)   #a[d2][d1]++

sll $t5,$t2,2
sub $t5,$s6,$t5
sw $t9,0($t5)   #b[d2]=1


d2plusplus:
addi $t2,$t2,1
j loop

judge_root:
jr $ra









