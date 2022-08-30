#include <stdint.h>
#define forro_VARIANT 1
#define forro_API
/* ecrypt-sync.h */

/*
 * Header file for synchronous stream ciphers without authentication
 * mechanism.
 *
 * *** Please only edit parts marked with "[edit]". ***
 */

#ifndef forro_SYNC
#define forro_SYNC

// #include "ecrypt-portable.h"

/* ------------------------------------------------------------------------- */

/* Cipher parameters */

/*
 * The name of your cipher.
 */
#define forro_NAME "Forro14"
#define forro_PROFILE "_____"

/*
 * Specify which key and IV sizes are supported by your cipher. A user
 * should be able to enumerate the supported sizes by running the
 * following code:
 *
 * for (i = 0; forro_KEYSIZE(i) <= forro_MAXKEYSIZE; ++i)
 *   {
 *     keysize = forro_KEYSIZE(i);
 *
 *     ...
 *   }
 *
 * All sizes are in bits.
 */

#define forro_MAXKEYSIZE 256 /* [edit] */
#define forro_KEYSIZE() 256  /* [edit] */

#define forro_MAXIVSIZE 64 /* [edit] */
#define forro_IVSIZE() 64  /* [edit] */

/* ------------------------------------------------------------------------- */

/* Data structures */

/*
 * stream_ctx is the structure containing the representation of the
 * internal state of your cipher.
 */

#ifndef __basic_def
#define __basic_def
// Little endian machine assumed (x86-64).
#define U32TO8_LITTLE(p, v) (((uint32_t *)(p))[0] = v)
#define U8TO32_LITTLE(p) (((uint32_t *)(p))[0])

static const uint8_t SIGMA[16] = "voltadaasabranca";
typedef struct
{
    uint32_t state[16]; /* could be compressed */
                        /*
                         * [edit]
                         *
                         * Put here all state variable needed during the encryption process.
                         */
} stream_ctx __attribute__((aligned(16)));
#endif

/* ------------------------------------------------------------------------- */

/* Mandatory functions */

/*
 * Key and message independent initialization. This function will be
 * called once when the program starts (e.g., to build expanded S-box
 * tables).
 */
void forro_init();

/*
 * Key setup. It is the user's responsibility to select the values of
 * keysize and ivsize from the set of supported values specified
 * above.
 */
void forro_keysetup(
    stream_ctx *ctx,
    const uint8_t *key);

/*
 * IV setup. After having called forro_keysetup(), the user is
 * allowed to call forro_ivsetup() different times in order to
 * encrypt/decrypt different messages with the same key but different
 * IV's.
 */
void forro_ivsetup(
    stream_ctx *ctx,
    const uint8_t *iv);

/*
 * Encryption/decryption of arbitrary length messages.
 *
 * For efficiency reasons, the API provides two types of
 * encrypt/decrypt functions. The forro_encrypt_bytes() function
 * (declared here) encrypts byte strings of arbitrary length, while
 * the forro_encrypt_blocks() function (defined later) only accepts
 * lengths which are multiples of forro_BLOCKLENGTH.
 *
 * The user is allowed to make multiple calls to
 * forro_encrypt_blocks() to incrementally encrypt a long message,
 * but he is NOT allowed to make additional encryption calls once he
 * has called forro_encrypt_bytes() (unless he starts a new message
 * of course). For example, this sequence of calls is acceptable:
 *
 * forro_keysetup();
 *
 * forro_ivsetup();
 * forro_encrypt_blocks();
 * forro_encrypt_blocks();
 * forro_encrypt_bytes();
 *
 * forro_ivsetup();
 * forro_encrypt_blocks();
 * forro_encrypt_blocks();
 *
 * forro_ivsetup();
 * forro_encrypt_bytes();
 *
 * The following sequence is not:
 *
 * forro_keysetup();
 * forro_ivsetup();
 * forro_encrypt_blocks();
 * forro_encrypt_bytes();
 * forro_encrypt_blocks();
 */

void forro_encrypt_bytes(
    stream_ctx *ctx,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t msglen); /* Message length in bytes. */

void forro_decrypt_bytes(
    stream_ctx *ctx,
    const uint8_t *ciphertext,
    uint8_t *plaintext,
    uint32_t msglen); /* Message length in bytes. */

/* ------------------------------------------------------------------------- */

/* Optional features */

/*
 * For testing purposes it can sometimes be useful to have a function
 * which immediately generates keystream without having to provide it
 * with a zero plaintext. If your cipher cannot provide this function
 * (e.g., because it is not strictly a synchronous cipher), please
 * reset the forro_GENERATES_KEYSTREAM flag.
 */

#define forro_GENERATES_KEYSTREAM
#ifdef forro_GENERATES_KEYSTREAM

void forro_keystream_bytes(
    stream_ctx *ctx,
    uint8_t *keystream,
    uint32_t length); /* Length of keystream in bytes. */

#endif

/* ------------------------------------------------------------------------- */

/* Optional optimizations */

/*
 * By default, the functions in this section are implemented using
 * calls to functions declared above. However, you might want to
 * implement them differently for performance reasons.
 */

/*
 * All-in-one encryption/decryption of (short) packets.
 *
 * The default definitions of these functions can be found in
 * "ecrypt-sync.c". If you want to implement them differently, please
 * undef the forro_USES_DEFAULT_ALL_IN_ONE flag.
 */
#define forro_USES_DEFAULT_ALL_IN_ONE /* [edit] */

void forro_encrypt_packet(
    stream_ctx *ctx,
    const uint8_t *iv,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t msglen);

void forro_decrypt_packet(
    stream_ctx *ctx,
    const uint8_t *iv,
    const uint8_t *ciphertext,
    uint8_t *plaintext,
    uint32_t msglen);

/*
 * Encryption/decryption of blocks.
 *
 * By default, these functions are defined as macros. If you want to
 * provide a different implementation, please undef the
 * forro_USES_DEFAULT_BLOCK_MACROS flag and implement the functions
 * declared below.
 */

#define forro_BLOCKLENGTH 64 /* [edit] */

#define forro_USES_DEFAULT_BLOCK_MACROS /* [edit] */
#ifdef forro_USES_DEFAULT_BLOCK_MACROS

#define forro_encrypt_blocks(ctx, plaintext, ciphertext, blocks) \
    forro_encrypt_bytes(ctx, plaintext, ciphertext,              \
                        (blocks)*forro_BLOCKLENGTH)

#define forro_decrypt_blocks(ctx, ciphertext, plaintext, blocks) \
    forro_decrypt_bytes(ctx, ciphertext, plaintext,              \
                        (blocks)*forro_BLOCKLENGTH)

#ifdef forro_GENERATES_KEYSTREAM

#define forro_keystream_blocks(ctx, keystream, blocks) \
    forro_keystream_bytes(ctx, keystream,              \
                          (blocks)*forro_BLOCKLENGTH)

#endif

#else

void forro_encrypt_blocks(
    stream_ctx *ctx,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t blocks); /* Message length in blocks. */

void forro_decrypt_blocks(
    stream_ctx *ctx,
    const uint8_t *ciphertext,
    uint8_t *plaintext,
    uint32_t blocks); /* Message length in blocks. */

#ifdef forro_GENERATES_KEYSTREAM

void forro_keystream_blocks(
    stream_ctx *ctx,
    const uint8_t *keystream,
    uint32_t blocks); /* Keystream length in blocks. */

#endif

#endif

/*
 * If your cipher can be implemented in different ways, you can use
 * the forro_VARIANT parameter to allow the user to choose between
 * them at compile time (e.g., gcc -Dforro_VARIANT=3 ...). Please
 * only use this possibility if you really think it could make a
 * significant difference and keep the number of variants
 * (forro_MAXVARIANT) as small as possible (definitely not more than
 * 10). Note also that all variants should have exactly the same
 * external interface (i.e., the same forro_BLOCKLENGTH, etc.).
 */
#define forro_MAXVARIANT 1 /* [edit] */

#ifndef forro_VARIANT
#define forro_VARIANT 1
#endif

#if (forro_VARIANT > forro_MAXVARIANT)
#error this variant does not exist
#endif

/* ------------------------------------------------------------------------- */

#endif
