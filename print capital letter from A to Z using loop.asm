;Program to print capital letter from A to Z.
.model small
.stack 100h
.data
.code
main proc
    mov cx,26
    mov dx,65
    test:
    mov ah,2
    int 21h
    add dx,1
    loop test
    mov ah,4ch
    int 21h
    main endp
end main