.model small
.stack 100h
.data

; data segment

MSG db 'HELLO! Enter a number: $'

.code
main proc
    mov ax,@data
    mov ds,ax
    
    lea dx,MSG
    mov ah,9
    int 21h
    
    mov ah,1 ; input key function
    int 21h  ; ASCII code in AL
    mov bl,al ; bl = al
    
    
    mov ah,2
    mov dl,0Dh ; carriage return
    int 21h ; execute carriage ruturn
    mov dl,0Ah ; line feed
    int 21h ; execute line feed
    

    
    
    mov ah,2 ; output key function
    mov dl,bl ; DL = BL
    int 21h  ; display the character
    
    mov ah,4ch   ; DOS exit function
    int 21h      ; exit to DOS
    
    
    
main endp                                                         

end main







