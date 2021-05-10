 // Read an 8-bit number from Port-1
// Call a subroutine to find if the binary number is a palindrome or not
// If yes, write FFH to Port 3 else write 00H to Port 3
 
org 00h
	mov p1, #0ffh //given input number to check 
	mov r0, p1
	mov b, #00h // a null number to hold lower nibble of the given number
	mov r1, #4h	// counter 
	clr c //flush carry flag
for:	mov a, r0 
		rrc a 
		mov r0,a
		mov a,b
		rlc a
		mov b,a
		djnz r1, for 
		xrl a, r0 
		// given number has bits A7A6A5A4 A3A2A1A0
		// and b was 0000 0000
		// after rotating four times acc will be 0000 A7A6A5A4
		// and b would be 0000 A0A1A2A3
		// so if it is a palindrome then xor will result zero
		jz palindrome
		mov p3, #00h
		jmp terminate
palindrome: mov p3, #0ffh
terminate: 	mov a, p3
			mov 50h, a //move output at 50H location to see if code is working properly
end
