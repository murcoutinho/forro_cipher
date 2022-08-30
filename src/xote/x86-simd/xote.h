#include <stdint.h>
#define xote_VARIANT 1
#define xote_API
/* ecrypt-sync.h */

/*
 * Header file for synchronous stream ciphers without authentication
 * mechanism.
 *
 * *** Please only edit parts marked with "[edit]". ***
 */

#ifndef xote_SYNC
#define xote_SYNC

// #include "ecrypt-portable.h"

/* ------------------------------------------------------------------------- */

/* Cipher parameters */

/*
 * The name of your cipher.
 */
#define xote_NAME "Xote14"
#define xote_PROFILE "_____"

/*
 * Specify which key and IV sizes are supported by your cipher. A user
 * should be able to enumerate the supported sizes by running the
 * following code:
 *
 * for (i = 0; xote_KEYSIZE(i) <= xote_MAXKEYSIZE; ++i)
 *   {
 *     keysize = xote_KEYSIZE(i);
 *
 *     ...
 *   }
 *
 * All sizes are in bits.
 */

#define xote_MAXKEYSIZE 256 /* [edit] */
#define xote_KEYSIZE() 256  /* [edit] */

#define xote_MAXIVSIZE 64 /* [edit] */
#define xote_IVSIZE() 64  /* [edit] */

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
void xote_init();

/*
 * Key setup. It is the user's responsibility to select the values of
 * keysize and ivsize from the set of supported values specified
 * above.
 */
void xote_keysetup(
    stream_ctx *ctx,
    const uint8_t *key);

/*
 * IV setup. After having called xote_keysetup(), the user is
 * allowed to call xote_ivsetup() different times in order to
 * encrypt/decrypt different messages with the same key but different
 * IV's.
 */
void xote_ivsetup(
    stream_ctx *ctx,
    const uint8_t *iv);

/*
 * Encryption/decryption of arbitrary length messages.
 *
 * For efficiency reasons, the API provides two types of
 * encrypt/decrypt functions. The xote_encrypt_bytes() function
 * (declared here) encrypts byte strings of arbitrary length, while
 * the xote_encrypt_blocks() function (defined later) only accepts
 * lengths which are multiples of xote_BLOCKLENGTH.
 *
 * The user is allowed to make multiple calls to
 * xote_encrypt_blocks() to incrementally encrypt a long message,
 * but he is NOT allowed to make additional encryption calls once he
 * has called xote_encrypt_bytes() (unless he starts a new message
 * of course). For example, this sequence of calls is acceptable:
 *
 * xote_keysetup();
 *
 * xote_ivsetup();
 * xote_encrypt_blocks();
 * xote_encrypt_blocks();
 * xote_encrypt_bytes();
 *
 * xote_ivsetup();
 * xote_encrypt_blocks();
 * xote_encrypt_blocks();
 *
 * xote_ivsetup();
 * xote_encrypt_bytes();
 *
 * The following sequence is not:
 *
 * xote_keysetup();
 * xote_ivsetup();
 * xote_encrypt_blocks();
 * xote_encrypt_bytes();
 * xote_encrypt_blocks();
 */

void xote_encrypt_bytes(
    stream_ctx *ctx,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t msglen); /* Message length in bytes. */

void xote_decrypt_bytes(
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
 * reset the xote_GENERATES_KEYSTREAM flag.
 */

#define xote_GENERATES_KEYSTREAM
#ifdef xote_GENERATES_KEYSTREAM

void xote_keystream_bytes(
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
 * undef the xote_USES_DEFAULT_ALL_IN_ONE flag.
 */
#define xote_USES_DEFAULT_ALL_IN_ONE /* [edit] */

void xote_encrypt_packet(
    stream_ctx *ctx,
    const uint8_t *iv,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t msglen);

void xote_decrypt_packet(
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
 * xote_USES_DEFAULT_BLOCK_MACROS flag and implement the functions
 * declared below.
 */

#define xote_BLOCKLENGTH 64 /* [edit] */

#define xote_USES_DEFAULT_BLOCK_MACROS /* [edit] */
#ifdef xote_USES_DEFAULT_BLOCK_MACROS

#define xote_encrypt_blocks(ctx, plaintext, ciphertext, blocks) \
    xote_encrypt_bytes(ctx, plaintext, ciphertext,              \
                       (blocks)*xote_BLOCKLENGTH)

#define xote_decrypt_blocks(ctx, ciphertext, plaintext, blocks) \
    xote_decrypt_bytes(ctx, ciphertext, plaintext,              \
                       (blocks)*xote_BLOCKLENGTH)

#ifdef xote_GENERATES_KEYSTREAM

#define xote_keystream_blocks(ctx, keystream, blocks) \
    xote_keystream_bytes(ctx, keystream,              \
                         (blocks)*xote_BLOCKLENGTH)

#endif

#else

void xote_encrypt_blocks(
    stream_ctx *ctx,
    const uint8_t *plaintext,
    uint8_t *ciphertext,
    uint32_t blocks); /* Message length in blocks. */

void xote_decrypt_blocks(
    stream_ctx *ctx,
    const uint8_t *ciphertext,
    uint8_t *plaintext,
    uint32_t blocks); /* Message length in blocks. */

#ifdef xote_GENERATES_KEYSTREAM

void xote_keystream_blocks(
    stream_ctx *ctx,
    const uint8_t *keystream,
    uint32_t blocks); /* Keystream length in blocks. */

#endif

#endif

/*
 * If your cipher can be implemented in different ways, you can use
 * the xote_VARIANT parameter to allow the user to choose between
 * them at compile time (e.g., gcc -Dxote_VARIANT=3 ...). Please
 * only use this possibility if you really think it could make a
 * significant difference and keep the number of variants
 * (xote_MAXVARIANT) as small as possible (definitely not more than
 * 10). Note also that all variants should have exactly the same
 * external interface (i.e., the same xote_BLOCKLENGTH, etc.).
 */
#define xote_MAXVARIANT 1 /* [edit] */

#ifndef xote_VARIANT
#define xote_VARIANT 1
#endif

#if (xote_VARIANT > xote_MAXVARIANT)
#error this variant does not exist
#endif

/* ------------------------------------------------------------------------- */

#endif
