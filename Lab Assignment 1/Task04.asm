org 100h

; add your code here
sub al, al
sub al, bl
sub cl, cl
sub dl, dl
         
mov al, 5
add al, 6
mov bl, 4
add bl, 1
mov cl, 2
add al, bl
mul cl         

mov dl, 3
add dl, 2
add dl, 1
        

ret