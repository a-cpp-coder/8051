; real work means feeling good

; bit P2.3 is an input and represents the condition of an oven
; if it goes high, it means the oven is too hot!
; Monitor the bit continuosly, whenever it goes high, send a high-to-low pulse to port P1.5 to turn on a Buzzer

; my code:
HERE:   JNB     P2.3, HERE  ; keep monitoring for high
        SETB    P1.5
        CLR     P1.5
        SJMP    HERE        ; keep repeating