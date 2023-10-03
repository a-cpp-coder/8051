; finish him, chi tranh som toi

; the switch is connected to P0.0 and the LED to pin P1.7
; write a program to get the status of the switch and send it to the LED

        SETB P0.0       ; make P0.0 an input - yes important, that's why this instruction is always on the top
CONT:   MOV  C, P0.0    ; read the SW status in to CY
        MOV  P1.7, C    ; send the SW status to the LED
        SJMP CONT       ; read continuosly

; "MOV P1.7, P0.0" is a wrong instruction, does not exist 
; -> you have to read it to somewhere like CY before passing it to other pins