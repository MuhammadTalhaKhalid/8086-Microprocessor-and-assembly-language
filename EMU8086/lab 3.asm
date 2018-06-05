
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov bx,67h
mov BL,75H
MOV BH,12H
MOV CX,2222H
ADD AL,BL
MOV DL,AL
MOV [1253h],DL
MOV [BX],DL
ret




