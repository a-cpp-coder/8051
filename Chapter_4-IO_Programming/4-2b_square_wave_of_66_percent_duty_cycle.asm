; Need to think today, focus ahead

; 66% duty cycle means "on" state is twice the "off" state

BACK:       SETB    P1.3    ; set port 1 bit 3 high
            ACALL   CALM
            ACALL   CALM
            CLR     P1.3
            ACALL   CALM
            SJMP    BACK

;_______The subroutine CALM
CALM:
            NOP
            RET
;
            END