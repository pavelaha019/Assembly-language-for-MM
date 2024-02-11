org 100h

  MOV AH,1
  INT 21H
  
  MOV BL,AL
  INT 21H
  
  MOV CL,AL
  
  ADD BL,CL     ;BL=BL+CL
  

  MOV AH,2
  SUB BL,48
  MOV DL,BL
  INT 21H
  
  
  SUB BL,CL      ;BL=BL-CL

  
  MOV AH,2
  ADD BL,48
  MOV DL,BL
  INT 21H


