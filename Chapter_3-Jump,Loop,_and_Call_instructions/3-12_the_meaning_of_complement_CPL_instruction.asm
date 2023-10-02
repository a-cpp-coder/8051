; Only 1 thing, so good to only go straight forward

; to toogle all the bit, use complement CPL ins

        ORG     0
        MOV     A, #55H
BACK:   MOV     P1, A
        ACALL   DELAY
        CPL     A 
        SJMP    BACK
; the main program end here

;__________this is the delay subroutine
DELAY:
        MOV     R5, #0FFH
AGAIN:  DJNZ    R5, AGAIN   ; Stay here until R5 becomes 0
        RET
        END