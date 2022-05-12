// #include "namespace.h"
/*
xote.c version $Date: 2020/04/20 15:38:05 $
Murilo Coutinho
Iago Passos
Based on Romain Dolbeau's chacha implementation
Public domain.
*/

#include "xote.h"
// #include "api.h"

#include <immintrin.h>
#include <stdio.h>
#define ROUNDS 14
#define U32C(v) (v##U)
#define ROTL32(v, n) \
    (U32V((v) << (n)) | ((v) >> (32 - (n))))

#define U32TO8_LITTLE(p, v) (((uint32_t *)(p))[0] = v)
#define U8TO32_LITTLE(p) (((uint32_t *)(p))[0])

#define U32V(v) ((uint32_t)(v)&U32C(0xFFFFFFFF))

#define ROTATE(v, c) (ROTL32(v, c))
#define XOR(v, w) ((v) ^ (w))
#define PLUS(v, w) (U32V((v) + (w)))
#define PLUSONE(v) (PLUS((v), 1))
#define PLUSTWO(v) (PLUS((v), 2))

#define QUARTERROUND(a, b, c, d, e)      \
    x[d] = PLUS(x[d], x[e]);             \
    x[c] = XOR(x[c], x[d]);              \
    x[b] = ROTATE(PLUS(x[b], x[c]), 10); \
    x[a] = PLUS(x[a], x[b]);             \
    x[e] = XOR(x[e], x[a]);              \
    x[d] = ROTATE(PLUS(x[d], x[e]), 27); \
    x[c] = PLUS(x[c], x[d]);             \
    x[b] = XOR(x[b], x[c]);              \
    x[a] = ROTATE(PLUS(x[a], x[b]), 8);

static void forro_1(uint8_t output[64], const uint32_t input[16])
{
    uint32_t x[16];
    int i;

    for (i = 0; i < 16; ++i)
        x[i] = input[i];
    for (i = ROUNDS; i > 0; i -= 2)
    {
        QUARTERROUND(0, 4, 8, 12, 3)
        QUARTERROUND(1, 5, 9, 13, 0)
        QUARTERROUND(2, 6, 10, 14, 1)
        QUARTERROUND(3, 7, 11, 15, 2)
        QUARTERROUND(0, 5, 10, 15, 3)
        QUARTERROUND(1, 6, 11, 12, 0)
        QUARTERROUND(2, 7, 8, 13, 1)
        QUARTERROUND(3, 4, 9, 14, 2)
    }
    for (i = 0; i < 16; ++i)
        x[i] = PLUS(x[i], input[i]);
    for (i = 0; i < 16; ++i)
        U32TO8_LITTLE(output + 4 * i, x[i]);
}

static void xote(uint8_t output[128], const uint32_t input[16])
{
    uint32_t x[32];
    int i;

    for (i = 0; i < 16; ++i)
    {
        x[i] = input[i];
        x[16 + i] = input[i];
    }

    x[20] = PLUSONE(x[20]);

    for (i = ROUNDS; i > 0; i -= 2)
    {
        QUARTERROUND(0, 4, 8, 12, 3);
        QUARTERROUND(16, 20, 24, 28, 19);
        QUARTERROUND(1, 5, 9, 13, 0);
        QUARTERROUND(17, 21, 25, 29, 16);
        QUARTERROUND(2, 6, 10, 14, 1);
        QUARTERROUND(18, 22, 26, 30, 17);
        QUARTERROUND(3, 7, 11, 15, 2);
        QUARTERROUND(19, 23, 27, 31, 18);
        QUARTERROUND(0, 5, 10, 15, 3);
        QUARTERROUND(16, 21, 26, 31, 19);
        QUARTERROUND(1, 6, 11, 12, 0);
        QUARTERROUND(17, 22, 27, 28, 16);
        QUARTERROUND(2, 7, 8, 13, 1);
        QUARTERROUND(18, 23, 24, 29, 17);
        QUARTERROUND(3, 4, 9, 14, 2);
        QUARTERROUND(19, 20, 25, 30, 18);
    }
    for (i = 0; i < 16; ++i)
    {
        x[i] = PLUS(x[i], input[i]);
        x[16 + i] = PLUS(x[16 + i], i != 4 ? input[i] : input[i] + 1);
    }
    for (i = 0; i < 16; ++i)
    {
        U32TO8_LITTLE(output + 4 * i, x[i]);
        U32TO8_LITTLE(output + 4 * i + 64, x[i + 16]);
    }
}

void xote_init(void)
{
    return;
}

static const char sigma[16] = "expand 32-byte k";
static const char tau[16] = "expand 16-byte k";

void xote_keysetup(stream_ctx *x, const uint8_t *k, uint32_t kbits, uint32_t ivbits)
{
    const char *constants;

    x->state[0] = U8TO32_LITTLE(k + 0);
    x->state[1] = U8TO32_LITTLE(k + 4);
    x->state[2] = U8TO32_LITTLE(k + 8);
    x->state[3] = U8TO32_LITTLE(k + 12);
    if (kbits == 256)
    { /* recommended */
        k += 16;
        constants = sigma;
    }
    else
    { /* kbits == 128 */
        constants = tau;
    }
    x->state[8] = U8TO32_LITTLE(k + 0);
    x->state[9] = U8TO32_LITTLE(k + 4);
    x->state[10] = U8TO32_LITTLE(k + 8);
    x->state[11] = U8TO32_LITTLE(k + 12);
    x->state[6] = U8TO32_LITTLE(constants + 0);
    x->state[7] = U8TO32_LITTLE(constants + 4);
    x->state[14] = U8TO32_LITTLE(constants + 8);
    x->state[15] = U8TO32_LITTLE(constants + 12);
}

void xote_ivsetup(stream_ctx *x, const uint8_t *iv)
{
    x->state[4] = 0; //0xFFFFFFFE;
    x->state[5] = 0;
    x->state[12] = U8TO32_LITTLE(iv + 0);
    x->state[13] = U8TO32_LITTLE(iv + 4);
}

void xote_encrypt_bytes(stream_ctx *x_, const uint8_t *m, uint8_t *c_, uint32_t bytes)
{
    uint8_t output[64];
    uint8_t output128[128];
    int i;
    uint32_t *x = (uint32_t *)&x_->state;
    uint8_t *out = c_;

#if defined(__AVX512F__)
#include "u32.h"
#include "u16mask.h"
#endif

#if defined(__AVX2__)
#include "u16.h"
#endif

#if 1
#include "u8.h"
#endif

#if 1
#include "u4.h"
#endif

    if (!bytes)
        return;
    while (bytes >= 128)
    {
        xote(output128, x);
        x[4] = PLUSTWO(x[4]);
        if (!(x[4] >> 1))
        {
            x[5] = PLUSONE(x[5]);
            /* stopping at 2^70 bytes per nonce is user's responsibility */
        }
        for (i = 0; i < 128; ++i)
            out[i] = m[i] ^ output128[i];
        bytes -= 128;
        out += 128;
        m += 128;
    }
    if (!bytes)
        return;
    for (;;)
    {
        forro_1(output, x);
        x[4] = PLUSONE(x[4]);
        if (!x[4])
        {
            x[5] = PLUSONE(x[5]);
            /* stopping at 2^70 bytes per nonce is user's responsibility */
        }
        if (bytes <= 64)
        {
            for (i = 0; i < bytes; ++i)
                out[i] = m[i] ^ output[i];
            return;
        }
        for (i = 0; i < 64; ++i)
            out[i] = m[i] ^ output[i];
        bytes -= 64;
        out += 64;
        m += 64;
    }
}

void xote_decrypt_bytes(stream_ctx *x, const uint8_t *c, uint8_t *m, uint32_t bytes)
{
    xote_encrypt_bytes(x, c, m, bytes);
}

void xote_keystream_bytes(stream_ctx *x, uint8_t *stream, uint32_t bytes)
{
    uint32_t i;
    for (i = 0; i < bytes; ++i)
        stream[i] = 0;
    xote_encrypt_bytes(x, stream, stream, bytes);
}
