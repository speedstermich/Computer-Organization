ori $t0,$0,2      #t0---2
ori $t1,$0,4      #t1---4
beq $t0,$t1,jump1  #不跳
addu $a0,$t0,$t1  #a0---6
subu $a0,$t1,$t0        #a0---2
jump1:
ori $t3,$0,3    #t3---3
ori $a1,$0,2    #a1---2
beq $a0,$a1,jump2  #跳
ori $t7,$0,8
ori $t7,$0,9
jump2:
ori $ra,$0,0x303c
jr $ra
ori $a0,$0,1
ori $a0,$0,2
ori $a0,$0,3
ori $a0,$0,4    #跳到这步
ori $a0,$0,2026
sw $a0,0($0)
lw $a1,0($0)
lw $a2,0($0)
beq $a1,$a2,branch
ori $t0,$0,1
ori $t1,$0,2
branch:
ori $t1,$0,3
jal jump
lui $s1,1
lui $s2,2
jump:
lui $s3,3
j finish
finish:
jr $ra


