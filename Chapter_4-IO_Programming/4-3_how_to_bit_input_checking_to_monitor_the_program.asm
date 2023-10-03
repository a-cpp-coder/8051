; the real use, real application, real work, real talk

;   a program to perform the following:
;   - keep monitoring the P1.2 bit until it becomes high (hold the program until P1.2 is high <=> smt happens)
;   - when P1.2 becomes high:
;       + write the value 45H to port 0
;       + send a high-to-low pulse (H-to-L) to P2.3

        SETB    P1.2   ; just it, to turn P1.2 = 1 and active the following sequence
HERE:   JNB     P1.2, HERE  ; keep monitoring until P1.2 is high
        MOV     P0, #45H    ; issue 45H to P0
        SETB    P2.3        ; make P2.3 high
        CLR     P2.3        ; make P2.3 low for H-to-L pulse