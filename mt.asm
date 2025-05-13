;Video mode 3h, 73h mouse test program for DOS J5.0/V
;Copyright (c) 2025 Akamaki <https://github.com/akmed772>

.model tiny
assume ss:nothing

.code
start:
    org 100h
;    mov ax,03h
 ;   int 10h
    mov [exitloop],0
    mov ax,0
    int 33h ;init mouser driver
    cmp ax,-1
    jne initerror

    push cs
    pop es
    mov cx,8    ;call event if r-click,move
    mov dx,offset mouseevent
    mov ax,12
    int 33h ;set mouse right click event

    mov ah,9
    mov dx,offset GREETMSG
    int 21h
    mov ax,1
    int 33h ;enable mouse cursor
mainloop:
;    mov ah,1    ;wait for key
;    int 21h
  ;  hlt
    cmp [cs:exitloop],1
    je  exit
    jmp mainloop

mouseevent:
    test ax,8
    jnz toexitloop
    ;test ax,1
    ;jnz cursormove
;cursormove:
    
    ;mov bx,0007h
    ;mov ax,1300h    ;transfer CX chars with attribute BL from ES:BP to DX at page BH.
    ;int 10h
    retf

toexitloop:
relmouse:
    mov [cs:exitloop],1
 ;   mov ax,0 ;init mouser driver
 ;   int 33h
    retf

initerror:
exit:
    mov ax,0 ;init mouser driver
    int 33h
	mov	ah, 4ch	;DOS: terminate with return code
	int	21h
    
GREETMSG    db 'Now you can move the mouse cursor. Press the right click button to cancel.$'
exitloop	db	0

END start