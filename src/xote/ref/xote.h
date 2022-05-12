#include <stdint.h>
#include <time.h>

#ifndef __basic_def
#define __basic_def
// Little endian machine assumed (x86-64).
#define U32TO8_LITTLE(p, v) (((uint32_t *)(p))[0] = v)
#define U8TO32_LITTLE(p) (((uint32_t *)(p))[0])

static const uint8_t SIGMA[16] = "voltadaasabranca";
static const uint8_t TAU[16] = "voltadaasabranca";
typedef struct
{
  uint32_t state[16];
} stream_ctx __attribute__((aligned(16)));
#endif

void xote(uint8_t out[128], const uint32_t init[32]);
void xote_init();
void xote_keysetup(stream_ctx *x, uint8_t *key, uint32_t keylen, uint32_t ivlen);
void xote_ivsetup(stream_ctx *x, uint8_t *iv);
void xote_encrypt_bytes(stream_ctx *x, const uint8_t *m, uint8_t *c, uint32_t bytes);
void xote_decrypt_bytes(stream_ctx *x, const uint8_t *c, uint8_t *m, uint32_t bytes);
void xote_keystream_bytes(stream_ctx *x, uint8_t *stream, uint32_t bytes);