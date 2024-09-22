TITLE letras
.model SMALL
.data ;definindo as strings
    m1 db 'Digite uma letra minuscula:','$'
    m2 db 10,13,'Sua letra maiuscula eh:','$'
.code
main proc
    mov ax,@data ;acesso a memoria para pegar as strings
    mov ds,ax

    mov dx, offset m1 ;passando o endereço de m1 para dx
    mov ah,9 ;printando string
    int 21h

    mov ah,1 ;pegando um caracter
    int 21h
    sub al,20h ;subtraindo para o caracter ficar minusculo de acordo com a tabela ASCII
    mov bl,al ;passando de al para bl

    mov ah,9 ;printando uma string
    mov dx, offset m2
    int 21h

    mov dl,bl ;passando de bl para dl 
    mov ah,2 ;printando um caracter
    int 21h

    mov ah,4ch ;finalizando o programa 
    int 21h
main endp
end main







