#读取文件
#工作状态：5月8日凌晨，写完了递归之前的部分
.data 
  in_buff:.space 512
  out_buff: .space 512 
  input_file:.asciiz "./a.in"
   output_file: .asciiz "./a.out" 
 .text
  la $a0,input_file #input_file 是一个字符串 
  li $a1,0	 #flag 0为读取 1为写入 
  li $a2,0	 #mode is ignored 设置为0就可以了 
  li $v0,13	 #13为打开文件的 syscall编号
  syscall	 #如果打开成功 ， 文件描述符返回到$v0中 
  
  move $a0,$v0	 #将文件描述符载入到$a0中
  la $a1,in_buff	 #in_buff为数据暂存区
  li $a2,512	 #读取512个byte
  li $v0,14	 #14为读取文件的 syscall编号 
  syscall
  	 	
  		#此时$a0中的文件描述符没变，直接调用 syscall 16关闭它
  li $v0,16	 #16为关闭文件的 syscall编号
  syscall
 
  la $a0,in_buff
  lw $a2,0($a0)
li,$a1,0
addi,$a1,$a1,1

jal Quicksort
  
#输出文件
lw $t1,0($a0)
sll $t1,$t1,2
la $a0, output_file #output_file是一个字符串 
   li $a1, 1 #flag 0为读取 1为写入 7 li $a2, 0 #mode is ignored 设置为0就可以了 
    li $v0, 13 #13为打开文件的 syscall编号 
   syscall #如果打开成功 ， 文件描述符返回到$v0中 
   
    move $a0,$v0 #将文件描述符载入到$a0中 
     la $a1, in_buff #in_buff为数据暂存区
     addi $a1,$a1,4
     move $a2,$t1 #写入512个byte
      li $v0, 15 #15为写入文件的 syscall编号
       syscall
       	 #此时$a0中的文件描述符没变 ,直接调用 syscall 16关闭它
       	  li $v0 16 #16为关闭文件的 syscall编号 
       	  syscall

         
  li $v0,10
  syscall
   Quicksort: 
#压栈
addi $sp,$sp,-20

sw $ra,8($sp)
sw $a1,0($sp)
sw $a2,4($sp)
#压栈完成
la $s0,($a1)
la $s1,($a2)
add $s2,$s1,$s0
sra $s2,$s2,1
move $t0,$s2
sll $t0,$t0,2
add $t3,$a0,$t0
lw $s2,0($t3)
#三层循环  
loop1:bgt $s0,$s1,exit3
#t0表示位移量
loop2: sll $t0,$s0,2
add $t3,$a0,$t0
lw $s3,0($t3) #s3为arr【i】
bge $s3,$s2,loop3
addi $s0,$s0,1
j loop2
loop3:sll $t0,$s1,2
add $t3,$a0,$t0
lw $s4,0($t3) #s4为arr【j】
ble $s4,$s2,judge #跳下一步判断
addi $s1,$s1,-1
j loop3
#if那一段

judge: bgt $s0,$s1,endjudge#push1是递归那里
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
       	  
 
 


  
