// to add two multi-byte numbers.

		org 00h
		clr c
		mov r2, 20h       ; move into r2 the number of bytes in each number
		mov r0, #40h
		mov r1, #50h
		setb psw.3        ; switch to bank 1
		mov r0, #60h      ; use r0 of bank 1 as pointer to the result
		clr psw.3         ; return to bank 0
back:   mov a, @r0
		addc a, @r1
		inc r0
		inc r1
		setb psw.3
		mov @r0, a
		inc r0
		clr psw.3
		djnz r2, back 