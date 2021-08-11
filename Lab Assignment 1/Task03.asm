org 100h

; add your code here
sub al, al
sub bl, bl

mov al, 40
mov bl, 8
div bl 
mov cl, 3
mul cl
ret