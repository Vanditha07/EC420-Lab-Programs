//to find the square of a number using look up table technique.

	    org 00h
		mov r1, #04h
		mov dptr, #2000h
		mov a, r1
		movc a, @a+dptr
		mov r2, a 
		mov 30h, a
		ljmp last
	
	    org 2000h
square: db 00h, 01h, 04h, 09h, 10h, 19h, 24h, 31h, 40h, 51h, 64h
last: 
		end