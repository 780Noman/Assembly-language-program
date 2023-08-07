;Program to swap two number
.model small
.stack 100h
.data 
var1 db 'Before Swaping the Number is :',0ah,0dh,'$'
var2 db 0ah,0dh,'After swaping the Number is :',0ah,0dh,'$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    mov dx,offset var1
    mov ah,9
    int 21h
    mov ax,'2' 
    mov dx,ax
    mov ah,2
    int 21h
    push ax  
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    mov bx,'4'
    mov dx,bx
    mov ah,2
    int 21h
    push bx  
  
    lea dx,var2
    mov ah,9
    int 21h
    pop ax
    pop bx
    mov dx,ax
    mov ah,2
    int 21h   
    mov dx,10
    mov ah,2
    int 21h
    mov dx,13
    mov ah,2
    int 21h
    mov dx,bx
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main Endp
End main