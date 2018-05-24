addi $s1,$s2,-4
or $s1,$s2,$t2
label:
lw $s1,8($t1)
beq $s1,$s1,label
lui $s1,3
jal label
nop
