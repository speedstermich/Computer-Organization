.data
A:.asciiz "A"
B:.asciiz "B"
C:.asciiz "C"
to:.asciiz "to"
###########################################
.text
  li $v0,5
  syscall
  move $s1,$v0      #s1---n
###########################################
  la $a1,A              #a1----front
  la $a2,B              #a2----mid
  la $a3,C              #a3----end
  move $s0,$s1          #s0---n
  
  jal Han
  li $v0,10
  syscall
  
 Han:
    addi $t0,$0,1   #t0---1
    bne $t0,$s0,else
    li $v0,4
    move $a0,$a1
    syscall
    li $v0,11
    la $a0,' '
    syscall
    li $v0,4
    la $a0,to
    syscall
    li $v0,11
    la $a0,' '
    syscall
    li $v0,4
    move $a0,$a3
    syscall
    li $v0,11
    la $a0,'\n'
    syscall
    jr $ra
    ##################################
    else:
      addi $sp,$sp,-20
      sw $ra,0($sp)
      sw $s0,4($sp)
      sw $a1,8($sp)
      sw $a2,12($sp)
      sw $a3,16($sp)
     move $t4,$s0
      move $t1,$a1
      move $t2,$a2
      move $t3,$a3
      sub $s0,$t4,1
      move $a2,$t3
      move $a3,$t2
      jal Han
      lw $ra,0($sp)
      lw $s0,4($sp)
      lw $a1,8($sp)
      lw $a2,12($sp)
      lw $a3,16($sp)
      addi $sp,$sp,20
    li $v0,4
    move $a0,$a1
    syscall
    li $v0,11
    la $a0,' '
    syscall
    li $v0,4
    la $a0,to
    syscall
    li $v0,11
    la $a0,' '
    syscall
    li $v0,4
    move $a0,$a3
    syscall
    li $v0,11
    la $a0,'\n'
    syscall
    #######################################################
      addi $sp,$sp,-20
      sw $ra,0($sp)
      sw $s0,4($sp)
      sw $a1,8($sp)
      sw $a2,12($sp)
      sw $a3,16($sp)
      addi $s0,$s0,-1
      move $t1,$a1
      move $a1,$a2
      move $a2,$t1
      jal Han
      lw $ra,0($sp)
      lw $s0,4($sp)
      lw $a1,8($sp)
      lw $a2,12($sp)
      lw $a3,16($sp)
      addi $sp,$sp,20
      jr $ra
  

    
    
    
    
    
    
    
    
    
