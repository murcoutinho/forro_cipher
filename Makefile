CC=gcc
CFLAGS=-march=native -mtune=native -O3 -fomit-frame-pointer -fwrapv

FORRO_NEON_SRC=src/forro/arm-neon/forro.c
FORRO_REF_SRC=src/forro/ref/forro.c
FORRO_X86_SRC=src/forro/x86-simd/forro.c
XOTE_REF_SRC=src/xote/ref/xote.c
XOTE_X86_SRC=src/xote/x86-simd/xote.c

TEST_SRC=test/test.c

BUILD_DIR=build

.PHONY: all ref x86_simd neon
all: $(BUILD_DIR)/test

$(BUILD_DIR)/test: ref
	@$(CC) $(CFLAGS) -I. $(BUILD_DIR)/xote_ref.o $(BUILD_DIR)/forro_ref.o $(TEST_SRC) -o $@

ref: $(BUILD_DIR)/xote_ref.o $(BUILD_DIR)/forro_ref.o

$(BUILD_DIR)/xote_ref.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(XOTE_REF_SRC) -o $@

$(BUILD_DIR)/forro_ref.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_REF_SRC) -o $@

x86_simd: $(BUILD_DIR)/xote_x86_simd.o $(BUILD_DIR)/forro_x86_simd.o

$(BUILD_DIR)/xote_x86_simd.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(XOTE_X86_SRC) -o $@

$(BUILD_DIR)/forro_x86_simd.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_X86_SRC) -o $@

neon: $(BUILD_DIR)/forro_neon.o

$(BUILD_DIR)/forro_neon.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_NEON_SRC) -o $@

.PHONY : clean
clean:
	rm -r $(BUILD_DIR)
