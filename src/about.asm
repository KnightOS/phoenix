about_screen:
    pcall(clearBuffer)

    ld de, (23 << 8) | 0
    ld b, d
    kld(hl, title_main)
    pcall(drawStr)
    ld de, (39 << 8) | 6
    ld b, d
    kld(hl, about_version)
    pcall(drawStr)
    ld de, (20 << 8) | 15
    ld b, d
    kld(hl, about_original)
    pcall(drawStr)
    ld de, (21 << 8) | 30
    ld b, d
    kld(hl, about_authors)
    pcall(drawStr)
about_loop:
    pcall(fastCopy)
    pcall(flushKeys)
    pcall(waitKey)

    cp kMODE
    pcall(z, exitThread)
    cp kDEL
    pcall(z, exitThread)
    cp kCLEAR
    pcall(z, exitThread)
    cp kENTER
    kcall(z, title_screen)
    cp k2nd
    kcall(z, title_screen)

    jr about_loop

about_version:
    .db "v"
    .exec knightos query version
    .db 0
about_original:
    .db "A KnightOS port of\n"
    .db "   Phoenix 4.1", 0
about_authors:
    .db "    PORT BY\n"
    .db "  Drew DeVault\n"
    .db " ORIGINALLY BY\n"
    .db "Patrick Davidson", 0
