; Still Clear, go straight, work on it, exposure and feel it

; duty cyle = the ratio of pulse width rate(on) / the period of the signal 
; the period of a signal is counted from the beginning to  the end of it
; let see how strong and concise it is
HERE:   CPL     P1.0
        ACALL   CALM
        SJMP    HERE

;____CALM
CALM:   NOP
        RET     ; less experience guy, forget the basic to return the program control