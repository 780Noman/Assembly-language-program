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
    mov cx,4
    MOV SI,OFFSET arr1
    l1:
    mov dx,[si] 
    add dx,48
    mov ah,2
    int 21h
    inc si
    loop l1 
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
    MOV SI,OFFSET arr3 
    MOV CX,3
    L2:
    MOV DX,[SI]
    MOV AH,2
    INT 21H 
    INC SI
    LOOP L2 
    MOV SI,OFFSET arr2 
    MOV CX,3
    L3:
    MOV [si],'A'
    MOV DX,[SI]
    MOV AH,2
    INT 21
    INC SI
    LOOP L3
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN