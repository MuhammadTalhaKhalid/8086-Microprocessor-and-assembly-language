
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

    mov AH,01H
    int 21H
    mov Dl, Al  
    mov AH,01H
    int 21H
    mov Bh, Al
    mov AH,01H
    int 21H
    mov Cl, Al
    mov AH,01H
    int 21H
    mov Ch, Al
    mov AH,01H
    int 21H
    mov Bl, Al
    mov AH,02H
    int 21H
    mov AH,02H
    mov Dl, Bh
    int 21H
    mov AH,02H
    mov Dl, Cl
    int 21H
    mov AH,02H
    mov Dl, Ch
    int 21H
    mov AH,02H
    mov Dl, Bl
    int 21H
ret




