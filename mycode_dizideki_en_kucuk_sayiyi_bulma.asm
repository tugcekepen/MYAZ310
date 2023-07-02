MOV CX, 6
MOV AX, array[0]   ; En kucuk sayiyi AX'te tutmak icin

KucuguBul:
    ADD BX, 2             ; Bir sonraki elemana gecç
    CMP AX, array[BX]     ; AX'teki sayiyla bir sonraki elemani karsilastir
    JBE devam             ; AX daha buyuk veya esitse devam et
    MOV AX, array[BX]     ; AX'i guncelle

devam:
    LOOP KucuguBul

RET

array dw 2245, 4425, 40008, 22012, 34209, 36377