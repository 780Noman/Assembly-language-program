;Procedure in Assembly Language
;advantage reuseablity and reduce complexity of program
.model small
.stack 100h
.data    
ST1 DB 'HELLO$'
ST2 DB  'HOW ARE YOU?$'
ST3 DB  'WHAT ARE YOU DOING?$'
.code
  MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    LEA DX,ST1
    MOV AH,9
    INT 21H
    CALL ENTER_KEY
    LEA DX,ST2
    MOV AH,9
    INT 21H
    CALL ENTER_KEY
    MOV  DX,OFFSET ST3
    MOV AH,9
    INT 21H
    MOV AH,4CH
    INT 21H
    MAIN ENDP
  ENTER_KEY PROC
    MOV DX,10
    MOV AH,2
    INT 21H
    MOV DX,13
    MOV AH,2
    INT 21H 
    RET
  ENTER_KEY ENDP
END MAIN
    