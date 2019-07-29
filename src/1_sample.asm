.model small
.stack 100h
.data
msg         db 10,"this is tring $"
bufferSize  db 21 ; 20 char + RETURN
inputLength db 0
buffer      db 21 DUP("$")
newLine     db 10,13,'--$'


.code
main proc

mov ax, @data
mov ds, ax
lea dx, msg

mov ah,09h
int 21h

mov dx, offset bufferSize; load our pointer to the beginning of the structure
mov ah, 10
int 21h

mov ah,09h
mov dx,offset newLine
int 21h

mov ax, @data
mov ds, ax
lea dx, buffer
mov ah, 09h
int 21h           

mov ah,09h
mov dx,offset newLine
int 21h


endp
end main

