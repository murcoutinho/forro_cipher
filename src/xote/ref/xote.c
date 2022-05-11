#include "xote.h"
#include <stdio.h>
#pragma GCC optimize("O3")
#define rounds 6
#define ROTL(a, b) (((a) << (b)) | ((a) >> (32 - (b))))
#define Q(a, b, c, d, e) (                   \
    d += e, c ^= d, b += c, b = ROTL(b, 10), \
    a += b, e ^= a, d += e, d = ROTL(d, 27), \
    c += d, b ^= c, a += b, a = ROTL(a, 8))

inline void xote(uint8_t out[128], const uint32_t init[16])
{
    uint32_t state_vector[16];
    uint32_t state_vector2[16];
    int i;
    for (i = 0; i < 16; i++)
    {
        state_vector[i] = init[i];
        state_vector2[i] = init[i];
    }

    state_vector2[4] = state_vector2[4] + 1;

    for (i = 0; i < rounds; i++)
    {
        Q(state_vector[0], state_vector[4], state_vector[8], state_vector[12], state_vector[3]);
        Q(state_vector2[0], state_vector2[4], state_vector2[8], state_vector2[12], state_vector2[3]);
        Q(state_vector[1], state_vector[5], state_vector[9], state_vector[13], state_vector[0]);
        Q(state_vector2[1], state_vector2[5], state_vector2[9], state_vector2[13], state_vector2[0]);
        Q(state_vector[2], state_vector[6], state_vector[10], state_vector[14], state_vector[1]);
        Q(state_vector2[2], state_vector2[6], state_vector2[10], state_vector2[14], state_vector2[1]);
        Q(state_vector[3], state_vector[7], state_vector[11], state_vector[15], state_vector[2]);
        Q(state_vector2[3], state_vector2[7], state_vector2[11], state_vector2[15], state_vector2[2]);
        Q(state_vector[0], state_vector[5], state_vector[10], state_vector[15], state_vector[3]);
        Q(state_vector2[0], state_vector2[5], state_vector2[10], state_vector2[15], state_vector2[3]);
        Q(state_vector[1], state_vector[6], state_vector[11], state_vector[12], state_vector[0]);
        Q(state_vector2[1], state_vector2[6], state_vector2[11], state_vector2[12], state_vector2[0]);
        Q(state_vector[2], state_vector[7], state_vector[8], state_vector[13], state_vector[1]);
        Q(state_vector2[2], state_vector2[7], state_vector2[8], state_vector2[13], state_vector2[1]);
        Q(state_vector[3], state_vector[4], state_vector[9], state_vector[14], state_vector[2]);
        Q(state_vector2[3], state_vector2[4], state_vector2[9], state_vector2[14], state_vector2[2]);
    }

    for (i = 0; i < 16; i++)
    {
        state_vector[i] = init[i] + state_vector[i];
        state_vector2[i] = init[16 + i] + state_vector2[i];
    }
    for (i = 0; i < 16; i++)
    {
        U32TO8_LITTLE(out + 4 * i, state_vector[i]);
        U32TO8_LITTLE(out + 4 * i + 64, state_vector2[i]);
    }

    return;
}

void xote_init()
{
    return;
}

void xote_keysetup(stream_ctx *x, uint8_t *key, uint32_t keylen, uint32_t ivlen)
{
    if (keylen == 256)
    {
        // 256 bit key.
        x->state[0] = U8TO32_LITTLE(key + 0);
        x->state[1] = U8TO32_LITTLE(key + 4);
        x->state[2] = U8TO32_LITTLE(key + 8);
        x->state[3] = U8TO32_LITTLE(key + 12);
        x->state[6] = U8TO32_LITTLE(SIGMA + 0);
        x->state[7] = U8TO32_LITTLE(SIGMA + 4);
        x->state[8] = U8TO32_LITTLE(key + 16);
        x->state[9] = U8TO32_LITTLE(key + 20);
        x->state[10] = U8TO32_LITTLE(key + 24);
        x->state[11] = U8TO32_LITTLE(key + 28);
        x->state[14] = U8TO32_LITTLE(SIGMA + 8);
        x->state[15] = U8TO32_LITTLE(SIGMA + 12);
    }
    else
    {
        // 128 bit key.
        x->state[0] = U8TO32_LITTLE(key + 0);
        x->state[1] = U8TO32_LITTLE(key + 4);
        x->state[2] = U8TO32_LITTLE(key + 8);
        x->state[3] = U8TO32_LITTLE(key + 12);
        x->state[6] = U8TO32_LITTLE(TAU + 0);
        x->state[7] = U8TO32_LITTLE(TAU + 4);
        x->state[8] = U8TO32_LITTLE(key + 0);
        x->state[9] = U8TO32_LITTLE(key + 4);
        x->state[10] = U8TO32_LITTLE(key + 8);
        x->state[11] = U8TO32_LITTLE(key + 12);
        x->state[14] = U8TO32_LITTLE(TAU + 8);
        x->state[15] = U8TO32_LITTLE(TAU + 12);
    }
}

void xote_ivsetup(stream_ctx *x, uint8_t *iv)
{
    x->state[4] = 0;
    x->state[5] = 0;
    x->state[12] = U8TO32_LITTLE(iv + 0);
    x->state[13] = U8TO32_LITTLE(iv + 4);
}

inline void xote_encrypt_bytes(stream_ctx *x, const uint8_t *m, uint8_t *c, uint32_t bytes)
{
    uint8_t output[128];
    int i;

    if (!bytes)
        return;
    for (;;)
    {
        xote(output, x->state);
        x->state[4] = x->state[4] + 2;
        if (!(x->state[4] >> 1))
        {
            x->state[5] = x->state[5] + 1;
        }
        if (bytes <= 128)
        {
            for (i = 0; i < bytes; ++i)
                c[i] = m[i] ^ output[i];
            return;
        }
        for (i = 0; i < 128; ++i)
            c[i] = m[i] ^ output[i];
        bytes -= 128;
        c += 128;
        m += 128;
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