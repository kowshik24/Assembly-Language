.model small

.stack 100h

.data
 
msg db 0Dh,0Ah,'Enter first number: $'
msg1 db 0Dh,0Ah,'Enter second number : $'

res db 0Dh,0Ah,'The large number is : $' 

equal db 0Dh,0Ah,'The numbers are eqaul : $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    
    mov ah,1
    int 21h 
    
    mov bx,ax
    
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    
    
    mov cx,ax
    cmp bx,cx
    je equal1
    
    cmp bx,cx
    
    jg greater
    lea dx,res
    mov ah,9
    int 21h
    mov ah,2
    mov dx,cx
    int 21h
    mov ah,4ch
    int 21h 
    
    greater:
    lea dx,res
    mov ah,9
    int 21h
    mov ah,2
    mov dx,bx
    int 21h
    mov ah,4ch
    int 21h 
    
    
    equal1:
    lea dx,equal
    mov ah,9
    int 21h
    mov ah,2
    mov dx,bx
    int 21h
    
    
    
    
    
    
    
    
    
    
    
    main endp
end main
    






