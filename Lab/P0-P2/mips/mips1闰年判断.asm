.data
yes:.asciiz"1"
no:.asciiz"0"
.text
  li $v0, 5
  syscall   #����һ������ �������������$v0��
  add $s0,$v0,$0  #�������������$s0��
 
  addi $s1,$0,4
  addi $s2,$0,100
  addi $s3,$0,400   #4��100��400�ֱ���������Ĵ�����
  
  div $s0,$s1  #�����������4
  mfhi $t0     #�õ�����
  beq $t0,$0,else_1_  #����Ϊ0��ת
  la $a0,no
  li $v0,4
  syscall    
  li $v0,10
  syscall      #�޷�����4ʱ ���0 ��������
else_1_: #��ʱ������4�������
  div $s0,$s2   #�����������100
  mfhi $t0      #�õ�����
  beq $t0,$0,else_2_  #����Ϊ0��ת
  la $a0,yes  #������Ϊ0ʱ ���1
  li $v0,4
  syscall
  li $v0,10
  syscall
else_2_:    #�������������4������100�����
  div $s0,$s3   #�����������400
  mfhi $t0      #�õ�����
  beq $t0,$0,else_3_  #����Ϊ0ʱ��ת
  la $a0,no
  li $v0,4
  syscall
  li $v0,10
  syscall
 else_3_:
 la $a0,yes
 li $v0,4
 syscall
 li $v0,10
 syscall
  
