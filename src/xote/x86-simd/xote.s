# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.1.217 Build 20200306";
# mark_description "-S -m64 -march=native -mtune=native -O3 -fomit-frame-pointer -fwrapv -fPIC -fPIE -o C/xote/x86-simd/xote.s";
	.file "xote.c"
	.text
..TXTST0:
.L_2__routine_start_xote_keysetup_0:
# -- Begin  xote_keysetup
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_keysetup
# --- xote_keysetup(stream_ctx *, const uint8_t *, uint32_t, uint32_t)
xote_keysetup:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_keysetup.1:
..L2:
                                                          #119.1
        cmpl      $256, %edx                                    #128.9
        movl      (%rsi), %r8d                                  #122.19
        lea       16(%rsi), %rax                                #128.9
        movl      %r8d, (%rdi)                                  #122.5
        lea       sigma(%rip), %rcx                             #129.9
        movl      4(%rsi), %r9d                                 #122.19
        movl      %r9d, 4(%rdi)                                 #122.5
        movl      8(%rsi), %r10d                                #122.19
        movl      %r10d, 8(%rdi)                                #122.5
        movl      12(%rsi), %r11d                               #122.19
        cmove     %rax, %rsi                                    #128.9
        movl      %r11d, 12(%rdi)                               #122.5
        lea       tau(%rip), %rax                               #133.9
        cmove     %rcx, %rax                                    #133.9
        movl      (%rsi), %edx                                  #135.19
        movl      %edx, 32(%rdi)                                #135.5
        movl      4(%rsi), %r8d                                 #135.19
        movl      %r8d, 36(%rdi)                                #135.5
        movl      8(%rsi), %r9d                                 #135.19
        movl      %r9d, 40(%rdi)                                #135.5
        movl      (%rax), %r10d                                 #139.19
        movl      4(%rax), %r11d                                #140.19
        movl      8(%rax), %edx                                 #141.20
        movl      12(%rax), %eax                                #142.20
        movl      12(%rsi), %esi                                #135.19
        movl      %esi, 44(%rdi)                                #135.5
        movl      %r10d, 24(%rdi)                               #139.5
        movl      %r11d, 28(%rdi)                               #140.5
        movl      %edx, 56(%rdi)                                #141.5
        movl      %eax, 60(%rdi)                                #142.5
        ret                                                     #143.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	xote_keysetup,@function
	.size	xote_keysetup,.-xote_keysetup
..LNxote_keysetup.0:
	.data
# -- End  xote_keysetup
	.text
.L_2__routine_start_xote_ivsetup_1:
# -- Begin  xote_ivsetup
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_ivsetup
# --- xote_ivsetup(stream_ctx *, const uint8_t *)
xote_ivsetup:
# parameter 1: %rdi
# parameter 2: %rsi
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_ivsetup.4:
..L5:
                                                          #146.1
        xorl      %eax, %eax                                    #147.5
        movl      %eax, 16(%rdi)                                #147.5
        movl      %eax, 20(%rdi)                                #148.5
        movl      (%rsi), %edx                                  #149.20
        movl      %edx, 48(%rdi)                                #149.5
        movl      4(%rsi), %ecx                                 #150.20
        movl      %ecx, 52(%rdi)                                #150.5
        ret                                                     #151.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	xote_ivsetup,@function
	.size	xote_ivsetup,.-xote_ivsetup
..LNxote_ivsetup.1:
	.data
# -- End  xote_ivsetup
	.text
.L_2__routine_start_xote_encrypt_bytes_2:
# -- Begin  xote_encrypt_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_encrypt_bytes
# --- xote_encrypt_bytes(stream_ctx *, const uint8_t *, uint8_t *, uint32_t)
xote_encrypt_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %ecx
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_encrypt_bytes.7:
..L8:
                                                          #154.1
        pushq     %rbp                                          #154.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #154.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #154.1
        pushq     %r12                                          #154.1
        pushq     %r13                                          #154.1
        pushq     %r14                                          #154.1
        pushq     %r15                                          #154.1
        pushq     %rbx                                          #154.1
        subq      $248, %rsp                                    #154.1
        movq      %rsi, %r8                                     #154.1
        movl      %ecx, %esi                                    #154.1
        testl     %ecx, %ecx                                    #178.10
        je        ..B3.28       # Prob 28%                      #178.10
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE rdx rbx rsi rdi r8 r12 r13 r14 r15 ecx
..B3.2:                         # Preds ..B3.1
                                # Execution count [7.20e-01]
        cmpl      $128, %ecx                                    #180.21
        jb        ..B3.55       # Prob 10%                      #180.21
                                # LOE rdx rbx rsi rdi r8 r12 r13 r14 r15 ecx
..B3.3:                         # Preds ..B3.2
                                # Execution count [6.48e-01]
        movq      %rsi, %r9                                     #
        xorl      %eax, %eax                                    #180.5
        negq      %r9                                           #
        movl      %eax, %r12d                                   #
        sarq      $6, %r9                                       #
        movq      %rdx, %r14                                    #
        shrq      $57, %r9                                      #
        movl      %ecx, %ebx                                    #
        subq      %rsi, %r9                                     #
        movq      %rdi, %r13                                    #
        shrq      $7, %r9                                       #
        movq      %r8, %r15                                     #
        negq      %r9                                           #
        movl      %r9d, (%rsp)                                  #[spill]
                                # LOE r13 r14 r15 ebx r12d
..B3.4:                         # Preds ..B3.13 ..B3.3
                                # Execution count [3.60e+00]
        movq      %r13, %rsi                                    #182.9
        lea       96(%rsp), %rdi                                #182.9
        vzeroupper                                              #182.9
..___tag_value_xote_encrypt_bytes.18:
#       xote(uint8_t *, const uint32_t *)
        call      xote                                          #182.9
..___tag_value_xote_encrypt_bytes.19:
                                # LOE r13 r14 r15 ebx r12d
..B3.5:                         # Preds ..B3.4
                                # Execution count [3.60e+00]
        addl      $2, 16(%r13)                                  #183.16
        jne       ..B3.7        # Prob 50%                      #184.14
                                # LOE r13 r14 r15 ebx r12d
..B3.6:                         # Preds ..B3.5
                                # Execution count [1.80e+00]
        incl      20(%r13)                                      #186.20
                                # LOE r13 r14 r15 ebx r12d
..B3.7:                         # Preds ..B3.5 ..B3.6
                                # Execution count [0.00e+00]
        movq      %r15, %r9                                     #189.9
        negq      %r9                                           #189.9
        addq      %r14, %r9                                     #189.9
        cmpq      $128, %r9                                     #189.9
        jge       ..B3.9        # Prob 50%                      #189.9
                                # LOE r9 r13 r14 r15 ebx r12d
..B3.8:                         # Preds ..B3.7
                                # Execution count [0.00e+00]
        negq      %r9                                           #190.13
        cmpq      $128, %r9                                     #189.9
        jl        ..B3.10       # Prob 50%                      #189.9
                                # LOE r13 r14 r15 ebx r12d
..B3.9:                         # Preds ..B3.7 ..B3.8
                                # Execution count [1.80e+00]
        vmovdqu   (%r15), %ymm0                                 #190.22
        vpxor     96(%rsp), %ymm0, %ymm1                        #190.29
        vmovdqu   %ymm1, (%r14)                                 #190.13
        vmovdqu   32(%r15), %ymm2                               #190.22
        vpxor     128(%rsp), %ymm2, %ymm3                       #190.29
        vmovdqu   %ymm3, 32(%r14)                               #190.13
        vmovdqu   64(%r15), %ymm4                               #190.22
        vpxor     160(%rsp), %ymm4, %ymm5                       #190.29
        vmovdqu   %ymm5, 64(%r14)                               #190.13
        vmovdqu   96(%r15), %ymm6                               #190.22
        vpxor     192(%rsp), %ymm6, %ymm7                       #190.29
        vmovdqu   %ymm7, 96(%r14)                               #190.13
        jmp       ..B3.13       # Prob 100%                     #190.13
                                # LOE r13 r14 r15 ebx r12d
..B3.10:                        # Preds ..B3.8
                                # Execution count [1.80e+00]
        xorl      %r9d, %r9d                                    #189.9
                                # LOE r13 r14 r15 ebx r9d r12d
..B3.11:                        # Preds ..B3.11 ..B3.10
                                # Execution count [1.15e+02]
        lea       (%r9,%r9), %r10d                              #190.13
        movb      (%r10,%r15), %r11b                            #190.22
        xorb      96(%rsp,%r10), %r11b                          #190.29
        movb      %r11b, (%r10,%r14)                            #190.13
        lea       1(%r9,%r9), %r10d                             #190.29
        movb      (%r10,%r15), %r11b                            #190.22
        incl      %r9d                                          #189.9
        xorb      96(%rsp,%r10), %r11b                          #190.29
        movb      %r11b, (%r10,%r14)                            #190.13
        cmpl      $64, %r9d                                     #189.9
        jb        ..B3.11       # Prob 98%                      #189.9
                                # LOE r13 r14 r15 ebx r9d r12d
..B3.13:                        # Preds ..B3.11 ..B3.9
                                # Execution count [3.60e+00]
        incl      %r12d                                         #180.5
        addl      $-128, %ebx                                   #191.9
        addq      $128, %r14                                    #192.9
        addq      $128, %r15                                    #193.9
        cmpl      (%rsp), %r12d                                 #180.5[spill]
        jb        ..B3.4        # Prob 82%                      #180.5
                                # LOE r13 r14 r15 ebx r12d
..B3.14:                        # Preds ..B3.13
                                # Execution count [6.48e-01]
        movl      %ebx, %ecx                                    #
        movq      %r14, %rdx                                    #
        movq      %r15, %r8                                     #
        movq      %r13, %rdi                                    #
        movq      %r8, %r9                                      #195.5
        movq      %rdx, %rsi                                    #195.5
        testl     %ecx, %ecx                                    #195.10
        je        ..B3.52       # Prob 28%                      #195.10
                                # LOE rdx rbx rsi rdi r8 r9 r12 r13 r14 r15 ecx
..B3.16:                        # Preds ..B3.55 ..B3.14
                                # Execution count [5.18e-01]
        xorl      %eax, %eax                                    #195.5
        movq      %rdx, %r14                                    #195.5
        movq      %rsi, 8(%rsp)                                 #195.5[spill]
        movq      %rax, %r15                                    #195.5
        movq      %r9, (%rsp)                                   #195.5[spill]
        movl      %ecx, %ebx                                    #195.5
        movq      %rdi, %r12                                    #195.5
        movq      %r8, %r13                                     #195.5
                                # LOE r12 r13 r14 r15 ebx
..B3.17:                        # Preds ..B3.27 ..B3.16
                                # Execution count [2.59e+00]
        movq      %r12, %rsi                                    #199.9
        lea       32(%rsp), %rdi                                #199.9
        incq      %r15                                          #195.5
        vzeroupper                                              #199.9
..___tag_value_xote_encrypt_bytes.23:
#       forro_1(uint8_t *, const uint32_t *)
        call      forro_1                                       #199.9
..___tag_value_xote_encrypt_bytes.24:
                                # LOE r12 r13 r14 r15 ebx
..B3.18:                        # Preds ..B3.17
                                # Execution count [2.59e+00]
        incl      16(%r12)                                      #200.16
        jne       ..B3.20       # Prob 50%                      #201.14
                                # LOE r12 r13 r14 r15 ebx
..B3.19:                        # Preds ..B3.18
                                # Execution count [1.30e+00]
        incl      20(%r12)                                      #203.20
                                # LOE r12 r13 r14 r15 ebx
..B3.20:                        # Preds ..B3.18 ..B3.19
                                # Execution count [2.59e+00]
        cmpl      $64, %ebx                                     #206.22
        jbe       ..B3.29       # Prob 20%                      #206.22
                                # LOE r12 r13 r14 r15 ebx
..B3.21:                        # Preds ..B3.20
                                # Execution count [0.00e+00]
        movq      %r15, %r14                                    #214.9
        shlq      $6, %r14                                      #214.9
        movq      (%rsp), %r10                                  #214.9[spill]
        movq      8(%rsp), %r9                                  #214.9[spill]
        lea       -64(%r10,%r14), %r11                          #214.9
        lea       (%r9,%r14), %rax                              #214.9
        lea       -64(%r14,%r9), %r9                            #214.9
        subq      %r11, %r9                                     #213.22
        lea       (%r10,%r14), %r13                             #214.9
        cmpq      $64, %r9                                      #212.9
        jge       ..B3.23       # Prob 50%                      #212.9
                                # LOE rax r9 r12 r13 r14 r15 ebx
..B3.22:                        # Preds ..B3.21
                                # Execution count [0.00e+00]
        negq      %r9                                           #213.13
        cmpq      $64, %r9                                      #212.9
        jl        ..B3.24       # Prob 50%                      #212.9
                                # LOE rax r12 r13 r14 r15 ebx
..B3.23:                        # Preds ..B3.21 ..B3.22
                                # Execution count [1.04e+00]
        vmovdqu   -64(%r13), %ymm0                              #213.22
        vpxor     32(%rsp), %ymm0, %ymm1                        #213.29
        vmovdqu   %ymm1, -64(%rax)                              #213.13
        vmovdqu   -32(%r13), %ymm2                              #213.22
        vpxor     64(%rsp), %ymm2, %ymm3                        #213.29
        vmovdqu   %ymm3, -32(%rax)                              #213.13
        jmp       ..B3.27       # Prob 100%                     #213.13
                                # LOE r12 r13 r14 r15 ebx
..B3.24:                        # Preds ..B3.22
                                # Execution count [1.04e+00]
        xorl      %r9d, %r9d                                    #212.9
                                # LOE rax r12 r13 r14 r15 ebx r9d
..B3.25:                        # Preds ..B3.25 ..B3.24
                                # Execution count [3.32e+01]
        lea       (%r9,%r9), %r10d                              #213.13
        movb      -64(%r10,%r13), %r11b                         #213.22
        xorb      32(%rsp,%r10), %r11b                          #213.29
        movb      %r11b, -64(%r10,%rax)                         #213.13
        lea       1(%r9,%r9), %r10d                             #213.29
        movb      -64(%r10,%r13), %r11b                         #213.22
        incl      %r9d                                          #212.9
        xorb      32(%rsp,%r10), %r11b                          #213.29
        movb      %r11b, -64(%r10,%rax)                         #213.13
        cmpl      $32, %r9d                                     #212.9
        jb        ..B3.25       # Prob 96%                      #212.9
                                # LOE rax r12 r13 r14 r15 ebx r9d
..B3.27:                        # Preds ..B3.25 ..B3.23
                                # Execution count [2.07e+00]
        addq      8(%rsp), %r14                                 #214.9[spill]
        addl      $-64, %ebx                                    #214.9
        jmp       ..B3.17       # Prob 100%                     #214.9
                                # LOE r12 r13 r14 r15 ebx
..B3.28:                        # Preds ..B3.1
                                # Execution count [2.80e-01]
        addq      $248, %rsp                                    #179.9
	.cfi_restore 3
        popq      %rbx                                          #179.9
	.cfi_restore 15
        popq      %r15                                          #179.9
	.cfi_restore 14
        popq      %r14                                          #179.9
	.cfi_restore 13
        popq      %r13                                          #179.9
	.cfi_restore 12
        popq      %r12                                          #179.9
        movq      %rbp, %rsp                                    #179.9
        popq      %rbp                                          #179.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #179.9
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.29:                        # Preds ..B3.20
                                # Execution count [5.18e-01]: Infreq
        movl      %ebx, %ecx                                    #
        movq      %r13, %r8                                     #
        movq      %r14, %rdx                                    #
        testl     %ecx, %ecx                                    #208.29
        jbe       ..B3.52       # Prob 50%                      #208.29
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B3.30:                        # Preds ..B3.29
                                # Execution count [0.00e+00]: Infreq
        cmpl      $6, %ecx                                      #208.13
        jbe       ..B3.46       # Prob 50%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B3.31:                        # Preds ..B3.30
                                # Execution count [0.00e+00]: Infreq
        movq      %rdx, %rax                                    #209.26
        movl      %ecx, %esi                                    #214.9
        subq      %r8, %rax                                     #209.26
        cmpq      %rsi, %rax                                    #208.13
        jge       ..B3.33       # Prob 50%                      #208.13
                                # LOE rax rdx rbx rsi r8 r12 r13 r14 r15 ecx
..B3.32:                        # Preds ..B3.31
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #209.17
        cmpq      %rsi, %rax                                    #208.13
        jl        ..B3.46       # Prob 50%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B3.33:                        # Preds ..B3.31 ..B3.32
                                # Execution count [2.33e-01]: Infreq
        cmpl      $32, %ecx                                     #208.13
        jb        ..B3.54       # Prob 10%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B3.34:                        # Preds ..B3.33
                                # Execution count [2.33e-01]: Infreq
        movl      %ecx, %esi                                    #208.13
        xorl      %edi, %edi                                    #208.13
        andl      $-32, %esi                                    #208.13
        movslq    %esi, %rax                                    #208.13
                                # LOE rax rdx rbx rdi r8 r12 r13 r14 r15 ecx esi
..B3.35:                        # Preds ..B3.35 ..B3.34
                                # Execution count [1.30e+00]: Infreq
        vmovdqu   (%r8,%rdi), %ymm0                             #209.26
        vpxor     32(%rsp,%rdi), %ymm0, %ymm1                   #209.33
        vmovdqu   %ymm1, (%rdi,%rdx)                            #209.17
        addq      $32, %rdi                                     #208.13
        cmpq      %rax, %rdi                                    #208.13
        jb        ..B3.35       # Prob 82%                      #208.13
                                # LOE rax rdx rbx rdi r8 r12 r13 r14 r15 ecx esi
..B3.37:                        # Preds ..B3.35 ..B3.54
                                # Execution count [2.59e-01]: Infreq
        lea       1(%rsi), %eax                                 #208.13
        cmpl      %ecx, %eax                                    #208.13
        ja        ..B3.52       # Prob 50%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B3.38:                        # Preds ..B3.37
                                # Execution count [2.33e-01]: Infreq
        subl      %esi, %ecx                                    #208.13
        cmpl      $8, %ecx                                      #208.13
        jb        ..B3.53       # Prob 10%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B3.39:                        # Preds ..B3.38
                                # Execution count [2.33e-01]: Infreq
        movl      %ecx, %eax                                    #208.13
        xorl      %edi, %edi                                    #208.13
        andl      $-8, %eax                                     #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B3.40:                        # Preds ..B3.40 ..B3.39
                                # Execution count [1.30e+00]: Infreq
        lea       (%rsi,%rdi), %r9d                             #209.17
        addl      $8, %edi                                      #208.13
        movslq    %r9d, %r9                                     #209.33
        vmovq     (%r9,%r8), %xmm0                              #209.26
        vmovq     32(%rsp,%r9), %xmm1                           #209.33
        vpxor     %xmm1, %xmm0, %xmm2                           #209.33
        vmovq     %xmm2, (%r9,%rdx)                             #209.17
        cmpl      %eax, %edi                                    #208.13
        jb        ..B3.40       # Prob 82%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B3.42:                        # Preds ..B3.40 ..B3.53
                                # Execution count [2.59e-01]: Infreq
        cmpl      %ecx, %eax                                    #208.13
        jae       ..B3.52       # Prob 10%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B3.44:                        # Preds ..B3.42 ..B3.44
                                # Execution count [1.30e+00]: Infreq
        lea       (%rsi,%rax), %edi                             #209.17
        incl      %eax                                          #208.13
        movslq    %edi, %rdi                                    #209.33
        movb      (%rdi,%r8), %r9b                              #209.26
        xorb      32(%rsp,%rdi), %r9b                           #209.33
        movb      %r9b, (%rdi,%rdx)                             #209.17
        cmpl      %ecx, %eax                                    #208.13
        jb        ..B3.44       # Prob 82%                      #208.13
        jmp       ..B3.52       # Prob 100%                     #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B3.46:                        # Preds ..B3.30 ..B3.32
                                # Execution count [2.59e-01]: Infreq
        movl      %ecx, %eax                                    #214.9
        movl      $1, %edi                                      #208.13
        xorl      %esi, %esi                                    #208.13
        shrl      $1, %eax                                      #214.9
        je        ..B3.50       # Prob 10%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B3.48:                        # Preds ..B3.46 ..B3.48
                                # Execution count [6.48e-01]: Infreq
        lea       (%rsi,%rsi), %edi                             #209.17
        movslq    %edi, %rdi                                    #209.33
        lea       1(%rsi,%rsi), %r10d                           #209.33
        movslq    %r10d, %r10                                   #209.17
        incl      %esi                                          #208.13
        movb      (%rdi,%r8), %r9b                              #209.26
        xorb      32(%rsp,%rdi), %r9b                           #209.33
        movb      %r9b, (%rdi,%rdx)                             #209.17
        movb      (%r10,%r8), %r11b                             #209.26
        xorb      32(%rsp,%r10), %r11b                          #209.33
        movb      %r11b, (%r10,%rdx)                            #209.17
        cmpl      %eax, %esi                                    #208.13
        jb        ..B3.48       # Prob 64%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B3.49:                        # Preds ..B3.48
                                # Execution count [2.33e-01]: Infreq
        lea       1(%rsi,%rsi), %edi                            #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx edi
..B3.50:                        # Preds ..B3.49 ..B3.46
                                # Execution count [2.59e-01]: Infreq
        decl      %edi                                          #208.13
        cmpl      %ecx, %edi                                    #208.13
        jae       ..B3.52       # Prob 10%                      #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 edi
..B3.51:                        # Preds ..B3.50
                                # Execution count [2.33e-01]: Infreq
        movslq    %edi, %rdi                                    #209.33
        movb      (%rdi,%r8), %r8b                              #209.26
        xorb      32(%rsp,%rdi), %r8b                           #209.33
        movb      %r8b, (%rdi,%rdx)                             #209.17
                                # LOE rbx r12 r13 r14 r15
..B3.52:                        # Preds ..B3.14 ..B3.44 ..B3.50 ..B3.29 ..B3.37
                                #       ..B3.42 ..B3.51
                                # Execution count [5.18e-01]: Infreq
        vzeroupper                                              #210.13
        addq      $248, %rsp                                    #210.13
	.cfi_restore 3
        popq      %rbx                                          #210.13
	.cfi_restore 15
        popq      %r15                                          #210.13
	.cfi_restore 14
        popq      %r14                                          #210.13
	.cfi_restore 13
        popq      %r13                                          #210.13
	.cfi_restore 12
        popq      %r12                                          #210.13
        movq      %rbp, %rsp                                    #210.13
        popq      %rbp                                          #210.13
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #210.13
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B3.53:                        # Preds ..B3.38
                                # Execution count [2.33e-02]: Infreq
        xorl      %eax, %eax                                    #208.13
        jmp       ..B3.42       # Prob 100%                     #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B3.54:                        # Preds ..B3.33
                                # Execution count [2.33e-02]: Infreq
        xorl      %esi, %esi                                    #208.13
        jmp       ..B3.37       # Prob 100%                     #208.13
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B3.55:                        # Preds ..B3.2
                                # Execution count [7.20e-02]: Infreq
        movq      %r8, %r9                                      #195.5
        movq      %rdx, %rsi                                    #195.5
        jmp       ..B3.16       # Prob 100%                     #195.5
        .align    16,0x90
                                # LOE rdx rbx rsi rdi r8 r9 r12 r13 r14 r15 ecx
	.cfi_endproc
# mark_end;
	.type	xote_encrypt_bytes,@function
	.size	xote_encrypt_bytes,.-xote_encrypt_bytes
..LNxote_encrypt_bytes.2:
	.data
# -- End  xote_encrypt_bytes
	.text
.L_2__routine_start_xote_3:
# -- Begin  xote
	.text
# mark_begin;
       .align    16,0x90
# --- xote(uint8_t *, const uint32_t *)
xote:
# parameter 1: %rdi
# parameter 2: %rsi
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote.57:
..L58:
                                                         #67.1
        pushq     %rbp                                          #67.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #67.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #67.1
        pushq     %r12                                          #67.1
        pushq     %r13                                          #67.1
        pushq     %r14                                          #67.1
        pushq     %r15                                          #67.1
        pushq     %rbx                                          #67.1
        subq      $792, %rsp                                    #67.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movq      %rsi, %r14                                    #67.1
        movq      %rdi, (%rsp)                                  #67.1[spill]
        movq      %r14, 8(%rsp)                                 #67.1[spill]
        movl      12(%r14), %edx                                #73.16
        movl      48(%r14), %r13d                               #73.16
        addl      %edx, %r13d                                   #81.9
        movl      32(%r14), %r9d                                #73.16
        xorl      %r13d, %r9d                                   #81.9
        movl      16(%r14), %ebx                                #73.16
        movl      24(%r14), %r8d                                #73.16
        movl      %r8d, 40(%rsp)                                #73.16[spill]
        movl      60(%r14), %r8d                                #73.16
        movl      %r8d, 128(%rsp)                               #73.16[spill]
        lea       (%r9,%rbx), %r8d                              #81.9
        vmovdqu   (%r14), %ymm0                                 #73.16
        movl      %r8d, %edi                                    #81.9
        shll      $19, %edi                                     #81.9
        shrl      $13, %r8d                                     #81.9
        orl       %r8d, %edi                                    #81.9
        movl      (%r14), %esi                                  #73.16
        movl      8(%r14), %r12d                                #73.16
        movl      28(%r14), %ecx                                #73.16
        vmovdqu   %ymm0, 640(%rsp)                              #73.9
        vmovdqu   %ymm0, 704(%rsp)                              #74.9
        vmovdqu   32(%r14), %ymm0                               #73.16
        movl      %r12d, 112(%rsp)                              #73.16[spill]
        movl      %ecx, 24(%rsp)                                #73.16[spill]
        movl      20(%r14), %r15d                               #73.16
        movl      4(%r14), %eax                                 #73.16
        movl      52(%r14), %ecx                                #73.16
        movl      36(%r14), %r12d                               #73.16
        movl      56(%r14), %r10d                               #73.16
        movl      40(%r14), %r11d                               #73.16
        movl      44(%r14), %r14d                               #73.16
        movl      %r11d, 48(%rsp)                               #73.16[spill]
        movl      %edx, %r11d                                   #81.9
        movl      %r14d, 56(%rsp)                               #73.16[spill]
        lea       (%rdi,%rsi), %r14d                            #81.9
        xorl      %r14d, %r11d                                  #81.9
        movl      %r11d, 144(%rsp)                              #81.9[spill]
        movl      %ebx, 16(%rsp)                                #73.16[spill]
        movl      %r15d, 32(%rsp)                               #73.16[spill]
        vmovdqu   %ymm0, 672(%rsp)                              #73.9
        lea       (%r13,%r11), %r8d                             #81.9
        vmovdqu   %ymm0, 736(%rsp)                              #74.9
        movl      %r8d, %r11d                                   #81.9
        shll      $11, %r11d                                    #81.9
        shrl      $21, %r8d                                     #81.9
        orl       %r8d, %r11d                                   #81.9
        movl      %r11d, 160(%rsp)                              #81.9[spill]
        lea       (%r11,%r9), %r8d                              #81.9
        movl      %r8d, 64(%rsp)                                #81.9[spill]
        xorl      %r8d, %edi                                    #81.9
        movl      %edi, 176(%rsp)                               #81.9[spill]
        lea       (%rdi,%r14), %r8d                             #81.9
        addl      %edi, %r14d                                   #81.9
        shll      $7, %r8d                                      #81.9
        lea       1(%r9,%rbx), %edi                             #82.9
        shrl      $25, %r14d                                    #81.9
        orl       %r14d, %r8d                                   #81.9
        movl      %edi, %r14d                                   #82.9
        shll      $19, %r14d                                    #82.9
        shrl      $13, %edi                                     #82.9
        orl       %edi, %r14d                                   #82.9
        addl      %r14d, %esi                                   #82.9
        xorl      %esi, %edx                                    #82.9
        addl      %edx, %r13d                                   #82.9
        movl      %r13d, %ebx                                   #82.9
        shll      $11, %ebx                                     #82.9
        shrl      $21, %r13d                                    #82.9
        orl       %r13d, %ebx                                   #82.9
        lea       (%r8,%rcx), %r13d                             #83.9
        addl      %ebx, %r9d                                    #82.9
        xorl      %r9d, %r14d                                   #82.9
        movl      %ebx, 192(%rsp)                               #82.9[spill]
        movl      %r9d, 72(%rsp)                                #82.9[spill]
        movl      %r14d, 208(%rsp)                              #82.9[spill]
        lea       (%r14,%rsi), %ebx                             #82.9
        addl      %r14d, %esi                                   #82.9
        shll      $7, %ebx                                      #82.9
        shrl      $25, %esi                                     #82.9
        orl       %esi, %ebx                                    #82.9
        movl      %r13d, %esi                                   #83.9
        xorl      %r12d, %esi                                   #83.9
        addl      %ebx, %ecx                                    #84.9
        xorl      %ecx, %r12d                                   #84.9
        lea       (%rsi,%r15), %r9d                             #83.9
        movl      %r9d, %r11d                                   #83.9
        shll      $19, %r11d                                    #83.9
        shrl      $13, %r9d                                     #83.9
        orl       %r9d, %r11d                                   #83.9
        lea       (%r11,%rax), %edi                             #83.9
        xorl      %edi, %r8d                                    #83.9
        movl      %r8d, 224(%rsp)                               #83.9[spill]
        lea       (%r8,%r13), %r14d                             #83.9
        addl      %r8d, %r13d                                   #83.9
        shll      $11, %r14d                                    #83.9
        lea       (%r12,%r15), %r8d                             #84.9
        shrl      $21, %r13d                                    #83.9
        orl       %r13d, %r14d                                  #83.9
        addl      %r14d, %esi                                   #83.9
        movl      %esi, 80(%rsp)                                #83.9[spill]
        xorl      %esi, %r11d                                   #83.9
        movl      %r8d, %esi                                    #84.9
        shll      $19, %esi                                     #84.9
        shrl      $13, %r8d                                     #84.9
        orl       %r8d, %esi                                    #84.9
        addl      %esi, %eax                                    #84.9
        xorl      %eax, %ebx                                    #84.9
        movl      %r14d, 240(%rsp)                              #83.9[spill]
        lea       (%r11,%rdi), %r14d                            #83.9
        addl      %r11d, %edi                                   #83.9
        shll      $7, %r14d                                     #83.9
        shrl      $25, %edi                                     #83.9
        lea       (%rbx,%rcx), %r15d                            #84.9
        addl      %ebx, %ecx                                    #84.9
        orl       %edi, %r14d                                   #83.9
        shll      $11, %r15d                                    #84.9
        shrl      $21, %ecx                                     #84.9
        orl       %ecx, %r15d                                   #84.9
        addl      %r15d, %r12d                                  #84.9
        xorl      %r12d, %esi                                   #84.9
        movl      %r15d, 280(%rsp)                              #84.9[spill]
        lea       (%r14,%r10), %r15d                            #85.9
        movl      %r15d, %r13d                                  #85.9
        movl      %r12d, 88(%rsp)                               #84.9[spill]
        movl      48(%rsp), %r12d                               #85.9[spill]
        xorl      %r12d, %r13d                                  #85.9
        movl      %esi, 288(%rsp)                               #84.9[spill]
        lea       (%rsi,%rax), %ecx                             #84.9
        addl      %esi, %eax                                    #84.9
        movl      40(%rsp), %esi                                #85.9[spill]
        shll      $7, %ecx                                      #84.9
        shrl      $25, %eax                                     #84.9
        orl       %eax, %ecx                                    #84.9
        lea       (%r13,%rsi), %eax                             #85.9
        movl      %eax, %r8d                                    #85.9
        addl      %ecx, %r10d                                   #86.9
        shll      $19, %r8d                                     #85.9
        xorl      %r10d, %r12d                                  #86.9
        shrl      $13, %eax                                     #85.9
        orl       %eax, %r8d                                    #85.9
        movl      112(%rsp), %edi                               #85.9[spill]
        movl      %ebx, 256(%rsp)                               #84.9[spill]
        movl      24(%rsp), %eax                                #87.9[spill]
        lea       (%r8,%rdi), %ebx                              #85.9
        xorl      %ebx, %r14d                                   #85.9
        movl      %r14d, 304(%rsp)                              #85.9[spill]
        lea       (%r14,%r15), %r9d                             #85.9
        addl      %r14d, %r15d                                  #85.9
        shll      $11, %r9d                                     #85.9
        lea       (%r12,%rsi), %r14d                            #86.9
        shrl      $21, %r15d                                    #85.9
        orl       %r15d, %r9d                                   #85.9
        addl      %r9d, %r13d                                   #85.9
        xorl      %r13d, %r8d                                   #85.9
        movl      %r8d, 344(%rsp)                               #85.9[spill]
        movl      %r9d, 320(%rsp)                               #85.9[spill]
        lea       (%r8,%rbx), %r15d                             #85.9
        addl      %r8d, %ebx                                    #85.9
        movl      %r14d, %r8d                                   #86.9
        shll      $19, %r8d                                     #86.9
        shrl      $13, %r14d                                    #86.9
        orl       %r14d, %r8d                                   #86.9
        addl      %r8d, %edi                                    #86.9
        xorl      %edi, %ecx                                    #86.9
        shll      $7, %r15d                                     #85.9
        shrl      $25, %ebx                                     #85.9
        orl       %ebx, %r15d                                   #85.9
        movl      %ecx, 352(%rsp)                               #86.9[spill]
        lea       (%rcx,%r10), %esi                             #86.9
        addl      %ecx, %r10d                                   #86.9
        shll      $11, %esi                                     #86.9
        shrl      $21, %r10d                                    #86.9
        orl       %r10d, %esi                                   #86.9
        addl      %esi, %r12d                                   #86.9
        movl      128(%rsp), %ecx                               #87.9[spill]
        xorl      %r12d, %r8d                                   #86.9
        movl      %r8d, 368(%rsp)                               #86.9[spill]
        movl      %esi, 360(%rsp)                               #86.9[spill]
        movl      56(%rsp), %esi                                #87.9[spill]
        lea       (%r15,%rcx), %r9d                             #87.9
        lea       (%r8,%rdi), %r14d                             #86.9
        addl      %r8d, %edi                                    #86.9
        movl      %r9d, %r8d                                    #87.9
        xorl      %esi, %r8d                                    #87.9
        shll      $7, %r14d                                     #86.9
        shrl      $25, %edi                                     #86.9
        orl       %edi, %r14d                                   #86.9
        addl      %r14d, %ecx                                   #88.9
        lea       (%r8,%rax), %r10d                             #87.9
        movl      %r10d, %edi                                   #87.9
        xorl      %ecx, %esi                                    #88.9
        shll      $19, %edi                                     #87.9
        shrl      $13, %r10d                                    #87.9
        orl       %r10d, %edi                                   #87.9
        movl      144(%rsp), %r10d                              #87.9[spill]
        addl      %edi, %r10d                                   #87.9
        xorl      %r10d, %r15d                                  #87.9
        lea       (%r15,%r9), %ebx                              #87.9
        addl      %r15d, %r9d                                   #87.9
        shll      $11, %ebx                                     #87.9
        shrl      $21, %r9d                                     #87.9
        orl       %r9d, %ebx                                    #87.9
        addl      %ebx, %r8d                                    #87.9
        xorl      %r8d, %edi                                    #87.9
        addl      %edi, %r10d                                   #87.9
        movl      %r10d, %r9d                                   #87.9
        shll      $7, %r9d                                      #87.9
        shrl      $25, %r10d                                    #87.9
        orl       %r10d, %r9d                                   #87.9
        lea       (%rsi,%rax), %r10d                            #88.9
        movl      %r10d, %eax                                   #88.9
        addl      %r9d, %ebx                                    #89.9
        shll      $19, %eax                                     #88.9
        xorl      %ebx, %r13d                                   #89.9
        shrl      $13, %r10d                                    #88.9
        orl       %r10d, %eax                                   #88.9
        addl      %eax, %edx                                    #88.9
        xorl      %edx, %r14d                                   #88.9
        lea       (%r14,%rcx), %r10d                            #88.9
        addl      %r14d, %ecx                                   #88.9
        shll      $11, %r10d                                    #88.9
        shrl      $21, %ecx                                     #88.9
        orl       %ecx, %r10d                                   #88.9
        addl      %r10d, %esi                                   #88.9
        xorl      %esi, %eax                                    #88.9
        addl      %eax, %edx                                    #88.9
        movl      %edx, %ecx                                    #88.9
        shll      $7, %ecx                                      #88.9
        shrl      $25, %edx                                     #88.9
        orl       %edx, %ecx                                    #88.9
        lea       (%r13,%r11), %edx                             #89.9
        addl      %r13d, %r11d                                  #89.9
        addl      %ecx, %r10d                                   #90.9
        shll      $19, %edx                                     #89.9
        xorl      %r10d, %r12d                                  #90.9
        shrl      $13, %r11d                                    #89.9
        orl       %r11d, %edx                                   #89.9
        movl      224(%rsp), %r11d                              #89.9[spill]
        addl      %edx, %r11d                                   #89.9
        xorl      %r11d, %r9d                                   #89.9
        addl      %r9d, %ebx                                    #89.9
        movl      %r9d, 384(%rsp)                               #89.9[spill]
        movl      %ebx, %r9d                                    #89.9
        shll      $11, %r9d                                     #89.9
        shrl      $21, %ebx                                     #89.9
        orl       %ebx, %r9d                                    #89.9
        addl      %r9d, %r13d                                   #89.9
        xorl      %r13d, %edx                                   #89.9
        movl      288(%rsp), %ebx                               #90.9[spill]
        movl      %r13d, 96(%rsp)                               #89.9[spill]
        movl      %r9d, 120(%rsp)                               #89.9[spill]
        movl      256(%rsp), %r9d                               #90.9[spill]
        lea       (%r11,%rdx), %r13d                            #89.9
        addl      %edx, %r11d                                   #89.9
        shll      $7, %r13d                                     #89.9
        shrl      $25, %r11d                                    #89.9
        orl       %r11d, %r13d                                  #89.9
        lea       (%r12,%rbx), %r11d                            #90.9
        addl      %r12d, %ebx                                   #90.9
        shll      $19, %r11d                                    #90.9
        shrl      $13, %ebx                                     #90.9
        orl       %ebx, %r11d                                   #90.9
        addl      %r11d, %r9d                                   #90.9
        xorl      %r9d, %ecx                                    #90.9
        addl      %ecx, %r10d                                   #90.9
        movl      %ecx, 416(%rsp)                               #90.9[spill]
        movl      %r10d, %ecx                                   #90.9
        shll      $11, %ecx                                     #90.9
        shrl      $21, %r10d                                    #90.9
        movl      %edx, 272(%rsp)                               #89.9[spill]
        orl       %r10d, %ecx                                   #90.9
        movl      160(%rsp), %edx                               #91.9[spill]
        addl      %ecx, %r12d                                   #90.9
        addl      %r13d, %edx                                   #91.9
        xorl      %r12d, %r11d                                  #90.9
        xorl      %edx, %r8d                                    #91.9
        movl      %r12d, 48(%rsp)                               #90.9[spill]
        movl      344(%rsp), %r12d                              #91.9[spill]
        movl      %ecx, 136(%rsp)                               #90.9[spill]
        lea       (%r9,%r11), %ebx                              #90.9
        movl      %r11d, 296(%rsp)                              #90.9[spill]
        addl      %r11d, %r9d                                   #90.9
        movl      304(%rsp), %r11d                              #91.9[spill]
        lea       (%r8,%r12), %ecx                              #91.9
        addl      %r8d, %r12d                                   #91.9
        shll      $19, %ecx                                     #91.9
        shrl      $13, %r12d                                    #91.9
        orl       %r12d, %ecx                                   #91.9
        addl      %ecx, %r11d                                   #91.9
        shll      $7, %ebx                                      #90.9
        xorl      %r11d, %r13d                                  #91.9
        shrl      $25, %r9d                                     #90.9
        orl       %r9d, %ebx                                    #90.9
        movl      192(%rsp), %r9d                               #92.9[spill]
        addl      %ebx, %r9d                                    #92.9
        lea       (%rdx,%r13), %r12d                            #91.9
        xorl      %r9d, %esi                                    #92.9
        addl      %r13d, %edx                                   #91.9
        movl      %r13d, 424(%rsp)                              #91.9[spill]
        movl      368(%rsp), %r13d                              #92.9[spill]
        shll      $11, %r12d                                    #91.9
        shrl      $21, %edx                                     #91.9
        orl       %edx, %r12d                                   #91.9
        lea       (%rsi,%r13), %r10d                            #92.9
        addl      %esi, %r13d                                   #92.9
        addl      %r12d, %r8d                                   #91.9
        shll      $19, %r10d                                    #92.9
        xorl      %r8d, %ecx                                    #91.9
        shrl      $13, %r13d                                    #92.9
        orl       %r13d, %r10d                                  #92.9
        movl      352(%rsp), %r13d                              #92.9[spill]
        addl      %r10d, %r13d                                  #92.9
        xorl      %r13d, %ebx                                   #92.9
        movl      %r8d, 104(%rsp)                               #91.9[spill]
        lea       (%r11,%rcx), %r8d                             #91.9
        movl      %ecx, 312(%rsp)                               #91.9[spill]
        addl      %ecx, %r11d                                   #91.9
        shll      $7, %r8d                                      #91.9
        shrl      $25, %r11d                                    #91.9
        lea       (%r9,%rbx), %ecx                              #92.9
        addl      %ebx, %r9d                                    #92.9
        orl       %r11d, %r8d                                   #91.9
        shll      $11, %ecx                                     #92.9
        shrl      $21, %r9d                                     #92.9
        orl       %r9d, %ecx                                    #92.9
        movl      240(%rsp), %r11d                              #93.9[spill]
        addl      %ecx, %esi                                    #92.9
        addl      %r8d, %r11d                                   #93.9
        xorl      %esi, %r10d                                   #92.9
        movl      64(%rsp), %edx                                #93.9[spill]
        xorl      %r11d, %edx                                   #93.9
        movl      %ecx, 232(%rsp)                               #92.9[spill]
        movl      %r10d, 336(%rsp)                              #92.9[spill]
        lea       (%r13,%r10), %ecx                             #92.9
        addl      %r10d, %r13d                                  #92.9
        shll      $7, %ecx                                      #92.9
        lea       (%rdx,%rdi), %r10d                            #93.9
        addl      %edx, %edi                                    #93.9
        shll      $19, %r10d                                    #93.9
        shrl      $13, %edi                                     #93.9
        orl       %edi, %r10d                                   #93.9
        addl      %r10d, %r15d                                  #93.9
        shrl      $25, %r13d                                    #92.9
        xorl      %r15d, %r8d                                   #93.9
        orl       %r13d, %ecx                                   #92.9
        movl      280(%rsp), %r9d                               #94.9[spill]
        addl      %ecx, %r9d                                    #94.9
        movl      %ebx, 328(%rsp)                               #92.9[spill]
        lea       (%r11,%r8), %edi                              #93.9
        movl      72(%rsp), %ebx                                #94.9[spill]
        addl      %r8d, %r11d                                   #93.9
        xorl      %r9d, %ebx                                    #94.9
        shll      $11, %edi                                     #93.9
        shrl      $21, %r11d                                    #93.9
        orl       %r11d, %edi                                   #93.9
        addl      %edi, %edx                                    #93.9
        lea       (%rbx,%rax), %r11d                            #94.9
        addl      %ebx, %eax                                    #94.9
        xorl      %edx, %r10d                                   #93.9
        shll      $19, %r11d                                    #94.9
        shrl      $13, %eax                                     #94.9
        orl       %eax, %r11d                                   #94.9
        addl      %r11d, %r14d                                  #94.9
        lea       (%r15,%r10), %r13d                            #93.9
        xorl      %r14d, %ecx                                   #94.9
        addl      %r10d, %r15d                                  #93.9
        shll      $7, %r13d                                     #93.9
        shrl      $25, %r15d                                    #93.9
        orl       %r15d, %r13d                                  #93.9
        movl      %r10d, 392(%rsp)                              #93.9[spill]
        lea       (%r9,%rcx), %eax                              #94.9
        movl      320(%rsp), %r10d                              #95.9[spill]
        addl      %ecx, %r9d                                    #94.9
        addl      %r13d, %r10d                                  #95.9
        movl      %edi, 248(%rsp)                               #93.9[spill]
        movl      80(%rsp), %edi                                #95.9[spill]
        shll      $11, %eax                                     #94.9
        xorl      %r10d, %edi                                   #95.9
        shrl      $21, %r9d                                     #94.9
        orl       %r9d, %eax                                    #94.9
        movl      176(%rsp), %r9d                               #95.9[spill]
        addl      %eax, %ebx                                    #94.9
        xorl      %ebx, %r11d                                   #94.9
        movl      %ebx, 72(%rsp)                                #94.9[spill]
        movl      %r11d, 400(%rsp)                              #94.9[spill]
        lea       (%rdi,%r9), %ebx                              #95.9
        addl      %edi, %r9d                                    #95.9
        shll      $19, %ebx                                     #95.9
        lea       (%r14,%r11), %r15d                            #94.9
        shrl      $13, %r9d                                     #95.9
        addl      %r11d, %r14d                                  #94.9
        orl       %r9d, %ebx                                    #95.9
        movl      384(%rsp), %r11d                              #95.9[spill]
        addl      %ebx, %r11d                                   #95.9
        xorl      %r11d, %r13d                                  #95.9
        shll      $7, %r15d                                     #94.9
        shrl      $25, %r14d                                    #94.9
        orl       %r14d, %r15d                                  #94.9
        movl      360(%rsp), %r14d                              #96.9[spill]
        lea       (%r10,%r13), %r9d                             #95.9
        addl      %r13d, %r10d                                  #95.9
        addl      %r15d, %r14d                                  #96.9
        shll      $11, %r9d                                     #95.9
        shrl      $21, %r10d                                    #95.9
        orl       %r10d, %r9d                                   #95.9
        addl      %r9d, %edi                                    #95.9
        xorl      %edi, %ebx                                    #95.9
        movl      %eax, 216(%rsp)                               #94.9[spill]
        movl      88(%rsp), %eax                                #96.9[spill]
        xorl      %r14d, %eax                                   #96.9
        movl      %r9d, 200(%rsp)                               #95.9[spill]
        lea       (%r11,%rbx), %r10d                            #95.9
        addl      %ebx, %r11d                                   #95.9
        shll      $7, %r10d                                     #95.9
        shrl      $25, %r11d                                    #95.9
        orl       %r11d, %r10d                                  #95.9
        movl      208(%rsp), %r11d                              #96.9[spill]
        addl      %r10d, %r12d                                  #81.9
        movl      %r13d, 408(%rsp)                              #95.9[spill]
        xorl      %r12d, %edx                                   #81.9
        movl      416(%rsp), %r13d                              #96.9[spill]
        addl      %edx, %ebx                                    #81.9
        lea       (%rax,%r11), %r9d                             #96.9
        addl      %eax, %r11d                                   #96.9
        shll      $19, %r9d                                     #96.9
        shrl      $13, %r11d                                    #96.9
        orl       %r11d, %r9d                                   #96.9
        addl      %r9d, %r13d                                   #96.9
        xorl      %r13d, %r15d                                  #96.9
        lea       (%r14,%r15), %r11d                            #96.9
        addl      %r15d, %r14d                                  #96.9
        shll      $11, %r11d                                    #96.9
        shrl      $21, %r14d                                    #96.9
        orl       %r14d, %r11d                                  #96.9
        addl      %r11d, %eax                                   #96.9
        xorl      %eax, %r9d                                    #96.9
        movl      %r9d, 264(%rsp)                               #96.9[spill]
        movl      %r11d, 184(%rsp)                              #96.9[spill]
        movl      96(%rsp), %r11d                               #81.9[spill]
        lea       (%r13,%r9), %r14d                             #96.9
        addl      %r9d, %r13d                                   #96.9
        movl      %ebx, %r9d                                    #81.9
        shll      $19, %r9d                                     #81.9
        shrl      $13, %ebx                                     #81.9
        shll      $7, %r14d                                     #96.9
        orl       %ebx, %r9d                                    #81.9
        shrl      $25, %r13d                                    #96.9
        orl       %r13d, %r14d                                  #96.9
        movl      424(%rsp), %r13d                              #81.9[spill]
        addl      %r9d, %r13d                                   #81.9
        xorl      %r13d, %r10d                                  #81.9
        addl      %r10d, %r12d                                  #81.9
        movl      %r12d, %ebx                                   #81.9
        shll      $11, %ebx                                     #81.9
        shrl      $21, %r12d                                    #81.9
        orl       %r12d, %ebx                                   #81.9
        addl      %ebx, %edx                                    #81.9
        xorl      %edx, %r9d                                    #81.9
        movl      %r10d, 376(%rsp)                              #81.9[spill]
        movl      %ebx, 168(%rsp)                               #81.9[spill]
        movl      %r9d, 152(%rsp)                               #81.9[spill]
        movl      104(%rsp), %r10d                              #81.9[spill]
        lea       (%r9,%r13), %r12d                             #81.9
        movl      72(%rsp), %ebx                                #81.9[spill]
        addl      %r9d, %r13d                                   #81.9
        movl      48(%rsp), %r9d                                #81.9[spill]
        shll      $7, %r12d                                     #81.9
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r13d r14d r15d ymm0
..B4.14:                        # Preds ..B4.1
                                # Execution count [1.00e+00]
        movl      %r15d, 416(%rsp)                              #[spill]
        movl      232(%rsp), %r15d                              #82.9[spill]
        addl      %r14d, %r15d                                  #82.9
        shrl      $25, %r13d                                    #81.9
        xorl      %r15d, %ebx                                   #82.9
        orl       %r13d, %r12d                                  #81.9
        movl      264(%rsp), %r13d                              #82.9[spill]
        addl      %ebx, %r13d                                   #82.9
        movl      %edx, 64(%rsp)                                #[spill]
        movl      %r13d, %edx                                   #82.9
        shll      $19, %edx                                     #82.9
        shrl      $13, %r13d                                    #82.9
        orl       %r13d, %edx                                   #82.9
        movl      328(%rsp), %r13d                              #82.9[spill]
        addl      %edx, %r13d                                   #82.9
        xorl      %r13d, %r14d                                  #82.9
        addl      %r14d, %r15d                                  #82.9
        movl      %r14d, 424(%rsp)                              #82.9[spill]
        movl      %r15d, %r14d                                  #82.9
        shll      $11, %r14d                                    #82.9
        shrl      $21, %r15d                                    #82.9
        orl       %r15d, %r14d                                  #82.9
        addl      %r14d, %ebx                                   #82.9
        xorl      %ebx, %edx                                    #82.9
        movl      %esi, 56(%rsp)                                #[spill]
        movl      248(%rsp), %esi                               #83.9[spill]
        addl      %r12d, %esi                                   #83.9
        movl      %r14d, 432(%rsp)                              #82.9[spill]
        xorl      %esi, %edi                                    #83.9
        movl      %r10d, 104(%rsp)                              #[spill]
        lea       (%rdx,%r13), %r14d                            #82.9
        addl      %edx, %r13d                                   #82.9
        movl      272(%rsp), %r10d                              #83.9[spill]
        shll      $7, %r14d                                     #82.9
        addl      %edi, %r10d                                   #83.9
        shrl      $25, %r13d                                    #82.9
        movl      %edx, 440(%rsp)                               #82.9[spill]
        orl       %r13d, %r14d                                  #82.9
        movl      %r10d, %edx                                   #83.9
        movl      216(%rsp), %r13d                              #84.9[spill]
        shll      $19, %edx                                     #83.9
        addl      %r14d, %r13d                                  #84.9
        shrl      $13, %r10d                                    #83.9
        xorl      %r13d, %eax                                   #84.9
        orl       %r10d, %edx                                   #83.9
        movl      %ebx, 72(%rsp)                                #82.9[spill]
        addl      %edx, %r8d                                    #83.9
        movl      296(%rsp), %ebx                               #84.9[spill]
        xorl      %r8d, %r12d                                   #83.9
        addl      %eax, %ebx                                    #84.9
        movl      %ebx, %r15d                                   #84.9
        shll      $19, %r15d                                    #84.9
        shrl      $13, %ebx                                     #84.9
        lea       (%r12,%rsi), %r10d                            #83.9
        orl       %ebx, %r15d                                   #84.9
        addl      %r12d, %esi                                   #83.9
        addl      %r15d, %ecx                                   #84.9
        xorl      %ecx, %r14d                                   #84.9
        shll      $11, %r10d                                    #83.9
        shrl      $21, %esi                                     #83.9
        orl       %esi, %r10d                                   #83.9
        addl      %r10d, %edi                                   #83.9
        lea       (%r14,%r13), %ebx                             #84.9
        xorl      %edi, %edx                                    #83.9
        addl      %r14d, %r13d                                  #84.9
        shll      $11, %ebx                                     #84.9
        shrl      $21, %r13d                                    #84.9
        orl       %r13d, %ebx                                   #84.9
        addl      %ebx, %eax                                    #84.9
        movl      %r10d, 448(%rsp)                              #83.9[spill]
        lea       (%rdx,%r8), %r10d                             #83.9
        addl      %edx, %r8d                                    #83.9
        xorl      %eax, %r15d                                   #84.9
        shll      $7, %r10d                                     #83.9
        shrl      $25, %r8d                                     #83.9
        orl       %r8d, %r10d                                   #83.9
        movl      200(%rsp), %r8d                               #85.9[spill]
        addl      %r10d, %r8d                                   #85.9
        movl      %ebx, 464(%rsp)                               #84.9[spill]
        xorl      %r8d, %r11d                                   #85.9
        movl      %edi, 80(%rsp)                                #83.9[spill]
        lea       (%r15,%rcx), %ebx                             #84.9
        addl      %r15d, %ecx                                   #84.9
        movl      312(%rsp), %edi                               #85.9[spill]
        shll      $7, %ebx                                      #84.9
        addl      %r11d, %edi                                   #85.9
        shrl      $25, %ecx                                     #84.9
        orl       %ecx, %ebx                                    #84.9
        movl      %edi, %ecx                                    #85.9
        shll      $19, %ecx                                     #85.9
        shrl      $13, %edi                                     #85.9
        orl       %edi, %ecx                                    #85.9
        movl      408(%rsp), %edi                               #85.9[spill]
        addl      %ecx, %edi                                    #85.9
        xorl      %edi, %r10d                                   #85.9
        movl      %eax, 88(%rsp)                                #84.9[spill]
        movl      184(%rsp), %r13d                              #86.9[spill]
        addl      %ebx, %r13d                                   #86.9
        movl      %r15d, 472(%rsp)                              #84.9[spill]
        lea       (%r10,%r8), %eax                              #85.9
        addl      %r10d, %r8d                                   #85.9
        xorl      %r13d, %r9d                                   #86.9
        shll      $11, %eax                                     #85.9
        shrl      $21, %r8d                                     #85.9
        orl       %r8d, %eax                                    #85.9
        addl      %eax, %r11d                                   #85.9
        xorl      %r11d, %ecx                                   #85.9
        movl      %r14d, 456(%rsp)                              #84.9[spill]
        movl      336(%rsp), %r14d                              #86.9[spill]
        addl      %r9d, %r14d                                   #86.9
        movl      120(%rsp), %esi                               #87.9[spill]
        lea       (%rcx,%rdi), %r15d                            #85.9
        addl      %ecx, %edi                                    #85.9
        shll      $7, %r15d                                     #85.9
        shrl      $25, %edi                                     #85.9
        orl       %edi, %r15d                                   #85.9
        movl      %r14d, %edi                                   #86.9
        shll      $19, %edi                                     #86.9
        addl      %r15d, %esi                                   #87.9
        shrl      $13, %r14d                                    #86.9
        orl       %r14d, %edi                                   #86.9
        movl      416(%rsp), %r14d                              #86.9[spill]
        movl      %eax, 488(%rsp)                               #85.9[spill]
        addl      %edi, %r14d                                   #86.9
        movl      104(%rsp), %eax                               #87.9[spill]
        xorl      %r14d, %ebx                                   #86.9
        xorl      %esi, %eax                                    #87.9
        movl      %ecx, 496(%rsp)                               #85.9[spill]
        movl      392(%rsp), %ecx                               #87.9[spill]
        addl      %eax, %ecx                                    #87.9
        lea       (%rbx,%r13), %r8d                             #86.9
        movl      %r10d, 480(%rsp)                              #85.9[spill]
        movl      %ecx, %r10d                                   #87.9
        shll      $19, %r10d                                    #87.9
        addl      %ebx, %r13d                                   #86.9
        shrl      $13, %ecx                                     #87.9
        orl       %ecx, %r10d                                   #87.9
        movl      376(%rsp), %ecx                               #87.9[spill]
        shll      $11, %r8d                                     #86.9
        addl      %r10d, %ecx                                   #87.9
        shrl      $21, %r13d                                    #86.9
        xorl      %ecx, %r15d                                   #87.9
        orl       %r13d, %r8d                                   #86.9
        addl      %r8d, %r9d                                    #86.9
        xorl      %r9d, %edi                                    #86.9
        movl      %ebx, 504(%rsp)                               #86.9[spill]
        lea       (%r15,%rsi), %ebx                             #87.9
        addl      %r15d, %esi                                   #87.9
        shll      $11, %ebx                                     #87.9
        shrl      $21, %esi                                     #87.9
        movl      %r8d, 512(%rsp)                               #86.9[spill]
        lea       (%rdi,%r14), %r8d                             #86.9
        addl      %edi, %r14d                                   #86.9
        orl       %esi, %ebx                                    #87.9
        shll      $7, %r8d                                      #86.9
        addl      %ebx, %eax                                    #87.9
        shrl      $25, %r14d                                    #86.9
        xorl      %eax, %r10d                                   #87.9
        orl       %r14d, %r8d                                   #86.9
        addl      %r10d, %ecx                                   #87.9
        movl      136(%rsp), %r14d                              #88.9[spill]
        movl      %ecx, %esi                                    #87.9
        addl      %r8d, %r14d                                   #88.9
        movl      %edi, 520(%rsp)                               #86.9[spill]
        movl      56(%rsp), %edi                                #88.9[spill]
        xorl      %r14d, %edi                                   #88.9
        movl      400(%rsp), %r13d                              #88.9[spill]
        shll      $7, %esi                                      #87.9
        addl      %edi, %r13d                                   #88.9
        shrl      $25, %ecx                                     #87.9
        orl       %ecx, %esi                                    #87.9
        movl      %r13d, %ecx                                   #88.9
        shll      $19, %ecx                                     #88.9
        addl      %esi, %ebx                                    #89.9
        shrl      $13, %r13d                                    #88.9
        xorl      %ebx, %r11d                                   #89.9
        orl       %r13d, %ecx                                   #88.9
        movl      424(%rsp), %r13d                              #88.9[spill]
        addl      %ecx, %r13d                                   #88.9
        xorl      %r13d, %r8d                                   #88.9
        movl      %r15d, 528(%rsp)                              #87.9[spill]
        lea       (%r8,%r14), %r15d                             #88.9
        addl      %r8d, %r14d                                   #88.9
        shll      $11, %r15d                                    #88.9
        shrl      $21, %r14d                                    #88.9
        orl       %r14d, %r15d                                  #88.9
        addl      %r15d, %edi                                   #88.9
        xorl      %edi, %ecx                                    #88.9
        addl      %ecx, %r13d                                   #88.9
        movl      %r13d, %r14d                                  #88.9
        shll      $7, %r14d                                     #88.9
        shrl      $25, %r13d                                    #88.9
        orl       %r13d, %r14d                                  #88.9
        lea       (%r11,%rdx), %r13d                            #89.9
        addl      %r11d, %edx                                   #89.9
        addl      %r14d, %r15d                                  #90.9
        shll      $19, %r13d                                    #89.9
        xorl      %r15d, %r9d                                   #90.9
        shrl      $13, %edx                                     #89.9
        orl       %edx, %r13d                                   #89.9
        addl      %r13d, %r12d                                  #89.9
        xorl      %r12d, %esi                                   #89.9
        addl      %esi, %ebx                                    #89.9
        movl      %ebx, %edx                                    #89.9
        shll      $11, %edx                                     #89.9
        shrl      $21, %ebx                                     #89.9
        orl       %ebx, %edx                                    #89.9
        addl      %edx, %r11d                                   #89.9
        xorl      %r11d, %r13d                                  #89.9
        movl      %edx, 112(%rsp)                               #89.9[spill]
        movl      %r13d, 536(%rsp)                              #89.9[spill]
        movl      %r11d, 96(%rsp)                               #89.9[spill]
        movl      168(%rsp), %r11d                              #91.9[spill]
        lea       (%r12,%r13), %ebx                             #89.9
        addl      %r13d, %r12d                                  #89.9
        shll      $7, %ebx                                      #89.9
        shrl      $25, %r12d                                    #89.9
        orl       %r12d, %ebx                                   #89.9
        movl      472(%rsp), %r12d                              #90.9[spill]
        addl      %ebx, %r11d                                   #91.9
        movl      456(%rsp), %r13d                              #90.9[spill]
        xorl      %r11d, %eax                                   #91.9
        lea       (%r9,%r12), %edx                              #90.9
        addl      %r9d, %r12d                                   #90.9
        shll      $19, %edx                                     #90.9
        shrl      $13, %r12d                                    #90.9
        orl       %r12d, %edx                                   #90.9
        addl      %edx, %r13d                                   #90.9
        xorl      %r13d, %r14d                                  #90.9
        addl      %r14d, %r15d                                  #90.9
        movl      %r14d, 544(%rsp)                              #90.9[spill]
        movl      %r15d, %r14d                                  #90.9
        shll      $11, %r14d                                    #90.9
        shrl      $21, %r15d                                    #90.9
        orl       %r15d, %r14d                                  #90.9
        addl      %r14d, %r9d                                   #90.9
        xorl      %r9d, %edx                                    #90.9
        movl      %r9d, 48(%rsp)                                #90.9[spill]
        movl      496(%rsp), %r9d                               #91.9[spill]
        movl      %r14d, 128(%rsp)                              #90.9[spill]
        movl      %edx, 552(%rsp)                               #90.9[spill]
        lea       (%r13,%rdx), %r14d                            #90.9
        addl      %edx, %r13d                                   #90.9
        lea       (%rax,%r9), %edx                              #91.9
        addl      %eax, %r9d                                    #91.9
        shll      $19, %edx                                     #91.9
        shrl      $13, %r9d                                     #91.9
        shll      $7, %r14d                                     #90.9
        orl       %r9d, %edx                                    #91.9
        shrl      $25, %r13d                                    #90.9
        orl       %r13d, %r14d                                  #90.9
        movl      480(%rsp), %r13d                              #91.9[spill]
        addl      %edx, %r13d                                   #91.9
        xorl      %r13d, %ebx                                   #91.9
        movl      432(%rsp), %r15d                              #92.9[spill]
        addl      %r14d, %r15d                                  #92.9
        xorl      %r15d, %edi                                   #92.9
        movl      %ebx, 560(%rsp)                               #91.9[spill]
        lea       (%r11,%rbx), %r9d                             #91.9
        addl      %ebx, %r11d                                   #91.9
        shll      $11, %r9d                                     #91.9
        shrl      $21, %r11d                                    #91.9
        orl       %r11d, %r9d                                   #91.9
        movl      520(%rsp), %r11d                              #92.9[spill]
        addl      %r9d, %eax                                    #91.9
        movl      %eax, 104(%rsp)                               #91.9[spill]
        xorl      %eax, %edx                                    #91.9
        movl      504(%rsp), %eax                               #92.9[spill]
        movl      %edx, 240(%rsp)                               #91.9[spill]
        lea       (%rdi,%r11), %ebx                             #92.9
        addl      %edi, %r11d                                   #92.9
        shll      $19, %ebx                                     #92.9
        lea       (%r13,%rdx), %r12d                            #91.9
        shrl      $13, %r11d                                    #92.9
        addl      %edx, %r13d                                   #91.9
        orl       %r11d, %ebx                                   #92.9
        addl      %ebx, %eax                                    #92.9
        xorl      %eax, %r14d                                   #92.9
        shll      $7, %r12d                                     #91.9
        shrl      $25, %r13d                                    #91.9
        orl       %r13d, %r12d                                  #91.9
        movl      448(%rsp), %r13d                              #93.9[spill]
        lea       (%r15,%r14), %r11d                            #92.9
        addl      %r14d, %r15d                                  #92.9
        addl      %r12d, %r13d                                  #93.9
        shll      $11, %r11d                                    #92.9
        shrl      $21, %r15d                                    #92.9
        orl       %r15d, %r11d                                  #92.9
        addl      %r11d, %edi                                   #92.9
        xorl      %edi, %ebx                                    #92.9
        movl      64(%rsp), %edx                                #93.9[spill]
        xorl      %r13d, %edx                                   #93.9
        movl      %r14d, 568(%rsp)                              #92.9[spill]
        movl      %edi, 56(%rsp)                                #92.9[spill]
        lea       (%rax,%rbx), %r14d                            #92.9
        addl      %ebx, %eax                                    #92.9
        shll      $7, %r14d                                     #92.9
        shrl      $25, %eax                                     #92.9
        orl       %eax, %r14d                                   #92.9
        lea       (%rdx,%r10), %eax                             #93.9
        addl      %edx, %r10d                                   #93.9
        shll      $19, %eax                                     #93.9
        shrl      $13, %r10d                                    #93.9
        orl       %r10d, %eax                                   #93.9
        movl      528(%rsp), %edi                               #93.9[spill]
        addl      %eax, %edi                                    #93.9
        xorl      %edi, %r12d                                   #93.9
        movl      464(%rsp), %r15d                              #94.9[spill]
        addl      %r14d, %r15d                                  #94.9
        movl      %ebx, 360(%rsp)                               #92.9[spill]
        movl      72(%rsp), %ebx                                #94.9[spill]
        lea       (%r13,%r12), %r10d                            #93.9
        addl      %r12d, %r13d                                  #93.9
        xorl      %r15d, %ebx                                   #94.9
        shll      $11, %r10d                                    #93.9
        shrl      $21, %r13d                                    #93.9
        orl       %r13d, %r10d                                  #93.9
        addl      %r10d, %edx                                   #93.9
        xorl      %edx, %eax                                    #93.9
        movl      %eax, 368(%rsp)                               #93.9[spill]
        movl      %r12d, 576(%rsp)                              #93.9[spill]
        movl      488(%rsp), %r12d                              #95.9[spill]
        lea       (%rdi,%rax), %r13d                            #93.9
        addl      %eax, %edi                                    #93.9
        shll      $7, %r13d                                     #93.9
        lea       (%rbx,%rcx), %eax                             #94.9
        addl      %ebx, %ecx                                    #94.9
        shll      $19, %eax                                     #94.9
        shrl      $13, %ecx                                     #94.9
        orl       %ecx, %eax                                    #94.9
        addl      %eax, %r8d                                    #94.9
        shrl      $25, %edi                                     #93.9
        xorl      %r8d, %r14d                                   #94.9
        orl       %edi, %r13d                                   #93.9
        addl      %r13d, %r12d                                  #95.9
        movl      80(%rsp), %edi                                #95.9[spill]
        xorl      %r12d, %edi                                   #95.9
        lea       (%r15,%r14), %ecx                             #94.9
        movl      %r14d, 584(%rsp)                              #94.9[spill]
        addl      %r14d, %r15d                                  #94.9
        movl      152(%rsp), %r14d                              #95.9[spill]
        shll      $11, %ecx                                     #94.9
        shrl      $21, %r15d                                    #94.9
        orl       %r15d, %ecx                                   #94.9
        lea       (%r14,%rdi), %r15d                            #95.9
        addl      %edi, %r14d                                   #95.9
        addl      %ecx, %ebx                                    #94.9
        shll      $19, %r15d                                    #95.9
        xorl      %ebx, %eax                                    #94.9
        shrl      $13, %r14d                                    #95.9
        orl       %r14d, %r15d                                  #95.9
        addl      %r15d, %esi                                   #95.9
        xorl      %esi, %r13d                                   #95.9
        movl      %ecx, 592(%rsp)                               #94.9[spill]
        lea       (%r8,%rax), %ecx                              #94.9
        addl      %eax, %r8d                                    #94.9
        shll      $7, %ecx                                      #94.9
        shrl      $25, %r8d                                     #94.9
        lea       (%r12,%r13), %r14d                            #95.9
        addl      %r13d, %r12d                                  #95.9
        orl       %r8d, %ecx                                    #94.9
        shll      $11, %r14d                                    #95.9
        shrl      $21, %r12d                                    #95.9
        orl       %r12d, %r14d                                  #95.9
        addl      %r14d, %edi                                   #95.9
        xorl      %edi, %r15d                                   #95.9
        movl      512(%rsp), %r8d                               #96.9[spill]
        movl      %r14d, 288(%rsp)                              #95.9[spill]
        addl      %ecx, %r8d                                    #96.9
        movl      %eax, 384(%rsp)                               #94.9[spill]
        movl      88(%rsp), %eax                                #96.9[spill]
        lea       (%rsi,%r15), %r14d                            #95.9
        addl      %r15d, %esi                                   #95.9
        xorl      %r8d, %eax                                    #96.9
        shll      $7, %r14d                                     #95.9
        shrl      $25, %esi                                     #95.9
        orl       %esi, %r14d                                   #95.9
        movl      440(%rsp), %esi                               #96.9[spill]
        addl      %r14d, %r9d                                   #81.9
        movl      %r13d, 600(%rsp)                              #95.9[spill]
        xorl      %r9d, %edx                                    #81.9
        addl      %edx, %r15d                                   #81.9
        lea       (%rax,%rsi), %r13d                            #96.9
        addl      %eax, %esi                                    #96.9
        shll      $19, %r13d                                    #96.9
        shrl      $13, %esi                                     #96.9
        orl       %esi, %r13d                                   #96.9
        movl      544(%rsp), %esi                               #96.9[spill]
        addl      %r13d, %esi                                   #96.9
        xorl      %esi, %ecx                                    #96.9
        lea       (%r8,%rcx), %r12d                             #96.9
        addl      %ecx, %r8d                                    #96.9
        shll      $11, %r12d                                    #96.9
        shrl      $21, %r8d                                     #96.9
        orl       %r8d, %r12d                                   #96.9
        addl      %r12d, %eax                                   #96.9
        xorl      %eax, %r13d                                   #96.9
        movl      %r12d, 280(%rsp)                              #96.9[spill]
        movl      560(%rsp), %r8d                               #81.9[spill]
        lea       (%rsi,%r13), %r12d                            #96.9
        addl      %r13d, %esi                                   #96.9
        shll      $7, %r12d                                     #96.9
        shrl      $25, %esi                                     #96.9
        orl       %esi, %r12d                                   #96.9
        movl      %r15d, %esi                                   #81.9
        shll      $19, %esi                                     #81.9
        addl      %r12d, %r11d                                  #82.9
        shrl      $13, %r15d                                    #81.9
        xorl      %r11d, %ebx                                   #82.9
        orl       %r15d, %esi                                   #81.9
        addl      %ebx, %r13d                                   #82.9
        addl      %esi, %r8d                                    #81.9
        xorl      %r8d, %r14d                                   #81.9
        addl      %r14d, %r9d                                   #81.9
        movl      %r9d, %r15d                                   #81.9
        shll      $11, %r15d                                    #81.9
        shrl      $21, %r9d                                     #81.9
        orl       %r9d, %r15d                                   #81.9
        addl      %r15d, %edx                                   #81.9
        movl      %r14d, 352(%rsp)                              #81.9[spill]
        movl      %r13d, %r14d                                  #82.9
        xorl      %edx, %esi                                    #81.9
        shll      $19, %r14d                                    #82.9
        shrl      $13, %r13d                                    #82.9
        orl       %r13d, %r14d                                  #82.9
        movl      568(%rsp), %r13d                              #82.9[spill]
        addl      %r14d, %r13d                                  #82.9
        movl      %r15d, 176(%rsp)                              #81.9[spill]
        lea       (%rsi,%r8), %r15d                             #81.9
        addl      %esi, %r8d                                    #81.9
        xorl      %r13d, %r12d                                  #82.9
        shll      $7, %r15d                                     #81.9
        addl      %r12d, %r11d                                  #82.9
        shrl      $25, %r8d                                     #81.9
        orl       %r8d, %r15d                                   #81.9
        movl      %r11d, %r8d                                   #82.9
        shll      $11, %r8d                                     #82.9
        addl      %r15d, %r10d                                  #83.9
        shrl      $21, %r11d                                    #82.9
        xorl      %r10d, %edi                                   #83.9
        orl       %r11d, %r8d                                   #82.9
        addl      %r8d, %ebx                                    #82.9
        movl      536(%rsp), %r9d                               #83.9[spill]
        xorl      %ebx, %r14d                                   #82.9
        addl      %edi, %r9d                                    #83.9
        movl      %r12d, 320(%rsp)                              #82.9[spill]
        movl      %r9d, %r12d                                   #83.9
        shll      $19, %r12d                                    #83.9
        shrl      $13, %r9d                                     #83.9
        orl       %r9d, %r12d                                   #83.9
        movl      %r14d, 160(%rsp)                              #82.9[spill]
        movl      %r8d, 192(%rsp)                               #82.9[spill]
        lea       (%r14,%r13), %r8d                             #82.9
        addl      %r14d, %r13d                                  #82.9
        movl      576(%rsp), %r14d                              #83.9[spill]
        addl      %r12d, %r14d                                  #83.9
        xorl      %r14d, %r15d                                  #83.9
        shll      $7, %r8d                                      #82.9
        shrl      $25, %r13d                                    #82.9
        orl       %r13d, %r8d                                   #82.9
        movl      %esi, 144(%rsp)                               #81.9[spill]
        lea       (%r15,%r10), %r9d                             #83.9
        movl      592(%rsp), %esi                               #84.9[spill]
        addl      %r15d, %r10d                                  #83.9
        addl      %r8d, %esi                                    #84.9
        shll      $11, %r9d                                     #83.9
        xorl      %esi, %eax                                    #84.9
        shrl      $21, %r10d                                    #83.9
        movl      552(%rsp), %r11d                              #84.9[spill]
        orl       %r10d, %r9d                                   #83.9
        addl      %eax, %r11d                                   #84.9
        addl      %r9d, %edi                                    #83.9
        movl      %r9d, 208(%rsp)                               #83.9[spill]
        movl      %r11d, %r9d                                   #84.9
        shll      $19, %r9d                                     #84.9
        xorl      %edi, %r12d                                   #83.9
        shrl      $13, %r11d                                    #84.9
        orl       %r11d, %r9d                                   #84.9
        movl      %r15d, 344(%rsp)                              #83.9[spill]
        movl      584(%rsp), %r15d                              #84.9[spill]
        lea       (%r12,%r14), %r13d                            #83.9
        addl      %r9d, %r15d                                   #84.9
        addl      %r12d, %r14d                                  #83.9
        xorl      %r15d, %r8d                                   #84.9
        movl      %r12d, 256(%rsp)                              #83.9[spill]
        shll      $7, %r13d                                     #83.9
        shrl      $25, %r14d                                    #83.9
        movl      96(%rsp), %r11d                               #84.9[spill]
        lea       (%r8,%rsi), %r10d                             #84.9
        addl      %r8d, %esi                                    #84.9
        orl       %r14d, %r13d                                  #83.9
        shll      $11, %r10d                                    #84.9
        shrl      $21, %esi                                     #84.9
        orl       %esi, %r10d                                   #84.9
        addl      %r10d, %eax                                   #84.9
        xorl      %eax, %r9d                                    #84.9
        movl      %r10d, 224(%rsp)                              #84.9[spill]
        movl      %r9d, 304(%rsp)                               #84.9[spill]
        movl      104(%rsp), %r10d                              #84.9[spill]
        movl      56(%rsp), %esi                                #84.9[spill]
        lea       (%r9,%r15), %r12d                             #84.9
        addl      %r9d, %r15d                                   #84.9
        movl      48(%rsp), %r9d                                #84.9[spill]
        movl      600(%rsp), %r14d                              #84.9[spill]
        shll      $7, %r12d                                     #84.9
        shrl      $25, %r15d                                    #84.9
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r13d r14d r15d ymm0
..B4.13:                        # Preds ..B4.14
                                # Execution count [1.00e+00]
        orl       %r15d, %r12d                                  #84.9
        movl      288(%rsp), %r15d                              #85.9[spill]
        addl      %r13d, %r15d                                  #85.9
        xorl      %r15d, %r11d                                  #85.9
        movl      %ebx, 72(%rsp)                                #[spill]
        movl      240(%rsp), %ebx                               #85.9[spill]
        addl      %r11d, %ebx                                   #85.9
        movl      %edx, 64(%rsp)                                #[spill]
        movl      %ebx, %edx                                    #85.9
        shll      $19, %edx                                     #85.9
        shrl      $13, %ebx                                     #85.9
        orl       %ebx, %edx                                    #85.9
        addl      %edx, %r14d                                   #85.9
        xorl      %r14d, %r13d                                  #85.9
        movl      %eax, 88(%rsp)                                #[spill]
        movl      280(%rsp), %eax                               #86.9[spill]
        addl      %r12d, %eax                                   #86.9
        xorl      %eax, %r9d                                    #86.9
        lea       (%r13,%r15), %ebx                             #85.9
        addl      %r13d, %r15d                                  #85.9
        shll      $11, %ebx                                     #85.9
        shrl      $21, %r15d                                    #85.9
        movl      %edi, 80(%rsp)                                #[spill]
        orl       %r15d, %ebx                                   #85.9
        movl      360(%rsp), %edi                               #86.9[spill]
        addl      %ebx, %r11d                                   #85.9
        addl      %r9d, %edi                                    #86.9
        xorl      %r11d, %edx                                   #85.9
        movl      %ebx, 408(%rsp)                               #85.9[spill]
        movl      %edi, %ebx                                    #86.9
        shll      $19, %ebx                                     #86.9
        shrl      $13, %edi                                     #86.9
        orl       %edi, %ebx                                    #86.9
        addl      %ebx, %ecx                                    #86.9
        xorl      %ecx, %r12d                                   #86.9
        movl      %r13d, 400(%rsp)                              #85.9[spill]
        lea       (%rdx,%r14), %r13d                            #85.9
        addl      %edx, %r14d                                   #85.9
        shll      $7, %r13d                                     #85.9
        shrl      $25, %r14d                                    #85.9
        lea       (%r12,%rax), %edi                             #86.9
        addl      %r12d, %eax                                   #86.9
        orl       %r14d, %r13d                                  #85.9
        shll      $11, %edi                                     #86.9
        shrl      $21, %eax                                     #86.9
        movl      112(%rsp), %r14d                              #87.9[spill]
        orl       %eax, %edi                                    #86.9
        addl      %r13d, %r14d                                  #87.9
        addl      %edi, %r9d                                    #86.9
        xorl      %r14d, %r10d                                  #87.9
        xorl      %r9d, %ebx                                    #86.9
        movl      368(%rsp), %r15d                              #87.9[spill]
        addl      %r10d, %r15d                                  #87.9
        movl      %edi, 440(%rsp)                               #86.9[spill]
        movl      %r15d, %edi                                   #87.9
        shll      $19, %edi                                     #87.9
        shrl      $13, %r15d                                    #87.9
        orl       %r15d, %edi                                   #87.9
        movl      %ebx, 448(%rsp)                               #86.9[spill]
        movl      %r13d, 424(%rsp)                              #85.9[spill]
        lea       (%rbx,%rcx), %r13d                            #86.9
        addl      %ebx, %ecx                                    #86.9
        movl      352(%rsp), %ebx                               #87.9[spill]
        addl      %edi, %ebx                                    #87.9
        movl      424(%rsp), %r15d                              #87.9[spill]
        xorl      %ebx, %r15d                                   #87.9
        shll      $7, %r13d                                     #86.9
        shrl      $25, %ecx                                     #86.9
        orl       %ecx, %r13d                                   #86.9
        movl      %r12d, 432(%rsp)                              #86.9[spill]
        lea       (%r15,%r14), %eax                             #87.9
        movl      128(%rsp), %r12d                              #88.9[spill]
        addl      %r15d, %r14d                                  #87.9
        addl      %r13d, %r12d                                  #88.9
        xorl      %r12d, %esi                                   #88.9
        movl      384(%rsp), %ecx                               #88.9[spill]
        shll      $11, %eax                                     #87.9
        addl      %esi, %ecx                                    #88.9
        shrl      $21, %r14d                                    #87.9
        orl       %r14d, %eax                                   #87.9
        movl      %ecx, %r14d                                   #88.9
        shll      $19, %r14d                                    #88.9
        addl      %eax, %r10d                                   #87.9
        shrl      $13, %ecx                                     #88.9
        xorl      %r10d, %edi                                   #87.9
        orl       %ecx, %r14d                                   #88.9
        addl      %edi, %ebx                                    #87.9
        movl      320(%rsp), %ecx                               #88.9[spill]
        addl      %r14d, %ecx                                   #88.9
        xorl      %ecx, %r13d                                   #88.9
        movl      %r15d, 424(%rsp)                              #87.9[spill]
        movl      %ebx, %r15d                                   #87.9
        shll      $7, %r15d                                     #87.9
        shrl      $25, %ebx                                     #87.9
        orl       %ebx, %r15d                                   #87.9
        lea       (%r13,%r12), %ebx                             #88.9
        addl      %r13d, %r12d                                  #88.9
        addl      %r15d, %eax                                   #89.9
        shll      $11, %ebx                                     #88.9
        xorl      %eax, %r11d                                   #89.9
        shrl      $21, %r12d                                    #88.9
        orl       %r12d, %ebx                                   #88.9
        addl      %ebx, %esi                                    #88.9
        xorl      %esi, %r14d                                   #88.9
        addl      %r14d, %ecx                                   #88.9
        movl      %ecx, %r12d                                   #88.9
        shll      $7, %r12d                                     #88.9
        shrl      $25, %ecx                                     #88.9
        orl       %ecx, %r12d                                   #88.9
        movl      256(%rsp), %ecx                               #89.9[spill]
        addl      %r12d, %ebx                                   #90.9
        movl      %r13d, 456(%rsp)                              #88.9[spill]
        xorl      %ebx, %r9d                                    #90.9
        lea       (%rcx,%r11), %r13d                            #89.9
        addl      %r11d, %ecx                                   #89.9
        shll      $19, %r13d                                    #89.9
        shrl      $13, %ecx                                     #89.9
        orl       %ecx, %r13d                                   #89.9
        movl      344(%rsp), %ecx                               #89.9[spill]
        addl      %r13d, %ecx                                   #89.9
        xorl      %ecx, %r15d                                   #89.9
        addl      %r15d, %eax                                   #89.9
        movl      %r15d, 464(%rsp)                              #89.9[spill]
        movl      %eax, %r15d                                   #89.9
        shll      $11, %r15d                                    #89.9
        shrl      $21, %eax                                     #89.9
        orl       %eax, %r15d                                   #89.9
        addl      %r15d, %r11d                                  #89.9
        xorl      %r11d, %r13d                                  #89.9
        movl      %r13d, 480(%rsp)                              #89.9[spill]
        movl      %r11d, 96(%rsp)                               #89.9[spill]
        movl      %r15d, 472(%rsp)                              #89.9[spill]
        lea       (%rcx,%r13), %r11d                            #89.9
        addl      %r13d, %ecx                                   #89.9
        movl      304(%rsp), %r13d                              #90.9[spill]
        shll      $7, %r11d                                     #89.9
        shrl      $25, %ecx                                     #89.9
        orl       %ecx, %r11d                                   #89.9
        lea       (%r13,%r9), %eax                              #90.9
        addl      %r9d, %r13d                                   #90.9
        shll      $19, %eax                                     #90.9
        shrl      $13, %r13d                                    #90.9
        orl       %r13d, %eax                                   #90.9
        addl      %eax, %r8d                                    #90.9
        xorl      %r8d, %r12d                                   #90.9
        addl      %r12d, %ebx                                   #90.9
        movl      %ebx, %r15d                                   #90.9
        shll      $11, %r15d                                    #90.9
        shrl      $21, %ebx                                     #90.9
        orl       %ebx, %r15d                                   #90.9
        movl      176(%rsp), %ecx                               #91.9[spill]
        addl      %r15d, %r9d                                   #90.9
        addl      %r11d, %ecx                                   #91.9
        xorl      %r9d, %eax                                    #90.9
        xorl      %ecx, %r10d                                   #91.9
        movl      %eax, 488(%rsp)                               #90.9[spill]
        movl      %r9d, 48(%rsp)                                #90.9[spill]
        movl      448(%rsp), %ebx                               #92.9[spill]
        lea       (%r8,%rax), %r13d                             #90.9
        addl      %eax, %r8d                                    #90.9
        lea       (%r10,%rdx), %eax                             #91.9
        addl      %r10d, %edx                                   #91.9
        shll      $19, %eax                                     #91.9
        shrl      $13, %edx                                     #91.9
        orl       %edx, %eax                                    #91.9
        movl      400(%rsp), %edx                               #91.9[spill]
        addl      %eax, %edx                                    #91.9
        xorl      %edx, %r11d                                   #91.9
        shll      $7, %r13d                                     #90.9
        shrl      $25, %r8d                                     #90.9
        orl       %r8d, %r13d                                   #90.9
        movl      192(%rsp), %r8d                               #92.9[spill]
        lea       (%rcx,%r11), %r9d                             #91.9
        addl      %r11d, %ecx                                   #91.9
        addl      %r13d, %r8d                                   #92.9
        shll      $11, %r9d                                     #91.9
        xorl      %r8d, %esi                                    #92.9
        shrl      $21, %ecx                                     #91.9
        orl       %ecx, %r9d                                    #91.9
        addl      %r9d, %r10d                                   #91.9
        xorl      %r10d, %eax                                   #91.9
        movl      %r15d, 120(%rsp)                              #90.9[spill]
        lea       (%rsi,%rbx), %r15d                            #92.9
        addl      %esi, %ebx                                    #92.9
        shll      $19, %r15d                                    #92.9
        shrl      $13, %ebx                                     #92.9
        orl       %ebx, %r15d                                   #92.9
        movl      %eax, 504(%rsp)                               #91.9[spill]
        movl      %r10d, 104(%rsp)                              #91.9[spill]
        lea       (%rdx,%rax), %r10d                            #91.9
        addl      %eax, %edx                                    #91.9
        movl      432(%rsp), %eax                               #92.9[spill]
        addl      %r15d, %eax                                   #92.9
        xorl      %eax, %r13d                                   #92.9
        shll      $7, %r10d                                     #91.9
        shrl      $25, %edx                                     #91.9
        orl       %edx, %r10d                                   #91.9
        movl      %r11d, 496(%rsp)                              #91.9[spill]
        lea       (%r8,%r13), %ecx                              #92.9
        addl      %r13d, %r8d                                   #92.9
        movl      208(%rsp), %r11d                              #93.9[spill]
        shll      $11, %ecx                                     #92.9
        addl      %r10d, %r11d                                  #93.9
        shrl      $21, %r8d                                     #92.9
        movl      64(%rsp), %edx                                #93.9[spill]
        orl       %r8d, %ecx                                    #92.9
        xorl      %r11d, %edx                                   #93.9
        addl      %ecx, %esi                                    #92.9
        xorl      %esi, %r15d                                   #92.9
        movl      %r13d, 512(%rsp)                              #92.9[spill]
        movl      224(%rsp), %r8d                               #94.9[spill]
        movl      %r15d, 520(%rsp)                              #92.9[spill]
        lea       (%rdx,%rdi), %r13d                            #93.9
        addl      %edx, %edi                                    #93.9
        lea       (%rax,%r15), %ebx                             #92.9
        shll      $19, %r13d                                    #93.9
        addl      %r15d, %eax                                   #92.9
        shrl      $13, %edi                                     #93.9
        orl       %edi, %r13d                                   #93.9
        movl      424(%rsp), %edi                               #93.9[spill]
        shll      $7, %ebx                                      #92.9
        addl      %r13d, %edi                                   #93.9
        shrl      $25, %eax                                     #92.9
        xorl      %edi, %r10d                                   #93.9
        orl       %eax, %ebx                                    #92.9
        addl      %ebx, %r8d                                    #94.9
        movl      72(%rsp), %r15d                               #94.9[spill]
        xorl      %r8d, %r15d                                   #94.9
        movl      %esi, 56(%rsp)                                #92.9[spill]
        lea       (%r11,%r10), %esi                             #93.9
        addl      %r10d, %r11d                                  #93.9
        shll      $11, %esi                                     #93.9
        shrl      $21, %r11d                                    #93.9
        orl       %r11d, %esi                                   #93.9
        lea       (%r15,%r14), %r11d                            #94.9
        addl      %r15d, %r14d                                  #94.9
        addl      %esi, %edx                                    #93.9
        shll      $19, %r11d                                    #94.9
        xorl      %edx, %r13d                                   #93.9
        shrl      $13, %r14d                                    #94.9
        orl       %r14d, %r11d                                  #94.9
        movl      %r10d, 528(%rsp)                              #93.9[spill]
        movl      456(%rsp), %r10d                              #94.9[spill]
        addl      %r11d, %r10d                                  #94.9
        xorl      %r10d, %ebx                                   #94.9
        movl      %esi, 536(%rsp)                               #93.9[spill]
        lea       (%rdi,%r13), %esi                             #93.9
        addl      %r13d, %edi                                   #93.9
        shll      $7, %esi                                      #93.9
        shrl      $25, %edi                                     #93.9
        lea       (%r8,%rbx), %r14d                             #94.9
        addl      %ebx, %r8d                                    #94.9
        orl       %edi, %esi                                    #93.9
        shll      $11, %r14d                                    #94.9
        shrl      $21, %r8d                                     #94.9
        orl       %r8d, %r14d                                   #94.9
        addl      %r14d, %r15d                                  #94.9
        xorl      %r15d, %r11d                                  #94.9
        movl      %r13d, 544(%rsp)                              #93.9[spill]
        movl      408(%rsp), %r13d                              #95.9[spill]
        addl      %esi, %r13d                                   #95.9
        movl      80(%rsp), %edi                                #95.9[spill]
        xorl      %r13d, %edi                                   #95.9
        movl      %r11d, 264(%rsp)                              #94.9[spill]
        movl      %r14d, 560(%rsp)                              #94.9[spill]
        lea       (%r10,%r11), %r14d                            #94.9
        addl      %r11d, %r10d                                  #94.9
        movl      144(%rsp), %r11d                              #95.9[spill]
        shll      $7, %r14d                                     #94.9
        shrl      $25, %r10d                                    #94.9
        orl       %r10d, %r14d                                  #94.9
        lea       (%r11,%rdi), %r10d                            #95.9
        addl      %edi, %r11d                                   #95.9
        shll      $19, %r10d                                    #95.9
        shrl      $13, %r11d                                    #95.9
        orl       %r11d, %r10d                                  #95.9
        movl      %ebx, 552(%rsp)                               #94.9[spill]
        movl      464(%rsp), %ebx                               #95.9[spill]
        addl      %r10d, %ebx                                   #95.9
        xorl      %ebx, %esi                                    #95.9
        movl      440(%rsp), %eax                               #96.9[spill]
        addl      %r14d, %eax                                   #96.9
        movl      88(%rsp), %r8d                                #96.9[spill]
        xorl      %eax, %r8d                                    #96.9
        lea       (%r13,%rsi), %r11d                            #95.9
        addl      %esi, %r13d                                   #95.9
        shll      $11, %r11d                                    #95.9
        shrl      $21, %r13d                                    #95.9
        orl       %r13d, %r11d                                  #95.9
        addl      %r11d, %edi                                   #95.9
        xorl      %edi, %r10d                                   #95.9
        movl      %esi, 568(%rsp)                               #95.9[spill]
        lea       (%rbx,%r10), %r13d                            #95.9
        addl      %r10d, %ebx                                   #95.9
        shll      $7, %r13d                                     #95.9
        shrl      $25, %ebx                                     #95.9
        orl       %ebx, %r13d                                   #95.9
        movl      160(%rsp), %ebx                               #96.9[spill]
        addl      %r13d, %r9d                                   #81.9
        xorl      %r9d, %edx                                    #81.9
        addl      %edx, %r10d                                   #81.9
        lea       (%rbx,%r8), %esi                              #96.9
        addl      %r8d, %ebx                                    #96.9
        shll      $19, %esi                                     #96.9
        shrl      $13, %ebx                                     #96.9
        orl       %ebx, %esi                                    #96.9
        addl      %esi, %r12d                                   #96.9
        xorl      %r12d, %r14d                                  #96.9
        lea       (%rax,%r14), %ebx                             #96.9
        addl      %r14d, %eax                                   #96.9
        shll      $11, %ebx                                     #96.9
        shrl      $21, %eax                                     #96.9
        orl       %eax, %ebx                                    #96.9
        addl      %ebx, %r8d                                    #96.9
        xorl      %r8d, %esi                                    #96.9
        lea       (%r12,%rsi), %eax                             #96.9
        addl      %esi, %r12d                                   #96.9
        shll      $7, %eax                                      #96.9
        shrl      $25, %r12d                                    #96.9
        orl       %r12d, %eax                                   #96.9
        movl      %r10d, %r12d                                  #81.9
        shll      $19, %r12d                                    #81.9
        addl      %eax, %ecx                                    #82.9
        shrl      $13, %r10d                                    #81.9
        xorl      %ecx, %r15d                                   #82.9
        orl       %r10d, %r12d                                  #81.9
        addl      %r15d, %esi                                   #82.9
        movl      496(%rsp), %r10d                              #81.9[spill]
        addl      %r12d, %r10d                                  #81.9
        xorl      %r10d, %r13d                                  #81.9
        addl      %r13d, %r9d                                   #81.9
        movl      %r13d, 576(%rsp)                              #81.9[spill]
        movl      %r9d, %r13d                                   #81.9
        shll      $11, %r13d                                    #81.9
        shrl      $21, %r9d                                     #81.9
        orl       %r9d, %r13d                                   #81.9
        movl      %esi, %r9d                                    #82.9
        addl      %r13d, %edx                                   #81.9
        xorl      %edx, %r12d                                   #81.9
        shll      $19, %r9d                                     #82.9
        shrl      $13, %esi                                     #82.9
        orl       %esi, %r9d                                    #82.9
        movl      %eax, 376(%rsp)                               #96.9[spill]
        lea       (%r12,%r10), %eax                             #81.9
        movl      512(%rsp), %esi                               #82.9[spill]
        addl      %r12d, %r10d                                  #81.9
        addl      %r9d, %esi                                    #82.9
        movl      %r12d, 136(%rsp)                              #81.9[spill]
        movl      376(%rsp), %r12d                              #82.9[spill]
        xorl      %esi, %r12d                                   #82.9
        addl      %r12d, %ecx                                   #82.9
        movl      %r12d, 376(%rsp)                              #82.9[spill]
        movl      %ecx, %r12d                                   #82.9
        shll      $11, %r12d                                    #82.9
        shrl      $21, %ecx                                     #82.9
        orl       %ecx, %r12d                                   #82.9
        addl      %r12d, %r15d                                  #82.9
        xorl      %r15d, %r9d                                   #82.9
        shll      $7, %eax                                      #81.9
        shrl      $25, %r10d                                    #81.9
        orl       %r10d, %eax                                   #81.9
        movl      %r13d, 168(%rsp)                              #81.9[spill]
        movl      536(%rsp), %r13d                              #83.9[spill]
        addl      %eax, %r13d                                   #83.9
        movl      %r12d, 184(%rsp)                              #82.9[spill]
        xorl      %r13d, %edi                                   #83.9
        movl      480(%rsp), %r10d                              #83.9[spill]
        lea       (%r9,%rsi), %r12d                             #82.9
        addl      %r9d, %esi                                    #82.9
        addl      %edi, %r10d                                   #83.9
        shll      $7, %r12d                                     #82.9
        shrl      $25, %esi                                     #82.9
        orl       %esi, %r12d                                   #82.9
        movl      %r10d, %esi                                   #83.9
        shll      $19, %esi                                     #83.9
        shrl      $13, %r10d                                    #83.9
        orl       %r10d, %esi                                   #83.9
        movl      528(%rsp), %r10d                              #83.9[spill]
        addl      %esi, %r10d                                   #83.9
        xorl      %r10d, %eax                                   #83.9
        movl      %r9d, 152(%rsp)                               #82.9[spill]
        movl      560(%rsp), %r9d                               #84.9[spill]
        addl      %r12d, %r9d                                   #84.9
        xorl      %r9d, %r8d                                    #84.9
        lea       (%rax,%r13), %ecx                             #83.9
        addl      %eax, %r13d                                   #83.9
        shll      $11, %ecx                                     #83.9
        shrl      $21, %r13d                                    #83.9
        orl       %r13d, %ecx                                   #83.9
        addl      %ecx, %edi                                    #83.9
        movl      %r15d, 72(%rsp)                               #82.9[spill]
        xorl      %edi, %esi                                    #83.9
        movl      488(%rsp), %r15d                              #84.9[spill]
        addl      %r8d, %r15d                                   #84.9
        movl      %eax, 392(%rsp)                               #83.9[spill]
        movl      %r15d, %eax                                   #84.9
        shll      $19, %eax                                     #84.9
        shrl      $13, %r15d                                    #84.9
        orl       %r15d, %eax                                   #84.9
        movl      %esi, 272(%rsp)                               #83.9[spill]
        movl      %ecx, 200(%rsp)                               #83.9[spill]
        lea       (%rsi,%r10), %ecx                             #83.9
        addl      %esi, %r10d                                   #83.9
        movl      552(%rsp), %esi                               #84.9[spill]
        addl      %eax, %esi                                    #84.9
        xorl      %esi, %r12d                                   #84.9
        shll      $7, %ecx                                      #83.9
        shrl      $25, %r10d                                    #83.9
        orl       %r10d, %ecx                                   #83.9
        addl      %ecx, %r11d                                   #85.9
        lea       (%r12,%r9), %r15d                             #84.9
        addl      %r12d, %r9d                                   #84.9
        shll      $11, %r15d                                    #84.9
        shrl      $21, %r9d                                     #84.9
        orl       %r9d, %r15d                                   #84.9
        addl      %r15d, %r8d                                   #84.9
        xorl      %r8d, %eax                                    #84.9
        movl      96(%rsp), %r13d                               #85.9[spill]
        movl      %r15d, 216(%rsp)                              #84.9[spill]
        xorl      %r11d, %r13d                                  #85.9
        movl      504(%rsp), %r10d                              #85.9[spill]
        addl      %r13d, %r10d                                  #85.9
        lea       (%rax,%rsi), %r15d                            #84.9
        addl      %eax, %esi                                    #84.9
        shll      $7, %r15d                                     #84.9
        shrl      $25, %esi                                     #84.9
        orl       %esi, %r15d                                   #84.9
        movl      %r10d, %esi                                   #85.9
        shll      $19, %esi                                     #85.9
        addl      %r15d, %ebx                                   #86.9
        shrl      $13, %r10d                                    #85.9
        orl       %r10d, %esi                                   #85.9
        movl      568(%rsp), %r10d                              #85.9[spill]
        addl      %esi, %r10d                                   #85.9
        xorl      %r10d, %ecx                                   #85.9
        movl      %eax, 312(%rsp)                               #84.9[spill]
        movl      48(%rsp), %r9d                                #86.9[spill]
        xorl      %ebx, %r9d                                    #86.9
        movl      %r8d, 88(%rsp)                                #84.9[spill]
        lea       (%rcx,%r11), %eax                             #85.9
        addl      %ecx, %r11d                                   #85.9
        shll      $11, %eax                                     #85.9
        shrl      $21, %r11d                                    #85.9
        orl       %r11d, %eax                                   #85.9
        addl      %eax, %r13d                                   #85.9
        xorl      %r13d, %esi                                   #85.9
        movl      520(%rsp), %r8d                               #86.9[spill]
        addl      %r9d, %r8d                                    #86.9
        movl      %r13d, 96(%rsp)                               #85.9[spill]
        movl      %esi, 336(%rsp)                               #85.9[spill]
        lea       (%rsi,%r10), %r13d                            #85.9
        addl      %esi, %r10d                                   #85.9
        movl      %r8d, %esi                                    #86.9
        shll      $19, %esi                                     #86.9
        shrl      $13, %r8d                                     #86.9
        orl       %r8d, %esi                                    #86.9
        addl      %esi, %r14d                                   #86.9
        xorl      %r14d, %r15d                                  #86.9
        shll      $7, %r13d                                     #85.9
        shrl      $25, %r10d                                    #85.9
        orl       %r10d, %r13d                                  #85.9
        movl      472(%rsp), %r11d                              #87.9[spill]
        lea       (%r15,%rbx), %r8d                             #86.9
        addl      %r15d, %ebx                                   #86.9
        addl      %r13d, %r11d                                  #87.9
        shll      $11, %r8d                                     #86.9
        shrl      $21, %ebx                                     #86.9
        orl       %ebx, %r8d                                    #86.9
        addl      %r8d, %r9d                                    #86.9
        xorl      %r9d, %esi                                    #86.9
        movl      104(%rsp), %r10d                              #87.9[spill]
        movl      %r8d, 248(%rsp)                               #86.9[spill]
        xorl      %r11d, %r10d                                  #87.9
        movl      %eax, 232(%rsp)                               #85.9[spill]
        movl      544(%rsp), %eax                               #87.9[spill]
        lea       (%rsi,%r14), %r8d                             #86.9
        addl      %esi, %r14d                                   #86.9
        addl      %r10d, %eax                                   #87.9
        shll      $7, %r8d                                      #86.9
        shrl      $25, %r14d                                    #86.9
        orl       %r14d, %r8d                                   #86.9
        movl      %eax, %r14d                                   #87.9
        shll      $19, %r14d                                    #87.9
        shrl      $13, %eax                                     #87.9
        orl       %eax, %r14d                                   #87.9
        movl      576(%rsp), %ebx                               #87.9[spill]
        addl      %r14d, %ebx                                   #87.9
        xorl      %ebx, %r13d                                   #87.9
        movl      %esi, 328(%rsp)                               #86.9[spill]
        movl      88(%rsp), %eax                                #87.9[spill]
        lea       (%r13,%r11), %esi                             #87.9
        addl      %r13d, %r11d                                  #87.9
        shll      $11, %esi                                     #87.9
        shrl      $21, %r11d                                    #87.9
        orl       %r11d, %esi                                   #87.9
        addl      %esi, %r10d                                   #87.9
        xorl      %r10d, %r14d                                  #87.9
        addl      %r14d, %ebx                                   #87.9
        movl      %r14d, 296(%rsp)                              #87.9[spill]
        movl      %ebx, %r14d                                   #87.9
        shll      $7, %r14d                                     #87.9
        shrl      $25, %ebx                                     #87.9
        movl      %esi, 416(%rsp)                               #87.9[spill]
        orl       %ebx, %r14d                                   #87.9
        movl      56(%rsp), %esi                                #87.9[spill]
        movl      72(%rsp), %ebx                                #87.9[spill]
        movl      96(%rsp), %r11d                               #87.9[spill]
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r13d r14d r15d ymm0
..B4.12:                        # Preds ..B4.13
                                # Execution count [1.00e+00]
        movl      %ebx, 72(%rsp)                                #[spill]
        movl      120(%rsp), %ebx                               #88.9[spill]
        addl      %r8d, %ebx                                    #88.9
        xorl      %ebx, %esi                                    #88.9
        movl      %eax, 88(%rsp)                                #[spill]
        movl      264(%rsp), %eax                               #88.9[spill]
        addl      %esi, %eax                                    #88.9
        movl      %r13d, 448(%rsp)                              #[spill]
        movl      %eax, %r13d                                   #88.9
        shll      $19, %r13d                                    #88.9
        shrl      $13, %eax                                     #88.9
        orl       %eax, %r13d                                   #88.9
        movl      376(%rsp), %eax                               #88.9[spill]
        addl      %r13d, %eax                                   #88.9
        xorl      %eax, %r8d                                    #88.9
        movl      %r15d, 440(%rsp)                              #[spill]
        movl      %edi, 80(%rsp)                                #[spill]
        movl      416(%rsp), %edi                               #89.9[spill]
        addl      %r14d, %edi                                   #89.9
        lea       (%r8,%rbx), %r15d                             #88.9
        addl      %r8d, %ebx                                    #88.9
        xorl      %edi, %r11d                                   #89.9
        shll      $11, %r15d                                    #88.9
        shrl      $21, %ebx                                     #88.9
        orl       %ebx, %r15d                                   #88.9
        addl      %r15d, %esi                                   #88.9
        xorl      %esi, %r13d                                   #88.9
        addl      %r13d, %eax                                   #88.9
        movl      %eax, %ebx                                    #88.9
        shll      $7, %ebx                                      #88.9
        shrl      $25, %eax                                     #88.9
        orl       %eax, %ebx                                    #88.9
        movl      272(%rsp), %eax                               #89.9[spill]
        addl      %ebx, %r15d                                   #90.9
        movl      %r8d, 456(%rsp)                               #88.9[spill]
        xorl      %r15d, %r9d                                   #90.9
        lea       (%rax,%r11), %r8d                             #89.9
        addl      %r11d, %eax                                   #89.9
        shll      $19, %r8d                                     #89.9
        shrl      $13, %eax                                     #89.9
        orl       %eax, %r8d                                    #89.9
        movl      392(%rsp), %eax                               #89.9[spill]
        addl      %r8d, %eax                                    #89.9
        xorl      %eax, %r14d                                   #89.9
        addl      %r14d, %edi                                   #89.9
        movl      %r14d, 464(%rsp)                              #89.9[spill]
        movl      %edi, %r14d                                   #89.9
        shll      $11, %r14d                                    #89.9
        shrl      $21, %edi                                     #89.9
        orl       %edi, %r14d                                   #89.9
        addl      %r14d, %r11d                                  #89.9
        xorl      %r11d, %r8d                                   #89.9
        movl      %r11d, 96(%rsp)                               #89.9[spill]
        movl      %r8d, 480(%rsp)                               #89.9[spill]
        movl      %r14d, 472(%rsp)                              #89.9[spill]
        movl      168(%rsp), %edi                               #91.9[spill]
        lea       (%rax,%r8), %r11d                             #89.9
        addl      %r8d, %eax                                    #89.9
        shll      $7, %r11d                                     #89.9
        shrl      $25, %eax                                     #89.9
        orl       %eax, %r11d                                   #89.9
        movl      312(%rsp), %eax                               #90.9[spill]
        addl      %r11d, %edi                                   #91.9
        xorl      %edi, %r10d                                   #91.9
        lea       (%rax,%r9), %r8d                              #90.9
        addl      %r9d, %eax                                    #90.9
        shll      $19, %r8d                                     #90.9
        shrl      $13, %eax                                     #90.9
        orl       %eax, %r8d                                    #90.9
        addl      %r8d, %r12d                                   #90.9
        xorl      %r12d, %ebx                                   #90.9
        addl      %ebx, %r15d                                   #90.9
        movl      %r15d, %r14d                                  #90.9
        shll      $11, %r14d                                    #90.9
        shrl      $21, %r15d                                    #90.9
        orl       %r15d, %r14d                                  #90.9
        addl      %r14d, %r9d                                   #90.9
        xorl      %r9d, %r8d                                    #90.9
        movl      %r9d, 48(%rsp)                                #90.9[spill]
        movl      %r8d, 496(%rsp)                               #90.9[spill]
        movl      184(%rsp), %r15d                              #92.9[spill]
        movl      %r14d, 488(%rsp)                              #90.9[spill]
        lea       (%r12,%r8), %r9d                              #90.9
        addl      %r8d, %r12d                                   #90.9
        shll      $7, %r9d                                      #90.9
        shrl      $25, %r12d                                    #90.9
        orl       %r12d, %r9d                                   #90.9
        movl      336(%rsp), %r12d                              #91.9[spill]
        addl      %r9d, %r15d                                   #92.9
        xorl      %r15d, %esi                                   #92.9
        movl      296(%rsp), %r14d                              #93.9[spill]
        lea       (%r12,%r10), %r8d                             #91.9
        addl      %r10d, %r12d                                  #91.9
        shll      $19, %r8d                                     #91.9
        shrl      $13, %r12d                                    #91.9
        orl       %r12d, %r8d                                   #91.9
        addl      %r8d, %ecx                                    #91.9
        xorl      %ecx, %r11d                                   #91.9
        movl      %r11d, 504(%rsp)                              #91.9[spill]
        lea       (%rdi,%r11), %eax                             #91.9
        addl      %r11d, %edi                                   #91.9
        shll      $11, %eax                                     #91.9
        shrl      $21, %edi                                     #91.9
        movl      328(%rsp), %r11d                              #92.9[spill]
        orl       %edi, %eax                                    #91.9
        addl      %eax, %r10d                                   #91.9
        xorl      %r10d, %r8d                                   #91.9
        movl      %r8d, 512(%rsp)                               #91.9[spill]
        lea       (%r11,%rsi), %edi                             #92.9
        addl      %esi, %r11d                                   #92.9
        shll      $19, %edi                                     #92.9
        shrl      $13, %r11d                                    #92.9
        orl       %r11d, %edi                                   #92.9
        movl      %r10d, 104(%rsp)                              #91.9[spill]
        lea       (%rcx,%r8), %r10d                             #91.9
        addl      %r8d, %ecx                                    #91.9
        movl      440(%rsp), %r8d                               #92.9[spill]
        addl      %edi, %r8d                                    #92.9
        xorl      %r8d, %r9d                                    #92.9
        shll      $7, %r10d                                     #91.9
        shrl      $25, %ecx                                     #91.9
        orl       %ecx, %r10d                                   #91.9
        movl      200(%rsp), %ecx                               #93.9[spill]
        lea       (%r15,%r9), %r11d                             #92.9
        addl      %r9d, %r15d                                   #92.9
        addl      %r10d, %ecx                                   #93.9
        shll      $11, %r11d                                    #92.9
        xorl      %ecx, %edx                                    #93.9
        shrl      $21, %r15d                                    #92.9
        orl       %r15d, %r11d                                  #92.9
        addl      %r11d, %esi                                   #92.9
        xorl      %esi, %edi                                    #92.9
        lea       (%r14,%rdx), %r12d                            #93.9
        addl      %edx, %r14d                                   #93.9
        movl      %r9d, 520(%rsp)                               #92.9[spill]
        shll      $19, %r12d                                    #93.9
        shrl      $13, %r14d                                    #93.9
        lea       (%r8,%rdi), %r9d                              #92.9
        addl      %edi, %r8d                                    #92.9
        orl       %r14d, %r12d                                  #93.9
        shll      $7, %r9d                                      #92.9
        shrl      $25, %r8d                                     #92.9
        orl       %r8d, %r9d                                    #92.9
        movl      448(%rsp), %r8d                               #93.9[spill]
        addl      %r12d, %r8d                                   #93.9
        xorl      %r8d, %r10d                                   #93.9
        movl      %esi, 56(%rsp)                                #92.9[spill]
        movl      216(%rsp), %esi                               #94.9[spill]
        addl      %r9d, %esi                                    #94.9
        movl      72(%rsp), %r15d                               #94.9[spill]
        xorl      %esi, %r15d                                   #94.9
        movl      %edi, 528(%rsp)                               #92.9[spill]
        lea       (%rcx,%r10), %edi                             #93.9
        addl      %r10d, %ecx                                   #93.9
        shll      $11, %edi                                     #93.9
        shrl      $21, %ecx                                     #93.9
        orl       %ecx, %edi                                    #93.9
        movl      %edi, 544(%rsp)                               #93.9[spill]
        addl      %edi, %edx                                    #93.9
        xorl      %edx, %r12d                                   #93.9
        lea       (%r15,%r13), %edi                             #94.9
        addl      %r15d, %r13d                                  #94.9
        shll      $19, %edi                                     #94.9
        shrl      $13, %r13d                                    #94.9
        orl       %r13d, %edi                                   #94.9
        lea       (%r8,%r12), %r14d                             #93.9
        movl      %r10d, 536(%rsp)                              #93.9[spill]
        addl      %r12d, %r8d                                   #93.9
        movl      456(%rsp), %r10d                              #94.9[spill]
        addl      %edi, %r10d                                   #94.9
        xorl      %r10d, %r9d                                   #94.9
        shll      $7, %r14d                                     #93.9
        shrl      $25, %r8d                                     #93.9
        orl       %r8d, %r14d                                   #93.9
        movl      232(%rsp), %r8d                               #95.9[spill]
        lea       (%rsi,%r9), %r13d                             #94.9
        addl      %r9d, %esi                                    #94.9
        addl      %r14d, %r8d                                   #95.9
        movl      %r12d, 552(%rsp)                              #93.9[spill]
        movl      80(%rsp), %r12d                               #95.9[spill]
        shll      $11, %r13d                                    #94.9
        xorl      %r8d, %r12d                                   #95.9
        shrl      $21, %esi                                     #94.9
        orl       %esi, %r13d                                   #94.9
        movl      136(%rsp), %esi                               #95.9[spill]
        addl      %r13d, %r15d                                  #94.9
        movl      %r13d, 568(%rsp)                              #94.9[spill]
        xorl      %r15d, %edi                                   #94.9
        movl      %edi, 576(%rsp)                               #94.9[spill]
        movl      %r9d, 560(%rsp)                               #94.9[spill]
        lea       (%rsi,%r12), %r13d                            #95.9
        addl      %r12d, %esi                                   #95.9
        shll      $19, %r13d                                    #95.9
        lea       (%r10,%rdi), %ecx                             #94.9
        shrl      $13, %esi                                     #95.9
        addl      %edi, %r10d                                   #94.9
        orl       %esi, %r13d                                   #95.9
        movl      464(%rsp), %esi                               #95.9[spill]
        addl      %r13d, %esi                                   #95.9
        xorl      %esi, %r14d                                   #95.9
        shll      $7, %ecx                                      #94.9
        shrl      $25, %r10d                                    #94.9
        orl       %r10d, %ecx                                   #94.9
        movl      248(%rsp), %edi                               #96.9[spill]
        lea       (%r8,%r14), %r10d                             #95.9
        addl      %r14d, %r8d                                   #95.9
        addl      %ecx, %edi                                    #96.9
        shll      $11, %r10d                                    #95.9
        shrl      $21, %r8d                                     #95.9
        orl       %r8d, %r10d                                   #95.9
        addl      %r10d, %r12d                                  #95.9
        xorl      %r12d, %r13d                                  #95.9
        movl      88(%rsp), %r9d                                #96.9[spill]
        xorl      %edi, %r9d                                    #96.9
        movl      %r14d, 584(%rsp)                              #95.9[spill]
        lea       (%rsi,%r13), %r8d                             #95.9
        addl      %r13d, %esi                                   #95.9
        shll      $7, %r8d                                      #95.9
        shrl      $25, %esi                                     #95.9
        orl       %esi, %r8d                                    #95.9
        movl      152(%rsp), %esi                               #96.9[spill]
        addl      %r8d, %eax                                    #81.9
        xorl      %eax, %edx                                    #81.9
        addl      %edx, %r13d                                   #81.9
        lea       (%rsi,%r9), %r14d                             #96.9
        addl      %r9d, %esi                                    #96.9
        shll      $19, %r14d                                    #96.9
        shrl      $13, %esi                                     #96.9
        orl       %esi, %r14d                                   #96.9
        addl      %r14d, %ebx                                   #96.9
        xorl      %ebx, %ecx                                    #96.9
        lea       (%rdi,%rcx), %esi                             #96.9
        addl      %ecx, %edi                                    #96.9
        shll      $11, %esi                                     #96.9
        shrl      $21, %edi                                     #96.9
        orl       %edi, %esi                                    #96.9
        addl      %esi, %r9d                                    #96.9
        xorl      %r9d, %r14d                                   #96.9
        lea       (%rbx,%r14), %edi                             #96.9
        addl      %r14d, %ebx                                   #96.9
        shll      $7, %edi                                      #96.9
        shrl      $25, %ebx                                     #96.9
        orl       %ebx, %edi                                    #96.9
        movl      %r13d, %ebx                                   #81.9
        shll      $19, %ebx                                     #81.9
        addl      %edi, %r11d                                   #82.9
        shrl      $13, %r13d                                    #81.9
        xorl      %r11d, %r15d                                  #82.9
        orl       %r13d, %ebx                                   #81.9
        addl      %r15d, %r14d                                  #82.9
        movl      504(%rsp), %r13d                              #81.9[spill]
        addl      %ebx, %r13d                                   #81.9
        xorl      %r13d, %r8d                                   #81.9
        addl      %r8d, %eax                                    #81.9
        movl      %r8d, 592(%rsp)                               #81.9[spill]
        movl      %eax, %r8d                                    #81.9
        shll      $11, %r8d                                     #81.9
        shrl      $21, %eax                                     #81.9
        orl       %eax, %r8d                                    #81.9
        addl      %r8d, %edx                                    #81.9
        movl      %r8d, 256(%rsp)                               #81.9[spill]
        movl      %r14d, %r8d                                   #82.9
        xorl      %edx, %ebx                                    #81.9
        shll      $19, %r8d                                     #82.9
        shrl      $13, %r14d                                    #82.9
        orl       %r14d, %r8d                                   #82.9
        movl      520(%rsp), %r14d                              #82.9[spill]
        addl      %r8d, %r14d                                   #82.9
        movl      %edx, 64(%rsp)                                #81.9[spill]
        lea       (%rbx,%r13), %edx                             #81.9
        addl      %ebx, %r13d                                   #81.9
        xorl      %r14d, %edi                                   #82.9
        shll      $7, %edx                                      #81.9
        addl      %edi, %r11d                                   #82.9
        shrl      $25, %r13d                                    #81.9
        orl       %r13d, %edx                                   #81.9
        movl      %r11d, %r13d                                  #82.9
        movl      544(%rsp), %eax                               #83.9[spill]
        shll      $11, %r13d                                    #82.9
        addl      %edx, %eax                                    #83.9
        shrl      $21, %r11d                                    #82.9
        xorl      %eax, %r12d                                   #83.9
        orl       %r11d, %r13d                                  #82.9
        movl      %ebx, 144(%rsp)                               #81.9[spill]
        addl      %r13d, %r15d                                  #82.9
        movl      480(%rsp), %ebx                               #83.9[spill]
        xorl      %r15d, %r8d                                   #82.9
        addl      %r12d, %ebx                                   #83.9
        movl      %r15d, 72(%rsp)                               #82.9[spill]
        movl      %ebx, %r15d                                   #83.9
        shll      $19, %r15d                                    #83.9
        shrl      $13, %ebx                                     #83.9
        orl       %ebx, %r15d                                   #83.9
        movl      536(%rsp), %r11d                              #83.9[spill]
        addl      %r15d, %r11d                                  #83.9
        xorl      %r11d, %edx                                   #83.9
        movl      %r13d, 176(%rsp)                              #82.9[spill]
        lea       (%r8,%r14), %r13d                             #82.9
        addl      %r8d, %r14d                                   #82.9
        shll      $7, %r13d                                     #82.9
        shrl      $25, %r14d                                    #82.9
        lea       (%rdx,%rax), %ebx                             #83.9
        orl       %r14d, %r13d                                  #82.9
        addl      %edx, %eax                                    #83.9
        movl      %r8d, 160(%rsp)                               #82.9[spill]
        movl      568(%rsp), %r8d                               #84.9[spill]
        addl      %r13d, %r8d                                   #84.9
        shll      $11, %ebx                                     #83.9
        xorl      %r8d, %r9d                                    #84.9
        shrl      $21, %eax                                     #83.9
        movl      496(%rsp), %r14d                              #84.9[spill]
        orl       %eax, %ebx                                    #83.9
        addl      %r9d, %r14d                                   #84.9
        addl      %ebx, %r12d                                   #83.9
        movl      %ebx, 192(%rsp)                               #83.9[spill]
        movl      %r14d, %ebx                                   #84.9
        shll      $19, %ebx                                     #84.9
        xorl      %r12d, %r15d                                  #83.9
        shrl      $13, %r14d                                    #84.9
        orl       %r14d, %ebx                                   #84.9
        movl      560(%rsp), %eax                               #84.9[spill]
        addl      %ebx, %eax                                    #84.9
        xorl      %eax, %r13d                                   #84.9
        movl      %edx, 600(%rsp)                               #83.9[spill]
        lea       (%r15,%r11), %edx                             #83.9
        addl      %r15d, %r11d                                  #83.9
        shll      $7, %edx                                      #83.9
        shrl      $25, %r11d                                    #83.9
        lea       (%r13,%r8), %r14d                             #84.9
        orl       %r11d, %edx                                   #83.9
        addl      %r13d, %r8d                                   #84.9
        addl      %edx, %r10d                                   #85.9
        movl      96(%rsp), %r11d                               #85.9[spill]
        shll      $11, %r14d                                    #84.9
        xorl      %r10d, %r11d                                  #85.9
        shrl      $21, %r8d                                     #84.9
        movl      %r12d, 80(%rsp)                               #83.9[spill]
        orl       %r8d, %r14d                                   #84.9
        movl      512(%rsp), %r12d                              #85.9[spill]
        addl      %r14d, %r9d                                   #84.9
        addl      %r11d, %r12d                                  #85.9
        xorl      %r9d, %ebx                                    #84.9
        movl      %r14d, 208(%rsp)                              #84.9[spill]
        movl      %r12d, %r14d                                  #85.9
        shll      $19, %r14d                                    #85.9
        shrl      $13, %r12d                                    #85.9
        orl       %r12d, %r14d                                  #85.9
        lea       (%rbx,%rax), %r8d                             #84.9
        movl      584(%rsp), %r12d                              #85.9[spill]
        addl      %ebx, %eax                                    #84.9
        addl      %r14d, %r12d                                  #85.9
        xorl      %r12d, %edx                                   #85.9
        shll      $7, %r8d                                      #84.9
        shrl      $25, %eax                                     #84.9
        orl       %eax, %r8d                                    #84.9
        addl      %r8d, %esi                                    #86.9
        lea       (%rdx,%r10), %eax                             #85.9
        addl      %edx, %r10d                                   #85.9
        movl      %r9d, 88(%rsp)                                #84.9[spill]
        movl      48(%rsp), %r9d                                #86.9[spill]
        shll      $11, %eax                                     #85.9
        xorl      %esi, %r9d                                    #86.9
        shrl      $21, %r10d                                    #85.9
        movl      %r13d, 608(%rsp)                              #84.9[spill]
        orl       %r10d, %eax                                   #85.9
        movl      528(%rsp), %r13d                              #86.9[spill]
        addl      %eax, %r11d                                   #85.9
        addl      %r9d, %r13d                                   #86.9
        xorl      %r11d, %r14d                                  #85.9
        movl      %eax, 224(%rsp)                               #85.9[spill]
        movl      %r13d, %eax                                   #86.9
        shll      $19, %eax                                     #86.9
        shrl      $13, %r13d                                    #86.9
        orl       %r13d, %eax                                   #86.9
        addl      %eax, %ecx                                    #86.9
        xorl      %ecx, %r8d                                    #86.9
        movl      %ebx, 616(%rsp)                               #84.9[spill]
        lea       (%r14,%r12), %ebx                             #85.9
        addl      %r14d, %r12d                                  #85.9
        shll      $7, %ebx                                      #85.9
        shrl      $25, %r12d                                    #85.9
        lea       (%r8,%rsi), %r13d                             #86.9
        addl      %r8d, %esi                                    #86.9
        orl       %r12d, %ebx                                   #85.9
        shll      $11, %r13d                                    #86.9
        shrl      $21, %esi                                     #86.9
        orl       %esi, %r13d                                   #86.9
        addl      %r13d, %r9d                                   #86.9
        xorl      %r9d, %eax                                    #86.9
        movl      %edx, 408(%rsp)                               #85.9[spill]
        movl      472(%rsp), %edx                               #87.9[spill]
        addl      %ebx, %edx                                    #87.9
        movl      104(%rsp), %r10d                              #87.9[spill]
        lea       (%rax,%rcx), %r12d                            #86.9
        xorl      %edx, %r10d                                   #87.9
        addl      %eax, %ecx                                    #86.9
        movl      %r14d, 320(%rsp)                              #85.9[spill]
        movl      552(%rsp), %r14d                              #87.9[spill]
        shll      $7, %r12d                                     #86.9
        addl      %r10d, %r14d                                  #87.9
        shrl      $25, %ecx                                     #86.9
        orl       %ecx, %r12d                                   #86.9
        movl      %r14d, %ecx                                   #87.9
        shll      $19, %ecx                                     #87.9
        shrl      $13, %r14d                                    #87.9
        orl       %r14d, %ecx                                   #87.9
        movl      592(%rsp), %r14d                              #87.9[spill]
        addl      %ecx, %r14d                                   #87.9
        xorl      %r14d, %ebx                                   #87.9
        movl      %r13d, 240(%rsp)                              #86.9[spill]
        movl      488(%rsp), %r13d                              #88.9[spill]
        addl      %r12d, %r13d                                  #88.9
        movl      56(%rsp), %esi                                #88.9[spill]
        movl      %eax, 304(%rsp)                               #86.9[spill]
        xorl      %r13d, %esi                                   #88.9
        movl      %r8d, 400(%rsp)                               #86.9[spill]
        lea       (%rbx,%rdx), %eax                             #87.9
        addl      %ebx, %edx                                    #87.9
        movl      576(%rsp), %r8d                               #88.9[spill]
        shll      $11, %eax                                     #87.9
        addl      %esi, %r8d                                    #88.9
        shrl      $21, %edx                                     #87.9
        orl       %edx, %eax                                    #87.9
        movl      %r8d, %edx                                    #88.9
        shll      $19, %edx                                     #88.9
        addl      %eax, %r10d                                   #87.9
        shrl      $13, %r8d                                     #88.9
        xorl      %r10d, %ecx                                   #87.9
        orl       %r8d, %edx                                    #88.9
        addl      %ecx, %r14d                                   #87.9
        addl      %edx, %edi                                    #88.9
        xorl      %edi, %r12d                                   #88.9
        movl      %ecx, 288(%rsp)                               #87.9[spill]
        movl      %ebx, 384(%rsp)                               #87.9[spill]
        movl      %r14d, %ebx                                   #87.9
        shll      $7, %ebx                                      #87.9
        shrl      $25, %r14d                                    #87.9
        lea       (%r12,%r13), %ecx                             #88.9
        addl      %r12d, %r13d                                  #88.9
        orl       %r14d, %ebx                                   #87.9
        shll      $11, %ecx                                     #88.9
        addl      %ebx, %eax                                    #89.9
        shrl      $21, %r13d                                    #88.9
        xorl      %eax, %r11d                                   #89.9
        orl       %r13d, %ecx                                   #88.9
        addl      %ecx, %esi                                    #88.9
        xorl      %esi, %edx                                    #88.9
        addl      %edx, %edi                                    #88.9
        movl      %edx, 280(%rsp)                               #88.9[spill]
        movl      %edi, %edx                                    #88.9
        shll      $7, %edx                                      #88.9
        shrl      $25, %edi                                     #88.9
        orl       %edi, %edx                                    #88.9
        lea       (%r11,%r15), %edi                             #89.9
        addl      %r11d, %r15d                                  #89.9
        addl      %edx, %ecx                                    #90.9
        shll      $19, %edi                                     #89.9
        xorl      %ecx, %r9d                                    #90.9
        shrl      $13, %r15d                                    #89.9
        orl       %r15d, %edi                                   #89.9
        movl      600(%rsp), %r8d                               #89.9[spill]
        addl      %edi, %r8d                                    #89.9
        xorl      %r8d, %ebx                                    #89.9
        movl      %ebx, 360(%rsp)                               #89.9[spill]
        addl      %ebx, %eax                                    #89.9
        movl      616(%rsp), %ebx                               #90.9[spill]
        movl      %eax, %r15d                                   #89.9
        movl      608(%rsp), %r14d                              #90.9[spill]
        shll      $11, %r15d                                    #89.9
        shrl      $21, %eax                                     #89.9
        lea       (%r9,%rbx), %r13d                             #90.9
        addl      %r9d, %ebx                                    #90.9
        orl       %eax, %r15d                                   #89.9
        shll      $19, %r13d                                    #90.9
        addl      %r15d, %r11d                                  #89.9
        shrl      $13, %ebx                                     #90.9
        xorl      %r11d, %edi                                   #89.9
        orl       %ebx, %r13d                                   #90.9
        addl      %r13d, %r14d                                  #90.9
        xorl      %r14d, %edx                                   #90.9
        addl      %edx, %ecx                                    #90.9
        lea       (%r8,%rdi), %eax                              #89.9
        movl      %r12d, 368(%rsp)                              #88.9[spill]
        movl      %ecx, %r12d                                   #90.9
        shll      $11, %r12d                                    #90.9
        addl      %edi, %r8d                                    #89.9
        shrl      $21, %ecx                                     #90.9
        orl       %ecx, %r12d                                   #90.9
        addl      %r12d, %r9d                                   #90.9
        xorl      %r9d, %r13d                                   #90.9
        shll      $7, %eax                                      #89.9
        shrl      $25, %r8d                                     #89.9
        orl       %r8d, %eax                                    #89.9
        movl      %edi, 344(%rsp)                               #89.9[spill]
        lea       (%r14,%r13), %ecx                             #90.9
        addl      %r13d, %r14d                                  #90.9
        shll      $7, %ecx                                      #90.9
        shrl      $25, %r14d                                    #90.9
        movl      %eax, 424(%rsp)                               #89.9[spill]
        orl       %r14d, %ecx                                   #90.9
        addl      %eax, 256(%rsp)                               #91.9[spill]
        movl      %edx, 352(%rsp)                               #90.9[spill]
        movl      %r15d, 112(%rsp)                              #89.9[spill]
        movl      %r12d, 128(%rsp)                              #90.9[spill]
        movl      %r13d, 432(%rsp)                              #90.9[spill]
        movl      64(%rsp), %edx                                #90.9[spill]
        movl      72(%rsp), %ebx                                #90.9[spill]
        movl      80(%rsp), %edi                                #90.9[spill]
        movl      88(%rsp), %eax                                #90.9[spill]
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d ymm0
..B4.11:                        # Preds ..B4.12
                                # Execution count [1.00e+00]
        movl      256(%rsp), %r12d                              #91.9[spill]
        xorl      %r12d, %r10d                                  #91.9
        movl      %r11d, 96(%rsp)                               #[spill]
        movl      320(%rsp), %r11d                              #91.9[spill]
        movl      408(%rsp), %r15d                              #91.9[spill]
        movl      %r9d, 48(%rsp)                                #[spill]
        movl      424(%rsp), %r9d                               #91.9[spill]
        lea       (%r11,%r10), %r14d                            #91.9
        addl      %r10d, %r11d                                  #91.9
        shll      $19, %r14d                                    #91.9
        shrl      $13, %r11d                                    #91.9
        orl       %r11d, %r14d                                  #91.9
        addl      %r14d, %r15d                                  #91.9
        xorl      %r15d, %r9d                                   #91.9
        movl      176(%rsp), %r8d                               #92.9[spill]
        addl      %ecx, %r8d                                    #92.9
        xorl      %r8d, %esi                                    #92.9
        lea       (%r12,%r9), %r13d                             #91.9
        addl      %r9d, %r12d                                   #91.9
        shll      $11, %r13d                                    #91.9
        shrl      $21, %r12d                                    #91.9
        orl       %r12d, %r13d                                  #91.9
        addl      %r13d, %r10d                                  #91.9
        xorl      %r10d, %r14d                                  #91.9
        movl      %r14d, 448(%rsp)                              #91.9[spill]
        movl      %r10d, 104(%rsp)                              #91.9[spill]
        movl      192(%rsp), %r12d                              #93.9[spill]
        lea       (%r15,%r14), %r11d                            #91.9
        addl      %r14d, %r15d                                  #91.9
        movl      304(%rsp), %r14d                              #92.9[spill]
        shll      $7, %r11d                                     #91.9
        shrl      $25, %r15d                                    #91.9
        orl       %r15d, %r11d                                  #91.9
        lea       (%r14,%rsi), %r10d                            #92.9
        addl      %esi, %r14d                                   #92.9
        addl      %r11d, %r12d                                  #93.9
        shll      $19, %r10d                                    #92.9
        xorl      %r12d, %edx                                   #93.9
        shrl      $13, %r14d                                    #92.9
        orl       %r14d, %r10d                                  #92.9
        movl      400(%rsp), %r15d                              #92.9[spill]
        addl      %r10d, %r15d                                  #92.9
        xorl      %r15d, %ecx                                   #92.9
        movl      %ecx, 456(%rsp)                               #92.9[spill]
        lea       (%r8,%rcx), %r14d                             #92.9
        addl      %ecx, %r8d                                    #92.9
        shll      $11, %r14d                                    #92.9
        shrl      $21, %r8d                                     #92.9
        orl       %r8d, %r14d                                   #92.9
        addl      %r14d, %esi                                   #92.9
        xorl      %esi, %r10d                                   #92.9
        movl      288(%rsp), %r8d                               #93.9[spill]
        movl      %esi, 56(%rsp)                                #92.9[spill]
        movl      %r10d, 464(%rsp)                              #92.9[spill]
        movl      208(%rsp), %ecx                               #94.9[spill]
        lea       (%r15,%r10), %esi                             #92.9
        addl      %r10d, %r15d                                  #92.9
        lea       (%r8,%rdx), %r10d                             #93.9
        addl      %edx, %r8d                                    #93.9
        shll      $19, %r10d                                    #93.9
        shrl      $13, %r8d                                     #93.9
        shll      $7, %esi                                      #92.9
        orl       %r8d, %r10d                                   #93.9
        shrl      $25, %r15d                                    #92.9
        orl       %r15d, %esi                                   #92.9
        movl      384(%rsp), %r15d                              #93.9[spill]
        addl      %esi, %ecx                                    #94.9
        addl      %r10d, %r15d                                  #93.9
        xorl      %ecx, %ebx                                    #94.9
        xorl      %r15d, %r11d                                  #93.9
        movl      %r11d, 472(%rsp)                              #93.9[spill]
        lea       (%r12,%r11), %r8d                             #93.9
        addl      %r11d, %r12d                                  #93.9
        shll      $11, %r8d                                     #93.9
        shrl      $21, %r12d                                    #93.9
        orl       %r12d, %r8d                                   #93.9
        addl      %r8d, %edx                                    #93.9
        xorl      %edx, %r10d                                   #93.9
        movl      280(%rsp), %r12d                              #94.9[spill]
        movl      %r8d, 480(%rsp)                               #93.9[spill]
        movl      %r10d, 488(%rsp)                              #93.9[spill]
        movl      224(%rsp), %r11d                              #95.9[spill]
        lea       (%r15,%r10), %r8d                             #93.9
        addl      %r10d, %r15d                                  #93.9
        lea       (%r12,%rbx), %r10d                            #94.9
        addl      %ebx, %r12d                                   #94.9
        shll      $19, %r10d                                    #94.9
        shrl      $13, %r12d                                    #94.9
        shll      $7, %r8d                                      #93.9
        orl       %r12d, %r10d                                  #94.9
        shrl      $25, %r15d                                    #93.9
        orl       %r15d, %r8d                                   #93.9
        movl      368(%rsp), %r15d                              #94.9[spill]
        addl      %r8d, %r11d                                   #95.9
        addl      %r10d, %r15d                                  #94.9
        xorl      %r11d, %edi                                   #95.9
        xorl      %r15d, %esi                                   #94.9
        movl      %esi, 496(%rsp)                               #94.9[spill]
        lea       (%rcx,%rsi), %r12d                            #94.9
        addl      %esi, %ecx                                    #94.9
        shll      $11, %r12d                                    #94.9
        shrl      $21, %ecx                                     #94.9
        orl       %ecx, %r12d                                   #94.9
        movl      144(%rsp), %ecx                               #95.9[spill]
        addl      %r12d, %ebx                                   #94.9
        movl      %r12d, 504(%rsp)                              #94.9[spill]
        xorl      %ebx, %r10d                                   #94.9
        movl      %r10d, 512(%rsp)                              #94.9[spill]
        lea       (%rcx,%rdi), %r12d                            #95.9
        addl      %edi, %ecx                                    #95.9
        shll      $19, %r12d                                    #95.9
        shrl      $13, %ecx                                     #95.9
        lea       (%r15,%r10), %esi                             #94.9
        orl       %ecx, %r12d                                   #95.9
        addl      %r10d, %r15d                                  #94.9
        movl      360(%rsp), %ecx                               #95.9[spill]
        addl      %r12d, %ecx                                   #95.9
        xorl      %ecx, %r8d                                    #95.9
        shll      $7, %esi                                      #94.9
        shrl      $25, %r15d                                    #94.9
        orl       %r15d, %esi                                   #94.9
        movl      240(%rsp), %r15d                              #96.9[spill]
        lea       (%r11,%r8), %r10d                             #95.9
        addl      %r8d, %r11d                                   #95.9
        addl      %esi, %r15d                                   #96.9
        shll      $11, %r10d                                    #95.9
        xorl      %r15d, %eax                                   #96.9
        shrl      $21, %r11d                                    #95.9
        orl       %r11d, %r10d                                  #95.9
        movl      160(%rsp), %r11d                              #96.9[spill]
        addl      %r10d, %edi                                   #95.9
        movl      %r10d, 528(%rsp)                              #95.9[spill]
        xorl      %edi, %r12d                                   #95.9
        movl      %r8d, 520(%rsp)                               #95.9[spill]
        lea       (%r11,%rax), %r10d                            #96.9
        addl      %eax, %r11d                                   #96.9
        shll      $19, %r10d                                    #96.9
        shrl      $13, %r11d                                    #96.9
        lea       (%rcx,%r12), %r8d                             #95.9
        orl       %r11d, %r10d                                  #96.9
        addl      %r12d, %ecx                                   #95.9
        movl      352(%rsp), %r11d                              #96.9[spill]
        addl      %r10d, %r11d                                  #96.9
        xorl      %r11d, %esi                                   #96.9
        shll      $7, %r8d                                      #95.9
        shrl      $25, %ecx                                     #95.9
        orl       %ecx, %r8d                                    #95.9
        addl      %r8d, %r13d                                   #81.9
        lea       (%r15,%rsi), %ecx                             #96.9
        addl      %esi, %r15d                                   #96.9
        xorl      %r13d, %edx                                   #81.9
        shll      $11, %ecx                                     #96.9
        addl      %edx, %r12d                                   #81.9
        shrl      $21, %r15d                                    #96.9
        orl       %r15d, %ecx                                   #96.9
        addl      %ecx, %eax                                    #96.9
        xorl      %eax, %r10d                                   #96.9
        lea       (%r11,%r10), %r15d                            #96.9
        addl      %r10d, %r11d                                  #96.9
        shll      $7, %r15d                                     #96.9
        shrl      $25, %r11d                                    #96.9
        orl       %r11d, %r15d                                  #96.9
        movl      %r12d, %r11d                                  #81.9
        shll      $19, %r11d                                    #81.9
        addl      %r15d, %r14d                                  #82.9
        shrl      $13, %r12d                                    #81.9
        xorl      %r14d, %ebx                                   #82.9
        orl       %r12d, %r11d                                  #81.9
        addl      %ebx, %r10d                                   #82.9
        addl      %r11d, %r9d                                   #81.9
        xorl      %r9d, %r8d                                    #81.9
        addl      %r8d, %r13d                                   #81.9
        movl      %r13d, %r12d                                  #81.9
        shll      $11, %r12d                                    #81.9
        shrl      $21, %r13d                                    #81.9
        orl       %r13d, %r12d                                  #81.9
        addl      %r12d, %edx                                   #81.9
        xorl      %edx, %r11d                                   #81.9
        movl      %edx, 64(%rsp)                                #81.9[spill]
        movl      456(%rsp), %r13d                              #82.9[spill]
        movl      %r11d, 200(%rsp)                              #81.9[spill]
        movl      %r12d, 536(%rsp)                              #81.9[spill]
        lea       (%r11,%r9), %edx                              #81.9
        addl      %r11d, %r9d                                   #81.9
        shll      $7, %edx                                      #81.9
        shrl      $25, %r9d                                     #81.9
        orl       %r9d, %edx                                    #81.9
        movl      %r10d, %r9d                                   #82.9
        shll      $19, %r9d                                     #82.9
        shrl      $13, %r10d                                    #82.9
        orl       %r10d, %r9d                                   #82.9
        addl      %r9d, %r13d                                   #82.9
        xorl      %r13d, %r15d                                  #82.9
        addl      %r15d, %r14d                                  #82.9
        movl      %r14d, %r10d                                  #82.9
        shll      $11, %r10d                                    #82.9
        shrl      $21, %r14d                                    #82.9
        orl       %r14d, %r10d                                  #82.9
        addl      %r10d, %ebx                                   #82.9
        xorl      %ebx, %r9d                                    #82.9
        movl      480(%rsp), %r11d                              #83.9[spill]
        addl      %edx, %r11d                                   #83.9
        xorl      %r11d, %edi                                   #83.9
        movl      344(%rsp), %r12d                              #83.9[spill]
        addl      %edi, %r12d                                   #83.9
        movl      %r10d, 544(%rsp)                              #82.9[spill]
        lea       (%r9,%r13), %r10d                             #82.9
        movl      %r9d, 216(%rsp)                               #82.9[spill]
        addl      %r9d, %r13d                                   #82.9
        movl      %r12d, %r9d                                   #83.9
        shll      $19, %r9d                                     #83.9
        shrl      $13, %r12d                                    #83.9
        orl       %r12d, %r9d                                   #83.9
        movl      472(%rsp), %r12d                              #83.9[spill]
        addl      %r9d, %r12d                                   #83.9
        xorl      %r12d, %edx                                   #83.9
        movl      %ebx, 72(%rsp)                                #82.9[spill]
        shll      $7, %r10d                                     #82.9
        shrl      $25, %r13d                                    #82.9
        orl       %r13d, %r10d                                  #82.9
        lea       (%rdx,%r11), %ebx                             #83.9
        addl      %edx, %r11d                                   #83.9
        shll      $11, %ebx                                     #83.9
        shrl      $21, %r11d                                    #83.9
        orl       %r11d, %ebx                                   #83.9
        addl      %ebx, %edi                                    #83.9
        xorl      %edi, %r9d                                    #83.9
        movl      504(%rsp), %r14d                              #84.9[spill]
        addl      %r10d, %r14d                                  #84.9
        xorl      %r14d, %eax                                   #84.9
        movl      432(%rsp), %r13d                              #84.9[spill]
        addl      %eax, %r13d                                   #84.9
        movl      %ebx, 560(%rsp)                               #83.9[spill]
        lea       (%r9,%r12), %ebx                              #83.9
        movl      %r9d, 568(%rsp)                               #83.9[spill]
        addl      %r9d, %r12d                                   #83.9
        movl      %r13d, %r9d                                   #84.9
        shll      $19, %r9d                                     #84.9
        shrl      $13, %r13d                                    #84.9
        orl       %r13d, %r9d                                   #84.9
        movl      %edi, 80(%rsp)                                #83.9[spill]
        movl      496(%rsp), %edi                               #84.9[spill]
        addl      %r9d, %edi                                    #84.9
        xorl      %edi, %r10d                                   #84.9
        shll      $7, %ebx                                      #83.9
        shrl      $25, %r12d                                    #83.9
        orl       %r12d, %ebx                                   #83.9
        movl      %edx, 552(%rsp)                               #83.9[spill]
        lea       (%r10,%r14), %r13d                            #84.9
        movl      528(%rsp), %edx                               #85.9[spill]
        addl      %r10d, %r14d                                  #84.9
        addl      %ebx, %edx                                    #85.9
        movl      96(%rsp), %r11d                               #85.9[spill]
        xorl      %edx, %r11d                                   #85.9
        movl      448(%rsp), %r12d                              #85.9[spill]
        shll      $11, %r13d                                    #84.9
        addl      %r11d, %r12d                                  #85.9
        shrl      $21, %r14d                                    #84.9
        orl       %r14d, %r13d                                  #84.9
        movl      %r12d, %r14d                                  #85.9
        shll      $19, %r14d                                    #85.9
        addl      %r13d, %eax                                   #84.9
        shrl      $13, %r12d                                    #85.9
        xorl      %eax, %r9d                                    #84.9
        orl       %r12d, %r14d                                  #85.9
        movl      %eax, 88(%rsp)                                #84.9[spill]
        movl      520(%rsp), %eax                               #85.9[spill]
        addl      %r14d, %eax                                   #85.9
        xorl      %eax, %ebx                                    #85.9
        movl      %r13d, 248(%rsp)                              #84.9[spill]
        lea       (%r9,%rdi), %r13d                             #84.9
        addl      %r9d, %edi                                    #84.9
        shll      $7, %r13d                                     #84.9
        shrl      $25, %edi                                     #84.9
        lea       (%rbx,%rdx), %r12d                            #85.9
        addl      %ebx, %edx                                    #85.9
        orl       %edi, %r13d                                   #84.9
        shll      $11, %r12d                                    #85.9
        addl      %r13d, %ecx                                   #86.9
        shrl      $21, %edx                                     #85.9
        orl       %edx, %r12d                                   #85.9
        addl      %r12d, %r11d                                  #85.9
        xorl      %r11d, %r14d                                  #85.9
        movl      %r10d, 576(%rsp)                              #84.9[spill]
        movl      48(%rsp), %r10d                               #86.9[spill]
        xorl      %ecx, %r10d                                   #86.9
        movl      464(%rsp), %edi                               #86.9[spill]
        addl      %r10d, %edi                                   #86.9
        movl      %r12d, 264(%rsp)                              #85.9[spill]
        lea       (%r14,%rax), %r12d                            #85.9
        movl      %r14d, 592(%rsp)                              #85.9[spill]
        addl      %r14d, %eax                                   #85.9
        movl      %edi, %r14d                                   #86.9
        shll      $19, %r14d                                    #86.9
        shrl      $13, %edi                                     #86.9
        orl       %edi, %r14d                                   #86.9
        addl      %r14d, %esi                                   #86.9
        xorl      %esi, %r13d                                   #86.9
        shll      $7, %r12d                                     #85.9
        shrl      $25, %eax                                     #85.9
        orl       %eax, %r12d                                   #85.9
        movl      112(%rsp), %eax                               #87.9[spill]
        lea       (%r13,%rcx), %edi                             #86.9
        addl      %r13d, %ecx                                   #86.9
        addl      %r12d, %eax                                   #87.9
        shll      $11, %edi                                     #86.9
        shrl      $21, %ecx                                     #86.9
        orl       %ecx, %edi                                    #86.9
        addl      %edi, %r10d                                   #86.9
        xorl      %r10d, %r14d                                  #86.9
        movl      %ebx, 584(%rsp)                               #85.9[spill]
        movl      104(%rsp), %ebx                               #87.9[spill]
        xorl      %eax, %ebx                                    #87.9
        movl      488(%rsp), %edx                               #87.9[spill]
        lea       (%r14,%rsi), %ecx                             #86.9
        addl      %ebx, %edx                                    #87.9
        addl      %r14d, %esi                                   #86.9
        movl      %r14d, 608(%rsp)                              #86.9[spill]
        movl      %edx, %r14d                                   #87.9
        shll      $19, %r14d                                    #87.9
        shrl      $13, %edx                                     #87.9
        orl       %edx, %r14d                                   #87.9
        addl      %r14d, %r8d                                   #87.9
        xorl      %r8d, %r12d                                   #87.9
        shll      $7, %ecx                                      #86.9
        shrl      $25, %esi                                     #86.9
        orl       %esi, %ecx                                    #86.9
        movl      %r13d, 600(%rsp)                              #86.9[spill]
        lea       (%r12,%rax), %edx                             #87.9
        addl      %r12d, %eax                                   #87.9
        shll      $11, %edx                                     #87.9
        shrl      $21, %eax                                     #87.9
        orl       %eax, %edx                                    #87.9
        addl      %edx, %ebx                                    #87.9
        xorl      %ebx, %r14d                                   #87.9
        movl      128(%rsp), %r13d                              #88.9[spill]
        addl      %r14d, %r8d                                   #87.9
        addl      %ecx, %r13d                                   #88.9
        movl      %r8d, %eax                                    #87.9
        movl      56(%rsp), %esi                                #88.9[spill]
        xorl      %r13d, %esi                                   #88.9
        movl      %edi, 296(%rsp)                               #86.9[spill]
        movl      512(%rsp), %edi                               #88.9[spill]
        shll      $7, %eax                                      #87.9
        addl      %esi, %edi                                    #88.9
        shrl      $25, %r8d                                     #87.9
        orl       %r8d, %eax                                    #87.9
        movl      %edi, %r8d                                    #88.9
        shll      $19, %r8d                                     #88.9
        addl      %eax, %edx                                    #89.9
        shrl      $13, %edi                                     #88.9
        xorl      %edx, %r11d                                   #89.9
        orl       %edi, %r8d                                    #88.9
        addl      %r8d, %r15d                                   #88.9
        xorl      %r15d, %ecx                                   #88.9
        lea       (%rcx,%r13), %edi                             #88.9
        addl      %ecx, %r13d                                   #88.9
        shll      $11, %edi                                     #88.9
        shrl      $21, %r13d                                    #88.9
        orl       %r13d, %edi                                   #88.9
        addl      %edi, %esi                                    #88.9
        xorl      %esi, %r8d                                    #88.9
        addl      %r8d, %r15d                                   #88.9
        movl      568(%rsp), %r13d                              #89.9[spill]
        movl      %r8d, 312(%rsp)                               #88.9[spill]
        movl      %r15d, %r8d                                   #88.9
        shll      $7, %r8d                                      #88.9
        shrl      $25, %r15d                                    #88.9
        orl       %r15d, %r8d                                   #88.9
        lea       (%r11,%r13), %r15d                            #89.9
        addl      %r11d, %r13d                                  #89.9
        addl      %r8d, %edi                                    #90.9
        shll      $19, %r15d                                    #89.9
        xorl      %edi, %r10d                                   #90.9
        shrl      $13, %r13d                                    #89.9
        orl       %r13d, %r15d                                  #89.9
        movl      552(%rsp), %r13d                              #89.9[spill]
        addl      %r15d, %r13d                                  #89.9
        xorl      %r13d, %eax                                   #89.9
        addl      %eax, %edx                                    #89.9
        movl      %eax, 616(%rsp)                               #89.9[spill]
        movl      %edx, %eax                                    #89.9
        shll      $11, %eax                                     #89.9
        shrl      $21, %edx                                     #89.9
        orl       %edx, %eax                                    #89.9
        lea       (%r10,%r9), %edx                              #90.9
        addl      %eax, %r11d                                   #89.9
        addl      %r10d, %r9d                                   #90.9
        xorl      %r11d, %r15d                                  #89.9
        shll      $19, %edx                                     #90.9
        shrl      $13, %r9d                                     #90.9
        orl       %r9d, %edx                                    #90.9
        movl      %r15d, 328(%rsp)                              #89.9[spill]
        movl      %eax, 120(%rsp)                               #89.9[spill]
        lea       (%r13,%r15), %eax                             #89.9
        addl      %r15d, %r13d                                  #89.9
        movl      576(%rsp), %r15d                              #90.9[spill]
        addl      %edx, %r15d                                   #90.9
        xorl      %r15d, %r8d                                   #90.9
        addl      %r8d, %edi                                    #90.9
        movl      %edi, %r9d                                    #90.9
        shll      $11, %r9d                                     #90.9
        shrl      $21, %edi                                     #90.9
        orl       %edi, %r9d                                    #90.9
        addl      %r9d, %r10d                                   #90.9
        xorl      %r10d, %edx                                   #90.9
        shll      $7, %eax                                      #89.9
        shrl      $25, %r13d                                    #89.9
        orl       %r13d, %eax                                   #89.9
        movl      536(%rsp), %r13d                              #91.9[spill]
        lea       (%r15,%rdx), %edi                             #90.9
        addl      %edx, %r15d                                   #90.9
        addl      %eax, %r13d                                   #91.9
        shll      $7, %edi                                      #90.9
        xorl      %r13d, %ebx                                   #91.9
        shrl      $25, %r15d                                    #90.9
        orl       %r15d, %edi                                   #90.9
        movl      592(%rsp), %r15d                              #91.9[spill]
        movl      %edx, 376(%rsp)                               #90.9[spill]
        movl      %r9d, 136(%rsp)                               #90.9[spill]
        movl      584(%rsp), %r9d                               #91.9[spill]
        lea       (%rbx,%r15), %edx                             #91.9
        addl      %ebx, %r15d                                   #91.9
        shll      $19, %edx                                     #91.9
        shrl      $13, %r15d                                    #91.9
        orl       %r15d, %edx                                   #91.9
        addl      %edx, %r9d                                    #91.9
        xorl      %r9d, %eax                                    #91.9
        movl      %r10d, 48(%rsp)                               #90.9[spill]
        movl      544(%rsp), %r10d                              #92.9[spill]
        addl      %edi, %r10d                                   #92.9
        xorl      %r10d, %esi                                   #92.9
        lea       (%r13,%rax), %r15d                            #91.9
        addl      %eax, %r13d                                   #91.9
        shll      $11, %r15d                                    #91.9
        shrl      $21, %r13d                                    #91.9
        orl       %r13d, %r15d                                  #91.9
        addl      %r15d, %ebx                                   #91.9
        movl      %ebx, 104(%rsp)                               #91.9[spill]
        xorl      %ebx, %edx                                    #91.9
        movl      608(%rsp), %ebx                               #92.9[spill]
        movl      %r15d, 152(%rsp)                              #91.9[spill]
        movl      %eax, 336(%rsp)                               #91.9[spill]
        movl      560(%rsp), %eax                               #93.9[spill]
        lea       (%rsi,%rbx), %r15d                            #92.9
        addl      %esi, %ebx                                    #92.9
        lea       (%r9,%rdx), %r13d                             #91.9
        shll      $19, %r15d                                    #92.9
        addl      %edx, %r9d                                    #91.9
        shrl      $13, %ebx                                     #92.9
        orl       %ebx, %r15d                                   #92.9
        movl      600(%rsp), %ebx                               #92.9[spill]
        addl      %r15d, %ebx                                   #92.9
        xorl      %ebx, %edi                                    #92.9
        shll      $7, %r13d                                     #91.9
        shrl      $25, %r9d                                     #91.9
        orl       %r9d, %r13d                                   #91.9
        addl      %r13d, %eax                                   #93.9
        lea       (%r10,%rdi), %r9d                             #92.9
        addl      %edi, %r10d                                   #92.9
        shll      $11, %r9d                                     #92.9
        shrl      $21, %r10d                                    #92.9
        orl       %r10d, %r9d                                   #92.9
        addl      %r9d, %esi                                    #92.9
        movl      %edx, 440(%rsp)                               #91.9[spill]
        xorl      %esi, %r15d                                   #92.9
        movl      64(%rsp), %edx                                #93.9[spill]
        xorl      %eax, %edx                                    #93.9
        movl      %edi, 392(%rsp)                               #92.9[spill]
        movl      %r15d, 416(%rsp)                              #92.9[spill]
        lea       (%rbx,%r15), %edi                             #92.9
        addl      %r15d, %ebx                                   #92.9
        shll      $7, %edi                                      #92.9
        lea       (%rdx,%r14), %r15d                            #93.9
        addl      %edx, %r14d                                   #93.9
        shll      $19, %r15d                                    #93.9
        shrl      $13, %r14d                                    #93.9
        orl       %r14d, %r15d                                  #93.9
        addl      %r15d, %r12d                                  #93.9
        xorl      %r12d, %r13d                                  #93.9
        shrl      $25, %ebx                                     #92.9
        orl       %ebx, %edi                                    #92.9
        movl      248(%rsp), %r10d                              #94.9[spill]
        addl      %edi, %r10d                                   #94.9
        lea       (%rax,%r13), %r14d                            #93.9
        addl      %r13d, %eax                                   #93.9
        shll      $11, %r14d                                    #93.9
        shrl      $21, %eax                                     #93.9
        orl       %eax, %r14d                                   #93.9
        addl      %r14d, %edx                                   #93.9
        xorl      %edx, %r15d                                   #93.9
        movl      72(%rsp), %ebx                                #94.9[spill]
        movl      %r9d, 184(%rsp)                               #92.9[spill]
        xorl      %r10d, %ebx                                   #94.9
        movl      %edi, 168(%rsp)                               #92.9[spill]
        movl      %r10d, 248(%rsp)                              #94.9[spill]
        lea       (%r12,%r15), %eax                             #93.9
        addl      %r15d, %r12d                                  #93.9
        shll      $7, %eax                                      #93.9
        shrl      $25, %r12d                                    #93.9
        orl       %r12d, %eax                                   #93.9
        movl      %eax, 272(%rsp)                               #93.9[spill]
        movl      %r14d, 232(%rsp)                              #93.9[spill]
        movl      80(%rsp), %edi                                #93.9[spill]
        movl      88(%rsp), %eax                                #93.9[spill]
        movl      616(%rsp), %r12d                              #93.9[spill]
        movl      48(%rsp), %r9d                                #93.9[spill]
        movl      104(%rsp), %r10d                              #93.9[spill]
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r13d r15d ymm0
..B4.10:                        # Preds ..B4.11
                                # Execution count [1.00e+00]
        movl      %esi, 748(%rsp)                               #92.9
        movl      416(%rsp), %esi                               #92.9[spill]
        movl      %esi, 728(%rsp)                               #92.9
        movl      312(%rsp), %esi                               #94.9[spill]
        movl      120(%rsp), %r14d                              #89.9[spill]
        movl      %r14d, 700(%rsp)                              #89.9
        movl      %r9d, 744(%rsp)                               #90.9
        lea       (%rbx,%rsi), %r14d                            #94.9
        addl      %ebx, %esi                                    #94.9
        shll      $19, %r14d                                    #94.9
        shrl      $13, %esi                                     #94.9
        movl      376(%rsp), %r9d                               #90.9[spill]
        orl       %esi, %r14d                                   #94.9
        movl      %r10d, 684(%rsp)                              #91.9
        addl      %r14d, %ecx                                   #94.9
        movl      440(%rsp), %r10d                              #91.9[spill]
        movl      %r9d, 724(%rsp)                               #90.9
        movl      336(%rsp), %r9d                               #91.9[spill]
        movl      %r10d, 664(%rsp)                              #91.9
        movl      184(%rsp), %r10d                              #92.9[spill]
        movl      %r9d, 640(%rsp)                               #91.9
        movl      392(%rsp), %r9d                               #92.9[spill]
        movl      %r10d, 752(%rsp)                              #92.9
        movl      %r11d, 680(%rsp)                              #89.9
        movl      168(%rsp), %r10d                              #94.9[spill]
        movl      328(%rsp), %r11d                              #89.9[spill]
        xorl      %ecx, %r10d                                   #94.9
        movl      %r9d, 704(%rsp)                               #92.9
        movl      248(%rsp), %r9d                               #94.9[spill]
        movl      %r11d, 660(%rsp)                              #89.9
        movl      136(%rsp), %r11d                              #90.9[spill]
        movl      %r11d, 764(%rsp)                              #90.9
        movl      152(%rsp), %r11d                              #91.9[spill]
        movl      %r11d, 688(%rsp)                              #91.9
        lea       (%r9,%r10), %r11d                             #94.9
        movl      %r10d, 708(%rsp)                              #94.9
        addl      %r9d, %r10d                                   #94.9
        shll      $11, %r11d                                    #94.9
        shrl      $21, %r10d                                    #94.9
        orl       %r10d, %r11d                                  #94.9
        movl      %edx, 672(%rsp)                               #93.9
        addl      %r11d, %ebx                                   #94.9
        movl      %r15d, 668(%rsp)                              #93.9
        xorl      %ebx, %r14d                                   #94.9
        movl      264(%rsp), %r15d                              #95.9[spill]
        movl      272(%rsp), %edx                               #95.9[spill]
        addl      %edx, %r15d                                   #95.9
        xorl      %r15d, %edi                                   #95.9
        movl      200(%rsp), %esi                               #95.9[spill]
        movl      %ebx, 736(%rsp)                               #94.9
        lea       (%rcx,%r14), %ebx                             #94.9
        movl      %r14d, 732(%rsp)                              #94.9
        addl      %ecx, %r14d                                   #94.9
        shll      $7, %ebx                                      #94.9
        lea       (%rsi,%rdi), %ecx                             #95.9
        addl      %edi, %esi                                    #95.9
        shll      $19, %ecx                                     #95.9
        shrl      $13, %esi                                     #95.9
        orl       %esi, %ecx                                    #95.9
        addl      %ecx, %r12d                                   #95.9
        xorl      %r12d, %edx                                   #95.9
        movl      %edx, 648(%rsp)                               #95.9
        shrl      $25, %r14d                                    #94.9
        orl       %r14d, %ebx                                   #94.9
        movl      296(%rsp), %r10d                              #96.9[spill]
        lea       (%r15,%rdx), %r9d                             #95.9
        addl      %r15d, %edx                                   #95.9
        addl      %ebx, %r10d                                   #96.9
        shll      $11, %r9d                                     #95.9
        xorl      %r10d, %eax                                   #96.9
        shrl      $21, %edx                                     #95.9
        orl       %edx, %r9d                                    #95.9
        addl      %r9d, %edi                                    #95.9
        movl      %edi, 676(%rsp)                               #95.9
        xorl      %edi, %ecx                                    #95.9
        movl      216(%rsp), %edi                               #96.9[spill]
        movl      %ecx, 656(%rsp)                               #95.9
        movl      %r13d, 644(%rsp)                              #93.9
        movl      232(%rsp), %r13d                              #93.9[spill]
        lea       (%rdi,%rax), %esi                             #96.9
        addl      %eax, %edi                                    #96.9
        shll      $19, %esi                                     #96.9
        shrl      $13, %edi                                     #96.9
        orl       %edi, %esi                                    #96.9
        addl      %esi, %r8d                                    #96.9
        xorl      %r8d, %ebx                                    #96.9
        movl      %ebx, 712(%rsp)                               #96.9
        movl      %r13d, 692(%rsp)                              #93.9
        movl      %r11d, 756(%rsp)                              #94.9
        movl      %r9d, 696(%rsp)                               #95.9
        lea       (%r10,%rbx), %edx                             #96.9
        addl      %r10d, %ebx                                   #96.9
        shll      $11, %edx                                     #96.9
        shrl      $21, %ebx                                     #96.9
        orl       %ebx, %edx                                    #96.9
        addl      %edx, %eax                                    #96.9
        xorl      %eax, %esi                                    #96.9
        movl      %eax, 740(%rsp)                               #96.9
        lea       (%r12,%rcx), %eax                             #95.9
        movl      %esi, 720(%rsp)                               #96.9
        addl      %r12d, %ecx                                   #95.9
        shll      $7, %eax                                      #95.9
        shrl      $25, %ecx                                     #95.9
        lea       (%r8,%rsi), %r12d                             #96.9
        addl      %r8d, %esi                                    #96.9
        orl       %ecx, %eax                                    #95.9
        shll      $7, %r12d                                     #96.9
        shrl      $25, %esi                                     #96.9
        orl       %esi, %r12d                                   #96.9
        movl      %edx, 760(%rsp)                               #96.9
        movl      %eax, 652(%rsp)                               #95.9
        xorl      %eax, %eax                                    #98.5
        movl      %r12d, 716(%rsp)                              #96.9
        movq      8(%rsp), %rbx                                 #98.5[spill]
                                # LOE rax rbx ymm0
..B4.2:                         # Preds ..B4.2 ..B4.10
                                # Execution count [1.60e+01]
        movl      %eax, %edx                                    #101.9
        movl      (%rbx,%rax,4), %ecx                           #100.16
        addl      $16, %edx                                     #101.21
        addl      %ecx, 640(%rsp,%rax,4)                        #100.16
        incq      %rax                                          #98.5
        addl      %ecx, 640(%rsp,%rdx,4)                        #101.21
        cmpq      $4, %rax                                      #98.5
        jb        ..B4.2        # Prob 93%                      #98.5
                                # LOE rax rbx ymm0
..B4.3:                         # Preds ..B4.2
                                # Execution count [1.00e+00]
        movl      16(%rsp), %edx                                #100.16[spill]
        movl      720(%rsp), %eax                               #101.21
        movl      32(%rsp), %ebx                                #100.16[spill]
        movl      40(%rsp), %esi                                #100.16[spill]
        movl      24(%rsp), %edi                                #100.16[spill]
        lea       1(%rax,%rdx), %ecx                            #101.21
        addl      %edx, 656(%rsp)                               #100.16
        addl      %ebx, 660(%rsp)                               #100.16
        addl      %ebx, 724(%rsp)                               #101.21
        addl      %esi, 664(%rsp)                               #100.16
        addl      %esi, 728(%rsp)                               #101.21
        addl      %edi, 668(%rsp)                               #100.16
        addl      %edi, 732(%rsp)                               #101.21
        vpaddd    672(%rsp), %ymm0, %ymm1                       #100.16
        vpaddd    736(%rsp), %ymm0, %ymm2                       #101.21
        movl      %ecx, 720(%rsp)                               #101.9
                                # LOE ymm1 ymm2
..B4.7:                         # Preds ..B4.3
                                # Execution count [5.00e-01]
        movq      (%rsp), %rax                                  #105.9[spill]
        vmovdqu   640(%rsp), %ymm0                              #105.9
        vmovdqu   %ymm1, 32(%rax)                               #105.9
        vmovdqu   704(%rsp), %ymm1                              #106.9
        vmovdqu   %ymm2, 96(%rax)                               #106.9
        vmovdqu   %ymm0, (%rax)                                 #105.9
        vmovdqu   %ymm1, 64(%rax)                               #106.9
                                # LOE
..B4.6:                         # Preds ..B4.7
                                # Execution count [1.00e+00]
        vzeroupper                                              #108.1
        addq      $792, %rsp                                    #108.1
	.cfi_restore 3
        popq      %rbx                                          #108.1
	.cfi_restore 15
        popq      %r15                                          #108.1
	.cfi_restore 14
        popq      %r14                                          #108.1
	.cfi_restore 13
        popq      %r13                                          #108.1
	.cfi_restore 12
        popq      %r12                                          #108.1
        movq      %rbp, %rsp                                    #108.1
        popq      %rbp                                          #108.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #108.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	xote,@function
	.size	xote,.-xote
..LNxote.3:
	.data
# -- End  xote
	.text
.L_2__routine_start_forro_1_4:
# -- Begin  forro_1
	.text
# mark_begin;
       .align    16,0x90
# --- forro_1(uint8_t *, const uint32_t *)
forro_1:
# parameter 1: %rdi
# parameter 2: %rsi
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_1.620:
..L621:
                                                        #43.1
        pushq     %rbp                                          #43.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #43.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #43.1
        pushq     %r12                                          #43.1
        pushq     %r13                                          #43.1
        pushq     %r14                                          #43.1
        pushq     %r15                                          #43.1
        pushq     %rbx                                          #43.1
        subq      $216, %rsp                                    #43.1
        movq      %rsi, %r9                                     #43.1
        movq      %rdi, 64(%rsp)                                #43.1[spill]
        movl      12(%r9), %r10d                                #48.16
        movl      48(%r9), %eax                                 #48.16
        addl      %r10d, %eax                                   #51.9
        movl      24(%r9), %r11d                                #48.16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movl      32(%r9), %r14d                                #48.16
        xorl      %eax, %r14d                                   #51.9
        movl      %r11d, 128(%rsp)                              #48.16[spill]
        movl      16(%r9), %r13d                                #48.16
        movl      8(%r9), %edx                                  #48.16
        addl      %r14d, %r13d                                  #51.9
        movl      28(%r9), %r11d                                #48.16
        movl      %edx, 136(%rsp)                               #48.16[spill]
        movl      %r11d, 144(%rsp)                              #48.16[spill]
        movl      (%r9), %r15d                                  #48.16
        movl      20(%r9), %esi                                 #48.16
        movl      4(%r9), %ecx                                  #48.16
        vmovdqu   (%r9), %ymm0                                  #48.16
        vmovdqu   32(%r9), %ymm1                                #48.16
        vmovdqu   %ymm0, (%rsp)                                 #48.9
        vmovdqu   %ymm1, 32(%rsp)                               #48.9
        movl      52(%r9), %r8d                                 #48.16
        movl      36(%r9), %r12d                                #48.16
        movl      56(%r9), %edx                                 #48.16
        movl      40(%r9), %r11d                                #48.16
        movl      60(%r9), %ebx                                 #48.16
        movl      44(%r9), %edi                                 #48.16
        movl      %r13d, %r9d                                   #51.9
        shll      $19, %r9d                                     #51.9
        shrl      $13, %r13d                                    #51.9
        orl       %r13d, %r9d                                   #51.9
        addl      %r9d, %r15d                                   #51.9
        xorl      %r15d, %r10d                                  #51.9
        addl      %r10d, %eax                                   #51.9
        movl      %eax, %r13d                                   #51.9
        shll      $11, %r13d                                    #51.9
        shrl      $21, %eax                                     #51.9
        orl       %eax, %r13d                                   #51.9
        addl      %r13d, %r14d                                  #51.9
        xorl      %r14d, %r9d                                   #51.9
        movl      %edi, 72(%rsp)                                #48.16[spill]
        movl      %r9d, 152(%rsp)                               #51.9[spill]
        lea       (%r9,%r15), %eax                              #51.9
        addl      %r9d, %r15d                                   #51.9
        shll      $7, %eax                                      #51.9
        shrl      $25, %r15d                                    #51.9
        orl       %r15d, %eax                                   #51.9
        addl      %eax, %r8d                                    #52.9
        xorl      %r8d, %r12d                                   #52.9
        addl      %r12d, %esi                                   #52.9
        movl      %esi, %edi                                    #52.9
        shll      $19, %edi                                     #52.9
        shrl      $13, %esi                                     #52.9
        orl       %esi, %edi                                    #52.9
        addl      %edi, %ecx                                    #52.9
        xorl      %ecx, %eax                                    #52.9
        movl      136(%rsp), %r15d                              #53.9[spill]
        lea       (%rax,%r8), %r9d                              #52.9
        addl      %eax, %r8d                                    #52.9
        shll      $11, %r9d                                     #52.9
        shrl      $21, %r8d                                     #52.9
        orl       %r8d, %r9d                                    #52.9
        addl      %r9d, %r12d                                   #52.9
        xorl      %r12d, %edi                                   #52.9
        movl      %r12d, 80(%rsp)                               #52.9[spill]
        lea       (%rdi,%rcx), %r8d                             #52.9
        addl      %edi, %ecx                                    #52.9
        shll      $7, %r8d                                      #52.9
        shrl      $25, %ecx                                     #52.9
        orl       %ecx, %r8d                                    #52.9
        addl      %r8d, %edx                                    #53.9
        xorl      %edx, %r11d                                   #53.9
        movl      128(%rsp), %ecx                               #53.9[spill]
        addl      %r11d, %ecx                                   #53.9
        movl      %ecx, %r12d                                   #53.9
        shll      $19, %r12d                                    #53.9
        shrl      $13, %ecx                                     #53.9
        orl       %ecx, %r12d                                   #53.9
        addl      %r12d, %r15d                                  #53.9
        xorl      %r15d, %r8d                                   #53.9
        lea       (%r8,%rdx), %esi                              #53.9
        addl      %r8d, %edx                                    #53.9
        shll      $11, %esi                                     #53.9
        shrl      $21, %edx                                     #53.9
        orl       %edx, %esi                                    #53.9
        addl      %esi, %r11d                                   #53.9
        xorl      %r11d, %r12d                                  #53.9
        movl      %esi, 160(%rsp)                               #53.9[spill]
        movl      72(%rsp), %esi                                #54.9[spill]
        lea       (%r12,%r15), %edx                             #53.9
        addl      %r12d, %r15d                                  #53.9
        shll      $7, %edx                                      #53.9
        shrl      $25, %r15d                                    #53.9
        orl       %r15d, %edx                                   #53.9
        addl      %edx, %ebx                                    #54.9
        xorl      %ebx, %esi                                    #54.9
        movl      144(%rsp), %r15d                              #54.9[spill]
        addl      %esi, %r15d                                   #54.9
        movl      %r15d, %ecx                                   #54.9
        shll      $19, %ecx                                     #54.9
        shrl      $13, %r15d                                    #54.9
        orl       %r15d, %ecx                                   #54.9
        addl      %ecx, %r10d                                   #54.9
        xorl      %r10d, %edx                                   #54.9
        lea       (%rdx,%rbx), %r15d                            #54.9
        addl      %edx, %ebx                                    #54.9
        shll      $11, %r15d                                    #54.9
        shrl      $21, %ebx                                     #54.9
        orl       %ebx, %r15d                                   #54.9
        addl      %r15d, %esi                                   #54.9
        xorl      %esi, %ecx                                    #54.9
        addl      %ecx, %r10d                                   #54.9
        movl      %r10d, %ebx                                   #54.9
        shll      $7, %ebx                                      #54.9
        shrl      $25, %r10d                                    #54.9
        orl       %r10d, %ebx                                   #54.9
        addl      %ebx, %r15d                                   #55.9
        xorl      %r15d, %r11d                                  #55.9
        lea       (%r11,%rdi), %r10d                            #55.9
        addl      %r11d, %edi                                   #55.9
        shll      $19, %r10d                                    #55.9
        shrl      $13, %edi                                     #55.9
        orl       %edi, %r10d                                   #55.9
        addl      %r10d, %eax                                   #55.9
        xorl      %eax, %ebx                                    #55.9
        addl      %ebx, %r15d                                   #55.9
        movl      %r15d, %edi                                   #55.9
        shll      $11, %edi                                     #55.9
        shrl      $21, %r15d                                    #55.9
        orl       %r15d, %edi                                   #55.9
        addl      %edi, %r11d                                   #55.9
        xorl      %r11d, %r10d                                  #55.9
        movl      %edi, 168(%rsp)                               #55.9[spill]
        lea       (%rax,%r10), %edi                             #55.9
        addl      %r10d, %eax                                   #55.9
        shll      $7, %edi                                      #55.9
        shrl      $25, %eax                                     #55.9
        orl       %eax, %edi                                    #55.9
        addl      %edi, %r13d                                   #56.9
        xorl      %r13d, %esi                                   #56.9
        lea       (%rsi,%r12), %eax                             #56.9
        addl      %esi, %r12d                                   #56.9
        shll      $19, %eax                                     #56.9
        shrl      $13, %r12d                                    #56.9
        orl       %r12d, %eax                                   #56.9
        addl      %eax, %r8d                                    #56.9
        xorl      %r8d, %edi                                    #56.9
        lea       (%r13,%rdi), %r12d                            #56.9
        addl      %edi, %r13d                                   #56.9
        shll      $11, %r12d                                    #56.9
        shrl      $21, %r13d                                    #56.9
        orl       %r13d, %r12d                                  #56.9
        addl      %r12d, %esi                                   #56.9
        xorl      %esi, %eax                                    #56.9
        movl      %esi, 72(%rsp)                                #56.9[spill]
        lea       (%r8,%rax), %esi                              #56.9
        addl      %eax, %r8d                                    #56.9
        shll      $7, %esi                                      #56.9
        shrl      $25, %r8d                                     #56.9
        orl       %r8d, %esi                                    #56.9
        addl      %esi, %r9d                                    #57.9
        xorl      %r9d, %r14d                                   #57.9
        lea       (%r14,%rcx), %r13d                            #57.9
        addl      %r14d, %ecx                                   #57.9
        shll      $19, %r13d                                    #57.9
        shrl      $13, %ecx                                     #57.9
        orl       %ecx, %r13d                                   #57.9
        addl      %r13d, %edx                                   #57.9
        xorl      %edx, %esi                                    #57.9
        movl      80(%rsp), %ecx                                #58.9[spill]
        lea       (%r9,%rsi), %r8d                              #57.9
        addl      %esi, %r9d                                    #57.9
        shll      $11, %r8d                                     #57.9
        shrl      $21, %r9d                                     #57.9
        orl       %r9d, %r8d                                    #57.9
        addl      %r8d, %r14d                                   #57.9
        xorl      %r14d, %r13d                                  #57.9
        movl      160(%rsp), %r9d                               #58.9[spill]
        movl      %r13d, 176(%rsp)                              #57.9[spill]
        lea       (%rdx,%r13), %r15d                            #57.9
        addl      %r13d, %edx                                   #57.9
        shll      $7, %r15d                                     #57.9
        shrl      $25, %edx                                     #57.9
        orl       %edx, %r15d                                   #57.9
        addl      %r15d, %r9d                                   #58.9
        xorl      %r9d, %ecx                                    #58.9
        movl      152(%rsp), %r13d                              #58.9[spill]
        lea       (%rcx,%r13), %edx                             #58.9
        addl      %ecx, %r13d                                   #58.9
        shll      $19, %edx                                     #58.9
        shrl      $13, %r13d                                    #58.9
        orl       %r13d, %edx                                   #58.9
        addl      %edx, %ebx                                    #58.9
        xorl      %ebx, %r15d                                   #58.9
        lea       (%r9,%r15), %r13d                             #58.9
        addl      %r15d, %r9d                                   #58.9
        shll      $11, %r13d                                    #58.9
        shrl      $21, %r9d                                     #58.9
        orl       %r9d, %r13d                                   #58.9
        addl      %r13d, %ecx                                   #58.9
        xorl      %ecx, %edx                                    #58.9
        lea       (%rbx,%rdx), %r9d                             #58.9
        addl      %edx, %ebx                                    #58.9
        shll      $7, %r9d                                      #58.9
        shrl      $25, %ebx                                     #58.9
        orl       %ebx, %r9d                                    #58.9
        addl      %r9d, %r12d                                   #51.9
        xorl      %r12d, %r14d                                  #51.9
        addl      %r14d, %edx                                   #51.9
        movl      %edx, %ebx                                    #51.9
        shll      $19, %ebx                                     #51.9
        shrl      $13, %edx                                     #51.9
        orl       %edx, %ebx                                    #51.9
        addl      %ebx, %edi                                    #51.9
        xorl      %edi, %r9d                                    #51.9
        addl      %r9d, %r12d                                   #51.9
        movl      %r12d, %edx                                   #51.9
        shll      $11, %edx                                     #51.9
        shrl      $21, %r12d                                    #51.9
        orl       %r12d, %edx                                   #51.9
        addl      %edx, %r14d                                   #51.9
        xorl      %r14d, %ebx                                   #51.9
        movl      %ebx, 184(%rsp)                               #51.9[spill]
        lea       (%rbx,%rdi), %r12d                            #51.9
        addl      %ebx, %edi                                    #51.9
        shll      $7, %r12d                                     #51.9
        shrl      $25, %edi                                     #51.9
        orl       %edi, %r12d                                   #51.9
        addl      %r12d, %r8d                                   #52.9
        xorl      %r8d, %ecx                                    #52.9
        addl      %ecx, %r10d                                   #52.9
        movl      %r10d, %edi                                   #52.9
        shll      $19, %edi                                     #52.9
        shrl      $13, %r10d                                    #52.9
        orl       %r10d, %edi                                   #52.9
        addl      %edi, %esi                                    #52.9
        xorl      %esi, %r12d                                   #52.9
        movl      168(%rsp), %ebx                               #54.9[spill]
        lea       (%r12,%r8), %r10d                             #52.9
        addl      %r12d, %r8d                                   #52.9
        shll      $11, %r10d                                    #52.9
        shrl      $21, %r8d                                     #52.9
        orl       %r8d, %r10d                                   #52.9
        addl      %r10d, %ecx                                   #52.9
        xorl      %ecx, %edi                                    #52.9
        movl      %ecx, 80(%rsp)                                #52.9[spill]
        lea       (%rdi,%rsi), %r8d                             #52.9
        addl      %edi, %esi                                    #52.9
        shll      $7, %r8d                                      #52.9
        shrl      $25, %esi                                     #52.9
        orl       %esi, %r8d                                    #52.9
        addl      %r8d, %r13d                                   #53.9
        xorl      %r13d, %r11d                                  #53.9
        addl      %r11d, %eax                                   #53.9
        movl      %eax, %ecx                                    #53.9
        shll      $19, %ecx                                     #53.9
        shrl      $13, %eax                                     #53.9
        orl       %eax, %ecx                                    #53.9
        addl      %ecx, %r15d                                   #53.9
        xorl      %r15d, %r8d                                   #53.9
        movl      72(%rsp), %esi                                #54.9[spill]
        lea       (%r8,%r13), %eax                              #53.9
        addl      %r8d, %r13d                                   #53.9
        shll      $11, %eax                                     #53.9
        shrl      $21, %r13d                                    #53.9
        orl       %r13d, %eax                                   #53.9
        addl      %eax, %r11d                                   #53.9
        xorl      %r11d, %ecx                                   #53.9
        movl      %eax, 192(%rsp)                               #53.9[spill]
        lea       (%rcx,%r15), %eax                             #53.9
        addl      %ecx, %r15d                                   #53.9
        shll      $7, %eax                                      #53.9
        shrl      $25, %r15d                                    #53.9
        orl       %r15d, %eax                                   #53.9
        addl      %eax, %ebx                                    #54.9
        xorl      %ebx, %esi                                    #54.9
        movl      176(%rsp), %r15d                              #54.9[spill]
        addl      %esi, %r15d                                   #54.9
        movl      %r15d, %r13d                                  #54.9
        shll      $19, %r13d                                    #54.9
        shrl      $13, %r15d                                    #54.9
        orl       %r15d, %r13d                                  #54.9
        addl      %r13d, %r9d                                   #54.9
        xorl      %r9d, %eax                                    #54.9
        lea       (%rax,%rbx), %r15d                            #54.9
        addl      %eax, %ebx                                    #54.9
        shll      $11, %r15d                                    #54.9
        shrl      $21, %ebx                                     #54.9
        orl       %ebx, %r15d                                   #54.9
        addl      %r15d, %esi                                   #54.9
        xorl      %esi, %r13d                                   #54.9
        addl      %r13d, %r9d                                   #54.9
        movl      %r9d, %ebx                                    #54.9
        shll      $7, %ebx                                      #54.9
        shrl      $25, %r9d                                     #54.9
        orl       %r9d, %ebx                                    #54.9
        addl      %ebx, %r15d                                   #55.9
        xorl      %r15d, %r11d                                  #55.9
        lea       (%r11,%rdi), %r9d                             #55.9
        addl      %r11d, %edi                                   #55.9
        shll      $19, %r9d                                     #55.9
        shrl      $13, %edi                                     #55.9
        orl       %edi, %r9d                                    #55.9
        addl      %r9d, %r12d                                   #55.9
        xorl      %r12d, %ebx                                   #55.9
        addl      %ebx, %r15d                                   #55.9
        movl      %r15d, %edi                                   #55.9
        shll      $11, %edi                                     #55.9
        shrl      $21, %r15d                                    #55.9
        orl       %r15d, %edi                                   #55.9
        addl      %edi, %r11d                                   #55.9
        xorl      %r11d, %r9d                                   #55.9
        movl      %edi, 88(%rsp)                                #55.9[spill]
        lea       (%r12,%r9), %edi                              #55.9
        addl      %r9d, %r12d                                   #55.9
        shll      $7, %edi                                      #55.9
        shrl      $25, %r12d                                    #55.9
        orl       %r12d, %edi                                   #55.9
        addl      %edi, %edx                                    #56.9
        xorl      %edx, %esi                                    #56.9
        lea       (%rsi,%rcx), %r12d                            #56.9
        addl      %esi, %ecx                                    #56.9
        shll      $19, %r12d                                    #56.9
        shrl      $13, %ecx                                     #56.9
        orl       %ecx, %r12d                                   #56.9
        addl      %r12d, %r8d                                   #56.9
        xorl      %r8d, %edi                                    #56.9
        lea       (%rdx,%rdi), %r15d                            #56.9
        addl      %edi, %edx                                    #56.9
        shll      $11, %r15d                                    #56.9
        shrl      $21, %edx                                     #56.9
        orl       %edx, %r15d                                   #56.9
        addl      %r15d, %esi                                   #56.9
        xorl      %esi, %r12d                                   #56.9
        movl      %r12d, 120(%rsp)                              #56.9[spill]
        lea       (%r8,%r12), %edx                              #56.9
        addl      %r12d, %r8d                                   #56.9
        shll      $7, %edx                                      #56.9
        shrl      $25, %r8d                                     #56.9
        orl       %r8d, %edx                                    #56.9
        addl      %edx, %r10d                                   #57.9
        xorl      %r10d, %r14d                                  #57.9
        movl      184(%rsp), %r12d                              #58.9[spill]
        lea       (%r14,%r13), %r8d                             #57.9
        addl      %r14d, %r13d                                  #57.9
        shll      $19, %r8d                                     #57.9
        shrl      $13, %r13d                                    #57.9
        orl       %r13d, %r8d                                   #57.9
        addl      %r8d, %eax                                    #57.9
        xorl      %eax, %edx                                    #57.9
        lea       (%r10,%rdx), %r13d                            #57.9
        addl      %edx, %r10d                                   #57.9
        shll      $11, %r13d                                    #57.9
        shrl      $21, %r10d                                    #57.9
        orl       %r10d, %r13d                                  #57.9
        addl      %r13d, %r14d                                  #57.9
        xorl      %r14d, %r8d                                   #57.9
        movl      %r8d, 200(%rsp)                               #57.9[spill]
        lea       (%rax,%r8), %r10d                             #57.9
        addl      %r8d, %eax                                    #57.9
        shll      $7, %r10d                                     #57.9
        shrl      $25, %eax                                     #57.9
        orl       %eax, %r10d                                   #57.9
        movl      192(%rsp), %r8d                               #58.9[spill]
        addl      %r10d, %r8d                                   #58.9
        movl      80(%rsp), %eax                                #58.9[spill]
        xorl      %r8d, %eax                                    #58.9
        lea       (%rax,%r12), %ecx                             #58.9
        addl      %eax, %r12d                                   #58.9
        shll      $19, %ecx                                     #58.9
        shrl      $13, %r12d                                    #58.9
        orl       %r12d, %ecx                                   #58.9
        addl      %ecx, %ebx                                    #58.9
        xorl      %ebx, %r10d                                   #58.9
        lea       (%r8,%r10), %r12d                             #58.9
        addl      %r10d, %r8d                                   #58.9
        shll      $11, %r12d                                    #58.9
        shrl      $21, %r8d                                     #58.9
        orl       %r8d, %r12d                                   #58.9
        addl      %r12d, %eax                                   #58.9
        xorl      %eax, %ecx                                    #58.9
        lea       (%rbx,%rcx), %r8d                             #58.9
        addl      %ecx, %ebx                                    #58.9
        shll      $7, %r8d                                      #58.9
        shrl      $25, %ebx                                     #58.9
        orl       %ebx, %r8d                                    #58.9
        addl      %r8d, %r15d                                   #51.9
        xorl      %r15d, %r14d                                  #51.9
        addl      %r14d, %ecx                                   #51.9
        movl      %ecx, %ebx                                    #51.9
        shll      $19, %ebx                                     #51.9
        shrl      $13, %ecx                                     #51.9
        orl       %ecx, %ebx                                    #51.9
        addl      %ebx, %edi                                    #51.9
        xorl      %edi, %r8d                                    #51.9
        addl      %r8d, %r15d                                   #51.9
        movl      %r15d, %ecx                                   #51.9
        shll      $11, %ecx                                     #51.9
        shrl      $21, %r15d                                    #51.9
        orl       %r15d, %ecx                                   #51.9
        addl      %ecx, %r14d                                   #51.9
        xorl      %r14d, %ebx                                   #51.9
        movl      %ecx, 104(%rsp)                               #51.9[spill]
        movl      %ebx, 96(%rsp)                                #51.9[spill]
        lea       (%rbx,%rdi), %ecx                             #51.9
        addl      %ebx, %edi                                    #51.9
        shll      $7, %ecx                                      #51.9
        shrl      $25, %edi                                     #51.9
        orl       %edi, %ecx                                    #51.9
        addl      %ecx, %r13d                                   #52.9
        xorl      %r13d, %eax                                   #52.9
        addl      %eax, %r9d                                    #52.9
        movl      %r9d, %edi                                    #52.9
        shll      $19, %edi                                     #52.9
        shrl      $13, %r9d                                     #52.9
        orl       %r9d, %edi                                    #52.9
        addl      %edi, %edx                                    #52.9
        xorl      %edx, %ecx                                    #52.9
        movl      200(%rsp), %r9d                               #52.9[spill]
        lea       (%rcx,%r13), %ebx                             #52.9
        addl      %ecx, %r13d                                   #52.9
        shll      $11, %ebx                                     #52.9
        shrl      $21, %r13d                                    #52.9
        orl       %r13d, %ebx                                   #52.9
        addl      %ebx, %eax                                    #52.9
        movl      %ebx, 112(%rsp)                               #52.9[spill]
        xorl      %eax, %edi                                    #52.9
                                # LOE eax edx ecx esi edi r8d r9d r10d r11d r12d r14d ymm0 ymm1
..B5.5:                         # Preds ..B5.1
                                # Execution count [1.00e+00]
        lea       (%rdi,%rdx), %ebx                             #52.9
        addl      %edi, %edx                                    #52.9
        shll      $7, %ebx                                      #52.9
        shrl      $25, %edx                                     #52.9
        orl       %edx, %ebx                                    #52.9
        addl      %ebx, %r12d                                   #53.9
        xorl      %r12d, %r11d                                  #53.9
        movl      120(%rsp), %edx                               #53.9[spill]
        addl      %r11d, %edx                                   #53.9
        movl      %edx, %r13d                                   #53.9
        shll      $19, %r13d                                    #53.9
        shrl      $13, %edx                                     #53.9
        orl       %edx, %r13d                                   #53.9
        addl      %r13d, %r10d                                  #53.9
        xorl      %r10d, %ebx                                   #53.9
        lea       (%rbx,%r12), %r15d                            #53.9
        addl      %ebx, %r12d                                   #53.9
        shll      $11, %r15d                                    #53.9
        shrl      $21, %r12d                                    #53.9
        orl       %r12d, %r15d                                  #53.9
        addl      %r15d, %r11d                                  #53.9
        xorl      %r11d, %r13d                                  #53.9
        movl      88(%rsp), %r12d                               #54.9[spill]
        lea       (%r13,%r10), %edx                             #53.9
        addl      %r13d, %r10d                                  #53.9
        shll      $7, %edx                                      #53.9
        shrl      $25, %r10d                                    #53.9
        orl       %r10d, %edx                                   #53.9
        addl      %edx, %r12d                                   #54.9
        xorl      %r12d, %esi                                   #54.9
        addl      %esi, %r9d                                    #54.9
        movl      %r9d, %r10d                                   #54.9
        shll      $19, %r10d                                    #54.9
        shrl      $13, %r9d                                     #54.9
        orl       %r9d, %r10d                                   #54.9
        addl      %r10d, %r8d                                   #54.9
        xorl      %r8d, %edx                                    #54.9
        lea       (%rdx,%r12), %r9d                             #54.9
        addl      %edx, %r12d                                   #54.9
        shll      $11, %r9d                                     #54.9
        shrl      $21, %r12d                                    #54.9
        orl       %r12d, %r9d                                   #54.9
        addl      %r9d, %esi                                    #54.9
        xorl      %esi, %r10d                                   #54.9
        addl      %r10d, %r8d                                   #54.9
        movl      %r8d, %r12d                                   #54.9
        shll      $7, %r12d                                     #54.9
        shrl      $25, %r8d                                     #54.9
        orl       %r8d, %r12d                                   #54.9
        addl      %r12d, %r9d                                   #55.9
        xorl      %r9d, %r11d                                   #55.9
        lea       (%rdi,%r11), %r8d                             #55.9
        addl      %r11d, %edi                                   #55.9
        shll      $19, %r8d                                     #55.9
        shrl      $13, %edi                                     #55.9
        orl       %edi, %r8d                                    #55.9
        addl      %r8d, %ecx                                    #55.9
        xorl      %ecx, %r12d                                   #55.9
        addl      %r12d, %r9d                                   #55.9
        movl      %r9d, %edi                                    #55.9
        shll      $11, %edi                                     #55.9
        shrl      $21, %r9d                                     #55.9
        orl       %r9d, %edi                                    #55.9
        addl      %edi, %r11d                                   #55.9
        xorl      %r11d, %r8d                                   #55.9
        movl      %edi, 168(%rsp)                               #55.9[spill]
        movl      104(%rsp), %edi                               #56.9[spill]
        lea       (%rcx,%r8), %r9d                              #55.9
        addl      %r8d, %ecx                                    #55.9
        shll      $7, %r9d                                      #55.9
        shrl      $25, %ecx                                     #55.9
        orl       %ecx, %r9d                                    #55.9
        addl      %r9d, %edi                                    #56.9
        xorl      %edi, %esi                                    #56.9
        lea       (%rsi,%r13), %ecx                             #56.9
        addl      %esi, %r13d                                   #56.9
        shll      $19, %ecx                                     #56.9
        shrl      $13, %r13d                                    #56.9
        orl       %r13d, %ecx                                   #56.9
        addl      %ecx, %ebx                                    #56.9
        xorl      %ebx, %r9d                                    #56.9
        lea       (%rdi,%r9), %r13d                             #56.9
        addl      %r9d, %edi                                    #56.9
        shll      $11, %r13d                                    #56.9
        shrl      $21, %edi                                     #56.9
        orl       %edi, %r13d                                   #56.9
        addl      %r13d, %esi                                   #56.9
        xorl      %esi, %ecx                                    #56.9
        movl      %esi, 72(%rsp)                                #56.9[spill]
        lea       (%rbx,%rcx), %esi                             #56.9
        addl      %ecx, %ebx                                    #56.9
        shll      $7, %esi                                      #56.9
        shrl      $25, %ebx                                     #56.9
        orl       %ebx, %esi                                    #56.9
        movl      112(%rsp), %ebx                               #57.9[spill]
        addl      %esi, %ebx                                    #57.9
        xorl      %ebx, %r14d                                   #57.9
        lea       (%r14,%r10), %edi                             #57.9
        addl      %r14d, %r10d                                  #57.9
        shll      $19, %edi                                     #57.9
        shrl      $13, %r10d                                    #57.9
        orl       %r10d, %edi                                   #57.9
        addl      %edi, %edx                                    #57.9
        xorl      %edx, %esi                                    #57.9
        lea       (%rbx,%rsi), %r10d                            #57.9
        addl      %esi, %ebx                                    #57.9
        shll      $11, %r10d                                    #57.9
        shrl      $21, %ebx                                     #57.9
        orl       %ebx, %r10d                                   #57.9
        addl      %r10d, %r14d                                  #57.9
        xorl      %r14d, %edi                                   #57.9
        movl      %edi, 176(%rsp)                               #57.9[spill]
        lea       (%rdx,%rdi), %ebx                             #57.9
        addl      %edi, %edx                                    #57.9
        shll      $7, %ebx                                      #57.9
        shrl      $25, %edx                                     #57.9
        orl       %edx, %ebx                                    #57.9
        addl      %ebx, %r15d                                   #58.9
        xorl      %r15d, %eax                                   #58.9
        movl      96(%rsp), %edx                                #58.9[spill]
        lea       (%rdx,%rax), %edi                             #58.9
        addl      %eax, %edx                                    #58.9
        shll      $19, %edi                                     #58.9
        shrl      $13, %edx                                     #58.9
        orl       %edx, %edi                                    #58.9
        addl      %edi, %r12d                                   #58.9
        xorl      %r12d, %ebx                                   #58.9
        lea       (%r15,%rbx), %edx                             #58.9
        addl      %ebx, %r15d                                   #58.9
        shll      $11, %edx                                     #58.9
        shrl      $21, %r15d                                    #58.9
        orl       %r15d, %edx                                   #58.9
        addl      %edx, %eax                                    #58.9
        xorl      %eax, %edi                                    #58.9
        lea       (%r12,%rdi), %r15d                            #58.9
        addl      %edi, %r12d                                   #58.9
        shll      $7, %r15d                                     #58.9
        shrl      $25, %r12d                                    #58.9
        orl       %r12d, %r15d                                  #58.9
        addl      %r15d, %r13d                                  #51.9
        xorl      %r13d, %r14d                                  #51.9
        addl      %r14d, %edi                                   #51.9
        movl      %edi, %r12d                                   #51.9
        shll      $19, %r12d                                    #51.9
        shrl      $13, %edi                                     #51.9
        orl       %edi, %r12d                                   #51.9
        addl      %r12d, %r9d                                   #51.9
        xorl      %r9d, %r15d                                   #51.9
        addl      %r15d, %r13d                                  #51.9
        movl      %r13d, %edi                                   #51.9
        shll      $11, %edi                                     #51.9
        shrl      $21, %r13d                                    #51.9
        orl       %r13d, %edi                                   #51.9
        addl      %edi, %r14d                                   #51.9
        xorl      %r14d, %r12d                                  #51.9
        movl      %r12d, 184(%rsp)                              #51.9[spill]
        lea       (%r12,%r9), %r13d                             #51.9
        addl      %r12d, %r9d                                   #51.9
        shll      $7, %r13d                                     #51.9
        shrl      $25, %r9d                                     #51.9
        orl       %r9d, %r13d                                   #51.9
        addl      %r13d, %r10d                                  #52.9
        xorl      %r10d, %eax                                   #52.9
        addl      %eax, %r8d                                    #52.9
        movl      %r8d, %r12d                                   #52.9
        shll      $19, %r12d                                    #52.9
        shrl      $13, %r8d                                     #52.9
        orl       %r8d, %r12d                                   #52.9
        addl      %r12d, %esi                                   #52.9
        xorl      %esi, %r13d                                   #52.9
        lea       (%r13,%r10), %r8d                             #52.9
        addl      %r13d, %r10d                                  #52.9
        shll      $11, %r8d                                     #52.9
        shrl      $21, %r10d                                    #52.9
        orl       %r10d, %r8d                                   #52.9
        addl      %r8d, %eax                                    #52.9
        xorl      %eax, %r12d                                   #52.9
        movl      %eax, 80(%rsp)                                #52.9[spill]
        lea       (%r12,%rsi), %r10d                            #52.9
        addl      %r12d, %esi                                   #52.9
        shll      $7, %r10d                                     #52.9
        shrl      $25, %esi                                     #52.9
        orl       %esi, %r10d                                   #52.9
        addl      %r10d, %edx                                   #53.9
        xorl      %edx, %r11d                                   #53.9
        addl      %r11d, %ecx                                   #53.9
        movl      %ecx, %r9d                                    #53.9
        shll      $19, %r9d                                     #53.9
        shrl      $13, %ecx                                     #53.9
        orl       %ecx, %r9d                                    #53.9
        addl      %r9d, %ebx                                    #53.9
        xorl      %ebx, %r10d                                   #53.9
        lea       (%r10,%rdx), %eax                             #53.9
        addl      %r10d, %edx                                   #53.9
        shll      $11, %eax                                     #53.9
        shrl      $21, %edx                                     #53.9
        orl       %edx, %eax                                    #53.9
        addl      %eax, %r11d                                   #53.9
        xorl      %r11d, %r9d                                   #53.9
        movl      72(%rsp), %edx                                #54.9[spill]
        movl      %eax, 192(%rsp)                               #53.9[spill]
        movl      176(%rsp), %eax                               #54.9[spill]
        lea       (%r9,%rbx), %esi                              #53.9
        addl      %r9d, %ebx                                    #53.9
        shll      $7, %esi                                      #53.9
        shrl      $25, %ebx                                     #53.9
        orl       %ebx, %esi                                    #53.9
        movl      168(%rsp), %ebx                               #54.9[spill]
        addl      %esi, %ebx                                    #54.9
        xorl      %ebx, %edx                                    #54.9
        addl      %edx, %eax                                    #54.9
        movl      %eax, %ecx                                    #54.9
        shll      $19, %ecx                                     #54.9
        shrl      $13, %eax                                     #54.9
        orl       %eax, %ecx                                    #54.9
        addl      %ecx, %r15d                                   #54.9
        xorl      %r15d, %esi                                   #54.9
        lea       (%rsi,%rbx), %eax                             #54.9
        addl      %esi, %ebx                                    #54.9
        shll      $11, %eax                                     #54.9
        shrl      $21, %ebx                                     #54.9
        orl       %ebx, %eax                                    #54.9
        addl      %eax, %edx                                    #54.9
        xorl      %edx, %ecx                                    #54.9
        addl      %ecx, %r15d                                   #54.9
        movl      %r15d, %ebx                                   #54.9
        shll      $7, %ebx                                      #54.9
        shrl      $25, %r15d                                    #54.9
        orl       %r15d, %ebx                                   #54.9
        addl      %ebx, %eax                                    #55.9
        xorl      %eax, %r11d                                   #55.9
        lea       (%r11,%r12), %r15d                            #55.9
        addl      %r11d, %r12d                                  #55.9
        shll      $19, %r15d                                    #55.9
        shrl      $13, %r12d                                    #55.9
        orl       %r12d, %r15d                                  #55.9
        addl      %r15d, %r13d                                  #55.9
        xorl      %r13d, %ebx                                   #55.9
        addl      %ebx, %eax                                    #55.9
        movl      %eax, %r12d                                   #55.9
        shll      $11, %r12d                                    #55.9
        shrl      $21, %eax                                     #55.9
        orl       %eax, %r12d                                   #55.9
        addl      %r12d, %r11d                                  #55.9
        xorl      %r11d, %r15d                                  #55.9
        movl      %r12d, 200(%rsp)                              #55.9[spill]
        movl      80(%rsp), %eax                                #58.9[spill]
        lea       (%r13,%r15), %r12d                            #55.9
        addl      %r15d, %r13d                                  #55.9
        shll      $7, %r12d                                     #55.9
        shrl      $25, %r13d                                    #55.9
        orl       %r13d, %r12d                                  #55.9
        addl      %r12d, %edi                                   #56.9
        xorl      %edi, %edx                                    #56.9
        lea       (%rdx,%r9), %r13d                             #56.9
        addl      %edx, %r9d                                    #56.9
        shll      $19, %r13d                                    #56.9
        shrl      $13, %r9d                                     #56.9
        orl       %r9d, %r13d                                   #56.9
        addl      %r13d, %r10d                                  #56.9
        xorl      %r10d, %r12d                                  #56.9
        lea       (%rdi,%r12), %r9d                             #56.9
        addl      %r12d, %edi                                   #56.9
        shll      $11, %r9d                                     #56.9
        shrl      $21, %edi                                     #56.9
        orl       %edi, %r9d                                    #56.9
        addl      %r9d, %edx                                    #56.9
        xorl      %edx, %r13d                                   #56.9
        movl      %edx, 72(%rsp)                                #56.9[spill]
        lea       (%r10,%r13), %edi                             #56.9
        addl      %r13d, %r10d                                  #56.9
        shll      $7, %edi                                      #56.9
        shrl      $25, %r10d                                    #56.9
        orl       %r10d, %edi                                   #56.9
        addl      %edi, %r8d                                    #57.9
        xorl      %r8d, %r14d                                   #57.9
        lea       (%r14,%rcx), %edx                             #57.9
        addl      %r14d, %ecx                                   #57.9
        shll      $19, %edx                                     #57.9
        shrl      $13, %ecx                                     #57.9
        orl       %ecx, %edx                                    #57.9
        addl      %edx, %esi                                    #57.9
        xorl      %esi, %edi                                    #57.9
        lea       (%r8,%rdi), %r10d                             #57.9
        addl      %edi, %r8d                                    #57.9
        shll      $11, %r10d                                    #57.9
        shrl      $21, %r8d                                     #57.9
        orl       %r8d, %r10d                                   #57.9
        addl      %r10d, %r14d                                  #57.9
        xorl      %r14d, %edx                                   #57.9
        movl      192(%rsp), %r8d                               #58.9[spill]
        movl      %edx, 208(%rsp)                               #57.9[spill]
        lea       (%rsi,%rdx), %ecx                             #57.9
        addl      %edx, %esi                                    #57.9
        shll      $7, %ecx                                      #57.9
        shrl      $25, %esi                                     #57.9
        orl       %esi, %ecx                                    #57.9
        addl      %ecx, %r8d                                    #58.9
        xorl      %r8d, %eax                                    #58.9
        movl      184(%rsp), %edx                               #58.9[spill]
        lea       (%rax,%rdx), %esi                             #58.9
        addl      %eax, %edx                                    #58.9
        shll      $19, %esi                                     #58.9
        shrl      $13, %edx                                     #58.9
        orl       %edx, %esi                                    #58.9
        addl      %esi, %ebx                                    #58.9
        xorl      %ebx, %ecx                                    #58.9
        lea       (%r8,%rcx), %edx                              #58.9
        addl      %ecx, %r8d                                    #58.9
        shll      $11, %edx                                     #58.9
        shrl      $21, %r8d                                     #58.9
        orl       %r8d, %edx                                    #58.9
        addl      %edx, %eax                                    #58.9
        xorl      %eax, %esi                                    #58.9
        lea       (%rbx,%rsi), %r8d                             #58.9
        addl      %esi, %ebx                                    #58.9
        shll      $7, %r8d                                      #58.9
        shrl      $25, %ebx                                     #58.9
        orl       %ebx, %r8d                                    #58.9
        addl      %r8d, %r9d                                    #51.9
        xorl      %r9d, %r14d                                   #51.9
        addl      %r14d, %esi                                   #51.9
        movl      %esi, %ebx                                    #51.9
        shll      $19, %ebx                                     #51.9
        shrl      $13, %esi                                     #51.9
        orl       %esi, %ebx                                    #51.9
        addl      %ebx, %r12d                                   #51.9
        xorl      %r12d, %r8d                                   #51.9
        addl      %r8d, %r9d                                    #51.9
        movl      %r9d, %esi                                    #51.9
        shll      $11, %esi                                     #51.9
        shrl      $21, %r9d                                     #51.9
        orl       %r9d, %esi                                    #51.9
        addl      %esi, %r14d                                   #51.9
        xorl      %r14d, %ebx                                   #51.9
        movl      %ebx, 136(%rsp)                               #51.9[spill]
        movl      %esi, 144(%rsp)                               #51.9[spill]
        movl      72(%rsp), %esi                                #54.9[spill]
        lea       (%rbx,%r12), %r9d                             #51.9
        addl      %ebx, %r12d                                   #51.9
        shll      $7, %r9d                                      #51.9
        shrl      $25, %r12d                                    #51.9
        orl       %r12d, %r9d                                   #51.9
        addl      %r9d, %r10d                                   #52.9
        xorl      %r10d, %eax                                   #52.9
        addl      %eax, %r15d                                   #52.9
        movl      %r15d, %r12d                                  #52.9
        shll      $19, %r12d                                    #52.9
        shrl      $13, %r15d                                    #52.9
        orl       %r15d, %r12d                                  #52.9
        addl      %r12d, %edi                                   #52.9
        xorl      %edi, %r9d                                    #52.9
        movl      208(%rsp), %r15d                              #54.9[spill]
        lea       (%r9,%r10), %ebx                              #52.9
        addl      %r9d, %r10d                                   #52.9
        shll      $11, %ebx                                     #52.9
        shrl      $21, %r10d                                    #52.9
        orl       %r10d, %ebx                                   #52.9
        addl      %ebx, %eax                                    #52.9
        xorl      %eax, %r12d                                   #52.9
        movl      %ebx, 152(%rsp)                               #52.9[spill]
        lea       (%r12,%rdi), %r10d                            #52.9
        addl      %r12d, %edi                                   #52.9
        shll      $7, %r10d                                     #52.9
        shrl      $25, %edi                                     #52.9
        orl       %edi, %r10d                                   #52.9
        addl      %r10d, %edx                                   #53.9
        xorl      %edx, %r11d                                   #53.9
        addl      %r11d, %r13d                                  #53.9
        movl      %r13d, %ebx                                   #53.9
        shll      $19, %ebx                                     #53.9
        shrl      $13, %r13d                                    #53.9
        orl       %r13d, %ebx                                   #53.9
        addl      %ebx, %ecx                                    #53.9
        xorl      %ecx, %r10d                                   #53.9
        movl      200(%rsp), %edi                               #54.9[spill]
        lea       (%r10,%rdx), %r13d                            #53.9
        addl      %r10d, %edx                                   #53.9
        shll      $11, %r13d                                    #53.9
        shrl      $21, %edx                                     #53.9
        orl       %edx, %r13d                                   #53.9
        addl      %r13d, %r11d                                  #53.9
        xorl      %r11d, %ebx                                   #53.9
        movl      %r13d, 160(%rsp)                              #53.9[spill]
        lea       (%rbx,%rcx), %r13d                            #53.9
        addl      %ebx, %ecx                                    #53.9
        shll      $7, %r13d                                     #53.9
        shrl      $25, %ecx                                     #53.9
        orl       %ecx, %r13d                                   #53.9
        addl      %r13d, %edi                                   #54.9
        xorl      %edi, %esi                                    #54.9
        addl      %esi, %r15d                                   #54.9
        movl      %r15d, %ecx                                   #54.9
        shll      $19, %ecx                                     #54.9
        shrl      $13, %r15d                                    #54.9
        orl       %r15d, %ecx                                   #54.9
        addl      %ecx, %r8d                                    #54.9
        xorl      %r8d, %r13d                                   #54.9
        lea       (%r13,%rdi), %r15d                            #54.9
        addl      %r13d, %edi                                   #54.9
        shll      $11, %r15d                                    #54.9
        shrl      $21, %edi                                     #54.9
        orl       %edi, %r15d                                   #54.9
        addl      %r15d, %esi                                   #54.9
        xorl      %esi, %ecx                                    #54.9
        addl      %ecx, %r8d                                    #54.9
        movl      %r8d, %edi                                    #54.9
        shll      $7, %edi                                      #54.9
        shrl      $25, %r8d                                     #54.9
        orl       %r8d, %edi                                    #54.9
        addl      %edi, %r15d                                   #55.9
        xorl      %r15d, %r11d                                  #55.9
        lea       (%r11,%r12), %edx                             #55.9
        addl      %r11d, %r12d                                  #55.9
        shll      $19, %edx                                     #55.9
        shrl      $13, %r12d                                    #55.9
        orl       %r12d, %edx                                   #55.9
        addl      %edx, %r9d                                    #55.9
        xorl      %r9d, %edi                                    #55.9
        addl      %edi, %r15d                                   #55.9
        movl      %r15d, %r8d                                   #55.9
        shll      $11, %r8d                                     #55.9
        shrl      $21, %r15d                                    #55.9
        orl       %r15d, %r8d                                   #55.9
        addl      %r8d, %r11d                                   #55.9
        xorl      %r11d, %edx                                   #55.9
        movl      %r8d, 128(%rsp)                               #55.9[spill]
        lea       (%r9,%rdx), %r12d                             #55.9
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d r12d r13d r14d ymm0 ymm1
..B5.4:                         # Preds ..B5.5
                                # Execution count [1.00e+00]
        addl      %edx, %r9d                                    #55.9
        shll      $7, %r12d                                     #55.9
        shrl      $25, %r9d                                     #55.9
        orl       %r9d, %r12d                                   #55.9
        movl      144(%rsp), %r9d                               #56.9[spill]
        addl      %r12d, %r9d                                   #56.9
        xorl      %r9d, %esi                                    #56.9
        lea       (%rbx,%rsi), %r8d                             #56.9
        addl      %esi, %ebx                                    #56.9
        shll      $19, %r8d                                     #56.9
        shrl      $13, %ebx                                     #56.9
        orl       %ebx, %r8d                                    #56.9
        addl      %r8d, %r10d                                   #56.9
        xorl      %r10d, %r12d                                  #56.9
        lea       (%r9,%r12), %ebx                              #56.9
        addl      %r12d, %r9d                                   #56.9
        shll      $11, %ebx                                     #56.9
        shrl      $21, %r9d                                     #56.9
        orl       %r9d, %ebx                                    #56.9
        addl      %ebx, %esi                                    #56.9
        xorl      %esi, %r8d                                    #56.9
        movl      %esi, 72(%rsp)                                #56.9[spill]
        movl      160(%rsp), %r9d                               #58.9[spill]
        lea       (%r10,%r8), %esi                              #56.9
        addl      %r8d, %r10d                                   #56.9
        shll      $7, %esi                                      #56.9
        shrl      $25, %r10d                                    #56.9
        orl       %r10d, %esi                                   #56.9
        movl      152(%rsp), %r10d                              #57.9[spill]
        addl      %esi, %r10d                                   #57.9
        xorl      %r10d, %r14d                                  #57.9
        lea       (%rcx,%r14), %r15d                            #57.9
        addl      %r14d, %ecx                                   #57.9
        shll      $19, %r15d                                    #57.9
        shrl      $13, %ecx                                     #57.9
        orl       %ecx, %r15d                                   #57.9
        addl      %r15d, %r13d                                  #57.9
        xorl      %r13d, %esi                                   #57.9
        lea       (%r10,%rsi), %ecx                             #57.9
        addl      %esi, %r10d                                   #57.9
        shll      $11, %ecx                                     #57.9
        shrl      $21, %r10d                                    #57.9
        orl       %r10d, %ecx                                   #57.9
        addl      %ecx, %r14d                                   #57.9
        xorl      %r14d, %r15d                                  #57.9
        movl      %r15d, 88(%rsp)                               #57.9[spill]
        lea       (%r13,%r15), %r10d                            #57.9
        addl      %r15d, %r13d                                  #57.9
        shll      $7, %r10d                                     #57.9
        shrl      $25, %r13d                                    #57.9
        orl       %r13d, %r10d                                  #57.9
        addl      %r10d, %r9d                                   #58.9
        xorl      %r9d, %eax                                    #58.9
        movl      136(%rsp), %r15d                              #58.9[spill]
        lea       (%r15,%rax), %r13d                            #58.9
        addl      %eax, %r15d                                   #58.9
        shll      $19, %r13d                                    #58.9
        shrl      $13, %r15d                                    #58.9
        orl       %r15d, %r13d                                  #58.9
        addl      %r13d, %edi                                   #58.9
        xorl      %edi, %r10d                                   #58.9
        lea       (%r9,%r10), %r15d                             #58.9
        addl      %r10d, %r9d                                   #58.9
        shll      $11, %r15d                                    #58.9
        shrl      $21, %r9d                                     #58.9
        orl       %r9d, %r15d                                   #58.9
        addl      %r15d, %eax                                   #58.9
        xorl      %eax, %r13d                                   #58.9
        lea       (%rdi,%r13), %r9d                             #58.9
        addl      %r13d, %edi                                   #58.9
        shll      $7, %r9d                                      #58.9
        shrl      $25, %edi                                     #58.9
        orl       %edi, %r9d                                    #58.9
        addl      %r9d, %ebx                                    #51.9
        xorl      %ebx, %r14d                                   #51.9
        addl      %r14d, %r13d                                  #51.9
        movl      %r13d, %edi                                   #51.9
        shll      $19, %edi                                     #51.9
        shrl      $13, %r13d                                    #51.9
        orl       %r13d, %edi                                   #51.9
        addl      %edi, %r12d                                   #51.9
        xorl      %r12d, %r9d                                   #51.9
        addl      %r9d, %ebx                                    #51.9
        movl      %ebx, %r13d                                   #51.9
        shll      $11, %r13d                                    #51.9
        shrl      $21, %ebx                                     #51.9
        orl       %ebx, %r13d                                   #51.9
        addl      %r13d, %r14d                                  #51.9
        xorl      %r14d, %edi                                   #51.9
        movl      %edi, 96(%rsp)                                #51.9[spill]
        lea       (%rdi,%r12), %ebx                             #51.9
        addl      %edi, %r12d                                   #51.9
        shll      $7, %ebx                                      #51.9
        shrl      $25, %r12d                                    #51.9
        orl       %r12d, %ebx                                   #51.9
        addl      %ebx, %ecx                                    #52.9
        xorl      %ecx, %eax                                    #52.9
        addl      %eax, %edx                                    #52.9
        movl      %edx, %r12d                                   #52.9
        shll      $19, %r12d                                    #52.9
        shrl      $13, %edx                                     #52.9
        orl       %edx, %r12d                                   #52.9
        addl      %r12d, %esi                                   #52.9
        xorl      %esi, %ebx                                    #52.9
        movl      128(%rsp), %edi                               #54.9[spill]
        lea       (%rbx,%rcx), %edx                             #52.9
        addl      %ebx, %ecx                                    #52.9
        shll      $11, %edx                                     #52.9
        shrl      $21, %ecx                                     #52.9
        orl       %ecx, %edx                                    #52.9
        addl      %edx, %eax                                    #52.9
        xorl      %eax, %r12d                                   #52.9
        movl      %eax, 80(%rsp)                                #52.9[spill]
        lea       (%r12,%rsi), %ecx                             #52.9
        addl      %r12d, %esi                                   #52.9
        shll      $7, %ecx                                      #52.9
        shrl      $25, %esi                                     #52.9
        orl       %esi, %ecx                                    #52.9
        addl      %ecx, %r15d                                   #53.9
        xorl      %r15d, %r11d                                  #53.9
        addl      %r11d, %r8d                                   #53.9
        movl      %r8d, %esi                                    #53.9
        shll      $19, %esi                                     #53.9
        shrl      $13, %r8d                                     #53.9
        orl       %r8d, %esi                                    #53.9
        addl      %esi, %r10d                                   #53.9
        xorl      %r10d, %ecx                                   #53.9
        lea       (%rcx,%r15), %eax                             #53.9
        addl      %ecx, %r15d                                   #53.9
        shll      $11, %eax                                     #53.9
        shrl      $21, %r15d                                    #53.9
        orl       %r15d, %eax                                   #53.9
        addl      %eax, %r11d                                   #53.9
        xorl      %r11d, %esi                                   #53.9
        movl      %eax, 104(%rsp)                               #53.9[spill]
        movl      72(%rsp), %r15d                               #54.9[spill]
        lea       (%rsi,%r10), %eax                             #53.9
        addl      %esi, %r10d                                   #53.9
        shll      $7, %eax                                      #53.9
        shrl      $25, %r10d                                    #53.9
        orl       %r10d, %eax                                   #53.9
        addl      %eax, %edi                                    #54.9
        xorl      %edi, %r15d                                   #54.9
        movl      88(%rsp), %r10d                               #54.9[spill]
        addl      %r15d, %r10d                                  #54.9
        movl      %r10d, %r8d                                   #54.9
        shll      $19, %r8d                                     #54.9
        shrl      $13, %r10d                                    #54.9
        orl       %r10d, %r8d                                   #54.9
        addl      %r8d, %r9d                                    #54.9
        xorl      %r9d, %eax                                    #54.9
        lea       (%rax,%rdi), %r10d                            #54.9
        addl      %eax, %edi                                    #54.9
        shll      $11, %r10d                                    #54.9
        shrl      $21, %edi                                     #54.9
        orl       %edi, %r10d                                   #54.9
        addl      %r10d, %r15d                                  #54.9
        xorl      %r15d, %r8d                                   #54.9
        addl      %r8d, %r9d                                    #54.9
        movl      %r9d, %edi                                    #54.9
        shll      $7, %edi                                      #54.9
        shrl      $25, %r9d                                     #54.9
        orl       %r9d, %edi                                    #54.9
        addl      %edi, %r10d                                   #55.9
        xorl      %r10d, %r11d                                  #55.9
        lea       (%r11,%r12), %r9d                             #55.9
        addl      %r11d, %r12d                                  #55.9
        shll      $19, %r9d                                     #55.9
        shrl      $13, %r12d                                    #55.9
        orl       %r12d, %r9d                                   #55.9
        addl      %r9d, %ebx                                    #55.9
        xorl      %ebx, %edi                                    #55.9
        addl      %edi, %r10d                                   #55.9
        movl      %r10d, %r12d                                  #55.9
        shll      $11, %r12d                                    #55.9
        shrl      $21, %r10d                                    #55.9
        orl       %r10d, %r12d                                  #55.9
        addl      %r12d, %r11d                                  #55.9
        xorl      %r11d, %r9d                                   #55.9
        movl      %r11d, 40(%rsp)                               #55.9
        movl      %r9d, 20(%rsp)                                #55.9
        movl      %r12d, 60(%rsp)                               #55.9
        lea       (%rbx,%r9), %r11d                             #55.9
        addl      %ebx, %r9d                                    #55.9
        shll      $7, %r11d                                     #55.9
        shrl      $25, %r9d                                     #55.9
        orl       %r9d, %r11d                                   #55.9
        addl      %r11d, %r13d                                  #56.9
        xorl      %r13d, %r15d                                  #56.9
        lea       (%r15,%rsi), %ebx                             #56.9
        addl      %r15d, %esi                                   #56.9
        shll      $19, %ebx                                     #56.9
        shrl      $13, %esi                                     #56.9
        orl       %esi, %ebx                                    #56.9
        addl      %ebx, %ecx                                    #56.9
        xorl      %ecx, %r11d                                   #56.9
        movl      %r11d, (%rsp)                                 #56.9
        lea       (%r13,%r11), %esi                             #56.9
        addl      %r13d, %r11d                                  #56.9
        shll      $11, %esi                                     #56.9
        shrl      $21, %r11d                                    #56.9
        orl       %r11d, %esi                                   #56.9
        addl      %esi, %r15d                                   #56.9
        xorl      %r15d, %ebx                                   #56.9
        movl      %ebx, 24(%rsp)                                #56.9
        movl      %esi, 48(%rsp)                                #56.9
        movl      80(%rsp), %esi                                #58.9[spill]
        movl      %r15d, 44(%rsp)                               #56.9
        lea       (%rcx,%rbx), %r9d                             #56.9
        addl      %ecx, %ebx                                    #56.9
        shll      $7, %r9d                                      #56.9
        shrl      $25, %ebx                                     #56.9
        orl       %ebx, %r9d                                    #56.9
        addl      %r9d, %edx                                    #57.9
        xorl      %edx, %r14d                                   #57.9
        lea       (%r14,%r8), %ecx                              #57.9
        addl      %r14d, %r8d                                   #57.9
        shll      $19, %ecx                                     #57.9
        shrl      $13, %r8d                                     #57.9
        orl       %r8d, %ecx                                    #57.9
        addl      %ecx, %eax                                    #57.9
        xorl      %eax, %r9d                                    #57.9
        movl      %r9d, 4(%rsp)                                 #57.9
        lea       (%rdx,%r9), %r8d                              #57.9
        addl      %edx, %r9d                                    #57.9
        shll      $11, %r8d                                     #57.9
        shrl      $21, %r9d                                     #57.9
        orl       %r9d, %r8d                                    #57.9
        addl      %r8d, %r14d                                   #57.9
        xorl      %r14d, %ecx                                   #57.9
        movl      %r14d, 32(%rsp)                               #57.9
        movl      96(%rsp), %r14d                               #58.9[spill]
        movl      %r8d, 52(%rsp)                                #57.9
        movl      %ecx, 28(%rsp)                                #57.9
        lea       (%rax,%rcx), %edx                             #57.9
        addl      %ecx, %eax                                    #57.9
        shll      $7, %edx                                      #57.9
        shrl      $25, %eax                                     #57.9
        orl       %eax, %edx                                    #57.9
        movl      104(%rsp), %eax                               #58.9[spill]
        addl      %edx, %eax                                    #58.9
        xorl      %eax, %esi                                    #58.9
        lea       (%rsi,%r14), %r8d                             #58.9
        addl      %esi, %r14d                                   #58.9
        shll      $19, %r8d                                     #58.9
        shrl      $13, %r14d                                    #58.9
        orl       %r14d, %r8d                                   #58.9
        addl      %r8d, %edi                                    #58.9
        xorl      %edi, %edx                                    #58.9
        movl      %edx, 8(%rsp)                                 #58.9
        lea       (%rax,%rdx), %ebx                             #58.9
        addl      %edx, %eax                                    #58.9
        shll      $11, %ebx                                     #58.9
        shrl      $21, %eax                                     #58.9
        orl       %eax, %ebx                                    #58.9
        addl      %ebx, %esi                                    #58.9
        xorl      %esi, %r8d                                    #58.9
        movl      %r8d, 16(%rsp)                                #58.9
        movl      %ebx, 56(%rsp)                                #58.9
        movl      %esi, 36(%rsp)                                #58.9
        vpaddd    32(%rsp), %ymm1, %ymm1                        #61.16
        lea       (%rdi,%r8), %r9d                              #58.9
        addl      %edi, %r8d                                    #58.9
        shll      $7, %r9d                                      #58.9
        shrl      $25, %r8d                                     #58.9
        orl       %r8d, %r9d                                    #58.9
        movl      %r9d, 12(%rsp)                                #58.9
        vpaddd    (%rsp), %ymm0, %ymm0                          #61.16
        vmovdqu   %ymm1, 32(%rsp)                               #61.9
        vmovdqu   %ymm0, (%rsp)                                 #61.9
        movq      64(%rsp), %rdi                                #63.9[spill]
        vmovdqu   %ymm0, (%rdi)                                 #63.9
        vmovdqu   %ymm1, 32(%rdi)                               #63.9
        vzeroupper                                              #64.1
        addq      $216, %rsp                                    #64.1
	.cfi_restore 3
        popq      %rbx                                          #64.1
	.cfi_restore 15
        popq      %r15                                          #64.1
	.cfi_restore 14
        popq      %r14                                          #64.1
	.cfi_restore 13
        popq      %r13                                          #64.1
	.cfi_restore 12
        popq      %r12                                          #64.1
        movq      %rbp, %rsp                                    #64.1
        popq      %rbp                                          #64.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #64.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	forro_1,@function
	.size	forro_1,.-forro_1
..LNforro_1.4:
	.data
# -- End  forro_1
	.text
.L_2__routine_start_xote_decrypt_bytes_5:
# -- Begin  xote_decrypt_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_decrypt_bytes
# --- xote_decrypt_bytes(stream_ctx *, const uint8_t *, uint8_t *, uint32_t)
xote_decrypt_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %ecx
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_decrypt_bytes.716:
..L717:
                                                        #221.1
        pushq     %rbp                                          #221.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #221.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #221.1
        pushq     %r12                                          #221.1
        pushq     %r13                                          #221.1
        pushq     %r14                                          #221.1
        pushq     %r15                                          #221.1
        pushq     %rbx                                          #221.1
        subq      $248, %rsp                                    #221.1
        movq      %rsi, %r8                                     #221.1
        movl      %ecx, %esi                                    #221.1
        testl     %ecx, %ecx                                    #222.5
        je        ..B6.28       # Prob 28%                      #222.5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE rdx rbx rsi rdi r8 r12 r13 r14 r15 ecx
..B6.2:                         # Preds ..B6.1
                                # Execution count [7.20e-01]
        cmpl      $128, %ecx                                    #222.5
        jb        ..B6.15       # Prob 10%                      #222.5
                                # LOE rdx rbx rsi rdi r8 r12 r13 r14 r15 ecx
..B6.3:                         # Preds ..B6.2
                                # Execution count [6.48e-01]
        movq      %rsi, %r9                                     #
        xorl      %eax, %eax                                    #222.5
        negq      %r9                                           #
        movl      %eax, %r12d                                   #
        sarq      $6, %r9                                       #
        movq      %rdx, %r14                                    #
        shrq      $57, %r9                                      #
        movl      %ecx, %ebx                                    #
        subq      %rsi, %r9                                     #
        movq      %rdi, %r13                                    #
        shrq      $7, %r9                                       #
        movq      %r8, %r15                                     #
        negq      %r9                                           #
        movl      %r9d, (%rsp)                                  #[spill]
                                # LOE r13 r14 r15 ebx r12d
..B6.4:                         # Preds ..B6.13 ..B6.3
                                # Execution count [3.60e+00]
        movq      %r13, %rsi                                    #222.5
        lea       96(%rsp), %rdi                                #222.5
        vzeroupper                                              #222.5
..___tag_value_xote_decrypt_bytes.727:
#       xote(uint8_t *, const uint32_t *)
        call      xote                                          #222.5
..___tag_value_xote_decrypt_bytes.728:
                                # LOE r13 r14 r15 ebx r12d
..B6.5:                         # Preds ..B6.4
                                # Execution count [3.60e+00]
        addl      $2, 16(%r13)                                  #222.5
        jne       ..B6.7        # Prob 50%                      #222.5
                                # LOE r13 r14 r15 ebx r12d
..B6.6:                         # Preds ..B6.5
                                # Execution count [1.80e+00]
        incl      20(%r13)                                      #222.5
                                # LOE r13 r14 r15 ebx r12d
..B6.7:                         # Preds ..B6.5 ..B6.6
                                # Execution count [0.00e+00]
        movq      %r15, %r9                                     #222.5
        negq      %r9                                           #222.5
        addq      %r14, %r9                                     #222.5
        cmpq      $128, %r9                                     #222.5
        jge       ..B6.9        # Prob 50%                      #222.5
                                # LOE r9 r13 r14 r15 ebx r12d
..B6.8:                         # Preds ..B6.7
                                # Execution count [0.00e+00]
        negq      %r9                                           #222.5
        cmpq      $128, %r9                                     #222.5
        jl        ..B6.10       # Prob 50%                      #222.5
                                # LOE r13 r14 r15 ebx r12d
..B6.9:                         # Preds ..B6.7 ..B6.8
                                # Execution count [1.80e+00]
        vmovdqu   (%r15), %ymm0                                 #222.5
        vpxor     96(%rsp), %ymm0, %ymm1                        #222.5
        vmovdqu   %ymm1, (%r14)                                 #222.5
        vmovdqu   32(%r15), %ymm2                               #222.5
        vpxor     128(%rsp), %ymm2, %ymm3                       #222.5
        vmovdqu   %ymm3, 32(%r14)                               #222.5
        vmovdqu   64(%r15), %ymm4                               #222.5
        vpxor     160(%rsp), %ymm4, %ymm5                       #222.5
        vmovdqu   %ymm5, 64(%r14)                               #222.5
        vmovdqu   96(%r15), %ymm6                               #222.5
        vpxor     192(%rsp), %ymm6, %ymm7                       #222.5
        vmovdqu   %ymm7, 96(%r14)                               #222.5
        jmp       ..B6.13       # Prob 100%                     #222.5
                                # LOE r13 r14 r15 ebx r12d
..B6.10:                        # Preds ..B6.8
                                # Execution count [1.80e+00]
        xorl      %r9d, %r9d                                    #222.5
                                # LOE r13 r14 r15 ebx r9d r12d
..B6.11:                        # Preds ..B6.11 ..B6.10
                                # Execution count [1.15e+02]
        lea       (%r9,%r9), %r10d                              #222.5
        movb      (%r10,%r15), %r11b                            #222.5
        xorb      96(%rsp,%r10), %r11b                          #222.5
        movb      %r11b, (%r10,%r14)                            #222.5
        lea       1(%r9,%r9), %r10d                             #222.5
        movb      (%r10,%r15), %r11b                            #222.5
        incl      %r9d                                          #222.5
        xorb      96(%rsp,%r10), %r11b                          #222.5
        movb      %r11b, (%r10,%r14)                            #222.5
        cmpl      $64, %r9d                                     #222.5
        jb        ..B6.11       # Prob 98%                      #222.5
                                # LOE r13 r14 r15 ebx r9d r12d
..B6.13:                        # Preds ..B6.11 ..B6.9
                                # Execution count [3.60e+00]
        incl      %r12d                                         #222.5
        addl      $-128, %ebx                                   #222.5
        addq      $128, %r14                                    #222.5
        addq      $128, %r15                                    #222.5
        cmpl      (%rsp), %r12d                                 #222.5[spill]
        jb        ..B6.4        # Prob 82%                      #222.5
                                # LOE r13 r14 r15 ebx r12d
..B6.14:                        # Preds ..B6.13
                                # Execution count [6.48e-01]
        movl      %ebx, %ecx                                    #
        movq      %r13, %rdi                                    #
        movq      %r14, %rdx                                    #
        movq      %r15, %r8                                     #
                                # LOE rdx rbx rdi r8 r12 r13 r14 r15 ecx
..B6.15:                        # Preds ..B6.14 ..B6.2
                                # Execution count [7.20e-01]
        movq      %r8, %r9                                      #222.5
        movq      %rdx, %rsi                                    #222.5
        testl     %ecx, %ecx                                    #222.5
        je        ..B6.28       # Prob 28%                      #222.5
                                # LOE rdx rbx rsi rdi r8 r9 r12 r13 r14 r15 ecx
..B6.16:                        # Preds ..B6.15
                                # Execution count [5.18e-01]
        xorl      %eax, %eax                                    #222.5
        movq      %rdx, %r14                                    #222.5
        movq      %rsi, 8(%rsp)                                 #222.5[spill]
        movq      %rax, %r15                                    #222.5
        movq      %r9, (%rsp)                                   #222.5[spill]
        movl      %ecx, %ebx                                    #222.5
        movq      %rdi, %r12                                    #222.5
        movq      %r8, %r13                                     #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.17:                        # Preds ..B6.27 ..B6.16
                                # Execution count [2.59e+00]
        movq      %r12, %rsi                                    #222.5
        lea       32(%rsp), %rdi                                #222.5
        incq      %r15                                          #222.5
        vzeroupper                                              #222.5
..___tag_value_xote_decrypt_bytes.732:
#       forro_1(uint8_t *, const uint32_t *)
        call      forro_1                                       #222.5
..___tag_value_xote_decrypt_bytes.733:
                                # LOE r12 r13 r14 r15 ebx
..B6.18:                        # Preds ..B6.17
                                # Execution count [2.59e+00]
        incl      16(%r12)                                      #222.5
        jne       ..B6.20       # Prob 50%                      #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.19:                        # Preds ..B6.18
                                # Execution count [1.30e+00]
        incl      20(%r12)                                      #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.20:                        # Preds ..B6.18 ..B6.19
                                # Execution count [2.59e+00]
        cmpl      $64, %ebx                                     #222.5
        jbe       ..B6.29       # Prob 20%                      #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.21:                        # Preds ..B6.20
                                # Execution count [0.00e+00]
        movq      %r15, %r14                                    #222.5
        shlq      $6, %r14                                      #222.5
        movq      (%rsp), %r10                                  #222.5[spill]
        movq      8(%rsp), %r9                                  #222.5[spill]
        lea       -64(%r10,%r14), %r11                          #222.5
        lea       (%r9,%r14), %rax                              #222.5
        lea       -64(%r14,%r9), %r9                            #222.5
        subq      %r11, %r9                                     #222.5
        lea       (%r10,%r14), %r13                             #222.5
        cmpq      $64, %r9                                      #222.5
        jge       ..B6.23       # Prob 50%                      #222.5
                                # LOE rax r9 r12 r13 r14 r15 ebx
..B6.22:                        # Preds ..B6.21
                                # Execution count [0.00e+00]
        negq      %r9                                           #222.5
        cmpq      $64, %r9                                      #222.5
        jl        ..B6.24       # Prob 50%                      #222.5
                                # LOE rax r12 r13 r14 r15 ebx
..B6.23:                        # Preds ..B6.21 ..B6.22
                                # Execution count [1.04e+00]
        vmovdqu   -64(%r13), %ymm0                              #222.5
        vpxor     32(%rsp), %ymm0, %ymm1                        #222.5
        vmovdqu   %ymm1, -64(%rax)                              #222.5
        vmovdqu   -32(%r13), %ymm2                              #222.5
        vpxor     64(%rsp), %ymm2, %ymm3                        #222.5
        vmovdqu   %ymm3, -32(%rax)                              #222.5
        jmp       ..B6.27       # Prob 100%                     #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.24:                        # Preds ..B6.22
                                # Execution count [1.04e+00]
        xorl      %r9d, %r9d                                    #222.5
                                # LOE rax r12 r13 r14 r15 ebx r9d
..B6.25:                        # Preds ..B6.25 ..B6.24
                                # Execution count [3.32e+01]
        lea       (%r9,%r9), %r10d                              #222.5
        movb      -64(%r10,%r13), %r11b                         #222.5
        xorb      32(%rsp,%r10), %r11b                          #222.5
        movb      %r11b, -64(%r10,%rax)                         #222.5
        lea       1(%r9,%r9), %r10d                             #222.5
        movb      -64(%r10,%r13), %r11b                         #222.5
        incl      %r9d                                          #222.5
        xorb      32(%rsp,%r10), %r11b                          #222.5
        movb      %r11b, -64(%r10,%rax)                         #222.5
        cmpl      $32, %r9d                                     #222.5
        jb        ..B6.25       # Prob 96%                      #222.5
                                # LOE rax r12 r13 r14 r15 ebx r9d
..B6.27:                        # Preds ..B6.25 ..B6.23
                                # Execution count [2.07e+00]
        addq      8(%rsp), %r14                                 #222.5[spill]
        addl      $-64, %ebx                                    #222.5
        jmp       ..B6.17       # Prob 100%                     #222.5
                                # LOE r12 r13 r14 r15 ebx
..B6.28:                        # Preds ..B6.44 ..B6.1 ..B6.42 ..B6.15 ..B6.29
                                #       ..B6.50 ..B6.37 ..B6.51
                                # Execution count [1.00e+00]
        vzeroupper                                              #223.1
        addq      $248, %rsp                                    #223.1
	.cfi_restore 3
        popq      %rbx                                          #223.1
	.cfi_restore 15
        popq      %r15                                          #223.1
	.cfi_restore 14
        popq      %r14                                          #223.1
	.cfi_restore 13
        popq      %r13                                          #223.1
	.cfi_restore 12
        popq      %r12                                          #223.1
        movq      %rbp, %rsp                                    #223.1
        popq      %rbp                                          #223.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #223.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B6.29:                        # Preds ..B6.20
                                # Execution count [5.18e-01]: Infreq
        movl      %ebx, %ecx                                    #
        movq      %r13, %r8                                     #
        movq      %r14, %rdx                                    #
        testl     %ecx, %ecx                                    #222.5
        jbe       ..B6.28       # Prob 50%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B6.30:                        # Preds ..B6.29
                                # Execution count [0.00e+00]: Infreq
        cmpl      $6, %ecx                                      #222.5
        jbe       ..B6.46       # Prob 50%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B6.31:                        # Preds ..B6.30
                                # Execution count [0.00e+00]: Infreq
        movq      %rdx, %rax                                    #222.5
        movl      %ecx, %esi                                    #222.5
        subq      %r8, %rax                                     #222.5
        cmpq      %rsi, %rax                                    #222.5
        jge       ..B6.33       # Prob 50%                      #222.5
                                # LOE rax rdx rbx rsi r8 r12 r13 r14 r15 ecx
..B6.32:                        # Preds ..B6.31
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #222.5
        cmpq      %rsi, %rax                                    #222.5
        jl        ..B6.46       # Prob 50%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B6.33:                        # Preds ..B6.31 ..B6.32
                                # Execution count [2.33e-01]: Infreq
        cmpl      $32, %ecx                                     #222.5
        jb        ..B6.52       # Prob 10%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx
..B6.34:                        # Preds ..B6.33
                                # Execution count [2.33e-01]: Infreq
        movl      %ecx, %esi                                    #222.5
        xorl      %edi, %edi                                    #222.5
        andl      $-32, %esi                                    #222.5
        movslq    %esi, %rax                                    #222.5
                                # LOE rax rdx rbx rdi r8 r12 r13 r14 r15 ecx esi
..B6.35:                        # Preds ..B6.35 ..B6.34
                                # Execution count [1.30e+00]: Infreq
        vmovdqu   (%r8,%rdi), %ymm0                             #222.5
        vpxor     32(%rsp,%rdi), %ymm0, %ymm1                   #222.5
        vmovdqu   %ymm1, (%rdi,%rdx)                            #222.5
        addq      $32, %rdi                                     #222.5
        cmpq      %rax, %rdi                                    #222.5
        jb        ..B6.35       # Prob 82%                      #222.5
                                # LOE rax rdx rbx rdi r8 r12 r13 r14 r15 ecx esi
..B6.37:                        # Preds ..B6.35 ..B6.52
                                # Execution count [2.59e-01]: Infreq
        lea       1(%rsi), %eax                                 #222.5
        cmpl      %ecx, %eax                                    #222.5
        ja        ..B6.28       # Prob 50%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B6.38:                        # Preds ..B6.37
                                # Execution count [2.33e-01]: Infreq
        subl      %esi, %ecx                                    #222.5
        cmpl      $8, %ecx                                      #222.5
        jb        ..B6.53       # Prob 10%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B6.39:                        # Preds ..B6.38
                                # Execution count [2.33e-01]: Infreq
        movl      %ecx, %eax                                    #222.5
        xorl      %edi, %edi                                    #222.5
        andl      $-8, %eax                                     #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B6.40:                        # Preds ..B6.40 ..B6.39
                                # Execution count [1.30e+00]: Infreq
        lea       (%rsi,%rdi), %r9d                             #222.5
        addl      $8, %edi                                      #222.5
        movslq    %r9d, %r9                                     #222.5
        vmovq     (%r9,%r8), %xmm0                              #222.5
        vmovq     32(%rsp,%r9), %xmm1                           #222.5
        vpxor     %xmm1, %xmm0, %xmm2                           #222.5
        vmovq     %xmm2, (%r9,%rdx)                             #222.5
        cmpl      %eax, %edi                                    #222.5
        jb        ..B6.40       # Prob 82%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B6.42:                        # Preds ..B6.40 ..B6.53
                                # Execution count [2.59e-01]: Infreq
        cmpl      %ecx, %eax                                    #222.5
        jae       ..B6.28       # Prob 10%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B6.44:                        # Preds ..B6.42 ..B6.44
                                # Execution count [1.30e+00]: Infreq
        lea       (%rsi,%rax), %edi                             #222.5
        incl      %eax                                          #222.5
        movslq    %edi, %rdi                                    #222.5
        movb      (%rdi,%r8), %r9b                              #222.5
        xorb      32(%rsp,%rdi), %r9b                           #222.5
        movb      %r9b, (%rdi,%rdx)                             #222.5
        cmpl      %ecx, %eax                                    #222.5
        jb        ..B6.44       # Prob 82%                      #222.5
        jmp       ..B6.28       # Prob 100%                     #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B6.46:                        # Preds ..B6.30 ..B6.32
                                # Execution count [2.59e-01]: Infreq
        movl      %ecx, %eax                                    #222.5
        movl      $1, %edi                                      #222.5
        xorl      %esi, %esi                                    #222.5
        shrl      $1, %eax                                      #222.5
        je        ..B6.50       # Prob 10%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi edi
..B6.48:                        # Preds ..B6.46 ..B6.48
                                # Execution count [6.48e-01]: Infreq
        lea       (%rsi,%rsi), %edi                             #222.5
        movslq    %edi, %rdi                                    #222.5
        lea       1(%rsi,%rsi), %r10d                           #222.5
        movslq    %r10d, %r10                                   #222.5
        incl      %esi                                          #222.5
        movb      (%rdi,%r8), %r9b                              #222.5
        xorb      32(%rsp,%rdi), %r9b                           #222.5
        movb      %r9b, (%rdi,%rdx)                             #222.5
        movb      (%r10,%r8), %r11b                             #222.5
        xorb      32(%rsp,%r10), %r11b                          #222.5
        movb      %r11b, (%r10,%rdx)                            #222.5
        cmpl      %eax, %esi                                    #222.5
        jb        ..B6.48       # Prob 64%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
..B6.49:                        # Preds ..B6.48
                                # Execution count [2.33e-01]: Infreq
        lea       1(%rsi,%rsi), %edi                            #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx edi
..B6.50:                        # Preds ..B6.49 ..B6.46
                                # Execution count [2.59e-01]: Infreq
        decl      %edi                                          #222.5
        cmpl      %ecx, %edi                                    #222.5
        jae       ..B6.28       # Prob 10%                      #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 edi
..B6.51:                        # Preds ..B6.50
                                # Execution count [2.33e-01]: Infreq
        movslq    %edi, %rdi                                    #222.5
        movb      (%rdi,%r8), %r8b                              #222.5
        xorb      32(%rsp,%rdi), %r8b                           #222.5
        movb      %r8b, (%rdi,%rdx)                             #222.5
        jmp       ..B6.28       # Prob 100%                     #222.5
                                # LOE rbx r12 r13 r14 r15
..B6.52:                        # Preds ..B6.33
                                # Execution count [2.33e-02]: Infreq
        xorl      %esi, %esi                                    #222.5
        jmp       ..B6.37       # Prob 100%                     #222.5
                                # LOE rdx rbx r8 r12 r13 r14 r15 ecx esi
..B6.53:                        # Preds ..B6.38
                                # Execution count [2.33e-02]: Infreq
        xorl      %eax, %eax                                    #222.5
        jmp       ..B6.42       # Prob 100%                     #222.5
        .align    16,0x90
                                # LOE rdx rbx r8 r12 r13 r14 r15 eax ecx esi
	.cfi_endproc
# mark_end;
	.type	xote_decrypt_bytes,@function
	.size	xote_decrypt_bytes,.-xote_decrypt_bytes
..LNxote_decrypt_bytes.5:
	.data
# -- End  xote_decrypt_bytes
	.text
.L_2__routine_start_xote_keystream_bytes_6:
# -- Begin  xote_keystream_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_keystream_bytes
# --- xote_keystream_bytes(stream_ctx *, uint8_t *, uint32_t)
xote_keystream_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_keystream_bytes.752:
..L753:
                                                        #226.1
        pushq     %rbp                                          #226.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #226.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #226.1
        pushq     %r12                                          #226.1
        pushq     %r13                                          #226.1
        pushq     %r14                                          #226.1
        pushq     %r15                                          #226.1
        pushq     %rbx                                          #226.1
        subq      $248, %rsp                                    #226.1
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movl      %edx, %r12d                                   #226.1
        movl      %r12d, %r13d                                  #226.1
        movq      %rsi, %r15                                    #226.1
        movq      %rdi, %r14                                    #226.1
        testl     %r12d, %r12d                                  #228.21
        jbe       ..B7.17       # Prob 50%                      #228.21
                                # LOE rbx r13 r14 r15 r12d
..B7.2:                         # Preds ..B7.1
                                # Execution count [5.00e-03]
        cmpl      $96, %r12d                                    #228.5
        jbe       ..B7.32       # Prob 0%                       #228.5
                                # LOE rbx r13 r14 r15 r12d
..B7.3:                         # Preds ..B7.2
                                # Execution count [1.00e+00]
        movq      %r15, %rdi                                    #228.5
        xorl      %esi, %esi                                    #228.5
        movq      %r13, %rdx                                    #228.5
        call      _intel_fast_memset@PLT                        #228.5
                                # LOE rbx r13 r14 r15 r12d
..B7.4:                         # Preds ..B7.3
                                # Execution count [0.00e+00]
        movq      %r15, %rdx                                    #230.5
        cmpl      $128, %r12d                                   #230.5
        jb        ..B7.18       # Prob 10%                      #230.5
                                # LOE rdx rbx r13 r14 r15 r12d
..B7.5:                         # Preds ..B7.4
                                # Execution count [6.48e-01]
        movq      %r13, %rcx                                    #
        xorl      %eax, %eax                                    #230.5
        negq      %rcx                                          #
        movl      %eax, %ebx                                    #
        sarq      $6, %rcx                                      #
        shrq      $57, %rcx                                     #
        subq      %r13, %rcx                                    #
        movq      %r15, %r13                                    #
        shrq      $7, %rcx                                      #
        movq      %rdx, %r15                                    #
        negq      %rcx                                          #
        movl      %ecx, (%rsp)                                  #[spill]
                                # LOE r13 r14 r15 ebx r12d
..B7.6:                         # Preds ..B7.15 ..B7.5
                                # Execution count [3.60e+00]
        movq      %r14, %rsi                                    #230.5
        lea       96(%rsp), %rdi                                #230.5
        vzeroupper                                              #230.5
..___tag_value_xote_keystream_bytes.763:
#       xote(uint8_t *, const uint32_t *)
        call      xote                                          #230.5
..___tag_value_xote_keystream_bytes.764:
                                # LOE r13 r14 r15 ebx r12d
..B7.7:                         # Preds ..B7.6
                                # Execution count [3.60e+00]
        addl      $2, 16(%r14)                                  #230.5
        jne       ..B7.9        # Prob 50%                      #230.5
                                # LOE r13 r14 r15 ebx r12d
..B7.8:                         # Preds ..B7.7
                                # Execution count [1.80e+00]
        incl      20(%r14)                                      #230.5
                                # LOE r13 r14 r15 ebx r12d
..B7.9:                         # Preds ..B7.7 ..B7.8
                                # Execution count [0.00e+00]
        movq      %r13, %rcx                                    #230.5
        negq      %rcx                                          #230.5
        addq      %r15, %rcx                                    #230.5
        cmpq      $128, %rcx                                    #230.5
        jge       ..B7.11       # Prob 50%                      #230.5
                                # LOE rcx r13 r14 r15 ebx r12d
..B7.10:                        # Preds ..B7.9
                                # Execution count [0.00e+00]
        negq      %rcx                                          #230.5
        cmpq      $128, %rcx                                    #230.5
        jl        ..B7.12       # Prob 50%                      #230.5
                                # LOE r13 r14 r15 ebx r12d
..B7.11:                        # Preds ..B7.9 ..B7.10
                                # Execution count [1.80e+00]
        vmovdqu   (%r13), %ymm0                                 #230.5
        vpxor     96(%rsp), %ymm0, %ymm1                        #230.5
        vmovdqu   %ymm1, (%r15)                                 #230.5
        vmovdqu   32(%r13), %ymm2                               #230.5
        vpxor     128(%rsp), %ymm2, %ymm3                       #230.5
        vmovdqu   %ymm3, 32(%r15)                               #230.5
        vmovdqu   64(%r13), %ymm4                               #230.5
        vpxor     160(%rsp), %ymm4, %ymm5                       #230.5
        vmovdqu   %ymm5, 64(%r15)                               #230.5
        vmovdqu   96(%r13), %ymm6                               #230.5
        vpxor     192(%rsp), %ymm6, %ymm7                       #230.5
        vmovdqu   %ymm7, 96(%r15)                               #230.5
        jmp       ..B7.15       # Prob 100%                     #230.5
                                # LOE r13 r14 r15 ebx r12d
..B7.12:                        # Preds ..B7.10
                                # Execution count [1.80e+00]
        xorl      %ecx, %ecx                                    #230.5
                                # LOE r13 r14 r15 ecx ebx r12d
..B7.13:                        # Preds ..B7.13 ..B7.12
                                # Execution count [1.15e+02]
        lea       (%rcx,%rcx), %edi                             #230.5
        movb      (%rdi,%r13), %r8b                             #230.5
        lea       1(%rcx,%rcx), %r9d                            #230.5
        xorb      96(%rsp,%rdi), %r8b                           #230.5
        incl      %ecx                                          #230.5
        movb      %r8b, (%rdi,%r15)                             #230.5
        movb      (%r9,%r13), %r10b                             #230.5
        xorb      96(%rsp,%r9), %r10b                           #230.5
        movb      %r10b, (%r9,%r15)                             #230.5
        cmpl      $64, %ecx                                     #230.5
        jb        ..B7.13       # Prob 98%                      #230.5
                                # LOE r13 r14 r15 ecx ebx r12d
..B7.15:                        # Preds ..B7.13 ..B7.11
                                # Execution count [3.60e+00]
        incl      %ebx                                          #230.5
        addl      $-128, %r12d                                  #230.5
        addq      $128, %r15                                    #230.5
        addq      $128, %r13                                    #230.5
        cmpl      (%rsp), %ebx                                  #230.5[spill]
        jb        ..B7.6        # Prob 82%                      #230.5
                                # LOE r13 r14 r15 ebx r12d
..B7.16:                        # Preds ..B7.15
                                # Execution count [6.48e-01]
        movq      %r15, %rdx                                    #
        movq      %r13, %r15                                    #
        jmp       ..B7.18       # Prob 100%                     #
                                # LOE rdx rbx r14 r15 r12d
..B7.17:                        # Preds ..B7.1
                                # Execution count [9.95e-01]
        movq      %r15, %rdx                                    #230.5
        je        ..B7.31       # Prob 28%                      #230.5
                                # LOE rdx rbx r14 r15 r12d
..B7.18:                        # Preds ..B7.45 ..B7.17 ..B7.16 ..B7.4
                                # Execution count [7.20e-01]
        movq      %r15, %rsi                                    #230.5
        movq      %rdx, %rcx                                    #230.5
        testl     %r12d, %r12d                                  #230.5
        je        ..B7.31       # Prob 28%                      #230.5
                                # LOE rdx rcx rbx rsi r14 r15 r12d
..B7.19:                        # Preds ..B7.18
                                # Execution count [5.18e-01]
        xorl      %eax, %eax                                    #230.5
        movq      %r15, %r13                                    #230.5
        movq      %rcx, 8(%rsp)                                 #230.5[spill]
        movq      %rax, %rbx                                    #230.5
        movq      %rsi, (%rsp)                                  #230.5[spill]
        movq      %rdx, %r15                                    #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.20:                        # Preds ..B7.30 ..B7.19
                                # Execution count [2.59e+00]
        movq      %r14, %rsi                                    #230.5
        lea       32(%rsp), %rdi                                #230.5
        incq      %rbx                                          #230.5
        vzeroupper                                              #230.5
..___tag_value_xote_keystream_bytes.768:
#       forro_1(uint8_t *, const uint32_t *)
        call      forro_1                                       #230.5
..___tag_value_xote_keystream_bytes.769:
                                # LOE rbx r13 r14 r15 r12d
..B7.21:                        # Preds ..B7.20
                                # Execution count [2.59e+00]
        incl      16(%r14)                                      #230.5
        jne       ..B7.23       # Prob 50%                      #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.22:                        # Preds ..B7.21
                                # Execution count [1.30e+00]
        incl      20(%r14)                                      #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.23:                        # Preds ..B7.21 ..B7.22
                                # Execution count [2.59e+00]
        cmpl      $64, %r12d                                    #230.5
        jbe       ..B7.48       # Prob 20%                      #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.24:                        # Preds ..B7.23
                                # Execution count [0.00e+00]
        movq      %rbx, %r15                                    #230.5
        shlq      $6, %r15                                      #230.5
        movq      (%rsp), %rdi                                  #230.5[spill]
        movq      8(%rsp), %rcx                                 #230.5[spill]
        lea       -64(%rdi,%r15), %r8                           #230.5
        lea       (%rcx,%r15), %rax                             #230.5
        lea       -64(%r15,%rcx), %rcx                          #230.5
        subq      %r8, %rcx                                     #230.5
        lea       (%rdi,%r15), %r13                             #230.5
        cmpq      $64, %rcx                                     #230.5
        jge       ..B7.26       # Prob 50%                      #230.5
                                # LOE rax rcx rbx r13 r14 r15 r12d
..B7.25:                        # Preds ..B7.24
                                # Execution count [0.00e+00]
        negq      %rcx                                          #230.5
        cmpq      $64, %rcx                                     #230.5
        jl        ..B7.27       # Prob 50%                      #230.5
                                # LOE rax rbx r13 r14 r15 r12d
..B7.26:                        # Preds ..B7.24 ..B7.25
                                # Execution count [1.04e+00]
        vmovdqu   -64(%r13), %ymm0                              #230.5
        vpxor     32(%rsp), %ymm0, %ymm1                        #230.5
        vmovdqu   %ymm1, -64(%rax)                              #230.5
        vmovdqu   -32(%r13), %ymm2                              #230.5
        vpxor     64(%rsp), %ymm2, %ymm3                        #230.5
        vmovdqu   %ymm3, -32(%rax)                              #230.5
        jmp       ..B7.30       # Prob 100%                     #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.27:                        # Preds ..B7.25
                                # Execution count [1.04e+00]
        xorl      %ecx, %ecx                                    #230.5
                                # LOE rax rbx r13 r14 r15 ecx r12d
..B7.28:                        # Preds ..B7.28 ..B7.27
                                # Execution count [3.32e+01]
        lea       (%rcx,%rcx), %edi                             #230.5
        movb      -64(%rdi,%r13), %r8b                          #230.5
        lea       1(%rcx,%rcx), %r9d                            #230.5
        xorb      32(%rsp,%rdi), %r8b                           #230.5
        incl      %ecx                                          #230.5
        movb      %r8b, -64(%rdi,%rax)                          #230.5
        movb      -64(%r9,%r13), %r10b                          #230.5
        xorb      32(%rsp,%r9), %r10b                           #230.5
        movb      %r10b, -64(%r9,%rax)                          #230.5
        cmpl      $32, %ecx                                     #230.5
        jb        ..B7.28       # Prob 96%                      #230.5
                                # LOE rax rbx r13 r14 r15 ecx r12d
..B7.30:                        # Preds ..B7.28 ..B7.26
                                # Execution count [2.07e+00]
        addq      8(%rsp), %r15                                 #230.5[spill]
        addl      $-64, %r12d                                   #230.5
        jmp       ..B7.20       # Prob 100%                     #230.5
                                # LOE rbx r13 r14 r15 r12d
..B7.31:                        # Preds ..B7.63 ..B7.17 ..B7.69 ..B7.18 ..B7.48
                                #       ..B7.56 ..B7.61 ..B7.70
                                # Execution count [1.00e+00]
        vzeroupper                                              #231.1
        addq      $248, %rsp                                    #231.1
	.cfi_restore 3
        popq      %rbx                                          #231.1
	.cfi_restore 15
        popq      %r15                                          #231.1
	.cfi_restore 14
        popq      %r14                                          #231.1
	.cfi_restore 13
        popq      %r13                                          #231.1
	.cfi_restore 12
        popq      %r12                                          #231.1
        movq      %rbp, %rsp                                    #231.1
        popq      %rbp                                          #231.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #231.1
	.cfi_def_cfa 6, 16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B7.32:                        # Preds ..B7.2
                                # Execution count [1.00e+00]: Infreq
        cmpl      $32, %r12d                                    #228.5
        jb        ..B7.47       # Prob 10%                      #228.5
                                # LOE rbx r14 r15 r12d
..B7.33:                        # Preds ..B7.32
                                # Execution count [1.00e+00]: Infreq
        movl      %r12d, %eax                                   #228.5
        xorl      %edx, %edx                                    #228.5
        vpxor     %ymm0, %ymm0, %ymm0                           #229.21
        andl      $-32, %eax                                    #228.5
                                # LOE rdx rbx r14 r15 eax r12d ymm0
..B7.34:                        # Preds ..B7.34 ..B7.33
                                # Execution count [5.56e+00]: Infreq
        vmovdqu   %ymm0, (%rdx,%r15)                            #229.9
        addl      $32, %edx                                     #228.5
        cmpl      %eax, %edx                                    #228.5
        jb        ..B7.34       # Prob 82%                      #228.5
                                # LOE rdx rbx r14 r15 eax r12d ymm0
..B7.36:                        # Preds ..B7.34 ..B7.47
                                # Execution count [1.11e+00]: Infreq
        lea       1(%rax), %edx                                 #228.5
        cmpl      %r12d, %edx                                   #228.5
        ja        ..B7.45       # Prob 50%                      #228.5
                                # LOE rbx r14 r15 eax r12d
..B7.37:                        # Preds ..B7.36
                                # Execution count [1.00e+00]: Infreq
        movl      %r12d, %r8d                                   #228.5
        subl      %eax, %r8d                                    #228.5
        cmpl      $8, %r8d                                      #228.5
        jb        ..B7.46       # Prob 10%                      #228.5
                                # LOE rbx r14 r15 eax r8d r12d
..B7.38:                        # Preds ..B7.37
                                # Execution count [1.00e+00]: Infreq
        movl      %r8d, %edx                                    #228.5
        xorl      %esi, %esi                                    #228.5
        andl      $-8, %edx                                     #228.5
        movl      %eax, %ecx                                    #228.5
        vpxor     %xmm0, %xmm0, %xmm0                           #229.21
                                # LOE rcx rbx r14 r15 eax edx esi r8d r12d xmm0
..B7.39:                        # Preds ..B7.39 ..B7.38
                                # Execution count [5.56e+00]: Infreq
        addl      $8, %esi                                      #228.5
        vmovq     %xmm0, (%rcx,%r15)                            #229.9
        addl      $8, %ecx                                      #228.5
        cmpl      %edx, %esi                                    #228.5
        jb        ..B7.39       # Prob 82%                      #228.5
                                # LOE rcx rbx r14 r15 eax edx esi r8d r12d xmm0
..B7.41:                        # Preds ..B7.39 ..B7.46
                                # Execution count [1.11e+00]: Infreq
        addl      %edx, %eax                                    #228.5
        cmpl      %r8d, %edx                                    #228.5
        jae       ..B7.45       # Prob 10%                      #228.5
                                # LOE rax rbx r14 r15 edx r8d r12d
..B7.43:                        # Preds ..B7.41 ..B7.43
                                # Execution count [5.56e+00]: Infreq
        incl      %edx                                          #228.5
        movb      $0, (%rax,%r15)                               #229.9
        incl      %eax                                          #228.5
        cmpl      %r8d, %edx                                    #228.5
        jb        ..B7.43       # Prob 82%                      #228.5
                                # LOE rax rbx r14 r15 edx r8d r12d
..B7.45:                        # Preds ..B7.43 ..B7.36 ..B7.41
                                # Execution count [5.56e-01]: Infreq
        movq      %r15, %rdx                                    #230.5
        jmp       ..B7.18       # Prob 100%                     #230.5
                                # LOE rdx rbx r14 r15 r12d
..B7.46:                        # Preds ..B7.37
                                # Execution count [1.00e-01]: Infreq
        xorl      %edx, %edx                                    #228.5
        jmp       ..B7.41       # Prob 100%                     #228.5
                                # LOE rbx r14 r15 eax edx r8d r12d
..B7.47:                        # Preds ..B7.32
                                # Execution count [1.00e-01]: Infreq
        xorl      %eax, %eax                                    #228.5
        jmp       ..B7.36       # Prob 100%                     #228.5
                                # LOE rbx r14 r15 eax r12d
..B7.48:                        # Preds ..B7.23
                                # Execution count [5.18e-01]: Infreq
        movq      %r15, %rdx                                    #
        movq      %r13, %r15                                    #
        testl     %r12d, %r12d                                  #230.5
        jbe       ..B7.31       # Prob 50%                      #230.5
                                # LOE rdx rbx r15 r12d
..B7.49:                        # Preds ..B7.48
                                # Execution count [0.00e+00]: Infreq
        cmpl      $6, %r12d                                     #230.5
        jbe       ..B7.65       # Prob 50%                      #230.5
                                # LOE rdx rbx r15 r12d
..B7.50:                        # Preds ..B7.49
                                # Execution count [0.00e+00]: Infreq
        movq      %rdx, %rax                                    #230.5
        movl      %r12d, %ecx                                   #230.5
        subq      %r15, %rax                                    #230.5
        cmpq      %rcx, %rax                                    #230.5
        jge       ..B7.52       # Prob 50%                      #230.5
                                # LOE rax rdx rcx rbx r15 r12d
..B7.51:                        # Preds ..B7.50
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #230.5
        cmpq      %rcx, %rax                                    #230.5
        jl        ..B7.65       # Prob 50%                      #230.5
                                # LOE rdx rbx r15 r12d
..B7.52:                        # Preds ..B7.50 ..B7.51
                                # Execution count [2.33e-01]: Infreq
        cmpl      $32, %r12d                                    #230.5
        jb        ..B7.71       # Prob 10%                      #230.5
                                # LOE rdx rbx r15 r12d
..B7.53:                        # Preds ..B7.52
                                # Execution count [2.33e-01]: Infreq
        movl      %r12d, %eax                                   #230.5
        xorl      %esi, %esi                                    #230.5
        andl      $-32, %eax                                    #230.5
        movslq    %eax, %rcx                                    #230.5
                                # LOE rdx rcx rbx rsi r15 eax r12d
..B7.54:                        # Preds ..B7.54 ..B7.53
                                # Execution count [1.30e+00]: Infreq
        vmovdqu   (%r15,%rsi), %ymm0                            #230.5
        vpxor     32(%rsp,%rsi), %ymm0, %ymm1                   #230.5
        vmovdqu   %ymm1, (%rsi,%rdx)                            #230.5
        addq      $32, %rsi                                     #230.5
        cmpq      %rcx, %rsi                                    #230.5
        jb        ..B7.54       # Prob 82%                      #230.5
                                # LOE rdx rcx rbx rsi r15 eax r12d
..B7.56:                        # Preds ..B7.54 ..B7.71
                                # Execution count [2.59e-01]: Infreq
        lea       1(%rax), %ecx                                 #230.5
        cmpl      %r12d, %ecx                                   #230.5
        ja        ..B7.31       # Prob 50%                      #230.5
                                # LOE rdx rbx r15 eax r12d
..B7.57:                        # Preds ..B7.56
                                # Execution count [2.33e-01]: Infreq
        subl      %eax, %r12d                                   #230.5
        cmpl      $8, %r12d                                     #230.5
        jb        ..B7.72       # Prob 10%                      #230.5
                                # LOE rdx rbx r15 eax r12d
..B7.58:                        # Preds ..B7.57
                                # Execution count [2.33e-01]: Infreq
        movl      %r12d, %ecx                                   #230.5
        xorl      %esi, %esi                                    #230.5
        andl      $-8, %ecx                                     #230.5
                                # LOE rdx rbx r15 eax ecx esi r12d
..B7.59:                        # Preds ..B7.59 ..B7.58
                                # Execution count [1.30e+00]: Infreq
        lea       (%rax,%rsi), %r8d                             #230.5
        addl      $8, %esi                                      #230.5
        movslq    %r8d, %r8                                     #230.5
        vmovq     (%r8,%r15), %xmm0                             #230.5
        vmovq     32(%rsp,%r8), %xmm1                           #230.5
        vpxor     %xmm1, %xmm0, %xmm2                           #230.5
        vmovq     %xmm2, (%r8,%rdx)                             #230.5
        cmpl      %ecx, %esi                                    #230.5
        jb        ..B7.59       # Prob 82%                      #230.5
                                # LOE rdx rbx r15 eax ecx esi r12d
..B7.61:                        # Preds ..B7.59 ..B7.72
                                # Execution count [2.59e-01]: Infreq
        cmpl      %r12d, %ecx                                   #230.5
        jae       ..B7.31       # Prob 10%                      #230.5
                                # LOE rdx rbx r15 eax ecx r12d
..B7.63:                        # Preds ..B7.61 ..B7.63
                                # Execution count [1.30e+00]: Infreq
        lea       (%rax,%rcx), %esi                             #230.5
        incl      %ecx                                          #230.5
        movslq    %esi, %rsi                                    #230.5
        movb      (%rsi,%r15), %r8b                             #230.5
        xorb      32(%rsp,%rsi), %r8b                           #230.5
        movb      %r8b, (%rsi,%rdx)                             #230.5
        cmpl      %r12d, %ecx                                   #230.5
        jb        ..B7.63       # Prob 82%                      #230.5
        jmp       ..B7.31       # Prob 100%                     #230.5
                                # LOE rdx rbx r15 eax ecx r12d
..B7.65:                        # Preds ..B7.49 ..B7.51
                                # Execution count [2.59e-01]: Infreq
        movl      %r12d, %eax                                   #230.5
        movl      $1, %esi                                      #230.5
        xorl      %ecx, %ecx                                    #230.5
        shrl      $1, %eax                                      #230.5
        je        ..B7.69       # Prob 10%                      #230.5
                                # LOE rdx rbx r15 eax ecx esi r12d
..B7.67:                        # Preds ..B7.65 ..B7.67
                                # Execution count [6.48e-01]: Infreq
        lea       (%rcx,%rcx), %esi                             #230.5
        movslq    %esi, %rsi                                    #230.5
        lea       1(%rcx,%rcx), %r9d                            #230.5
        movslq    %r9d, %r9                                     #230.5
        incl      %ecx                                          #230.5
        movb      (%rsi,%r15), %r8b                             #230.5
        xorb      32(%rsp,%rsi), %r8b                           #230.5
        movb      %r8b, (%rsi,%rdx)                             #230.5
        movb      (%r9,%r15), %r10b                             #230.5
        xorb      32(%rsp,%r9), %r10b                           #230.5
        movb      %r10b, (%r9,%rdx)                             #230.5
        cmpl      %eax, %ecx                                    #230.5
        jb        ..B7.67       # Prob 64%                      #230.5
                                # LOE rdx rbx r15 eax ecx r12d
..B7.68:                        # Preds ..B7.67
                                # Execution count [2.33e-01]: Infreq
        lea       1(%rcx,%rcx), %esi                            #230.5
                                # LOE rdx rbx r15 esi r12d
..B7.69:                        # Preds ..B7.68 ..B7.65
                                # Execution count [2.59e-01]: Infreq
        decl      %esi                                          #230.5
        cmpl      %r12d, %esi                                   #230.5
        jae       ..B7.31       # Prob 10%                      #230.5
                                # LOE rdx rbx r15 esi
..B7.70:                        # Preds ..B7.69
                                # Execution count [2.33e-01]: Infreq
        movslq    %esi, %rsi                                    #230.5
        movb      (%rsi,%r15), %al                              #230.5
        xorb      32(%rsp,%rsi), %al                            #230.5
        movb      %al, (%rsi,%rdx)                              #230.5
        jmp       ..B7.31       # Prob 100%                     #230.5
                                # LOE rbx
..B7.71:                        # Preds ..B7.52
                                # Execution count [2.33e-02]: Infreq
        xorl      %eax, %eax                                    #230.5
        jmp       ..B7.56       # Prob 100%                     #230.5
                                # LOE rdx rbx r15 eax r12d
..B7.72:                        # Preds ..B7.57
                                # Execution count [2.33e-02]: Infreq
        xorl      %ecx, %ecx                                    #230.5
        jmp       ..B7.61       # Prob 100%                     #230.5
        .align    16,0x90
                                # LOE rdx rbx r15 eax ecx r12d
	.cfi_endproc
# mark_end;
	.type	xote_keystream_bytes,@function
	.size	xote_keystream_bytes,.-xote_keystream_bytes
..LNxote_keystream_bytes.6:
	.data
# -- End  xote_keystream_bytes
	.text
.L_2__routine_start_xote_init_7:
# -- Begin  xote_init
	.text
# mark_begin;
       .align    16,0x90
	.globl xote_init
# --- xote_init(void)
xote_init:
..B8.1:                         # Preds ..B8.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_xote_init.788:
..L789:
                                                        #111.1
        ret                                                     #112.5
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	xote_init,@function
	.size	xote_init,.-xote_init
..LNxote_init.7:
	.data
# -- End  xote_init
	.section .rodata, "a"
	.align 4
	.align 1
sigma:
	.long	1634760805
	.long	857760878
	.long	2036477234
	.long	1797285236
	.type	sigma,@object
	.size	sigma,16
	.align 1
tau:
	.long	1634760805
	.long	824206446
	.long	2036477238
	.long	1797285236
	.type	tau,@object
	.size	tau,16
	.data
	.section .note.GNU-stack, ""
# End
