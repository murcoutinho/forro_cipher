#include <stdint.h>
#define U32C(v) (v##U)
#define U32V(v) ((uint32_t)(v) &U32C(0xFFFFFFFF))

#define ROTATE(v, c) ( (c && (32-c)) ? ((v<<c)^(v>>(32-c))) : v )
#define XOR(v, w) ((v) ^ (w))
#define PLUS(v, w) (((v) + (w)))
#define MINUS(v, w) (((v) - (w)))
#define PLUSONE(v) (PLUS((v), 1))
#define U32TO8_LITTLE(p,v) (((uint32_t *) (p))[0]=v)
#define U8TO32_LITTLE(p) (((uint32_t *) (p))[0])

#define QUARTERROUND(a, b, c, d, e) \
d = PLUS(d, e); \
c = XOR(c, d); \
b = PLUS(b, c); \
b = ROTATE(b,10);\
a = PLUS(a, b); \
e = XOR(e, a); \
d = PLUS(d, e); \
d = ROTATE(d,27);\
c = PLUS(c, d); \
b = XOR(b, c); \
a = PLUS(a, b); \
a = ROTATE(a,8);


#define LOAD32_LE(v) (((uint32_t ) (v)))
#define STORE32_LE(c,x) (memcpy(c,&x,4))

#define ALG_TYPE_FORRO 1

void forro2_init(uint32_t state[16], uint32_t k[8], uint32_t nonce[2], uint32_t ctr[2])
{
const char *constants = "voltadaasabranca";
state[0] = k[0];
state[1] = k[1];
state[2] = k[2];
state[3] = k[3];
state[4] = ctr[0];
state[5] = ctr[1];
state[6] = U8TO32_LITTLE(constants + 0);
state[7] = U8TO32_LITTLE(constants + 4);
state[8] = k[4];
state[9] = k[5];
state[10] = k[6];
state[11] = k[7];
state[12] = nonce[0];
state[13] = nonce[1];
state[14] = U8TO32_LITTLE(constants + 8);
state[15] = U8TO32_LITTLE(constants + 12);
}

void forro_odd_round(uint32_t x[16])
{
QUARTERROUND(x[0], x[4], x[8], x[12], x[3])
QUARTERROUND(x[1], x[5], x[9], x[13], x[0])
QUARTERROUND(x[2], x[6], x[10], x[14], x[1])
QUARTERROUND(x[3], x[7], x[11], x[15], x[2])
}

void forro_even_round(uint32_t x[16])
{
QUARTERROUND(x[0], x[5], x[10], x[15], x[3])
QUARTERROUND(x[1], x[6], x[11], x[12], x[0])
QUARTERROUND(x[2], x[7], x[8], x[13], x[1])
QUARTERROUND(x[3], x[4], x[9], x[14], x[2])
}

void forro_even_quarterround(uint32_t x[16], uint32_t steps)
{
QUARTERROUND(x[0], x[5], x[10], x[15], x[3])
if (steps == 1) return;
QUARTERROUND(x[1], x[6], x[11], x[12], x[0])
if (steps == 2) return;
QUARTERROUND(x[2], x[7], x[8], x[13], x[1])
if (steps == 3) return;
QUARTERROUND(x[3], x[4], x[9], x[14], x[2])
}

void forro_rounds(uint32_t state[16], uint32_t rounds)
{
uint32_t i;

for (i = 1; i <= rounds; i++) {
if (i % 2)
forro_odd_round(state);
else
forro_even_round(state);
}
}


void forro_encrypt(uint32_t output[16], uint32_t input[16], uint32_t rounds)
{
uint32_t x[16];
uint32_t i;

for (i = 0; i < 16; ++i) x[i] = input[i];
forro_rounds(x, rounds);
for (i = 0; i < 16; ++i) x[i] = PLUS(x[i], input[i]);

for(i=0; i<16;i++)
U32TO8_LITTLE(output+i, x[i]);
}
