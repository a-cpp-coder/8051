; Need to review after learn, each day, week, month, year

; This program adds value 3 to the ACC ten times
        MOV A, #0           ; A = 0, clear ACC
        MOV R2, #FF         ; load counter R2 = 10
AGAIN:  ADD A, #03
        DJNZ R2, AGAIN      ; repeat until R2 = 0
        MOV R5, A           ; save A in R5
        END