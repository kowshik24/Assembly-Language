.model small
.stack 100h


.data

array dw 10,20,30,40,50,60

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov cx,4
    
    lea si,array+0
    
    lea di,array+8    ; (n-1)*2
    
    
    swap:
    mov ax,[si]
    xchg [di],ax
    mov [si],ax
    add si,2
    sub di,2
    loop swap
    
 
    
    
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main