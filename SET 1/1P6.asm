// 10 bytes of data from location 8000h to 9000h within the external memory

		org 0000h 
		mov r0, #0ah
		mov dpl, #00h
repeat: mov dph, #80h
		movx a, @dptr
		mov dph, #90h
		movx @dptr, a
		inc dpl
		djnz r0, repeat
		end