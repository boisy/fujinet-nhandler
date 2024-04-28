##
## CoCo Makefile
##

BINARY = FNBS.BIN
DSK = fnbs.dsk

all: $(DSK)

fnbs.dsk: $(BINARY)
	decb dskini $@
	decb copy -2 -b $(BINARY) $@,
	
$(BINARY): src/fnbs.asm
	lwasm --decb -o $(BINARY) src/fnbs.asm

clean:
	rm -rf $(BINARY) $(DSK)

