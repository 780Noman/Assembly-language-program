;Program to check the number is equal or not
.MODEL SMALL
.STACK 100H
.DATA
M1 DB 10,13,'ENTER FIRST NUMBER :$'
M2 DB 10,13,'ENTER SECOND NUMBER :$'
M3 DB 10,13,'NUMBER ARE EQUAL..$'
M4 DB 10,13,'NUMBER ARE NOT EQUAL..$'
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV DX,OFFSET M1
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV BL,AL
    
    MOV DX,OFFSET M2
    MOV AH,9
    INT 21H
    
    MOV AH,1
    INT 21H
    MOV DL,AL
;CMP (IT SUBTRACT THE DATA FROM SOURCE TO DISTINATION)
    CMP DL,BL
    JE EQUAL
              
    MOV DX,OFFSET M4
    MOV AH,9
    INT 21H
    MOV AH,4CH
    INT 21H          
    EQUAL:
    MOV DX,OFFSET M3
    MOV AH,9
    INT 21H 
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN