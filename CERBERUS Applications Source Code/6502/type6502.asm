;; Typewriter example application
;; 
;; 2023 Aleksandr Sharikhin
.pc02

;; Flag of received data from CAT
MAILFLAG = $0200
;; Key code/response code from CAT
MAILBOX  = $0201
;; Inverted space character
CURSOR   = ' '+$80


.segment "CODE"
;; Origin of this code area can be configured from linker config(cerberus.cfg)
start:
    ldy #$00 ;; Init offset for drawing characters
    
    lda #CURSOR
    sta screen ; Drawing curcor

;; Waiting for keypress
;; Better not use WAI instruction cause VBlank INT added by CAT firmware
wait:   
    lda MAILFLAG    ;; LDA affects flag - so we don't need make `cmp` operation
    beq wait        ;; BEQ is BRANCH if ZERO flag set(compare works like subtraction)
    
    lda MAILBOX     ;; Reading character
    stz MAILFLAG    ;; Cleaning mailbox flag

    sta screen, y   ;; Puting character
    iny             ;; Increment of index register
    
    lda #CURSOR     ;; Loading cursor character to accumulator
    sta screen, y   ;; Draw it
    
    jmp wait        ;; Let's back to start of our loop

.segment "SCREEN"
;; Start of screen area
screen: