ori $t0, $0, 0x0008
andi $t1, $t0, 0x000c
ori $t1, $t0, 0x000c
xori $t1, $t0, 0x000c

lui $t0, 0x8000
#addi $t1, $t0, -0x7000   #overflow
addiu $t1, $t0, -0x7000

lui $t0, 0xc000
slti $t1, $t0, 100
ori $t0, $0, 0x0005
slti $t1, $t0, 0x0
ori $t0, $0, -1
slti $t1, $t0, -5

lui $t0, 0xc000
sltiu $t1, $t0, 100
lui $t0, 0xc000
sltiu $t1, $t0, -100
ori $t0, $0, 1
sltiu $t1, $t0, -100 