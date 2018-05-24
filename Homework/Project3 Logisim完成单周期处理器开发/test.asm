ori $1,$0,10			#$1 = 'd10,ps:$0 = 0 forver

ori $2,$0,11			#$2 = 'd11

addu $3,$0,$1			#$3 = $1

addu $4,$0,$2			#$4 = $2

subu $5,$1,$0			#$5 = $1

subu $6,$2,$0			#$6 = $2

addu $7,$3,$4			#$7 = $3 + $4

subu $8,$4,$3			#$8 = $4 - $3

lui $9,10			#$5 = sign_ext('d10)<<16

sw $1,12($0)			#save the content of $1 into the address 0f 'd12 in DM

lw $10,12($0)			#load the data at the address 'd12 in DM to $10 


ori $11,$0,1			#$11 = 'd1

ori $12,$0,10		        #$12 = 'd10

ori $13,$0,0			#$13 = 'd0

ori $14,$0,0			#$14 = 'd0

sum_loop:addu $13,$13,$11	#$13 = $13 + 1
	 
addu $14,$14,$13	#$14 = $14 + $13
	 
subu $12,$12,$11	#$12 = $12 - 1
	 
beq $12,$0,go_on	#if $12 == 0,then break from the sum_loop
	 
beq $0,$0,sum_loop	#else,continue the sum_loop

go_on:sw $14,16($0)		#save the final result of $14(sum(1:10)) to DM at the address of('d16)
