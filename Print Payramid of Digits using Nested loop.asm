;Print Payramid of digits using nested loop
.model small
.stack 100h
.data
.code
main proc
    mov cx,5
    mov bx,1
    L1:
    mov ax,48
    push cx
    mov cx,bx
    L2:
    inc ax
    mov dx,ax
    mov ah,2
    int 21h
    loop L2
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    
    inc bx
    POP cx
    LOOP L1
    mov ah,4ch 
    int 21h
    main endp
End main