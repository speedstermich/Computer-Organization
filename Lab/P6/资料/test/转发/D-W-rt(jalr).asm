# TEST D-W-rt JALR
ori $4, 0x3010
jalr $30, $4
nop
ori $5, 4

test_jarl1:
nop
addu $30, $4, $30
sw $30, 4($0)
addi $4, $0, 0x3028
jalr $30, $4
nop

test_jalr2:
nop
addi $30, $30, -0x3000 
sw $30, 8($0)
addi $4, $0, 0x3040
jalr $30, $4
nop

test_jalr3:
nop
sll $29, $30, 4
sw $29, 12($0)
sw $30, 16($0)
mfhi $6
sw $6, 20($0)
addi $4, $0, 0x3064
jalr $30, $4
nop

test_jalr4:
nop
mult $30, $29
sw $30, 24($0)
mfhi $7
mflo $8
sw $7, 28($0)
sw $8, 32($0)

