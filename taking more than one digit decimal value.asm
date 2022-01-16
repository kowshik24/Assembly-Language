.model small

.stack 100h

.data
msg db 0Ah,0Dh,'Enter a decimal number greater than one digit: $'

nl db 0Ah,0Dh,'$'



.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    mov cx,3
    
    lea ax,msg
    mov ah,9
    int 21h
    
    
    xor bx,bx
    
    input:
    mov ah,1
    int 21h ; al = '3' convert korte hobe 
    and al,0fh ;   al = 0000 0011
               ;  0fh = 0000 1111
               ; AND
               ;........................
               ;  res = 0000 0011 = deciaml(3)   
    push ax
    mov ax,10
    
    mul bx
    pop bx
    add bx,ax
    loop input
    
    
   
    
    main endp
end main