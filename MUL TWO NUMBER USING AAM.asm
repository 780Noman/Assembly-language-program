;PROGRAM TO MUL TWO NUMBER

.model small
.stack 100h
.data
msg1 db 'Enter a first Number:$'
msg2 db 'Enter a Second Number:$'   
output db 'Result is :$'
n1 db ?
n2 db ?
.code
main proc
    mov ax,@data
    mov ds,ax
    lea dx,msg1
    mov ah,09h
    int 21h  
    mov ah,1
    int 21h  
      
    sub al,48
    mov n1,al 

    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h 
    
   lea dx,msg2
    mov ah,09h
    int 21h   
      
    
    mov ah,1
    int 21h 
    sub al,48
   ; mov n2,al
    mul n1 
    AAM 
    MOV CH,AH
    MOV CL,AL
    mov dl,10
    mov ah,2
    int 21h
    mov dl,13
    mov ah,2
    int 21h 
    
    lea dx,output
    mov ah,9
    int 21h
   ; mul n1
    MOV DL,CH
    add DL,48
    ;mov dl,al
    mov ah,2
    int 21h  
     MOV DL,CL
    add DL,48
    ;mov dl,al
    mov ah,2
    int 21h
      
     mov ah,4ch
    int 21h 
    main endp
   
end main