;##################################################################
;
;   Phoenix-Z80 (Images)
;
;   Programmed by Patrick Davidson (pad@calc.org)
;        
;   Copyright 2002 by Patrick Davidson.  This software may be freely
;   modified and/or copied with no restrictions.  There is no warranty.
;                              
;   This file was last updated August 16, 2002.
;
;##################################################################     

;############## Standard enemies

img_enemy_4:
        .db     7,9
        .db     %10000010
        .db     %11000110
        .db     %11111110
        .db     %10000010
        .db     %10000010
        .db     %10000010
        .db     %11111110
        .db     %01111100
        .db     %00111000

img_enemy_1:
        .db     6,6     
        .db     %10000100       
        .db     %10000100       
        .db     %11111100       
        .DB     %11111100       
        .DB     %01111000       
        .DB     %00110000

img_enemy_2:
        .db     8,5
        .db     %10000001
        .db     %11011011
        .db     %11111111
        .db     %11011011
        .db     %10000001

img_enemy_2a:
        .db     5,5
        .db     %10001000
        .db     %11111000
        .db     %10001000
        .db     %01010000
        .db     %00100000

img_operator:
        .db     8,8
        .db     %01111110
        .db     %11111111
        .db     %11000011
        .db     %11000011
        .db     %11000011
        .db     %11000011
        .db     %11111111
        .db     %01111110

img_spin1:
        .db     2
        .dw     img_spin_1a
        .db     2
        .dw     img_spin_1b
        .db     2
        .dw     img_spin_1c
        .db     2
        .dw     img_spin_1d
        .db     0
        .dw     img_spin1

img_spin_1a:
        .db     8,8
        .db     %00100000
        .db     %00111100
        .db     %01111111
        .db     %01100110
        .db     %01100110
        .db     %11111110
        .db     %00111100
        .db     %00000100

img_spin_1b:
        .db     8,8
        .db     %00001000
        .db     %00111100
        .db     %01111110
        .db     %11100110
        .db     %01100111
        .db     %01111110
        .db     %00111100
        .db     %00010000

img_spin_1c:
        .db     8,8
        .db     %00000010
        .db     %10111100
        .db     %01111110
        .db     %01100110
        .db     %01100110
        .db     %01111110
        .db     %00111101
        .db     %01000000

img_spin_1d:
        .db     8,8
        .db     %01000000
        .db     %01111111
        .db     %01111110
        .db     %01100110
        .db     %01100110
        .db     %01111110
        .db     %11111110
        .db     %00000010

img_spin2:
        .db     2
        .dw     img_spin_2a
        .db     2
        .dw     img_spin_2b
        .db     2
        .dw     img_spin_2c
        .db     2
        .dw     img_spin_2d
        .db     0
        .dw     img_spin2

img_spin_2a:
        .db     8,8
        .db     %00100000
        .db     %00111100
        .db     %01111111
        .db     %01111110
        .db     %01111110
        .db     %11111110
        .db     %00111100
        .db     %00000100

img_spin_2b:
        .db     8,8
        .db     %00001000
        .db     %00111100
        .db     %01111110
        .db     %11111110
        .db     %01111111
        .db     %01111110
        .db     %00111100
        .db     %00010000

img_spin_2c:
        .db     8,8
        .db     %00000010
        .db     %10111100
        .db     %01111110
        .db     %01111110
        .db     %01111110
        .db     %01111110
        .db     %00111101
        .db     %01000000

img_spin_2d:
        .db     8,8
        .db     %01000000
        .db     %01111111
        .db     %01111110
        .db     %01111110
        .db     %01111110
        .db     %01111110
        .db     %11111110
        .db     %00000010

;############## Special enemies

img_bounce:
        .db     8,9
        .db     %00011000
        .db     %00011000
        .db     %00011000
        .db     %00100100
        .db     %01000010
        .db     %10000001
        .db     %10011001
        .db     %10100101
        .db     %11000011

img_enemy_3:
        .db     4
        .dw     img_enemy_3a
        .db     4
        .dw     img_enemy_3b
        .db     4
        .dw     img_enemy_3c
        .db     4
        .dw     img_enemy_3d
        .db     0
        .dw     img_enemy_3

img_enemy_3a:
        .db     8,8
        .db     %00111100
        .db     %01000010
        .db     %10000001
        .db     %11111111
        .db     %11111111
        .db     %10000001
        .db     %01000010
        .db     %00111100
img_enemy_3b:
        .db     8,8
        .db     %00111100
        .db     %01000110
        .db     %10001111
        .db     %10011101
        .db     %10111001
        .db     %11110001
        .db     %01100010
        .db     %00111100
img_enemy_3c:
        .db     8,8
        .db     %00111100
        .db     %01011010
        .db     %10011001
        .db     %1011001
        .db     %10011001
        .db     %10011001
        .db     %01011010
        .db     %00111100
img_enemy_3d:
        .db     8,8
        .db     %00111100
        .db     %01100010
        .db     %11110001
        .db     %10111001
        .db     %10011101
        .db     %10001111
        .db     %01000110
        .db     %00111100

;############## Bosses

img_boss2:
        .db     16,12
        .db     %11111000
        .db     %10001111
        .db     %10001000
        .db     %10001000
        .db     %10001000
        .db     %10001000
        .db     %10001000
        .db     %10001111
        .db     %11111000
        .db     %11111000
        .db     %01110000
        .db     %00100000
        .db     8,12
        .db     %00011111
        .db     %11110001
        .db     %00010001
        .db     %00010001
        .db     %00010001
        .db     %00010001
        .db     %00010001
        .db     %11110001
        .db     %00011111
        .db     %00011111
        .db     %00001110
        .db     %00000100

img_boss:
        .db     16,12
        .db     %10000000
        .db     %11000000 
        .db     %11100000
        .db     %11111111
        .db     %11000111
        .db     %11000011       
        .db     %11000001
        .db     %11000001
        .db     %11100001
        .db     %01110001
        .db     %00111111
        .db     %00011111
        .db     8,12
        .db     %00000001
        .db     %00000011
        .db     %00000111
        .db     %11111111
        .db     %11100011
        .db     %11000011
        .db     %10000011
        .db     %10000011
        .db     %10000111
        .db     %10001110
        .db     %11111100
        .db     %11111000

;############## Swooping enemy

img_swoop:
        .db     2
        .dw     swoop_stage1
        .db     2
        .dw     swoop_stage2
        .db     0
        .dw     img_swoop

swoop_stage1:
        .db     11,8
        .db     %11100000
        .db     %10101110
        .db     %11101110
        .db     %10111111
        .db     %11111111
        .db     %10101110
        .db     %11101110
        .db     %10100100
        .db     3,8
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000

swoop_stage2:
        .db     11,8
        .db     %11100000
        .db     %10101110
        .db     %11101110
        .db     %10111111
        .db     %11111111
        .db     %10101110
        .db     %11101110
        .db     %10100100
        .db     3,8
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000
        .db     %11100000
        .db     %10100000

;############## Players

img_player_ship_normal:
        .db     8,6
        .db     %10000001
        .db     %10000001
        .db     %10011001
        .db     %10100101
        .db     %11000011
        .db     %10000001

img_player_ship_damaged:
        .db     8,6
        .db     %10000000
        .db     %00000001
        .db     %10010000
        .db     %00000101
        .db     %11000000
        .db     %00000001

img_companion:
        .db     7,7     
        .DB     %00010000       
        .DB     %00111000       
        .DB     %10111010       
        .DB     %10111010       
        .DB     %10111010       
        .DB     %11111110       
        .DB     %11111110

;############## Player bullets

img_player_bullet_0:
        .db     2,6
        .db     %11000000
        .db     %11000000
        .db     %11000000
        .db     %11000000
        .db     %11000000
        .db     %11000000

img_player_bullet_1:
        .db     4,8
        .db     %01100000
        .db     %11110000
        .db     %10100000
        .db     %01010000
        .db     %10100000
        .db     %01010000
        .db     %10100000
        .db     %01010000

img_player_bullet_2l:
        .db     3,7
        .db     %00100000
        .db     %01100000
        .db     %11100000
        .db     %11100000
        .db     %11100000
        .db     %11000000
        .db     %10000000

img_player_bullet_2r:
        .db     3,7
        .db     %10000000
        .db     %11000000
        .db     %11100000
        .db     %11100000
        .db     %11100000
        .db     %01100000
        .db     %00100000

img_player_bullet_3:
        .db     4,4
        .db     %01100000
        .db     %11110000
        .db     %11110000
        .db     %01100000

img_player_bullet_5:
        .db     5,7
        .db     %00100000
        .db     %01110000
        .db     %11111000
        .db     %11111000
        .db     %11111000
        .db     %11011000
        .db     %10001000

img_quad_bullet:
        .db     3,5     
        .db     %01000000       
        .db     %11100000       
        .db     %11100000       
        .db     %11100000       
        .DB     %11100000

;############## Dropped items

img_eb_1:
        .db     2,2
        .db     %11000000
        .db     %11000000

img_eb_3:
        .db     3,3
        .db     %01000000
        .db     %11100000
        .db     %01000000

img_eb_2:
        .db     3,7
        .db     %10100000
        .db     %11100000
        .db     %11100000
        .db     %01000000
        .db     %01000000
        .db     %11100000
        .db     %01000000

img_money:
        .db     5,7
        .db     %00100000
        .db     %11111000
        .db     %10100000
        .db     %11111000
        .db     %00101000
        .db     %11111000
        .db     %00100000

img_eb_4:
        .db     5,5
        .db     %01110000
        .db     %11111000
        .db     %11111000
        .db     %11111000
        .db     %01110000

;############## Explosion

explosion_sequence:
        .db     2
        .dw     x1
        .db     2
        .dw     x2
        .db     2
        .dw     x3
        .db     2
        .dw     x4
        .db     2
        .dw     x5
        .db     2
        .dw     x6
        .db     2
        .dw     x7
        .db     2
        .dw     x8
        .db     -1                      ; kill enemy

x1:     .db     8,6
        .db     %00000000       
        .db     %00011100       
        .DB     %00111110       
        .DB     %01010110       
        .DB     %00111000       
        .DB     %00000000

x2:     .db     8,6     
        .db     %00110000       
        .db     %01001110       
        .DB     %10111110       
        .DB     %01001111       
        .DB     %00111000       
        .DB     %00011010

x3:     .db     8,6     
        .db     %11110011       
        .db     %01001110       
        .DB     %10110101       
        .DB     %01000101       
        .DB     %00111110       
        .DB     %11011010

x4:     .db     8,6     
        .db     %11110011       
        .db     %01001110       
        .DB     %10110101       
        .DB     %01000101       
        .DB     %00111110       
        .DB     %11011010

x5:     .db     8,6     
        .db     %01000001       
        .db     %00100110       
        .DB     %00010101       
        .DB     %01000100       
        .DB     %00010010       
        .DB     %10011010

x6:     .db     8,6     
        .db     %01000010       
        .db     %00100000       
        .DB     %00000001       
        .DB     %01000100       
        .DB     %00100010
        .DB     %10001010

x7:     .db     8,6     
        .db     %00001000       
        .db     %11000010       
        .DB     %00000000       
        .db     %00100000       
        .db     %00000001       
        .db     %00110000

x8:     .db     8,6     
        .db     %00000100       
        .DB     %00000000       
        .DB     %01000000       
        .DB     %00000000       
        .db     %00000001       
        .db     %00100100

        .db     -1
