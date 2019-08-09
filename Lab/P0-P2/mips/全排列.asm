.text
#########################################
li $v0,5
syscall
move $s0,$v0             #$s0----n
#########################################
add $s7,$sp,$0        #$s7----array首地址
sll $t9,$s0,2
sub $s6,$sp,$t9       #$s6----symbol首地址
sub $s5,$s6,$t9      #$s5-----栈指针首地址
#########################################
addi $t0,$0,0            #$t0----index=0

jal FullArray
li $v0,10                #这步很关键！！！！
syscall

FullArray:
bgt $s0,$t0,preloop2
addi $t9,$0,0           #$t9-----i=0
loop1:
beq $t9,$s0,end1     #i<n?
sll $t8,$t9,2
sub $t8,$s7,$t8
lw $t8,0($t8)     #$t8-----array[i]
##########################################
li $v0,1
move $a0,$t8
syscall
la $a0,' '
li $v0,11
syscall
addi $t9,$t9,1     #i++
j loop1
end1:
la $a0,'\n'
li $v0,11
syscall
jr $ra
##########################################
preloop2:
addi $t9,$0,0       #$t9-----i=0
loop2:
beq $t9,$s0,end2
sll $t8,$t9,2
sub $t8,$s6,$t8
lw $t8,0($t8)     #$t8-----symbol[i]
bne $t8,$0,iplusplus
sll $t6,$t0,2
sub $t6,$s7,$t6
addi $t5,$t9,1   #$t5------i+1
sw $t5,0($t6)     #array[index]=i+1
sll $t6,$t9,2
sub $t6,$s6,$t6
addi $t5,$0,1  
sw $t5,0($t6)    #symbol[i]=1

addi $s5,$s5,-12
sw $t9,0($s5)
sw $ra,4($s5)
sw $t0,8($s5)

addi $t0,$t0,1   #index+1
jal FullArray

lw $t0,8($s5)
lw $ra,4($s5)
lw $t9,0($s5)
addi $s5,$s5,12
######################################################
sll $t5,$t9,2
sub $t5,$s6,$t5
sw $0,0($t5)     #symbol[i]=0

iplusplus:
addi $t9,$t9,1    #i++
j loop2

end2:
jr $ra
