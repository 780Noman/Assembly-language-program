.model small
.stack 100h
.data
.code
main proc 
    ;Taking input charater write 1 with echo
    mov ah,1
    int 21h      
    ;Show charater output
    mov ah,2  
    ;if you want to newline then write
    mov dl,0ah
    int 21h
    mov dl,0dh
    int 21h
    
    mov dl,'a'
    int 21h
    
    mov ah,4ch
    int 21h
    main endp
End main