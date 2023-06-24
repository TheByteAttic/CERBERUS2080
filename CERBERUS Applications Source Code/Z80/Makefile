TARGETS := cellz80.bin typez80.bin

ASM := sjasmplus

all: $(TARGETS)

.PHONY: all

%.bin: %.asm cerberus.cfg
		$(ASM) $(ASMFLAGS) $< 

clean:
		rm -rf *.bin