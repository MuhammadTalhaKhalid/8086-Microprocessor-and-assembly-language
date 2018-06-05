
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

MOV AL,VAR1
MOV BX,VAR2   
VAR1 DB 02H
VAR2 DW 03H    
ret