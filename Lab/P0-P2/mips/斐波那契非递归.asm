.text
  li $v0,5
  syscall
  move $s0,$v0      #s0----n
#############################################
  addi $t0,$0,0     #t0---a=0
  addi $t1,$0,1     #t1---b=1
  addi $t8,$0,0     #t8---result=0
  bne $s0,$t0,elseif
    li $v0,1
    move $a0,$t0
    syscall
    j return
    elseif:
       bne $s0,$t1,else
       li $v0,1
       move $a0,$t1
       syscall
       j return
       else:
         addi $t9,$0,2   #t9---i
         loop:
            bgt $t9,$s0,print
            add $t8,$t0,$t1
            move $t0,$t1
            move $t1,$t8
            addi $t9,$t9,1   #i++
            j loop
            print:
              li $v0,1
              move $a0,$t8
              syscall
      return:
       li $v0,10
       syscall
            
            
            
            
            