// 16-bit subtraction
// lower byte of minuend is present at 50H and upper byte at 51H
// lower byte of subtrahend is present at 50H and upper byte at 51H
// store lower byte of result at 55H and upper byte at 56H

ORG 0000H
	clr c
	// clear carry flag as initially there is no borrow
	mov 50H, #1H
	// immediate data transfer will mov 1H to RAM address 50H
	mov 51H, #5H
	mov 52H, #2H
	mov 53H, #3H
	mov a, 50H
	// lower byte of minuend is moved to accumulator 
	subb a, 52H 
	// lower byte of subtrahend is subtracted from lower byte of minuend 
	mov 55H, a
	// lower byte of result is stored at 55H
	mov a, 51H
	// upper byte of minuend is moved to accumulator 
	subb a, 53H 
	// upper byte of subtrahend is subtracted from upper byte of minuend
	// a = a - c - data(53H)
	// here carrry flag will contain the borrow of lower byte subtraction
	mov 56H, a
	// lower byte of result is stored at 55H
end