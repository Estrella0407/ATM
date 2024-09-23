
.MODEL SMALL
.STACK 100
.DATA                                                                                        


    LOGO                                DB 13,10," _____                                                                   _____ "
                                        DB 13,10,"( ___ )-----------------------------------------------------------------( ___ )"
                                        DB 13,10," |   |                                                                   |   | "
                                        DB 13,10," |   |        d888        d888     888888b.                              |   | "
                                        DB 13,10," |   |       d8P88       d8888     888  '88b                    888      |   | "
                                        DB 13,10," |   |      d8P888      d8P888     888  .88P                    888      |   | "
                                        DB 13,10," |   |     d8P 888     d8P 888     8888888K.  .d8888b. .d8888b. 888  888 |   | "
                                        DB 13,10," |   |    d8P  888    d8P  888     888  'Y88b d8'  '8b 888  888 888 .88P |   | "
                                        DB 13,10," |   |   d88888888   d88888888     888    888 88888888 888  888 888888K  |   | "
                                        DB 13,10," |   |  d88P   888  d88P   888     88888888P  88d  b88 888  888 888 '88b |   | "
                                        DB 13,10," |___|                                                                   |___| "
                                        DB 13,10,"(_____)-----------------------------------------------------------------(_____)",'$'


    LOGIN_MENU_MSG                      DB 13,10,23 DUP (" "),201,30 DUP (205),187
                                        DB 13,10,23 DUP (" "),186,7 DUP (" "),"CHOOSE AN ACTION",7 DUP (" "),186                        
                                        DB 13,10,23 DUP (" "),200,30 DUP (205),188
                                        DB 13,10,23 DUP (" "),186," 1 ",186," LOGIN                    ",186
                                        DB 13,10,23 DUP (" "),186," 2 ",186," QUIT                     ",186
                                        DB 13,10,23 DUP (" "),200,30 DUP (205),188
                                        DB 13,10,23 DUP (" "),"ENTER CHOICE > $"    

   ;PASSWORD
    PASSWORD                            DB '1234$'
    PASSWORD_IN                         DB 4 DUP('$')
    ENTER_PASS_MSG                      DB 13,10,23 DUP (" "),"ENTER PASSWORD: $"
    INCORRECT_PASSWORD                  DB 0,22 DUP (" "),"INCORRECT PASSWORD. PLEASE TRY AGAIN.$"


    ERROR_MSG                           DB 0,15 DUP (" "),"PLEASE ENTER A VALID CHOICE! $"

    ERROR_RANGE_MSG                     DB 13,10,17 DUP (" "),"      > > PLEASE SELECT THE VALID INDEX","$"
    INPUT_ERROR_CONTINUE_MSG            DB 13,10,25 DUP (' '), "> PRESS ANY KEY TO CONTINUE...$"

    MENU_STR                            DB 13,10,28 DUP (" "),201,28 DUP (205),187
                                        DB 13,10,28 DUP (" "),186,"     WELCOME TO AA BANK     ",186
                                        DB 13,10,28 DUP (" "),200,28 DUP (205),188
                                        DB 13,10," "
                                        DB 13,10,16 DUP (" "),218,50 DUP (196),191
                                        DB 13,10,16 DUP (" "),179,17 DUP (" "),"CHOOSE AN ACTION",17 DUP (" "),179              
                                        DB 13,10,16 DUP (" "),195,50 DUP (196),180
                                        DB 13,10,16 DUP (" "),179,5 DUP (" ")," 1 ",5 DUP (" "),179," CHECK BALANCE",22 DUP (" "),179
                                        DB 13,10,16 DUP (" "),179,5 DUP (" ")," 2 ",5 DUP (" "),179," DEPOSIT      ",22 DUP (" "),179
                                        DB 13,10,16 DUP (" "),179,5 DUP (" ")," 3 ",5 DUP (" "),179," WITHDRAW     ",22 DUP (" "),179
                                        DB 13,10,16 DUP (" "),179,5 DUP (" ")," 4 ",5 DUP (" "),179," FUND TRANSFER",22 DUP (" "),179
                                        DB 13,10,16 DUP (" "),179,5 DUP (" ")," 0 ",5 DUP (" "),179," EXIT PROGRAM ",22 DUP (" "),179
                                        DB 13,10,16 DUP (" "),192,50 DUP (196),217
                                        DB 13,10,16 DUP (" "),"ENTER CHOICE > $"


    BALANCE                             DW 2000
    BALANCE_BUFFER                      DB 4 DUP (0)    ; Buffer to store the 4 digits
    UPDATE_BALANCE                      DW 0            ; To store the final result after calculation
    TEN                                 DW 10
   
    BALANCE_MSG                         DB 13,10,16 DUP (" "),"YOUR BALANCE IS: RM $"
    WITHDRAWAL_CHOICE                   DB 13,10,16 DUP (" "),"ENTER THE AMOUNT YOU WANT TO WITHDRAW"
                                        DB 13,10,16 DUP (" "),"(TYPE '0' TO FILL IN IF LESS THEN 4 DIGITS)"
                                        DB 13,10,16 DUP (" "),"> RM $"
    UP_WITH_BALANCE_MSG                 DB 13,10,16 DUP (" "),"YOUR BALANCE AFTER WITHDRAWAL: RM $"
    DEPOSITION_CHOICE                   DB 13,10,16 DUP (" "),"ENTER THE AMOUNT YOU WANT TO DEPOSIT"
                                        DB 13,10,16 DUP (" "),"(TYPE '0' TO FILL IN IF LESS THEN 4 DIGITS)"
                                        DB 13,10,16 DUP (" "),"> RM $"
    UP_DEPO_BALANCE_MSG                 DB 13,10,16 DUP (" "),"YOUR BALANCE AFTER DEPOSIT: RM $"
    TRANSFER_CHOICE                     DB 13,10,16 DUP (" "),"ENTER THE AMOUNT YOU WANT TO TRANSFER"
                                        DB 13,10,16 DUP (" "),"(TYPE '0' TO FILL IN IF LESS THEN 4 DIGITS)"
                                        DB 13,10,16 DUP (" "),"> RM $"
    RECIPIENT_CHOICE                    DB 13,10,16 DUP (" "),"ENTER RECIPIENT NAME (MAXIMUM 6 CHARACTERS)"
                                        DB 13,10,16 DUP (" "),"> $"
    WITHDRAW_REJECT                     DB 13,10,16 DUP (" "),"WITHDRAWAL REJECTED. THE AMOUNT EXCEEDED BALANCE. $"
    CONT_EXIT_TRANSFER_MSG              DB 13,10,16 DUP (" "),"1 = TRANSFER AGAIN "
                                        DB 13,10,16 DUP (" "),"2 = BACK TO MAIN MENU "
                                        DB 13,10,16 DUP (" "),"0 = EXIT PROGRAM $"
    TRANSACTION_CONFIRM_MSG             DB 13,10,16 DUP (" "),"1 = CONFIRM TRANSACTION"
                                        DB 13,10,16 DUP (" "),"0 = EXIT TO MAIN MENU $"
    TRANSACTION_COMPLETE_MSG            DB 13,10,16 DUP (" "),"TRANSACTION COMPLETED. $"

    TRANSFER_RECIPIENT                  DB 7            ; Maximum buffer size (6 characters + null terminator)
                                        DB 0
                                        DB 6 DUP ('$')


    UP_TRANSFER_MSG                     DB 13,10,16 DUP (" "),"YOU HAVE SUCCESFULLY TRANSFERRED RM $"
    UP_RECIPIENT_MSG                    DB 13,10,16 DUP (" "),"TO $"


    CONTINUE_EXIT_MSG                   DB 13,10,16 DUP (" "), "PRESS 1 TO BACK TO MAIN MENU"
                                        DB 13,10,16 DUP (" "), "> PRESS ANY KEY TO EXIT PROGRAM $"


.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    CALL CLEAR_SCREEN
LOGIN:
    MOV AH,09H
    LEA DX,LOGO
    INT 21H
    LEA DX,LOGIN_MENU_MSG
    INT 21H
    
    MOV AH,01H ; READ INPUT
    INT 21H
    
    CMP AL,'1'
    JE PASSWORD_VERIFY
    CMP AL,'2'
    JE EXIT
    JMP RANGE_ERROR

PASSWORD_VERIFY:
    CALL PASSWORD_INPUT

RANGE_ERROR:
    MOV AH,09H
    LEA DX,ERROR_RANGE_MSG
    INT 21H
    CALL PRESS_TO_CONTINUE
    CALL CLEAR_SCREEN
    JMP LOGIN

SELECTMENU:
    CALL MENU
EXIT:
    ; Exit program
    MOV AH, 4CH
    INT 21H

MAIN ENDP

CLEAR_SCREEN PROC
    MOV AX,03H
    INT 10H
    RET
CLEAR_SCREEN ENDP

NEWLINE PROC
    MOV AH, 02H
    MOV DL, 0DH     ; Carriage return
    MOV DL, 0AH     ; Line feed
    INT 21H
    RET
NEWLINE ENDP

PRESS_TO_CONTINUE PROC
    MOV AX,0
    MOV AH,09H
    LEA DX,INPUT_ERROR_CONTINUE_MSG ;PRINT PRESS ANY KEY TO CONTINUE
    INT 21H
    MOV AH,07H ;NO ECHO INPUT CHARACTER
    INT 21H
    RET
PRESS_TO_CONTINUE ENDP

PASSWORD_INPUT PROC
    MOV AH,09H
    LEA DX,ENTER_PASS_MSG
    INT 21H

    ;Input password
    MOV CX,4
    MOV SI,0
INPUT_PASS:    
    MOV AH,08H             ; Read password character without echo
    INT 21H    
    MOV PASSWORD_IN[SI],AL  ; Store input character
    MOV AH,02H             ; Echo a '*' on the screen to hide the actual password
    MOV DL,'*'
    INT 21H
    INC SI
    LOOP INPUT_PASS

    ;COMPARE PASSWORD
    MOV CX,4
    MOV SI,0
    MOV DI,0
COMPARE:
    MOV AL,PASSWORD_IN[SI]
    MOV BL,PASSWORD[DI]
    CMP BL,AL
    JNE PASS_ERROR
    INC SI
    INC DI
    LOOP COMPARE

    ; If password correct
    CALL SELECTMENU
   
PASS_ERROR:
    CALL NEWLINE
    MOV AH,09H
    MOV BL,0004H
    MOV CX,60
    INT 10H

    MOV AH,09H
    LEA DX,INCORRECT_PASSWORD
    INT 21H
    JMP PASSWORD_INPUT
    RET

PASSWORD_INPUT ENDP

MENU PROC
    CALL CLEAR_SCREEN
    MOV AH,09H
    LEA DX,MENU_STR
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE BALANCE_MENU
    CMP AL,'2'
    JE DEPOSIT_MENU
    CMP AL,'3'
    JE WITHDRAW_MENU
    CMP AL,'4'
    JE TRANSFER_MENU
    CMP AL,'0'
    JE END_PROGRAM

    ;JMP ERROR_INPUT
    ERROR_INPUT:
    MOV AH,09H
    LEA DX,ERROR_RANGE_MSG
    INT 21H
    CALL PRESS_TO_CONTINUE
    CALL CLEAR_SCREEN
    JMP MENU

BALANCE_MENU:
    CALL CLEAR_SCREEN
    CALL CHECK_BALANCE
    CALL NEWLINE
    CALL CONTINUE_EXIT

DEPOSIT_MENU:
    CALL CLEAR_SCREEN
    CALL DEPOSIT
    CALL NEWLINE
    CALL CONTINUE_EXIT

WITHDRAW_MENU:
    CALL CLEAR_SCREEN
    CALL WITHDRAW
    CALL NEWLINE
    CALL CONTINUE_EXIT

TRANSFER_MENU:
    CALL CLEAR_SCREEN
    CALL FUND_TRANSFER
    CALL NEWLINE
    CALL CONTINUE_EXIT

END_PROGRAM:
    JMP EXIT

MENU ENDP


CHECK_BALANCE PROC
    ; Print message
    MOV AH,09H
    LEA DX,BALANCE_MSG
    INT 21H

    ; Load the 4-digit number
    MOV AX,BALANCE      ; AX = 2000
    CALL PRINT_NUMBER   ; Display balance
    RET
CHECK_BALANCE ENDP
   
DEPOSIT PROC
    ; Display the prompt
    MOV AH,09H
    LEA DX,DEPOSITION_CHOICE
    INT 21H

    CALL READ_DIGITS
    MOV AX,BALANCE
    ADD AX,UPDATE_BALANCE
    MOV BALANCE,AX
    
CONFIRM_DEPOSIT:
    MOV AH,09H
    LEA DX,TRANSACTION_CONFIRM_MSG
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE CONTINUE_DEPO
    CMP AL,'0'
	JE GOBACKTOMENU
	
RANGE_ERROR2:
	CALL NEWLINE
	MOV AH,09H
    LEA DX,ERROR_RANGE_MSG
    INT 21H
	CALL PRESS_TO_CONTINUE
	CALL NEWLINE
	JMP CONFIRM_DEPOSIT

GOBACKTOMENU:
	MOV AX,BALANCE
    SUB AX,UPDATE_BALANCE
    MOV BALANCE,AX
	MOV UPDATE_BALANCE,0
	JMP SELECTMENU

CONTINUE_DEPO:
    MOV AH,09H
    LEA DX,TRANSACTION_COMPLETE_MSG
    INT 21H

    ; Display the result message
    MOV AH,09H
    LEA DX,UP_DEPO_BALANCE_MSG
    INT 21H

    ; Convert the result to ASCII and display
    MOV AX,BALANCE      ; AX now holds the result
    
    CALL PRINT_NUMBER   ; Call procedure to print the number
    MOV UPDATE_BALANCE,0
    RET

DEPOSIT ENDP

WITHDRAW PROC
    ; Display the prompt
    MOV AH,09H
    LEA DX,WITHDRAWAL_CHOICE
    INT 21H
   
    CALL READ_DIGITS

    ; Compare withdrawal amount with the balance
    MOV AX,BALANCE          ; Load the current balance into AX
    MOV BX,UPDATE_BALANCE
    CMP AX,BX               ; Compare balance with the amount to withdraw
    JAE WITHDRAW_ALLOWED    ; If AX >= UPDATE_BALANCE, continue with withdrawal

INSUFFICIENT_FUNDS:
    MOV BALANCE,AX
    MOV UPDATE_BALANCE,0
    ; Display error message for insufficient balance
    MOV AH,09H
    LEA DX,WITHDRAW_REJECT     
    INT 21H
    JMP EXIT_WITHDRAW

WITHDRAW_ALLOWED:

 ; Balance subtract the withdrawal amount (UPDATE_BALANCE)
    SUB AX,UPDATE_BALANCE
    MOV BALANCE,AX        ; Update the balance

CONFIRM_WITHDRAW:
    MOV AH,09H
    LEA DX,TRANSACTION_CONFIRM_MSG
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE CONTINUE_WITHDRAW
    CMP AL,'0'
	JE GOBACKTOMENU2
    
RANGE_ERROR3:
	CALL NEWLINE
	MOV AH,09H
    LEA DX,ERROR_RANGE_MSG
    INT 21H
	CALL PRESS_TO_CONTINUE
	CALL NEWLINE
	JMP CONFIRM_WITHDRAW

 GOBACKTOMENU2:
	MOV AX,BALANCE
    ADD AX,UPDATE_BALANCE
    MOV BALANCE,AX
	MOV UPDATE_BALANCE,0
	JMP SELECTMENU

CONTINUE_WITHDRAW:
    ; Display the result message
    MOV AH,09H
    LEA DX,TRANSACTION_COMPLETE_MSG
    INT 21H
    LEA DX,UP_WITH_BALANCE_MSG
    INT 21H

    ; Convert the result to ASCII and display
    MOV AX,BALANCE        ; AX now holds the updated balance
    CALL PRINT_NUMBER     ; Call procedure to print the balance
    MOV UPDATE_BALANCE,0  ; Reset the temporary value

EXIT_WITHDRAW:
    RET

WITHDRAW ENDP

FUND_TRANSFER PROC

    ; Display recipient name input prompt
    MOV AH,09H
    LEA DX,RECIPIENT_CHOICE
    INT 21H

    ; Input recipient name
    MOV AH,0AH
    LEA DX,TRANSFER_RECIPIENT
    INT 21H

    ; Display the transfer amount prompt
    MOV AH,09H
    LEA DX,TRANSFER_CHOICE
    INT 21H
   
    ; Read the transfer amount
    CALL READ_DIGITS

    ; Check if the balance is enough for the transfer
    MOV AX,BALANCE        ; Load current balance
    CMP AX,UPDATE_BALANCE ; Compare balance with transfer amount
    JAE SUFFICIENT_FUNDS  ; If balance is enough, proceed with transfer

    ; If balance is insufficient
    MOV BALANCE,AX
    MOV UPDATE_BALANCE,0
    MOV AH,09H
    LEA DX,WITHDRAW_REJECT      ; Display error message
    INT 21H
    CALL TRANSFER_CONTINUE
    RET

SUFFICIENT_FUNDS:
    ; Subtract the transfer amount from balance
    SUB AX,UPDATE_BALANCE
    MOV BALANCE,AX

CONFIRM_TRANSFER:
    MOV AH,09H
    LEA DX,TRANSACTION_CONFIRM_MSG
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE CONTINUE_TRANSFER
    CMP AL,'0'
    JE GOBACKTOMENU3
    
RANGE_ERROR4:
	CALL NEWLINE
	MOV AH,09H
    LEA DX,ERROR_RANGE_MSG
    INT 21H
    CALL PRESS_TO_CONTINUE
	CALL NEWLINE
	JMP CONFIRM_TRANSFER

 GOBACKTOMENU3:
	MOV AX,BALANCE
    ADD AX,UPDATE_BALANCE
    MOV BALANCE,AX
	MOV UPDATE_BALANCE,0
	JMP SELECTMENU

    CONTINUE_TRANSFER:
    MOV AH,09H
    LEA DX,TRANSACTION_COMPLETE_MSG
    INT 21H
    ; Display the successful transfer message
    MOV AH,09H
    LEA DX,UP_TRANSFER_MSG
    INT 21H

    ; Convert the transfer amount to ASCII and display
    MOV AX,UPDATE_BALANCE   ; AX holds the transfer amount
    CALL PRINT_NUMBER       ; Call procedure to print the number
    MOV UPDATE_BALANCE,0    ; Reset the transfer amount

    ; Display recipient message
    MOV AH,09H
    LEA DX,UP_RECIPIENT_MSG
    INT 21H

    ; Display recipient name
    CALL DISPLAY_NAME

    RET
FUND_TRANSFER ENDP

READ_DIGITS PROC
; Read 4-digit number
    MOV CX,4    ; We need to read 4 characters
    MOV SI,0    ; SI points to BALANCE_BUFFER
READ_LOOP:
    MOV AH, 01H
    INT 21H
    SUB AL,'0'                  ; Convert ASCII character to integer
    MOV BALANCE_BUFFER[SI],AL   ; Store digit in buffer
    INC SI                      ; Move to next position in buffer
    LOOP READ_LOOP

; Combine digits together to form a 4 digit number
    MOV CX,4        ; We need to read 4 characters
    MOV SI,3        ; SI points to last digit in BALANCE_BUFFER
    MOV BX,1
COMBINE_LOOP:
    MOV AH,0
    MOV AL,BALANCE_BUFFER[SI]   ; Move accumulated number to AX
    MUL BX                      ; Multiplier
    ADD UPDATE_BALANCE,AX       ; Add current digit
    MOV AX,BX          
    MUL TEN                     ; AX = AX * 10
    MOV BX,AX                   ; Store Multiplier back in BX
    DEC SI
    LOOP COMBINE_LOOP

    RET
READ_DIGITS ENDP

PRINT_NUMBER PROC
    MOV CX,3
    MOV SI,0
   
    PUSH AX
CONVERT_LOOP:
    POP AX
    MOV DX,0
    DIV TEN
    PUSH DX
    PUSH AX
    LOOP CONVERT_LOOP
   
    MOV CX,4
PRINT_DIGITS:
    POP DX              ; Get the digit
    MOV AH,02H
    MOV DH,0
    ADD DL,'0'          ; Convert to ASCII
    INT 21H
    LOOP PRINT_DIGITS

    RET
PRINT_NUMBER ENDP


DISPLAY_NAME PROC
    MOV SI,OFFSET TRANSFER_RECIPIENT
    ADD SI,2    ; Skip the first two bytes

    PRINT_NAME:
    MOV DL,[SI]         ; Load each character from TRANSFER_RECIPIENT
    CMP DL,0DH          ; Check for Enter key (carriage return) to stop printing
    JZ DONE_PRINTING
    MOV AH,02H
    INT 21H
    INC SI              ; Move to the next character
    JMP PRINT_NAME      ; Repeat until all characters are printed
   
DONE_PRINTING:
    RET
DISPLAY_NAME ENDP

CONTINUE_EXIT PROC
    MOV AH,09H
    LEA DX,CONTINUE_EXIT_MSG
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE BACKTOMENU
    
    JMP EXITTHEPROGRAM

BACKTOMENU:
JMP SELECTMENU

EXITTHEPROGRAM:
JMP EXIT

	RET
CONTINUE_EXIT ENDP

TRANSFER_CONTINUE PROC

    MOV AH,09H
    LEA DX,CONT_EXIT_TRANSFER_MSG
    INT 21H

    MOV AH,01H
    INT 21H

    CMP AL,'1'
    JE TRANSFER
    CMP AL,'2'
    JE BACKMENU
    CMP AL,'0'
    JE END_TRANSFER

    TRANSFER:
        CALL CLEAR_SCREEN
        JMP FUND_TRANSFER

    BACKMENU:
        JMP SELECTMENU

    END_TRANSFER:
        JMP EXIT
    
    RET
TRANSFER_CONTINUE ENDP

END MAIN
