/*
u16.h version $Date: 2020/05/09 17:17:25 $
Murilo Coutinho
Iago Passos
Based on Romain Dolbeau's chacha implementation
Public domain.
*/

#define VEC8_ROT(a, imm) _mm256_or_si256(_mm256_slli_epi32(a, imm), _mm256_srli_epi32(a, (32 - imm)))

/* implements a vector quarter round by-the-book (naive!) */
#define VEC8_QUARTERROUND(a, b, c, d, e)  \
  x_##d = _mm256_add_epi32(x_##d, x_##e); \
  x_##c = _mm256_xor_si256(x_##c, x_##d); \
  t_##b = _mm256_add_epi32(x_##b, x_##c); \
  x_##b = VEC8_ROT(t_##b, 19);            \
  x_##a = _mm256_add_epi32(x_##a, x_##b); \
  x_##e = _mm256_xor_si256(x_##e, x_##a); \
  t_##d = _mm256_add_epi32(x_##d, x_##e); \
  x_##d = VEC8_ROT(t_##d, 11);            \
  x_##c = _mm256_add_epi32(x_##c, x_##d); \
  x_##b = _mm256_xor_si256(x_##b, x_##c); \
  t_##a = _mm256_add_epi32(x_##a, x_##b); \
  x_##a = VEC8_ROT(t_##a, 7);

if (!bytes)
  return;
if (bytes >= 1024)
{
  uint32_t in4, in5;

  /* the naive way seems as fast (if not a bit faster) than the vector way */
  __m256i x_0 = _mm256_set1_epi32(x[0]);
  __m256i x_1 = _mm256_set1_epi32(x[1]);
  __m256i x_2 = _mm256_set1_epi32(x[2]);
  __m256i x_3 = _mm256_set1_epi32(x[3]);
  __m256i x_4; // = _mm256_set1_epi32(x[4]); /* useless */
  __m256i x_5; // = _mm256_set1_epi32(x[5]); /* useless */
  __m256i x_6 = _mm256_set1_epi32(x[6]);
  __m256i x_7 = _mm256_set1_epi32(x[7]);
  __m256i x_8 = _mm256_set1_epi32(x[8]);
  __m256i x_9 = _mm256_set1_epi32(x[9]);
  __m256i x_10 = _mm256_set1_epi32(x[10]);
  __m256i x_11 = _mm256_set1_epi32(x[11]);
  __m256i x_12 = _mm256_set1_epi32(x[12]);
  __m256i x_13 = _mm256_set1_epi32(x[13]);
  __m256i x_14 = _mm256_set1_epi32(x[14]);
  __m256i x_15 = _mm256_set1_epi32(x[15]);
  __m256i x_16 = _mm256_set1_epi32(x[0]);
  __m256i x_17 = _mm256_set1_epi32(x[1]);
  __m256i x_18 = _mm256_set1_epi32(x[2]);
  __m256i x_19 = _mm256_set1_epi32(x[3]);
  __m256i x_20;// = _mm256_set1_epi32(x[4]); /* useless */
  __m256i x_21;// = _mm256_set1_epi32(x[5]); /* useless */
  __m256i x_22 = _mm256_set1_epi32(x[6]);
  __m256i x_23 = _mm256_set1_epi32(x[7]);
  __m256i x_24 = _mm256_set1_epi32(x[8]);
  __m256i x_25 = _mm256_set1_epi32(x[9]);
  __m256i x_26 = _mm256_set1_epi32(x[10]);
  __m256i x_27 = _mm256_set1_epi32(x[11]);
  __m256i x_28 = _mm256_set1_epi32(x[12]);
  __m256i x_29 = _mm256_set1_epi32(x[13]);
  __m256i x_30 = _mm256_set1_epi32(x[14]);
  __m256i x_31 = _mm256_set1_epi32(x[15]);

  __m256i orig0 = x_0;
  __m256i orig1 = x_1;
  __m256i orig2 = x_2;
  __m256i orig3 = x_3;
  __m256i orig4;// = x_4;  /* useless */
  __m256i orig5;// = x_5;  /* useless */
  __m256i orig6 = x_6;
  __m256i orig7 = x_7;
  __m256i orig8 = x_8;
  __m256i orig9 = x_9;
  __m256i orig10 = x_10;
  __m256i orig11 = x_11;
  __m256i orig12 = x_12;
  __m256i orig13 = x_13;
  __m256i orig14 = x_14;
  __m256i orig15 = x_15;
  __m256i orig16 = x_0;
  __m256i orig17 = x_1;
  __m256i orig18 = x_2;
  __m256i orig19 = x_3;
  __m256i orig20;// = x_4; /* useless */
  __m256i orig21;// = x_5; /* useless */
  __m256i orig22 = x_6;
  __m256i orig23 = x_7;
  __m256i orig24 = x_8;
  __m256i orig25 = x_9;
  __m256i orig26 = x_10;
  __m256i orig27 = x_11;
  __m256i orig28 = x_12;
  __m256i orig29 = x_13;
  __m256i orig30 = x_14;
  __m256i orig31 = x_15;

  __m256i t_0;
  __m256i t_1;
  __m256i t_2;
  __m256i t_3;
  __m256i t_4;
  __m256i t_5;
  __m256i t_6;
  __m256i t_7;
  __m256i t_8;
  __m256i t_9;
  __m256i t_10;
  __m256i t_11;
  __m256i t_12;
  __m256i t_13;
  __m256i t_14;
  __m256i t_15;
  __m256i t_16;
  __m256i t_17;
  __m256i t_18;
  __m256i t_19;
  __m256i t_20;
  __m256i t_21;
  __m256i t_22;
  __m256i t_23;
  __m256i t_24;
  __m256i t_25;
  __m256i t_26;
  __m256i t_27;
  __m256i t_28;
  __m256i t_29;
  __m256i t_30;
  __m256i t_31;

  while (bytes >= 1024)
  {
    x_0 = orig0;
    x_1 = orig1;
    x_2 = orig2;
    x_3 = orig3;
    //x_4 = orig4; /* useless */
    //x_5 = orig5; /* useless */
    x_6 = orig6;
    x_7 = orig7;
    x_8 = orig8;
    x_9 = orig9;
    x_10 = orig10;
    x_11 = orig11;
    x_12 = orig12;
    x_13 = orig13;
    x_14 = orig14;
    x_15 = orig15;

    x_16 = orig0;
    x_17 = orig1;
    x_18 = orig2;
    x_19 = orig3;
    //x_20 = orig4; /* useless */
    //x_21 = orig5; /* useless */
    x_22 = orig6;
    x_23 = orig7;
    x_24 = orig8;
    x_25 = orig9;
    x_26 = orig10;
    x_27 = orig11;
    x_28 = orig12;
    x_29 = orig13;
    x_30 = orig14;
    x_31 = orig15;

    const __m256i addv4 = _mm256_set_epi64x(3, 2, 1, 0);
    const __m256i addv5 = _mm256_set_epi64x(7, 6, 5, 4);
    const __m256i addv20 = _mm256_set_epi64x(11, 10, 9, 8);
    const __m256i addv21 = _mm256_set_epi64x(15, 14, 13, 12);

    const __m256i permute = _mm256_set_epi32(7, 6, 3, 2, 5, 4, 1, 0);

    __m256i t4, t5, t20, t21;
    in4 = x[4];
    in5 = x[5];
    uint64_t in45 = ((uint64_t)in4) | (((uint64_t)in5) << 32);
    x_4 = _mm256_broadcastq_epi64(_mm_cvtsi64_si128(in45));
    x_5 = _mm256_broadcastq_epi64(_mm_cvtsi64_si128(in45));

    t4 = _mm256_add_epi64(addv4, x_4);
    t5 = _mm256_add_epi64(addv5, x_5);
    t20 = _mm256_add_epi64(addv20, x_4);
    t21 = _mm256_add_epi64(addv21, x_5);

    x_4 = _mm256_unpacklo_epi32(t4, t5);
    x_5 = _mm256_unpackhi_epi32(t4, t5);

    t4 = _mm256_unpacklo_epi32(x_4, x_5);
    t5 = _mm256_unpackhi_epi32(x_4, x_5);

    /* required because unpack* are intra-lane */
    x_4 = _mm256_permutevar8x32_epi32(t4, permute);
    x_5 = _mm256_permutevar8x32_epi32(t5, permute);

    orig4 = x_4;
    orig5 = x_5;

    in45 += 16;

    x[4] = in45 & 0xFFFFFFFF;
    x[5] = (in45 >> 32) & 0xFFFFFFFF;

    x_20 = _mm256_unpacklo_epi32(t20, t21);
    x_21 = _mm256_unpackhi_epi32(t20, t21);

    t20 = _mm256_unpacklo_epi32(x_20, x_21);
    t21 = _mm256_unpackhi_epi32(x_20, x_21);

    /* required because unpack* are intra-lane */
    x_20 = _mm256_permutevar8x32_epi32(t20, permute);
    x_21 = _mm256_permutevar8x32_epi32(t21, permute);

    orig20 = x_20;
    orig21 = x_21;

    for (i = 0; i < ROUNDS; i += 2)
    {
      VEC8_QUARTERROUND(0, 4, 8, 12, 3);
      VEC8_QUARTERROUND(16, 20, 24, 28, 19);
      VEC8_QUARTERROUND(1, 5, 9, 13, 0);
      VEC8_QUARTERROUND(17, 21, 25, 29, 16);
      VEC8_QUARTERROUND(2, 6, 10, 14, 1);
      VEC8_QUARTERROUND(18, 22, 26, 30, 17);
      VEC8_QUARTERROUND(3, 7, 11, 15, 2);
      VEC8_QUARTERROUND(19, 23, 27, 31, 18);
      VEC8_QUARTERROUND(0, 5, 10, 15, 3);
      VEC8_QUARTERROUND(16, 21, 26, 31, 19);
      VEC8_QUARTERROUND(1, 6, 11, 12, 0);
      VEC8_QUARTERROUND(17, 22, 27, 28, 16);
      VEC8_QUARTERROUND(2, 7, 8, 13, 1);
      VEC8_QUARTERROUND(18, 23, 24, 29, 17);
      VEC8_QUARTERROUND(3, 4, 9, 14, 2);
      VEC8_QUARTERROUND(19, 20, 25, 30, 18);
    }

#define ONEQUAD_TRANSPOSE(a, b, c, d)                                                              \
  {                                                                                                \
    __m128i t0, t1, t2, t3;                                                                        \
    x_##a = _mm256_add_epi32(x_##a, orig##a);                                                      \
    x_##b = _mm256_add_epi32(x_##b, orig##b);                                                      \
    x_##c = _mm256_add_epi32(x_##c, orig##c);                                                      \
    x_##d = _mm256_add_epi32(x_##d, orig##d);                                                      \
    t_##a = _mm256_unpacklo_epi32(x_##a, x_##b);                                                   \
    t_##b = _mm256_unpacklo_epi32(x_##c, x_##d);                                                   \
    t_##c = _mm256_unpackhi_epi32(x_##a, x_##b);                                                   \
    t_##d = _mm256_unpackhi_epi32(x_##c, x_##d);                                                   \
    x_##a = _mm256_unpacklo_epi64(t_##a, t_##b);                                                   \
    x_##b = _mm256_unpackhi_epi64(t_##a, t_##b);                                                   \
    x_##c = _mm256_unpacklo_epi64(t_##c, t_##d);                                                   \
    x_##d = _mm256_unpackhi_epi64(t_##c, t_##d);                                                   \
    t0 = _mm_xor_si128(_mm256_extracti128_si256(x_##a, 0), _mm_loadu_si128((__m128i *)(m + 0)));   \
    _mm_storeu_si128((__m128i *)(out + 0), t0);                                                    \
    t1 = _mm_xor_si128(_mm256_extracti128_si256(x_##b, 0), _mm_loadu_si128((__m128i *)(m + 64)));  \
    _mm_storeu_si128((__m128i *)(out + 64), t1);                                                   \
    t2 = _mm_xor_si128(_mm256_extracti128_si256(x_##c, 0), _mm_loadu_si128((__m128i *)(m + 128))); \
    _mm_storeu_si128((__m128i *)(out + 128), t2);                                                  \
    t3 = _mm_xor_si128(_mm256_extracti128_si256(x_##d, 0), _mm_loadu_si128((__m128i *)(m + 192))); \
    _mm_storeu_si128((__m128i *)(out + 192), t3);                                                  \
    t0 = _mm_xor_si128(_mm256_extracti128_si256(x_##a, 1), _mm_loadu_si128((__m128i *)(m + 256))); \
    _mm_storeu_si128((__m128i *)(out + 256), t0);                                                  \
    t1 = _mm_xor_si128(_mm256_extracti128_si256(x_##b, 1), _mm_loadu_si128((__m128i *)(m + 320))); \
    _mm_storeu_si128((__m128i *)(out + 320), t1);                                                  \
    t2 = _mm_xor_si128(_mm256_extracti128_si256(x_##c, 1), _mm_loadu_si128((__m128i *)(m + 384))); \
    _mm_storeu_si128((__m128i *)(out + 384), t2);                                                  \
    t3 = _mm_xor_si128(_mm256_extracti128_si256(x_##d, 1), _mm_loadu_si128((__m128i *)(m + 448))); \
    _mm_storeu_si128((__m128i *)(out + 448), t3);                                                  \
  }

#define ONEQUAD(a, b, c, d) ONEQUAD_TRANSPOSE(a, b, c, d)

#define ONEQUAD_UNPCK(a, b, c, d)                \
  {                                              \
    x_##a = _mm256_add_epi32(x_##a, orig##a);    \
    x_##b = _mm256_add_epi32(x_##b, orig##b);    \
    x_##c = _mm256_add_epi32(x_##c, orig##c);    \
    x_##d = _mm256_add_epi32(x_##d, orig##d);    \
    t_##a = _mm256_unpacklo_epi32(x_##a, x_##b); \
    t_##b = _mm256_unpacklo_epi32(x_##c, x_##d); \
    t_##c = _mm256_unpackhi_epi32(x_##a, x_##b); \
    t_##d = _mm256_unpackhi_epi32(x_##c, x_##d); \
    x_##a = _mm256_unpacklo_epi64(t_##a, t_##b); \
    x_##b = _mm256_unpackhi_epi64(t_##a, t_##b); \
    x_##c = _mm256_unpacklo_epi64(t_##c, t_##d); \
    x_##d = _mm256_unpackhi_epi64(t_##c, t_##d); \
  }
#define ONEOCTO(a, b, c, d, a2, b2, c2, d2)                                      \
  {                                                                              \
    ONEQUAD_UNPCK(a, b, c, d);                                                   \
    ONEQUAD_UNPCK(a2, b2, c2, d2);                                               \
    t_##a = _mm256_permute2x128_si256(x_##a, x_##a2, 0x20);                      \
    t_##a2 = _mm256_permute2x128_si256(x_##a, x_##a2, 0x31);                     \
    t_##b = _mm256_permute2x128_si256(x_##b, x_##b2, 0x20);                      \
    t_##b2 = _mm256_permute2x128_si256(x_##b, x_##b2, 0x31);                     \
    t_##c = _mm256_permute2x128_si256(x_##c, x_##c2, 0x20);                      \
    t_##c2 = _mm256_permute2x128_si256(x_##c, x_##c2, 0x31);                     \
    t_##d = _mm256_permute2x128_si256(x_##d, x_##d2, 0x20);                      \
    t_##d2 = _mm256_permute2x128_si256(x_##d, x_##d2, 0x31);                     \
    t_##a = _mm256_xor_si256(t_##a, _mm256_loadu_si256((__m256i *)(m + 0)));     \
    t_##b = _mm256_xor_si256(t_##b, _mm256_loadu_si256((__m256i *)(m + 64)));    \
    t_##c = _mm256_xor_si256(t_##c, _mm256_loadu_si256((__m256i *)(m + 128)));   \
    t_##d = _mm256_xor_si256(t_##d, _mm256_loadu_si256((__m256i *)(m + 192)));   \
    t_##a2 = _mm256_xor_si256(t_##a2, _mm256_loadu_si256((__m256i *)(m + 256))); \
    t_##b2 = _mm256_xor_si256(t_##b2, _mm256_loadu_si256((__m256i *)(m + 320))); \
    t_##c2 = _mm256_xor_si256(t_##c2, _mm256_loadu_si256((__m256i *)(m + 384))); \
    t_##d2 = _mm256_xor_si256(t_##d2, _mm256_loadu_si256((__m256i *)(m + 448))); \
    _mm256_storeu_si256((__m256i *)(out + 0), t_##a);                            \
    _mm256_storeu_si256((__m256i *)(out + 64), t_##b);                           \
    _mm256_storeu_si256((__m256i *)(out + 128), t_##c);                          \
    _mm256_storeu_si256((__m256i *)(out + 192), t_##d);                          \
    _mm256_storeu_si256((__m256i *)(out + 256), t_##a2);                         \
    _mm256_storeu_si256((__m256i *)(out + 320), t_##b2);                         \
    _mm256_storeu_si256((__m256i *)(out + 384), t_##c2);                         \
    _mm256_storeu_si256((__m256i *)(out + 448), t_##d2);                         \
  }

#if 0
    ONEQUAD(0,1,2,3);
    m+=16;
    out+=16;
    ONEQUAD(4,5,6,7);
    m+=16;
    out+=16;
    ONEQUAD(8,9,10,11);
    m+=16;
    out+=16;
    ONEQUAD(12,13,14,15);
    m+=464;
    out+=464;
    ONEQUAD(16,17,18,19);
    m+=16;
    out+=16;
    ONEQUAD(20,21,22,23);
    m+=16;
    out+=16;
    ONEQUAD(24,25,26,27);
    m+=16;
    out+=16;
    ONEQUAD(28,29,30,31);
    m-=560;
    out-=560;
#else
    ONEOCTO(0, 1, 2, 3, 4, 5, 6, 7);
    m += 32;
    out += 32;
    ONEOCTO(8, 9, 10, 11, 12, 13, 14, 15);
    m += 480;
    out += 480;
    ONEOCTO(16, 17, 18, 19, 20, 21, 22, 23);
    m += 32;
    out += 32;
    ONEOCTO(24, 25, 26, 27, 28, 29, 30, 31);
    m -= 544;
    out -= 544;
#endif

#undef ONEQUAD
#undef ONEQUAD_TRANSPOSE
#undef ONEQUAD_UNPCK
#undef ONEOCTO

    bytes -= 1024;
    out += 1024;
    m += 1024;
  }
}
#undef VEC8_ROT
#undef VEC8_QUARTERROUND
#undef VEC8_QUARTERROUND_NAIVE
#undef VEC8_QUARTERROUND_SHUFFLE
#undef VEC8_QUARTERROUND_SHUFFLE2
#undef VEC8_LINE1
#undef VEC8_LINE2
#undef VEC8_LINE3
#undef VEC8_LINE4
#undef VEC8_ROUND
#undef VEC8_ROUND_SEQ
#undef VEC8_ROUND_HALF
#undef VEC8_ROUND_HALFANDHALF
