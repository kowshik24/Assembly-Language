.model small ;there will be  data segment and code segment    



.stack 100h  ; declare memory         

                                   
                                   
.data        ; data segment            



m db 'kowshik deb nath $'  ; 'm' is the variable name and 'db' means define by it can
                           ; be 'db' which is define word so we store the data in 'm'
                           ; which is 'kowshik deb nath' and last there will be a '$'
                           ; sign   
                           
                           
                           
.code    ; this is the code segment




main proc  ; main procedure
    
    
    ; 1 -> single key input
    ; 2 -> single character output
    ; 9 -> character string output 
    
    
    
    
    ;data segment initailize
    mov ax,@data  ; normally for small size of data it is stored in 'al' register but for large data it store in 'ax' register
    
    
    mov ds,ax ; store the 'ax' data to 'ds' register
    
    
    ; 9->
    ; load effective address -> lea
    
    mov ah,9 ; initialize the '9' function
    lea dx,m ; load effective address to store the address of m to 'dx'
    int 21h  ; call the function
    
    
    
    
    ; 1->
    mov ah,1 ; initialize the '1' function
    int 21h  ; call the function
    mov bl,al; take the input in al register and store it in bl register
    
    
    
    
    ; 2->
    
    mov ah,2
    mov dl,bl
    int 21h
    
    
    exit:
    mov ah,4ch
    int 21h
    main endp
end main
    
    
    
    
    