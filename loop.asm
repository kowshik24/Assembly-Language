.model small
.stack 100h

.data

nl db 0Ah,0Dh


.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,11
    mov bx,48d
    
    
    top:
    dec cx
    jnz print
    jmp exit
    print:
    mov ah,2
    mov dx,bx
    int 21h
    inc bx
    jmp top
    exit:
    mov ah,4ch
    int 21h
    
    
    
    
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main