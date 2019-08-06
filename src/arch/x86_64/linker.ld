/*To boot our executable later through GRUB, 
it should be an ELF executable.
 So we want nasm to create ELF object files instead of plain binaries.
  To do that, we simply pass the ‑f elf64 argument to it.*/

ENTRY(start)

SECTIONS{
    . = 1M;

    .boot :
    {
        *(.multiboot_header)
    }

    .text :
    {
        *(.text)
    }
}