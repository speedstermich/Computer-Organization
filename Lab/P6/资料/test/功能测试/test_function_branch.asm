ori $t0, $0, 0
ori $t1, $0, 2
for_1_begin:
beq $t0, $t1, for_1_end
nop
addi $t0, $t0, 1
j for_1_begin
nop
for_1_end:
nop

ori $t0, $0, 1
ori $t1, $0, 2
for_2_begin:
subi $t1, $t1, 1
beq $t0, $t1, for_2_begin
nop

ori $t0, $0, 0
ori $t1, $0, 2
for_3_begin:
addi $t0, $t0, 1
bne $t1, $t0, for_3_begin
nop

ori $t0, $0, 0
ori $t1, $0, 0
for_4_begin:
bne $t0, $t1, for_4_end
nop
addi $t0, $t0, -1
jal for_4_begin
nop
for_4_end:
nop

ori $t0, $0, 0
ori $t1, $0, 4
sub $t0, $t0, $t1
for_5_begin:
addi $t0, $t0, 1
blez $t0, for_5_begin
nop

ori $t0, $0, 3
ori $t1, $0, 1
for_6_begin:
blez $t0, for_6_end
nop
sub $t0, $t0, $t1
jal for_6_begin
for_6_end:
nop

ori $t0, $0, 0
ori $t1, $0, 4
sub $t0, $t0, $t1
for_7_begin:
addi $t0, $t0, 1
bltz $t0, for_7_begin
nop

ori $t0, $0, 3
ori $t1, $0, 1
for_8_begin:
bltz $t0, for_8_end
nop
sub $t0, $t0, $t1
jal for_8_begin
for_8_end:
nop














