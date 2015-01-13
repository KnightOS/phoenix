; Programmed by Patrick Davidson (pad@calc.org)
; Ported to KnightOS by Drew DeVault (sir@cmpwn.com)
;        
; Copyright 2005 by Patrick Davidson.  This software may be freely
; modified and/or copied with no restrictions.  There is no warranty.
#include "kernel.inc"
#include "corelib.inc"
    .db "KEXC"
    .db KEXC_ENTRY_POINT
    .dw start
    .db KEXC_STACK_SIZE
    .dw 200
    .db KEXC_KERNEL_VER
    .db 0, 6
    .db KEXC_NAME
    .dw name
    .db KEXC_HEADER_END
name:
    .db "Phoenix", 0

;D_HL_DECI       =_disphl
;TX_CHARPUT      =_putc

#include "src/phoenixz.i"
#include "src/constants.asm"

start:
    kld(de, corelibPath)
    pcall(loadLibrary)

    pcall(getCurrentThreadId)
    pcall(getEntryPoint)
    kld((entryPoint), hl)

    pcall(getLcdLock)
    pcall(getKeypadLock)
    ld bc, 16*64 ; Larger screen size than usual (16 columns)
    pcall(malloc)
    jr nz, .quit
    push ix \ pop iy
    kcall(main)
    ret
.quit:
    push af
        pcall(allocScreenBuffer)
        pcall(nz, exitThread) ; Nothing we can do about it
    pop af
    corelib(showErrorAndQuit)
    ret

relocate_hl:
    push af
    push bc
        kld(bc, 0)
        add hl, bc
    pop bc
    pop af
    ret

#include "src/shims.asm"
#include "src/main.asm"
#include "src/lib.asm"
#include "src/title.asm"
#include "src/disp.asm"
#include "src/drwspr.asm"
#include "src/player.asm"
#include "src/shoot.asm"
#include "src/bullets.asm"
#include "src/enemies.asm"
#include "src/init.asm"
#include "src/enemyhit.asm"
#include "src/collide.asm"
#include "src/ebullets.asm"
#include "src/hityou.asm"
#include "src/shop.asm"
;#include "src/helper.asm"
#include "src/eshoot.asm"
;#include "src/score.asm"
#include "src/emove.asm"
#include "src/images.asm"
#include "src/info.asm"
#include "src/data.asm"
#include "src/levels.asm"
#include "src/vars.asm"

corelibPath:
    .db "/lib/core", 0
