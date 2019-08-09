ori $4,$4,4
ori $3,$3,0x1234
sw $4,0($0)
sw $3,4($0)

lw $4,0($5)
addu $4,$4,$5

lw $4,4($5)
addu $4,$5,$4

lw $4,0($5)
ori $5,$4,8

lw $4,4($5)
lw $3,4($4)

lw $4,0($5)
sw $3,4($4)

jal fun
nop
fun:
ori $s3,$s3,16
addu $ra,$ra,$s3
jr $ra
nop

ori $10,0x3044
jr $10
nop

nop
ori $11,24
addu $10,$10,$11
sw $10,0($5)
lw $22,0($5)
jr $22
nop

ori $5,$5,16
ori $21,$21,0x3094
sw $21,0($5)
lw $4,0($5)
nop
jr $4
nop

addu $4,$4,$5
loop0:
beq $4,$5,loop0
nop

ori $5,0xffff
ori $4,0xffff
beq $4,$5,loop1
nop
loop1:


lw $4,0($25)
beq $4,$5,loop2
nop
loop2:

lw $4,0($25)
nop
beq $4,$5,loop3
nop
loop3:

addu $4,$4,$5
beq $5,$4,loop4
nop
loop4:

ori $4,0xffff
beq $5,$4,loop5
nop
loop5:

lw $4,0($25)
beq $5,$4,loop6
nop
loop6:

lw $4,0($25)
nop
loop7:
beq $5,$4,loop7
nop