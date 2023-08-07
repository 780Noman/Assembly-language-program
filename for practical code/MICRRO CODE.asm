.model small
.stack 100h

.data
    message db 10, 13, 'Microwave Oven', 10, 13, '$'
    doorOpenMsg db 10, 13, 'Door is open! Please close the door.', 10, 13, '$'
    standbyMsg db 10, 13, 'Standby mode', 10, 13, '$'
    cookingCompleteMsg db 10, 13, 'Cooking complete. Enjoy your meal!', 10, 13, '$'
    timerCompleteMsg db 10, 13, 'Timer complete. Oven turned off.', 10, 13, '$'

.code


start:
    mov ax, @data
    mov ds, ax  
    
    mov dx,offset message
    mov ah,9
    int 21h

    ; Check if the door is closed
    mov ah, 01h
    int 21h
    cmp al, 'C'
    jne doorOpen

    ; Check if the oven is off
    cmp al, 'O'
    jne ovenOn

    ; Door closed and oven off, display standby message
    lea dx, standbyMsg
    mov ah, 09h
    int 21h
    jmp endProgram

doorOpen:
    ; Door is open, display door open message
    lea dx, doorOpenMsg
    mov ah, 09h
    int 21h
    jmp endProgram

ovenOn:
    ; Oven is on, check if the timer has reached the desired time (5 seconds)
    mov cx, 5000
    mov dx, 0000

timerLoop:
    inc dx
    cmp dx, cx
    jne timerLoop

    ; Timer complete, turn off the oven
    mov ah, 02h
    mov dl, 'F'
    int 21h

    ; Display timer complete message
    lea dx, timerCompleteMsg
    mov ah, 09h
    int 21h
    jmp endProgram

endProgram:
    ; Display final message
    lea dx, cookingCompleteMsg
    mov ah, 09h
    int 21h

    mov ah, 4Ch
    int 21h

end start