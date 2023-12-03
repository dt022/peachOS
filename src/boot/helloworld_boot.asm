; a program for printing 'hello world' bootloader

; bios load bootloader from physical address 0x7c00
ORG 0x7c00 

; 16 bit architecture
BITS 16  

start:
    mov si, message
    call print
    jmp $

print:
    
.loop:
    lodsb
    cmp al,0
    je .done
    call print_char
    jmp .loop
.done:
    ret

print_char: 
    ; bios interrupt for display character in AL to screen
    ; ralf brown interrupt list
    mov ah, 0xe
    int 0x10
    ret

message: db 'Hello World!', 0

times 510-($ - $$) db 0
dw 0xAA55

