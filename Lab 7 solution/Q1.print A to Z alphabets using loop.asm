.model small
.stack 100h
.data
.code
main proc
    mov cx,26
    mov dl,65    
    L:  
      mov ah,2
      int 21h       
      add dl,1 
    loop L 
      mov ah,4ch
      int 21h
    main Endp
End main