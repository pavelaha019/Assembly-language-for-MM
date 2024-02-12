.MODEL SMALL
.STACK 100H
.DATA
    A DB 10,13, 'STARS $'  ; Message with carriage return and newline
.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    MOV AH, 9
    LEA DX, A   ; Load address of message
    INT 21H     ; Display message

    MOV CX, 10  ; Set loop counter to 10 for 10 stars

LEV:
    MOV DL, '*'  ; Load star character
    MOV AH, 2    ; Function to display character
    INT 21H      ; Display star

    DEC CX       ; Decrement loop counter
    JNZ LEV      ; Jump to LEV if CX is not zero

    MOV DL, 13   ; Carriage return
    MOV AH, 2
    INT 21H
    MOV DL, 10   ; New line
    MOV AH, 2
    INT 21H

    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP
END MAIN

