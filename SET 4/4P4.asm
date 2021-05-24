// to find the factorial of a given number (using recursive procedure)

	  org 00h
	  mov r0, #05h
	  mov a, r0
	  cjne a, #02h, next
next: jnc next1
	  mov a, #01h
	  sjmp done
next1:acall fact
fact: dec r0
	  cjne r0, #01, next2
      sjmp done
next2:mov b, r0
	  mul ab
	  acall fact 
done: mov 40h, a
	  end
		