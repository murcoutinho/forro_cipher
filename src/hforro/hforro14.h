#ifndef hforro14_H
#define hforro14_H

#include <stddef.h>

#define hforro14_OUTPUTBYTES 32U

size_t hforro14_outputbytes(void);

#define hforro14_INPUTBYTES 16U

size_t hforro14_inputbytes(void);

#define hforro14_KEYBYTES 32U

size_t hforro14_keybytes(void);

#define hforro14_CONSTBYTES 16U

size_t hforro14_constbytes(void);

int hforro14(unsigned char *out, const unsigned char *in,
             const unsigned char *k);

#endif