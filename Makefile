OBJS = $(shell find code/ -name '*.s' | sed "s/code/build/" | sed "s/\.s/.o/")
RAM_OBJS = build/wram.o build/hram.o build/sram.o
GFX_OBJS = $(shell find gfx/ -name '*.png' | sed "s/gfx/build/" | sed "s/.png/.2bpp/")

all: tokimekiC.gbc

build/%.2bpp: gfx/%.png
	rgbgfx -o $@ $<

build/%.o: code/%.s
	rgbasm -h -L -o $@ $<

build/wram.o: include/wram.s
	rgbasm -h -L -o $@ $<

build/hram.o: include/hram.s
	rgbasm -h -L -o $@ $<

build/sram.o: include/sram.s
	rgbasm -h -L -o $@ $<

tokimekiC.gbc: $(GFX_OBJS) $(OBJS) $(RAM_OBJS)
	rgblink -p 0xff -n tokimekiC.sym -m tokimekiC.map -o $@ $(OBJS) $(RAM_OBJS)
	rgbfix -v -p 0xff -c -k "A4" -l 0x33 -m 0x1b -r 2 -s -t "TOKIMEKI CUL  " $@

	# md5 $@

clean:
	rm -f build/* tokimekiC.gbcc tokimekiC.sym tokimekiC.map
	find . \( -iname '*.1bpp' -o -iname '*.2bpp' \) -exec rm {} +