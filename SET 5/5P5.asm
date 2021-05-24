//to find the square root of a number.

     org 00h
	 mov r2, #01h
	 mov r3, #0fh
loop:mov a, r2
	 mov b, r2
	 mul ab
	 cjne a, 40h, next
	 mov 45h, r2
	 sjmp final
next:inc r2
	 djnz r3, loop
final:
	 end
		