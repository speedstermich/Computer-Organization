.data
yes:.asciiz"1"
no:.asciiz"0"
.text
  li $v0, 5
  syscall   #输入一个整数 这个整数储存在$v0中
  add $s0,$v0,$0  #将这个数储存在$s0中
 
  addi $s1,$0,4
  addi $s2,$0,100
  addi $s3,$0,400   #4、100、400分别放入三个寄存器中
  
  div $s0,$s1  #输入的数除以4
  mfhi $t0     #得到余数
  beq $t0,$0,else_1_  #余数为0跳转
  la $a0,no
  li $v0,4
  syscall    
  li $v0,10
  syscall      #无法整除4时 输出0 结束程序
else_1_: #此时是整除4的情况下
  div $s0,$s2   #输入的数除以100
  mfhi $t0      #得到余数
  beq $t0,$0,else_2_  #余数为0跳转
  la $a0,yes  #余数不为0时 输出1
  li $v0,4
  syscall
  li $v0,10
  syscall
else_2_:    #输入的数既整除4又整除100的情况
  div $s0,$s3   #输入的数除以400
  mfhi $t0      #得到余数
  beq $t0,$0,else_3_  #余数为0时跳转
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
  
