MOV CX, 6
MOV AX, array[0]   ; En buyuk sayiyi AX'te tutmak icin

BuyuguBul:
    ADD BX, 2             ; Bir sonraki elemana gecç
    CMP AX, array[BX]     ; AX'teki sayiyla bir sonraki elemani karsilastir
    JAE devam             ; AX daha buyuk veya esitse devam et
    MOV AX, array[BX]     ; AX'i guncelle

devam:
    LOOP BuyuguBul

RET

array dw 2245, 4425, 40008, 22012, 34209, 36377