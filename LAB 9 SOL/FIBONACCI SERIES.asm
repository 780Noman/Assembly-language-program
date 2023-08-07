;Program to calculate sum of first 8 digits of fibonacci series
.model small
.stack 100h
.DATA
SUM DW ?
.CODE
MAIN PROC
    MOV AX,@DATA
    MOV DS,AX
    MOV AX,1
    MOV BX,1
    MOV CX,8
    
    FNSloop:
    ADD AX,BX   ;1+1=2
    MOV DX,AX    ;DX=2
    MOV AX,BX   ;AX=1
    MOV BX,DX    ;BX=2
    LOOP FNSloop
    
    SUB BX,1
    MOV SUM,BX
    
    
    MOV AH,4CH
    INT 21H
    MAIN ENDP
END MAIN