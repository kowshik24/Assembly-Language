.model small
.stack 100h
.data

cr equ 0Dh
lf equ 0Ah

msg1 db 'Enter a lower case letter: $'
msg2 db cr,lf,'In upper case letter is: $'
char db ?,'$'


.code


main proc
    mov ax,@data   ; get data segment
    mov ds,ax      ; initalize ds
    
    lea dx,msg1
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h
    sub al,20h ; al = al - 20h
    mov char,al
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,2
    mov dl,char
    int 21h

    
    
    mov ah,4ch
    int 21h
    
    
    
    
    
    
    
    
    
    main endp
end main