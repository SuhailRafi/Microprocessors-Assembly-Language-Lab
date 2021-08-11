                                                                              .MODEL SMALL
.STACK 100H
.DATA 

MAIN PROC 
    
    MOV AH,1
    INT 21H
    MOV DH,AL

    MOV AH,1
    INT 21H
    MOV BH,AL  
    
    MOV AH,1
    INT 21H
    MOV CH,AL
    
    
    CMP DH, BH 
    JG CHECKBC 
    CMP DH, CH 
    JG PRINTC
    
    PRINTA:
    MOV AH, 9
    LEA DX, DH
    INT 21H
    JMP EXIT
    
    
    CHECKBC:
    CMP BH, CH 
    JG PRINTB
     
    PRINTC:
    MOV AH, 9
    LEA DX, CH
    INT 21H
    JMP EXIT
    
    PRINTB:
    MOV AH, 9
    LEA DX, BH
    INT 21H
    JMP EXIT              
                    
    EXIT:
       
MAIN ENDP
END MAIN