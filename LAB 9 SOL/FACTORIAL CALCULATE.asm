;Program for calculating factorial in assembly language
.MODEL SMALL
.STACK 100H
.DATA
ANS DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AL,5
    MOV CL,4
    MOV BL,AL
    SUB BL,1
    L:
    MUL BL
    DEC BL
    LOOP L
    MOV ANS,AL
    MOV DL,ANS
    ADD DL,48
    MOV AH,2
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN