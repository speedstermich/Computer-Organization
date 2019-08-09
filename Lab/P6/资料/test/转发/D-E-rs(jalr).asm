# TEST D-E-rs JALR
ori $4, 0x3010
jalr $30, $4
addu $30, $4, $30
ori $5, 4

test_jarl1:
sw $30, 4($0)
addi $4, $0, 0x3020
jalr $30, $4
addi $30, $30, -0x3000 

test_jalr2:
sw $30, 8($0)
addi $4, $0, 0x3030
jalr $30, $4
mthi $30

test_jalr3:
sw $30, 12($0)
mfhi $6
sw $6, 16($0)
addi $4, $0, 0x3048
jalr $30, $4
mult $30, $6

test_jalr4:
sw $30, 20($0)
mfhi $7
mflo $8
sw $7, 24($0)
sw $8, 28($0)
