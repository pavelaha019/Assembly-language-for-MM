.model small
.stack 100h

.data
    helloMsg db 'HELLO WORLD$', 0

.code
main:
    ; Set up data segment
    mov ax, @data
    mov ds, ax
    
    lea dx,helloMsg    ;load effective address
    mov ah, 09h        ; Function to print string   
    int 21h            
    
   
   
   
    ; Exit program
    mov ah, 4Ch        
    int 21h            
end main
