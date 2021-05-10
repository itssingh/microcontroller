// Read a byte from P3. 
// Read P1. Check the 2-bits on the LSB side.
// If "00" - Check if the byte(read from P3) is divisible by 2
// If "01" - Check if the byte(read from P3) is divisible by 3
// If "10" - Check if the byte(read from P3) is divisible by 4
// If "11" - Check if the byte(read from P3) is divisible by 5
// If divisible, write "FF" to P3 else write "00".
 
mov p1, #0ffh
mov p3,#0ffh
next: 	mov 20h,p3		//storing p3
		mov a,p1
		anl a,#03h
		//doing left roatate 4 times
		rl a
		rl a
		rl a
		rl a
//this is done in order to provide spacing between different conditions
//gives 16 bytes of code space
 
mov dptr,#code_1
jmp @a+dptr
 
org 0050h 	//director for compiler to put the code at this location
code_1:  mov a,p3
			rrc a
			jc not_div1
			mov p3,#0ffh
			sjmp next
			not_div1: mov p3, #00h
						sjmp next
//0050h+10h=0060h
org	0060h
code_2:  mov a,p3
			mov b,#03h
			div ab
			jc not_div2
			mov p3,#0ffh
			sjmp next
			not_div2: mov p3, #00h
						sjmp next
//0050H+20h
org 0070h
code_3:  mov a,p3
			mov b,#04h
			div ab
			jc not_div3
			mov p3,#0ffh
			sjmp next
			not_div3: mov p3, #00h
						sjmp next
 
//0050H+30h
org 0080h
code_4:  mov a,p3
			mov b,#05h
			div ab
			mov a,b
			jnz not_div4
			mov p3,#0ffh
			sjmp next
			not_div4: mov p3, #00h
						sjmp next
 
end
