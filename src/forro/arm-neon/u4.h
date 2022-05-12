#ifndef USE_3INST_ROT
#define VEC4_ROT(a, imm) vsliq_n_u32(vshrq_n_u32(a, 32 - imm), a, imm)
#else
#define VEC4_ROT(a, imm) veorq_u32(vshlq_n_u32(a, imm), vshrq_n_u32(a, 32 - imm))
#endif

#define VEC4_QUARTERROUND(a, b, c, d, e) \
    x_##d = vaddq_u32(x_##d, x_##e);     \
    x_##c = veorq_u32(x_##c, x_##d);     \
    t_##b = vaddq_u32(x_##b, x_##c);     \
    x_##b = VEC4_ROT(t_##b, 10);         \
    x_##a = vaddq_u32(x_##a, x_##b);     \
    x_##e = veorq_u32(x_##e, x_##a);     \
    t_##d = vaddq_u32(x_##d, x_##e);     \
    x_##d = VEC4_ROT(t_##d, 27);         \
    x_##c = vaddq_u32(x_##c, x_##d);     \
    x_##b = veorq_u32(x_##b, x_##c);     \
    t_##a = vaddq_u32(x_##a, x_##b);     \
    x_##a = VEC4_ROT(t_##a, 8)

if (!bytes)
    return;
if (bytes >= 256)
{
    uint32_t in4, in5;
    uint32x4_t x_0 = vdupq_n_u32(x[0]);
    uint32x4_t x_1 = vdupq_n_u32(x[1]);
    uint32x4_t x_2 = vdupq_n_u32(x[2]);
    uint32x4_t x_3 = vdupq_n_u32(x[3]);
    uint32x4_t x_4; // = vdupq_n_u32(x[4]); /* useless */
    uint32x4_t x_5; // = vdupq_n_u32(x[5]); /* useless */
    uint32x4_t x_6 = vdupq_n_u32(x[6]);
    uint32x4_t x_7 = vdupq_n_u32(x[7]);
    uint32x4_t x_8 = vdupq_n_u32(x[8]);
    uint32x4_t x_9 = vdupq_n_u32(x[9]);
    uint32x4_t x_10 = vdupq_n_u32(x[10]);
    uint32x4_t x_11 = vdupq_n_u32(x[11]);
    uint32x4_t x_12 = vdupq_n_u32(x[12]);
    uint32x4_t x_13 = vdupq_n_u32(x[13]);
    uint32x4_t x_14 = vdupq_n_u32(x[14]);
    uint32x4_t x_15 = vdupq_n_u32(x[15]);
    uint32x4_t orig0 = x_0;
    uint32x4_t orig1 = x_1;
    uint32x4_t orig2 = x_2;
    uint32x4_t orig3 = x_3;
    uint32x4_t orig4; // = x_4; /* useless */
    uint32x4_t orig5; // = x_5; /* useless */
    uint32x4_t orig6 = x_6;
    uint32x4_t orig7 = x_7;
    uint32x4_t orig8 = x_8;
    uint32x4_t orig9 = x_9;
    uint32x4_t orig10 = x_10;
    uint32x4_t orig11 = x_11;
    uint32x4_t orig12 = x_12;
    uint32x4_t orig13 = x_13;
    uint32x4_t orig14 = x_14;
    uint32x4_t orig15 = x_15;
    uint32x4_t t_0;
    uint32x4_t t_1;
    uint32x4_t t_2;
    uint32x4_t t_3;
    uint32x4_t t_4;
    uint32x4_t t_5;
    uint32x4_t t_6;
    uint32x4_t t_7;
    uint32x4_t t_8;
    uint32x4_t t_9;
    uint32x4_t t_10;
    uint32x4_t t_11;
    uint32x4_t t_12;
    uint32x4_t t_13;
    uint32x4_t t_14;
    uint32x4_t t_15;

    while (bytes >= 256)
    {
        x_0 = orig0;
        x_1 = orig1;
        x_2 = orig2;
        x_3 = orig3;
        // x_4 = orig4; /* useless */
        // x_5 = orig5; /* useless */
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

        const uint64x2_t addv4 = vcombine_u64(vcreate_u64(2), vcreate_u64(3));
        const uint64x2_t addv5 = vcombine_u64(vcreate_u64(0), vcreate_u64(1));
        uint64x2_t t4, t5;
        in4 = x[4];
        in5 = x[5];
        uint64_t in45 = ((uint64_t)in4) | (((uint64_t)in5) << 32);
        t4 = vdupq_n_u64(in45);
        t5 = vdupq_n_u64(in45);

        x_4 = vreinterpretq_u32_u64(vaddq_u64(addv4, t4));
        x_5 = vreinterpretq_u32_u64(vaddq_u64(addv5, t5));

        uint32x4x2_t t;
        t = vuzpq_u32(x_5, x_4);
        x_4 = t.val[0];
        x_5 = t.val[1];

        orig4 = x_4;
        orig5 = x_5;

        in45 += 4;

        x[4] = in45 & 0xFFFFFFFF;
        x[5] = (in45 >> 32) & 0xFFFFFFFF;

        for (i = 0; i < ROUNDS; i += 2)
        {
            VEC4_QUARTERROUND(0, 4, 8, 12, 3);
            VEC4_QUARTERROUND(1, 5, 9, 13, 0);
            VEC4_QUARTERROUND(2, 6, 10, 14, 1);
            VEC4_QUARTERROUND(3, 7, 11, 15, 2);
            VEC4_QUARTERROUND(0, 5, 10, 15, 3);
            VEC4_QUARTERROUND(1, 6, 11, 12, 0);
            VEC4_QUARTERROUND(2, 7, 8, 13, 1);
            VEC4_QUARTERROUND(3, 4, 9, 14, 2);
        }

#define ONEQUAD_TRANSPOSE(a, b, c, d)                                                                                                                      \
    {                                                                                                                                                      \
        uint32x4x2_t t0dq, t1dq;                                                                                                                           \
        uint32x4_t t0, t1, t2, t3;                                                                                                                         \
        x_##a = vaddq_u32(x_##a, orig##a);                                                                                                                 \
        x_##b = vaddq_u32(x_##b, orig##b);                                                                                                                 \
        x_##c = vaddq_u32(x_##c, orig##c);                                                                                                                 \
        x_##d = vaddq_u32(x_##d, orig##d);                                                                                                                 \
        t0dq = vtrnq_u32(x_##a, x_##b);                                                                                                                    \
        t1dq = vtrnq_u32(x_##c, x_##d);                                                                                                                    \
        x_##a = vreinterpretq_u32_u64(vcombine_u64(vget_low_u64(vreinterpretq_u64_u32(t0dq.val[0])), vget_low_u64(vreinterpretq_u64_u32(t1dq.val[0]))));   \
        x_##b = vreinterpretq_u32_u64(vcombine_u64(vget_low_u64(vreinterpretq_u64_u32(t0dq.val[1])), vget_low_u64(vreinterpretq_u64_u32(t1dq.val[1]))));   \
        x_##c = vreinterpretq_u32_u64(vcombine_u64(vget_high_u64(vreinterpretq_u64_u32(t0dq.val[0])), vget_high_u64(vreinterpretq_u64_u32(t1dq.val[0])))); \
        x_##d = vreinterpretq_u32_u64(vcombine_u64(vget_high_u64(vreinterpretq_u64_u32(t0dq.val[1])), vget_high_u64(vreinterpretq_u64_u32(t1dq.val[1])))); \
        t0 = veorq_u32(x_##a, vld1q_u32((uint32_t *)(m + 0)));                                                                                             \
        vst1q_u32((uint32_t *)(out + 0), t0);                                                                                                              \
        t1 = veorq_u32(x_##b, vld1q_u32((uint32_t *)(m + 64)));                                                                                            \
        vst1q_u32((uint32_t *)(out + 64), t1);                                                                                                             \
        t2 = veorq_u32(x_##c, vld1q_u32((uint32_t *)(m + 128)));                                                                                           \
        vst1q_u32((uint32_t *)(out + 128), t2);                                                                                                            \
        t3 = veorq_u32(x_##d, vld1q_u32((uint32_t *)(m + 192)));                                                                                           \
        vst1q_u32((uint32_t *)(out + 192), t3);                                                                                                            \
    }

#define ONEQUAD(a, b, c, d) ONEQUAD_TRANSPOSE(a, b, c, d)

        ONEQUAD(0, 1, 2, 3);
        m += 16;
        out += 16;
        ONEQUAD(4, 5, 6, 7);
        m += 16;
        out += 16;
        ONEQUAD(8, 9, 10, 11);
        m += 16;
        out += 16;
        ONEQUAD(12, 13, 14, 15);
        m -= 48;
        out -= 48;

#undef ONEQUAD
#undef ONEQUAD_TRANSPOSE

        bytes -= 256;
        out += 256;
        m += 256;
    }
}
#undef VEC4_ROT
#undef VEC4_QUARTERROUND