
; Author : Enes Usta
; Date : 10/10/2018


segment homework
main proc far          
assume cs:homework, ds:homework

mov ax,0
push ds ax
mov ax,homework
mov ds,ax

mov ah,09h
mov dx,offset txt
int 21h

mov ah,09h
mov dx,offset txtAuthor
int 21h

mov ah,09h
mov dx,offset txt
int 21h


mov ah,09h
mov dx,offset message1          ; al - > char1
int 21h

mov ah,01h
int 21h
mov char1,al

mov ah,09h
mov dx,offset message2
int 21h

mov ah,01h
int 21h
mov char2,al            ; al - > char2

;mov cl,al       ; cl -> char2 b1 -> char1
;mov al,bl       ; al -> char1
;mov bl,cl       ; bl -> char2


mov ah,09h
mov dx,offset txt
int 21h


mov ah,09h
mov dx,offset newline1
int 21h

mov ah,02h
mov dl,char1
int 21h

mov ah,09h
mov dx,offset newline2
int 21h

mov ah,02h
mov dl,char2
int 21h


mov cl,char2
mov al,bl
mov bl,cl


mov ah,09h
mov dx,offset txt
int 21h


mov ah,09h
mov dx,offset newline3
int 21h

mov ah,02h
mov dl,char2
int 21h


mov ah,09h
mov dx,offset newline4
int 21h

mov ah,02h
mov dl,char1
int 21h

mov ah,09h
mov dx,offset txt
int 21h






ret

char1 db ?
char2 db ?

message1 db 10,13,'Birinci karakteri girin : $'
message2 db 10,13,'ikinci karakteri girin : $'
newline1  db 10,13,'Birinci karakter : $'
newline2  db 10,13,'ikinci karakter : $'
newline3 db 10,13,'xchg sonrasi 1.karakter :$'
newline4 db 10,13,'xchg sonrasi 2.karakter :$'
txt db 10,13,'===========================================$'
txtAuthor db 10,13,'       Enes Usta   10/09/2018$'
newline db 10,30,' $'


main endp
homework ends
END
