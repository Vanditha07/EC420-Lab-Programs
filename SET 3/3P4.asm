//Read the data from Port 1. If P1.1 is at logic 0, find the largest number in an array of ‘N’ bytes of data and store in location 40h. 
//If P1.0 is at logic 1, find the smallest number in the array and store in the location 40h.  

		org 00h
		mov r0, #30h
		mov r1, #05h
		dec r1
		mov a, @r0
		inc r0
repeat: mov b, @r0
		cjne a, b, next
next: 	mov b, p1
		jb b.1, next1
		jnc again
		sjmp again1
next1:  jc again
again1: mov a, @r0
again:  inc r0
		djnz r1, repeat
		mov 40h, a
		end
		
	