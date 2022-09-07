
[org 0x7e00]

mov bx, ExtendedSpaceSucess
call PrintString

jmp $

%include "print.asm"

ExtendedSpaceSucess:
    db "we are successfully in extend space",0

times 2048-($-$$) db 0