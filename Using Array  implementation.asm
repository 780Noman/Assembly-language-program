;program to implementing array in AL
.MODEL SMALL
.STACK 100H
.DATA
arr1 db 1,2,3,4
arr2 db 3 dup(?)
arr3 db 'abc'
v1 db 57
v3 db 'NOMAN$'
v2 db 'AMJAD$'
.CODE
MAIN PROC   
    MOV AX,@DATA
    MOV DS,AX
    MOV SI,OFFSET arr1
    MOV DX,[SI] 
    ADD DX,48
    MOV AH,2
    INT 21H   
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
    INC SI ;ADD SI,1
    MOV DX,[SI] 
    ADD DX ,48
    MOV AH,2
    INT 21H 
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H 
    MOV SI,OFFSET arr2
    MOV [SI],'A'
    MOV DX,[SI]
    MOV AH,2
    INT 21H 
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H 
    MOV SI,OFFSET arr3
    MOV DX,[SI]
    MOV AH,2
    INT 21H
    MOV DX,[SI+1]
    MOV AH,2
    INT 21H
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN