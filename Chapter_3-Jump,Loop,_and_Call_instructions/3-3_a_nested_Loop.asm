; yeah, code is more important and you also need to move fast

; a nested loop to loop more than 255 times (that is the limit by the size of a 8-bit register)
            MOV A, #55H
            MOV R3, #10     ; outer loop count
NEXT:       MOV R2, #70     ; inner loop count
AGAIN:      CPL a           ; complement A register
            DJNZ R2, AGAIN  ; repeat it 70 times (till R2 == 0)
            DJNZ R3, NEXT
            END