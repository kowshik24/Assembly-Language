.model small
.stack 100h

.data

nl db 0Ah,0Dh,'$'

.code

main proc
    mov ax,@data
    mov ds,ax
    
    mov bx,0
    
    mov ah,1
    int 21h
    
    while:
    cmp al,20h
    je exit
    inc bx
    int 21h
    jmp while
    
    
    exit:
    lea dx,nl
    mov ah,9
    int 21h
    
    add bx,30h
    mov ah,2
    mov dx,bx
    int 21h
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main