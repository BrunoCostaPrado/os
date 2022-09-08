# Script para compilação de binarios

nasm -f bin bootloader.asm -o bootloader.bin
nasm ExtendedProgram.asm -f bin -o ExtendedProgram.bin


cat bootloader.bin ExtendedProgram.bin > bootloader.flp