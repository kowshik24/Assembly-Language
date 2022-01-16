.model small 

.stack 100h


.data

s1 db 'H','E','L','L','O'
s2 db 5 DUP ?

.code

main proc
    
    
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    mov cx,5
    
    lea si,s1
    lea di,s2
    
    rep movsb
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main

