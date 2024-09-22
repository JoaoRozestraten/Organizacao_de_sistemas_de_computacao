TITLE Lab05_4
.model small
.code
main proc
    mov ah, 2 ;OBS numeros sem h estao na base 10
    mov bl, 97 ;posicao do 'a' na tabela ascii
    Primeiro:
    mov cx, 4 ;SEGUNDO contador
    mov dl, 10 ; por conta disso foi necessario o uso de bh e bl
    int 21h
    mov dl,bl
    Segundo:
    int 21h
    inc dl
    cmp dl, 123; 123 ja nao faz parte do alfabeto
    je FIM
    loop Segundo
    mov bl,dl
    jmp Primeiro

    FIM:
    mov ax,4ch ;final
    int 21h
main ENDP
end main