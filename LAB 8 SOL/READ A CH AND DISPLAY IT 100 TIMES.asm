; Program to read a character and display that character 100 times on next line using loop    
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV CX,100
    MOV BL,'*'
    L:   
    MOV DL,BL
    MOV AH,2
    INT 21H
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H
    LOOP L
 
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
