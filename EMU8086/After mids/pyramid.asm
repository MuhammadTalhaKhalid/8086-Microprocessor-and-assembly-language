
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODELSMALL
.DATA
space1 DW16;VAR FOR SPACE 
star1 DW1

space2 DW16;VAR FOR SPACE 
star2 DW1   

space3 DW16;VAR FOR SPACE 
star3 DW1 
.CODE
main proc
   MOV CX,5
   OUTERLOOP:
   MOV BX,CX
   MOV CX,space1    
   
   L1:
   MOV DL,32
   MOV AH,02
   INT 21H
   LOOP L1
   dec space1  
   
   MOV CX,star1
   
   L2:
   MOV DL,'*'
   MOV AH,02
   INT 21H
   LOOP L2
   ADD star1,2
   mov cx,space2
ret             





