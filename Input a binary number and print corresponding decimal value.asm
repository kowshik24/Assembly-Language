.model small
.stack 100h

.data

nl db 0Ah,0Dh,'$'


.code


main proc
    mov ax,@data
    mov ds,ax 
    
    
    mov cx,10
    
    
    
    test_case:
    
    
    xor bl,bl ; clear bl
    
    top:
    
  
    
    mov ah,1
    int 21h 
    
    cmp al,0Dh ; carries return
    je exit
    and al,01h ; mask out the right most bit
    shl bl,1   ; (clear lmb of bl before taking from al)left shit bl by 1
    or bl,al   ; take the right most of al into bl
    jmp top
    
    exit:
    lea dx,nl
    mov ah,9
    int 21h
    add bl,30h
    mov ah,2
    mov dl,bl
    int 21h
    lea dx,nl
    mov ah,9
    int 21h
    loop test_case
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main