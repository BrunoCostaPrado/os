[org 0x7e00]

jmp EnterProctectedMode

%include "gdt.asm"
%include "print.asm"

EnterProctectedMode:
    call EnableA20
    cli
    lgdt[gdt_descriptor]
    mov eax, cr0
    or eax, 1
    mov cr0, eax
    jmp codeseg:StartProctedMode

EnableA20:
    in al,0x92
    or al,2
    out 0x92,al
    ret

[bits 32]

StartProctedMode:
    mov ax, datadesc
    mov ds, ax
    mov ss, ax
    mov es, ax
    mov fs, ax
    mov gs, ax

 
    
    mov[0xb8000],byte 'H'
    ; mov[0xb8002],byte 'e'
    ; mov[0xb8004],byte 'l'
    ; mov[0xb8006],byte 'l'
    ; mov[0xb8008],byte 'o'
    ; mov[0xb800a],byte ' '
    ; mov[0xb800c],byte 'W'
    ; mov[0xb800e],byte 'o'
    ; mov[0xb8010],byte 'r'
    ; mov[0xb8012],byte 'l'
    ; mov[0xb8014],byte 'd'

    
    jmp $

times 2048-($-$$) db 0