.model small
.stack 100
.code 
main:
  
	
	mov al, 00001001b
	mov dx, 378h
	out dx, al
	call delay10sec
	mov al, 00010001b
	mov dx, 378h
	out dx, al
	call delay2sec
	mov al, 00100100b
	mov dx, 378h
	out dx, al
	call delay10sec
	mov al, 00100010b
	mov dx, 378h
	out dx, al
	call delay2sec
	mov al, 00001001b
	mov dx, 378h
	out dx, al
	call delay10sec
	
	mov ax, 4c00h
	int 21h
	delay10sec: 
	  mov cx, 0FFFFh
	  .next1: mov bx, 0FFFFh
	  .next2: NOP
            NOP
            dec bx
            jnz .next2
            loop  .next1
            ret
	
	delay2sec: 
	  mov cx, 0FFFh
	  .next3: mov bx, 0FFFFh
	  .next4: NOP
            NOP
            dec bx
            jnz .next4
            loop  .next3
            ret

	
	
end main

