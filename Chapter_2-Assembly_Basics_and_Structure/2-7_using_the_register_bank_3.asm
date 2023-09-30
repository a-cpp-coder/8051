// Need talk right away, no hestitate

    SETB PSW.4      ;   select bank 3 with set the bit of the pointer PSW
    SETB PSW.3      ;   to PSW.4 = 1, PSW.3 = 1
    MOV R0, #95H    ;   the onward code are same as 2-5
    MOV R1, #85H
    MOV R2, #3FH
    MOV R7, #63H
    MOV R5, #12H
	END