;AND operator used
.MODEL SMALL
.STACK 100H
.DATA
.CODE
MAIN PROC
    MOV AH,10101011B
    MOV BH,10000001B
    AND AH,BH   ;AND DEST,SOURCE
    MAIN ENDP
END MAIN