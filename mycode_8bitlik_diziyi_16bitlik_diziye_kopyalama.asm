LEA bx, dizi2
lea si, dizil  

MOV CX, 5
mov si, 0    

DONGU:      

    MOV AL, dizil[si]
    MOV [BX], AL
    
    INC SI
    INC BX
    INC BX 
    
LOOP DONGU   



RET
dizil db 1,2,3,4,5
dizi2 dw 5 dup(0)