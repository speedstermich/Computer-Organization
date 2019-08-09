.text
lui $t0, 0xc2a4
ori $t0, $t0, 0x86b8
sw $t0, 0($0)
sb $t0, 4($0)
sb $t0, 5($0)
sh $t0, 6($0)
lw $t0, 0($0)
lb $t0, 1($0)
lbu $t0, 1($0)
lh $t0, 2($0)
lhu $t0, 2($0)