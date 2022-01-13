.MODEL SMALL
.STACK 100H
.DATA 
CR EQU 0DH
LF EQU 0AH
MSG1 DB 0DH,0AH,'Enter the hex digit: $'
MSG2 DB 0DH,0AH,'In decimal : $'
CHAR1 DB ?   

MSG3 DB ' is an even number.$'
MSG4 DB 0DH,0AH,'Illegal character enter  0..9 OR A..F: $' 
MSG5 DB ' is an odd number.$'
.CODE

MAIN PROC
    MOV AX,@DATA     
    MOV DS,AX
 
 START:   
    MOV AH,9        
    LEA DX,MSG1
    INT 21H

 START2:   
    MOV AH,1
    INT 21H
    MOV CHAR1,AL
    CMP CHAR1,30H    
    JNGE EXIT
    CMP CHAR1,39H
    JNLE EXIT
    JMP DECIMAL2
  
  EXIT:
     CMP CHAR1,41H
    JNGE INVALID      
    CMP CHAR1,46H
    JNLE INVALID
    JMP DECIMAL1
    
  DECIMAL1: 
    MOV AH,9
    LEA DX,MSG2
    INT 21H
    SUB CHAR1,11H
    MOV AH,2
    MOV DL,31H
    INT 21H
    MOV DL,CHAR1      
    INT 21H
    
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV DL,31H
    INT 21H
    MOV DL,CHAR1
    INT 21H 
    JMP EV_OD
    
   DECIMAL2:  
    MOV AH,9
    LEA DX,MSG2       
    INT 21H
    MOV AH,2
    MOV DL,CHAR1
    INT 21H
    
                      
    MOV DL,0DH
    INT 21H
    MOV DL,0AH
    INT 21H
    
    MOV DL,CHAR1
    INT 21H 
    JMP EV_OD
      
  
  EV_OD: 
    CMP CHAR1,'0'
    JE EVEN
    CMP CHAR1,'2'
    JE EVEN             
    CMP CHAR1,'4'
    JE EVEN
    CMP CHAR1,'6'
    JE EVEN
    CMP CHAR1,'8'
    JE EVEN
    JMP ODD
    
  EVEN:
    
     MOV AH,9           
     LEA DX,MSG3
     INT 21H
     JMP EX
  
  ODD: 
     
     MOV AH,9
     LEA DX,MSG5        
     INT 21H 
     JMP START
    
 

    
  INVALID:
     MOV AH,9         
     LEA DX,MSG4
     INT 21H
     JMP START2
     
    
   
EX:    
   
    MOV AH,4CH         
    INT 21H
    MAIN ENDP
END MAIN
    
    