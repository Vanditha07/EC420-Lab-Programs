//to check whether the given byte of data is palindrome. If ‘yes’ send 00 to Port 0 else send FF to Port 0.

		org 000h
		mov a, 35h
		mov r2, #08h
		mov b, #00h
		clr c
repeat: rrc a
		mov r3, a
		mov a, b
		rlc a
		mov b, a
		mov a, r3
		djnz r2, repeat
		mov a, 35h
		cjne a, b, no
		mov p0, #00h		
		sjmp last
no: 	mov p0, #0ffh		
last: 
		end
		