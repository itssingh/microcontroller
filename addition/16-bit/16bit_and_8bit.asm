// a 16 bit number is present at internal RAM 50H (lower byte) and 51H (upper byte)
// an 8 bit number is present at internal RAM 52H
// add these two numbers and store result from RAM address starting with 55H
ORG 0000H
	clr c
	mov a, 50H 
	add a, 52H
	mov 55H, a
	mov a, 51H
	addc a, #00H
	mov 56H, a
end
