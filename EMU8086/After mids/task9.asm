
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
.model small
.stack 100h
.data
msg db 'MuhammadTalhaKhalid $' 
ms1 db 'CSU-S16-135 $' 
ms2 db 'UniversityOfLahore $'
.code
main proc
    mov dx,@data
    mov ds,dx
    mov dx,offset  msg ;msg1 display
    mov ah ,9
    int 21h 
     mov dx,offset  ms1  ;msg2 display
    mov ah ,9
    int 21h
    mov ah,4ch
    int 21h
     mov dx,offset  ms2  ;msg2 display
    mov ah ,9
    int 21h
    mov ah,4ch
    int 21h 
     
    
    main endp
    end main
   
ret




