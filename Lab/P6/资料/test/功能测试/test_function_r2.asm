.text

lui $t0, 0xc000
ori $t1, $0, 100
slt $t2, $t0, $t1
sltu $t2, $t0, $t1

ori $t0, $0, 0x1234
sll $t1, $t0, 7
lui $t0, 0xc123
srl $t1, $t0, 17
sra $t1, $t0, 17

lui $t0, 0xc123
ori $t1, $0, 0xc007
sllv $t2, $t0, $t1
srlv $t2, $t0, $t1
srav $t2, $t0, $t1
