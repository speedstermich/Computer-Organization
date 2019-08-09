.data
arr:.space 44
.text
ori $t0,$0,0
ori $t1,$0,1
ori $s0,$0,1
ori $s1,$0,4
ori $s2,$0,40
for:
beq $t0,$s2,next
sw $t1,arr($t0)
addu $t1,$t1,$s0
addu $t0,$t0,$s1
j for
next:
ori $t0,$0,0
ori $t1,$0,0
ori $s0,$0,0
for1:
beq $t0,$s2,next1
lw $t1,arr($t0)
addu $s0,$s0,$t1
addu $t0,$t0,$s1
j for1
next1:
sw $s0,arr($t0)
li $t0,0x44897253
