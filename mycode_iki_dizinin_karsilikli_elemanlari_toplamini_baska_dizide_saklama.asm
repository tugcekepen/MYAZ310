org 100h

mov cx, 5
mov si, 0

topla:

mov al, dizil[si]
add al, dizi2[si]
mov dizi3[si], al
inc si

loop topla  

lea bx, dizi3 

RET 

dizil db 1,2,3,4,5
dizi2 db 6, 7, 8, 9, 10
dizi3 db 5 dup (0)