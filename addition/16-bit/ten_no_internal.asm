// add a series of 10 numbers
// series begins from location 20H in the internal RAM
// result will be 16-bit
// store the result at locations 30H(lower bye) and 31H(higher byte)

ORG 0000H
	mov r0, #20H
	mov r1, #0AH
	// counter 
	mov b, #00H
	// stores higher byte of result
	clr a
	// stores lower byte of result
for:add a,@r0
	inc r0
	jnc nc
	inc b
nc:	djnz r1,for
	mov 30H,a	
	mov 31H,b
end
	