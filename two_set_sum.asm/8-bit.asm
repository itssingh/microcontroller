// Two sets of N numbers are given
// N is stored in 10H
// The first set of numbers are stored starting from 20H
// The second set of numbers are stored starting from 40H
// pickup the first number from the first set and add it with the first number in the second set 
// Like wise add each of the corresponding numbers on each of the sets 
// store the corresponding sum in the space starting from 60H

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
sum:mov a, @r0
	add a, @r1
	inc r0
	inc r1
	setb psw.3
	mov @r0, a
	inc r0
	clr a
	clr psw.3
	djnz b, sum
end
		