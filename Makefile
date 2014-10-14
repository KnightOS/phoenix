include .knightos/variables.make

ALL_TARGETS:=$(BIN)phoenix

$(BIN)phoenix: src/*.asm src/*.i
	mkdir -p $(BIN)
	$(AS) $(ASFLAGS) --listing $(OUT)phoenix.list src/phoenix.asm $(BIN)phoenix

include .knightos/sdk.make
