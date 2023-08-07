;Declare and initialize different variables in .data segment and access them in .code
;segemt to print on screen?(offset,LEA).
.model small
.stack 100h
.data
var1 db '2'
var2 db ?
var3 db 'Nomi$'
.code
main proc 
    mov ax,@data
    mov ds,ax
    mov dl,var1
    mov ah,2
    int 21h
    mov bl,'1'
    mov var2,bl
    mov dl,var2
    mov ah,2
    int 21h
   ; mov dl,var3
    ;mov ah,2
    ;int 21h 
    ;mov dx,offset var3   
    lea dx,var3
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    main endp
end main