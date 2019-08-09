# TEST D-W-rt JAL
ori $4, 4
jal test_jal1
nop
ori $5, 4

test_jal1:
nop
addu $31, $4, $31
sw $31, 4($0)
jal test_jal2
nop

test_jal2:
nop
sll $30, $31, 4
sw $30, 8($0)
sw $31, 12($0)
jal test_jal3
nop

test_jal3:
nop
sw $31, 16($0)
jal test_jal4
nop

test_jal4:
nop
mult $31, $31
sw $6, 20($0)
sw $31, 24($0)
