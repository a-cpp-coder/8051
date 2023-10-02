; yeah, i feel it, the feel of moving fast

; using triple loop to loop more O(n^3)
            
            MOV     A, #55H
AGAIN:      MOV     P1, a
            ACALL   DELAY
            CPL     A 
            SJMP    AGAIN
; end of the main function

;_______Time delay
DELAY:      
            MOV     R5, #2
HERE1:      MOV     R4, #180
HERE2:      MOV     R3, #255    ; should use FFH because you know you are typing the maximum valu, 
                                ; computer use binary system -> hex is better than decimal here
HERE3:      DJNZ    R3, HERE3
            DJNZ    R4, HERE2
            DJNZ    R5, HERE1

            RET