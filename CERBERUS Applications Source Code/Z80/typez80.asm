;; Typewriter example application
;; 
;; 2023 Aleksandr Sharikhin
    output "typez80.bin"

    include "cerberus.cfg"
;; Inverted space - cursor
CURSOR = ' ' + $80
;; Address of mailbox
MAILBOX = $200
;; Flag offset(from mailbox)
MAILFLAG_OFFSET = $0
;; Data offset(from mailbox)
MAILBOX_OFFSET  = $1

    org ORG
start:
    ld hl, SCREEN_START     ;; Loading screen address to HL(will be used only for screen)

    ld a, CURSOR            ;; Loading cursor char to accum
    ld (hl), a              ;; Storing it to screen

    ld ix, MAILBOX          ;; Loading address of MAILBOX to first index register
    xor a                   ;; Cleaning accumulator
readkey:
    cp (ix + MAILFLAG_OFFSET)   ;; Comparing accum(contains 0) with mail flag
    jr z, readkey               ;; If values equals - try again

    ld (ix + MAILFLAG_OFFSET), a    ;; Cleaning mail flag

    ld a, (ix + MAILBOX_OFFSET)     ;; Reading key code
    ld (hl), a                      ;; Storing it to screen

    inc hl                          ;; Moving cursor next

    ld a, CURSOR                    ;; Same drawing cursor routine as before
    ld (hl), a
    
    xor a                       ;; Cleaning accumulator - for comparing with mail flag
    jr readkey                  ;; Back to reading keys



    