# TEST D-W-rs JALR
ori $4, 0x3010
jalr $30, $4
nop
ori $5, 4

test_jarl1:
nop
addu $30, $30, $4
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
mthi $30
sw $30, 12($0)
mfhi $6
sw $6, 16($0)
addi $4, $0, 0x3060
jalr $30, $4
nop

test_jalr4:
nop
mult $30, $6
sw $30, 20($0)
mfhi $7
mflo $8
sw $7, 24($0)
sw $8, 28($0)
