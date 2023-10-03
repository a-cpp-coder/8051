; Stretch your legs, kick it, and the backbone after each 45' of coding

; a switch is connected to pin P1.7, write a program to check the status of the switch (SW) and perform:
; - if SW == 0, send letter 'N' to P2
; - if SW == 1, send letter 'Y' to P2

        SETB    P1.7
CASE1:  JB      P1.7, CASE2     ; jump if SW == 1
        MOV     P2, #'N'        ; Still an intermediate, the char 'N'
        SJMP    CASE1;          ; keep monitoring
CASE2:  MOV     P2, #'Y'        
        SJMP    CASE1;          ; keep monitoring
