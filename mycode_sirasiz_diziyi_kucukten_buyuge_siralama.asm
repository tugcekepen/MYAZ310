MOV CX, 16

DisDongu:
    MOV SI, OFFSET array
    
    Dongu:
        MOV AX, [SI]
        CMP [SI+2], 9090H
        JE DisDongu
        CMP AX, [SI+2]
        JA Degistir
        JNA Diger        
    
    Diger:
        ADD SI, 2
        LOOP Dongu
        
    CMP CX, 0
    JE END        
        
    Degistir:
        XCHG AX, [SI+2]
        MOV [SI], AX
        ADD SI, 2
        LOOP Dongu

END: RET
array DW 3, 9, 15, 6