.model small
 .stack 100h
 
.data
 ; declare variables 
 mode db ? 
 balance db ?
  account_number db ?
; declare strings 
welcome_message db "Welcome to the ATM!", 13, 10, 0
menu_message db "1. Check Balance",13, 10,"2. Withdraw Cash", 13, 10,"3. Deposit Money",13, 10, "4. Exit",13, 10, 0
 balance_prompt db "Enter your account number: ", 0
 amount_prompt db "Enter the amount you want to withdraw: ", 0
 deposit_prompt db "Enter the amount you want to deposit: ", 0
do_another_transaction_prompt db "Do you want to do another transaction?(y/n):$ ", 0
.code ; main procedure 
atm_machine proc
 ; initialize variables
 mov mode,0
mov balance,0 
mov account_number,0
; display welcome message
 mov dx, offset welcome_message
  mov ah, 09h
int 21h
; display menu of options 
mov dx, offset menu_message
 mov ah, 09h 
 int 21h
; get mode from user 
mov ah, 01h
 int 21h 
 mov mode, al
; get account number from user 
mov dx, offset balance_prompt
 mov ah, 09h
int 21h 
mov ah, 01h
 int 21h
  mov account_number, al
; start ATM machine
 cmp mode, 1
 je check_balance
 cmp mode, 2
 je withdraw_cash
 cmp mode, 3  
 je deposit_money 
 ; do nothing if mode is invalid
jmp end_atm_machine
; check balance 
check_balance:
 ; get balance from database 
mov ah, 02h
mov al, account_number
 int 21h 
 mov balance, al
  ; display balance to user
mov dx, offset balance
 mov ah, 09h 
 int 21h
  jmp end_atm_machine
; withdraw cash 
withdraw_cash:
 ; get amount from user
  mov dx, offset amount_prompt
   mov ah, 09h  
   int 21h  
   mov ah, 01h  
   int 21h  
   sub balance, al 
   ;update balance in database
    mov ah, 03h 
    mov al, account_number 
    mov bl, al
int 21h 
; display balance to user
 mov dx, offset balance
  mov ah, 09h
   int 21h
jmp end_atm_machine

; deposit money
 deposit_money:
  ; get amount from user 
  mov dx, offset deposit_prompt 
  mov ah, 09h
   int 21h 
   mov ah, 01h
    int 21h
     add balance, al 
;update balance in database
 mov ah, 04h
  mov al, account_number 
  mov bl, al
int 21h 
; display balance to user
 mov dx, offset balance
  mov ah, 09h 
  int 21h
jmp end_atm_machine
; end ATM machine 
end_atm_machine: 
; ask the user if they want to do another transaction
 mov dx, offset do_another_transaction_prompt
  mov ah,09h 
  int 21h 
  ; get user input 
  mov ah, 01h 
  int 21h 
  ; check if user wants to do another transaction
   cmp al, 'y' 
   je atm_machine 
   ; exit the program 
   mov ah, 4ch
  int 21h
   atm_machine endp
    end