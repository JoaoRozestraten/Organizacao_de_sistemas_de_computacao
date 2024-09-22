TITLE Lab05_5
.model small
.code
main proc
mov ah,1 ;OBS numeros sem h estao na base 10
mov cx,5
mov bl,0
Primeiro:
int 21h
add bl, al ;ja adicionar o valor obtido pelo int 21h em al para bl
loop Primeiro
mov cx,4 ; mudando CX para o proximo loop
Segundo:
sub bl, 30h
loop Segundo
mov ah,2
mov dl,10
int 21h
mov dl, bl
mov ah,2
int 21h

mov ah,4ch ;final
int 21h

main endp
end main