.text

ori $t0, $0, 0
ori $t1, $0, 3
sub $t0, $t0, $t1
for_1_begin:
bgtz $t0, for_1_end
nop
addi $t0, $t0, 1
j for_1_begin
nop
for_1_end:
nop

ori $t0, $0, 3
for_2_begin:
sub $t0, $t0, 1
bgtz $t0, for_2_begin
nop

ori $t0, $0, 0
ori $t1, $0, 3
sub $t0, $t0, $t1
for_3_begin:
bgez $t0, for_3_end
nop
addi $t0, $t0, 1
jal for_3_begin
nop
for_3_end:
nop

ori $t0, $0, 3
for_4_begin:
sub $t0, $t0, 1
bgez $t0, for_4_begin
nop