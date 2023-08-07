.model small
.stack 100h

.data
temp db 0
msg db 10, 13, "Temperature: $"

.code
main proc
    mov ax, @data
    mov ds, ax

    ; Initialize temperature
    mov temp, 25

    ; Display initial temperature
    mov ah, 9
    lea dx, msg
    int 21h

    ; Control loop
    mov ah, 1
    int 21h
    cmp al, 'c' ; Check if 'c' key is pressed
    je cooling
    cmp al, 'h' ; Check if 'h' key is pressed
    je heating
    jmp main ; Repeat loop if no valid key is pressed

cooling:
    ; Decrease temperature by 1
    dec temp
    jmp display

heating:
    ; Increase temperature by 1
    inc temp
    jmp display

display:
    ; Display current temperature
    mov ah, 9
    lea dx, msg
    int 21h

    ; Display temperature value
    mov dl, temp
    add dl, '0'
    mov ah, 2
    int 21h

    jmp main

main endp
end main