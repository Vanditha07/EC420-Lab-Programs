//to find the average of ‘N’ bytes of data
		org 00h
		mov r0, 20h   ; count register
		mov r1, #30h   ; pointer to data
		mov r2, #00h   ; to store sum
		mov r3, #00h   ; to store carry
		mov b, r0
repeat: add a, @r1
		jnc next
		inc r3							
next:   inc r1
		djnz r0, repeat 	
		mov r2, a
        div ab
		end