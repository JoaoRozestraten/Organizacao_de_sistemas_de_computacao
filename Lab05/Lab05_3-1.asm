TITLE Lab05_3
.model small
.code
main proc
    mov ah, 2 ;OBS numeros sem h estao na base 10
    mov cx,26 ; contador e 26 porque tem 26 letras
    mov dl, 65 ; posicao do 'A' na tabela ascci
    Primeiro:
    int 21h
    inc dl ; incrementando para pegar a proxima letra
    loop Primeiro
    mov dl, 10 ;quebrar a linha
    int 21h
    mov dl, 97 ; posicao do 'a' na tabela ascci
    mov cx, 26 ; mudando CX para o proximo loop
    Segundo:
    int 21h
    inc dl
    loop Segundo

    mov ah,4ch ;final
    int 21h
main ENDP
end main