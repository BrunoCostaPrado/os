
[org 0x7e00]

jmp EnterProctectedMode

%include "print.asm"

EnterProctectedMode:
    cli
    jmp $

EnableA20:
    in al,0x92
    or al,2
    out 0x92 al
    ret


times 2048-($-$$) db 0