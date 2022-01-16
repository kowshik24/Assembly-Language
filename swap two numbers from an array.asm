.model samll
.stack 100h

.data

array dw 10,20,30,40,50,60


.code


main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ax,array+4
    xchg array+6,ax
    mov array+4,ax
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main