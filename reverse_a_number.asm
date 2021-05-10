// 21H has a byte
// Reverse the number and store it in 21H using boolean instructions
// For example, if 4EH is given, reverse  this to store 72H
 
org 00h
	mov r0, #21h
	mov a, @r0
	mov b, #00h 
	mov r1, #8h	// counter
	mov r2, a
	clr c //flush carry flag
for:	mov a, r2
		rrc a 
		mov r2,a
		mov a,b
		rlc a
		mov b,a
		djnz r1, for 
		mov @r0, a
end
