# TEST E-M r/r_no_rs/i/i_no_rs/mf
# $30 is in charge of offset and base
# $5 is the register used for testing

# test E-M-r
# sw $5, 0($5)
# addi $30, $30, 4
# addu $5, $5, $5
# xxxx

ori $30, 0

sw $5, 0($30)
addi $30, $30, 4
ori $5, 4
addu $5, $5, $5
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $30
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
lw $5, -4($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
addu $5, $5, $5
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addu $5, $5, $5
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4

# test E-M-r_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# sll $5, $5, 1
# xxxx

sw $5, 0($30)
addi $30, $30, 4
ori $5, 0xff
sll $5, $5, 1
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
lw $5, -4($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
sll $5, $5, 0
sw $5, -5080($5)

sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 1
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
sll $5, $5, 2
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4

# test E-M-i
# sw $5, 0($5)
# addi $30, $30, 4
# addi $5, $30, 4
# xxxx

sw $5, 0($30)
addi $30, $30, 4
ori $5, 0xffff
addi $5, $30, 4
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
lw $5, -4($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
srl $5, $5, 16
addi $5, $5, 4
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
addi $5, $30, 4
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test E-M-i_no_rs
# sw $5, 0($5)
# addi $30, $30, 4
# lui $5, 0x0fff
# xxxx
sw $5, 0($30)
addi $30, $30, 4
ori $5, 0xffff
lui $5, 0x0fff
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
lw $5, -4($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
lui $5, 0
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
lui $5, 0x0fff
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4


# test E-M-mf
# sw $5, 0($5)
# addi $30, $30, 4
# mflo $5
# xxxx
sw $5, 0($30)
addi $30, $30, 4
ori $5, 0xffff
mult $30, $30
mflo $5
addu $5, $5, $5

sw $5, 0($30)
addi $30, $30, 4
mult $30, $30
mflo $5
addi $5, $5, 200

sw $5, 0($30)
addi $30, $30, 4
mult $30, $30
mflo $5
lw $5, -4($30)

sw $5, 0($30)
ori $5, 100
addi $30, $30, 4
mult $30, $30
mflo $5
sw $5, 200($5)

sw $5, 0($30)
addi $30, $30, 4
mult $30, $30
mflo $5
mtlo $5

mflo $6
sw $6, 0($30)
addi $30, $30, 4
sw $5, 0($30)
addi $30, $30, 4
mult $30, $30
mflo $5
mult $5, $5

mflo $7
sw $7, 0($30)
addi $30, $30, 4