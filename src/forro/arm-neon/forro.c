#include "forro.h"
#include <arm_neon.h>
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

static void salsa20_wordtobyte(uint8_t output[64], const uint32_t input[16])
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

void forro_init(void)
{
    return;
}

static const char sigma[16] = "voltadaasabranca";

void forro_keysetup(stream_ctx *x, const uint8_t *k)
{
    x->state[0] = U8TO32_LITTLE(k + 0);
    x->state[1] = U8TO32_LITTLE(k + 4);
    x->state[2] = U8TO32_LITTLE(k + 8);
    x->state[3] = U8TO32_LITTLE(k + 12);
    x->state[8] = U8TO32_LITTLE(k + 16);
    x->state[9] = U8TO32_LITTLE(k + 20);
    x->state[10] = U8TO32_LITTLE(k + 24);
    x->state[11] = U8TO32_LITTLE(k + 28);
    x->state[6] = U8TO32_LITTLE(sigma + 0);
    x->state[7] = U8TO32_LITTLE(sigma + 4);
    x->state[14] = U8TO32_LITTLE(sigma + 8);
    x->state[15] = U8TO32_LITTLE(sigma + 12);
}

void forro_ivsetup(stream_ctx *x, const uint8_t *iv)
{
    x->state[4] = 0; // 0xFFFFFFFE;
    x->state[5] = 0;
    x->state[12] = U8TO32_LITTLE(iv + 0);
    x->state[13] = U8TO32_LITTLE(iv + 4);
}

void forro_encrypt_bytes(stream_ctx *x_, const uint8_t *m, uint8_t *c_, uint32_t bytes)
{
    uint8_t output[64];
    int i;
    uint32_t *x = (uint32_t *)&x_->state;
    uint8_t *out = c_;

#if 1
#include "u4.h"
#endif

#if 0
#include "u1.h"
#endif

    if (!bytes)
        return;
    for (;;)
    {
        salsa20_wordtobyte(output, x);
        x[12] = PLUSONE(x[12]);
        if (!x[12])
        {
            x[13] = PLUSONE(x[13]);
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

void forro_decrypt_bytes(stream_ctx *x, const uint8_t *c, uint8_t *m, uint32_t bytes)
{
    forro_encrypt_bytes(x, c, m, bytes);
}

void forro_keystream_bytes(stream_ctx *x, uint8_t *stream, uint32_t bytes)
{
    uint32_t i;
    for (i = 0; i < bytes; ++i)
        stream[i] = 0;
    forro_encrypt_bytes(x, stream, stream, bytes);
}