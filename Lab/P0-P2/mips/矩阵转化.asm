.data
space:.asciiz " "
huanhang:.asciiz "\n"
.text 

li $v0,5
syscall
add $s0,$0,$v0  #�������� ����$s0��
li $v0,5                                                                                           #��������������
syscall
add $s4,$0,$v0  #�������� ����$s4��

sll $s7,$s4,2
addi $s6,$0,4                                                                                     #  $s7  $s6

mult $s0,$s4
mflo $s0      #һ��Ҫ��������� ����$s0��                                                            # $s0  $s1
addi $s1,$0,0  #��$s1�Ĵ������ ��֮�����ڼ���

for_1:
beq $s0,$0,for_2  #��$s0��Ϊ0�� ����������
li $v0,5
syscall    
addi $sp,$sp,-4                                                                                   #��������е���
sw $v0,0($sp)
addi $s1,$s1,4
addi $s0,$s0,-1  #ÿ����һ���� $s0-1
j for_1         #ѭ����������е��� ������ջ��


for_2:
beq $s1,$0,finish  #��$s1����0�� ���������
lw $t0,0($sp)  #��ջ�׿�ʼȡ�� ����$t0��
bne $t0,$0,print   #���õ����������Ϊ0 ����ת��print
addi $sp,$sp,4
addi $s1,$s1,-4  #���õ�����Ϊ0 ���$s1-4 $sp+4
j  for_2

print:
add $t2,$s1,$0  #��$s1�е�����ʱ������$t2��

div $t2,$s7
mfhi $t3      #��������$t3��
div $t3,$s6  #�������ٳ���4                                                                           #�õ�����
mflo $t3     #�õ���������������

addi $t2,$t2,-1
div $t2,$s7   #����-1��/4*����   ����lo��                                                              #�õ�����
mflo $t1    #���̴���$t1��
addi $t1,$t1,1  #��ʱ��$t1�д�����ǵڼ���

li $v0,1
move $a0, $t1
syscall    #���������                                                                                #��������Ϳո�
la $a0,space
li $v0,4
syscall    #����ո�

beq $t3,$0,case0
li $v0,1
move $a0,$t3
syscall
la $a0,space
li $v0,4
syscall     #���$t3�е�ֵ��Ϊ0 ����Ϊ���� ֱ�����
j  continuecoding

case0:
add $t3,$0,$s4 
li $v0,1
move $a0,$t3
syscall
la $a0,space
li $v0,4
syscall    #���$t3�е�ֵΪ0  ������Ϊ��������� ���

continuecoding:
li $v0,1
move $a0,$t0                                                                                       #��������е�ֵ
syscall   #��������е���ֵ

la $a0,huanhang
li $v0,4
syscall
addi $sp,$sp,4
addi $s1,$s1,-4  #���õ�������Ϊ0 �ھ�������� ��$s1��$sp�ֱ�+4
j  for_2

finish:
li $v0,10                                                                                              #��������
syscall






