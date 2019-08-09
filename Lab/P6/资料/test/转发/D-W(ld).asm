# TEST D-W ld
# $30 is in charge of offset and base
# $5 is the register used for testing

# test D-W-ld
# sw $5, 0($5)
# addi $30, $30, 4
# lw $5, -4($30)
# nop
# nop
# xxxx

ori $30, 0
ori $5, 300
sw $5, 0($30)
addi $30, $30, 4
ori $5, 4
lw $5, -4($30)
nop
nop
beq $5, $5, test_beq1
nop
addi $5, $5, 100

test_beq1:
sw $5, 0($30)
addi $30, $30, 4
lw $5, -4($30)
nop
nop
bgtz $5, test_bgtz1 
nop

test_bgtz1:
sw $5, 0($30)
addi $30, $30, 4
lw $5, -4($30)
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
lw $5, -4($30)
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
lw $5, -4($30)
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
lw $5, -4($30)
nop
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
lw $5, -4($30)
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
sw $30, -4($30)
lw $5, -4($30)
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4