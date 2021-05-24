//to arrange an array of ‘N’ bytes of data in ascending order.

        org 00h
	    mov r2, #0ah      ; counter
again1: mov r1, #0ah
		dec r1
		mov r0, #30h
again2: mov a, @r0
		inc r0
		mov b, @r0
		cjne a, b, next1
next1:  jc next2
		xch a,b
		mov @r0, b
		dec r0
		mov @r0, a
		inc r0
next2:  djnz r1, again2
		djnz r2, again1
		end
		