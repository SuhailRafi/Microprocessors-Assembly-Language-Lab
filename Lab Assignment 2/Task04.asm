.model small
.stack 100h

.data

enter db "ENTER A 3 BIT NUMBER: $"
decimal db "IN DECIMAL IT IS: $"

.code
mov ax,@data
mov ds, ax

lea dx, enter
mov ah,9
int 21h

mov ah,1
int 21h

mov bl, al

mov ah,1
int 21h

mov cl, al 

mov ah,1
int 21h
mov bh, al
            
mov ah,2 
mov dl,0dh 
int 21h 
mov dl,0ah 
int 21h            

mov al,bl
mov dl,0
mul dl

mov ch,al

mov al,cl
mov dl,2
mul dl

add ch,al

mov al,bh
mov dl,4
mul dl

add ch,al

mov ah,2 
moV dl,0dh 
int 21h 
mov dl,0ah 
int 21h

lea dx, decimal
mov ah,9
int 21h

mov dl,ch
mov ah,2
int 21h

mov ah,4ch
int 21h
