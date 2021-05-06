// add two 8-bit numbers using resistor addressing mode
// using ADD A, Rn

ORG 0000H
	mov a, r1
	// data in r1 is moved to a; resistor addressing mode
	add a, r5
	// data in r5 is addded with data in a and result is moved back to a
	mov 50H, a
	// data in a is copied to RAM address D: 0x50
end
