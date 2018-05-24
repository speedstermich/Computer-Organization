.data
array : .word 0:1000 

.text
main:
li $v0,5 		#input array space
syscall 		#system call
move $t0,$v0 		# store array size

move $t2,$zero 		#iterator (Value of i)

input:
mflo $s0
add $s0,$s0,$t2 	#iterator $s0 += iterator
sll $s0,$s0,2 		#shift left ($s0 += 4)
li $v0,5  		#syscall for integer
syscall 

sw $v0,array($s0) 	#store string in array
addi $t2,$t2,1 		#add iterator by 1(i++) 
bne $t2,$t0,input 	#if i not equal array size

move $s1,$s0 		#value of j
move $s0,$zero 		#value of i

sort:
