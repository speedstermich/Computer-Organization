.text
#########################################################
li $v0,5
syscall
move $s0,$v0             #$s0------m1
li $v0,5
syscall
move $s1,$v0             #$s1------n1
li $v0,5
syscall
move $s2,$v0             #$s2------m2
li $v0,5
syscall
move $s3,$v0             #$s3------n2
#########################################################
mult $s0,$s1
mflo $t0               #$t0------m1*n1卷积矩阵中元素个数
mult $s2,$s3
mflo $t1               #$t1------m2*n2卷积核中元素个数
addi $t9,$0,0          #t=0
add $t7,$sp,$0        #$t7-----卷积矩阵首地址
#########################################################
loop1:
beq $t9,$t0,preloop2
li $v0,5
syscall
sw $v0,0($sp)
subi $sp,$sp,4
addi $t9,$t9,1
j loop1
#########################################################
preloop2:
addi $t9,$0,0          #t=0
add $t8,$sp,$0         #$t8-----卷积核矩阵首地址
#########################################################
loop2:
beq $t9,$t1,end_matrix
li $v0,5
syscall
sw $v0,0($sp)
subi $sp,$sp,4
addi $t9,$t9,1
j loop2
#########################################################
end_matrix:
sub $t0,$s0,$s2
addi $t0,$t0,1        #t0--------m1-m2+1行
sub $t1,$s1,$s3
addi $t1,$t1,1        #t1--------n1-n2+1列
addi $a2,$0,0        #a2--sum1
addi $t9,$0,0        #t9----num
addi $k0,$k0,0       #s5----sum2
#########################################################
addi $t2,$0,0     #$t2-----i=0
loopi:
beq $t2,$t0,endi
addi $t3,$0,0       #$t3------j=0
loopj:
beq $t3,$t1,endj
add $t4,$t2,$0       #$t4------p=i
loopp:
add $s4,$t2,$s2       #$s4-----i+m2
beq $t4,$s4,endp
add $t5,$t3,$0     #$t5-----q=j
loopq:
add $s5,$t3,$s3     #$s5-----j+n2
beq $t5,$s5,endq
mult $t4,$s1
mflo $s6
add $s6,$s6,$t5
sll $s6,$s6,2
sub $sp,$t7,$s6
lw $s6,0($sp)      #$s6------a[p][q]
sll $s7,$t9,2
sub $sp,$t8,$s7
lw $s7,0($sp)      #$s7------b[num]
mult $s6,$s7
mflo $s6         #$s6-----a[p][q]*b[num]
mfhi $a1
move $a3,$a2    #上一层的sum1
addu $a2,$a2,$s6     #sum1+=a[p][q]*b[num]
addu $k0,$k0,$a1     #sum2+=a1
sltu $t6,$a2,$a3
bne $t6,$0,plus
sltu $t6,$a2,$s6
bne $t6,$0,plus
continue:
addi $t9,$t9,1      #num++
addi $t5,$t5,1       #q++
j loopq
endq:
addi $t4,$t4,1      #p++
j loopp
endp:
li $v0,35
move $a0,$k0
syscall           #print
li $v0,35
move $a0,$a2
syscall
la $a0,' '
li $v0,11
syscall
addi $t9,$0,0     #num=0
addi $a2,$0,0      #sum1=0
addi $k0,$0,0    #sum2=0
addi $t3,$t3,1     #j++
j loopj
endj:
addi $t2,$t2,1     #i++
la $a0,'\n'
li $v0,11
syscall
j loopi
endi:
li $v0,10
syscall
plus:
addi $k0,$k0,1   #sum2+1
j continue
