// transfer a block of 10 bytes from internal RAM locations 20H to external RAM Location 2000H
// use DPTR (16-bit) to access external RAM address

ORG 0000H
	mov r0, #20H
	mov DPTR, #2000H
	mov b, #0AH
	for:mov a, @r0
		movx @DPTR, a
		inc r0
		inc DPTR
		djnz b, for
end