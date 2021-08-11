org 100h

; add your code here   
sub al, al
sub al, bl
sub cl, cl

add al, 7
add bl, 5
add cl, bl
add bl, al 
sub bl, cl
sub al, al
add al, cl
ret