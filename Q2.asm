.model small
.stack 100h
.data
.code
   main proc
    mov ax,2
    mov bx,1
    sub ax,bx
    add ax,bx  
    add ax,bx
    mov ax,4
    mov cx,4   
    int 21h
    main endp
end main