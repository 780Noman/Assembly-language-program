;Array :collection of character to store many chacter with single variable name in sequence in memory.
.model small
.stack 100h
.data
;var1 db '6'
arr1 db 1,2,3,5
.code
main proc
    mov ax,@data
    mov ds,ax
   ; mov dl,var1
    ;mov ah,2
   ; int 21h
    mov si,offset arr1
    mov dx,[si]
    add dx,48
    mov ah,2
    int 21h
   ; mov dx,[si+1]
    inc si 
    mov dx,[si] 
    add dx,48
    mov ah,2
    int 21h 
    mov dx,[si+1] 
    add dx,48
    mov ah,2
    int 21h  
    mov dx,[si+2]
    add dx,48
    mov ah,2
    int 21h
    mov ah,4ch
    int 21h
    main endp
End main