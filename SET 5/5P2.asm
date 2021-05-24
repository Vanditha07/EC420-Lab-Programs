//to check whether the lower nibble is greater than higher nibble of A. If ‘yes’ send 00 to Port 0 else send FF to Port 0.

		org 00h
		mov a, 40h
		anl a, #0fh
		mov b, a
		mov a, 40h
		swap a
		anl a, #0fh
		subb a, b
		jc next
		mov p0, #0ffh
		sjmp last
next: 	mov p0, #00h
last: 
		end	