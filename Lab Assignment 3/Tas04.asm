                                                                              .MODEL SMALL
.STACK 100H
.DATA
  
A DB 'Even $' 
B DB 'Odd $'
    
MAIN PROC 
    
    MOV AX, DATA
    MOV DS, AX
    MOV ES, AX
    MOV BL,2                      
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    SUB CH,30H
    
    MOV BH,AL
    DIV BL
    CMP AH, 0 
    JE EVEN 
    
    MOV AH, 9
    LEA DX, B
    INT 21H
    JMP EXIT
 
 
    EVEN:
    MOV AH, 9
    LEA DX, A
    INT 21H
    JMP EXIT                
                    
    EXIT:
       
MAIN ENDP
END MAIN