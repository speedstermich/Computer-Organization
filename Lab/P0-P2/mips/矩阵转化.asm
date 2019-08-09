.data
space:.asciiz " "
huanhang:.asciiz "\n"
.text 

li $v0,5
syscall
add $s0,$0,$v0  #输入行数 存在$s0中
li $v0,5                                                                                           #输入行数和列数
syscall
add $s4,$0,$v0  #输入列数 存在$s4中

sll $s7,$s4,2
addi $s6,$0,4                                                                                     #  $s7  $s6

mult $s0,$s4
mflo $s0      #一共要输入多少数 存在$s0中                                                            # $s0  $s1
addi $s1,$0,0  #将$s1寄存器清空 在之后用于计数

for_1:
beq $s0,$0,for_2  #若$s0变为0了 则不再输入了
li $v0,5
syscall    
addi $sp,$sp,-4                                                                                   #输入矩阵中的数
sw $v0,0($sp)
addi $s1,$s1,4
addi $s0,$s0,-1  #每输入一个数 $s0-1
j for_1         #循环输入矩阵中的数 并存在栈中


for_2:
beq $s1,$0,finish  #若$s1减到0了 则结束程序
lw $t0,0($sp)  #从栈底开始取数 存入$t0中
bne $t0,$0,print   #若得到的这个数不为0 则跳转到print
addi $sp,$sp,4
addi $s1,$s1,-4  #若得到的数为0 则把$s1-4 $sp+4
j  for_2

print:
add $t2,$s1,$0  #将$s1中的数临时保存在$t2中

div $t2,$s7
mfhi $t3      #余数存在$t3中
div $t3,$s6  #该余数再除以4                                                                           #得到列数
mflo $t3     #得到列数（不完整）

addi $t2,$t2,-1
div $t2,$s7   #该数-1后/4*列数   商在lo中                                                              #得到行数
mflo $t1    #将商存在$t1中
addi $t1,$t1,1  #此时的$t1中储存的是第几行

li $v0,1
move $a0, $t1
syscall    #将行数输出                                                                                #输出行数和空格
la $a0,space
li $v0,4
syscall    #输出空格

beq $t3,$0,case0
li $v0,1
move $a0,$t3
syscall
la $a0,space
li $v0,4
syscall     #如果$t3中的值不为0 则其为列数 直接输出
j  continuecoding

case0:
add $t3,$0,$s4 
li $v0,1
move $a0,$t3
syscall
la $a0,space
li $v0,4
syscall    #如果$t3中的值为0  则列数为输入的列数 输出

continuecoding:
li $v0,1
move $a0,$t0                                                                                       #输出矩阵中的值
syscall   #输出矩阵中的数值

la $a0,huanhang
li $v0,4
syscall
addi $sp,$sp,4
addi $s1,$s1,-4  #若得到的数不为0 在经过处理后 把$s1和$sp分别+4
j  for_2

finish:
li $v0,10                                                                                              #结束程序
syscall






