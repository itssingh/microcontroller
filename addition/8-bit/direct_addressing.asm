// add two 8-bit numbers using direct addressing 
// using Add a, direct

ORG 0000H
	mov a, 50H //direct addressing 
	// data at 50H RAM address is moved to a
	add a, 51H 
	// data at 51H RAM address is added with data in a and result is stored back in a
	mov 52H, a 
	// data in a is moved to RAM address 52H
end
