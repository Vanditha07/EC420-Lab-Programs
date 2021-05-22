// to transfer 10 bytes of data from location starting at 30h to location 35h

		 org 00h
		 mov r0, #30h   ;source pointer
		 mov r1, #35h   ;destination pointer
		 mov r2, #0ah   ;length			 
		 mov a, r2
		 add a, r0      ;update source address to last location
		 dec a
		 mov r0, a	 
		 mov a, r2
		 add a, r1      ;update destination address
		 dec a
		 mov r1, a		 
repeat:  mov a, @r0
		 mov @r1, a
		 dec r0
		 dec r1
		 djnz r2, repeat
		 end