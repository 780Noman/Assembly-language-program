.model small
.stack 100h
.data
.code
  main proc
    mov ax,3
    add ax,1
    mov ax,2
    mov bx,3
    sub bx,ax
    add ax,bx
    main endp
 End main