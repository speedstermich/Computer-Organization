# TEST D-M-rs JAL
ori $4, 4
jal test_jal1
nop
ori $5, 4

test_jal1:
addu $31, $31, $4
sw $31, 4($0)
jal test_jal2
nop

test_jal2:
addi $31, $31, -0x3000 
sw $31, 8($0)
jal test_jal3
nop

test_jal3:
mthi $31
sw $31, 12($0)
mfhi $6
sw $6, 16($0)
jal test_jal4
nop

test_jal4:
mult $31, $6
sw $31, 20($0)
mfhi $7
mflo $8
sw $7, 24($0)
sw $8, 28($0)