                                                                              .MODEL SMALL
.STACK 100H
.DATA
  
A DB 'Divisible $' 
B DB 'Not divisible $'
    
MAIN PROC 
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    MOV BL,3                      
    
    MOV AH,1
    INT 21H
    MOV DH,AL
    SUB DH,30H 
    
    
    MOV BH,AL
    DIV BL
    CMP AH, 0 
    JE PRINT
    
                   
    MOV AH, 9
    LEA DX, A
    INT 21H                       
    JMP EXIT
 
    PRINT:
    MOV AH, 9
    LEA DX, B
    INT 21H
    JMP EXIT                
                    
    EXIT:
       
MAIN ENDP
END MAIN
