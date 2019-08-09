.text
 li $v0,5
 syscall
 move $a1,$v0     #a1----n
 li $v0,5
 syscall
 move $a2,$v0     #a2----m
 ##############################################
 addi $s7,$sp,0   #s7-----tempMatrix[][]首地址
 mult $a2,$a2
 mflo $a3
 sll $a3,$a3,2
 sub $s6,$s7,$a3  #s6---resultMatrix[][]首地址
 ###############################################
 addi $t0,$0,0   #t0---i=0
 loop1:
   beq $t0,$a2,powerTempMatrix
   addi $t1,$0,0   #t1----j=0
      loop2:
      beq $t1,$a2,end_loop2
      li $v0,5
      syscall
      move $a3,$v0
      mult $t0,$a2
      mflo $t5
      add $t5,$t5,$t1
      sll $t5,$t5,2
      sub $t5,$s7,$t5
      sw $a3,0($t5)     #tempMatrix[i][j]=$v0
      addi $t1,$t1,1   #j++
      j loop2
      end_loop2:
        addi $t0,$t0,1  #i++
        j loop1
   ###################################################
powerTempMatrix:
##################################################
   addi $t9,$0,0   #t9---i=0(power中的i)
   power_loop:
     beq $t9,$a1,print   #i==n?
     sqrtTemMatrix:
        addi $t0,$0,0   #t0----i=0
        loopi:
          beq $t0,$a2,replaceTempMatrix
          addi $t1,$0,0   #t1----j=0
          loopj:
            beq $t1,$a2,end_loopj
            mult $t0,$a2
            mflo $t5
            add $t5,$t5,$t1
            sll $t5,$t5,2
            sub $t5,$s6,$t5
            sw $0,0($t5)   #resultMatrix[i][j]=0;
            
            addi $t2,$0,0    #t2----k=0
            loopk:
              beq $t2,$a2,end_loopk
              mult $t0,$a2
              mflo $t4
              add $t4,$t4,$t2
              sll $t4,$t4,2
              sub $t4,$s7,$t4
              lw $t4,0($t4)   #t4---tempMatrix[i][k]
              mult $t2,$a2
              mflo $t5
              add $t5,$t5,$t1
              sll $t5,$t5,2
              sub $t5,$s7,$t5
              lw $t5,0($t5)  #t5---tempMatrix[k][j]
              mult $t4,$t5
              mflo $t3      #t3---tempMatrix[i][k]*tempMatrix[k][j]
              mult $t0,$a2
              mflo $t4
              add $t4,$t4,$t1
              sll $t4,$t4,2
              sub $t4,$s6,$t4
              lw $t8,0($t4)
              add $t3,$t3,$t8
              sw $t3,0($t4)  #resultMatrix[i][j]=tempMatrix[i][k]*tempMatrix[k][j];
              addi $t2,$t2,1  #k++
              j loopk
              end_loopk:
              addi $t1,$t1,1  #j++
              j loopj
              end_loopj:
              addi $t0,$t0,1  #i++
              j loopi
#######################################################
replaceTempMatrix:
  addi $t0,$0,0  #t0----i=0
  loop_i:
    beq $t0,$a2,end1
    addi $t1,$0,0   #t1---j=0
    loop_j:
      beq $t1,$a2,end2
      mult $t0,$a2
      mflo $t4
      add $t4,$t4,$t1
      sll $t4,$t4,2
      sub $t4,$s6,$t4
      lw $t4,0($t4)   #resultMatrix[i][j]
      mult $t0,$a2
      mflo $t5
      add $t5,$t5,$t1
      sll $t5,$t5,2
      sub $t5,$s7,$t5
      sw $t4,0($t5)  #tempMatrix[i][j]=resultMatrix[i][j];
      addi $t1,$t1,1   #j++
      j loop_j
      end2:
      addi $t0,$t0,1  #i++
      j loop_i
  end1:
  addi $t9,$t9,1  #i++
  j power_loop
#######################################################
print:
 addi $t0,$0,0     #t0----i=0
 loop3:
   beq $t0,$a2,return
     addi $t1,$0,0   #t1---j=0
     loop4:
     beq $t1,$a2,end_loop4
        mult $t0,$a2
        mflo $t5
        add $t5,$t5,$t1
        sll $t5,$t5,2
        sub $t5,$s7,$t5
        lw $t5,0($t5)    #t5---tempMatrix[i][j]
        li $v0,1
        move $a0,$t5
        syscall
        li $v0,11
        la $a0,' '
        syscall
        addi $t1,$t1,1  #j++
        j loop4
       end_loop4:
        li $v0,11
        la $a0,'\n'
        syscall
        addi $t0,$t0,1  #i++
        j loop3
############################################
 return:
  li $v0,10
  syscall
 
      
      
