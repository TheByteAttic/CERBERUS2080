# Cerberus 6502 examples

This directory contains two examples: `cell6502`(Cellular Automaton application) and `type6502`(simplest TV typewriter).

## Requirements

Tools required:

 * GNU Make

 * [CC65 compiler suite](https://cc65.github.io)

## Building

Just call gnu-make and get resulting files: 

```
user@host 6502 % make
```

If you have no GNU Make, you can call cc65 tools by hands:

```
ca65 cell6502.asm -o cell6502.o
ld65 -C cerberus.cfg cell6502.o -o cell6502.bin
```

And 

```
ca65 type6502.asm -o type6502.o
ld65 -C cerberus.cfg type6502.o -o type6502.bin
```

## Running under different BIOSes

If you want change build address(for another BIOS version) - change in cerberus.cfg "RAM" memory area starting address.

For BBC Basic BIOS: 

```
RAM:        start = $0205, size = $EDFA, type = rw, fill = no, fillval = $00, file = %O;
```

For Original CAT BIOS:
```
RAM:        start = $0202, size = $EDFD, type = rw, fill = no, fillval = $00, file = %O;
```