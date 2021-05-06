// A 16 bit number is present at internal RAM 50H (lower byte) and 51H (upper byte)
// other 16 bit number is present at internal RAM 52H (lower byte) and 53H (upper byte)
// add these two numbers and store result from RAM address starting with 55H

ORG 0000H
	clr c
	mov a, 50H 
	add a, 52H
	mov 55H, a
	mov a, 51H
	addc a, 53H
	mov 56H, a
end