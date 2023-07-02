.model small
.stack 100h

.data
    message db "Samsun Universitesi$"
    length equ $ - message
    delay_count dw 500              ; Kaydirma hizi icin  gecikme sayaci

.code
    mov ax, @data
    mov ds, ax

    mov cx, length                  ; Kaydirma icin dongu sayaci

scroll:
    mov ah, 2                       ; Ekran temizleme islemi
    mov dl, 80                      ; Ekranin son sutununa konumlandir
    mov bh, 0                       ; Sayfa numarasi
    int 10h

    ; Kayan yaziyi ekrana yazdir
    mov dx, offset message          ; Yazdirilacak kelimenin adresini DX'e yukle
    mov ah, 9h                      ; Yazi yazma islevi
    int 21h                         ; DOS hizmet cagrisi

    ; Kaydirma hizini kontrol etmek icin bir gecikme yap
    mov cx, delay_count 
    
delay_loop:
    loop delay_loop

    ; Hedef adresi bir sola kaydir
    mov al, message[0]              ; ilk karakteri al
    mov ah, 0                       ; AH'yi sifirla
    mov di, 0                       ; DI'yi sifirla
    add di, length                  ; DI'yi "message" uzunluguna ayarla
    sub di, cx                      ; DI'yi dongu sayacini (CX) kadar azalt

    ; Kayan yaziyi bir karakter sola kaydir
    mov si, 1                       ; ilk karakteri gecerli SI degerine ekleyin
    mov cx, length                  ; Dongu sayacini "message" uzunluguna ayarlayin

scroll_shift_loop:
    mov bl, message[si]             ; Bir sonraki karakteri BL'ye yukle
    mov message[si - 1], bl         ; BL'yi bir karakter sola kaydir
    inc si                          ; SI'yi bir artir
    loop scroll_shift_loop          ; Donguyu tekrarla

    ; Donguyu tekrarla veya tamamla
    loop scroll

end