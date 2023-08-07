.model small
.stack 100h
.data
.code
  main proc
    mov al,'a'
    mov ah,1
    int 21h
    mov ah,4ch
    int 21h
    main endp
  End main
  