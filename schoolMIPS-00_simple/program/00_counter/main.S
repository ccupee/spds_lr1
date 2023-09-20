.text
	li $t0, 10 # $t0 - число
	li $t1, 7 # $t1 - степень
	
	move $t2, $t0 # $t2 - для хранения промежуточного результата
	move $t3, $t0 # $t3 - для хранения того, что прибавляется
	
	li $t5, 1 # $t5 - счетчик внешнего цикла
	outercycle:
		addiu $t5, $t5, 1
		li $t4, 1 # $t4 - счетчик внутреннего цикла
		innercycle:
			addiu $t4, $t4, 1
			addu $t2, $t2, $t3
			bne $t4, $t0, innercycle
		move $t3, $t2
		bne $t5, $t1, outercycle
		
	move $v0, $t2
	
	forevercycle:
		beqz $0, forevercycle