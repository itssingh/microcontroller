// N numbers are given starting with address 50H
// N is given at 20H
// Check if each of them are divisible by 3
// If yes, overwrite the number with FFH else with 00H

org 00h
	mov r1, #20h
	mov r0, #50h
	mov a, @r1
	mov r2, a
for:clr a
	mov b, #3h
	mov a, @r0
	clr c
	div ab 
	mov a,b
	subb a, #01h
	jc divisible
	mov @r0, #00h
	jmp non_div
divisible: mov @r0, #0ffh
non_div: inc r0
		 djnz r2, for
end
