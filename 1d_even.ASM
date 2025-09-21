;NUMBER OF EVEN NUMBERS IN A LIST
ASSUME DS:DATA, CS:CODE
DATA SEGMENT
array db 47,63,18,75,39
DATA ENDS

CODE SEGMENT
START:
    MOV AX, DATA
    MOV DS, AX
    MOV CX, 5       
    MOV BX, 0       
    LEA SI, array   

L1:
    MOV AL, [SI]    
    AND AL, 1       
    CMP AL, 0
    JNE NOT_EVEN    
    INC BX          

NOT_EVEN:
    INC SI         
    LOOP L1         
    MOV AH, 02h      
    ADD BX, '0'      
    MOV DX,BX
    INT 21h    
    MOV AH, 4Ch
    INT 21h

CODE ENDS
END START





;AMBATI SWECHCHA
;SE21UCSE015
