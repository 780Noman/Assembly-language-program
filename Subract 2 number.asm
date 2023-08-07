.model small
.stack 100h
.data
.code
  main proc
    mov ax,9
    mov bx,5
    sub ax,bx  
    add ax,48
    mov dx,ax
    mov ah,2
    int 21h
    mov ah,4ch
 
    int 21h
    main endp
  end main
    