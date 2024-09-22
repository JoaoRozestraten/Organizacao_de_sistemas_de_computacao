TITLE teste;PARA VER EH PRECISO O DEBUGGER
.model small
.data
    m1 dw 1234h
    m2 dw 5678h
.code
main PROC
    mov ax, @data
    mov ds, ax
    mov ax, 0000h
    mov bx, offset m1
    mov ah, [bx]; offset ds:bx 2 de 16 --> 20
    inc bx
    mov ah, [bx]
    inc bx
    mov al, [bx]
    inc bx
    mov al, [bx]
    mov cx,3
    L1:
    dec bx
    dec cx
    jnz L1;teste de uso de LOOP --> poderia substituir por mov bx 4
    ;MAS assim nao acessa a memoria 
    mov al, [bx]
    dec bx
    mov al, [bx] ;1234 em ax
    mov ah,4ch
    int 21h
main ENDP
end main