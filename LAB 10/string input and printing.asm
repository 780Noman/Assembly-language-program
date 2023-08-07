;string in Assembly Language
.model small
.stack 100h
.data 
string1 db 'Noman Amjad',0dh,0ah,'$'
string2 db 100 dup('$')
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset string1  
    mov ah,9
    int 21h   
    mov si,offset string2
    L:
    mov ah,1
    int 21h
    cmp al,13
    je Print
    mov [si],al
    inc si
    Loop L
    Print:
    mov dx,offset string2
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main
    
    