.model samll
.stack 100h
.code

main proc
    
    
    
    ; take 1st input
    mov ah,1
    int 21h
    mov bl,al
    
    
    ; print a new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    ; take 2nd input
    mov ah,1
    int 21h
    mov bh,al
    
    
    ; print a new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; print 1st input
    mov ah,2
    mov dl,bl
    int 21h
    
    
    ; print a new line
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    ; print 2nd input
    mov ah,2
    mov dl,bh
    int 21h
    
    
    ; a beep sound
    
    mov ah,2
    mov dl,07
    int 21h
    
    exit:
    mov ah,4ch
    main endp
end main




