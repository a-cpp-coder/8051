; I am Huy, the man who open the mouth to speak
; MOV destination, source		; copy source to dest

		;	MOV A, #0
		MOV A, #55H			;load value 55H into Reg. A
		MOV R0, A			;copy contents of A into R0
							;(now R0 = A = 55H)
		MOV R1, A			;copy contents of A into R1
							;R1 = R0 = A = 55H
		MOV R2, A			;copy contents of A into R2
							;R2 = R1 = R0 = A = 55H
		MOV R3, #95H		;load value 95H into R3
							;R3 = 95H
		mov A, R3			;A = R3 = 95H
		END