include .knightos/variables.make

ALL_TARGETS:=$(BIN)phoenix $(APPS)phoenix.app

$(BIN)phoenix: src/*.asm src/*.i
	mkdir -p $(BIN)
	$(AS) $(ASFLAGS) --listing $(OUT)phoenix.list src/phoenix.asm $(BIN)phoenix

$(APPS)phoenix.app: config/phoenix.app
	mkdir -p $(APPS)
	cp config/phoenix.app $(APPS)phoenix.app

include .knightos/sdk.make
