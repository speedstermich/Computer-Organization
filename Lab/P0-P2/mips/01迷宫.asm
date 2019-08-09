.text
################################################
li $v0,5
syscall
move $s0,$v0        ########$s0-----n行数
li $v0,5
syscall
move $s1,$v0        ########$s1-----m列数
################################################
addi $s7,$sp,0       ########$s7-----a[][]矩阵首地址
################################################
addi $t0,$0,0       #$t0-----i=0
loopi:
beq $t0,$s0,endi
addi $t1,$0,0       #$t1-----j=0
loopj:
beq $t1,$s1,endj
li $v0,5
syscall
move $t9,$v0      #$t9------num
mult $t0,$s1
mflo $t8          #$t8------i*m
add $t8,$t8,$t1   #$t8------i*m+j
sll $t8,$t8,2     #$t8------(i*m+j)*4
sub $t8,$s7,$t8   #$t8------a[i][j]地址
sw $t9,0($t8)     #a[i][j]=num
subi $sp,$sp,4
addi $t1,$t1,1   #j++
j loopj
endj:
addi $t0,$t0,1   #i++
j loopi
endi:                      #$t0,$t1,$t8,t9都没用了       # $s0/$s1/$s7不能用
###########################################################################
li $v0,5
syscall
move $s2,$v0      ########$s2-----line1
li $v0,5
syscall
move $s3,$v0      ########$s3-----con1
li $v0,5
syscall
move $s4,$v0      ########$s4------line2
li $v0,5
syscall
move $s5,$v0      ########$s5------con2
subi $s2,$s2,1   #line1--
subi $s3,$s3,1   #con1--
subi $s4,$s4,1   #line2--
subi $s5,$s5,1   #con2--                   #$s0~$s5、$s7不能用
###########################################################################
addi $s6,$sp,0   #####$s6----judge[][]首地址
sub $t5,$s7,$s6
sub $sp,$s6,$t5    ######$sp-----栈的首地址
addi $t9,$0,0     ####$t9----total=0
move $t0,$s2      ####$t0----line=line1
move $t1,$s3      ####$t1----con=con1
######################################
jal search
move $a0,$t9
li $v0,1
syscall         #printf("%d",total);
li $v0,10
syscall         #return 0
######################################
search:
mult $t0,$s1
mflo $t8
add $t8,$t8,$t1
sll $t8,$t8,2
sub $t8,$s6,$t8
addi $t7,$0,1    #$t7---1
sw $t7,0($t8)   #judge[line][con]=1
#################################################
if_1:
bne $t0,$s4,if_2     #line==line2?
bne $t1,$s5,if_2     #con==con2?
addi $t9,$t9,1      #total++
#jr $ra        #？？？？？？？？？？？？
#################################################
if_2:
subi $t6,$t0,1     #$t6-----i=line-1
bgt $0,$t6,if_3
mult $t6,$s1
mflo $t8
add $t8,$t8,$t1    #$t8----i*m+con
sll $t8,$t8,2
sub $t8,$s6,$t8
lw $t8,0($t8)      #t8-----judge[i][con]
bne $t8,$0,if_3
mult $t6,$s1
mflo $t8
add $t8,$t8,$t1
sll $t8,$t8,2
sub $t8,$s7,$t8
lw $t8,0($t8)     #$t8----a[i][con]
bne $t8,$0,if_3
addi $sp,$sp,-16
sw $ra,0($sp)
sw $t6,4($sp)
sw $t0,8($sp)
sw $t1,12($sp)
move $t0,$t6
jal search
#####################################################
lw $ra,0($sp)
lw $t6,4($sp)
lw $t0,8($sp)
lw $t1,12($sp)
addi $sp,$sp,16
##############################
if_3:
addi $t6,$t0,1    #$t6----i=line+1
bge $t6,$s0,if_4     #i<n?
mult $t6,$s1
mflo $t8
add $t8,$t8,$t1
sll $t8,$t8,2
sub $t8,$s6,$t8
lw $t8,0($t8)      #$t8----judge[i][con]
bne $t8,$0,if_4     #judge[i][con]==0？
mult $t6,$s1
mflo $t8
add $t8,$t8,$t1
sll $t8,$t8,2
sub $t8,$s7,$t8
lw $t8,0($t8)      #$t8------a[i][con]
bne $t8,$0,if_4
addi $sp,$sp,-16
sw $ra,0($sp)
sw $t6,4($sp)
sw $t0,8($sp)
sw $t1,12($sp)
move $t0,$t6
jal search
########################################################
lw $ra,0($sp)
lw $t6,4($sp)
lw $t0,8($sp)
lw $t1,12($sp)
addi $sp,$sp,16
############################3
if_4:
subi $t6,$t1,1     #$t6----i=con-1
bgt $0,$t6,if_5     #i>=0?
mult $t0,$s1
mflo $t8
add $t8,$t8,$t6
sll $t8,$t8,2
sub $t8,$s6,$t8
lw $t8,0($t8)        #$t8----judge[line][i]
bne $t8,$0,if_5
mult $t0,$s1
mflo $t8
add $t8,$t8,$t6
sll $t8,$t8,2
sub $t8,$s7,$t8
lw $t8,0($t8)        #$t8------a[line][i]
bne $t8,$0,if_5
addi $sp,$sp,-16
sw $ra,0($sp)
sw $t6,4($sp)
sw $t0,8($sp)
sw $t1,12($sp)
move $t1,$t6
jal search
###########################################################
lw $ra,0($sp)
lw $t6,4($sp)
lw $t0,8($sp)
lw $t1,12($sp)
addi $sp,$sp,16
#######################
if_5:
addi $t6,$t1,1     #$t6------i=con+1
bge $t6,$s1,recover
mult $t0,$s1
mflo $t8
add $t8,$t8,$t6
sll $t8,$t8,2
sub $t8,$s6,$t8
lw $t8,0($t8)      #$t8-----judge[line][i]
bne $t8,$0,recover
mult $t0,$s1
mflo $t8
add $t8,$t8,$t6
sll $t8,$t8,2
sub $t8,$s7,$t8
lw $t8,0($t8)      #$t8-----a[line][i]
bne $t8,$0,recover
addi $sp,$sp,-16
sw $ra,0($sp)
sw $t6,4($sp)
sw $t0,8($sp)
sw $t1,12($sp)
move $t1,$t6
jal search
###########################################################
lw $ra,0($sp)
lw $t6,4($sp)
lw $t0,8($sp)
lw $t1,12($sp)
addi $sp,$sp,16
############################
recover:
mult $t0,$s1
mflo $t8
add $t8,$t8,$t1
sll $t8,$t8,2
sub $t8,$s6,$t8
sw $0,0($t8)      #judge[line][con]=0
jr $ra
#############################################################

