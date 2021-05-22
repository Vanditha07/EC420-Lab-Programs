// to transfer 10 bytes of data from external RAM location starting with 2000h to internal RAM starting from 30h

		org 00h 
		mov r0, #30h
		mov dptr, #2000h
		mov r2, #0ah	
repeat: movx a, @dptr
		mov @r0, a
		inc r0
		inc dptr
		djnz r2, repeat
		end
