//to count the number of +ve numbers and number of -ve numbers in an array of ‘N’ bytes of data.


		ORG 000H
		MOV R0, #30H        
		MOV R1, 20H
		MOV R2, #00H        ; POSITIVE NUMBER COUNT
		MOV R3, #00H        ; NEGATIVE NUMBER COUNT
LOOP:   MOV A, @R0          
        RLC A               ; bring MSB bit into CY bit position    
        JC NEG                                           
        INC R2                     
        SJMP NEXT
NEG:    INC R3                      
NEXT:   INC R0                       
        DJNZ R1, LOOP      
		END
