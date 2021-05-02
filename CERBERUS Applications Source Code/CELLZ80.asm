org $0202

  ld b,$28
  ld hl,$8000

clear:
  ld (hl),$20
  inc hl
  djnz clear
  ld hl,$8014
  ld (hl),$08

  ld bc,$0008
  ld de,$f040
  ld hl,char
  ldir
  call print

begin:
  ld ix,$8000
  ld a,(ix)
  add a,(ix+1)
  ld ix,$8028
  add a,(ix-1)
  call eval
  ld hl,$8028
  ld (hl),a
  ld ix,$8001
  ld hl,$8029
automaton:
  ld a,(ix-1)
  add a,(ix)
  add a,(ix+1)
  call eval
  ld (hl),a
  inc ixl
  inc l
  ld a,$4f
  cp l
  jp nz,automaton
  ld ix,$8000
  ld a,(ix)
  ld ix,$8027
  add a,(ix)
  add a,(ix-1)
  call eval
  ld hl,$804f
  ld (hl),a
  call copy
  call print
  ld hl,$0200
  ld a,(hl)
  cp $01
  jp nz,begin
  ld (hl),$00
  ld a,($0201)
  cp $73
  jp nz,begin
  halt
  jp begin

eval:
  cp $60
  jp z,isdead
  cp $18
  jp z,isdead
  cp $48
  jp z, isalive
  ld a,(ix-1)
  cp $20
  jp z,isalive
isdead:
  ld a,$20
  ret
isalive:
  ld a,$08
  ret

copy:
  ld bc,$0028
  ld de,$8000
  ld hl,$8028
  ldir
  ret

print:
  ld bc,$0488
  ld de,$f800
  ld hl,$f828
  ldir
  ld bc,$0028
  ld de,$fc88
  ld hl,$8000
  ldir
  ret

char:
  db $ff
  db $ff
  db $ff
  db $ff
  db $ff
  db $ff
  db $ff
  db $ff
