# Cerberus Z80 examples

This directory contains two examples: `cellz80`(Cellular Automaton application) and `typez80`(simplest TV typewriter).

## Requirements

Tools required:

 * GNU Make

 * [sjasmplus assembler](https://github.com/z00m128/sjasmplus)

## Building

Just call gnu-make and get resulting files: 

```
user@host z80 % make
```

If you have no GNU Make, you can call sjasmplus by hands:

```
sjasmplus cellz80.asm
```

And 

```
sjasmplus typez80.asm
```

## Running under different BIOSes

If you want change build address(for another BIOS version) - change in cerberus.cfg "RAM" memory area starting address.

For BBC Basic BIOS: 

```
;; Origin of compiled code
ORG = $0205
```

For Original CAT BIOS:
```
;; Origin of compiled code
ORG = $0202
```