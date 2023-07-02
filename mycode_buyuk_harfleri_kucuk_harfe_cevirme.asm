MOV SI, OFFSET kelime  
dongu:
    MOV AL, [SI]         
    CMP AL, 'A'      
    JB devam
    CMP AL, 'Z'   
    JA devam

    ADD AL, 32           
    MOV [SI], AL    

devam:
    ADD SI, 1            
    CMP BYTE PTR [SI], 0
    JNZ dongu 
    
RET
kelime db 'YAZILIM'