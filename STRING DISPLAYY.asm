.MODEL SMALL
.STACK 100H
.DATA
MSG1 DB 'PAVEL AHAMED $'                 ;MASSAGE
MSG2 DB 'LEARING ASSEMBLY LANGUAGE $'      ;DB = ALOCATED MESSAGE LOCATION SIZE
.CODE  

MAIN PROC
    
    
        MOV AX,@DATA    ;INITIALIZATION OF DATA SEGMENT
        MOV DS,AX
        
        
        
        LEA DX,MSG1     ;LOAD EFFECTIVE ADDRESS
        MOV AH,9
        INT 21H
        
        
        MOV AH,2
        MOV DL,0DH
        INT 21H         ;NEWLINE
        MOV DL,0AH
        INT 21H
        
        
        LEA DX,MSG2
        MOV AH,9
        INT 21H
        
        
        MOV AH,4CH
        INT 21H
        MAIN ENDP
END MAIN