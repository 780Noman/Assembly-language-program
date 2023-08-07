;loop,label,inc,counter register 
;Write program to print 1 to 9 numbers.
.model small
.stack 100h
.data
.code 
main proc
    mov cx,10 ;loop repeated 10 times
    mov dx,48
    Test:
    mov ah,2
    int 21h
    ;add dx,1 
    inc dx
    loop Test
    mov ah,4ch
    int 21h
    main endp
End main