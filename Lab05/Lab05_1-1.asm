TITLE Lab05_1
.model small
.code
main PROC
    mov ah,2 ;OBS numeros sem h estao na base 10
    mov bl,'*' ; DEFININDO PARA NAO TER QUE ACESSAR A MEMORIA NO LOOP
    mov bh, 10 ; DEFININDO PARA NAO TER QUE ACESSAR A MEMORIA NO LOOP
    mov cx, 50
    mov dl, bl
    Primeiro:
    int 21h
    dec cx ; Primeiro loop faz 50 vezes o print de dl com '*' --> Aqui tem o decremento do contador
    jnz Primeiro ;-->pular se nao for zero depois do decremento de cx
    mov cx, 50 ; mudando CX para o proximo loop
    mov ah,1
    int 21h
    mov ah,2
    Segundo:
    int 21h
    mov dl, bh ; Segundo loop faz 50 vezes o print de dl com '*' e dl com o 10 da tabela ascii
    int 21h ; por conta disso foi necessario o uso de bh e bl
    mov dl, bl
    dec cx
    jnz Segundo

    mov ah,4ch ;final
    int 21h


main ENDP
end main