; yeah, may need practice and review

; the carry flag is PSW.7
; the program is the same as 4-6 but you read the status of SW to the CY

            SETB    P1.7
CAREFUL:    MOV     C, P1.7     ; need to put the read instruction in the loop to monitor the status continuously
            JC      SW_is_ON    ; jump if bit
            MOV     P2, #'N'
            SJMP    CAREFUL     ; keep monitoring
SW_is_ON:   MOV     P2, #'Y'
            SJMP    CAREFUL     ; keep monitoring

            