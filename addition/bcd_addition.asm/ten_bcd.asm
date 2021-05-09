// add a series of 10 bcd numbers
// series begins from location 20H in the internal RAM
// result will be a bcd number
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
	da a
	inc r0
	jnc nc
	inc b
	mov r2, a
	mov a,b
	da a
	mov b, a
	mov a, r2
nc: djnz r1,for
	mov 30H,a	
	mov 31H,b
end