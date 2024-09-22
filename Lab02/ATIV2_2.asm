TITLE soma
.model SMALL
.data ;definindo as strings
    m0 db 'Ola,antes de iniciar saiba que a soma dos numeros deve ser menor ou igual a 9','$'
    m1 db 10,13,'Digite um numero de 0 a 9:','$'
    m2 db 10,13,'Digite outro numero de 0 a 9:','$'
    m3 db 10,13,'A soma deles eh:','$'
.code
main proc
    mov ax,@data ;acesso a memoria para pegar as strings
    mov ds,ax

    mov dx, offset m0 ;passando o endereço de m0 para dx
    mov ah,9;funcao de printar srting 
    int 21h

    mov dx, offset m1 
    int 21h

    mov ah,1 ;pegando o primeiro numero
    int 21h
    sub al,30h ;subtraindo para a soma da posicao dos numeros corresponder ao caracter que representa a soma deles 
    mov bl,al ;passando de al para bl

    mov ah,9
    mov dx, offset m2
    int 21h

    mov ah,1 ;pegando o segundo numero
    int 21h
    add bl,al ; juntando os dois numeros

    mov ah,9
    mov dx, offset m3
    int 21h

    mov dl,bl ;passando de bl para dl 
    mov ah,2 ;printando
    int 21h

    mov ah,4ch ;finalizando o programa
    int 21h
main endp
end main