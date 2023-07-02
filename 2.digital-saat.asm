DATA SEGMENT
    sstime DB 'system time', 0AH, '$'
DATA ENDS

STACK SEGMENT
    DB 128 DUP(?)
STACK ENDS

CODE SEGMENT
	ASSUME CS:CODE, SS:STACK, DS:DATA  
	
START:  

    call clear_screen  
    
clock:  

    mov ax,DATA
    mov ds,ax
    lea dx, sstime
    mov AH,09H
    int 21H  

system_time:  

    call clear_screen 
    
    op_one_loop:
    
        call cursor_reset
        call get_system_time
        call print_time
        call one_second
        
        mov ah, 01H
        int 16H    
        
        jz op_one_loop 
        
        mov ah, 00H
        int 16H     
        
        cmp al, 1BH
        jz START
    

get_system_time:

    mov ah,2CH    ; sistem zamanini oku
    int 21H 
    
    ret


print_time:

    push ax
    push bx
    push dx 
    
    mov al,ch   
    aam          
    mov bx,ax
    call DISP 
    
    mov dl,':'
    mov ah,02H   
    int 21H 
    
    mov al,cl   
    aam
    mov bx,ax
    call DISP 
    
    mov dl,':'   
    mov ah,02H
    int 21H 
    
    mov al,dh  
    aam
    mov bx,ax
    call DISP 
    
    pop dx
    pop bx
    pop ax  
    
    ret
    

one_second:
    
    push ax
    push cx
    push dx  
    
    mov cx, 0fh
    mov dx, 4240h
    mov ah, 86h
    int 15h
    
    pop dx
    pop cx
    pop ax 
    
    ret


cursor_reset:

    push ax
    push bx
    push dx  
    
    mov bh, 0
    mov dh, 0
    mov dl, 0
    mov ah, 2
    int 10H 
    
    pop dx
    pop bx
    pop ax
    
    ret

clear_screen: 

    push ax  
    
    mov ah,15
    int 10h  
    
    mov ah,0
    int 10h
    
    pop ax
    
    ret


DISP PROC   
    
    push ax
    push dx 
    
    mov dl,BH 
    add dl,30H   
    mov ah,02H   
    int 21H   
    
    mov dl,bl    
    add dl,30H    
    mov ah,02H    
    int 21H  
    
    pop dx
    pop ax
    
    ret 
    
DISP ENDP


CODE ENDS
END START