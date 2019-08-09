.text

ori $t1, $0, 3
jal lable1
nop
add $t1, $t1, $t1
ori $t2, $0, 0x3024
jr $t2

lable1:
ori $t0, $0, 2
jalr $31, $31
nop

nop
