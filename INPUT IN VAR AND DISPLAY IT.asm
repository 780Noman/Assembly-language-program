
;how to Input Number in Variable and show on Screen using Assembly Language Program  
.MODEL SMALL
.STACK 100H
.DATA 
MSG DB 'ENTER NUMBER :$'
MSG1 DB 10,13,'YOU ENTERED NUMBER IS :$'
VAL DB 10,?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    
    LEA DX,MSG
    MOV AH,9
    INT 21H
                                  
    LEA DX,VAL
    MOV AH,0AH
    INT 21H
    
    ;DISPLAY MSG SHOW ON CONSOLE SCREEN
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    
    MOV DL,VAL+2
    MOV AH,2
    INT 21H
    MOV DL,VAL+3
    MOV AH,2
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN