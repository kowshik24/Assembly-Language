.model small
.stack 100h

.data
           
           
msg db 'Enter a number : $'
nl db 0Ah,0Dh,'The number is : $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    
    lea dx,msg
    mov ah,9
    int 21h
    
    mov ah,1
    int 21h
 
    
    
    lea dx,nl
    mov ah,9
    int 21h
    
    cmp al,'y'
    je y_print
    
    cmp al,'Y'
    je y_print
     
    jmp exit
    
   
    y_print:
    mov ah,2
    mov dl,al
    int 21h
    jmp exit
    

    
    
    exit:
    mov ah,4ch
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
