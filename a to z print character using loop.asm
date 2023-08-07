;Program to print small letter from a to z
.model small
.stack 100h
.data
.code 
main proc
    mov cx,26
    mov dx,97
    Test:
    mov ah,2
    int 21h
    add dx,1


    loop Test
    mov ah,4ch
    int 21h
    main endp
End main