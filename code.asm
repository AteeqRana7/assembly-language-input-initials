.MODEL SMALL
.STACK 100H
.DATA
    MSG DB "Please enter your first three initials$"
    MSG2 DB 10,13, "Your first three initials are = $"
.CODE
MAIN PROC
    
    MOV AX, @DATA
    MOV DS, AX
    
    MOV AH, 9
    LEA DX, MSG
    INT 21H
    
    MOV AH, 2
    MOV DL, 13
    INT 21H
    MOV DL, 10
    INT 21H
    
    MOV AH, 1
    INT 21H
    
    MOV BL, AL
    
    MOV AH, 1
    INT 21H
    
    MOV CL, AL
    
    MOV AH, 1
    INT 21H
    
    MOV CH, AL
    
    MOV AH, 9
    LEA DX, MSG2
    INT 21H
    
    MOV DL, BL
    MOV AH, 2
    INT 21H
    
    MOV DL, CL
    INT 21H
    
    MOV DL, CH
    INT 21H
        
    MAIN ENDP
END MAIN
