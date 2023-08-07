.model small
.stack 100h
.data
arr1 db 'a','b','c'
.code    
main proc
mov cx,3
mov ax,@data
mov ds,ax
lea si,arr1
L:   
mov dl,[si]
mov ah,2
int 21h
inc si
loop L
mov ah,4ch
int 21h
main endp
end main