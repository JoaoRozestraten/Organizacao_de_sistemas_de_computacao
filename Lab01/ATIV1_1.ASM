TITLE ATIV1_1
.MODEL SMALL
.data
    m1 db 'mensagem1','$'
    m2 db 10,13,'mensagem2','$'
.code
main PROC
    ;LINHAS 9 e 10 sao para permitir o acesso das variaveis em data
    mov ax,@data
    mov ds,ax
    ;Colocando a funcao 9 para printar a sring em DX
    mov ah,9
    mov dx,offset m1 ;ou usar LEA
    int 21h
    ;Segunda mensagem
    mov dx,offset m2
    int 21h
    ;Finalizacao
    mov ah,4ch
    int 21h

    
main ENDP
end main


