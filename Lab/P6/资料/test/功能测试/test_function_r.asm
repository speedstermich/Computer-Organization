ori $t0, $0, 0x1234
ori $t1, $0, 0x1234
add $t2, $t0, $t1
addu $t2, $t0, $t1
sub $t2, $t0, $t1
subu $t2, $t0, $t1

ori $t0, $0, -2
ori $t1, $0, -0x3000
add $t2, $t0, $t1
addu $t2, $t0, $t1
sub $t2, $t0, $t1
subu $t2, $t0, $t1

lui $t0, 0x8000
lui $t1, 0x8765
#add $t2, $t0, $t1  #overflow
addu $t2, $t0, $t1

lui $t0, 0x4000
lui $t1, 0xc000
#subu $t2, $t0, $t1 #overflow
subu $t2, $t0, $t1

ori $t0, 0x4321
lui $t1, 0x8765
and $t2, $t0, $t1
or $t2, $t0, $t1

ori $t0, $0, 0x0009
ori $t1, $0, 0x000c
xor $t2, $t0, $t1
nor $t2, $t0, $t1
