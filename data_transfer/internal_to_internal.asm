// transfer blocks of 10 bytes from RAM location 20H to 30H

ORG 0000H
	mov r0, #20H 
	mov r1, #30H
	mov r2, #0AH
	for:mov a, @r0
		mov @r1,a
		inc r0 
		inc r1
		djnz r2, for
end