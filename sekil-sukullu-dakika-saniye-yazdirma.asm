data segment 
    
    zero    db '     000000000     ', 10
            db '   0000000000000   ', 10
            db ' 00000000000000000 ', 10
            db '0000000000000000000', 10
            db '00000000   00000000', 10
            db '0000000     0000000', 10
            db '0000000     0000000', 10
            db '0000000 000 0000000', 10
            db '0000000 000 0000000', 10
            db '0000000     0000000', 10
            db '0000000     0000000', 10
            db '00000000   00000000', 10 
            db '0000000000000000000', 10
            db ' 00000000000000000 ', 10
            db '   0000000000000   ', 10
            db '     000000000     ', 10, '$'
    
    
    one db '  1111111   ', 10
        db ' 11111111   ', 10
        db '111111111   ', 10
        db '111111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '   111111   ', 10
        db '111111111111', 10
        db '111111111111', 10
        db '111111111111', 10, '$'
    
 
    two db ' 222222222222222    ', 10
        db '222222222222222222  ', 10
        db '2222222222222222222 ', 10
        db '2222222     2222222 ', 10
        db '            2222222 ', 10
        db '            2222222 ', 10
        db '         222222222  ', 10
        db '    2222222222222   ', 10
        db '  2222222222222     ', 10
        db ' 22222222222        ', 10
        db '2222222             ', 10
        db '2222222             ', 10
        db '2222222       222222', 10
        db '22222222222222222222', 10
        db '22222222222222222222', 10
        db '22222222222222222222', 10, '$'
    
  
    three db ' 3333333333333333   ', 10
          db '3333333333333333333 ', 10
          db '33333333333333333333', 10
          db '3333333     33333333', 10
          db '            33333333', 10
          db '            33333333', 10
          db '    333333333333333 ', 10
          db '    33333333333333  ', 10
          db '    333333333333333 ', 10
          db '            33333333', 10
          db '            33333333', 10
          db '            33333333', 10
          db '3333333     33333333', 10
          db '33333333333333333333', 10
          db '3333333333333333333 ', 10
          db ' 3333333333333333   ', 10, '$'
          
    four db '       444444444', 10
         db '      4444444444  ', 10
         db '     44444444444  ', 10
         db '    444444444444  ', 10
         db '   444444 444444  ', 10
         db '  444444  444444  ', 10
         db ' 444444   444444  ', 10
         db '444444444444444444', 10
         db '444444444444444444', 10
         db '444444444444444444', 10
         db '          444444  ', 10
         db '          444444  ', 10
         db '          444444  ', 10
         db '        4444444444', 10
         db '        4444444444', 10
         db '        4444444444', 10, '$'
         
    five db '555555555555555555 ', 10
         db '555555555555555555 ', 10
         db '555555555555555555 ', 10
         db '555555555555555555 ', 10
         db '5555555            ', 10
         db '5555555            ', 10
         db '5555555555555555   ', 10
         db '55555555555555555  ', 10
         db '555555555555555555 ', 10
         db '            5555555', 10
         db '            5555555', 10
         db '5555555     5555555', 10
         db '5555555555555555555', 10
         db ' 55555555555555555 ', 10
         db '   5555555555555   ', 10
         db '     555555555     ', 10, '$'
         
    six db '         66666666  ', 10
        db '        66666666   ', 10
        db '       66666666    ', 10
        db '      66666666     ', 10
        db '     66666666      ', 10
        db '    66666666       ', 10
        db '   66666666        ', 10
        db '  6666666666666    ', 10
        db ' 6666666666666666  ', 10
        db '666666666666666666 ', 10
        db '6666666     6666666', 10
        db '6666666     6666666', 10
        db '6666666666666666666', 10
        db ' 66666666666666666 ', 10
        db '   6666666666666   ', 10
        db '     666666666     ', 10, '$'
        
        
    seven db '777777777777777777777', 10
          db '777777777777777777777', 10
          db '777777777777777777777', 10
          db '777777777777777777777', 10
          db '           777777777 ', 10
          db '          777777777  ', 10
          db '         777777777   ', 10
          db '        777777777    ', 10
          db '       777777777     ', 10
          db '      777777777      ', 10
          db '     777777777       ', 10
          db '    777777777        ', 10
          db '   777777777         ', 10
          db '  777777777          ', 10
          db ' 777777777           ', 10
          db '777777777            ', 10, '$'
          
          
    eight db '     888888888     ', 10
          db '   8888888888888   ', 10
          db ' 88888888888888888 ', 10
          db '8888888888888888888', 10
          db '8888888     8888888', 10
          db '8888888     8888888', 10
          db ' 88888888888888888 ', 10
          db '  888888888888888  ', 10
          db ' 88888888888888888 ', 10
          db '8888888     8888888', 10
          db '8888888     8888888', 10
          db '8888888     8888888', 10
          db '8888888888888888888', 10
          db ' 88888888888888888 ', 10
          db '   8888888888888   ', 10
          db '     888888888     ', 10, '$'
          
    nine db '     9999999999     ', 10
         db '   99999999999999   ', 10
         db ' 999999999999999999 ', 10
         db '99999999999999999999', 10
         db '99999999     9999999', 10
         db '99999999     9999999', 10
         db ' 9999999999999999999', 10
         db '  999999999999999999', 10
         db '    999999999999999 ', 10
         db '         999999999  ', 10
         db '        999999999   ', 10
         db '       999999999    ', 10
         db '      999999999     ', 10
         db '     999999999      ', 10
         db '    999999999       ', 10
         db '   999999999        ', 10, '$' 
    
    line db 0
    column db 0
    page_number db 0
    digit_unit db 0
    digit_ten db 0
    time db 0
    minute db 0
    second db 0
    current_minute db 0
    current_second db 0
    
    digit_pointer dw 10 dup(?)
    
ends

stack segment
    dw 128 dup(?)
ends

extra segment
ends

code segment
start:
    mov ax, data
    mov ds, ax
    mov ax, extra
    mov es, ax
    
    call set_digit_pointer
    
main_loop:
    call load_time
    
    mov al, current_second
    cmp second, al
    jne do_print
    
    mov al, current_minute
    cmp minute, al
    jne do_print
    
    jmp main_loop
    
    do_print:
    mov al, current_minute
    mov minute, al
    mov al, current_second
    mov second, al
    
    call clear_screen
    call print
    jmp main_loop
    
    jmp fim
        
print:
    ;print minute
    mov al, current_minute
    mov time, al
    call parse_time
    
    ;hour ten
    mov al, digit_ten
    call set_digit
    
    mov column, 0
    call print_digit
    
    mov al, digit_unit
    call set_digit
    
    mov column, 20
    call print_digit
    
    ;print second
    mov al, current_second
    mov time, al
    call parse_time
    
    ;minute ten
    mov al, digit_ten
    call set_digit
    
    mov column, 40
    call print_digit
    
    mov al, digit_unit
    call set_digit  
    
    mov column, 60
    call print_digit
    
    ret

clear_screen:
    mov ah, 0fh
    int 10h
    
    mov ah, 0
    int 10h
    
    ret

load_time:
    mov ah, 2Ch
    int 21h
    
    mov current_minute, cl
    mov current_second, dh
    
    ret
        
set_digit_pointer:
    mov digit_pointer[0], offset zero 
    mov digit_pointer[2], offset one
    mov digit_pointer[4], offset two
    mov digit_pointer[6], offset three
    mov digit_pointer[8], offset four
    mov digit_pointer[10], offset five
    mov digit_pointer[12], offset six
    mov digit_pointer[14], offset seven
    mov digit_pointer[16], offset eight
    mov digit_pointer[18], offset nine
    
    ret
     
set_digit:
    mov bl, 2
    mul bl
    
    mov si, ax
    mov si, digit_pointer[si]
    
    ret

parse_time:
    mov ah, 0
    mov al, time
    mov bl, 10
    div bl
    mov digit_ten, al
    mov digit_unit, ah
    
    ret

print_digit:
    mov line, 4
    call set_cursor
    
    print_main:
    mov dh, 0
    mov dl, ds:[si]
    
    cmp dx, '$'
    je end_print
    
    cmp dx, 10
    je new_line
    
    mov ah, 2
    int 21h
    
    inc si
    jmp print_main
    
    new_line:
    inc line
    call set_cursor
    inc si
    jmp print_main 
    
    end_print:
    ret

set_cursor:
    mov ah, 2 
    mov bh, page_number
    mov dh, line
    mov dl, column
    int 10h
    
    ret

fim:
    mov ax, 4c00h
    int 21h

code ends

end start
        
                                           
                                         
        