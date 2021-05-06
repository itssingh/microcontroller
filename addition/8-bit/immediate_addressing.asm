// add two 8-bit numbers 
// using ADD A, #immediate instuction

ORG 0000H
	mov a, #3H // Immediate addressing mode
	add a, #5H // a = 3H + 5H 
	mov 50H, a // D : 0 x 50 = 8
end
