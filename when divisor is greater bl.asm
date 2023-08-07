.model small
.stack 100h
.data
q dw ?
r dw ?
.code
main proc
    mov ax,@data
    mov ds,ax
    mov ax,25
    mov dx,0
    mov bx,5
    
    div bx
    
    mov q,ax
    mov r,dx
    mov dx,q
    add dx,48
    mov ah,2
    int 21h
    mov dx,r 
    add dx,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main