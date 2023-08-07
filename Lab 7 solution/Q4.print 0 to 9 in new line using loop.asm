.model small
.stack 100h
.data
.code
main proc
    mov cx,10
    mov bl,48
    L:
    mov dl,bl
    mov ah,2
    int 21h 
    inc bl
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    Loop L
    mov ah,4ch
    int 21h
    main endp
end main