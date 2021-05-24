//to convert 2 digit BCD to ASCII numbers and store them in location 30h(LSB) and 31h(MSB)

    org 00h
	mov a, 40h
	mov b, a
	anl a, #0fh
	add a, #30h
	mov 30h, a
	mov a, b
	anl a, #0f0h
	swap a
	add a, #30h
	mov 31h, a
	end
		