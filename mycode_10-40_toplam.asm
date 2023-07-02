mov ax, 10
DONGU:
add bx, ax
inc ax
cmp ax, 40
jbe DONGU
mov toplam, bx

RET
toplam DW 0