; No matter what, still go ahead, all about your ability

        MOV R6, #25H
        MOV R1, #12H
        MOV R4, #0F3H
        ;PUSH 6
        ;PUSH 1
        ;PUSH 4
		POP 3
		POP 5
		POP 2
		; without PUSH 1st, the POP will go down from 0x07 to 0x06, 0x05 then 0x04
		END