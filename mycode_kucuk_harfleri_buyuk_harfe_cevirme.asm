

MOV SI, OFFSET kelime  ; 0100:001A

CONVERT_LOOP:
    MOV AL, [SI] ;Bir sonraki karakteri AL'ye yukle
    CMP AL, 'a'  ;Karakter 'a' dan kucukse buyuk harfe cevir
    JB CONTINUE
    CMP AL, 'z'  ;Karakter 'z' den buyukse buyuk harfe cevir
    JA CONTINUE

    SUB AL, 32   ;Kucuk harfi buyuk harfe cevir
    MOV [SI], AL ;Karakteri guncelle

CONTINUE:
    ADD SI, 1            ;Bir sonraki karaktere gec
    CMP BYTE PTR [SI], 0 ;Son karaktere gelinmediyse donguyu tekrarla
    JNZ CONVERT_LOOP

RET
kelime db 'yazilim'   ; 79 61 7A 69 6C 69 6D
                      ; 59 41 5A 49 4C 49 4D