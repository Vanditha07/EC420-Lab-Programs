// to add N bytes of data taking to account the possible carry output

		org 00h
		mov r0, 20h   ; count register
		mov r1, #30h   ; pointer to data
		mov r2, #00h   ; to store answer
		mov r3, #00h   ; to store carry
repeat: add a, @r1
		jnc next
		inc r3							
next:   inc r1
		djnz r0, repeat 	
		mov r2, a
		end