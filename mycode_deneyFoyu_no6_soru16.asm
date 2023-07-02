MOV BX,0
MOV CX,5

K1:INC BX
    PUSH CX
    MOV CX,5
    
    K2:INC BX
        PUSH CX
        MOV CX,5
    
        K3:ADD BX,1
        LOOP K3

    POP CX

    LOOP K2

POP CX

LOOP K1


RET
