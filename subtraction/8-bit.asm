// subtract two 8-bit numbers
// minuend at location 50H
// subtracted at location 51H
// difference at 52H

ORG 0000H
	clr c
	mov 50H, #8H
	//immediate addressing mode data transfer; 8H is moved internal RAM location 50H
	mov 51H, #2H
	mov a, 50H
	// data ata 50H is moved to accumulator
	subb a, 51H 
	// A = A - C - (51)
	//This instruction sets the carry flag if a borrow is required for bit 7 of the result. If no borrow is required, the carry flag is cleared.
	mov 52H, a
	// data in a is moved to internal RAM address 52H
end