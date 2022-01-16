.model small
.stack 100h
.data
msg db 'The characters are :$'
nl db 0Ah,0Dh

.code

main proc
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg
    mov ah,9
    int 21h
     
    mov ah,2
    mov cx,256
    mov dl,0
    print_loop:
    
    int 21h
    inc dl
    dec cx
    jnz print_loop
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    
    
   main endp
end main
    
    
    
    
    
    
    
    