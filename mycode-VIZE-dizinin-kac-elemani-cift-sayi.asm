MOV SI, 0
MOV CX, 6
MOV BX, 0

dongu:
    MOV AL, [sayilar+SI]
    AND AL, 1
    JZ arti
    JMP diger 

arti:
    INC BX

diger:
    INC SI
    LOOP dongu   
    
RET
sayilar db 2,5,3,8,10,12
