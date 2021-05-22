//to exchange 10 bytes of data starting from location 30h with data from location starting from 1000h
                      				  
		  org 00h
		  mov r0, #30h     ; pointer to internal RAM
		  mov dptr, #1000h ; pointer to external RAM
		  mov r2, #0ah     ; length	  
repeat:   movx a, @dptr
		  xch a, @r0
		  movx @dptr, a
		  inc r0
		  inc dptr
		  djnz r2, repeat
		  end
			  
					  