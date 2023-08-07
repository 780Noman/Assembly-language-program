;Program to Reverse a string 
.model small
.stack 100h
.data
string db 'Noman$'
.code
main proc
    mov ax,@data
    mov ds,ax
    lea si,string
    mov cx,5
    l1:
    mov bx,[si]
    push bx
    inc si
    loop l1
    
    mov cx,5
    l2:
    pop dx
    mov ah,2
    int 21h
    loop l2
    mov ah,4ch
    int 21h
    main Endp
End main