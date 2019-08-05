section .multiboot_header
header_start:
    dd 0xe85250d6           ; magic number (multibot 2 spec)
    dd 0                    ; architecture 0;
    dd header_end - header_start    ; header length
    ;checksum
    dd 0x100000000 -(0xe85250d6 + 0 +(header_end - header_start))

    ;optional tags here

    ;end tags *required
    dw 0
    dw 0
    dw 8
header_end: 