//to transfer 10 bytes of data from location starting at 35h to location 30h

		   org 00h
		   mov r0, #35h     ;source pointer
		   mov r1, #30h     ;destination pointer
		   mov r2, #0ah     ;length		   
repeat:    mov a, @r0
		   mov @r1, a
		   inc r0
		   inc r1	   
		   djnz r2, repeat
		   end