
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax, 0b800h
mov ds,ax
mov CL, 'A'
mov CH, 10111111B
MOV BX,15EH
MOV [BX], 15EH
MOV [BX], CX

ret




