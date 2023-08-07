;how to take input number in array and display on screen   
INCLUDE 'EMU8086.INC'
.model small
.stack 100h
.data
arr db 5 dup(?)
.code
main proc
    MOV AX,@DATA
    MOV DS,AX
    
    MOV SI,OFFSET ARR
    MOV CX,5 
    PRINT 'ENTER 5 NUMBER IN ARRAY:'
    CALL ENTKEY
    LOOPIN:
    MOV AH,1
    INT 21H
    
    MOV [SI],AL
    INC SI
    LOOP LOOPIN
    CALL ENTKEY  
    PRINT 'YOU ENTERED NUMBER IS :'
    
    ;FOR DISPLAY ON SCREEN NUMBERS
    MOV CX,5
    MOV SI,OFFSET ARR
    LOOPOUT:
    MOV DL,[SI]
    MOV AH,2
    INT 21H
    
    MOV DL,32 ;FOR GETTING SPACE B/W NUMBERS
    MOV AH,2
    INT 21H                                  
    
    INC SI
    LOOP LOOPOUT
    MOV AH,4CH
    INT 21H
    MAIN ENDP 
ENTKEY PROC
    MOV DL,10
    MOV AH,2
    INT 21H
    MOV DL,13
    MOV AH,2
    INT 21H
    RET 
    ENTKEY ENDP
END MAIN
    
    