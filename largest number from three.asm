.model small
.stack 100h


.data

new_line db  0Ah,0Dh,'$'
msg db 0Ah,0Dh,'Enter a number : $' 

large_number db 0Ah,0Dh,'The large number is : $'

.code 


main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bl,al   ; bl = al
    
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov bh,al   ; bh = al
    
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
    
    mov cl,al   ; cl = al
    
    
    cmp bl,bh
    
    jg next_1
    
    jmp next_3
    
    next_1:
    cmp bl,cl
    
    jg next_2  
    
    jmp next_5
    
    
    
    
    next_2:
    lea dx,large_number
    mov ah,9
    int 21h 
    mov ah,2
    mov dl,bl
    int 21h
    jmp exit
    
    next_3:
    cmp bh,cl
    jg next_4
    
    jmp next_5
    
    
    next_4:
    lea dx,large_number
    mov ah,9
    int 21h 
    mov ah,2
    mov dl,bh  ; bh bigger
    int 21h
    jmp exit
    
    
    next_5:
    lea dx,large_number
    mov ah,9
    int 21h 
    mov ah,2
    mov dl,cl ; cl bigger
    int 21h
    jmp exit 
    
    
   
    
    
    
    
    
    
    
    
    exit:
    mov ah,4ch
    int 21h
    
     
    
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main