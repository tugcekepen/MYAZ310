    
org 100h    
    
    
MOV CX, m ; CX, m degeriyle baslar
SUB CX, n ; n degerinden cikarilarak eleman sayisi bulunur
MOV BX, n ; BX, n degeriyle baslar
mov si, 2  

REPEAT_LOOP:

CMP BX, m ; BX, m'den kucuk olmalidir  

JG EXIT_LOOP

MOV DX, 0 ; DX, BX degeri ile mod islemi yapmak icin kullanilir
MOV AX, BX
DIV si
CMP DX, 0 ; BX, tek sayi mi?  
JNE NOT_ODD 

ADD sum, BX ; sum, BX degeriyle toplanir
INC count; count, eleman sayisini tutar

NOT_ODD:

INC BX ; BX, her dongu adiminda bir arttirilir 

JMP REPEAT_LOOP


EXIT_LOOP:

MOV DX, 0
MOV AX, sum
DIV count ; sum, eleman sayisi ile bolunerek ortalama bulunur
MOV average, AX




RET

n DW 10
m DW 30
sum DW 0
count DW 0
average DW 0