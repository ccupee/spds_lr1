##andi, lui, srl и nor.
.text

start: 
	move    $v0, $0
counter:   
	addiu   $v0, $v0, 1
	andi    $v0, $v0, 1
	nor	    $v0, $v0, $v0
	srl	    $v0, $v0, 1
	beqz    $0,  counter