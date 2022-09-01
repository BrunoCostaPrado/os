[org 0x7c00]

mov [BOOT_DISK],dl


mov bp, 0x7c00
mov sp, bp

mov bx, TestString
call PrintString

call ReadDisk

jmp $

%include "print.asm"
%include "DiskRead.asm"

times 510-($-$$) db 0

dw 0xaa55