; Total focus, not the other things

; Find the sum of the values 79H, F5H and E2H. 
; Put the sum in register R0(low byte) and Register R5(high byte)

            MOV A, #0       ; clear A
            MOV R5, A       ; clear R5
            ADD A, #79H
            
            JNC N_1         ; if no carry CY == 0, add next number
            INC R5          ; IF CY == 1, increment R5 (yes)

N_1:        ADD A, #0F5H    ; continue to add A with the next number, 
                            ; actually there is a carry here 79 + F5 = 6E (CY = 1)

            JNC N_2         ; no carry, continue to add
            INC R5          ; there is a carry, increment R5

N_2:        ADD A, #0E2H    ; 6E + E2 = 50  (CY = 1)

            JNC OVER        ; jump if no carry
            INC R5          ; if there is a carry (CY = 1), then add 1 to higher byte 

OVER:       MOV R0, A       ; Now RO = #50H, and R5 = #02H
			END
																   	

