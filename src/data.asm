;##################################################################
;
;   Phoenix-Z80 (Save/Restore)
;
;   Programmed by Patrick Davidson (pad@calc.org)
;        
;   Copyright 2007 by Patrick Davidson.  This software may be freely
;   modified and/or copied with no restrictions.  There is no warranty.
;
;   This file was last updated August 10, 2007.
;
;##################################################################     

;############## Save the game

game_save:
    kld(de, save_dir)
    pcall(directoryExists)
    pcall(nz, createDirectory)
    kld(de, save_path)
    pcall(fileExists)
    pcall(z, deleteFile)
    pcall(openFileWrite)
    kld(ix, perm_vars)
    ld bc, perm_vars_end - perm_vars
    pcall(streamWriteBuffer)
    pcall(closeStream)
    pcall(exitThread)

;############## Test for saved game, restoring if it exists

restore_game:
    kld(de, save_path)
    pcall(fileExists)
    ret nz
    pcall(openFileRead)
    kld(ix, perm_vars)
    ld bc, perm_vars_end - perm_vars
    pcall(streamReadBuffer)
    pcall(closeStream)
    cp a
    ret

delete_save:
    kld(de, save_path)
    pcall(fileExists)
    pcall(z, deleteFile)
    ret

save_dir:
    .db "/var/phoenix", 0
save_path:
    .db "/var/phoenix/saved-game", 0
