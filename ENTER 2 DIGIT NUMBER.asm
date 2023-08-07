;program to input 2 digit number from user
.MODEL SMALL
.STACK 100H
.DATA
VAR DB 'ENTER A 2 DIGIT NUMBER :$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV DX,OFFSET VAR
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    CMP AL,09
    JBE NUMBER 
    
    NUMBER:
    MOV CL,4
    ROL AL,CL
    MOV AH,1
    INT 21H
      
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN