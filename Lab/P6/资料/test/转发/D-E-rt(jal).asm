# TEST D-E-rt JAL
ori $4, 4
jal test_jal1
addu $31, $4, $31
ori $5, 4

test_jal1:
sw $31, 4($0)
jal test_jal2
sll $30, $31, 4

test_jal2:
sw $30, 8($0)
sw $31, 12($0)
jal test_jal3
sw $31, 16($0)

test_jal3:
jal test_jal4
mult $31, $31

test_jal4:
sw $6, 20($0)
sw $31, 24($0)