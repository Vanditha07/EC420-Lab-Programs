//Read the data from Port 1. If P1.1 is at logic 0, find the largest number in an array of ‘N’ bytes of data and store in location 40h. 
//If P1.0 is at logic 1, find the smallest number in the array and store in the location 40h.  

		   org 00h
		   mov r1, #0ah      ;counter
		   mov r0, #30h    ;source pointer
		   mov a, #00h     ;initial min/max is zero
		   mov p1, #0ffh   ;configure p1 as input port
		   jb p1.0, smallest
		   clr c
repeat1:   subb a, @r0
		   jnc noexch
	       mov a, @r0
noexch:    inc r0
	       djnz r1, repeat1
	       mov 40h, a
	       sjmp last	
smallest:  clr c
repeat2:   subb a, @r0
	       jc noexch2
	       mov a, @r0
noexch2:   inc r0
	       djnz r1, repeat2
	       mov 40h, a
last:      mov b, a
	       end
		
	
	