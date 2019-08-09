# special stall behaviors
ori $4, 20
ori $5, 4

# test hilo-hilo, mflo-hilo
mult $4, $5
mult $4, $5
mflo $6

# test mt-hilo
ori $7, 0xffff
mult $4, $5
mtlo $7 
mflo $8
sw $8, 0($0)

# normal stall behaviors

addi $4, $0, 40
addi $5, $0, 10

# test mf
mflo $7
beq $7, $7, test_beq1
nop
sw $7, 100($0)

test_beq1:
mflo $7
bgtz $7, test_bgtz1
nop
sw $7, 104($0)

test_bgtz1:
addi $8, $0, 0x3068
mtlo $8
mflo $7
jalr $30, $7
nop
sw $30, 108($0)

sw $30, 4($0)
addi $8, $0, 0x3084
mtlo $8
mflo $7
jr $7
nop
sw $30, 112($0)

sw $7, 8($0)

# test ld
lui $7, 0xffff
sw $7, 12($0)
lw $8, 12($0)
mult $8, $8

mfhi $9
sw $9, 16($0)
mflo $9
sw $9, 20($0)

lui $7, 0xf123
sw $7, 24($0)
lw $8, 24($0)
mtlo $8
mflo $9
sw $9, 28($0)