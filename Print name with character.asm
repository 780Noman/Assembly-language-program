.model small
.stack 100h
.data 
str db 'Amjad$'
.code
main proc  
    mov ax,@data
    mov ds,ax
    mov dl,'N'
    mov ah,2
    int 21h
    mov dl,'o'
    mov ah,2
    int 21h
    mov dl,'m'
    mov ah,2
    int 21h
    mov dl,'a'
    mov ah,2
    int 21h
    mov dl,'n'
    mov ah,2
    int 21h 
    lea ax,str
    mov ax,offset str 
    mov dx,ax
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
end main