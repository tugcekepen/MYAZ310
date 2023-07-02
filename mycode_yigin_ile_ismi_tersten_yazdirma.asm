LEA SI, isim
MOV DI, OFFSET ismintersi
MOV CX, 5

HarfiAl:
MOV AL, [SI]
PUSH AX
INC SI
LOOP HarfiAl

MOV CX, 5

HarfiCek:
POP AX
MOV [DI], AL
INC DI
LOOP HarfiCek
 
 
END: RET

isim DB 'tugce'
ismintersi DB 'aaaaa'
