;Wirte program to print two different stirgs on two differents lines 
.model small
.stack 100h
.data
str1 db 'Noman$'
str2 db 'Amjad$'
.code
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset str1
    ;lea ax,str1   
    mov ah,9   ;9 for printing string
    int 21h  
;New line feed:10
    mov dx,10
    mov ah,2
    int 21h 
;Carriage return:13
    mov dx,13 
    mov ah,2
    int 21h
    lea dx,str2
    mov ah,9
    int 21h
    mov ah,4ch
    int 21h
    main endp
End main