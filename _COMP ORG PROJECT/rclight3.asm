.model small
.stack 100
.code 
main:
	;mov cx, 3
    ;L1:
	mov al, 00001001b ; activate green light of traffic light 1 and red light of traffic light 2
	mov dx, 378h
	out dx, al
	call longdelay  ; call delays
	call longdelay
	call longdelay
	call longdelay
	call shortdelay
	call shortdelay
	
	mov al, 00010001b ; activate yellow light of traffic light 1 and green light of traffic light 2
	mov dx, 378h
	out dx, al
	call shortdelay  ; call delays
	call shortdelay
	call shortdelay
	call shortdelay
	mov al, 00100100b ; activate yellow light of traffic light 1 and green light of traffic light 2
	mov dx, 378h
	out dx, al
	call longdelay
	call longdelay
	call longdelay
	call longdelay
	call shortdelay
    call shortdelay
	
	mov al, 00100010b
	mov dx, 378h
	out dx, al
	call shortdelay
	call shortdelay
	call shortdelay
	call shortdelay
	mov al, 00001001b
	mov dx, 378h
	out dx, al
	call longdelay
	call longdelay
	call longdelay
	call longdelay
	call shortdelay
	call shortdelay
	;LOOP l1
	mov ax, 4c00h
	int 21h
	
	longdelay: 
	  mov cx, 0FFFFh
	  .next1: mov bx, 0FFFFh
	  .next2: NOP
            NOP
            dec bx
            jnz .next2
            loop  .next1
            ret

	
	shortdelay: 
	  mov cx, 0FFFFh
	  .next3: mov bx, 0FFFh
	  .next4: NOP
            NOP
            dec bx
            jnz .next4
            loop  .next3
            ret
	
	
end main

