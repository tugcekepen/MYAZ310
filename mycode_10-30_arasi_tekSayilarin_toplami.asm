org 100h


;toplam dw 0
;sayac dw 0

;mov cx, 10

;dongu:
;add ax, cx
;inc sayac
;add cx, 2
;cmp cx, 30
;jle dongu
;cwd
;idiv sayac
;mov toplam, ax   
  
;ret   

mov ax, 10
mov bx, 0

dongu:
add bx, ax
inc sayac
add ax, 2
cmp ax,30
jbe dongu
mov ax,bx
div sayac
mov sonuc, ax
ret
sayac dw 0
sonuc dw 0