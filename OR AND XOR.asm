.model small
.stack 100h

.data

nl db 0Ah,0Dh,'$'

.code

main proc
    mov ax,@data
    mov ds,ax   
    
    mov bl,00001011b
    mov bh,00000100b
    
    
    AND bl,bh
    
    mov ah,2
    mov dl,bl
    int 21h
    
  
    mov ah,4ch
    int 21h
    
    
    
    
    main endp
end main