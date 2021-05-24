//Check whether the given byte of data is present in an array of ‘N’ bytes of data. If present send 00 in Port 0 else send FF in Port 0.

        org 00h
		mov r0, #30h        ;source pointer
		mov r1, 20h         ;length
		mov 25h, #0ah       ;data to be compared
repeat: mov a, @r0
		cjne a, 25h, no
		mov p0,#00h         ;if present send 00 to port 0
		sjmp last
no: 	inc r0
		djnz r1, repeat
		mov p0, #0ffh
last: 
		end
		
	
