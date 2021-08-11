.model small
.stack 100h

.data

first db "Enter first Character: $"
second db "Enter second Character: $"
third db "Enter third Character: $"

.code
mov ax,@data
mov ds, ax


lea dx, first
mov ah,9
int 21h

mov ah,1
int 21h

mov bl, al


mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h


lea dx, second
mov ah,9
int 21h

mov ah,1
int 21h


mov cl, al 


mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h


lea dx, third
mov ah,9
int 21h

mov ah,1
int 21h
mov bh, al
            

mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h
            

mov dl, bh
mov ah,2
int 21h


mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h


mov dl,cl
mov ah,2
int 21h


mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h


mov dl,bl
mov ah,2
int 21h

mov ah,4ch
int 21h
