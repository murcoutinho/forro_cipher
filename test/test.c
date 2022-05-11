#define __test
#include <stdint.h>
#include <stdlib.h>
#include <time.h>
#include <sys/time.h>
#include <stdio.h>
#include "src/forro/x86-simd/forro.h"
#include "src/xote/x86-simd/xote.h"

void run_test_vectors(uint8_t key[32], uint8_t iv[8], uint32_t number_of_bytes)
{
    stream_ctx input;

    uint8_t *output_forro = (uint8_t *)malloc(number_of_bytes);
    uint8_t *output_xote = (uint8_t *)malloc(number_of_bytes);

    forro_keysetup(&input, key, 256, 64);
    forro_ivsetup(&input, iv);
    forro_keystream_bytes(&input, output_forro, number_of_bytes);

    xote_keysetup(&input, key, 256, 64);
    xote_ivsetup(&input, iv);
    xote_keystream_bytes(&input, output_xote, number_of_bytes);

    // Display the result to the screen

    printf("KEY:\n");
    for (int i = 0; i < 32; i++)
    {
        printf("%02x", key[i]);
        if (i % 16 == 15)
            printf("\n");
    }
    printf("\nNONCE:\n");
    for (int i = 0; i < 8; i++)
    {
        printf("%02x", iv[i]);
        if (i % 8 == 7)
            printf("\n");
    }
    printf("\nSTREAM:\n");
    printf("--------------------------------\t--------------------------------\n");
    printf("|             FORRO            |\t|             XOTE             |\n");
    printf("--------------------------------\t--------------------------------\n");
    for (int i = 0; i < 4; i++)
    {
        for (int k = 0; k < 16; k++)
            printf("%02x", output_forro[16 * i + k]);
        printf("\t");
        for (int k = 0; k < 16; k++)
            printf("%02x", output_xote[16 * i + k]);
        printf("\n");
    }
}

int main(int argc, char *argv[])
{

    uint64_t number_of_bytes = 128;
    printf("Teste: All zero key and IV.\n");
    printf("---------------------------\n");
    /*
        KEY:       00000000000000000000000000000000000000000000000000000000
            00000000
        */
    uint8_t key[32] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                       0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    /*
        NONCE:     0000000000000000
        */
    uint8_t iv[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    run_test_vectors(key, iv, number_of_bytes);

    printf("Teste: One key and zero IV.\n");
    printf("---------------------------\n");
    /*
        KEY:       00000000000000000000000000000000000000000000000000000000
                00000001
        */
    uint8_t key1[32] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};
    /*
        NONCE:     0000000000000000
        */
    uint8_t iv1[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    run_test_vectors(key1, iv1, number_of_bytes);

    printf("Teste: Zero key and one IV.\n");
    printf("---------------------------\n");
    /*
        KEY:       00000000000000000000000000000000000000000000000000000000
                00000000
        */
    uint8_t key2[32] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00,
                        0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00};
    /*
        NONCE:     0000000000000001
        */
    uint8_t iv2[8] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01};
    run_test_vectors(key2, iv2, number_of_bytes);
}