//to count the number of even numbers and number of odd numbers in an array of ‘N’ bytes of data.

        org 00h
		mov r0, #30h
		mov r1, 20h
		mov r2, #00h     ;even count
		mov r3, #00h     ;odd count
loop:   mov a, @r0
		rrc a          ; bring the LSB bit to CY bit
		jc odd
		inc r2
		sjmp next
odd:    inc r3
next:   inc r0
	    djnz r1, loop
	    end
		