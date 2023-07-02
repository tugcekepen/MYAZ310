.model small
.stack 100h

.data
    prompt1 db 10,13,'Ilk sayiyi girin: $'
    prompt2 db 10,13,'Ikinci sayiyi girin: $'
    prompt3 db 10,13,'Islemi secin: (1-Toplama, 2-Cikarma, 3-Carpma, 4-Bolme): $'
    resultPrompt db 10,13,'Sonuc: $'
  
    num1 db ?
    num2 db ?
    operator db ?
    result db ?
    
.code
    main proc
        mov ax, @data
        mov ds, ax
        
        ; ilk sayi
        mov dx, offset prompt1
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        sub al, 30h ; ascii kodu icin sayiyi bulalim diye 30h cikariyoruz
        mov num1, al
        
        ; ikinci sayi
        mov dx, offset prompt2
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        sub al, 30h 
        mov num2, al
        
        ; islem
        mov dx, offset prompt3
        mov ah, 9
        int 21h
        
        mov ah, 1
        int 21h
        mov operator, al
        
        ; islem degislenlerine gore gidilecek donguler
        cmp operator, '1'
        je addition
        cmp operator, '2'
        je subtraction
        cmp operator, '3'
        je multiplication
        cmp operator, '4'
        je division
        
        ; gecersiz operator dongusu
        jmp invalidOperator
        
    addition:           ; toplama
        mov al, num1
        add al, num2
        mov result, al
        jmp displayResult
        
    subtraction:        ; cikarma
        mov al, num1
        sub al, num2
        mov result, al
        jmp displayResult
        
    multiplication:     ; carpma
        mov al, num1
        mul num2
        mov result, al
        jmp displayResult
        
    division:           ; bolme
        mov al, num1
        mov ah, 0
        mov bl, num2
        div bl
        mov result, al
        jmp displayResult
        
    displayResult:
        mov dx, offset resultPrompt
        mov ah, 9
        int 21h
        
        add result, 30h ; ascii karakterine donusturmek icin bu sefer 30h ekliyoruz
        mov dl, result
        mov ah, 2
        int 21h
        
        jmp exit
        
    invalidOperator:
        mov dx, offset invalidOperatorMsg
        mov ah, 9
        int 21h
        
    exit:
        mov ah, 4Ch
        int 21h
        
    invalidOperatorMsg db 'Gecersiz operator!', 0Dh, 0Ah, '$'
    
    main endp
end main
