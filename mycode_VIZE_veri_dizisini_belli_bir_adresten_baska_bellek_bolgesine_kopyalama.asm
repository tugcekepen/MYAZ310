MOV SI, OFFSET dizi
MOV DI, 1000h
MOV CX, 6

DONGU:
    MOV AX, [SI]
    MOV [DI], AX
    ADD SI, 2
    ADD DI, 2
    LOOP DONGU
    
RET
dizi dw 6,5,4,3,2,1