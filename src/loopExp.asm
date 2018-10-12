
; Author : Enes Usta
; Date : 11/10/2018


segment asciiloop
main proc far
assume cs:asciiloop, ds:asciiloop

mov ax,0
push ds ax
mov ax,asciiloop
mov ds,ax

mov ah,09h
mov dx,offset txt
int 21h

mov ah,09h
mov dx,offset msj
int 21h

mov ah,09h
mov dx,offset txt
int 21h


mov cl,6
loopblock:
            mov ah,09h
            mov dx,offset new
            int 21h

            mov ah,02h
            mov dl,cl
            int 21h

            mov ah,02h
            mov dl,index
            int 21h

            jmp repeat

repeat:
            mov bl,0
            add digit,1
            mov bl,digit

            mov ah,02h
            mov dl,bl
            int 21h


            mov ah,09h
            mov dx,offset txt
            int 21h


            mov ah,09h
            mov dx,offset new
            int 21h


loop loopblock



ret 
txt db 10,'|-------------|$'
msj db 10,13,'|Ascii table|$'
new  db 10,13,'      $'
index db ?
digit db '0x30'  ; 0x0 - > '0' = 0x30
                ; 0x9 -> '9' = 0x39


main endp
asciiloop ends
END