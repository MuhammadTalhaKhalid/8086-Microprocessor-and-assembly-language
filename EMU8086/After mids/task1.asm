
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.MODEL SMALL
.STACK 
.DATA
DATAIN DB 2H,2H,5h,0FH,2H
SUM DW ?
.CODE
MAIN PROC FAR
    MOV AX,@DATA
    MOV DS,AX
    MOV CX,05
    
    MOV BX,OFFSET DATAIN
    MOV AL,1
    AGAIN:
    MUL [BX]
    INC BX
    DEC CX
    JNZ AGAIN
    MOV SUM,AX
    MOV AH,4CH
    INT 21H
    MAIN ENDP

END

ret




