//to add ‘N’ bytes of BCD numbers taking into account the possible carry output.

		mov r0, #40h  ;load pointer to data
		mov r1, 20h   ;load counter at 20h
		mov r2, #00h  ;pointer to track carry
again:  add a, @r0
        da a          ;adjust for bcd
		jnc next
        inc r2
next:   inc r0
        djnz r1, again
		end