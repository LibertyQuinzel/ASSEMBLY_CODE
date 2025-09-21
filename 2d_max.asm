;MAX OF N NUMBERS

ASSUME DS:DATA, CS:CODE
DATA SEGMENT
array db 31,54,21,68
RES db ?
DATA ENDS
CODE SEGMENT
START:
MOV AX, DATA
MOV DS,AX
MOV CX,4
LEA SI,array
MOV BL,[SI]
l1:
MOV AL,[SI]
CMP AL,BL
JLE l2
MOV BL,AL

l2:
INC SI
DEC CX
JNZ l1
MOV RES,BL
MOV AH,0
mov AL,RES
mov bx,ax
mov ax,bx
aam
mov bx,ax
add ah,'0'
mov dl,ah
mov ah,02h    
int 21h
mov dl,bl
add dl,'0'
mov ah,02h
int 21h
mov ah, 4Ch
    int 21h
CODE ENDS
END START
;ambati swechcha
;SE21UCSE015