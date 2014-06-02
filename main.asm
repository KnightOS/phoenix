;##################################################################
;
;   P H O E N I X     F O R    T I - 8 2 / 8 3 / 8 3 +
;
;   Programmed by Patrick Davidson (pad@calc.org)
;    
;   Copyright 2007 by Patrick Davidson.  This software may be freely
;   modified and/or copied with no restrictions.  There is no warranty.
;
;   This file was last updated August 10, 2007.
;
;##################################################################     

leftside:
    .fill 0xFEB2 - 0xFE70
rightside:
    .fill 0xFEF4 - 0xFEB2
leftsidecoord:
    .db 0
leftsidevel:
    .dw 0
rightsidecoord:
    .db 0
rightsidevel:
    .dw 0

main:
    ld hl, 0x4008
    ld (leftside), hl
    ld (rightside), hl
    ld (initsp + 1), sp

    call set_up_sides

    ld a, 0xC9
    ld (check_restore), a ; NOTE: this is SMC

    ld hl, timer_interrupt

    ; NOTE: We have to set up a second thread here
    ld (custintaddr), hl
    ld a, 34
    call setupint

    ei

    ld (iy + 13), 0

    ld hl, level_table      ; use default level data
    ld (level_addr), hl

    call restore_game        ; check for saved game

    xor a               ; by default, no external level
    ld (extlevel), a

no_saved_game:
    call level_selector      ; level section 

    call title_screen

prepare_new_game:
    ld hl, player_y
    ld (hl), 70         ; Player Y coord = 70
    inc hl
    ld (hl), 60         ; Player X coord = 60
    inc hl
    inc hl
    inc hl
    ld (hl), 16         ; Status of player's ship

    ld hl, 19000
    ld (time_score), hl
    ld a, 4
    ld (money_counter), a

pre_main_loop:
    call convert_settings    ; decode configuration
    ld hl, -6
    add hl, sp
    ld (collision_done + 1), hl
    xor a
    ld      (x_offset), a
    
;############## Game main loop
    
main_loop:
    call frame_init

    call clear_buffer       ; Prepare main display buffer

    call init_rand

    call do_player          ; Move and draw player
    call do_companion       ; Move and draw companion ship

    call enemies            ; Move and draw enemies

    call player_bullets     ; Move and draw player bullets

    call enemy_bullets      ; Move and draw enemy bullets
    call hit_player         ; Collisions involving player

    call scroll_sides
    call render_sides
    call prepare_indicator  ; Prepare the shield indicator

    call display_money
    call synchronize        ; Wait for next 1/30 second cycle
    call display_screen     ; Copy display buffer to video memory

    ld a, (scroll_flag)
    or a
    jr z, no_scrolling
    ld a, (player_x)
    cp 28
    jr c, scrolled_leftmost
    cp 92
    jr nc, scrolled_rightmost
    sub 28
    rra
    and 31
    sub 16
    ld (x_offset), a
    jr no_scrolling
scrolled_leftmost:
    ld a, -16
    ld (x_offset), a
    jr no_scrolling
scrolled_rightmost:
    ld a, 16
    ld (x_offset), a
no_scrolling:

    call hit_enemies        ; Collisions btw. bullets  enemies

    call handle_input       ; Process control keys
    ld a, (enemies_left)
    or a
    call z, load_level
    jr main_loop

;############## TI-82 library

; NOTE: Don't know what this is
; NOTE: Used in disp.asm, title.asm
OTH_CLEAR:
    ld (hl),0
OTH_FILL:
    ld d,h
    ld e,l
    inc de
    ldir
    ret

OTH_ARROW:
    ld a,%00111111
    out (1),a
    push ix
    pop ix
    in a,(1)
    or %00001111
    ld b,a
    ld a,%01111110
    out (1),a
    push ix
    pop ix
    in a,(1)
    and b
    ret

game_exit:
    im 1
initsp:
    ld sp, 0
    ROM_CALL(CLEARLCD)
check_restore:
    ret
restore_mem:
    ld de, 0
    ld hl, 0xF00C
    jp memory_exchange
