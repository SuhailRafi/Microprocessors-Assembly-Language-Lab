org 100h

; add your code here
sub al, al
sub bl, bl
sub cl, cl   
add al, bl
sub cl, al
mov al, cl
ret