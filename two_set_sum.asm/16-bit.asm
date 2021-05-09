// Two sets of N numbers
// Each number is 2 byte
// N is stored in 10H
// The first set of numbers are stored starting from 20H, the lower byte first
// The second set of numbers are stored starting from 40H, lower byte first
// pickup the first number from the first set and add it with the first number in the second set 
// store it from the starting address 60H
// Like wise add each of the corresponding numbers on each of the sets and store the corresponding sum in the space starting from 60H, the lower byte sum first

org 00h
	mov r0, #10h
	mov a, @r0
	mov b, a
	mov r0, #20h
	mov r1, #40h
	SETB PSW.3
	mov r0, #60h
	clr psw.3
	clr a
sum:clr c
	mov a, @r0
	add a, @r1
	inc r0
	inc r1
	setb psw.3
	mov @r0, a
	inc r0
	clr psw.3
	mov a, @r0
	addc a, @r1
	inc r0
	inc r1
	setb psw.3
	mov @r0, a
	inc r0
	clr psw.3
	djnz b, sum
end