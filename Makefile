include .knightos/variables.make

ALL_TARGETS:=$(BIN)phoenix $(APPS)phoenix.app $(SHARE)icons/phoenix.img

$(BIN)phoenix: src/*.asm src/*.i
	mkdir -p $(BIN)
	$(AS) $(ASFLAGS) --listing $(OUT)phoenix.list src/phoenix.asm $(BIN)phoenix

$(APPS)phoenix.app: config/phoenix.app
	mkdir -p $(APPS)
	cp config/phoenix.app $(APPS)phoenix.app

$(SHARE)icons/phoenix.img: config/phoenix.png
	mkdir -p $(SHARE)icons
	kimg -c config/phoenix.png $(SHARE)icons/phoenix.img

include .knightos/sdk.make
