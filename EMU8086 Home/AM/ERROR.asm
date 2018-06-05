
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK
.DATA
MESSAGE DB 'ERROR!! THERE IS NO DISK UNABLE TO BOOT!!$'
MESSAGE2 DB 'THANKS FOR INSERTING DISK!! REBOOTIING  SYSTEM!!$'
.CODE
  
NEXT:
MOV DL,0DH ;cursor at begining
MOV AH,02
INT 21H  

MOV DL,0AH ;next line
MOV AH,02
INT 21H  

MAIN PROC 
AGAIN: MOV AH,01  ;output a char 
MOV AX,@DATA 
MOV DS,AX
MOV AH,09
MOV DX,OFFSET MESSAGE  
INT 21H                
MOV DL,0DH ;cursor at begining
MOV AH,02
INT 21H  

MOV DL,0AH ;next line
MOV AH,02
INT 21H
MOV DL,07 ;BELL
INT 21H 
             
MOV AH,1  ;to input a char
INT 16H   ;read keyboard buffer
JZ AGAIN

MOV DL,0DH ;cursor at begining
MOV AH,02
INT 21H  

MOV DL,0AH ;next line
MOV AH,02
INT 21H

MOV AX,@DATA
MOV DS,AX
MOV AH,09    ;to output a tring
MOV DX,OFFSET MESSAGE2 
INT 21H  

MOV AH,4CH   ;Terminate a program normally
INT 21H
MAIN ENDP
ret



;Modify the program to continously display a messag until a key is pressed
     ;
