TITLE Lab05_2
.model small
.code
main PROC
    mov ah,2 ;OBS numeros sem h estao na base 10
    mov bl,'*'; DEFININDO PARA NAO TER QUE ACESSAR A MEMORIA NO LOOP
    mov bh, 10; DEFININDO PARA NAO TER QUE ACESSAR A MEMORIA NO LOOP
    mov cx, 50
    mov dl, bl
    Primeiro:
    int 21h
    loop Primeiro
    mov cx, 50 ; mudando CX para o proximo loop
    mov ah,1
    int 21h
    mov ah,2
    Segundo:
    int 21h ; Segundo loop faz 50 vezes o print de dl com '*' e dl com o 10 da tabela ascii
    mov dl, bh ; por conta disso foi necessario o uso de bh e bl
    int 21h
    mov dl, bl
    loop Segundo

    mov ah,4ch ;final
    int 21h


main ENDP
end main