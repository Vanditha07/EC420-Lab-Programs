//to subtract two BCD numbers

		org 00h
		clr c
		mov r0, 30h
		mov r1, 31h
		mov r3, #00h
		mov a, r0
		subb a, r1
		jnc next
		cpl a
		inc a
next:   da a
        mov r3, a
		end