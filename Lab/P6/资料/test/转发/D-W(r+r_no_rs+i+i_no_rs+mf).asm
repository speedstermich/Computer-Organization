# TEST D-W r/r_no_rs/i/i_no_rs/mf
# $30 is in charge of offset and base
# $5 is the register used for testing

# test D-W-r
# sw $5, 0($5)
# addi $30, $30, 4
# addu $5, $5, $5
# nop
# nop
# xxxx

ori $30, 0

sw $5, 0($30)
addi $30, $30, 4
ori $5, 4
addu $5, $5, $5
nop
nop
beq $5, $5, test_beq1
nop
addi $5, $5, 100

test_beq1:
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
bgtz $5, test_bgtz1 
nop

test_bgtz1:
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
addu $5, $5, $5
nop
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4

# test D-W-r_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# sll $5, $5, 1
# nop
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
beq $5, $5, test_beq2
nop
nop
addi $5, $5, 100

test_beq2:
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
bgtz $5, test_bgtz2 
nop

test_bgtz2:
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 200
addi $30, $30, 4
sll $5, $5, 1
nop
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4

# test D-M-i
# sw $5, 0($5)
# addi $30, $30, 4
# addi $5, $30, 4
# nop
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
beq $5, $5, test_beq3
nop
nop
addi $5, $5, 100

test_beq3:
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
bgtz $5, test_bgtz3 
nop

test_bgtz3:
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 300
addi $30, $30, 4
addi $5, $30, 4
nop
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test D-W-i_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# lui $5, 0x0fff
# nop
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
beq $5, $5, test_beq4
nop
addi $5, $5, 100

test_beq4:
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
bgtz $5, test_bgtz4
nop

test_bgtz4:
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 80
addi $30, $30, 4
lui $5, 0
nop
nop
sw $5, 0x400($5)

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test D-W-mf
# sw $5, 0($5)
# addi $30, $30, 4
# mflo $5
# nop
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
nop
beq $5, $5, test_beq5
nop
addi $5, $5, 100

test_beq5:
sw $5, 0($30)
addi $30, $30, 4
mult $30, $30
mflo $5
nop
nop
bgtz $5, test_bgtz5
nop

test_bgtz5:
sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
mult $5, $5
mflo $5
nop
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 500
addi $30, $30, 4
mflo $5
nop
nop
sw $5, 400($0)

sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4
