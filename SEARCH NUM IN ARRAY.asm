.MODEL SMALL
.STACK 100H
.DATA      
ARR DB 4,6,2,7,8,9
MSG DB 10,13,'ENTER A NUMBER :$'
MSG1 DB 10,13,'NUMBER IS FOUND IN ARRAY...$'
MSG2 DB 10,13,'NUMER IS NOT FOUND IN ARRAY...$'
VAL DB ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,MSG
    MOV AH,9
    INT 21H
    MOV AH,1
    INT 21H
    SUB AL,'0' ;CONVERT ASCII DIGIT TO BINARY'
    MOV VAL,AL
    LEA SI,ARR
    MOV CX,6
    MOV AL,VAL
    SEARCH:
    MOV BL,[SI]
    CMP AL,BL
    JZ NUM_FOUND ;MEAN IF RESULT 0 AFTER CMP SC-DEST THEN NUM FOUND
    INC SI
    LOOP SEARCH
    
    LEA DX,MSG2
    MOV AH,9
    INT 21H
    JMP QUIT
    NUM_FOUND:
    LEA DX,MSG1
    MOV AH,9
    INT 21H 
    QUIT:
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN
     
    
   
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
END MAIN