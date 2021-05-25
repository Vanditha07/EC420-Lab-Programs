// program for BCD up counter. Show each count in Port 0 with appropriate delay
	    org 00h
	    mov a, #00h
	    mov r3, #0ffh
repeat: mov p0, a
	    acall delay
		add a, #01h
		da a
		djnz r3, repeat
delay:  mov r0, #0ffh
repeat2:mov r1, #0ffh
repeat1:djnz r1, repeat1
		djnz r0, repeat2
		ret 
	
		end
		