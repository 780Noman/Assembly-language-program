;using loop to print array elements
.model small
.stack 100h
.data
arr1 db 'a','b','c','d','e'
.code
main proc 
    mov cx,5
    mov ax,@data
    mov ds,ax
    mov si,offset arr1 
    mov dx,[si]
    label:
    mov ah,2
    int 21h   
    add dx,1
    loop label
    mov ah,4ch
    int 21h
    main endp
end main