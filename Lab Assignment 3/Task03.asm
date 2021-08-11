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
    JL ZEROINAL
    
    CMP BH, CH 
    JL ZEROINBL
     
    MOV CL, 0
    JMP EXI                 
 
    ZEROINAL:
    MOV AL, 0
    JMP EXIT
    
    ZEROINBL:
    MOV BL, 0
    JMP EXI                
                    
    EXIT:
       
MAIN ENDP
END MAIN