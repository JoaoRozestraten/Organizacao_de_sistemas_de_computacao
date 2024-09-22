TITLE numero_letra_outro
.MODEL SMALL
.STACK 100h
.data
    m0 db "Digite um caracter:","$"
    mp1 db 10,13,"O caracter eh uma letra","$"
    mp2 db 10,13,"O Caracter eh um numero","$"
    mp3 db 10,13,"O caracter nao eh nem uma letra nem um numero","$"
.code
main PROC
    ;permitindo o acesso das strings em data
    mov ax,@data
    mov ds,ax

    ;printar mensagem m0
    mov ah,9
    mov dx, offset m0 ;passando endereço para dx
    int 21h

    ;pegando o caracter e passando para bl
    mov ah,1
    int 21h
    mov bl,al

    cmp bl,30h ;vendo se o caracter tem um valor menor que 30h(q eh 0) na tabela ascii
    JB OUTRO

    cmp bl,39h ;vendo se o caracter tem um valor menor ou igual a 39h(q eh 9)
    JBE NUMERO

    cmp bl,41h ;vendo se o caracter eh menor que 41h(q eh A)
    JB OUTRO

    cmp bl,5ah ;vendo se o caracter eh menor ou igual a 5ah(q eh Z)
    JBE LETRA

    cmp bl,61h ;vendo se o caracter eh menor que 61h(q eh a)
    JB OUTRO

    cmp bl,7ah ;vendo se o caracter eh menor ou ingual a 7ah(q eh z)
    JBE LETRA

    JMP OUTRO ;Caso seja maior que 7ah(q eh z)

    LETRA: ;label caso for letra
    mov ah,9
    mov dx,offset mp1
    int 21h
    JMP FIM

    NUMERO: ;label caso for numero
    mov ah,9
    mov dx,offset mp2
    int 21h
    jmp FIM

    OUTRO: ;label caso nao for nem um numero nem uma letra
    mov ah,9
    mov dx,offset mp3
    int 21h

    FIM: ;definindo o label do fim
    mov ah,4ch
    int 21h

main ENDP
end main