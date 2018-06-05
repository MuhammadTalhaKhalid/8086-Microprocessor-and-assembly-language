
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov cx,10 
doit:  
mov DL,"*"
mov ah,02h
int 21H
loop doit    

mov cx,5 
doiy:  
mov DL,"*"
mov ah,0ah
int 21H
loop doiy  

mov cx,3 
doiz:  
mov DL,"*"
mov ah,0ah
int 21H
loop doiz
ret




