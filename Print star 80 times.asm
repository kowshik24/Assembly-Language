.model small
.stack 100h
.data
.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov cx,80
    mov ah,2
    top:
    mov dl,'*'
    int 21h
    dec cx
    cmp cx,0
    jg top
    jmp exit
    
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    
    
    main endp
end main