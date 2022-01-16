.model samll

.stack 100h


.data

array dw 10,20,30,40,50,60

.code 

main proc
    
    mov ax,@data
    mov ds,ax
    
    xor ax,ax ; ax = 0
    
    mov cx,6
    
    lea si,array
    
    add_num: 
    add ax,[si]
    add si,2
    loop add_num
    
    
           
   
           
    mov ah,2
    mov dx,ax
    int 21h
    
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    
    main endp
end main