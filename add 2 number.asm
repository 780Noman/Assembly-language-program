.model small
.stack 100h
.data
.code
  main proc
    mov ax,5
    mov bx,2
    add ax,bx
    mov dx,ax
    add dx,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main endp
  End main
  