.globl main
.data
sortarray:.space 40
seprate: .asciiz " "
.text
# $t0: temp
# $t4: i
# $t6: j
# $t8: k
# $t5: size of aortarray
main:
    addi $t5, $zero, 10
    addi $t4, $zero, 9
    addi $t8, $zero, 0
    la $t1, sortarray
loop:
    li $v0 5
    syscall
    sw $v0, 0($t1)
    addi $t8, $t8, 1
    addi $t1, $t1, 4
    sub $t7, $t5, $t8
    bgtz $t7, loop

loop1:
    la $t1, sortarray
    addi $t6, $zero, 0
loop2:
    lw $t0, 0($t1) #t0 = array[j]
    lw $t7, 4($t1)    # array[j+1]
    sub $t2, $t7, $t0
    bgtz $t2, increment
    sw $t7, 0($t1)
    sw $t0, 4($t1)

    increment:
        addi $t6, $t6, 1 #j ++
        addi $t1, $t1, 4 #next entrry
        sub $t2, $t4, $t6 #t2 = i-j
        bgtz $t2, loop2 #if j < i ,continue to loop2

    addiu $t4, $t4, -1  #i--
    lw $a0, 0($t1)   #'max' entry each circle
    li $v0, 1 # output int
    syscall
    la $a0, seprate
    li $v0, 4 # output char
    syscall
    bne $t4, $zero, loop1

    la $t1, sortarray
    lw $a0, 0($t1)
    li $v0, 1
    syscall

    li $v0, 10
    syscall