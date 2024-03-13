TARGETS := cell6502.bin type6502.bin

ASM := ca65
LINK := ld65
ASMFLAGS := -t none --cpu 65C02
LDFLAGS := -C cerberus.cfg

all: $(TARGETS)

.PHONY: all

%.o: %.asm 
		$(ASM) $< -o $@

%.bin: %.o cerberus.cfg
		$(LINK) $(LDFLAGS) $< -o $@

clean:
		rm -rf *.o *.bin