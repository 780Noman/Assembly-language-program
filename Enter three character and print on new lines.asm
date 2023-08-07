.model small
.stack 100h
.data  
var1 db 'Enter a 3 characters :$' 
.code
main proc 
    mov ax,@data
    mov ds,ax
    mov dx,offset var1 
    mov ah,9
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    mov ah,1
    int 21h 
    mov bh,al
    mov ah,1
    int 21h 
    mov cl,al
    mov ah,1
    int 21h
    mov bl,al   
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    mov dl,bh
    mov ah,2
    int 21h
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h  
    mov dl,cl
    mov ah,2
    int 21h  
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h
    mov dl,bl
    mov ah,2
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
End main