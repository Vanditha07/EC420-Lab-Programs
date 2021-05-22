//to count the number of even numbers and number of odd numbers in an array of ‘N’ bytes of data.

       ORG 000H
	   MOV R0, #30H        ;pointer to the source
	   MOV R1, 20H         ;length 
	   MOV R2, #00H        ;to count even numbers
	   MOV R3, #00H        ;to count odd numbers
LOOP:  MOV A, R0           ;get the data to accumulator
	   JB  ACC.0, ODD      ;go and increment odd if LSB is 1
	   INC R2              ;else increment even
	   SJMP NEXT           ;transfers instruction to next
ODD:   INC R3              ;increment the odd
NEXT:  INC R0              ;source pointer increment
       DJNZ R1, LOOP       ;repeat until length=0                                  
       END


