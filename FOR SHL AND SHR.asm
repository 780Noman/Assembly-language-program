;SHIFT LEFT INSTRUCTION 
;WHEN YOU WIRITE SHL AX,1 MEAN YOU WANT TO SHIFT THE AX VALUE TO 1 SHL
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AX,2
    SHL AX,1 ; VAL OF DIS*2 POWER OF NUMBER THAT TIME YOU WANT TO SHL
    ;SHL 2,1 TIME SHL =2*2^1=4 ANS 
    CALL FOR_RIGHT_SHIFT
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
FOR_RIGHT_SHIFT PROC
    MOV AX,8
    SHR AX,1
    RET 
    FOR_RIGHT_SHIFT ENDP
END MAIN