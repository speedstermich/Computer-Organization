.text

lui $t0, 0x7000
lui $t1, 0xc000
ori $t0, $t0, 0x1234
ori $t1, $t1, 0x1234
mult $t0, $t1
mfhi $t2
mflo $t3
multu $t0, $t1
mfhi $t2
mflo $t3
div $t1, $t0
mfhi $t2
mflo $t3
divu $t1, $t0
mfhi $t2
mflo $t3
mult $t0, $t1
mtlo $t2
mthi $t3
mfhi $t2
mflo $t3
