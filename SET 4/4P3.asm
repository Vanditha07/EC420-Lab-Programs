//to find whether the given number is prime or not. If prime send FF to Port 0 else send 00 to Port 0.

		org 00h
		mov r1, #02h
		mov r2, #08h
		cjne r2, #02h, next	
next: 	jc prime
		mov b, #02h
		mov a, r2
		div ab
		mov r0, a
		inc r0
rpt:	mov b, r1
		mov a, r2
		div ab
		xch a,b
		jz compo
		inc r1
		cjne a, 00h, rpt
prime:  mov p0, #0ffh
		sjmp done
compo:  mov p0, #00h
done:
		end
		