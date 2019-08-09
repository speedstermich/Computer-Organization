.text
   li $v0,5
   syscall
   move $a1,$v0        #a1----n
   li $v0,5
   syscall
   move $a2,$v0        #a2----p
   li $v0,5
   syscall
   move $a3,$v0        #a3----q
##################################################
  addi $s7,$sp,0       #str首地址
  sll $t0,$a1,2
  sub $s6,$s7,$t0      #str1首地址
  sll $t0,$a2,2
  sub $s5,$s6,$t0      #str2首地址
##################################################
  addi $t0,$0,0      #t0---i=0
str:
  beq $t0,$a1,pre_str1
  li $v0,12
  syscall
  move $t1,$v0       #t1---c
  sll $t2,$t0,2
  sub $t2,$s7,$t2
  sw $t1,0($t2)     #skr[i]=c
  addi $t0,$t0,1
  j str
###################################################
pre_str1:
  addi $t0,$0,0    #t0----i=0
str1:
  beq $t0,$a2,pre_str2
  li $v0,12
  syscall
  move $t1,$v0       #t1---c
  sll $t2,$t0,2
  sub $t2,$s6,$t2
  sw $t1,0($t2)     #skr1[i]=c
  addi $t0,$t0,1
  j str1
###################################################
pre_str2:
  addi $t0,$0,0     #t0----i=0
str2:
  beq $t0,$a3,end_build
  li $v0,12
  syscall
  move $t1,$v0     #t1---c
  sll $t2,$t0,2
  sub $t2,$s5,$t2
  sw $t1,0($t2)     #skr2[i]=c
  addi $t0,$t0,1
  j str2
###################################################
end_build:
  addi $t9,$0,1    #t9---num=1
####################################################
  bne $a2,$0,judge   #p==0?
  
  addi $t0,$0,0     #t0---i=0
 loop:              #p==0
  beq $t0,$a1,finish
  sll $t2,$t0,2
  sub $t2,$s7,$t2
  lw $t3,0($t2)
  li $v0,11
  move $a0,$t3
  syscall          #printf("%c",skr[i]);
  addi $t0,$t0,1    #i++
  j loop
  
judge:
 addi $t0,$0,0    #t0---i=0
   loop1:
     beq $t0,$a1,finish
     
     sll $t4,$t0,2
     sub $t4,$s7,$t4
     lw $t4,0($t4)     #t4---skr[i]
     lw $t5,0($s6)     #t5---skr1[0]
     bne $t4,$t5,print
     ################skr[i]==skr1[0]######################
         addi $t1,$0,1   #t1----j=1       
         loop2:
           beq $t1,$a2,judgenum
              add $t6,$t0,$t1    #t6----i+j
             bge $t6,$a1,jplus
              sll $t4,$t6,2
              sub $t4,$s7,$t4
              lw $t4,0($t4)    #t4---skr[i+j]
              sll $t5,$t1,2
              sub $t5,$s6,$t5
              lw $t5,0($t5)    #t5----skr1[j]
             bne $t4,$t5,jplus
              addi $t9,$t9,1    #num++
           jplus:
             addi $t1,$t1,1  #j++
             j loop2
    ############################################################    
         judgenum:
          bne $t9,$a2,else
          ####################num==p###################
            addi $t2,$0,0     #t2----k=0
            loop3:
              beq $t2,$a3,abouti
                sll $t4,$t2,2
                sub $t4,$s5,$t4
                lw $t4,0($t4)   #t4---skr2[k]
                li $v0,11
                move $a0,$t4
                syscall        #printf("%c",skr2[k]);
                addi $t2,$t2,1   #k++
                j loop3
               abouti:
                 add $t0,$t0,$a2    #i=i+p
                 subi $t0,$t0,1     #i--
                 j backnum
             #######num<p#################
            else:
                 sll $t5,$t0,2
                 sub $t5,$s7,$t5
                 lw $t5,0($t5)
                 li $v0,11
                 move $a0,$t5
                 syscall        #printf("%c",skr[i]);
                 j backnum
    ##################skr[i]!=skr1[0]#####################   
         print:         
          li $v0,11
          move $a0,$t4
          syscall      #printf("%c",skr[i])
########################################
   backnum:
   addi $t9,$0,1    #num=1
   addi $t0,$t0,1   #i++
   j loop1
#################################################
finish:
 li $v0,10
 syscall
  



  