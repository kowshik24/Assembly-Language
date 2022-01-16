.model small
.stack 100h
.data
msg db 'Enter the 3 characters in upper cases: $'
msg2 db 'Here the name is Koshik Deba Nath!$'
char3 db ?,'$'
.code
main proc
    
        mov ax,@data
        mov ds,ax
        mov ah,9
        lea dx,msg2
        int 21h
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        mov ah,9
        lea dx,msg
        int 21h
        ;input first letter
        mov ah,1
        int 21h
        add al,20h
        mov bl,al
        ;input second letter
        mov ah,1
        int 21h
        add al,20h
        mov bh,al
        ;input third letter
        mov ah,1
        int 21h
        add al,20h
        mov char3,al
        ;output
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        ;print first letter in upper case
        mov ah,2
        mov dl,bl
        int 21h
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        ;print second letter in upper case
        mov ah,2
        mov dl,bh
        int 21h
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        ;print third letter in upper case
        mov ah,2
        mov dl,char3
        int 21h
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        mov ah,4ch
        int 21h
        main endp
end main