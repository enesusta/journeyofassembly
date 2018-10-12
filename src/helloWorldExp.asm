
; Author : Enes Usta
; Date : 8/10/2018
 


segment first
main proc far
assume cs:fist, ds:first

mov ax,0
push ds ax
mov ax,first
mov ds,ax

mov ah,09h
mov dx,offset message1
int 21h

ret

message1 db 10,13,'Hello world with asm$'

main endp
deneme ends
END