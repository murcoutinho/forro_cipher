
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "hforro14.h"

#define LOAD32_LE(SRC) load32_le(SRC)
static inline uint32_t
load32_le(const uint8_t src[4])
{
#ifdef NATIVE_LITTLE_ENDIAN
    uint32_t w;
    memcpy(&w, src, sizeof w);
    return w;
#else
    uint32_t w = (uint32_t)src[0];
    w |= (uint32_t)src[1] << 8;
    w |= (uint32_t)src[2] << 16;
    w |= (uint32_t)src[3] << 24;
    return w;
#endif
}

#define STORE32_LE(DST, W) store32_le((DST), (W))
static inline void
store32_le(uint8_t dst[4], uint32_t w)
{
#ifdef NATIVE_LITTLE_ENDIAN
    memcpy(dst, &w, sizeof w);
#else
    dst[0] = (uint8_t)w;
    w >>= 8;
    dst[1] = (uint8_t)w;
    w >>= 8;
    dst[2] = (uint8_t)w;
    w >>= 8;
    dst[3] = (uint8_t)w;
#endif
}

#define ROUNDS 7
#define ROTL(a, b) (((a) << (b)) | ((a) >> (32 - (b))))
#define QUARTERROUND(a, b, c, d, e) (        \
    d += e, c ^= d, b += c, b = ROTL(b, 10), \
    a += b, e ^= a, d += e, d = ROTL(d, 27), \
    c += d, b ^= c, a += b, a = ROTL(a, 8))

int hforro14(unsigned char *out, const unsigned char *in,
             const unsigned char *k)
{
    int i;
    uint32_t x0, x1, x2, x3, x4, x5, x6, x7;
    uint32_t x8, x9, x10, x11, x12, x13, x14, x15;

    x0 = LOAD32_LE(k + 0);
    x1 = LOAD32_LE(k + 4);
    x2 = LOAD32_LE(k + 8);
    x3 = LOAD32_LE(k + 12);
    x4 = LOAD32_LE(in + 0);
    x5 = LOAD32_LE(in + 4);
    x6 = 0x746C6F76;
    x7 = 0x61616461;
    x8 = LOAD32_LE(k + 16);
    x9 = LOAD32_LE(k + 20);
    x10 = LOAD32_LE(k + 24);
    x11 = LOAD32_LE(k + 28);
    x12 = LOAD32_LE(in + 8);
    x13 = LOAD32_LE(in + 12);
    x14 = 0x72626173;
    x15 = 0x61636E61;

    for (i = 0; i < ROUNDS; i++)
    {
        QUARTERROUND(x0, x4, x8, x12, x3);
        QUARTERROUND(x1, x5, x9, x13, x0);
        QUARTERROUND(x2, x6, x10, x14, x1);
        QUARTERROUND(x3, x7, x11, x15, x2);
        QUARTERROUND(x0, x5, x10, x15, x3);
        QUARTERROUND(x1, x6, x11, x12, x0);
        QUARTERROUND(x2, x7, x8, x13, x1);
        QUARTERROUND(x3, x4, x9, x14, x2);
    }

    STORE32_LE(out + 0, x4);
    STORE32_LE(out + 4, x5);
    STORE32_LE(out + 8, x6);
    STORE32_LE(out + 12, x7);
    STORE32_LE(out + 16, x12);
    STORE32_LE(out + 20, x13);
    STORE32_LE(out + 24, x14);
    STORE32_LE(out + 28, x15);

    return 0;
}

size_t
hforro14_outputbytes(void)
{
    return hforro14_OUTPUTBYTES;
}

size_t
hforro14_inputbytes(void)
{
    return hforro14_INPUTBYTES;
}

size_t
hforro14_keybytes(void)
{
    return hforro14_KEYBYTES;
}

size_t
hforro14_constbytes(void)
{
    return hforro14_CONSTBYTES;
}
