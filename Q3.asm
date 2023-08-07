.model small
.stack 100h
.data
.code
  main proc
    mov ax,2
    mov cx,4
    mov dx,1
    add cx,dx  
    add ax,dx
    sub cx,dx
    add dx,ax
    mov bx,8 
    int 21h
    mov bx,4ch
    main endp
 End main