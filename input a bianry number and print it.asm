.model small
.stack 100h


.data

nl db 0Ah,0Dh,'$'

msg db 'Enter a 8-bit binary number : $'

.code 

main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov cx,8
    
    input_binary_number:
    
    xor bl,bl
    
    mov ah,1
    int 21h
    and al,01h
    shl bl,1
    or bl,al
    loop input_binary_number
    
    
    
    
    mov cx,8
    
    
   
    mov cl,bl
    
    print_binary_number:
    cmp ax,0
    je exit
    and cl,01h
    cmp cl,00h
    shr bl,1
    mov cl,bl
    
    je zero
    mov dl,'1'
    int 21h
    
    
    zero:
    mov dl,'0'
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
 
    jmp print_binary_number  
    
    
    
    
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main