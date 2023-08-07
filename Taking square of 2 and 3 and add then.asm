.model small
.stack 100h
.data
.code
  main proc
    mov ax,2
    add ax,2
    mov bx,3
    add bx,3
    add bx,3
    add ax,bx  
    int 21h
    main endp
end main