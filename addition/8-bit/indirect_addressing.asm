// add two 8-bit numbers using resistor indirect addressing mode
// Only R0 and R1 are allowed in Indirect Addressing Mode.
// using ADD A, @Ri ; 1 byte instruction

ORG 0000H
	mov a, @r0
	// mov data at RAM address present in r0 resistor 
	// r0 <-- 50H 
	// 50h <-- 5H
	// a= 5H
	add a, @r1
	// data at RAM address present at r1 is added with data in a and result is stored back in a
	// r1 <-- 51H
	// 51H <-- 4H
	// a= a+ 4H = 9H
	mov @r1, a
	// data in a is moved to RAM address present in r1
	// 51H <-- 9H
end
