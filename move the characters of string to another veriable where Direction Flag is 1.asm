.model small
.stack 100h

.data

s1 db 'H' , 'E' , 'L' , 'L' ,'O'

s2 db 5 DUP ?

.code 

main proc
    mov ax,@data
    mov ds,ax
    mov es,ax
    
    mov cx,5
    
    lea si,s1
    lea di,s2
    
    add si,4
    add di,4
    
    std   ; Direction Flag (DF) = 1 STD-> Set Direction Flag 
    
    
    rep movsb
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main