;Write an assembly language program to read one of the hex digits (A-F) and display it on next line in decimal.
;Sample Execution:
;Enter a hex digit:C
;In decimal it is:12



.model small
.stack 100h
.data
a db 'Enter a hex digit: $'
b db 'In decimal it is: $'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,a
    int 21h
    
    mov ah,1
    int 21h
    mov bl,al
    sub bl,17d ; in C = 67-17 = 50=='2'
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    mov ah,9
    lea dx,b
    int 21h
    
    
    mov dl,49d ; print 1 before 
    mov ah,2
    int 21h
    
    mov dl,bl
    mov ah,2
    int 21h
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
