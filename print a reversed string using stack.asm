.model small
.stack 100h

.data

msg db 0Ah,0Dh,'Enter a string: $'    

msg1 db 0Ah,0Dh,'The reversed string is : $'

nl db 0Ah,0Dh,'$'

.code 

main proc
    mov ax,@data
    mov ds,ax
    
    lea ax,msg
    mov ah,9
    int 21h
           
    mov cx,7
    
    input:
    mov ah,1
    int 21h
    push ax
    loop input
    
    
    
    mov cx,7
    
    lea ax,msg1
    mov ah,9
    int 21h 
    
    
    
    mov ah,2
    print:  
    pop dx
    int 21h
    loop print
    
    mov ah,4ch
    int 21h
    
    
    
    
    
    
    main endp
end main