
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov al, 6
add bl, 30h
aaa  
mov dl,al
mov ah,02h     
int 21h
ret




