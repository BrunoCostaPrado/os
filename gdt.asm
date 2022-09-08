gdt_nulldesc:
    dd 0
    db 0
gdt_codedesc:
    dw 0xFFFF       ;Limite
    dw 0x0000       ;Base(low)
    db 0x00         ;Base(medium)
    db 10011010b    ;Flags
    db 11001111b    ;Flags+Upeer Limit
    db 0x00         ;Base(high)
gdt_datadesc:
    dw 0xFFFF
    dw 0x0000
    db 0x00
    db 10010010b
    db 11001111b
    db 0x00

gdt_end:

gdt_descriptor:
    gdt_size:
        db gdt_end - gdt_nulldesc - 1
        dd gdt_nulldesc

codeseg equ gdt_codedesc - gdt_nulldesc
datadesc equ gdt_datadesc - gdt_nulldesc