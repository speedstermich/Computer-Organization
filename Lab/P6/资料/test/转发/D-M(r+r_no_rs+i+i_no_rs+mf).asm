# TEST D-M r/r_no_rs/i/i_no_rs/mf
# $30 is in charge of offset and base
# $5 is the register used for testing

# test D-M-r
# sw $5, 0($5)
# addi $30, $30, 4
# addu $5, $5, $5
# nop
# xxxx

ori $30, 0

sw $5, 0($30)
addi $30, $30, 4
ori $5, 4
addu $5, $5, $5
nop
beq $5, $5, test_beq1
nop
addi $5, $5, 100

test_beq1:
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
bgtz $5, test_bgtz1 
nop

test_bgtz1:
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
addu $5, $5, $5
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4

# test D-M-r_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# sll $5, $5, 1
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
beq $5, $5, test_beq2
nop
addi $5, $5, 100

test_beq2:
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
bgtz $5, test_bgtz2 
nop

test_bgtz2:
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 200
addi $30, $30, 4
sll $5, $5, 1
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
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
# xxxx
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
beq $5, $5, test_beq3
nop
addi $5, $5, 100

test_beq3:
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
bgtz $5, test_bgtz3 
nop

test_bgtz3:
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 300
addi $30, $30, 4
addi $5, $30, 4
nop
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test D-M-i_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# lui $5, 0x0fff
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
beq $5, $5, test_beq4
nop
addi $5, $5, 100

test_beq4:
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
bgtz $5, test_bgtz4
nop

test_bgtz4:
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 80
addi $30, $30, 4
lui $5, 0
nop
sw $5, 0x400($5)

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test D-M-mf
# sw $5, 0($5)
# addi $30, $30, 4
# mflo $5
# nop
# xxxx
sw $5, 0($30)
addi $30, $30, 4
mflo $5
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
bgtz $5, test_bgtz5
nop

test_bgtz5:
sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
mult $5, $5
mflo $5
nop
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
lw $5, 0($30)

sw $5, 0($30)
ori $5, 500
addi $30, $30, 4
mflo $5
nop
sw $5, 400($0)

sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
mflo $5
nop
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4