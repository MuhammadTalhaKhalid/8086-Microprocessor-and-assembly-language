
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov DL,41h
mov AH, 02H
int 21H
  mov DL,33h
mov AH, 02H
int 21H
mov DL,35h
mov AH, 02H
int 21H
mov DL,"*"
mov AH, 02H
int 21H
mov DL,"*"
mov AH, 02H
int 21H

ret




