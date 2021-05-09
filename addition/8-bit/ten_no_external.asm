// Add a series of 10 numbers
// each number is 8-bit
// The series begins from location 2000H in the external RAM
// Store the result at locations 3000 and 3001H

org 00h
	mov dptr, #2000h
	mov r0, #0Ah
	mov b, #00h
	mov r1,#00h
	clr a
sum:mov r1, a
	movx a, @DPTR
	add a, r1
	jnc nc
	inc b
nc:	inc dptr
	djnz r0, sum
	mov dptr, #3000h
	movx @dptr, a
	inc dptr
	mov a, b 
	movx @dptr, a
end