#��ȡ�ļ�
#����״̬��5��8���賿��д���˵ݹ�֮ǰ�Ĳ���
.data 
  in_buff:.space 512
  out_buff: .space 512 
  input_file:.asciiz "./a.in"
   output_file: .asciiz "./a.out" 
 .text
  la $a0,input_file #input_file ��һ���ַ��� 
  li $a1,0	 #flag 0Ϊ��ȡ 1Ϊд�� 
  li $a2,0	 #mode is ignored ����Ϊ0�Ϳ����� 
  li $v0,13	 #13Ϊ���ļ��� syscall���
  syscall	 #����򿪳ɹ� �� �ļ����������ص�$v0�� 
  
  move $a0,$v0	 #���ļ����������뵽$a0��
  la $a1,in_buff	 #in_buffΪ�����ݴ���
  li $a2,512	 #��ȡ512��byte
  li $v0,14	 #14Ϊ��ȡ�ļ��� syscall��� 
  syscall
  	 	
  		#��ʱ$a0�е��ļ�������û�䣬ֱ�ӵ��� syscall 16�ر���
  li $v0,16	 #16Ϊ�ر��ļ��� syscall���
  syscall
 
  la $a0,in_buff
  lw $a2,0($a0)
li,$a1,0
addi,$a1,$a1,1

jal Quicksort
  
#����ļ�
lw $t1,0($a0)
sll $t1,$t1,2
la $a0, output_file #output_file��һ���ַ��� 
   li $a1, 1 #flag 0Ϊ��ȡ 1Ϊд�� 7 li $a2, 0 #mode is ignored ����Ϊ0�Ϳ����� 
    li $v0, 13 #13Ϊ���ļ��� syscall��� 
   syscall #����򿪳ɹ� �� �ļ����������ص�$v0�� 
   
    move $a0,$v0 #���ļ����������뵽$a0�� 
     la $a1, in_buff #in_buffΪ�����ݴ���
     addi $a1,$a1,4
     move $a2,$t1 #д��512��byte
      li $v0, 15 #15Ϊд���ļ��� syscall���
       syscall
       	 #��ʱ$a0�е��ļ�������û�� ,ֱ�ӵ��� syscall 16�ر���
       	  li $v0 16 #16Ϊ�ر��ļ��� syscall��� 
       	  syscall

         
  li $v0,10
  syscall
   Quicksort: 
#ѹջ
addi $sp,$sp,-20

sw $ra,8($sp)
sw $a1,0($sp)
sw $a2,4($sp)
#ѹջ���
la $s0,($a1)
la $s1,($a2)
add $s2,$s1,$s0
sra $s2,$s2,1
move $t0,$s2
sll $t0,$t0,2
add $t3,$a0,$t0
lw $s2,0($t3)
#����ѭ��  
loop1:bgt $s0,$s1,exit3
#t0��ʾλ����
loop2: sll $t0,$s0,2
add $t3,$a0,$t0
lw $s3,0($t3) #s3Ϊarr��i��
bge $s3,$s2,loop3
addi $s0,$s0,1
j loop2
loop3:sll $t0,$s1,2
add $t3,$a0,$t0
lw $s4,0($t3) #s4Ϊarr��j��
ble $s4,$s2,judge #����һ���ж�
addi $s1,$s1,-1
j loop3
#if��һ��

judge: bgt $s0,$s1,endjudge#push1�ǵݹ�����
sll $t3,$s0,2
sll $t4,$s1,2
add $t3,$a0,$t3
add $t4,$a0,$t4
sw  $s3,0($t4)
sw  $s4,0($t3)
addi $s0,$s0,1
addi $s1,$s1,-1
endjudge:
j loop1
 
   exit3:
 push1:sw $s0,12($sp)
sw $s1,16($sp)
 bge $a1,$s1,push2
 move $a2,$s1
 jal Quicksort
 lw $a1,0($sp)
 lw $a2,4($sp)
 lw $ra,8($sp)
 lw $s0,12($sp)
 lw $s1,16($sp)


 
 
 push2:bge $s0,$a2,endterm
 move $a1,$s0
 jal Quicksort
 
 endterm:
lw $a1,0($sp)
 lw $a2,4($sp)
 lw $ra,8($sp)
 lw $s0,12($sp)
 lw $s1,16($sp)

 addi $sp,$sp,20
 jr $ra
       	  
 
 


  
