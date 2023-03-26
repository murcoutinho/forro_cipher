CC=gcc
CFLAGS=-march=native -mtune=native -O3 -fomit-frame-pointer -fwrapv

FORRO_NEON_SRC=src/forro/arm-neon/forro.c
FORRO_REF_SRC=src/forro/ref/forro.c
FORRO_X86_SRC=src/forro/x86-simd/forro.c
HFORRO_SRC = src/hforro/hforro14.c
XOTE_REF_SRC=src/xote/ref/xote.c
XOTE_X86_SRC=src/xote/x86-simd/xote.c

TEST_REF_SRC=test/test_ref.c
TEST_X86_SRC=test/test_x86_simd.c
TEST_NEON_SRC=test/test_neon.c
TEST_HFORRO_SRC=test/test_hforro14.c

BUILD_DIR=build

.PHONY: ref x86_simd neon test_ref test_x86_simd test_neon

$(BUILD_DIR)/test_ref: ref
	@$(CC) $(CFLAGS) -I. $(BUILD_DIR)/xote_ref.o $(BUILD_DIR)/forro_ref.o $(TEST_REF_SRC) -o $@

$(BUILD_DIR)/test_x86_simd: x86_simd
	@$(CC) $(CFLAGS) -I. $(BUILD_DIR)/xote_x86_simd.o $(BUILD_DIR)/forro_x86_simd.o $(TEST_X86_SRC) -o $@

$(BUILD_DIR)/test_neon: neon
	@$(CC) $(CFLAGS) -I. $(BUILD_DIR)/forro_neon.o $(TEST_NEON_SRC) -o $@

$(BUILD_DIR)/test_hforro14: hforro14
	@$(CC) $(CFLAGS) -I. $(BUILD_DIR)/hforro14.o $(TEST_HFORRO_SRC) -o $@

test_ref: $(BUILD_DIR)/test_ref
ref: $(BUILD_DIR)/xote_ref.o $(BUILD_DIR)/forro_ref.o

$(BUILD_DIR)/xote_ref.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(XOTE_REF_SRC) -o $@

$(BUILD_DIR)/forro_ref.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_REF_SRC) -o $@

test_x86_simd: $(BUILD_DIR)/test_x86_simd
x86_simd: $(BUILD_DIR)/xote_x86_simd.o $(BUILD_DIR)/forro_x86_simd.o

$(BUILD_DIR)/xote_x86_simd.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(XOTE_X86_SRC) -o $@

$(BUILD_DIR)/forro_x86_simd.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_X86_SRC) -o $@

test_neon: $(BUILD_DIR)/test_neon
neon: $(BUILD_DIR)/forro_neon.o

$(BUILD_DIR)/forro_neon.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(FORRO_NEON_SRC) -o $@

test_hforro14: $(BUILD_DIR)/test_hforro14
hforro14: $(BUILD_DIR)/hforro14.o

$(BUILD_DIR)/hforro14.o:
	@mkdir -p $(BUILD_DIR)
	@$(CC) $(CFLAGS) -c $(HFORRO_SRC) -o $@

.PHONY : clean
clean:
	@rm -r $(BUILD_DIR)
