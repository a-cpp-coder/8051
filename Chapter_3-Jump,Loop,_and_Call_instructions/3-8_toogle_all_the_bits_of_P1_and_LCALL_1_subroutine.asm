; still on the way, no matter what, Dao moi cang ro

        ORG     0
BACK:   MOV     P1, #55H
        LCALL   DELAY       ; A TIME DELAY
        MOV     P1, #0AAH
        LCALL   DELAY
        SJMP    BACK        ; keep doing this indefinitely
                            ; that's how normally PC cant reach the subrouting without CALL instructions
        
        ; this is the delay subroutine
        ORG     300H
DELAY:  MOV     R5, #0FFH   ; put the value FFH (255) into R5
AGAIN:  DJNZ    R5, AGAIN   ; set the R5 as the counter, stay here until R5 become 0
        RET 
        END