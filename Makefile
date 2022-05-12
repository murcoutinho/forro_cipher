CC=gcc
CFLAGS=-march=native -mtune=native -O3 -fomit-frame-pointer -fwrapv

FORRO_NEON_SRC=src/forro/arm-neon/forro.c
FORRO_NEON_HEADERS=src/forro/arm-neon/forro.h src/forro/arm-neon/u4.h

FORRO_REF_SRC=src/forro/ref/forro.c
FORRO_REF_HEADERS=src/forro/ref/forro.h

FORRO_X86_SRC=src/forro/x86-simd/forro.c
FORRO_X86_HEADERS=src/forro/x86-simd/forro.h src/forro/x86-simd/u4.h src/forro/x86-simd/u8.h src/forro/x86-simd/u16.h src/forro/x86-simd/u16mask.h

XOTE_REF_SRC=src/xote/ref/xote.c
XOTE_REF_HEADERS=src/xote/ref/xote.h

XOTE_X86_SRC=src/xote/x86-simd/forro.c
XOTE_X86_HEADERS=src/xote/x86-simd/forro.h src/xote/x86-simd/u4.h src/xote/x86-simd/u8.h src/xote/x86-simd/u16.h src/xote/x86-simd/u16mask.h src/xote/x86-simd/u32.h

TEST_SRC=test/test.c

.PHONY: all
all: ref

ref: xote_ref forro_ref

xote_ref:
	$(CC) $(CFLAGS) $(XOTE_REF_HEADERS) -c $(XOTE_REF_SRC)

forro_ref:
	$(CC) $(CFLAGS) $(FORRO_REF_HEADERS) -c $(FORRO_REF_SRC)

x86_simd: xote_x86_simd forro_x86_simd

xote_x86_simd:
	$(CC) $(CFLAGS) $(XOTE_X86_HEADERS) -c $(XOTE_X86_SRC)

forro_x86_simd:
	$(CC) $(CFLAGS) $(FORRO_X86_HEADERS) -c $(FORRO_X86_SRC)

neon: xote_neon forro_neon

xote_neon:
	$(CC) $(CFLAGS) $(XOTE_NEON_HEADERS) -c $(XOTE_NEON_SRC)

forro_neon:
	$(CC) $(CFLAGS) $(FORRO_NEON_HEADERS) -c $(FORRO_NEON_SRC)

.PHONY : clean
clean:
