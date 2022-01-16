.model small
.stack 100h
.data
nl db 0Ah,0Dh
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    mov bx,10
   
    Outer:
      
      Inner:
      mov ah,2
      mov dl,'*'
      int 21h
      dec cx
      cmp cx,0
      jg Inner
      
      jmp condition
      
      condition:
      mov dl,0Dh
      int 21h
      mov dl,0Ah
      int 21h
      mov cx,10
      dec bx
      cmp bx,0
      jg Outer
      jmp exit
      
      
      
      exit:
      mov ah,4ch
      int 21h
    
    
    
    
    
    
    mov ah,4ch
    int 21h
    
    main endp
end main