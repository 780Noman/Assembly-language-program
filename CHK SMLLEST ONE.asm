                              ; PROGRAM TO GET THREE NUMBER FROM USER AND DISPLAY THE SMALLEST ONE
.MODEL SMALL
.STACK 100H
.DATA
M1 DB 10,13,'ENTER FIRST NUMBER:$'
M2 DB 10,13,'ENTER SECOND NUMBER:$'
M3 DB 10,13,'ENTER THIRD NUMBER:$'
M4 DB 10,13,'SMALLEST ONE IS :$'
NUM1 DB ?
NUM2 DB ?
NUM3 DB ?
.CODE
MAIN PROC
MOV AX,@DATA
MOV DS,AX
LEA DX,M1
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV NUM1,AL
LEA DX,M2
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV NUM2,AL
LEA DX,M3
MOV AH,9
INT 21H
MOV AH,1
INT 21H
MOV NUM3,AL

LEA DX,M4
MOV AH,9
INT 21H

MOV BL,NUM1
CMP BL,NUM2 ;JUMP NOT SMALLER BL TO NUM2 THEN
JNL NUMBER2

CMP BL,NUM3
JNL NUMBER3

MOV DL,NUM1
JMP DISPLAY
NUMBER2:
MOV BL,NUM2
CMP BL,NUM3
JNL NUMBER3

MOV DL,NUM2
JMP DISPLAY
NUMBER3:
MOV DL,NUM3
DISPLAY:
MOV AH,2
INT 21H
MOV AH,4CH
INT 21H
MAIN ENDP
END MAIN

