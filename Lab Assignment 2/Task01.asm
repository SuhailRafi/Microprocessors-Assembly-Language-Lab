.model small
.stack 100h

.code
mov ah,1
int 21h
mov bl, al

mov ah,1
int 21h
add bl, al

mov al, bl
mov dl, bl
mul dl

mov ah,2 
mov dl,0dh 
int 21h 
mov dl,0ah 
int 21h

mov dl,al
mov ah,2
int 21h