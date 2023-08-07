;program to convert lower case to upper case
.model small
.stack 100h
.data
.code
main proc
    mov ah,1
    int 21h
    sub al,32
    mov dl,al
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main
