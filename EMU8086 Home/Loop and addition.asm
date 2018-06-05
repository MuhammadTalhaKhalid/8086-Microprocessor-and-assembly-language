
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

; add your code here    
mov cx, 5  
mov ax,6
lol:  add ax,6

loop lol                        
ret
call lol:

