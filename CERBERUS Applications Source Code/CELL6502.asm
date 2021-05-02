* = $0202
              lda #$80
              sta $01
              sta $03
              sta $05
              sta $07
              lda #$20
              ldy #$00
clear         sta $8000,y
              iny
              cpy #$28
              bne clear
              lda #$08
              ldy #$14
              sta $8000,y
              jsr print
              ldx #$00
              stx $8200

begin         jsr ldchar
              ldy #$00
              lda #$27
              sta $00
              lda $8027
              clc
              adc $8000
              adc $8001
              jsr eval
              sta $8028
              lda #$00
              sta $00
              lda #$01
              sta $02
              lda #$29
              sta $04
              lda #$02
              sta $06
automaton     lda ($00),y
              clc
              adc ($02),y
              adc ($06),y
              jsr eval
              sta ($04),y
              inc $00
              inc $02
              inc $04
              inc $06
              lda $02
              cmp #$27
              bne automaton
              jsr wrap
              jsr copy
              jsr print
              lda $8200
              clc
              adc #$08
              sta $8200
              cmp #$d0
              bne poll
              lda #$00
              sta $8200
poll          lda $0200
              cmp #$01
              bne begin
              lda #$00
              sta $0200
              lda $0201
              cmp #$73
              bne begin
              wai
              jmp begin

ldchar        ldx $8200
              ldy #$00
charloop      lda chars,x
              sta $f040,y
              inx
              iny
              cpy #$08
              bne charloop
              rts

eval          ldy #$00
              cmp #$60
              beq isdead
              cmp #$18
              beq isdead
              cmp #$48
              beq isalive
              lda ($00),y
              cmp #$20
              beq isalive
isdead        lda #$20
              rts
isalive       lda #$08
              rts

wrap          lda $8026
              clc
              adc $8027
              adc $8000
              jsr eval
              sta $804f
              rts

copy          ldx #$28
              ldy #$00
copyloop      lda $8000,x
              sta $8000,y
              iny
              inx
              cpx #$28
              bne copyloop
              ldx #$00
              ldy #$00
              rts

print         lda #$00
              sta $00
              lda #$f8
              sta $01
              ldy #$28
scroll        lda ($00),y
              ldy #$00
              sta ($00),y
              ldy #$28
              jsr increment
              lda $01
              cmp #$fc
              bne scroll
              lda $00
              cmp #$88
              bne scroll
              lda #$80
              sta $01
              ldx #$00
printline     lda $8000,x
              sta $fc88,x
              inx
              cpx #$28
              bne printline
              rts

increment     lda $00
              cmp #$ff
              beq next
              inc $00
              rts
next          lda #$00
              sta $00
              inc $01
              rts

chars
.byte         $00
.byte         $00
.byte         $00
.byte         $18
.byte         $18
.byte         $00
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $18
.byte         $3c
.byte         $3c
.byte         $18
.byte         $00
.byte         $00

.byte         $00
.byte         $18
.byte         $3c
.byte         $7e
.byte         $7e
.byte         $3c
.byte         $18
.byte         $00

.byte         $18
.byte         $3c
.byte         $7e
.byte         $ff
.byte         $ff
.byte         $7e
.byte         $3c
.byte         $18

.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff

.byte         $f0
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $f0

.byte         $00
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff

.byte         $00
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $ff
.byte         $ff
.byte         $ff
.byte         $ff

.byte         $00
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f

.byte         $00
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $0f

.byte         $00
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $00

.byte         $00
.byte         $7f
.byte         $7f
.byte         $7f
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $00

.byte         $00
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $00

.byte         $00
.byte         $70
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $00

.byte         $00
.byte         $00
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $00

.byte         $00
.byte         $00
.byte         $3e
.byte         $3e
.byte         $7e
.byte         $7e
.byte         $7e
.byte         $00

.byte         $00
.byte         $00
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $00

.byte         $00
.byte         $00
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $0e
.byte         $00

.byte         $00
.byte         $00
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $3e
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $3e
.byte         $3e
.byte         $3c
.byte         $3c
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $3c
.byte         $3c
.byte         $3c
.byte         $3c
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $30
.byte         $3c
.byte         $3c
.byte         $3c
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $00
.byte         $3c
.byte         $3c
.byte         $3c
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $00
.byte         $1c
.byte         $1c
.byte         $1c
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $00
.byte         $1c
.byte         $1c
.byte         $00
.byte         $00
.byte         $00

.byte         $00
.byte         $00
.byte         $00
.byte         $18
.byte         $18
.byte         $00
.byte         $00
.byte         $00
