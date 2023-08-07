.model small
.stack 100h
.data
v1 db 'Number is Equal$'
v2 db 'Number is Not Equal$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dl,'3'
    mov ah,1
    int 21h
     cmp al,dl 
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
   
    je l1;if number is not equal
    mov dx,offset v2
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    l1:
    mov dx,offset v1
    mov ah,9
    int 21h 
    mov ah,4ch
    int 21h
    main endp
end main