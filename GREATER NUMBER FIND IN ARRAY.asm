;WRITE A PROGRAM TO FIND THE LARGEST NUMBER IN GIVEN ARRAY
INCLUDE 'EMU8086.INC'
.MODEL SMALL
.STACK 100H
.DATA
ARR DB 4,3,8,2,6
.CODE
MAIN PROC  
    MOV AX,@DATA
    MOV DS,AX
    MOV SI,OFFSET ARR
    MOV BL,[SI] 
    MOV CX,5
    LOP:
    CMP [SI],BL
    JGE LARGE
    COMPARE:
    INC SI
    LOOP LOP 
    PRINT "THE GREATER NUMBER IN ARRAY :"
    MOV DL,BL
    ADD DL,48
    MOV AH,2
    INT 21H
    LARGE:
    MOV BL,[SI]
    JMP COMPARE
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN