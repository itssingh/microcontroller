// two bcd numbers are at 50H and 51H
// return sum of these at 55H

ORG 00H
	mov a, 50H
	add a, 51H
	da a
	mov 55H, a
end