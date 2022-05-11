# mark_description "Intel(R) C Intel(R) 64 Compiler for applications running on Intel(R) 64, Version 19.1.1.217 Build 20200306";
# mark_description "-S -m64 -march=native -mtune=native -O3 -fomit-frame-pointer -fwrapv -fPIC -fPIE -o C/forro/x86-simd/forro.s";
	.file "forro.c"
	.text
..TXTST0:
.L_2__routine_start_forro_0:
# -- Begin  forro
	.text
# mark_begin;
       .align    16,0x90
	.globl forro
# --- forro(uint8_t *, const uint32_t *)
forro:
# parameter 1: %rdi
# parameter 2: %rsi
..B1.1:                         # Preds ..B1.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro.1:
..L2:
                                                          #40.1
        pushq     %rbp                                          #40.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #40.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #40.1
        pushq     %r12                                          #40.1
        pushq     %r13                                          #40.1
        pushq     %r14                                          #40.1
        pushq     %r15                                          #40.1
        pushq     %rbx                                          #40.1
        subq      $216, %rsp                                    #40.1
        movq      %rsi, %r9                                     #40.1
        movq      %rdi, 64(%rsp)                                #40.1[spill]
        movl      12(%r9), %r10d                                #45.16
        movl      48(%r9), %eax                                 #45.16
        addl      %r10d, %eax                                   #48.9
        movl      24(%r9), %r11d                                #45.16
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xd8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x22
        movl      32(%r9), %r14d                                #45.16
        xorl      %eax, %r14d                                   #48.9
        movl      %r11d, 128(%rsp)                              #45.16[spill]
        movl      16(%r9), %r13d                                #45.16
        movl      8(%r9), %edx                                  #45.16
        addl      %r14d, %r13d                                  #48.9
        movl      28(%r9), %r11d                                #45.16
        movl      %edx, 136(%rsp)                               #45.16[spill]
        movl      %r11d, 144(%rsp)                              #45.16[spill]
        movl      (%r9), %r15d                                  #45.16
        movl      20(%r9), %esi                                 #45.16
        movl      4(%r9), %ecx                                  #45.16
        vmovdqu   (%r9), %ymm0                                  #45.16
        vmovdqu   32(%r9), %ymm1                                #45.16
        vmovdqu   %ymm0, (%rsp)                                 #45.9
        vmovdqu   %ymm1, 32(%rsp)                               #45.9
        movl      52(%r9), %r8d                                 #45.16
        movl      36(%r9), %r12d                                #45.16
        movl      56(%r9), %edx                                 #45.16
        movl      40(%r9), %r11d                                #45.16
        movl      60(%r9), %ebx                                 #45.16
        movl      44(%r9), %edi                                 #45.16
        movl      %r13d, %r9d                                   #48.9
        shll      $19, %r9d                                     #48.9
        shrl      $13, %r13d                                    #48.9
        orl       %r13d, %r9d                                   #48.9
        addl      %r9d, %r15d                                   #48.9
        xorl      %r15d, %r10d                                  #48.9
        addl      %r10d, %eax                                   #48.9
        movl      %eax, %r13d                                   #48.9
        shll      $11, %r13d                                    #48.9
        shrl      $21, %eax                                     #48.9
        orl       %eax, %r13d                                   #48.9
        addl      %r13d, %r14d                                  #48.9
        xorl      %r14d, %r9d                                   #48.9
        movl      %edi, 72(%rsp)                                #45.16[spill]
        movl      %r9d, 152(%rsp)                               #48.9[spill]
        lea       (%r9,%r15), %eax                              #48.9
        addl      %r9d, %r15d                                   #48.9
        shll      $7, %eax                                      #48.9
        shrl      $25, %r15d                                    #48.9
        orl       %r15d, %eax                                   #48.9
        addl      %eax, %r8d                                    #49.9
        xorl      %r8d, %r12d                                   #49.9
        addl      %r12d, %esi                                   #49.9
        movl      %esi, %edi                                    #49.9
        shll      $19, %edi                                     #49.9
        shrl      $13, %esi                                     #49.9
        orl       %esi, %edi                                    #49.9
        addl      %edi, %ecx                                    #49.9
        xorl      %ecx, %eax                                    #49.9
        movl      136(%rsp), %r15d                              #50.9[spill]
        lea       (%rax,%r8), %r9d                              #49.9
        addl      %eax, %r8d                                    #49.9
        shll      $11, %r9d                                     #49.9
        shrl      $21, %r8d                                     #49.9
        orl       %r8d, %r9d                                    #49.9
        addl      %r9d, %r12d                                   #49.9
        xorl      %r12d, %edi                                   #49.9
        movl      %r12d, 80(%rsp)                               #49.9[spill]
        lea       (%rdi,%rcx), %r8d                             #49.9
        addl      %edi, %ecx                                    #49.9
        shll      $7, %r8d                                      #49.9
        shrl      $25, %ecx                                     #49.9
        orl       %ecx, %r8d                                    #49.9
        addl      %r8d, %edx                                    #50.9
        xorl      %edx, %r11d                                   #50.9
        movl      128(%rsp), %ecx                               #50.9[spill]
        addl      %r11d, %ecx                                   #50.9
        movl      %ecx, %r12d                                   #50.9
        shll      $19, %r12d                                    #50.9
        shrl      $13, %ecx                                     #50.9
        orl       %ecx, %r12d                                   #50.9
        addl      %r12d, %r15d                                  #50.9
        xorl      %r15d, %r8d                                   #50.9
        lea       (%r8,%rdx), %esi                              #50.9
        addl      %r8d, %edx                                    #50.9
        shll      $11, %esi                                     #50.9
        shrl      $21, %edx                                     #50.9
        orl       %edx, %esi                                    #50.9
        addl      %esi, %r11d                                   #50.9
        xorl      %r11d, %r12d                                  #50.9
        movl      %esi, 160(%rsp)                               #50.9[spill]
        movl      72(%rsp), %esi                                #51.9[spill]
        lea       (%r12,%r15), %edx                             #50.9
        addl      %r12d, %r15d                                  #50.9
        shll      $7, %edx                                      #50.9
        shrl      $25, %r15d                                    #50.9
        orl       %r15d, %edx                                   #50.9
        addl      %edx, %ebx                                    #51.9
        xorl      %ebx, %esi                                    #51.9
        movl      144(%rsp), %r15d                              #51.9[spill]
        addl      %esi, %r15d                                   #51.9
        movl      %r15d, %ecx                                   #51.9
        shll      $19, %ecx                                     #51.9
        shrl      $13, %r15d                                    #51.9
        orl       %r15d, %ecx                                   #51.9
        addl      %ecx, %r10d                                   #51.9
        xorl      %r10d, %edx                                   #51.9
        lea       (%rdx,%rbx), %r15d                            #51.9
        addl      %edx, %ebx                                    #51.9
        shll      $11, %r15d                                    #51.9
        shrl      $21, %ebx                                     #51.9
        orl       %ebx, %r15d                                   #51.9
        addl      %r15d, %esi                                   #51.9
        xorl      %esi, %ecx                                    #51.9
        addl      %ecx, %r10d                                   #51.9
        movl      %r10d, %ebx                                   #51.9
        shll      $7, %ebx                                      #51.9
        shrl      $25, %r10d                                    #51.9
        orl       %r10d, %ebx                                   #51.9
        addl      %ebx, %r15d                                   #52.9
        xorl      %r15d, %r11d                                  #52.9
        lea       (%r11,%rdi), %r10d                            #52.9
        addl      %r11d, %edi                                   #52.9
        shll      $19, %r10d                                    #52.9
        shrl      $13, %edi                                     #52.9
        orl       %edi, %r10d                                   #52.9
        addl      %r10d, %eax                                   #52.9
        xorl      %eax, %ebx                                    #52.9
        addl      %ebx, %r15d                                   #52.9
        movl      %r15d, %edi                                   #52.9
        shll      $11, %edi                                     #52.9
        shrl      $21, %r15d                                    #52.9
        orl       %r15d, %edi                                   #52.9
        addl      %edi, %r11d                                   #52.9
        xorl      %r11d, %r10d                                  #52.9
        movl      %edi, 168(%rsp)                               #52.9[spill]
        lea       (%rax,%r10), %edi                             #52.9
        addl      %r10d, %eax                                   #52.9
        shll      $7, %edi                                      #52.9
        shrl      $25, %eax                                     #52.9
        orl       %eax, %edi                                    #52.9
        addl      %edi, %r13d                                   #53.9
        xorl      %r13d, %esi                                   #53.9
        lea       (%rsi,%r12), %eax                             #53.9
        addl      %esi, %r12d                                   #53.9
        shll      $19, %eax                                     #53.9
        shrl      $13, %r12d                                    #53.9
        orl       %r12d, %eax                                   #53.9
        addl      %eax, %r8d                                    #53.9
        xorl      %r8d, %edi                                    #53.9
        lea       (%r13,%rdi), %r12d                            #53.9
        addl      %edi, %r13d                                   #53.9
        shll      $11, %r12d                                    #53.9
        shrl      $21, %r13d                                    #53.9
        orl       %r13d, %r12d                                  #53.9
        addl      %r12d, %esi                                   #53.9
        xorl      %esi, %eax                                    #53.9
        movl      %esi, 72(%rsp)                                #53.9[spill]
        lea       (%r8,%rax), %esi                              #53.9
        addl      %eax, %r8d                                    #53.9
        shll      $7, %esi                                      #53.9
        shrl      $25, %r8d                                     #53.9
        orl       %r8d, %esi                                    #53.9
        addl      %esi, %r9d                                    #54.9
        xorl      %r9d, %r14d                                   #54.9
        lea       (%r14,%rcx), %r13d                            #54.9
        addl      %r14d, %ecx                                   #54.9
        shll      $19, %r13d                                    #54.9
        shrl      $13, %ecx                                     #54.9
        orl       %ecx, %r13d                                   #54.9
        addl      %r13d, %edx                                   #54.9
        xorl      %edx, %esi                                    #54.9
        movl      80(%rsp), %ecx                                #55.9[spill]
        lea       (%r9,%rsi), %r8d                              #54.9
        addl      %esi, %r9d                                    #54.9
        shll      $11, %r8d                                     #54.9
        shrl      $21, %r9d                                     #54.9
        orl       %r9d, %r8d                                    #54.9
        addl      %r8d, %r14d                                   #54.9
        xorl      %r14d, %r13d                                  #54.9
        movl      160(%rsp), %r9d                               #55.9[spill]
        movl      %r13d, 176(%rsp)                              #54.9[spill]
        lea       (%rdx,%r13), %r15d                            #54.9
        addl      %r13d, %edx                                   #54.9
        shll      $7, %r15d                                     #54.9
        shrl      $25, %edx                                     #54.9
        orl       %edx, %r15d                                   #54.9
        addl      %r15d, %r9d                                   #55.9
        xorl      %r9d, %ecx                                    #55.9
        movl      152(%rsp), %r13d                              #55.9[spill]
        lea       (%rcx,%r13), %edx                             #55.9
        addl      %ecx, %r13d                                   #55.9
        shll      $19, %edx                                     #55.9
        shrl      $13, %r13d                                    #55.9
        orl       %r13d, %edx                                   #55.9
        addl      %edx, %ebx                                    #55.9
        xorl      %ebx, %r15d                                   #55.9
        lea       (%r9,%r15), %r13d                             #55.9
        addl      %r15d, %r9d                                   #55.9
        shll      $11, %r13d                                    #55.9
        shrl      $21, %r9d                                     #55.9
        orl       %r9d, %r13d                                   #55.9
        addl      %r13d, %ecx                                   #55.9
        xorl      %ecx, %edx                                    #55.9
        lea       (%rbx,%rdx), %r9d                             #55.9
        addl      %edx, %ebx                                    #55.9
        shll      $7, %r9d                                      #55.9
        shrl      $25, %ebx                                     #55.9
        orl       %ebx, %r9d                                    #55.9
        addl      %r9d, %r12d                                   #48.9
        xorl      %r12d, %r14d                                  #48.9
        addl      %r14d, %edx                                   #48.9
        movl      %edx, %ebx                                    #48.9
        shll      $19, %ebx                                     #48.9
        shrl      $13, %edx                                     #48.9
        orl       %edx, %ebx                                    #48.9
        addl      %ebx, %edi                                    #48.9
        xorl      %edi, %r9d                                    #48.9
        addl      %r9d, %r12d                                   #48.9
        movl      %r12d, %edx                                   #48.9
        shll      $11, %edx                                     #48.9
        shrl      $21, %r12d                                    #48.9
        orl       %r12d, %edx                                   #48.9
        addl      %edx, %r14d                                   #48.9
        xorl      %r14d, %ebx                                   #48.9
        movl      %ebx, 184(%rsp)                               #48.9[spill]
        lea       (%rbx,%rdi), %r12d                            #48.9
        addl      %ebx, %edi                                    #48.9
        shll      $7, %r12d                                     #48.9
        shrl      $25, %edi                                     #48.9
        orl       %edi, %r12d                                   #48.9
        addl      %r12d, %r8d                                   #49.9
        xorl      %r8d, %ecx                                    #49.9
        addl      %ecx, %r10d                                   #49.9
        movl      %r10d, %edi                                   #49.9
        shll      $19, %edi                                     #49.9
        shrl      $13, %r10d                                    #49.9
        orl       %r10d, %edi                                   #49.9
        addl      %edi, %esi                                    #49.9
        xorl      %esi, %r12d                                   #49.9
        movl      168(%rsp), %ebx                               #51.9[spill]
        lea       (%r12,%r8), %r10d                             #49.9
        addl      %r12d, %r8d                                   #49.9
        shll      $11, %r10d                                    #49.9
        shrl      $21, %r8d                                     #49.9
        orl       %r8d, %r10d                                   #49.9
        addl      %r10d, %ecx                                   #49.9
        xorl      %ecx, %edi                                    #49.9
        movl      %ecx, 80(%rsp)                                #49.9[spill]
        lea       (%rdi,%rsi), %r8d                             #49.9
        addl      %edi, %esi                                    #49.9
        shll      $7, %r8d                                      #49.9
        shrl      $25, %esi                                     #49.9
        orl       %esi, %r8d                                    #49.9
        addl      %r8d, %r13d                                   #50.9
        xorl      %r13d, %r11d                                  #50.9
        addl      %r11d, %eax                                   #50.9
        movl      %eax, %ecx                                    #50.9
        shll      $19, %ecx                                     #50.9
        shrl      $13, %eax                                     #50.9
        orl       %eax, %ecx                                    #50.9
        addl      %ecx, %r15d                                   #50.9
        xorl      %r15d, %r8d                                   #50.9
        movl      72(%rsp), %esi                                #51.9[spill]
        lea       (%r8,%r13), %eax                              #50.9
        addl      %r8d, %r13d                                   #50.9
        shll      $11, %eax                                     #50.9
        shrl      $21, %r13d                                    #50.9
        orl       %r13d, %eax                                   #50.9
        addl      %eax, %r11d                                   #50.9
        xorl      %r11d, %ecx                                   #50.9
        movl      %eax, 192(%rsp)                               #50.9[spill]
        lea       (%rcx,%r15), %eax                             #50.9
        addl      %ecx, %r15d                                   #50.9
        shll      $7, %eax                                      #50.9
        shrl      $25, %r15d                                    #50.9
        orl       %r15d, %eax                                   #50.9
        addl      %eax, %ebx                                    #51.9
        xorl      %ebx, %esi                                    #51.9
        movl      176(%rsp), %r15d                              #51.9[spill]
        addl      %esi, %r15d                                   #51.9
        movl      %r15d, %r13d                                  #51.9
        shll      $19, %r13d                                    #51.9
        shrl      $13, %r15d                                    #51.9
        orl       %r15d, %r13d                                  #51.9
        addl      %r13d, %r9d                                   #51.9
        xorl      %r9d, %eax                                    #51.9
        lea       (%rax,%rbx), %r15d                            #51.9
        addl      %eax, %ebx                                    #51.9
        shll      $11, %r15d                                    #51.9
        shrl      $21, %ebx                                     #51.9
        orl       %ebx, %r15d                                   #51.9
        addl      %r15d, %esi                                   #51.9
        xorl      %esi, %r13d                                   #51.9
        addl      %r13d, %r9d                                   #51.9
        movl      %r9d, %ebx                                    #51.9
        shll      $7, %ebx                                      #51.9
        shrl      $25, %r9d                                     #51.9
        orl       %r9d, %ebx                                    #51.9
        addl      %ebx, %r15d                                   #52.9
        xorl      %r15d, %r11d                                  #52.9
        lea       (%r11,%rdi), %r9d                             #52.9
        addl      %r11d, %edi                                   #52.9
        shll      $19, %r9d                                     #52.9
        shrl      $13, %edi                                     #52.9
        orl       %edi, %r9d                                    #52.9
        addl      %r9d, %r12d                                   #52.9
        xorl      %r12d, %ebx                                   #52.9
        addl      %ebx, %r15d                                   #52.9
        movl      %r15d, %edi                                   #52.9
        shll      $11, %edi                                     #52.9
        shrl      $21, %r15d                                    #52.9
        orl       %r15d, %edi                                   #52.9
        addl      %edi, %r11d                                   #52.9
        xorl      %r11d, %r9d                                   #52.9
        movl      %edi, 88(%rsp)                                #52.9[spill]
        lea       (%r12,%r9), %edi                              #52.9
        addl      %r9d, %r12d                                   #52.9
        shll      $7, %edi                                      #52.9
        shrl      $25, %r12d                                    #52.9
        orl       %r12d, %edi                                   #52.9
        addl      %edi, %edx                                    #53.9
        xorl      %edx, %esi                                    #53.9
        lea       (%rsi,%rcx), %r12d                            #53.9
        addl      %esi, %ecx                                    #53.9
        shll      $19, %r12d                                    #53.9
        shrl      $13, %ecx                                     #53.9
        orl       %ecx, %r12d                                   #53.9
        addl      %r12d, %r8d                                   #53.9
        xorl      %r8d, %edi                                    #53.9
        lea       (%rdx,%rdi), %r15d                            #53.9
        addl      %edi, %edx                                    #53.9
        shll      $11, %r15d                                    #53.9
        shrl      $21, %edx                                     #53.9
        orl       %edx, %r15d                                   #53.9
        addl      %r15d, %esi                                   #53.9
        xorl      %esi, %r12d                                   #53.9
        movl      %r12d, 120(%rsp)                              #53.9[spill]
        lea       (%r8,%r12), %edx                              #53.9
        addl      %r12d, %r8d                                   #53.9
        shll      $7, %edx                                      #53.9
        shrl      $25, %r8d                                     #53.9
        orl       %r8d, %edx                                    #53.9
        addl      %edx, %r10d                                   #54.9
        xorl      %r10d, %r14d                                  #54.9
        movl      184(%rsp), %r12d                              #55.9[spill]
        lea       (%r14,%r13), %r8d                             #54.9
        addl      %r14d, %r13d                                  #54.9
        shll      $19, %r8d                                     #54.9
        shrl      $13, %r13d                                    #54.9
        orl       %r13d, %r8d                                   #54.9
        addl      %r8d, %eax                                    #54.9
        xorl      %eax, %edx                                    #54.9
        lea       (%r10,%rdx), %r13d                            #54.9
        addl      %edx, %r10d                                   #54.9
        shll      $11, %r13d                                    #54.9
        shrl      $21, %r10d                                    #54.9
        orl       %r10d, %r13d                                  #54.9
        addl      %r13d, %r14d                                  #54.9
        xorl      %r14d, %r8d                                   #54.9
        movl      %r8d, 200(%rsp)                               #54.9[spill]
        lea       (%rax,%r8), %r10d                             #54.9
        addl      %r8d, %eax                                    #54.9
        shll      $7, %r10d                                     #54.9
        shrl      $25, %eax                                     #54.9
        orl       %eax, %r10d                                   #54.9
        movl      192(%rsp), %r8d                               #55.9[spill]
        addl      %r10d, %r8d                                   #55.9
        movl      80(%rsp), %eax                                #55.9[spill]
        xorl      %r8d, %eax                                    #55.9
        lea       (%rax,%r12), %ecx                             #55.9
        addl      %eax, %r12d                                   #55.9
        shll      $19, %ecx                                     #55.9
        shrl      $13, %r12d                                    #55.9
        orl       %r12d, %ecx                                   #55.9
        addl      %ecx, %ebx                                    #55.9
        xorl      %ebx, %r10d                                   #55.9
        lea       (%r8,%r10), %r12d                             #55.9
        addl      %r10d, %r8d                                   #55.9
        shll      $11, %r12d                                    #55.9
        shrl      $21, %r8d                                     #55.9
        orl       %r8d, %r12d                                   #55.9
        addl      %r12d, %eax                                   #55.9
        xorl      %eax, %ecx                                    #55.9
        lea       (%rbx,%rcx), %r8d                             #55.9
        addl      %ecx, %ebx                                    #55.9
        shll      $7, %r8d                                      #55.9
        shrl      $25, %ebx                                     #55.9
        orl       %ebx, %r8d                                    #55.9
        addl      %r8d, %r15d                                   #48.9
        xorl      %r15d, %r14d                                  #48.9
        addl      %r14d, %ecx                                   #48.9
        movl      %ecx, %ebx                                    #48.9
        shll      $19, %ebx                                     #48.9
        shrl      $13, %ecx                                     #48.9
        orl       %ecx, %ebx                                    #48.9
        addl      %ebx, %edi                                    #48.9
        xorl      %edi, %r8d                                    #48.9
        addl      %r8d, %r15d                                   #48.9
        movl      %r15d, %ecx                                   #48.9
        shll      $11, %ecx                                     #48.9
        shrl      $21, %r15d                                    #48.9
        orl       %r15d, %ecx                                   #48.9
        addl      %ecx, %r14d                                   #48.9
        xorl      %r14d, %ebx                                   #48.9
        movl      %ecx, 104(%rsp)                               #48.9[spill]
        movl      %ebx, 96(%rsp)                                #48.9[spill]
        lea       (%rbx,%rdi), %ecx                             #48.9
        addl      %ebx, %edi                                    #48.9
        shll      $7, %ecx                                      #48.9
        shrl      $25, %edi                                     #48.9
        orl       %edi, %ecx                                    #48.9
        addl      %ecx, %r13d                                   #49.9
        xorl      %r13d, %eax                                   #49.9
        addl      %eax, %r9d                                    #49.9
        movl      %r9d, %edi                                    #49.9
        shll      $19, %edi                                     #49.9
        shrl      $13, %r9d                                     #49.9
        orl       %r9d, %edi                                    #49.9
        addl      %edi, %edx                                    #49.9
        xorl      %edx, %ecx                                    #49.9
        movl      200(%rsp), %r9d                               #49.9[spill]
        lea       (%rcx,%r13), %ebx                             #49.9
        addl      %ecx, %r13d                                   #49.9
        shll      $11, %ebx                                     #49.9
        shrl      $21, %r13d                                    #49.9
        orl       %r13d, %ebx                                   #49.9
        addl      %ebx, %eax                                    #49.9
        movl      %ebx, 112(%rsp)                               #49.9[spill]
        xorl      %eax, %edi                                    #49.9
                                # LOE eax edx ecx esi edi r8d r9d r10d r11d r12d r14d ymm0 ymm1
..B1.5:                         # Preds ..B1.1
                                # Execution count [1.00e+00]
        lea       (%rdi,%rdx), %ebx                             #49.9
        addl      %edi, %edx                                    #49.9
        shll      $7, %ebx                                      #49.9
        shrl      $25, %edx                                     #49.9
        orl       %edx, %ebx                                    #49.9
        addl      %ebx, %r12d                                   #50.9
        xorl      %r12d, %r11d                                  #50.9
        movl      120(%rsp), %edx                               #50.9[spill]
        addl      %r11d, %edx                                   #50.9
        movl      %edx, %r13d                                   #50.9
        shll      $19, %r13d                                    #50.9
        shrl      $13, %edx                                     #50.9
        orl       %edx, %r13d                                   #50.9
        addl      %r13d, %r10d                                  #50.9
        xorl      %r10d, %ebx                                   #50.9
        lea       (%rbx,%r12), %r15d                            #50.9
        addl      %ebx, %r12d                                   #50.9
        shll      $11, %r15d                                    #50.9
        shrl      $21, %r12d                                    #50.9
        orl       %r12d, %r15d                                  #50.9
        addl      %r15d, %r11d                                  #50.9
        xorl      %r11d, %r13d                                  #50.9
        movl      88(%rsp), %r12d                               #51.9[spill]
        lea       (%r13,%r10), %edx                             #50.9
        addl      %r13d, %r10d                                  #50.9
        shll      $7, %edx                                      #50.9
        shrl      $25, %r10d                                    #50.9
        orl       %r10d, %edx                                   #50.9
        addl      %edx, %r12d                                   #51.9
        xorl      %r12d, %esi                                   #51.9
        addl      %esi, %r9d                                    #51.9
        movl      %r9d, %r10d                                   #51.9
        shll      $19, %r10d                                    #51.9
        shrl      $13, %r9d                                     #51.9
        orl       %r9d, %r10d                                   #51.9
        addl      %r10d, %r8d                                   #51.9
        xorl      %r8d, %edx                                    #51.9
        lea       (%rdx,%r12), %r9d                             #51.9
        addl      %edx, %r12d                                   #51.9
        shll      $11, %r9d                                     #51.9
        shrl      $21, %r12d                                    #51.9
        orl       %r12d, %r9d                                   #51.9
        addl      %r9d, %esi                                    #51.9
        xorl      %esi, %r10d                                   #51.9
        addl      %r10d, %r8d                                   #51.9
        movl      %r8d, %r12d                                   #51.9
        shll      $7, %r12d                                     #51.9
        shrl      $25, %r8d                                     #51.9
        orl       %r8d, %r12d                                   #51.9
        addl      %r12d, %r9d                                   #52.9
        xorl      %r9d, %r11d                                   #52.9
        lea       (%rdi,%r11), %r8d                             #52.9
        addl      %r11d, %edi                                   #52.9
        shll      $19, %r8d                                     #52.9
        shrl      $13, %edi                                     #52.9
        orl       %edi, %r8d                                    #52.9
        addl      %r8d, %ecx                                    #52.9
        xorl      %ecx, %r12d                                   #52.9
        addl      %r12d, %r9d                                   #52.9
        movl      %r9d, %edi                                    #52.9
        shll      $11, %edi                                     #52.9
        shrl      $21, %r9d                                     #52.9
        orl       %r9d, %edi                                    #52.9
        addl      %edi, %r11d                                   #52.9
        xorl      %r11d, %r8d                                   #52.9
        movl      %edi, 168(%rsp)                               #52.9[spill]
        movl      104(%rsp), %edi                               #53.9[spill]
        lea       (%rcx,%r8), %r9d                              #52.9
        addl      %r8d, %ecx                                    #52.9
        shll      $7, %r9d                                      #52.9
        shrl      $25, %ecx                                     #52.9
        orl       %ecx, %r9d                                    #52.9
        addl      %r9d, %edi                                    #53.9
        xorl      %edi, %esi                                    #53.9
        lea       (%rsi,%r13), %ecx                             #53.9
        addl      %esi, %r13d                                   #53.9
        shll      $19, %ecx                                     #53.9
        shrl      $13, %r13d                                    #53.9
        orl       %r13d, %ecx                                   #53.9
        addl      %ecx, %ebx                                    #53.9
        xorl      %ebx, %r9d                                    #53.9
        lea       (%rdi,%r9), %r13d                             #53.9
        addl      %r9d, %edi                                    #53.9
        shll      $11, %r13d                                    #53.9
        shrl      $21, %edi                                     #53.9
        orl       %edi, %r13d                                   #53.9
        addl      %r13d, %esi                                   #53.9
        xorl      %esi, %ecx                                    #53.9
        movl      %esi, 72(%rsp)                                #53.9[spill]
        lea       (%rbx,%rcx), %esi                             #53.9
        addl      %ecx, %ebx                                    #53.9
        shll      $7, %esi                                      #53.9
        shrl      $25, %ebx                                     #53.9
        orl       %ebx, %esi                                    #53.9
        movl      112(%rsp), %ebx                               #54.9[spill]
        addl      %esi, %ebx                                    #54.9
        xorl      %ebx, %r14d                                   #54.9
        lea       (%r14,%r10), %edi                             #54.9
        addl      %r14d, %r10d                                  #54.9
        shll      $19, %edi                                     #54.9
        shrl      $13, %r10d                                    #54.9
        orl       %r10d, %edi                                   #54.9
        addl      %edi, %edx                                    #54.9
        xorl      %edx, %esi                                    #54.9
        lea       (%rbx,%rsi), %r10d                            #54.9
        addl      %esi, %ebx                                    #54.9
        shll      $11, %r10d                                    #54.9
        shrl      $21, %ebx                                     #54.9
        orl       %ebx, %r10d                                   #54.9
        addl      %r10d, %r14d                                  #54.9
        xorl      %r14d, %edi                                   #54.9
        movl      %edi, 176(%rsp)                               #54.9[spill]
        lea       (%rdx,%rdi), %ebx                             #54.9
        addl      %edi, %edx                                    #54.9
        shll      $7, %ebx                                      #54.9
        shrl      $25, %edx                                     #54.9
        orl       %edx, %ebx                                    #54.9
        addl      %ebx, %r15d                                   #55.9
        xorl      %r15d, %eax                                   #55.9
        movl      96(%rsp), %edx                                #55.9[spill]
        lea       (%rdx,%rax), %edi                             #55.9
        addl      %eax, %edx                                    #55.9
        shll      $19, %edi                                     #55.9
        shrl      $13, %edx                                     #55.9
        orl       %edx, %edi                                    #55.9
        addl      %edi, %r12d                                   #55.9
        xorl      %r12d, %ebx                                   #55.9
        lea       (%r15,%rbx), %edx                             #55.9
        addl      %ebx, %r15d                                   #55.9
        shll      $11, %edx                                     #55.9
        shrl      $21, %r15d                                    #55.9
        orl       %r15d, %edx                                   #55.9
        addl      %edx, %eax                                    #55.9
        xorl      %eax, %edi                                    #55.9
        lea       (%r12,%rdi), %r15d                            #55.9
        addl      %edi, %r12d                                   #55.9
        shll      $7, %r15d                                     #55.9
        shrl      $25, %r12d                                    #55.9
        orl       %r12d, %r15d                                  #55.9
        addl      %r15d, %r13d                                  #48.9
        xorl      %r13d, %r14d                                  #48.9
        addl      %r14d, %edi                                   #48.9
        movl      %edi, %r12d                                   #48.9
        shll      $19, %r12d                                    #48.9
        shrl      $13, %edi                                     #48.9
        orl       %edi, %r12d                                   #48.9
        addl      %r12d, %r9d                                   #48.9
        xorl      %r9d, %r15d                                   #48.9
        addl      %r15d, %r13d                                  #48.9
        movl      %r13d, %edi                                   #48.9
        shll      $11, %edi                                     #48.9
        shrl      $21, %r13d                                    #48.9
        orl       %r13d, %edi                                   #48.9
        addl      %edi, %r14d                                   #48.9
        xorl      %r14d, %r12d                                  #48.9
        movl      %r12d, 184(%rsp)                              #48.9[spill]
        lea       (%r12,%r9), %r13d                             #48.9
        addl      %r12d, %r9d                                   #48.9
        shll      $7, %r13d                                     #48.9
        shrl      $25, %r9d                                     #48.9
        orl       %r9d, %r13d                                   #48.9
        addl      %r13d, %r10d                                  #49.9
        xorl      %r10d, %eax                                   #49.9
        addl      %eax, %r8d                                    #49.9
        movl      %r8d, %r12d                                   #49.9
        shll      $19, %r12d                                    #49.9
        shrl      $13, %r8d                                     #49.9
        orl       %r8d, %r12d                                   #49.9
        addl      %r12d, %esi                                   #49.9
        xorl      %esi, %r13d                                   #49.9
        lea       (%r13,%r10), %r8d                             #49.9
        addl      %r13d, %r10d                                  #49.9
        shll      $11, %r8d                                     #49.9
        shrl      $21, %r10d                                    #49.9
        orl       %r10d, %r8d                                   #49.9
        addl      %r8d, %eax                                    #49.9
        xorl      %eax, %r12d                                   #49.9
        movl      %eax, 80(%rsp)                                #49.9[spill]
        lea       (%r12,%rsi), %r10d                            #49.9
        addl      %r12d, %esi                                   #49.9
        shll      $7, %r10d                                     #49.9
        shrl      $25, %esi                                     #49.9
        orl       %esi, %r10d                                   #49.9
        addl      %r10d, %edx                                   #50.9
        xorl      %edx, %r11d                                   #50.9
        addl      %r11d, %ecx                                   #50.9
        movl      %ecx, %r9d                                    #50.9
        shll      $19, %r9d                                     #50.9
        shrl      $13, %ecx                                     #50.9
        orl       %ecx, %r9d                                    #50.9
        addl      %r9d, %ebx                                    #50.9
        xorl      %ebx, %r10d                                   #50.9
        lea       (%r10,%rdx), %eax                             #50.9
        addl      %r10d, %edx                                   #50.9
        shll      $11, %eax                                     #50.9
        shrl      $21, %edx                                     #50.9
        orl       %edx, %eax                                    #50.9
        addl      %eax, %r11d                                   #50.9
        xorl      %r11d, %r9d                                   #50.9
        movl      72(%rsp), %edx                                #51.9[spill]
        movl      %eax, 192(%rsp)                               #50.9[spill]
        movl      176(%rsp), %eax                               #51.9[spill]
        lea       (%r9,%rbx), %esi                              #50.9
        addl      %r9d, %ebx                                    #50.9
        shll      $7, %esi                                      #50.9
        shrl      $25, %ebx                                     #50.9
        orl       %ebx, %esi                                    #50.9
        movl      168(%rsp), %ebx                               #51.9[spill]
        addl      %esi, %ebx                                    #51.9
        xorl      %ebx, %edx                                    #51.9
        addl      %edx, %eax                                    #51.9
        movl      %eax, %ecx                                    #51.9
        shll      $19, %ecx                                     #51.9
        shrl      $13, %eax                                     #51.9
        orl       %eax, %ecx                                    #51.9
        addl      %ecx, %r15d                                   #51.9
        xorl      %r15d, %esi                                   #51.9
        lea       (%rsi,%rbx), %eax                             #51.9
        addl      %esi, %ebx                                    #51.9
        shll      $11, %eax                                     #51.9
        shrl      $21, %ebx                                     #51.9
        orl       %ebx, %eax                                    #51.9
        addl      %eax, %edx                                    #51.9
        xorl      %edx, %ecx                                    #51.9
        addl      %ecx, %r15d                                   #51.9
        movl      %r15d, %ebx                                   #51.9
        shll      $7, %ebx                                      #51.9
        shrl      $25, %r15d                                    #51.9
        orl       %r15d, %ebx                                   #51.9
        addl      %ebx, %eax                                    #52.9
        xorl      %eax, %r11d                                   #52.9
        lea       (%r11,%r12), %r15d                            #52.9
        addl      %r11d, %r12d                                  #52.9
        shll      $19, %r15d                                    #52.9
        shrl      $13, %r12d                                    #52.9
        orl       %r12d, %r15d                                  #52.9
        addl      %r15d, %r13d                                  #52.9
        xorl      %r13d, %ebx                                   #52.9
        addl      %ebx, %eax                                    #52.9
        movl      %eax, %r12d                                   #52.9
        shll      $11, %r12d                                    #52.9
        shrl      $21, %eax                                     #52.9
        orl       %eax, %r12d                                   #52.9
        addl      %r12d, %r11d                                  #52.9
        xorl      %r11d, %r15d                                  #52.9
        movl      %r12d, 200(%rsp)                              #52.9[spill]
        movl      80(%rsp), %eax                                #55.9[spill]
        lea       (%r13,%r15), %r12d                            #52.9
        addl      %r15d, %r13d                                  #52.9
        shll      $7, %r12d                                     #52.9
        shrl      $25, %r13d                                    #52.9
        orl       %r13d, %r12d                                  #52.9
        addl      %r12d, %edi                                   #53.9
        xorl      %edi, %edx                                    #53.9
        lea       (%rdx,%r9), %r13d                             #53.9
        addl      %edx, %r9d                                    #53.9
        shll      $19, %r13d                                    #53.9
        shrl      $13, %r9d                                     #53.9
        orl       %r9d, %r13d                                   #53.9
        addl      %r13d, %r10d                                  #53.9
        xorl      %r10d, %r12d                                  #53.9
        lea       (%rdi,%r12), %r9d                             #53.9
        addl      %r12d, %edi                                   #53.9
        shll      $11, %r9d                                     #53.9
        shrl      $21, %edi                                     #53.9
        orl       %edi, %r9d                                    #53.9
        addl      %r9d, %edx                                    #53.9
        xorl      %edx, %r13d                                   #53.9
        movl      %edx, 72(%rsp)                                #53.9[spill]
        lea       (%r10,%r13), %edi                             #53.9
        addl      %r13d, %r10d                                  #53.9
        shll      $7, %edi                                      #53.9
        shrl      $25, %r10d                                    #53.9
        orl       %r10d, %edi                                   #53.9
        addl      %edi, %r8d                                    #54.9
        xorl      %r8d, %r14d                                   #54.9
        lea       (%r14,%rcx), %edx                             #54.9
        addl      %r14d, %ecx                                   #54.9
        shll      $19, %edx                                     #54.9
        shrl      $13, %ecx                                     #54.9
        orl       %ecx, %edx                                    #54.9
        addl      %edx, %esi                                    #54.9
        xorl      %esi, %edi                                    #54.9
        lea       (%r8,%rdi), %r10d                             #54.9
        addl      %edi, %r8d                                    #54.9
        shll      $11, %r10d                                    #54.9
        shrl      $21, %r8d                                     #54.9
        orl       %r8d, %r10d                                   #54.9
        addl      %r10d, %r14d                                  #54.9
        xorl      %r14d, %edx                                   #54.9
        movl      192(%rsp), %r8d                               #55.9[spill]
        movl      %edx, 208(%rsp)                               #54.9[spill]
        lea       (%rsi,%rdx), %ecx                             #54.9
        addl      %edx, %esi                                    #54.9
        shll      $7, %ecx                                      #54.9
        shrl      $25, %esi                                     #54.9
        orl       %esi, %ecx                                    #54.9
        addl      %ecx, %r8d                                    #55.9
        xorl      %r8d, %eax                                    #55.9
        movl      184(%rsp), %edx                               #55.9[spill]
        lea       (%rax,%rdx), %esi                             #55.9
        addl      %eax, %edx                                    #55.9
        shll      $19, %esi                                     #55.9
        shrl      $13, %edx                                     #55.9
        orl       %edx, %esi                                    #55.9
        addl      %esi, %ebx                                    #55.9
        xorl      %ebx, %ecx                                    #55.9
        lea       (%r8,%rcx), %edx                              #55.9
        addl      %ecx, %r8d                                    #55.9
        shll      $11, %edx                                     #55.9
        shrl      $21, %r8d                                     #55.9
        orl       %r8d, %edx                                    #55.9
        addl      %edx, %eax                                    #55.9
        xorl      %eax, %esi                                    #55.9
        lea       (%rbx,%rsi), %r8d                             #55.9
        addl      %esi, %ebx                                    #55.9
        shll      $7, %r8d                                      #55.9
        shrl      $25, %ebx                                     #55.9
        orl       %ebx, %r8d                                    #55.9
        addl      %r8d, %r9d                                    #48.9
        xorl      %r9d, %r14d                                   #48.9
        addl      %r14d, %esi                                   #48.9
        movl      %esi, %ebx                                    #48.9
        shll      $19, %ebx                                     #48.9
        shrl      $13, %esi                                     #48.9
        orl       %esi, %ebx                                    #48.9
        addl      %ebx, %r12d                                   #48.9
        xorl      %r12d, %r8d                                   #48.9
        addl      %r8d, %r9d                                    #48.9
        movl      %r9d, %esi                                    #48.9
        shll      $11, %esi                                     #48.9
        shrl      $21, %r9d                                     #48.9
        orl       %r9d, %esi                                    #48.9
        addl      %esi, %r14d                                   #48.9
        xorl      %r14d, %ebx                                   #48.9
        movl      %ebx, 136(%rsp)                               #48.9[spill]
        movl      %esi, 144(%rsp)                               #48.9[spill]
        movl      72(%rsp), %esi                                #51.9[spill]
        lea       (%rbx,%r12), %r9d                             #48.9
        addl      %ebx, %r12d                                   #48.9
        shll      $7, %r9d                                      #48.9
        shrl      $25, %r12d                                    #48.9
        orl       %r12d, %r9d                                   #48.9
        addl      %r9d, %r10d                                   #49.9
        xorl      %r10d, %eax                                   #49.9
        addl      %eax, %r15d                                   #49.9
        movl      %r15d, %r12d                                  #49.9
        shll      $19, %r12d                                    #49.9
        shrl      $13, %r15d                                    #49.9
        orl       %r15d, %r12d                                  #49.9
        addl      %r12d, %edi                                   #49.9
        xorl      %edi, %r9d                                    #49.9
        movl      208(%rsp), %r15d                              #51.9[spill]
        lea       (%r9,%r10), %ebx                              #49.9
        addl      %r9d, %r10d                                   #49.9
        shll      $11, %ebx                                     #49.9
        shrl      $21, %r10d                                    #49.9
        orl       %r10d, %ebx                                   #49.9
        addl      %ebx, %eax                                    #49.9
        xorl      %eax, %r12d                                   #49.9
        movl      %ebx, 152(%rsp)                               #49.9[spill]
        lea       (%r12,%rdi), %r10d                            #49.9
        addl      %r12d, %edi                                   #49.9
        shll      $7, %r10d                                     #49.9
        shrl      $25, %edi                                     #49.9
        orl       %edi, %r10d                                   #49.9
        addl      %r10d, %edx                                   #50.9
        xorl      %edx, %r11d                                   #50.9
        addl      %r11d, %r13d                                  #50.9
        movl      %r13d, %ebx                                   #50.9
        shll      $19, %ebx                                     #50.9
        shrl      $13, %r13d                                    #50.9
        orl       %r13d, %ebx                                   #50.9
        addl      %ebx, %ecx                                    #50.9
        xorl      %ecx, %r10d                                   #50.9
        movl      200(%rsp), %edi                               #51.9[spill]
        lea       (%r10,%rdx), %r13d                            #50.9
        addl      %r10d, %edx                                   #50.9
        shll      $11, %r13d                                    #50.9
        shrl      $21, %edx                                     #50.9
        orl       %edx, %r13d                                   #50.9
        addl      %r13d, %r11d                                  #50.9
        xorl      %r11d, %ebx                                   #50.9
        movl      %r13d, 160(%rsp)                              #50.9[spill]
        lea       (%rbx,%rcx), %r13d                            #50.9
        addl      %ebx, %ecx                                    #50.9
        shll      $7, %r13d                                     #50.9
        shrl      $25, %ecx                                     #50.9
        orl       %ecx, %r13d                                   #50.9
        addl      %r13d, %edi                                   #51.9
        xorl      %edi, %esi                                    #51.9
        addl      %esi, %r15d                                   #51.9
        movl      %r15d, %ecx                                   #51.9
        shll      $19, %ecx                                     #51.9
        shrl      $13, %r15d                                    #51.9
        orl       %r15d, %ecx                                   #51.9
        addl      %ecx, %r8d                                    #51.9
        xorl      %r8d, %r13d                                   #51.9
        lea       (%r13,%rdi), %r15d                            #51.9
        addl      %r13d, %edi                                   #51.9
        shll      $11, %r15d                                    #51.9
        shrl      $21, %edi                                     #51.9
        orl       %edi, %r15d                                   #51.9
        addl      %r15d, %esi                                   #51.9
        xorl      %esi, %ecx                                    #51.9
        addl      %ecx, %r8d                                    #51.9
        movl      %r8d, %edi                                    #51.9
        shll      $7, %edi                                      #51.9
        shrl      $25, %r8d                                     #51.9
        orl       %r8d, %edi                                    #51.9
        addl      %edi, %r15d                                   #52.9
        xorl      %r15d, %r11d                                  #52.9
        lea       (%r11,%r12), %edx                             #52.9
        addl      %r11d, %r12d                                  #52.9
        shll      $19, %edx                                     #52.9
        shrl      $13, %r12d                                    #52.9
        orl       %r12d, %edx                                   #52.9
        addl      %edx, %r9d                                    #52.9
        xorl      %r9d, %edi                                    #52.9
        addl      %edi, %r15d                                   #52.9
        movl      %r15d, %r8d                                   #52.9
        shll      $11, %r8d                                     #52.9
        shrl      $21, %r15d                                    #52.9
        orl       %r15d, %r8d                                   #52.9
        addl      %r8d, %r11d                                   #52.9
        xorl      %r11d, %edx                                   #52.9
        movl      %r8d, 128(%rsp)                               #52.9[spill]
        lea       (%r9,%rdx), %r12d                             #52.9
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d r12d r13d r14d ymm0 ymm1
..B1.4:                         # Preds ..B1.5
                                # Execution count [1.00e+00]
        addl      %edx, %r9d                                    #52.9
        shll      $7, %r12d                                     #52.9
        shrl      $25, %r9d                                     #52.9
        orl       %r9d, %r12d                                   #52.9
        movl      144(%rsp), %r9d                               #53.9[spill]
        addl      %r12d, %r9d                                   #53.9
        xorl      %r9d, %esi                                    #53.9
        lea       (%rbx,%rsi), %r8d                             #53.9
        addl      %esi, %ebx                                    #53.9
        shll      $19, %r8d                                     #53.9
        shrl      $13, %ebx                                     #53.9
        orl       %ebx, %r8d                                    #53.9
        addl      %r8d, %r10d                                   #53.9
        xorl      %r10d, %r12d                                  #53.9
        lea       (%r9,%r12), %ebx                              #53.9
        addl      %r12d, %r9d                                   #53.9
        shll      $11, %ebx                                     #53.9
        shrl      $21, %r9d                                     #53.9
        orl       %r9d, %ebx                                    #53.9
        addl      %ebx, %esi                                    #53.9
        xorl      %esi, %r8d                                    #53.9
        movl      %esi, 72(%rsp)                                #53.9[spill]
        movl      160(%rsp), %r9d                               #55.9[spill]
        lea       (%r10,%r8), %esi                              #53.9
        addl      %r8d, %r10d                                   #53.9
        shll      $7, %esi                                      #53.9
        shrl      $25, %r10d                                    #53.9
        orl       %r10d, %esi                                   #53.9
        movl      152(%rsp), %r10d                              #54.9[spill]
        addl      %esi, %r10d                                   #54.9
        xorl      %r10d, %r14d                                  #54.9
        lea       (%rcx,%r14), %r15d                            #54.9
        addl      %r14d, %ecx                                   #54.9
        shll      $19, %r15d                                    #54.9
        shrl      $13, %ecx                                     #54.9
        orl       %ecx, %r15d                                   #54.9
        addl      %r15d, %r13d                                  #54.9
        xorl      %r13d, %esi                                   #54.9
        lea       (%r10,%rsi), %ecx                             #54.9
        addl      %esi, %r10d                                   #54.9
        shll      $11, %ecx                                     #54.9
        shrl      $21, %r10d                                    #54.9
        orl       %r10d, %ecx                                   #54.9
        addl      %ecx, %r14d                                   #54.9
        xorl      %r14d, %r15d                                  #54.9
        movl      %r15d, 88(%rsp)                               #54.9[spill]
        lea       (%r13,%r15), %r10d                            #54.9
        addl      %r15d, %r13d                                  #54.9
        shll      $7, %r10d                                     #54.9
        shrl      $25, %r13d                                    #54.9
        orl       %r13d, %r10d                                  #54.9
        addl      %r10d, %r9d                                   #55.9
        xorl      %r9d, %eax                                    #55.9
        movl      136(%rsp), %r15d                              #55.9[spill]
        lea       (%r15,%rax), %r13d                            #55.9
        addl      %eax, %r15d                                   #55.9
        shll      $19, %r13d                                    #55.9
        shrl      $13, %r15d                                    #55.9
        orl       %r15d, %r13d                                  #55.9
        addl      %r13d, %edi                                   #55.9
        xorl      %edi, %r10d                                   #55.9
        lea       (%r9,%r10), %r15d                             #55.9
        addl      %r10d, %r9d                                   #55.9
        shll      $11, %r15d                                    #55.9
        shrl      $21, %r9d                                     #55.9
        orl       %r9d, %r15d                                   #55.9
        addl      %r15d, %eax                                   #55.9
        xorl      %eax, %r13d                                   #55.9
        lea       (%rdi,%r13), %r9d                             #55.9
        addl      %r13d, %edi                                   #55.9
        shll      $7, %r9d                                      #55.9
        shrl      $25, %edi                                     #55.9
        orl       %edi, %r9d                                    #55.9
        addl      %r9d, %ebx                                    #48.9
        xorl      %ebx, %r14d                                   #48.9
        addl      %r14d, %r13d                                  #48.9
        movl      %r13d, %edi                                   #48.9
        shll      $19, %edi                                     #48.9
        shrl      $13, %r13d                                    #48.9
        orl       %r13d, %edi                                   #48.9
        addl      %edi, %r12d                                   #48.9
        xorl      %r12d, %r9d                                   #48.9
        addl      %r9d, %ebx                                    #48.9
        movl      %ebx, %r13d                                   #48.9
        shll      $11, %r13d                                    #48.9
        shrl      $21, %ebx                                     #48.9
        orl       %ebx, %r13d                                   #48.9
        addl      %r13d, %r14d                                  #48.9
        xorl      %r14d, %edi                                   #48.9
        movl      %edi, 96(%rsp)                                #48.9[spill]
        lea       (%rdi,%r12), %ebx                             #48.9
        addl      %edi, %r12d                                   #48.9
        shll      $7, %ebx                                      #48.9
        shrl      $25, %r12d                                    #48.9
        orl       %r12d, %ebx                                   #48.9
        addl      %ebx, %ecx                                    #49.9
        xorl      %ecx, %eax                                    #49.9
        addl      %eax, %edx                                    #49.9
        movl      %edx, %r12d                                   #49.9
        shll      $19, %r12d                                    #49.9
        shrl      $13, %edx                                     #49.9
        orl       %edx, %r12d                                   #49.9
        addl      %r12d, %esi                                   #49.9
        xorl      %esi, %ebx                                    #49.9
        movl      128(%rsp), %edi                               #51.9[spill]
        lea       (%rbx,%rcx), %edx                             #49.9
        addl      %ebx, %ecx                                    #49.9
        shll      $11, %edx                                     #49.9
        shrl      $21, %ecx                                     #49.9
        orl       %ecx, %edx                                    #49.9
        addl      %edx, %eax                                    #49.9
        xorl      %eax, %r12d                                   #49.9
        movl      %eax, 80(%rsp)                                #49.9[spill]
        lea       (%r12,%rsi), %ecx                             #49.9
        addl      %r12d, %esi                                   #49.9
        shll      $7, %ecx                                      #49.9
        shrl      $25, %esi                                     #49.9
        orl       %esi, %ecx                                    #49.9
        addl      %ecx, %r15d                                   #50.9
        xorl      %r15d, %r11d                                  #50.9
        addl      %r11d, %r8d                                   #50.9
        movl      %r8d, %esi                                    #50.9
        shll      $19, %esi                                     #50.9
        shrl      $13, %r8d                                     #50.9
        orl       %r8d, %esi                                    #50.9
        addl      %esi, %r10d                                   #50.9
        xorl      %r10d, %ecx                                   #50.9
        lea       (%rcx,%r15), %eax                             #50.9
        addl      %ecx, %r15d                                   #50.9
        shll      $11, %eax                                     #50.9
        shrl      $21, %r15d                                    #50.9
        orl       %r15d, %eax                                   #50.9
        addl      %eax, %r11d                                   #50.9
        xorl      %r11d, %esi                                   #50.9
        movl      %eax, 104(%rsp)                               #50.9[spill]
        movl      72(%rsp), %r15d                               #51.9[spill]
        lea       (%rsi,%r10), %eax                             #50.9
        addl      %esi, %r10d                                   #50.9
        shll      $7, %eax                                      #50.9
        shrl      $25, %r10d                                    #50.9
        orl       %r10d, %eax                                   #50.9
        addl      %eax, %edi                                    #51.9
        xorl      %edi, %r15d                                   #51.9
        movl      88(%rsp), %r10d                               #51.9[spill]
        addl      %r15d, %r10d                                  #51.9
        movl      %r10d, %r8d                                   #51.9
        shll      $19, %r8d                                     #51.9
        shrl      $13, %r10d                                    #51.9
        orl       %r10d, %r8d                                   #51.9
        addl      %r8d, %r9d                                    #51.9
        xorl      %r9d, %eax                                    #51.9
        lea       (%rax,%rdi), %r10d                            #51.9
        addl      %eax, %edi                                    #51.9
        shll      $11, %r10d                                    #51.9
        shrl      $21, %edi                                     #51.9
        orl       %edi, %r10d                                   #51.9
        addl      %r10d, %r15d                                  #51.9
        xorl      %r15d, %r8d                                   #51.9
        addl      %r8d, %r9d                                    #51.9
        movl      %r9d, %edi                                    #51.9
        shll      $7, %edi                                      #51.9
        shrl      $25, %r9d                                     #51.9
        orl       %r9d, %edi                                    #51.9
        addl      %edi, %r10d                                   #52.9
        xorl      %r10d, %r11d                                  #52.9
        lea       (%r11,%r12), %r9d                             #52.9
        addl      %r11d, %r12d                                  #52.9
        shll      $19, %r9d                                     #52.9
        shrl      $13, %r12d                                    #52.9
        orl       %r12d, %r9d                                   #52.9
        addl      %r9d, %ebx                                    #52.9
        xorl      %ebx, %edi                                    #52.9
        addl      %edi, %r10d                                   #52.9
        movl      %r10d, %r12d                                  #52.9
        shll      $11, %r12d                                    #52.9
        shrl      $21, %r10d                                    #52.9
        orl       %r10d, %r12d                                  #52.9
        addl      %r12d, %r11d                                  #52.9
        xorl      %r11d, %r9d                                   #52.9
        movl      %r11d, 40(%rsp)                               #52.9
        movl      %r9d, 20(%rsp)                                #52.9
        movl      %r12d, 60(%rsp)                               #52.9
        lea       (%rbx,%r9), %r11d                             #52.9
        addl      %ebx, %r9d                                    #52.9
        shll      $7, %r11d                                     #52.9
        shrl      $25, %r9d                                     #52.9
        orl       %r9d, %r11d                                   #52.9
        addl      %r11d, %r13d                                  #53.9
        xorl      %r13d, %r15d                                  #53.9
        lea       (%r15,%rsi), %ebx                             #53.9
        addl      %r15d, %esi                                   #53.9
        shll      $19, %ebx                                     #53.9
        shrl      $13, %esi                                     #53.9
        orl       %esi, %ebx                                    #53.9
        addl      %ebx, %ecx                                    #53.9
        xorl      %ecx, %r11d                                   #53.9
        movl      %r11d, (%rsp)                                 #53.9
        lea       (%r13,%r11), %esi                             #53.9
        addl      %r13d, %r11d                                  #53.9
        shll      $11, %esi                                     #53.9
        shrl      $21, %r11d                                    #53.9
        orl       %r11d, %esi                                   #53.9
        addl      %esi, %r15d                                   #53.9
        xorl      %r15d, %ebx                                   #53.9
        movl      %ebx, 24(%rsp)                                #53.9
        movl      %esi, 48(%rsp)                                #53.9
        movl      80(%rsp), %esi                                #55.9[spill]
        movl      %r15d, 44(%rsp)                               #53.9
        lea       (%rcx,%rbx), %r9d                             #53.9
        addl      %ecx, %ebx                                    #53.9
        shll      $7, %r9d                                      #53.9
        shrl      $25, %ebx                                     #53.9
        orl       %ebx, %r9d                                    #53.9
        addl      %r9d, %edx                                    #54.9
        xorl      %edx, %r14d                                   #54.9
        lea       (%r14,%r8), %ecx                              #54.9
        addl      %r14d, %r8d                                   #54.9
        shll      $19, %ecx                                     #54.9
        shrl      $13, %r8d                                     #54.9
        orl       %r8d, %ecx                                    #54.9
        addl      %ecx, %eax                                    #54.9
        xorl      %eax, %r9d                                    #54.9
        movl      %r9d, 4(%rsp)                                 #54.9
        lea       (%rdx,%r9), %r8d                              #54.9
        addl      %edx, %r9d                                    #54.9
        shll      $11, %r8d                                     #54.9
        shrl      $21, %r9d                                     #54.9
        orl       %r9d, %r8d                                    #54.9
        addl      %r8d, %r14d                                   #54.9
        xorl      %r14d, %ecx                                   #54.9
        movl      %r14d, 32(%rsp)                               #54.9
        movl      96(%rsp), %r14d                               #55.9[spill]
        movl      %r8d, 52(%rsp)                                #54.9
        movl      %ecx, 28(%rsp)                                #54.9
        lea       (%rax,%rcx), %edx                             #54.9
        addl      %ecx, %eax                                    #54.9
        shll      $7, %edx                                      #54.9
        shrl      $25, %eax                                     #54.9
        orl       %eax, %edx                                    #54.9
        movl      104(%rsp), %eax                               #55.9[spill]
        addl      %edx, %eax                                    #55.9
        xorl      %eax, %esi                                    #55.9
        lea       (%rsi,%r14), %r8d                             #55.9
        addl      %esi, %r14d                                   #55.9
        shll      $19, %r8d                                     #55.9
        shrl      $13, %r14d                                    #55.9
        orl       %r14d, %r8d                                   #55.9
        addl      %r8d, %edi                                    #55.9
        xorl      %edi, %edx                                    #55.9
        movl      %edx, 8(%rsp)                                 #55.9
        lea       (%rax,%rdx), %ebx                             #55.9
        addl      %edx, %eax                                    #55.9
        shll      $11, %ebx                                     #55.9
        shrl      $21, %eax                                     #55.9
        orl       %eax, %ebx                                    #55.9
        addl      %ebx, %esi                                    #55.9
        xorl      %esi, %r8d                                    #55.9
        movl      %r8d, 16(%rsp)                                #55.9
        movl      %ebx, 56(%rsp)                                #55.9
        movl      %esi, 36(%rsp)                                #55.9
        vpaddd    32(%rsp), %ymm1, %ymm1                        #58.16
        lea       (%rdi,%r8), %r9d                              #55.9
        addl      %edi, %r8d                                    #55.9
        shll      $7, %r9d                                      #55.9
        shrl      $25, %r8d                                     #55.9
        orl       %r8d, %r9d                                    #55.9
        movl      %r9d, 12(%rsp)                                #55.9
        vpaddd    (%rsp), %ymm0, %ymm0                          #58.16
        vmovdqu   %ymm1, 32(%rsp)                               #58.9
        vmovdqu   %ymm0, (%rsp)                                 #58.9
        movq      64(%rsp), %rdi                                #60.9[spill]
        vmovdqu   %ymm0, (%rdi)                                 #60.9
        vmovdqu   %ymm1, 32(%rdi)                               #60.9
        vzeroupper                                              #61.1
        addq      $216, %rsp                                    #61.1
	.cfi_restore 3
        popq      %rbx                                          #61.1
	.cfi_restore 15
        popq      %r15                                          #61.1
	.cfi_restore 14
        popq      %r14                                          #61.1
	.cfi_restore 13
        popq      %r13                                          #61.1
	.cfi_restore 12
        popq      %r12                                          #61.1
        movq      %rbp, %rsp                                    #61.1
        popq      %rbp                                          #61.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #61.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	forro,@function
	.size	forro,.-forro
..LNforro.0:
	.data
# -- End  forro
	.text
.L_2__routine_start_forro_keysetup_1:
# -- Begin  forro_keysetup
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_keysetup
# --- forro_keysetup(stream_ctx *, const uint8_t *, uint32_t, uint32_t)
forro_keysetup:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
# parameter 4: %ecx
..B2.1:                         # Preds ..B2.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_keysetup.97:
..L98:
                                                         #72.1
        cmpl      $256, %edx                                    #81.9
        movl      (%rsi), %r8d                                  #75.19
        lea       16(%rsi), %rax                                #81.9
        movl      %r8d, (%rdi)                                  #75.5
        lea       sigma(%rip), %rcx                             #82.9
        movl      4(%rsi), %r9d                                 #75.19
        movl      %r9d, 4(%rdi)                                 #75.5
        movl      8(%rsi), %r10d                                #75.19
        movl      %r10d, 8(%rdi)                                #75.5
        movl      12(%rsi), %r11d                               #75.19
        cmove     %rax, %rsi                                    #81.9
        movl      %r11d, 12(%rdi)                               #75.5
        lea       tau(%rip), %rax                               #86.9
        cmove     %rcx, %rax                                    #86.9
        movl      (%rsi), %edx                                  #88.19
        movl      %edx, 32(%rdi)                                #88.5
        movl      4(%rsi), %r8d                                 #88.19
        movl      %r8d, 36(%rdi)                                #88.5
        movl      8(%rsi), %r9d                                 #88.19
        movl      %r9d, 40(%rdi)                                #88.5
        movl      (%rax), %r10d                                 #92.19
        movl      4(%rax), %r11d                                #93.19
        movl      8(%rax), %edx                                 #94.20
        movl      12(%rax), %eax                                #95.20
        movl      12(%rsi), %esi                                #88.19
        movl      %esi, 44(%rdi)                                #88.5
        movl      %r10d, 24(%rdi)                               #92.5
        movl      %r11d, 28(%rdi)                               #93.5
        movl      %edx, 56(%rdi)                                #94.5
        movl      %eax, 60(%rdi)                                #95.5
        ret                                                     #96.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	forro_keysetup,@function
	.size	forro_keysetup,.-forro_keysetup
..LNforro_keysetup.1:
	.data
# -- End  forro_keysetup
	.text
.L_2__routine_start_forro_ivsetup_2:
# -- Begin  forro_ivsetup
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_ivsetup
# --- forro_ivsetup(stream_ctx *, const uint8_t *)
forro_ivsetup:
# parameter 1: %rdi
# parameter 2: %rsi
..B3.1:                         # Preds ..B3.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_ivsetup.100:
..L101:
                                                        #99.1
        xorl      %eax, %eax                                    #100.5
        movl      %eax, 16(%rdi)                                #100.5
        movl      %eax, 20(%rdi)                                #101.5
        movl      (%rsi), %edx                                  #102.20
        movl      %edx, 48(%rdi)                                #102.5
        movl      4(%rsi), %ecx                                 #103.20
        movl      %ecx, 52(%rdi)                                #103.5
        ret                                                     #104.1
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	forro_ivsetup,@function
	.size	forro_ivsetup,.-forro_ivsetup
..LNforro_ivsetup.2:
	.data
# -- End  forro_ivsetup
	.text
.L_2__routine_start_forro_encrypt_bytes_3:
# -- Begin  forro_encrypt_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_encrypt_bytes
# --- forro_encrypt_bytes(stream_ctx *, const uint8_t *, uint8_t *, uint32_t)
forro_encrypt_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %ecx
..B4.1:                         # Preds ..B4.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_encrypt_bytes.103:
..L104:
                                                        #107.1
        pushq     %rbp                                          #107.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #107.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #107.1
        subq      $480, %rsp                                    #107.1
        movq      %rdx, %r9                                     #107.1
        movq      %rsi, %r8                                     #107.1
        movq      %r9, %rsi                                     #111.20
        movq      %r8, %rdx                                     #107.1
        testl     %ecx, %ecx                                    #126.10
        jne       ..B4.3        # Prob 72%                      #126.10
                                # LOE rdx rbx rsi rdi r8 r9 r12 r13 r14 r15 ecx
..B4.2:                         # Preds ..B4.1
                                # Execution count [2.80e-01]
        movq      %rbp, %rsp                                    #127.9
        popq      %rbp                                          #127.9
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #127.9
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
                                # LOE
..B4.3:                         # Preds ..B4.1
                                # Execution count [7.20e-01]
        xorl      %eax, %eax                                    #126.5
        movl      %ecx, 152(%rsp)                               #126.5[spill]
        movq      %rax, 144(%rsp)                               #126.5[spill]
        movq      %rsi, 128(%rsp)                               #126.5[spill]
        movq      %rdx, 104(%rsp)                               #126.5[spill]
        movq      %rdi, 136(%rsp)                               #126.5[spill]
        movq      %r8, 112(%rsp)                                #126.5[spill]
        movq      %r9, 120(%rsp)                                #126.5[spill]
        movq      %r12, 96(%rsp)                                #126.5[spill]
        movq      %r13, 88(%rsp)                                #126.5[spill]
        movq      %r14, 80(%rsp)                                #126.5[spill]
        movq      %r15, 64(%rsp)                                #126.5[spill]
        movq      %rbx, 72(%rsp)                                #126.5[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x78, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
                                # LOE
..B4.4:                         # Preds ..B4.13 ..B4.3
                                # Execution count [3.60e+00]
        movq      136(%rsp), %rsi                               #130.9[spill]
        incq      144(%rsp)                                     #126.5[spill]
        movl      28(%rsi), %r14d                               #130.9
        movl      12(%rsi), %r10d                               #130.9
        movl      48(%rsi), %ebx                                #130.9
        addl      %r10d, %ebx                                   #130.9
        movl      8(%rsi), %r9d                                 #130.9
        movl      %r14d, 248(%rsp)                              #130.9[spill]
        movl      32(%rsi), %r14d                               #130.9
        xorl      %ebx, %r14d                                   #130.9
        movl      %r9d, 240(%rsp)                               #130.9[spill]
        vmovdqu   (%rsi), %ymm1                                 #130.9
        vmovdqu   32(%rsi), %ymm0                               #130.9
        vmovdqu   %ymm1, (%rsp)                                 #130.9
        vmovdqu   %ymm0, 32(%rsp)                               #130.9
        movl      16(%rsi), %r13d                               #130.9
        movl      (%rsi), %r12d                                 #130.9
        addl      %r14d, %r13d                                  #130.9
        movl      20(%rsi), %r8d                                #130.9
        movl      4(%rsi), %edi                                 #130.9
        movl      24(%rsi), %edx                                #130.9
        movl      52(%rsi), %r15d                               #130.9
        movl      36(%rsi), %r11d                               #130.9
        movl      56(%rsi), %ecx                                #130.9
        movl      40(%rsi), %r9d                                #130.9
        movl      60(%rsi), %eax                                #130.9
        movl      44(%rsi), %esi                                #130.9
        movl      %esi, 256(%rsp)                               #130.9[spill]
        movl      %r13d, %esi                                   #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r13d                                    #130.9
        orl       %r13d, %esi                                   #130.9
        addl      %esi, %r12d                                   #130.9
        xorl      %r12d, %r10d                                  #130.9
        addl      %r10d, %ebx                                   #130.9
        movl      %ebx, %r13d                                   #130.9
        shll      $11, %r13d                                    #130.9
        shrl      $21, %ebx                                     #130.9
        orl       %ebx, %r13d                                   #130.9
        addl      %r13d, %r14d                                  #130.9
        xorl      %r14d, %esi                                   #130.9
        movl      %esi, 264(%rsp)                               #130.9[spill]
        lea       (%rsi,%r12), %ebx                             #130.9
        addl      %esi, %r12d                                   #130.9
        shll      $7, %ebx                                      #130.9
        shrl      $25, %r12d                                    #130.9
        orl       %r12d, %ebx                                   #130.9
        addl      %ebx, %r15d                                   #130.9
        xorl      %r15d, %r11d                                  #130.9
        addl      %r11d, %r8d                                   #130.9
        movl      %r8d, %esi                                    #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %esi                                    #130.9
        addl      %esi, %edi                                    #130.9
        xorl      %edi, %ebx                                    #130.9
        lea       (%rbx,%r15), %r12d                            #130.9
        addl      %ebx, %r15d                                   #130.9
        shll      $11, %r12d                                    #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %r12d                                  #130.9
        addl      %r12d, %r11d                                  #130.9
        xorl      %r11d, %esi                                   #130.9
        movl      %r11d, 272(%rsp)                              #130.9[spill]
        movl      248(%rsp), %r15d                              #130.9[spill]
        lea       (%rsi,%rdi), %r11d                            #130.9
        addl      %esi, %edi                                    #130.9
        shll      $7, %r11d                                     #130.9
        shrl      $25, %edi                                     #130.9
        orl       %edi, %r11d                                   #130.9
        addl      %r11d, %ecx                                   #130.9
        xorl      %ecx, %r9d                                    #130.9
        addl      %r9d, %edx                                    #130.9
        movl      %edx, %r8d                                    #130.9
        shll      $19, %r8d                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %r8d                                    #130.9
        movl      240(%rsp), %edx                               #130.9[spill]
        addl      %r8d, %edx                                    #130.9
        xorl      %edx, %r11d                                   #130.9
        lea       (%r11,%rcx), %edi                             #130.9
        addl      %r11d, %ecx                                   #130.9
        shll      $11, %edi                                     #130.9
        shrl      $21, %ecx                                     #130.9
        orl       %ecx, %edi                                    #130.9
        addl      %edi, %r9d                                    #130.9
        xorl      %r9d, %r8d                                    #130.9
        movl      %edi, 280(%rsp)                               #130.9[spill]
        movl      256(%rsp), %ecx                               #130.9[spill]
        lea       (%r8,%rdx), %edi                              #130.9
        addl      %r8d, %edx                                    #130.9
        shll      $7, %edi                                      #130.9
        shrl      $25, %edx                                     #130.9
        orl       %edx, %edi                                    #130.9
        addl      %edi, %eax                                    #130.9
        xorl      %eax, %ecx                                    #130.9
        addl      %ecx, %r15d                                   #130.9
        movl      %r15d, %edx                                   #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %r15d                                    #130.9
        orl       %r15d, %edx                                   #130.9
        addl      %edx, %r10d                                   #130.9
        xorl      %r10d, %edi                                   #130.9
        lea       (%rdi,%rax), %r15d                            #130.9
        addl      %edi, %eax                                    #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %eax                                     #130.9
        orl       %eax, %r15d                                   #130.9
        addl      %r15d, %ecx                                   #130.9
        xorl      %ecx, %edx                                    #130.9
        addl      %edx, %r10d                                   #130.9
        movl      %r10d, %eax                                   #130.9
        shll      $7, %eax                                      #130.9
        shrl      $25, %r10d                                    #130.9
        orl       %r10d, %eax                                   #130.9
        addl      %eax, %r15d                                   #130.9
        xorl      %r15d, %r9d                                   #130.9
        lea       (%r9,%rsi), %r10d                             #130.9
        addl      %r9d, %esi                                    #130.9
        shll      $19, %r10d                                    #130.9
        shrl      $13, %esi                                     #130.9
        orl       %esi, %r10d                                   #130.9
        addl      %r10d, %ebx                                   #130.9
        xorl      %ebx, %eax                                    #130.9
        addl      %eax, %r15d                                   #130.9
        movl      %r15d, %esi                                   #130.9
        shll      $11, %esi                                     #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %esi                                   #130.9
        addl      %esi, %r9d                                    #130.9
        xorl      %r9d, %r10d                                   #130.9
        movl      %esi, 288(%rsp)                               #130.9[spill]
        lea       (%rbx,%r10), %esi                             #130.9
        addl      %r10d, %ebx                                   #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %ebx                                     #130.9
        orl       %ebx, %esi                                    #130.9
        addl      %esi, %r13d                                   #130.9
        xorl      %r13d, %ecx                                   #130.9
        lea       (%rcx,%r8), %ebx                              #130.9
        addl      %ecx, %r8d                                    #130.9
        shll      $19, %ebx                                     #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %ebx                                    #130.9
        addl      %ebx, %r11d                                   #130.9
        xorl      %r11d, %esi                                   #130.9
        lea       (%r13,%rsi), %r8d                             #130.9
        addl      %esi, %r13d                                   #130.9
        shll      $11, %r8d                                     #130.9
        shrl      $21, %r13d                                    #130.9
        orl       %r13d, %r8d                                   #130.9
        addl      %r8d, %ecx                                    #130.9
        xorl      %ecx, %ebx                                    #130.9
        movl      %ecx, 256(%rsp)                               #130.9[spill]
        lea       (%r11,%rbx), %ecx                             #130.9
        addl      %ebx, %r11d                                   #130.9
        shll      $7, %ecx                                      #130.9
        shrl      $25, %r11d                                    #130.9
        orl       %r11d, %ecx                                   #130.9
        addl      %ecx, %r12d                                   #130.9
        xorl      %r12d, %r14d                                  #130.9
        lea       (%r14,%rdx), %r13d                            #130.9
        addl      %r14d, %edx                                   #130.9
        shll      $19, %r13d                                    #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %r13d                                   #130.9
        addl      %r13d, %edi                                   #130.9
        xorl      %edi, %ecx                                    #130.9
        movl      272(%rsp), %edx                               #130.9[spill]
        lea       (%r12,%rcx), %r11d                            #130.9
        addl      %ecx, %r12d                                   #130.9
        shll      $11, %r11d                                    #130.9
        shrl      $21, %r12d                                    #130.9
        orl       %r12d, %r11d                                  #130.9
        addl      %r11d, %r14d                                  #130.9
        xorl      %r14d, %r13d                                  #130.9
        movl      280(%rsp), %r12d                              #130.9[spill]
        movl      %r13d, 296(%rsp)                              #130.9[spill]
        lea       (%rdi,%r13), %r15d                            #130.9
        addl      %r13d, %edi                                   #130.9
        shll      $7, %r15d                                     #130.9
        shrl      $25, %edi                                     #130.9
        orl       %edi, %r15d                                   #130.9
        addl      %r15d, %r12d                                  #130.9
        xorl      %r12d, %edx                                   #130.9
        movl      264(%rsp), %r13d                              #130.9[spill]
        lea       (%rdx,%r13), %edi                             #130.9
        addl      %edx, %r13d                                   #130.9
        shll      $19, %edi                                     #130.9
        shrl      $13, %r13d                                    #130.9
        orl       %r13d, %edi                                   #130.9
        addl      %edi, %eax                                    #130.9
        xorl      %eax, %r15d                                   #130.9
        lea       (%r12,%r15), %r13d                            #130.9
        addl      %r15d, %r12d                                  #130.9
        shll      $11, %r13d                                    #130.9
        shrl      $21, %r12d                                    #130.9
        orl       %r12d, %r13d                                  #130.9
        addl      %r13d, %edx                                   #130.9
        xorl      %edx, %edi                                    #130.9
        lea       (%rax,%rdi), %r12d                            #130.9
        addl      %edi, %eax                                    #130.9
        shll      $7, %r12d                                     #130.9
        shrl      $25, %eax                                     #130.9
        orl       %eax, %r12d                                   #130.9
        addl      %r12d, %r8d                                   #130.9
        xorl      %r8d, %r14d                                   #130.9
        addl      %r14d, %edi                                   #130.9
        movl      %edi, %eax                                    #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %edi                                     #130.9
        orl       %edi, %eax                                    #130.9
        addl      %eax, %esi                                    #130.9
        xorl      %esi, %r12d                                   #130.9
        addl      %r12d, %r8d                                   #130.9
        movl      %r8d, %edi                                    #130.9
        shll      $11, %edi                                     #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %edi                                    #130.9
        addl      %edi, %r14d                                   #130.9
        xorl      %r14d, %eax                                   #130.9
        movl      %eax, 304(%rsp)                               #130.9[spill]
        lea       (%rax,%rsi), %r8d                             #130.9
        addl      %eax, %esi                                    #130.9
        shll      $7, %r8d                                      #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %r8d                                    #130.9
        addl      %r8d, %r11d                                   #130.9
        xorl      %r11d, %edx                                   #130.9
        addl      %edx, %r10d                                   #130.9
        movl      %r10d, %esi                                   #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r10d                                    #130.9
        orl       %r10d, %esi                                   #130.9
        addl      %esi, %ecx                                    #130.9
        xorl      %ecx, %r8d                                    #130.9
        movl      288(%rsp), %eax                               #130.9[spill]
        lea       (%r8,%r11), %r10d                             #130.9
        addl      %r8d, %r11d                                   #130.9
        shll      $11, %r10d                                    #130.9
        shrl      $21, %r11d                                    #130.9
        orl       %r11d, %r10d                                  #130.9
        addl      %r10d, %edx                                   #130.9
        xorl      %edx, %esi                                    #130.9
        movl      %edx, 272(%rsp)                               #130.9[spill]
        lea       (%rsi,%rcx), %r11d                            #130.9
        addl      %esi, %ecx                                    #130.9
        shll      $7, %r11d                                     #130.9
        shrl      $25, %ecx                                     #130.9
        orl       %ecx, %r11d                                   #130.9
        addl      %r11d, %r13d                                  #130.9
        xorl      %r13d, %r9d                                   #130.9
        addl      %r9d, %ebx                                    #130.9
        movl      %ebx, %edx                                    #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %ebx                                     #130.9
        orl       %ebx, %edx                                    #130.9
        addl      %edx, %r15d                                   #130.9
        xorl      %r15d, %r11d                                  #130.9
        lea       (%r11,%r13), %ecx                             #130.9
        addl      %r11d, %r13d                                  #130.9
        shll      $11, %ecx                                     #130.9
        shrl      $21, %r13d                                    #130.9
        orl       %r13d, %ecx                                   #130.9
        addl      %ecx, %r9d                                    #130.9
        xorl      %r9d, %edx                                    #130.9
        movl      %ecx, 312(%rsp)                               #130.9[spill]
        movl      256(%rsp), %ecx                               #130.9[spill]
        lea       (%rdx,%r15), %ebx                             #130.9
        addl      %edx, %r15d                                   #130.9
        shll      $7, %ebx                                      #130.9
        shrl      $25, %r15d                                    #130.9
        orl       %r15d, %ebx                                   #130.9
        addl      %ebx, %eax                                    #130.9
        xorl      %eax, %ecx                                    #130.9
        movl      296(%rsp), %r15d                              #130.9[spill]
        addl      %ecx, %r15d                                   #130.9
        movl      %r15d, %r13d                                  #130.9
        shll      $19, %r13d                                    #130.9
        shrl      $13, %r15d                                    #130.9
        orl       %r15d, %r13d                                  #130.9
        addl      %r13d, %r12d                                  #130.9
        xorl      %r12d, %ebx                                   #130.9
        lea       (%rbx,%rax), %r15d                            #130.9
        addl      %ebx, %eax                                    #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %eax                                     #130.9
        orl       %eax, %r15d                                   #130.9
        addl      %r15d, %ecx                                   #130.9
        xorl      %ecx, %r13d                                   #130.9
        addl      %r13d, %r12d                                  #130.9
        movl      %r12d, %eax                                   #130.9
        shll      $7, %eax                                      #130.9
        shrl      $25, %r12d                                    #130.9
        orl       %r12d, %eax                                   #130.9
        addl      %eax, %r15d                                   #130.9
        xorl      %r15d, %r9d                                   #130.9
        lea       (%r9,%rsi), %r12d                             #130.9
        addl      %r9d, %esi                                    #130.9
        shll      $19, %r12d                                    #130.9
        shrl      $13, %esi                                     #130.9
        orl       %esi, %r12d                                   #130.9
        addl      %r12d, %r8d                                   #130.9
        xorl      %r8d, %eax                                    #130.9
        addl      %eax, %r15d                                   #130.9
        movl      %r15d, %esi                                   #130.9
        shll      $11, %esi                                     #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %esi                                   #130.9
        addl      %esi, %r9d                                    #130.9
        xorl      %r9d, %r12d                                   #130.9
        movl      %esi, 168(%rsp)                               #130.9[spill]
        lea       (%r8,%r12), %esi                              #130.9
        addl      %r12d, %r8d                                   #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %r8d                                     #130.9
        orl       %r8d, %esi                                    #130.9
        addl      %esi, %edi                                    #130.9
        xorl      %edi, %ecx                                    #130.9
        lea       (%rcx,%rdx), %r8d                             #130.9
        addl      %ecx, %edx                                    #130.9
        shll      $19, %r8d                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %r8d                                    #130.9
        addl      %r8d, %r11d                                   #130.9
        xorl      %r11d, %esi                                   #130.9
        lea       (%rdi,%rsi), %r15d                            #130.9
        addl      %esi, %edi                                    #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %edi                                     #130.9
        orl       %edi, %r15d                                   #130.9
        addl      %r15d, %ecx                                   #130.9
        xorl      %ecx, %r8d                                    #130.9
        movl      %r8d, 320(%rsp)                               #130.9[spill]
        lea       (%r11,%r8), %edi                              #130.9
        addl      %r8d, %r11d                                   #130.9
        shll      $7, %edi                                      #130.9
        shrl      $25, %r11d                                    #130.9
        orl       %r11d, %edi                                   #130.9
        addl      %edi, %r10d                                   #130.9
        xorl      %r10d, %r14d                                  #130.9
        movl      312(%rsp), %r11d                              #130.9[spill]
        lea       (%r14,%r13), %r8d                             #130.9
        addl      %r14d, %r13d                                  #130.9
        shll      $19, %r8d                                     #130.9
        shrl      $13, %r13d                                    #130.9
        orl       %r13d, %r8d                                   #130.9
        addl      %r8d, %ebx                                    #130.9
        xorl      %ebx, %edi                                    #130.9
        lea       (%r10,%rdi), %r13d                            #130.9
        addl      %edi, %r10d                                   #130.9
        shll      $11, %r13d                                    #130.9
        shrl      $21, %r10d                                    #130.9
        orl       %r10d, %r13d                                  #130.9
        addl      %r13d, %r14d                                  #130.9
        xorl      %r14d, %r8d                                   #130.9
        movl      %r8d, 232(%rsp)                               #130.9[spill]
        lea       (%rbx,%r8), %r10d                             #130.9
        addl      %r8d, %ebx                                    #130.9
        shll      $7, %r10d                                     #130.9
        shrl      $25, %ebx                                     #130.9
        orl       %ebx, %r10d                                   #130.9
        addl      %r10d, %r11d                                  #130.9
        movl      272(%rsp), %ebx                               #130.9[spill]
        xorl      %r11d, %ebx                                   #130.9
        movl      304(%rsp), %r8d                               #130.9[spill]
        lea       (%rbx,%r8), %edx                              #130.9
        addl      %ebx, %r8d                                    #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %edx                                    #130.9
        addl      %edx, %eax                                    #130.9
        xorl      %eax, %r10d                                   #130.9
        lea       (%r11,%r10), %r8d                             #130.9
        addl      %r10d, %r11d                                  #130.9
        shll      $11, %r8d                                     #130.9
        shrl      $21, %r11d                                    #130.9
        orl       %r11d, %r8d                                   #130.9
        addl      %r8d, %ebx                                    #130.9
        xorl      %ebx, %edx                                    #130.9
        lea       (%rax,%rdx), %r11d                            #130.9
        addl      %edx, %eax                                    #130.9
        shll      $7, %r11d                                     #130.9
        shrl      $25, %eax                                     #130.9
        orl       %eax, %r11d                                   #130.9
        addl      %r11d, %r15d                                  #130.9
        xorl      %r15d, %r14d                                  #130.9
        addl      %r14d, %edx                                   #130.9
        movl      %edx, %eax                                    #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %eax                                    #130.9
        addl      %eax, %esi                                    #130.9
        xorl      %esi, %r11d                                   #130.9
        addl      %r11d, %r15d                                  #130.9
        movl      %r15d, %edx                                   #130.9
        shll      $11, %edx                                     #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %edx                                   #130.9
        addl      %edx, %r14d                                   #130.9
        xorl      %r14d, %eax                                   #130.9
        movl      %edx, 200(%rsp)                               #130.9[spill]
        movl      %eax, 184(%rsp)                               #130.9[spill]
        lea       (%rax,%rsi), %edx                             #130.9
        addl      %eax, %esi                                    #130.9
        shll      $7, %edx                                      #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %edx                                    #130.9
        addl      %edx, %r13d                                   #130.9
        xorl      %r13d, %ebx                                   #130.9
        addl      %ebx, %r12d                                   #130.9
        movl      %r12d, %esi                                   #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %esi                                   #130.9
        addl      %esi, %edi                                    #130.9
        xorl      %edi, %edx                                    #130.9
        movl      320(%rsp), %r12d                              #130.9[spill]
        lea       (%rdx,%r13), %eax                             #130.9
        addl      %edx, %r13d                                   #130.9
        shll      $11, %eax                                     #130.9
        shrl      $21, %r13d                                    #130.9
        orl       %r13d, %eax                                   #130.9
        addl      %eax, %ebx                                    #130.9
        xorl      %ebx, %esi                                    #130.9
        movl      %eax, 208(%rsp)                               #130.9[spill]
        lea       (%rsi,%rdi), %eax                             #130.9
        addl      %esi, %edi                                    #130.9
        shll      $7, %eax                                      #130.9
        shrl      $25, %edi                                     #130.9
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d ymm0 ymm1
..B4.43:                        # Preds ..B4.4
                                # Execution count [3.60e+00]
        orl       %edi, %eax                                    #130.9
        addl      %eax, %r8d                                    #130.9
        xorl      %r8d, %r9d                                    #130.9
        addl      %r9d, %r12d                                   #130.9
        movl      %r12d, %r13d                                  #130.9
        shll      $19, %r13d                                    #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %r13d                                  #130.9
        addl      %r13d, %r10d                                  #130.9
        xorl      %r10d, %eax                                   #130.9
        movl      168(%rsp), %r12d                              #130.9[spill]
        lea       (%rax,%r8), %r15d                             #130.9
        addl      %eax, %r8d                                    #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %r15d                                   #130.9
        addl      %r15d, %r9d                                   #130.9
        xorl      %r9d, %r13d                                   #130.9
        movl      232(%rsp), %r8d                               #130.9[spill]
        lea       (%r13,%r10), %edi                             #130.9
        addl      %r13d, %r10d                                  #130.9
        shll      $7, %edi                                      #130.9
        shrl      $25, %r10d                                    #130.9
        orl       %r10d, %edi                                   #130.9
        addl      %edi, %r12d                                   #130.9
        xorl      %r12d, %ecx                                   #130.9
        addl      %ecx, %r8d                                    #130.9
        movl      %r8d, %r10d                                   #130.9
        shll      $19, %r10d                                    #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %r10d                                   #130.9
        addl      %r10d, %r11d                                  #130.9
        xorl      %r11d, %edi                                   #130.9
        lea       (%rdi,%r12), %r8d                             #130.9
        addl      %edi, %r12d                                   #130.9
        shll      $11, %r8d                                     #130.9
        shrl      $21, %r12d                                    #130.9
        orl       %r12d, %r8d                                   #130.9
        addl      %r8d, %ecx                                    #130.9
        xorl      %ecx, %r10d                                   #130.9
        addl      %r10d, %r11d                                  #130.9
        movl      %r11d, %r12d                                  #130.9
        shll      $7, %r12d                                     #130.9
        shrl      $25, %r11d                                    #130.9
        orl       %r11d, %r12d                                  #130.9
        addl      %r12d, %r8d                                   #130.9
        xorl      %r8d, %r9d                                    #130.9
        lea       (%rsi,%r9), %r11d                             #130.9
        addl      %r9d, %esi                                    #130.9
        shll      $19, %r11d                                    #130.9
        shrl      $13, %esi                                     #130.9
        orl       %esi, %r11d                                   #130.9
        addl      %r11d, %edx                                   #130.9
        xorl      %edx, %r12d                                   #130.9
        addl      %r12d, %r8d                                   #130.9
        movl      %r8d, %esi                                    #130.9
        shll      $11, %esi                                     #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %esi                                    #130.9
        addl      %esi, %r9d                                    #130.9
        xorl      %r9d, %r11d                                   #130.9
        movl      %esi, 328(%rsp)                               #130.9[spill]
        movl      200(%rsp), %esi                               #130.9[spill]
        lea       (%rdx,%r11), %r8d                             #130.9
        addl      %r11d, %edx                                   #130.9
        shll      $7, %r8d                                      #130.9
        shrl      $25, %edx                                     #130.9
        orl       %edx, %r8d                                    #130.9
        addl      %r8d, %esi                                    #130.9
        xorl      %esi, %ecx                                    #130.9
        lea       (%rcx,%r13), %edx                             #130.9
        addl      %ecx, %r13d                                   #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %r13d                                    #130.9
        orl       %r13d, %edx                                   #130.9
        addl      %edx, %eax                                    #130.9
        xorl      %eax, %r8d                                    #130.9
        lea       (%rsi,%r8), %r13d                             #130.9
        addl      %r8d, %esi                                    #130.9
        shll      $11, %r13d                                    #130.9
        shrl      $21, %esi                                     #130.9
        orl       %esi, %r13d                                   #130.9
        addl      %r13d, %ecx                                   #130.9
        xorl      %ecx, %edx                                    #130.9
        movl      %ecx, 256(%rsp)                               #130.9[spill]
        movl      208(%rsp), %ecx                               #130.9[spill]
        lea       (%rax,%rdx), %esi                             #130.9
        addl      %edx, %eax                                    #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %eax                                     #130.9
        orl       %eax, %esi                                    #130.9
        addl      %esi, %ecx                                    #130.9
        xorl      %ecx, %r14d                                   #130.9
        lea       (%r14,%r10), %eax                             #130.9
        addl      %r14d, %r10d                                  #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %r10d                                    #130.9
        orl       %r10d, %eax                                   #130.9
        addl      %eax, %edi                                    #130.9
        xorl      %edi, %esi                                    #130.9
        lea       (%rcx,%rsi), %r10d                            #130.9
        addl      %esi, %ecx                                    #130.9
        shll      $11, %r10d                                    #130.9
        shrl      $21, %ecx                                     #130.9
        orl       %ecx, %r10d                                   #130.9
        addl      %r10d, %r14d                                  #130.9
        xorl      %r14d, %eax                                   #130.9
        movl      %eax, 336(%rsp)                               #130.9[spill]
        lea       (%rdi,%rax), %ecx                             #130.9
        addl      %eax, %edi                                    #130.9
        shll      $7, %ecx                                      #130.9
        shrl      $25, %edi                                     #130.9
        orl       %edi, %ecx                                    #130.9
        addl      %ecx, %r15d                                   #130.9
        xorl      %r15d, %ebx                                   #130.9
        movl      184(%rsp), %eax                               #130.9[spill]
        lea       (%rax,%rbx), %edi                             #130.9
        addl      %ebx, %eax                                    #130.9
        shll      $19, %edi                                     #130.9
        shrl      $13, %eax                                     #130.9
        orl       %eax, %edi                                    #130.9
        addl      %edi, %r12d                                   #130.9
        xorl      %r12d, %ecx                                   #130.9
        lea       (%r15,%rcx), %eax                             #130.9
        addl      %ecx, %r15d                                   #130.9
        shll      $11, %eax                                     #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %eax                                   #130.9
        addl      %eax, %ebx                                    #130.9
        xorl      %ebx, %edi                                    #130.9
        lea       (%r12,%rdi), %r15d                            #130.9
        addl      %edi, %r12d                                   #130.9
        shll      $7, %r15d                                     #130.9
        shrl      $25, %r12d                                    #130.9
        orl       %r12d, %r15d                                  #130.9
        addl      %r15d, %r13d                                  #130.9
        xorl      %r13d, %r14d                                  #130.9
        addl      %r14d, %edi                                   #130.9
        movl      %edi, %r12d                                   #130.9
        shll      $19, %r12d                                    #130.9
        shrl      $13, %edi                                     #130.9
        orl       %edi, %r12d                                   #130.9
        addl      %r12d, %r8d                                   #130.9
        xorl      %r8d, %r15d                                   #130.9
        addl      %r15d, %r13d                                  #130.9
        movl      %r13d, %edi                                   #130.9
        shll      $11, %edi                                     #130.9
        shrl      $21, %r13d                                    #130.9
        orl       %r13d, %edi                                   #130.9
        addl      %edi, %r14d                                   #130.9
        xorl      %r14d, %r12d                                  #130.9
        movl      %r12d, 344(%rsp)                              #130.9[spill]
        lea       (%r12,%r8), %r13d                             #130.9
        addl      %r12d, %r8d                                   #130.9
        shll      $7, %r13d                                     #130.9
        shrl      $25, %r8d                                     #130.9
        orl       %r8d, %r13d                                   #130.9
        addl      %r13d, %r10d                                  #130.9
        xorl      %r10d, %ebx                                   #130.9
        addl      %ebx, %r11d                                   #130.9
        movl      %r11d, %r12d                                  #130.9
        shll      $19, %r12d                                    #130.9
        shrl      $13, %r11d                                    #130.9
        orl       %r11d, %r12d                                  #130.9
        addl      %r12d, %esi                                   #130.9
        xorl      %esi, %r13d                                   #130.9
        lea       (%r13,%r10), %r11d                            #130.9
        addl      %r13d, %r10d                                  #130.9
        shll      $11, %r11d                                    #130.9
        shrl      $21, %r10d                                    #130.9
        orl       %r10d, %r11d                                  #130.9
        addl      %r11d, %ebx                                   #130.9
        xorl      %ebx, %r12d                                   #130.9
        movl      %ebx, 272(%rsp)                               #130.9[spill]
        lea       (%r12,%rsi), %r10d                            #130.9
        addl      %r12d, %esi                                   #130.9
        shll      $7, %r10d                                     #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %r10d                                   #130.9
        addl      %r10d, %eax                                   #130.9
        xorl      %eax, %r9d                                    #130.9
        addl      %r9d, %edx                                    #130.9
        movl      %edx, %r8d                                    #130.9
        shll      $19, %r8d                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %r8d                                    #130.9
        addl      %r8d, %ecx                                    #130.9
        xorl      %ecx, %r10d                                   #130.9
        lea       (%r10,%rax), %ebx                             #130.9
        addl      %r10d, %eax                                   #130.9
        shll      $11, %ebx                                     #130.9
        shrl      $21, %eax                                     #130.9
        orl       %eax, %ebx                                    #130.9
        addl      %ebx, %r9d                                    #130.9
        xorl      %r9d, %r8d                                    #130.9
        movl      256(%rsp), %eax                               #130.9[spill]
        movl      %ebx, 352(%rsp)                               #130.9[spill]
        movl      336(%rsp), %ebx                               #130.9[spill]
        lea       (%r8,%rcx), %esi                              #130.9
        addl      %r8d, %ecx                                    #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %ecx                                     #130.9
        orl       %ecx, %esi                                    #130.9
        movl      328(%rsp), %ecx                               #130.9[spill]
        addl      %esi, %ecx                                    #130.9
        xorl      %ecx, %eax                                    #130.9
        addl      %eax, %ebx                                    #130.9
        movl      %ebx, %edx                                    #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %ebx                                     #130.9
        orl       %ebx, %edx                                    #130.9
        addl      %edx, %r15d                                   #130.9
        xorl      %r15d, %esi                                   #130.9
        lea       (%rsi,%rcx), %ebx                             #130.9
        addl      %esi, %ecx                                    #130.9
        shll      $11, %ebx                                     #130.9
        shrl      $21, %ecx                                     #130.9
        orl       %ecx, %ebx                                    #130.9
        addl      %ebx, %eax                                    #130.9
        xorl      %eax, %edx                                    #130.9
        addl      %edx, %r15d                                   #130.9
        movl      %r15d, %ecx                                   #130.9
        shll      $7, %ecx                                      #130.9
        shrl      $25, %r15d                                    #130.9
        orl       %r15d, %ecx                                   #130.9
        addl      %ecx, %ebx                                    #130.9
        xorl      %ebx, %r9d                                    #130.9
        lea       (%r9,%r12), %r15d                             #130.9
        addl      %r9d, %r12d                                   #130.9
        shll      $19, %r15d                                    #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %r15d                                  #130.9
        addl      %r15d, %r13d                                  #130.9
        xorl      %r13d, %ecx                                   #130.9
        addl      %ecx, %ebx                                    #130.9
        movl      %ebx, %r12d                                   #130.9
        shll      $11, %r12d                                    #130.9
        shrl      $21, %ebx                                     #130.9
        orl       %ebx, %r12d                                   #130.9
        addl      %r12d, %r9d                                   #130.9
        xorl      %r9d, %r15d                                   #130.9
        movl      %r12d, 360(%rsp)                              #130.9[spill]
        movl      272(%rsp), %ebx                               #130.9[spill]
        lea       (%r13,%r15), %r12d                            #130.9
        addl      %r15d, %r13d                                  #130.9
        shll      $7, %r12d                                     #130.9
        shrl      $25, %r13d                                    #130.9
        orl       %r13d, %r12d                                  #130.9
        addl      %r12d, %edi                                   #130.9
        xorl      %edi, %eax                                    #130.9
        lea       (%rax,%r8), %r13d                             #130.9
        addl      %eax, %r8d                                    #130.9
        shll      $19, %r13d                                    #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %r13d                                   #130.9
        addl      %r13d, %r10d                                  #130.9
        xorl      %r10d, %r12d                                  #130.9
        lea       (%rdi,%r12), %r8d                             #130.9
        addl      %r12d, %edi                                   #130.9
        shll      $11, %r8d                                     #130.9
        shrl      $21, %edi                                     #130.9
        orl       %edi, %r8d                                    #130.9
        addl      %r8d, %eax                                    #130.9
        xorl      %eax, %r13d                                   #130.9
        movl      %eax, 256(%rsp)                               #130.9[spill]
        lea       (%r10,%r13), %edi                             #130.9
        addl      %r13d, %r10d                                  #130.9
        shll      $7, %edi                                      #130.9
        shrl      $25, %r10d                                    #130.9
        orl       %r10d, %edi                                   #130.9
        addl      %edi, %r11d                                   #130.9
        xorl      %r11d, %r14d                                  #130.9
        lea       (%r14,%rdx), %eax                             #130.9
        addl      %r14d, %edx                                   #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %eax                                    #130.9
        addl      %eax, %esi                                    #130.9
        xorl      %esi, %edi                                    #130.9
        lea       (%r11,%rdi), %r10d                            #130.9
        addl      %edi, %r11d                                   #130.9
        shll      $11, %r10d                                    #130.9
        shrl      $21, %r11d                                    #130.9
        orl       %r11d, %r10d                                  #130.9
        addl      %r10d, %r14d                                  #130.9
        xorl      %r14d, %eax                                   #130.9
        movl      352(%rsp), %r11d                              #130.9[spill]
        movl      %eax, 368(%rsp)                               #130.9[spill]
        lea       (%rsi,%rax), %edx                             #130.9
        addl      %eax, %esi                                    #130.9
        shll      $7, %edx                                      #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %edx                                    #130.9
        addl      %edx, %r11d                                   #130.9
        xorl      %r11d, %ebx                                   #130.9
        movl      344(%rsp), %esi                               #130.9[spill]
        lea       (%rbx,%rsi), %eax                             #130.9
        addl      %ebx, %esi                                    #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %esi                                     #130.9
        orl       %esi, %eax                                    #130.9
        addl      %eax, %ecx                                    #130.9
        xorl      %ecx, %edx                                    #130.9
        lea       (%r11,%rdx), %esi                             #130.9
        addl      %edx, %r11d                                   #130.9
        shll      $11, %esi                                     #130.9
        shrl      $21, %r11d                                    #130.9
        orl       %r11d, %esi                                   #130.9
        addl      %esi, %ebx                                    #130.9
        xorl      %ebx, %eax                                    #130.9
        lea       (%rcx,%rax), %r11d                            #130.9
        addl      %eax, %ecx                                    #130.9
        shll      $7, %r11d                                     #130.9
        shrl      $25, %ecx                                     #130.9
        orl       %ecx, %r11d                                   #130.9
        addl      %r11d, %r8d                                   #130.9
        xorl      %r8d, %r14d                                   #130.9
        addl      %r14d, %eax                                   #130.9
        movl      %eax, %ecx                                    #130.9
        shll      $19, %ecx                                     #130.9
        shrl      $13, %eax                                     #130.9
        orl       %eax, %ecx                                    #130.9
        addl      %ecx, %r12d                                   #130.9
        xorl      %r12d, %r11d                                  #130.9
        addl      %r11d, %r8d                                   #130.9
        movl      %r8d, %eax                                    #130.9
        shll      $11, %eax                                     #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %eax                                    #130.9
        addl      %eax, %r14d                                   #130.9
        xorl      %r14d, %ecx                                   #130.9
        movl      %ecx, 176(%rsp)                               #130.9[spill]
        movl      %eax, 192(%rsp)                               #130.9[spill]
        lea       (%rcx,%r12), %r8d                             #130.9
        addl      %ecx, %r12d                                   #130.9
        shll      $7, %r8d                                      #130.9
        shrl      $25, %r12d                                    #130.9
        orl       %r12d, %r8d                                   #130.9
        addl      %r8d, %r10d                                   #130.9
        xorl      %r10d, %ebx                                   #130.9
        addl      %ebx, %r15d                                   #130.9
        movl      %r15d, %r12d                                  #130.9
        shll      $19, %r12d                                    #130.9
        shrl      $13, %r15d                                    #130.9
        orl       %r15d, %r12d                                  #130.9
        addl      %r12d, %edi                                   #130.9
        xorl      %edi, %r8d                                    #130.9
        lea       (%r8,%r10), %ecx                              #130.9
        addl      %r8d, %r10d                                   #130.9
        shll      $11, %ecx                                     #130.9
        shrl      $21, %r10d                                    #130.9
        orl       %r10d, %ecx                                   #130.9
        addl      %ecx, %ebx                                    #130.9
        xorl      %ebx, %r12d                                   #130.9
        movl      %ecx, 224(%rsp)                               #130.9[spill]
        movl      256(%rsp), %ecx                               #130.9[spill]
        lea       (%r12,%rdi), %r10d                            #130.9
        addl      %r12d, %edi                                   #130.9
        shll      $7, %r10d                                     #130.9
        shrl      $25, %edi                                     #130.9
        orl       %edi, %r10d                                   #130.9
        addl      %r10d, %esi                                   #130.9
        xorl      %esi, %r9d                                    #130.9
        addl      %r9d, %r13d                                   #130.9
        movl      %r13d, %eax                                   #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %r13d                                    #130.9
        orl       %r13d, %eax                                   #130.9
        addl      %eax, %edx                                    #130.9
        xorl      %edx, %r10d                                   #130.9
        lea       (%r10,%rsi), %edi                             #130.9
        addl      %r10d, %esi                                   #130.9
        shll      $11, %edi                                     #130.9
        shrl      $21, %esi                                     #130.9
        orl       %esi, %edi                                    #130.9
        addl      %edi, %r9d                                    #130.9
        xorl      %r9d, %eax                                    #130.9
        movl      360(%rsp), %esi                               #130.9[spill]
        movl      %edi, 216(%rsp)                               #130.9[spill]
        lea       (%rax,%rdx), %r13d                            #130.9
        addl      %eax, %edx                                    #130.9
        shll      $7, %r13d                                     #130.9
        shrl      $25, %edx                                     #130.9
        orl       %edx, %r13d                                   #130.9
        addl      %r13d, %esi                                   #130.9
        xorl      %esi, %ecx                                    #130.9
        movl      368(%rsp), %edx                               #130.9[spill]
        addl      %ecx, %edx                                    #130.9
        movl      %edx, %edi                                    #130.9
        shll      $19, %edi                                     #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %edi                                    #130.9
        addl      %edi, %r11d                                   #130.9
        xorl      %r11d, %r13d                                  #130.9
        lea       (%r13,%rsi), %r15d                            #130.9
        addl      %r13d, %esi                                   #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %esi                                     #130.9
        orl       %esi, %r15d                                   #130.9
        addl      %r15d, %ecx                                   #130.9
        xorl      %ecx, %edi                                    #130.9
        addl      %edi, %r11d                                   #130.9
        movl      %r11d, %esi                                   #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %r11d                                    #130.9
        orl       %r11d, %esi                                   #130.9
        addl      %esi, %r15d                                   #130.9
        xorl      %r15d, %r9d                                   #130.9
        lea       (%r9,%r12), %edx                              #130.9
        addl      %r9d, %r12d                                   #130.9
        shll      $19, %edx                                     #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %edx                                   #130.9
        addl      %edx, %r8d                                    #130.9
        xorl      %r8d, %esi                                    #130.9
        addl      %esi, %r15d                                   #130.9
        movl      %r15d, %r11d                                  #130.9
        shll      $11, %r11d                                    #130.9
        shrl      $21, %r15d                                    #130.9
        orl       %r15d, %r11d                                  #130.9
        addl      %r11d, %r9d                                   #130.9
        xorl      %r9d, %edx                                    #130.9
        movl      %r11d, 160(%rsp)                              #130.9[spill]
        lea       (%r8,%rdx), %r11d                             #130.9
        addl      %edx, %r8d                                    #130.9
        shll      $7, %r11d                                     #130.9
        shrl      $25, %r8d                                     #130.9
        orl       %r8d, %r11d                                   #130.9
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d r13d r14d ymm0 ymm1
..B4.42:                        # Preds ..B4.43
                                # Execution count [3.60e+00]
        movl      192(%rsp), %r12d                              #130.9[spill]
        addl      %r11d, %r12d                                  #130.9
        xorl      %r12d, %ecx                                   #130.9
        lea       (%rax,%rcx), %r8d                             #130.9
        addl      %ecx, %eax                                    #130.9
        shll      $19, %r8d                                     #130.9
        shrl      $13, %eax                                     #130.9
        orl       %eax, %r8d                                    #130.9
        addl      %r8d, %r10d                                   #130.9
        xorl      %r10d, %r11d                                  #130.9
        lea       (%r12,%r11), %eax                             #130.9
        addl      %r11d, %r12d                                  #130.9
        shll      $11, %eax                                     #130.9
        shrl      $21, %r12d                                    #130.9
        orl       %r12d, %eax                                   #130.9
        addl      %eax, %ecx                                    #130.9
        xorl      %ecx, %r8d                                    #130.9
        movl      %ecx, 256(%rsp)                               #130.9[spill]
        movl      176(%rsp), %r12d                              #130.9[spill]
        lea       (%r10,%r8), %ecx                              #130.9
        addl      %r8d, %r10d                                   #130.9
        shll      $7, %ecx                                      #130.9
        shrl      $25, %r10d                                    #130.9
        orl       %r10d, %ecx                                   #130.9
        movl      224(%rsp), %r10d                              #130.9[spill]
        addl      %ecx, %r10d                                   #130.9
        xorl      %r10d, %r14d                                  #130.9
        lea       (%rdi,%r14), %r15d                            #130.9
        addl      %r14d, %edi                                   #130.9
        shll      $19, %r15d                                    #130.9
        shrl      $13, %edi                                     #130.9
        orl       %edi, %r15d                                   #130.9
        addl      %r15d, %r13d                                  #130.9
        xorl      %r13d, %ecx                                   #130.9
        lea       (%r10,%rcx), %edi                             #130.9
        addl      %ecx, %r10d                                   #130.9
        shll      $11, %edi                                     #130.9
        shrl      $21, %r10d                                    #130.9
        orl       %r10d, %edi                                   #130.9
        addl      %edi, %r14d                                   #130.9
        xorl      %r14d, %r15d                                  #130.9
        movl      %r15d, 376(%rsp)                              #130.9[spill]
        lea       (%r13,%r15), %r10d                            #130.9
        addl      %r15d, %r13d                                  #130.9
        shll      $7, %r10d                                     #130.9
        shrl      $25, %r13d                                    #130.9
        orl       %r13d, %r10d                                  #130.9
        movl      216(%rsp), %r13d                              #130.9[spill]
        addl      %r10d, %r13d                                  #130.9
        xorl      %r13d, %ebx                                   #130.9
        lea       (%r12,%rbx), %r15d                            #130.9
        addl      %ebx, %r12d                                   #130.9
        shll      $19, %r15d                                    #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %r15d                                  #130.9
        addl      %r15d, %esi                                   #130.9
        xorl      %esi, %r10d                                   #130.9
        lea       (%r13,%r10), %r12d                            #130.9
        addl      %r10d, %r13d                                  #130.9
        shll      $11, %r12d                                    #130.9
        shrl      $21, %r13d                                    #130.9
        orl       %r13d, %r12d                                  #130.9
        addl      %r12d, %ebx                                   #130.9
        xorl      %ebx, %r15d                                   #130.9
        lea       (%rsi,%r15), %r13d                            #130.9
        addl      %r15d, %esi                                   #130.9
        shll      $7, %r13d                                     #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %r13d                                   #130.9
        addl      %r13d, %eax                                   #130.9
        xorl      %eax, %r14d                                   #130.9
        addl      %r14d, %r15d                                  #130.9
        movl      %r15d, %esi                                   #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r15d                                    #130.9
        orl       %r15d, %esi                                   #130.9
        addl      %esi, %r11d                                   #130.9
        xorl      %r11d, %r13d                                  #130.9
        addl      %r13d, %eax                                   #130.9
        movl      %eax, %r15d                                   #130.9
        shll      $11, %r15d                                    #130.9
        shrl      $21, %eax                                     #130.9
        orl       %eax, %r15d                                   #130.9
        addl      %r15d, %r14d                                  #130.9
        xorl      %r14d, %esi                                   #130.9
        movl      %esi, 384(%rsp)                               #130.9[spill]
        lea       (%rsi,%r11), %eax                             #130.9
        addl      %esi, %r11d                                   #130.9
        shll      $7, %eax                                      #130.9
        shrl      $25, %r11d                                    #130.9
        orl       %r11d, %eax                                   #130.9
        addl      %eax, %edi                                    #130.9
        xorl      %edi, %ebx                                    #130.9
        addl      %ebx, %edx                                    #130.9
        movl      %edx, %r11d                                   #130.9
        shll      $19, %r11d                                    #130.9
        shrl      $13, %edx                                     #130.9
        orl       %edx, %r11d                                   #130.9
        addl      %r11d, %ecx                                   #130.9
        xorl      %ecx, %eax                                    #130.9
        lea       (%rax,%rdi), %edx                             #130.9
        addl      %eax, %edi                                    #130.9
        shll      $11, %edx                                     #130.9
        shrl      $21, %edi                                     #130.9
        orl       %edi, %edx                                    #130.9
        addl      %edx, %ebx                                    #130.9
        xorl      %ebx, %r11d                                   #130.9
        movl      %ebx, 272(%rsp)                               #130.9[spill]
        movl      160(%rsp), %edi                               #130.9[spill]
        lea       (%r11,%rcx), %esi                             #130.9
        addl      %r11d, %ecx                                   #130.9
        shll      $7, %esi                                      #130.9
        shrl      $25, %ecx                                     #130.9
        orl       %ecx, %esi                                    #130.9
        addl      %esi, %r12d                                   #130.9
        xorl      %r12d, %r9d                                   #130.9
        addl      %r9d, %r8d                                    #130.9
        movl      %r8d, %ecx                                    #130.9
        shll      $19, %ecx                                     #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %ecx                                    #130.9
        addl      %ecx, %r10d                                   #130.9
        xorl      %r10d, %esi                                   #130.9
        movl      376(%rsp), %r8d                               #130.9[spill]
        lea       (%rsi,%r12), %ebx                             #130.9
        addl      %esi, %r12d                                   #130.9
        shll      $11, %ebx                                     #130.9
        shrl      $21, %r12d                                    #130.9
        orl       %r12d, %ebx                                   #130.9
        addl      %ebx, %r9d                                    #130.9
        xorl      %r9d, %ecx                                    #130.9
        movl      %ebx, 392(%rsp)                               #130.9[spill]
        lea       (%rcx,%r10), %ebx                             #130.9
        addl      %ecx, %r10d                                   #130.9
        shll      $7, %ebx                                      #130.9
        shrl      $25, %r10d                                    #130.9
        orl       %r10d, %ebx                                   #130.9
        addl      %ebx, %edi                                    #130.9
        movl      256(%rsp), %r10d                              #130.9[spill]
        xorl      %edi, %r10d                                   #130.9
        addl      %r10d, %r8d                                   #130.9
        movl      %r8d, %r12d                                   #130.9
        shll      $19, %r12d                                    #130.9
        shrl      $13, %r8d                                     #130.9
        orl       %r8d, %r12d                                   #130.9
        addl      %r12d, %r13d                                  #130.9
        xorl      %r13d, %ebx                                   #130.9
        lea       (%rbx,%rdi), %r8d                             #130.9
        addl      %ebx, %edi                                    #130.9
        shll      $11, %r8d                                     #130.9
        shrl      $21, %edi                                     #130.9
        orl       %edi, %r8d                                    #130.9
        addl      %r8d, %r10d                                   #130.9
        xorl      %r10d, %r12d                                  #130.9
        addl      %r12d, %r13d                                  #130.9
        movl      %r13d, %edi                                   #130.9
        shll      $7, %edi                                      #130.9
        shrl      $25, %r13d                                    #130.9
        orl       %r13d, %edi                                   #130.9
        addl      %edi, %r8d                                    #130.9
        xorl      %r8d, %r9d                                    #130.9
        lea       (%r9,%r11), %r13d                             #130.9
        addl      %r9d, %r11d                                   #130.9
        shll      $19, %r13d                                    #130.9
        shrl      $13, %r11d                                    #130.9
        orl       %r11d, %r13d                                  #130.9
        addl      %r13d, %eax                                   #130.9
        xorl      %eax, %edi                                    #130.9
        addl      %edi, %r8d                                    #130.9
        movl      %r8d, %r11d                                   #130.9
        shll      $11, %r11d                                    #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %r11d                                   #130.9
        addl      %r11d, %r9d                                   #130.9
        xorl      %r9d, %r13d                                   #130.9
        movl      %r9d, 40(%rsp)                                #130.9
        movl      %r13d, 20(%rsp)                               #130.9
        movl      %r11d, 60(%rsp)                               #130.9
        lea       (%rax,%r13), %r9d                             #130.9
        addl      %eax, %r13d                                   #130.9
        shll      $7, %r9d                                      #130.9
        shrl      $25, %r13d                                    #130.9
        orl       %r13d, %r9d                                   #130.9
        addl      %r9d, %r15d                                   #130.9
        xorl      %r15d, %r10d                                  #130.9
        lea       (%r10,%rcx), %eax                             #130.9
        addl      %r10d, %ecx                                   #130.9
        shll      $19, %eax                                     #130.9
        shrl      $13, %ecx                                     #130.9
        orl       %ecx, %eax                                    #130.9
        addl      %eax, %esi                                    #130.9
        xorl      %esi, %r9d                                    #130.9
        movl      %r9d, (%rsp)                                  #130.9
        lea       (%r15,%r9), %ecx                              #130.9
        addl      %r15d, %r9d                                   #130.9
        shll      $11, %ecx                                     #130.9
        shrl      $21, %r9d                                     #130.9
        orl       %r9d, %ecx                                    #130.9
        addl      %ecx, %r10d                                   #130.9
        xorl      %r10d, %eax                                   #130.9
        movl      %eax, 24(%rsp)                                #130.9
        movl      %ecx, 48(%rsp)                                #130.9
        movl      272(%rsp), %ecx                               #130.9[spill]
        movl      %r10d, 44(%rsp)                               #130.9
        lea       (%rsi,%rax), %r8d                             #130.9
        addl      %esi, %eax                                    #130.9
        shll      $7, %r8d                                      #130.9
        shrl      $25, %eax                                     #130.9
        orl       %eax, %r8d                                    #130.9
        addl      %r8d, %edx                                    #130.9
        xorl      %edx, %r14d                                   #130.9
        lea       (%r14,%r12), %esi                             #130.9
        addl      %r14d, %r12d                                  #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r12d                                    #130.9
        orl       %r12d, %esi                                   #130.9
        addl      %esi, %ebx                                    #130.9
        xorl      %ebx, %r8d                                    #130.9
        movl      %r8d, 4(%rsp)                                 #130.9
        lea       (%rdx,%r8), %r12d                             #130.9
        addl      %edx, %r8d                                    #130.9
        shll      $11, %r12d                                    #130.9
        shrl      $21, %r8d                                     #130.9
        orl       %r8d, %r12d                                   #130.9
        addl      %r12d, %r14d                                  #130.9
        xorl      %r14d, %esi                                   #130.9
        movl      %esi, 28(%rsp)                                #130.9
        movl      %r14d, 32(%rsp)                               #130.9
        movl      384(%rsp), %r14d                              #130.9[spill]
        movl      %r12d, 52(%rsp)                               #130.9
        lea       (%rbx,%rsi), %eax                             #130.9
        addl      %ebx, %esi                                    #130.9
        shll      $7, %eax                                      #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %eax                                    #130.9
        movl      392(%rsp), %ebx                               #130.9[spill]
        addl      %eax, %ebx                                    #130.9
        xorl      %ebx, %ecx                                    #130.9
        lea       (%rcx,%r14), %esi                             #130.9
        addl      %ecx, %r14d                                   #130.9
        shll      $19, %esi                                     #130.9
        shrl      $13, %r14d                                    #130.9
        orl       %r14d, %esi                                   #130.9
        addl      %esi, %edi                                    #130.9
        xorl      %edi, %eax                                    #130.9
        movl      %eax, 8(%rsp)                                 #130.9
        lea       (%rbx,%rax), %edx                             #130.9
        addl      %ebx, %eax                                    #130.9
        shll      $11, %edx                                     #130.9
        shrl      $21, %eax                                     #130.9
        orl       %eax, %edx                                    #130.9
        addl      %edx, %ecx                                    #130.9
        xorl      %ecx, %esi                                    #130.9
        movl      %esi, 16(%rsp)                                #130.9
        movl      %edx, 56(%rsp)                                #130.9
        movl      %ecx, 36(%rsp)                                #130.9
        vpaddd    32(%rsp), %ymm0, %ymm0                        #130.9
        lea       (%rdi,%rsi), %r8d                             #130.9
        addl      %edi, %esi                                    #130.9
        movq      136(%rsp), %rdi                               #131.16[spill]
        shll      $7, %r8d                                      #130.9
        shrl      $25, %esi                                     #130.9
        orl       %esi, %r8d                                    #130.9
        movl      %r8d, 12(%rsp)                                #130.9
        vpaddd    (%rsp), %ymm1, %ymm1                          #130.9
        incl      16(%rdi)                                      #131.16
        jne       ..B4.6        # Prob 50%                      #132.14
                                # LOE rdi ymm0 ymm1
..B4.5:                         # Preds ..B4.42
                                # Execution count [1.80e+00]
        movq      %rdi, %rax                                    #134.20
        incl      20(%rax)                                      #134.20
                                # LOE ymm0 ymm1
..B4.6:                         # Preds ..B4.42 ..B4.5
                                # Execution count [3.60e+00]
        cmpl      $64, 152(%rsp)                                #137.22[spill]
        jbe       ..B4.14       # Prob 20%                      #137.22
                                # LOE ymm0 ymm1
..B4.7:                         # Preds ..B4.6
                                # Execution count [0.00e+00]
        movq      144(%rsp), %rbx                               #145.9[spill]
        shlq      $6, %rbx                                      #145.9
        movq      104(%rsp), %rcx                               #145.9[spill]
        movq      120(%rsp), %rdx                               #145.9[spill]
        lea       448(%rsp), %rax                               #130.9
        vmovdqu   %ymm0, (%rax)                                 #130.9
        vmovdqu   %ymm1, -32(%rax)                              #130.9
        movq      %rbx, 128(%rsp)                               #145.9[spill]
        lea       (%rcx,%rbx), %rax                             #145.9
        movq      %rax, 112(%rsp)                               #145.9[spill]
        lea       (%rdx,%rbx), %rax                             #145.9
        lea       -64(%rbx,%rdx), %rdx                          #145.9
        lea       -64(%rcx,%rbx), %rsi                          #145.9
        subq      %rsi, %rdx                                    #144.22
        cmpq      $64, %rdx                                     #143.9
        jge       ..B4.9        # Prob 50%                      #143.9
                                # LOE rax rdx
..B4.8:                         # Preds ..B4.7
                                # Execution count [0.00e+00]
        negq      %rdx                                          #144.13
        cmpq      $64, %rdx                                     #143.9
        jl        ..B4.10       # Prob 50%                      #143.9
                                # LOE rax
..B4.9:                         # Preds ..B4.7 ..B4.8
                                # Execution count [1.44e+00]
        movq      112(%rsp), %rdx                               #144.22[spill]
        vmovdqu   -64(%rdx), %ymm0                              #144.22
        vpxor     416(%rsp), %ymm0, %ymm1                       #144.29
        vmovdqu   %ymm1, -64(%rax)                              #144.13
        vmovdqu   -32(%rdx), %ymm2                              #144.22
        vpxor     448(%rsp), %ymm2, %ymm3                       #144.29
        vmovdqu   %ymm3, -32(%rax)                              #144.13
        jmp       ..B4.13       # Prob 100%                     #144.13
                                # LOE
..B4.10:                        # Preds ..B4.8
                                # Execution count [1.44e+00]
        movq      112(%rsp), %r8                                #143.9[spill]
        xorl      %edx, %edx                                    #143.9
                                # LOE rax r8 edx
..B4.11:                        # Preds ..B4.11 ..B4.10
                                # Execution count [4.61e+01]
        lea       (%rdx,%rdx), %ecx                             #144.13
        movb      -64(%rcx,%r8), %bl                            #144.22
        lea       1(%rdx,%rdx), %esi                            #144.29
        xorb      416(%rsp,%rcx), %bl                           #144.29
        incl      %edx                                          #143.9
        movb      %bl, -64(%rcx,%rax)                           #144.13
        movb      -64(%rsi,%r8), %dil                           #144.22
        xorb      416(%rsp,%rsi), %dil                          #144.29
        movb      %dil, -64(%rsi,%rax)                          #144.13
        cmpl      $32, %edx                                     #143.9
        jb        ..B4.11       # Prob 96%                      #143.9
                                # LOE rax r8 edx
..B4.13:                        # Preds ..B4.11 ..B4.9
                                # Execution count [2.88e+00]
        movq      128(%rsp), %rax                               #145.9[spill]
        addq      120(%rsp), %rax                               #145.9[spill]
        addl      $-64, 152(%rsp)                               #145.9[spill]
        movq      %rax, 128(%rsp)                               #145.9[spill]
        jmp       ..B4.4        # Prob 100%                     #145.9
                                # LOE
..B4.14:                        # Preds ..B4.6
                                # Execution count [7.20e-01]: Infreq
        movl      152(%rsp), %ecx                               #[spill]
        movq      128(%rsp), %rsi                               #[spill]
        movq      112(%rsp), %r8                                #[spill]
        movq      96(%rsp), %r12                                #[spill]
	.cfi_restore 12
        movq      88(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      80(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      64(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movq      72(%rsp), %rbx                                #[spill]
	.cfi_restore 3
        testl     %ecx, %ecx                                    #139.29
        jbe       ..B4.37       # Prob 50%                      #139.29
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x78, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
                                # LOE rbx rsi r8 r12 r13 r14 r15 ecx ymm0 ymm1
..B4.15:                        # Preds ..B4.14
                                # Execution count [0.00e+00]: Infreq
        lea       448(%rsp), %rax                               #130.9
        vmovdqu   %ymm0, (%rax)                                 #130.9
        vmovdqu   %ymm1, -32(%rax)                              #130.9
        cmpl      $6, %ecx                                      #139.13
        jbe       ..B4.31       # Prob 50%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 ecx
..B4.16:                        # Preds ..B4.15
                                # Execution count [0.00e+00]: Infreq
        movq      %rsi, %rax                                    #140.26
        movl      %ecx, %edx                                    #145.9
        subq      %r8, %rax                                     #140.26
        cmpq      %rdx, %rax                                    #139.13
        jge       ..B4.18       # Prob 50%                      #139.13
                                # LOE rax rdx rbx rsi r8 r12 r13 r14 r15 ecx
..B4.17:                        # Preds ..B4.16
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #140.17
        cmpq      %rdx, %rax                                    #139.13
        jl        ..B4.31       # Prob 50%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 ecx
..B4.18:                        # Preds ..B4.16 ..B4.17
                                # Execution count [3.24e-01]: Infreq
        cmpl      $32, %ecx                                     #139.13
        jb        ..B4.39       # Prob 10%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 ecx
..B4.19:                        # Preds ..B4.18
                                # Execution count [3.24e-01]: Infreq
        movl      %ecx, %edx                                    #139.13
        xorl      %edi, %edi                                    #139.13
        andl      $-32, %edx                                    #139.13
        movslq    %edx, %rax                                    #139.13
                                # LOE rax rbx rsi rdi r8 r12 r13 r14 r15 edx ecx
..B4.20:                        # Preds ..B4.20 ..B4.19
                                # Execution count [1.80e+00]: Infreq
        vmovdqu   (%r8,%rdi), %ymm0                             #140.26
        vpxor     416(%rsp,%rdi), %ymm0, %ymm1                  #140.33
        vmovdqu   %ymm1, (%rdi,%rsi)                            #140.17
        addq      $32, %rdi                                     #139.13
        cmpq      %rax, %rdi                                    #139.13
        jb        ..B4.20       # Prob 82%                      #139.13
                                # LOE rax rbx rsi rdi r8 r12 r13 r14 r15 edx ecx
..B4.22:                        # Preds ..B4.20 ..B4.39
                                # Execution count [3.60e-01]: Infreq
        lea       1(%rdx), %eax                                 #139.13
        cmpl      %ecx, %eax                                    #139.13
        ja        ..B4.37       # Prob 50%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 edx ecx
..B4.23:                        # Preds ..B4.22
                                # Execution count [3.24e-01]: Infreq
        subl      %edx, %ecx                                    #139.13
        cmpl      $8, %ecx                                      #139.13
        jb        ..B4.38       # Prob 10%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 edx ecx
..B4.24:                        # Preds ..B4.23
                                # Execution count [3.24e-01]: Infreq
        movl      %ecx, %eax                                    #139.13
        xorl      %edi, %edi                                    #139.13
        andl      $-8, %eax                                     #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx edi
..B4.25:                        # Preds ..B4.25 ..B4.24
                                # Execution count [1.80e+00]: Infreq
        lea       (%rdx,%rdi), %r9d                             #140.17
        addl      $8, %edi                                      #139.13
        movslq    %r9d, %r9                                     #140.33
        vmovq     (%r8,%r9), %xmm0                              #140.26
        vmovq     416(%rsp,%r9), %xmm1                          #140.33
        vpxor     %xmm1, %xmm0, %xmm2                           #140.33
        vmovq     %xmm2, (%r9,%rsi)                             #140.17
        cmpl      %eax, %edi                                    #139.13
        jb        ..B4.25       # Prob 82%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx edi
..B4.27:                        # Preds ..B4.25 ..B4.38
                                # Execution count [3.60e-01]: Infreq
        cmpl      %ecx, %eax                                    #139.13
        jae       ..B4.37       # Prob 10%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx
..B4.29:                        # Preds ..B4.27 ..B4.29
                                # Execution count [1.80e+00]: Infreq
        lea       (%rdx,%rax), %edi                             #140.17
        incl      %eax                                          #139.13
        movslq    %edi, %rdi                                    #140.33
        movb      (%r8,%rdi), %r9b                              #140.26
        xorb      416(%rsp,%rdi), %r9b                          #140.33
        movb      %r9b, (%rdi,%rsi)                             #140.17
        cmpl      %ecx, %eax                                    #139.13
        jb        ..B4.29       # Prob 82%                      #139.13
        jmp       ..B4.37       # Prob 100%                     #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx
..B4.31:                        # Preds ..B4.15 ..B4.17
                                # Execution count [3.60e-01]: Infreq
        movl      %ecx, %edx                                    #145.9
        movl      $1, %edi                                      #139.13
        xorl      %eax, %eax                                    #139.13
        shrl      $1, %edx                                      #145.9
        je        ..B4.35       # Prob 10%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx edi
..B4.33:                        # Preds ..B4.31 ..B4.33
                                # Execution count [9.00e-01]: Infreq
        lea       (%rax,%rax), %edi                             #140.17
        movslq    %edi, %rdi                                    #140.33
        lea       1(%rax,%rax), %r10d                           #140.33
        movslq    %r10d, %r10                                   #140.17
        incl      %eax                                          #139.13
        movb      (%rdi,%r8), %r9b                              #140.26
        xorb      416(%rsp,%rdi), %r9b                          #140.33
        movb      %r9b, (%rdi,%rsi)                             #140.17
        movb      (%r10,%r8), %r11b                             #140.26
        xorb      416(%rsp,%r10), %r11b                         #140.33
        movb      %r11b, (%r10,%rsi)                            #140.17
        cmpl      %edx, %eax                                    #139.13
        jb        ..B4.33       # Prob 64%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx
..B4.34:                        # Preds ..B4.33
                                # Execution count [3.24e-01]: Infreq
        lea       1(%rax,%rax), %edi                            #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 ecx edi
..B4.35:                        # Preds ..B4.34 ..B4.31
                                # Execution count [3.60e-01]: Infreq
        decl      %edi                                          #139.13
        cmpl      %ecx, %edi                                    #139.13
        jae       ..B4.37       # Prob 10%                      #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 edi
..B4.36:                        # Preds ..B4.35
                                # Execution count [3.24e-01]: Infreq
        movslq    %edi, %rdi                                    #140.33
        movb      (%rdi,%r8), %r8b                              #140.26
        xorb      416(%rsp,%rdi), %r8b                          #140.33
        movb      %r8b, (%rdi,%rsi)                             #140.17
                                # LOE rbx r12 r13 r14 r15
..B4.37:                        # Preds ..B4.29 ..B4.35 ..B4.14 ..B4.22 ..B4.27
                                #       ..B4.36
                                # Execution count [7.20e-01]: Infreq
        vzeroupper                                              #141.13
        movq      %rbp, %rsp                                    #141.13
        popq      %rbp                                          #141.13
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #141.13
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
                                # LOE
..B4.38:                        # Preds ..B4.23
                                # Execution count [3.24e-02]: Infreq
        xorl      %eax, %eax                                    #139.13
        jmp       ..B4.27       # Prob 100%                     #139.13
                                # LOE rbx rsi r8 r12 r13 r14 r15 eax edx ecx
..B4.39:                        # Preds ..B4.18
                                # Execution count [3.24e-02]: Infreq
        xorl      %edx, %edx                                    #139.13
        jmp       ..B4.22       # Prob 100%                     #139.13
        .align    16,0x90
                                # LOE rbx rsi r8 r12 r13 r14 r15 edx ecx
	.cfi_endproc
# mark_end;
	.type	forro_encrypt_bytes,@function
	.size	forro_encrypt_bytes,.-forro_encrypt_bytes
..LNforro_encrypt_bytes.3:
	.data
# -- End  forro_encrypt_bytes
	.text
.L_2__routine_start_forro_decrypt_bytes_4:
# -- Begin  forro_decrypt_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_decrypt_bytes
# --- forro_decrypt_bytes(stream_ctx *, const uint8_t *, uint8_t *, uint32_t)
forro_decrypt_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %rdx
# parameter 4: %ecx
..B5.1:                         # Preds ..B5.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_decrypt_bytes.241:
..L242:
                                                        #152.1
        pushq     %rbp                                          #152.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #152.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #152.1
        subq      $480, %rsp                                    #152.1
        movq      %rdx, %r9                                     #152.1
        movq      %rsi, %r8                                     #152.1
        movq      %rdi, %rdx                                    #152.1
        movq      %r9, %rdi                                     #153.5
        testl     %ecx, %ecx                                    #153.5
        jne       ..B5.3        # Prob 72%                      #153.5
                                # LOE rdx rbx rsi rdi r8 r9 r12 r13 r14 r15 ecx
..B5.2:                         # Preds ..B5.29 ..B5.1 ..B5.14 ..B5.35 ..B5.22
                                #       ..B5.27 ..B5.36
                                # Execution count [1.00e+00]
        vzeroupper                                              #154.1
        movq      %rbp, %rsp                                    #154.1
        popq      %rbp                                          #154.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #154.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
                                # LOE
..B5.3:                         # Preds ..B5.1
                                # Execution count [7.20e-01]
        xorl      %eax, %eax                                    #153.5
        movl      %ecx, 152(%rsp)                               #153.5[spill]
        movq      %rax, 144(%rsp)                               #153.5[spill]
        movq      %rdi, 128(%rsp)                               #153.5[spill]
        movq      %rsi, 112(%rsp)                               #153.5[spill]
        movq      %rdx, 136(%rsp)                               #153.5[spill]
        movq      %r8, 104(%rsp)                                #153.5[spill]
        movq      %r9, 120(%rsp)                                #153.5[spill]
        movq      %r12, 96(%rsp)                                #153.5[spill]
        movq      %r13, 88(%rsp)                                #153.5[spill]
        movq      %r14, 80(%rsp)                                #153.5[spill]
        movq      %r15, 64(%rsp)                                #153.5[spill]
        movq      %rbx, 72(%rsp)                                #153.5[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x78, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
                                # LOE
..B5.4:                         # Preds ..B5.13 ..B5.3
                                # Execution count [3.60e+00]
        movq      136(%rsp), %rsi                               #153.5[spill]
        incq      144(%rsp)                                     #153.5[spill]
        movl      28(%rsi), %r14d                               #153.5
        movl      12(%rsi), %r10d                               #153.5
        movl      48(%rsi), %ebx                                #153.5
        addl      %r10d, %ebx                                   #153.5
        movl      8(%rsi), %r9d                                 #153.5
        movl      %r14d, 248(%rsp)                              #153.5[spill]
        movl      32(%rsi), %r14d                               #153.5
        xorl      %ebx, %r14d                                   #153.5
        movl      %r9d, 240(%rsp)                               #153.5[spill]
        vmovdqu   (%rsi), %ymm1                                 #153.5
        vmovdqu   32(%rsi), %ymm0                               #153.5
        vmovdqu   %ymm1, (%rsp)                                 #153.5
        vmovdqu   %ymm0, 32(%rsp)                               #153.5
        movl      16(%rsi), %r13d                               #153.5
        movl      (%rsi), %r12d                                 #153.5
        addl      %r14d, %r13d                                  #153.5
        movl      20(%rsi), %r8d                                #153.5
        movl      4(%rsi), %edi                                 #153.5
        movl      24(%rsi), %edx                                #153.5
        movl      52(%rsi), %r15d                               #153.5
        movl      36(%rsi), %r11d                               #153.5
        movl      56(%rsi), %ecx                                #153.5
        movl      40(%rsi), %r9d                                #153.5
        movl      60(%rsi), %eax                                #153.5
        movl      44(%rsi), %esi                                #153.5
        movl      %esi, 256(%rsp)                               #153.5[spill]
        movl      %r13d, %esi                                   #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r13d                                    #153.5
        orl       %r13d, %esi                                   #153.5
        addl      %esi, %r12d                                   #153.5
        xorl      %r12d, %r10d                                  #153.5
        addl      %r10d, %ebx                                   #153.5
        movl      %ebx, %r13d                                   #153.5
        shll      $11, %r13d                                    #153.5
        shrl      $21, %ebx                                     #153.5
        orl       %ebx, %r13d                                   #153.5
        addl      %r13d, %r14d                                  #153.5
        xorl      %r14d, %esi                                   #153.5
        movl      %esi, 264(%rsp)                               #153.5[spill]
        lea       (%rsi,%r12), %ebx                             #153.5
        addl      %esi, %r12d                                   #153.5
        shll      $7, %ebx                                      #153.5
        shrl      $25, %r12d                                    #153.5
        orl       %r12d, %ebx                                   #153.5
        addl      %ebx, %r15d                                   #153.5
        xorl      %r15d, %r11d                                  #153.5
        addl      %r11d, %r8d                                   #153.5
        movl      %r8d, %esi                                    #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %esi                                    #153.5
        addl      %esi, %edi                                    #153.5
        xorl      %edi, %ebx                                    #153.5
        lea       (%rbx,%r15), %r12d                            #153.5
        addl      %ebx, %r15d                                   #153.5
        shll      $11, %r12d                                    #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %r12d                                  #153.5
        addl      %r12d, %r11d                                  #153.5
        xorl      %r11d, %esi                                   #153.5
        movl      %r11d, 272(%rsp)                              #153.5[spill]
        movl      248(%rsp), %r15d                              #153.5[spill]
        lea       (%rsi,%rdi), %r11d                            #153.5
        addl      %esi, %edi                                    #153.5
        shll      $7, %r11d                                     #153.5
        shrl      $25, %edi                                     #153.5
        orl       %edi, %r11d                                   #153.5
        addl      %r11d, %ecx                                   #153.5
        xorl      %ecx, %r9d                                    #153.5
        addl      %r9d, %edx                                    #153.5
        movl      %edx, %r8d                                    #153.5
        shll      $19, %r8d                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %r8d                                    #153.5
        movl      240(%rsp), %edx                               #153.5[spill]
        addl      %r8d, %edx                                    #153.5
        xorl      %edx, %r11d                                   #153.5
        lea       (%r11,%rcx), %edi                             #153.5
        addl      %r11d, %ecx                                   #153.5
        shll      $11, %edi                                     #153.5
        shrl      $21, %ecx                                     #153.5
        orl       %ecx, %edi                                    #153.5
        addl      %edi, %r9d                                    #153.5
        xorl      %r9d, %r8d                                    #153.5
        movl      %edi, 280(%rsp)                               #153.5[spill]
        movl      256(%rsp), %ecx                               #153.5[spill]
        lea       (%r8,%rdx), %edi                              #153.5
        addl      %r8d, %edx                                    #153.5
        shll      $7, %edi                                      #153.5
        shrl      $25, %edx                                     #153.5
        orl       %edx, %edi                                    #153.5
        addl      %edi, %eax                                    #153.5
        xorl      %eax, %ecx                                    #153.5
        addl      %ecx, %r15d                                   #153.5
        movl      %r15d, %edx                                   #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %r15d                                    #153.5
        orl       %r15d, %edx                                   #153.5
        addl      %edx, %r10d                                   #153.5
        xorl      %r10d, %edi                                   #153.5
        lea       (%rdi,%rax), %r15d                            #153.5
        addl      %edi, %eax                                    #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %eax                                     #153.5
        orl       %eax, %r15d                                   #153.5
        addl      %r15d, %ecx                                   #153.5
        xorl      %ecx, %edx                                    #153.5
        addl      %edx, %r10d                                   #153.5
        movl      %r10d, %eax                                   #153.5
        shll      $7, %eax                                      #153.5
        shrl      $25, %r10d                                    #153.5
        orl       %r10d, %eax                                   #153.5
        addl      %eax, %r15d                                   #153.5
        xorl      %r15d, %r9d                                   #153.5
        lea       (%r9,%rsi), %r10d                             #153.5
        addl      %r9d, %esi                                    #153.5
        shll      $19, %r10d                                    #153.5
        shrl      $13, %esi                                     #153.5
        orl       %esi, %r10d                                   #153.5
        addl      %r10d, %ebx                                   #153.5
        xorl      %ebx, %eax                                    #153.5
        addl      %eax, %r15d                                   #153.5
        movl      %r15d, %esi                                   #153.5
        shll      $11, %esi                                     #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %esi                                   #153.5
        addl      %esi, %r9d                                    #153.5
        xorl      %r9d, %r10d                                   #153.5
        movl      %esi, 288(%rsp)                               #153.5[spill]
        lea       (%rbx,%r10), %esi                             #153.5
        addl      %r10d, %ebx                                   #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %ebx                                     #153.5
        orl       %ebx, %esi                                    #153.5
        addl      %esi, %r13d                                   #153.5
        xorl      %r13d, %ecx                                   #153.5
        lea       (%rcx,%r8), %ebx                              #153.5
        addl      %ecx, %r8d                                    #153.5
        shll      $19, %ebx                                     #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %ebx                                    #153.5
        addl      %ebx, %r11d                                   #153.5
        xorl      %r11d, %esi                                   #153.5
        lea       (%r13,%rsi), %r8d                             #153.5
        addl      %esi, %r13d                                   #153.5
        shll      $11, %r8d                                     #153.5
        shrl      $21, %r13d                                    #153.5
        orl       %r13d, %r8d                                   #153.5
        addl      %r8d, %ecx                                    #153.5
        xorl      %ecx, %ebx                                    #153.5
        movl      %ecx, 256(%rsp)                               #153.5[spill]
        lea       (%r11,%rbx), %ecx                             #153.5
        addl      %ebx, %r11d                                   #153.5
        shll      $7, %ecx                                      #153.5
        shrl      $25, %r11d                                    #153.5
        orl       %r11d, %ecx                                   #153.5
        addl      %ecx, %r12d                                   #153.5
        xorl      %r12d, %r14d                                  #153.5
        lea       (%r14,%rdx), %r13d                            #153.5
        addl      %r14d, %edx                                   #153.5
        shll      $19, %r13d                                    #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %r13d                                   #153.5
        addl      %r13d, %edi                                   #153.5
        xorl      %edi, %ecx                                    #153.5
        movl      272(%rsp), %edx                               #153.5[spill]
        lea       (%r12,%rcx), %r11d                            #153.5
        addl      %ecx, %r12d                                   #153.5
        shll      $11, %r11d                                    #153.5
        shrl      $21, %r12d                                    #153.5
        orl       %r12d, %r11d                                  #153.5
        addl      %r11d, %r14d                                  #153.5
        xorl      %r14d, %r13d                                  #153.5
        movl      280(%rsp), %r12d                              #153.5[spill]
        movl      %r13d, 296(%rsp)                              #153.5[spill]
        lea       (%rdi,%r13), %r15d                            #153.5
        addl      %r13d, %edi                                   #153.5
        shll      $7, %r15d                                     #153.5
        shrl      $25, %edi                                     #153.5
        orl       %edi, %r15d                                   #153.5
        addl      %r15d, %r12d                                  #153.5
        xorl      %r12d, %edx                                   #153.5
        movl      264(%rsp), %r13d                              #153.5[spill]
        lea       (%rdx,%r13), %edi                             #153.5
        addl      %edx, %r13d                                   #153.5
        shll      $19, %edi                                     #153.5
        shrl      $13, %r13d                                    #153.5
        orl       %r13d, %edi                                   #153.5
        addl      %edi, %eax                                    #153.5
        xorl      %eax, %r15d                                   #153.5
        lea       (%r12,%r15), %r13d                            #153.5
        addl      %r15d, %r12d                                  #153.5
        shll      $11, %r13d                                    #153.5
        shrl      $21, %r12d                                    #153.5
        orl       %r12d, %r13d                                  #153.5
        addl      %r13d, %edx                                   #153.5
        xorl      %edx, %edi                                    #153.5
        lea       (%rax,%rdi), %r12d                            #153.5
        addl      %edi, %eax                                    #153.5
        shll      $7, %r12d                                     #153.5
        shrl      $25, %eax                                     #153.5
        orl       %eax, %r12d                                   #153.5
        addl      %r12d, %r8d                                   #153.5
        xorl      %r8d, %r14d                                   #153.5
        addl      %r14d, %edi                                   #153.5
        movl      %edi, %eax                                    #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %edi                                     #153.5
        orl       %edi, %eax                                    #153.5
        addl      %eax, %esi                                    #153.5
        xorl      %esi, %r12d                                   #153.5
        addl      %r12d, %r8d                                   #153.5
        movl      %r8d, %edi                                    #153.5
        shll      $11, %edi                                     #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %edi                                    #153.5
        addl      %edi, %r14d                                   #153.5
        xorl      %r14d, %eax                                   #153.5
        movl      %eax, 304(%rsp)                               #153.5[spill]
        lea       (%rax,%rsi), %r8d                             #153.5
        addl      %eax, %esi                                    #153.5
        shll      $7, %r8d                                      #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %r8d                                    #153.5
        addl      %r8d, %r11d                                   #153.5
        xorl      %r11d, %edx                                   #153.5
        addl      %edx, %r10d                                   #153.5
        movl      %r10d, %esi                                   #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r10d                                    #153.5
        orl       %r10d, %esi                                   #153.5
        addl      %esi, %ecx                                    #153.5
        xorl      %ecx, %r8d                                    #153.5
        movl      288(%rsp), %eax                               #153.5[spill]
        lea       (%r8,%r11), %r10d                             #153.5
        addl      %r8d, %r11d                                   #153.5
        shll      $11, %r10d                                    #153.5
        shrl      $21, %r11d                                    #153.5
        orl       %r11d, %r10d                                  #153.5
        addl      %r10d, %edx                                   #153.5
        xorl      %edx, %esi                                    #153.5
        movl      %edx, 272(%rsp)                               #153.5[spill]
        lea       (%rsi,%rcx), %r11d                            #153.5
        addl      %esi, %ecx                                    #153.5
        shll      $7, %r11d                                     #153.5
        shrl      $25, %ecx                                     #153.5
        orl       %ecx, %r11d                                   #153.5
        addl      %r11d, %r13d                                  #153.5
        xorl      %r13d, %r9d                                   #153.5
        addl      %r9d, %ebx                                    #153.5
        movl      %ebx, %edx                                    #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %ebx                                     #153.5
        orl       %ebx, %edx                                    #153.5
        addl      %edx, %r15d                                   #153.5
        xorl      %r15d, %r11d                                  #153.5
        lea       (%r11,%r13), %ecx                             #153.5
        addl      %r11d, %r13d                                  #153.5
        shll      $11, %ecx                                     #153.5
        shrl      $21, %r13d                                    #153.5
        orl       %r13d, %ecx                                   #153.5
        addl      %ecx, %r9d                                    #153.5
        xorl      %r9d, %edx                                    #153.5
        movl      %ecx, 312(%rsp)                               #153.5[spill]
        movl      256(%rsp), %ecx                               #153.5[spill]
        lea       (%rdx,%r15), %ebx                             #153.5
        addl      %edx, %r15d                                   #153.5
        shll      $7, %ebx                                      #153.5
        shrl      $25, %r15d                                    #153.5
        orl       %r15d, %ebx                                   #153.5
        addl      %ebx, %eax                                    #153.5
        xorl      %eax, %ecx                                    #153.5
        movl      296(%rsp), %r15d                              #153.5[spill]
        addl      %ecx, %r15d                                   #153.5
        movl      %r15d, %r13d                                  #153.5
        shll      $19, %r13d                                    #153.5
        shrl      $13, %r15d                                    #153.5
        orl       %r15d, %r13d                                  #153.5
        addl      %r13d, %r12d                                  #153.5
        xorl      %r12d, %ebx                                   #153.5
        lea       (%rbx,%rax), %r15d                            #153.5
        addl      %ebx, %eax                                    #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %eax                                     #153.5
        orl       %eax, %r15d                                   #153.5
        addl      %r15d, %ecx                                   #153.5
        xorl      %ecx, %r13d                                   #153.5
        addl      %r13d, %r12d                                  #153.5
        movl      %r12d, %eax                                   #153.5
        shll      $7, %eax                                      #153.5
        shrl      $25, %r12d                                    #153.5
        orl       %r12d, %eax                                   #153.5
        addl      %eax, %r15d                                   #153.5
        xorl      %r15d, %r9d                                   #153.5
        lea       (%r9,%rsi), %r12d                             #153.5
        addl      %r9d, %esi                                    #153.5
        shll      $19, %r12d                                    #153.5
        shrl      $13, %esi                                     #153.5
        orl       %esi, %r12d                                   #153.5
        addl      %r12d, %r8d                                   #153.5
        xorl      %r8d, %eax                                    #153.5
        addl      %eax, %r15d                                   #153.5
        movl      %r15d, %esi                                   #153.5
        shll      $11, %esi                                     #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %esi                                   #153.5
        addl      %esi, %r9d                                    #153.5
        xorl      %r9d, %r12d                                   #153.5
        movl      %esi, 168(%rsp)                               #153.5[spill]
        lea       (%r8,%r12), %esi                              #153.5
        addl      %r12d, %r8d                                   #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %r8d                                     #153.5
        orl       %r8d, %esi                                    #153.5
        addl      %esi, %edi                                    #153.5
        xorl      %edi, %ecx                                    #153.5
        lea       (%rcx,%rdx), %r8d                             #153.5
        addl      %ecx, %edx                                    #153.5
        shll      $19, %r8d                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %r8d                                    #153.5
        addl      %r8d, %r11d                                   #153.5
        xorl      %r11d, %esi                                   #153.5
        lea       (%rdi,%rsi), %r15d                            #153.5
        addl      %esi, %edi                                    #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %edi                                     #153.5
        orl       %edi, %r15d                                   #153.5
        addl      %r15d, %ecx                                   #153.5
        xorl      %ecx, %r8d                                    #153.5
        movl      %r8d, 320(%rsp)                               #153.5[spill]
        lea       (%r11,%r8), %edi                              #153.5
        addl      %r8d, %r11d                                   #153.5
        shll      $7, %edi                                      #153.5
        shrl      $25, %r11d                                    #153.5
        orl       %r11d, %edi                                   #153.5
        addl      %edi, %r10d                                   #153.5
        xorl      %r10d, %r14d                                  #153.5
        movl      312(%rsp), %r11d                              #153.5[spill]
        lea       (%r14,%r13), %r8d                             #153.5
        addl      %r14d, %r13d                                  #153.5
        shll      $19, %r8d                                     #153.5
        shrl      $13, %r13d                                    #153.5
        orl       %r13d, %r8d                                   #153.5
        addl      %r8d, %ebx                                    #153.5
        xorl      %ebx, %edi                                    #153.5
        lea       (%r10,%rdi), %r13d                            #153.5
        addl      %edi, %r10d                                   #153.5
        shll      $11, %r13d                                    #153.5
        shrl      $21, %r10d                                    #153.5
        orl       %r10d, %r13d                                  #153.5
        addl      %r13d, %r14d                                  #153.5
        xorl      %r14d, %r8d                                   #153.5
        movl      %r8d, 232(%rsp)                               #153.5[spill]
        lea       (%rbx,%r8), %r10d                             #153.5
        addl      %r8d, %ebx                                    #153.5
        shll      $7, %r10d                                     #153.5
        shrl      $25, %ebx                                     #153.5
        orl       %ebx, %r10d                                   #153.5
        addl      %r10d, %r11d                                  #153.5
        movl      272(%rsp), %ebx                               #153.5[spill]
        xorl      %r11d, %ebx                                   #153.5
        movl      304(%rsp), %r8d                               #153.5[spill]
        lea       (%rbx,%r8), %edx                              #153.5
        addl      %ebx, %r8d                                    #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %edx                                    #153.5
        addl      %edx, %eax                                    #153.5
        xorl      %eax, %r10d                                   #153.5
        lea       (%r11,%r10), %r8d                             #153.5
        addl      %r10d, %r11d                                  #153.5
        shll      $11, %r8d                                     #153.5
        shrl      $21, %r11d                                    #153.5
        orl       %r11d, %r8d                                   #153.5
        addl      %r8d, %ebx                                    #153.5
        xorl      %ebx, %edx                                    #153.5
        lea       (%rax,%rdx), %r11d                            #153.5
        addl      %edx, %eax                                    #153.5
        shll      $7, %r11d                                     #153.5
        shrl      $25, %eax                                     #153.5
        orl       %eax, %r11d                                   #153.5
        addl      %r11d, %r15d                                  #153.5
        xorl      %r15d, %r14d                                  #153.5
        addl      %r14d, %edx                                   #153.5
        movl      %edx, %eax                                    #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %eax                                    #153.5
        addl      %eax, %esi                                    #153.5
        xorl      %esi, %r11d                                   #153.5
        addl      %r11d, %r15d                                  #153.5
        movl      %r15d, %edx                                   #153.5
        shll      $11, %edx                                     #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %edx                                   #153.5
        addl      %edx, %r14d                                   #153.5
        xorl      %r14d, %eax                                   #153.5
        movl      %edx, 200(%rsp)                               #153.5[spill]
        movl      %eax, 184(%rsp)                               #153.5[spill]
        lea       (%rax,%rsi), %edx                             #153.5
        addl      %eax, %esi                                    #153.5
        shll      $7, %edx                                      #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %edx                                    #153.5
        addl      %edx, %r13d                                   #153.5
        xorl      %r13d, %ebx                                   #153.5
        addl      %ebx, %r12d                                   #153.5
        movl      %r12d, %esi                                   #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %esi                                   #153.5
        addl      %esi, %edi                                    #153.5
        xorl      %edi, %edx                                    #153.5
        movl      320(%rsp), %r12d                              #153.5[spill]
        lea       (%rdx,%r13), %eax                             #153.5
        addl      %edx, %r13d                                   #153.5
        shll      $11, %eax                                     #153.5
        shrl      $21, %r13d                                    #153.5
        orl       %r13d, %eax                                   #153.5
        addl      %eax, %ebx                                    #153.5
        xorl      %ebx, %esi                                    #153.5
        movl      %eax, 208(%rsp)                               #153.5[spill]
        lea       (%rsi,%rdi), %eax                             #153.5
        addl      %esi, %edi                                    #153.5
        shll      $7, %eax                                      #153.5
        shrl      $25, %edi                                     #153.5
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d ymm0 ymm1
..B5.42:                        # Preds ..B5.4
                                # Execution count [3.60e+00]
        orl       %edi, %eax                                    #153.5
        addl      %eax, %r8d                                    #153.5
        xorl      %r8d, %r9d                                    #153.5
        addl      %r9d, %r12d                                   #153.5
        movl      %r12d, %r13d                                  #153.5
        shll      $19, %r13d                                    #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %r13d                                  #153.5
        addl      %r13d, %r10d                                  #153.5
        xorl      %r10d, %eax                                   #153.5
        movl      168(%rsp), %r12d                              #153.5[spill]
        lea       (%rax,%r8), %r15d                             #153.5
        addl      %eax, %r8d                                    #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %r15d                                   #153.5
        addl      %r15d, %r9d                                   #153.5
        xorl      %r9d, %r13d                                   #153.5
        movl      232(%rsp), %r8d                               #153.5[spill]
        lea       (%r13,%r10), %edi                             #153.5
        addl      %r13d, %r10d                                  #153.5
        shll      $7, %edi                                      #153.5
        shrl      $25, %r10d                                    #153.5
        orl       %r10d, %edi                                   #153.5
        addl      %edi, %r12d                                   #153.5
        xorl      %r12d, %ecx                                   #153.5
        addl      %ecx, %r8d                                    #153.5
        movl      %r8d, %r10d                                   #153.5
        shll      $19, %r10d                                    #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %r10d                                   #153.5
        addl      %r10d, %r11d                                  #153.5
        xorl      %r11d, %edi                                   #153.5
        lea       (%rdi,%r12), %r8d                             #153.5
        addl      %edi, %r12d                                   #153.5
        shll      $11, %r8d                                     #153.5
        shrl      $21, %r12d                                    #153.5
        orl       %r12d, %r8d                                   #153.5
        addl      %r8d, %ecx                                    #153.5
        xorl      %ecx, %r10d                                   #153.5
        addl      %r10d, %r11d                                  #153.5
        movl      %r11d, %r12d                                  #153.5
        shll      $7, %r12d                                     #153.5
        shrl      $25, %r11d                                    #153.5
        orl       %r11d, %r12d                                  #153.5
        addl      %r12d, %r8d                                   #153.5
        xorl      %r8d, %r9d                                    #153.5
        lea       (%rsi,%r9), %r11d                             #153.5
        addl      %r9d, %esi                                    #153.5
        shll      $19, %r11d                                    #153.5
        shrl      $13, %esi                                     #153.5
        orl       %esi, %r11d                                   #153.5
        addl      %r11d, %edx                                   #153.5
        xorl      %edx, %r12d                                   #153.5
        addl      %r12d, %r8d                                   #153.5
        movl      %r8d, %esi                                    #153.5
        shll      $11, %esi                                     #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %esi                                    #153.5
        addl      %esi, %r9d                                    #153.5
        xorl      %r9d, %r11d                                   #153.5
        movl      %esi, 328(%rsp)                               #153.5[spill]
        movl      200(%rsp), %esi                               #153.5[spill]
        lea       (%rdx,%r11), %r8d                             #153.5
        addl      %r11d, %edx                                   #153.5
        shll      $7, %r8d                                      #153.5
        shrl      $25, %edx                                     #153.5
        orl       %edx, %r8d                                    #153.5
        addl      %r8d, %esi                                    #153.5
        xorl      %esi, %ecx                                    #153.5
        lea       (%rcx,%r13), %edx                             #153.5
        addl      %ecx, %r13d                                   #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %r13d                                    #153.5
        orl       %r13d, %edx                                   #153.5
        addl      %edx, %eax                                    #153.5
        xorl      %eax, %r8d                                    #153.5
        lea       (%rsi,%r8), %r13d                             #153.5
        addl      %r8d, %esi                                    #153.5
        shll      $11, %r13d                                    #153.5
        shrl      $21, %esi                                     #153.5
        orl       %esi, %r13d                                   #153.5
        addl      %r13d, %ecx                                   #153.5
        xorl      %ecx, %edx                                    #153.5
        movl      %ecx, 256(%rsp)                               #153.5[spill]
        movl      208(%rsp), %ecx                               #153.5[spill]
        lea       (%rax,%rdx), %esi                             #153.5
        addl      %edx, %eax                                    #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %eax                                     #153.5
        orl       %eax, %esi                                    #153.5
        addl      %esi, %ecx                                    #153.5
        xorl      %ecx, %r14d                                   #153.5
        lea       (%r14,%r10), %eax                             #153.5
        addl      %r14d, %r10d                                  #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %r10d                                    #153.5
        orl       %r10d, %eax                                   #153.5
        addl      %eax, %edi                                    #153.5
        xorl      %edi, %esi                                    #153.5
        lea       (%rcx,%rsi), %r10d                            #153.5
        addl      %esi, %ecx                                    #153.5
        shll      $11, %r10d                                    #153.5
        shrl      $21, %ecx                                     #153.5
        orl       %ecx, %r10d                                   #153.5
        addl      %r10d, %r14d                                  #153.5
        xorl      %r14d, %eax                                   #153.5
        movl      %eax, 336(%rsp)                               #153.5[spill]
        lea       (%rdi,%rax), %ecx                             #153.5
        addl      %eax, %edi                                    #153.5
        shll      $7, %ecx                                      #153.5
        shrl      $25, %edi                                     #153.5
        orl       %edi, %ecx                                    #153.5
        addl      %ecx, %r15d                                   #153.5
        xorl      %r15d, %ebx                                   #153.5
        movl      184(%rsp), %eax                               #153.5[spill]
        lea       (%rax,%rbx), %edi                             #153.5
        addl      %ebx, %eax                                    #153.5
        shll      $19, %edi                                     #153.5
        shrl      $13, %eax                                     #153.5
        orl       %eax, %edi                                    #153.5
        addl      %edi, %r12d                                   #153.5
        xorl      %r12d, %ecx                                   #153.5
        lea       (%r15,%rcx), %eax                             #153.5
        addl      %ecx, %r15d                                   #153.5
        shll      $11, %eax                                     #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %eax                                   #153.5
        addl      %eax, %ebx                                    #153.5
        xorl      %ebx, %edi                                    #153.5
        lea       (%r12,%rdi), %r15d                            #153.5
        addl      %edi, %r12d                                   #153.5
        shll      $7, %r15d                                     #153.5
        shrl      $25, %r12d                                    #153.5
        orl       %r12d, %r15d                                  #153.5
        addl      %r15d, %r13d                                  #153.5
        xorl      %r13d, %r14d                                  #153.5
        addl      %r14d, %edi                                   #153.5
        movl      %edi, %r12d                                   #153.5
        shll      $19, %r12d                                    #153.5
        shrl      $13, %edi                                     #153.5
        orl       %edi, %r12d                                   #153.5
        addl      %r12d, %r8d                                   #153.5
        xorl      %r8d, %r15d                                   #153.5
        addl      %r15d, %r13d                                  #153.5
        movl      %r13d, %edi                                   #153.5
        shll      $11, %edi                                     #153.5
        shrl      $21, %r13d                                    #153.5
        orl       %r13d, %edi                                   #153.5
        addl      %edi, %r14d                                   #153.5
        xorl      %r14d, %r12d                                  #153.5
        movl      %r12d, 344(%rsp)                              #153.5[spill]
        lea       (%r12,%r8), %r13d                             #153.5
        addl      %r12d, %r8d                                   #153.5
        shll      $7, %r13d                                     #153.5
        shrl      $25, %r8d                                     #153.5
        orl       %r8d, %r13d                                   #153.5
        addl      %r13d, %r10d                                  #153.5
        xorl      %r10d, %ebx                                   #153.5
        addl      %ebx, %r11d                                   #153.5
        movl      %r11d, %r12d                                  #153.5
        shll      $19, %r12d                                    #153.5
        shrl      $13, %r11d                                    #153.5
        orl       %r11d, %r12d                                  #153.5
        addl      %r12d, %esi                                   #153.5
        xorl      %esi, %r13d                                   #153.5
        lea       (%r13,%r10), %r11d                            #153.5
        addl      %r13d, %r10d                                  #153.5
        shll      $11, %r11d                                    #153.5
        shrl      $21, %r10d                                    #153.5
        orl       %r10d, %r11d                                  #153.5
        addl      %r11d, %ebx                                   #153.5
        xorl      %ebx, %r12d                                   #153.5
        movl      %ebx, 272(%rsp)                               #153.5[spill]
        lea       (%r12,%rsi), %r10d                            #153.5
        addl      %r12d, %esi                                   #153.5
        shll      $7, %r10d                                     #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %r10d                                   #153.5
        addl      %r10d, %eax                                   #153.5
        xorl      %eax, %r9d                                    #153.5
        addl      %r9d, %edx                                    #153.5
        movl      %edx, %r8d                                    #153.5
        shll      $19, %r8d                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %r8d                                    #153.5
        addl      %r8d, %ecx                                    #153.5
        xorl      %ecx, %r10d                                   #153.5
        lea       (%r10,%rax), %ebx                             #153.5
        addl      %r10d, %eax                                   #153.5
        shll      $11, %ebx                                     #153.5
        shrl      $21, %eax                                     #153.5
        orl       %eax, %ebx                                    #153.5
        addl      %ebx, %r9d                                    #153.5
        xorl      %r9d, %r8d                                    #153.5
        movl      256(%rsp), %eax                               #153.5[spill]
        movl      %ebx, 352(%rsp)                               #153.5[spill]
        movl      336(%rsp), %ebx                               #153.5[spill]
        lea       (%r8,%rcx), %esi                              #153.5
        addl      %r8d, %ecx                                    #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %ecx                                     #153.5
        orl       %ecx, %esi                                    #153.5
        movl      328(%rsp), %ecx                               #153.5[spill]
        addl      %esi, %ecx                                    #153.5
        xorl      %ecx, %eax                                    #153.5
        addl      %eax, %ebx                                    #153.5
        movl      %ebx, %edx                                    #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %ebx                                     #153.5
        orl       %ebx, %edx                                    #153.5
        addl      %edx, %r15d                                   #153.5
        xorl      %r15d, %esi                                   #153.5
        lea       (%rsi,%rcx), %ebx                             #153.5
        addl      %esi, %ecx                                    #153.5
        shll      $11, %ebx                                     #153.5
        shrl      $21, %ecx                                     #153.5
        orl       %ecx, %ebx                                    #153.5
        addl      %ebx, %eax                                    #153.5
        xorl      %eax, %edx                                    #153.5
        addl      %edx, %r15d                                   #153.5
        movl      %r15d, %ecx                                   #153.5
        shll      $7, %ecx                                      #153.5
        shrl      $25, %r15d                                    #153.5
        orl       %r15d, %ecx                                   #153.5
        addl      %ecx, %ebx                                    #153.5
        xorl      %ebx, %r9d                                    #153.5
        lea       (%r9,%r12), %r15d                             #153.5
        addl      %r9d, %r12d                                   #153.5
        shll      $19, %r15d                                    #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %r15d                                  #153.5
        addl      %r15d, %r13d                                  #153.5
        xorl      %r13d, %ecx                                   #153.5
        addl      %ecx, %ebx                                    #153.5
        movl      %ebx, %r12d                                   #153.5
        shll      $11, %r12d                                    #153.5
        shrl      $21, %ebx                                     #153.5
        orl       %ebx, %r12d                                   #153.5
        addl      %r12d, %r9d                                   #153.5
        xorl      %r9d, %r15d                                   #153.5
        movl      %r12d, 360(%rsp)                              #153.5[spill]
        movl      272(%rsp), %ebx                               #153.5[spill]
        lea       (%r13,%r15), %r12d                            #153.5
        addl      %r15d, %r13d                                  #153.5
        shll      $7, %r12d                                     #153.5
        shrl      $25, %r13d                                    #153.5
        orl       %r13d, %r12d                                  #153.5
        addl      %r12d, %edi                                   #153.5
        xorl      %edi, %eax                                    #153.5
        lea       (%rax,%r8), %r13d                             #153.5
        addl      %eax, %r8d                                    #153.5
        shll      $19, %r13d                                    #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %r13d                                   #153.5
        addl      %r13d, %r10d                                  #153.5
        xorl      %r10d, %r12d                                  #153.5
        lea       (%rdi,%r12), %r8d                             #153.5
        addl      %r12d, %edi                                   #153.5
        shll      $11, %r8d                                     #153.5
        shrl      $21, %edi                                     #153.5
        orl       %edi, %r8d                                    #153.5
        addl      %r8d, %eax                                    #153.5
        xorl      %eax, %r13d                                   #153.5
        movl      %eax, 256(%rsp)                               #153.5[spill]
        lea       (%r10,%r13), %edi                             #153.5
        addl      %r13d, %r10d                                  #153.5
        shll      $7, %edi                                      #153.5
        shrl      $25, %r10d                                    #153.5
        orl       %r10d, %edi                                   #153.5
        addl      %edi, %r11d                                   #153.5
        xorl      %r11d, %r14d                                  #153.5
        lea       (%r14,%rdx), %eax                             #153.5
        addl      %r14d, %edx                                   #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %eax                                    #153.5
        addl      %eax, %esi                                    #153.5
        xorl      %esi, %edi                                    #153.5
        lea       (%r11,%rdi), %r10d                            #153.5
        addl      %edi, %r11d                                   #153.5
        shll      $11, %r10d                                    #153.5
        shrl      $21, %r11d                                    #153.5
        orl       %r11d, %r10d                                  #153.5
        addl      %r10d, %r14d                                  #153.5
        xorl      %r14d, %eax                                   #153.5
        movl      352(%rsp), %r11d                              #153.5[spill]
        movl      %eax, 368(%rsp)                               #153.5[spill]
        lea       (%rsi,%rax), %edx                             #153.5
        addl      %eax, %esi                                    #153.5
        shll      $7, %edx                                      #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %edx                                    #153.5
        addl      %edx, %r11d                                   #153.5
        xorl      %r11d, %ebx                                   #153.5
        movl      344(%rsp), %esi                               #153.5[spill]
        lea       (%rbx,%rsi), %eax                             #153.5
        addl      %ebx, %esi                                    #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %esi                                     #153.5
        orl       %esi, %eax                                    #153.5
        addl      %eax, %ecx                                    #153.5
        xorl      %ecx, %edx                                    #153.5
        lea       (%r11,%rdx), %esi                             #153.5
        addl      %edx, %r11d                                   #153.5
        shll      $11, %esi                                     #153.5
        shrl      $21, %r11d                                    #153.5
        orl       %r11d, %esi                                   #153.5
        addl      %esi, %ebx                                    #153.5
        xorl      %ebx, %eax                                    #153.5
        lea       (%rcx,%rax), %r11d                            #153.5
        addl      %eax, %ecx                                    #153.5
        shll      $7, %r11d                                     #153.5
        shrl      $25, %ecx                                     #153.5
        orl       %ecx, %r11d                                   #153.5
        addl      %r11d, %r8d                                   #153.5
        xorl      %r8d, %r14d                                   #153.5
        addl      %r14d, %eax                                   #153.5
        movl      %eax, %ecx                                    #153.5
        shll      $19, %ecx                                     #153.5
        shrl      $13, %eax                                     #153.5
        orl       %eax, %ecx                                    #153.5
        addl      %ecx, %r12d                                   #153.5
        xorl      %r12d, %r11d                                  #153.5
        addl      %r11d, %r8d                                   #153.5
        movl      %r8d, %eax                                    #153.5
        shll      $11, %eax                                     #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %eax                                    #153.5
        addl      %eax, %r14d                                   #153.5
        xorl      %r14d, %ecx                                   #153.5
        movl      %ecx, 176(%rsp)                               #153.5[spill]
        movl      %eax, 192(%rsp)                               #153.5[spill]
        lea       (%rcx,%r12), %r8d                             #153.5
        addl      %ecx, %r12d                                   #153.5
        shll      $7, %r8d                                      #153.5
        shrl      $25, %r12d                                    #153.5
        orl       %r12d, %r8d                                   #153.5
        addl      %r8d, %r10d                                   #153.5
        xorl      %r10d, %ebx                                   #153.5
        addl      %ebx, %r15d                                   #153.5
        movl      %r15d, %r12d                                  #153.5
        shll      $19, %r12d                                    #153.5
        shrl      $13, %r15d                                    #153.5
        orl       %r15d, %r12d                                  #153.5
        addl      %r12d, %edi                                   #153.5
        xorl      %edi, %r8d                                    #153.5
        lea       (%r8,%r10), %ecx                              #153.5
        addl      %r8d, %r10d                                   #153.5
        shll      $11, %ecx                                     #153.5
        shrl      $21, %r10d                                    #153.5
        orl       %r10d, %ecx                                   #153.5
        addl      %ecx, %ebx                                    #153.5
        xorl      %ebx, %r12d                                   #153.5
        movl      %ecx, 224(%rsp)                               #153.5[spill]
        movl      256(%rsp), %ecx                               #153.5[spill]
        lea       (%r12,%rdi), %r10d                            #153.5
        addl      %r12d, %edi                                   #153.5
        shll      $7, %r10d                                     #153.5
        shrl      $25, %edi                                     #153.5
        orl       %edi, %r10d                                   #153.5
        addl      %r10d, %esi                                   #153.5
        xorl      %esi, %r9d                                    #153.5
        addl      %r9d, %r13d                                   #153.5
        movl      %r13d, %eax                                   #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %r13d                                    #153.5
        orl       %r13d, %eax                                   #153.5
        addl      %eax, %edx                                    #153.5
        xorl      %edx, %r10d                                   #153.5
        lea       (%r10,%rsi), %edi                             #153.5
        addl      %r10d, %esi                                   #153.5
        shll      $11, %edi                                     #153.5
        shrl      $21, %esi                                     #153.5
        orl       %esi, %edi                                    #153.5
        addl      %edi, %r9d                                    #153.5
        xorl      %r9d, %eax                                    #153.5
        movl      360(%rsp), %esi                               #153.5[spill]
        movl      %edi, 216(%rsp)                               #153.5[spill]
        lea       (%rax,%rdx), %r13d                            #153.5
        addl      %eax, %edx                                    #153.5
        shll      $7, %r13d                                     #153.5
        shrl      $25, %edx                                     #153.5
        orl       %edx, %r13d                                   #153.5
        addl      %r13d, %esi                                   #153.5
        xorl      %esi, %ecx                                    #153.5
        movl      368(%rsp), %edx                               #153.5[spill]
        addl      %ecx, %edx                                    #153.5
        movl      %edx, %edi                                    #153.5
        shll      $19, %edi                                     #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %edi                                    #153.5
        addl      %edi, %r11d                                   #153.5
        xorl      %r11d, %r13d                                  #153.5
        lea       (%r13,%rsi), %r15d                            #153.5
        addl      %r13d, %esi                                   #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %esi                                     #153.5
        orl       %esi, %r15d                                   #153.5
        addl      %r15d, %ecx                                   #153.5
        xorl      %ecx, %edi                                    #153.5
        addl      %edi, %r11d                                   #153.5
        movl      %r11d, %esi                                   #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %r11d                                    #153.5
        orl       %r11d, %esi                                   #153.5
        addl      %esi, %r15d                                   #153.5
        xorl      %r15d, %r9d                                   #153.5
        lea       (%r9,%r12), %edx                              #153.5
        addl      %r9d, %r12d                                   #153.5
        shll      $19, %edx                                     #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %edx                                   #153.5
        addl      %edx, %r8d                                    #153.5
        xorl      %r8d, %esi                                    #153.5
        addl      %esi, %r15d                                   #153.5
        movl      %r15d, %r11d                                  #153.5
        shll      $11, %r11d                                    #153.5
        shrl      $21, %r15d                                    #153.5
        orl       %r15d, %r11d                                  #153.5
        addl      %r11d, %r9d                                   #153.5
        xorl      %r9d, %edx                                    #153.5
        movl      %r11d, 160(%rsp)                              #153.5[spill]
        lea       (%r8,%rdx), %r11d                             #153.5
        addl      %edx, %r8d                                    #153.5
        shll      $7, %r11d                                     #153.5
        shrl      $25, %r8d                                     #153.5
        orl       %r8d, %r11d                                   #153.5
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d r13d r14d ymm0 ymm1
..B5.41:                        # Preds ..B5.42
                                # Execution count [3.60e+00]
        movl      192(%rsp), %r12d                              #153.5[spill]
        addl      %r11d, %r12d                                  #153.5
        xorl      %r12d, %ecx                                   #153.5
        lea       (%rax,%rcx), %r8d                             #153.5
        addl      %ecx, %eax                                    #153.5
        shll      $19, %r8d                                     #153.5
        shrl      $13, %eax                                     #153.5
        orl       %eax, %r8d                                    #153.5
        addl      %r8d, %r10d                                   #153.5
        xorl      %r10d, %r11d                                  #153.5
        lea       (%r12,%r11), %eax                             #153.5
        addl      %r11d, %r12d                                  #153.5
        shll      $11, %eax                                     #153.5
        shrl      $21, %r12d                                    #153.5
        orl       %r12d, %eax                                   #153.5
        addl      %eax, %ecx                                    #153.5
        xorl      %ecx, %r8d                                    #153.5
        movl      %ecx, 256(%rsp)                               #153.5[spill]
        movl      176(%rsp), %r12d                              #153.5[spill]
        lea       (%r10,%r8), %ecx                              #153.5
        addl      %r8d, %r10d                                   #153.5
        shll      $7, %ecx                                      #153.5
        shrl      $25, %r10d                                    #153.5
        orl       %r10d, %ecx                                   #153.5
        movl      224(%rsp), %r10d                              #153.5[spill]
        addl      %ecx, %r10d                                   #153.5
        xorl      %r10d, %r14d                                  #153.5
        lea       (%rdi,%r14), %r15d                            #153.5
        addl      %r14d, %edi                                   #153.5
        shll      $19, %r15d                                    #153.5
        shrl      $13, %edi                                     #153.5
        orl       %edi, %r15d                                   #153.5
        addl      %r15d, %r13d                                  #153.5
        xorl      %r13d, %ecx                                   #153.5
        lea       (%r10,%rcx), %edi                             #153.5
        addl      %ecx, %r10d                                   #153.5
        shll      $11, %edi                                     #153.5
        shrl      $21, %r10d                                    #153.5
        orl       %r10d, %edi                                   #153.5
        addl      %edi, %r14d                                   #153.5
        xorl      %r14d, %r15d                                  #153.5
        movl      %r15d, 376(%rsp)                              #153.5[spill]
        lea       (%r13,%r15), %r10d                            #153.5
        addl      %r15d, %r13d                                  #153.5
        shll      $7, %r10d                                     #153.5
        shrl      $25, %r13d                                    #153.5
        orl       %r13d, %r10d                                  #153.5
        movl      216(%rsp), %r13d                              #153.5[spill]
        addl      %r10d, %r13d                                  #153.5
        xorl      %r13d, %ebx                                   #153.5
        lea       (%r12,%rbx), %r15d                            #153.5
        addl      %ebx, %r12d                                   #153.5
        shll      $19, %r15d                                    #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %r15d                                  #153.5
        addl      %r15d, %esi                                   #153.5
        xorl      %esi, %r10d                                   #153.5
        lea       (%r13,%r10), %r12d                            #153.5
        addl      %r10d, %r13d                                  #153.5
        shll      $11, %r12d                                    #153.5
        shrl      $21, %r13d                                    #153.5
        orl       %r13d, %r12d                                  #153.5
        addl      %r12d, %ebx                                   #153.5
        xorl      %ebx, %r15d                                   #153.5
        lea       (%rsi,%r15), %r13d                            #153.5
        addl      %r15d, %esi                                   #153.5
        shll      $7, %r13d                                     #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %r13d                                   #153.5
        addl      %r13d, %eax                                   #153.5
        xorl      %eax, %r14d                                   #153.5
        addl      %r14d, %r15d                                  #153.5
        movl      %r15d, %esi                                   #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r15d                                    #153.5
        orl       %r15d, %esi                                   #153.5
        addl      %esi, %r11d                                   #153.5
        xorl      %r11d, %r13d                                  #153.5
        addl      %r13d, %eax                                   #153.5
        movl      %eax, %r15d                                   #153.5
        shll      $11, %r15d                                    #153.5
        shrl      $21, %eax                                     #153.5
        orl       %eax, %r15d                                   #153.5
        addl      %r15d, %r14d                                  #153.5
        xorl      %r14d, %esi                                   #153.5
        movl      %esi, 384(%rsp)                               #153.5[spill]
        lea       (%rsi,%r11), %eax                             #153.5
        addl      %esi, %r11d                                   #153.5
        shll      $7, %eax                                      #153.5
        shrl      $25, %r11d                                    #153.5
        orl       %r11d, %eax                                   #153.5
        addl      %eax, %edi                                    #153.5
        xorl      %edi, %ebx                                    #153.5
        addl      %ebx, %edx                                    #153.5
        movl      %edx, %r11d                                   #153.5
        shll      $19, %r11d                                    #153.5
        shrl      $13, %edx                                     #153.5
        orl       %edx, %r11d                                   #153.5
        addl      %r11d, %ecx                                   #153.5
        xorl      %ecx, %eax                                    #153.5
        lea       (%rax,%rdi), %edx                             #153.5
        addl      %eax, %edi                                    #153.5
        shll      $11, %edx                                     #153.5
        shrl      $21, %edi                                     #153.5
        orl       %edi, %edx                                    #153.5
        addl      %edx, %ebx                                    #153.5
        xorl      %ebx, %r11d                                   #153.5
        movl      %ebx, 272(%rsp)                               #153.5[spill]
        movl      160(%rsp), %edi                               #153.5[spill]
        lea       (%r11,%rcx), %esi                             #153.5
        addl      %r11d, %ecx                                   #153.5
        shll      $7, %esi                                      #153.5
        shrl      $25, %ecx                                     #153.5
        orl       %ecx, %esi                                    #153.5
        addl      %esi, %r12d                                   #153.5
        xorl      %r12d, %r9d                                   #153.5
        addl      %r9d, %r8d                                    #153.5
        movl      %r8d, %ecx                                    #153.5
        shll      $19, %ecx                                     #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %ecx                                    #153.5
        addl      %ecx, %r10d                                   #153.5
        xorl      %r10d, %esi                                   #153.5
        movl      376(%rsp), %r8d                               #153.5[spill]
        lea       (%rsi,%r12), %ebx                             #153.5
        addl      %esi, %r12d                                   #153.5
        shll      $11, %ebx                                     #153.5
        shrl      $21, %r12d                                    #153.5
        orl       %r12d, %ebx                                   #153.5
        addl      %ebx, %r9d                                    #153.5
        xorl      %r9d, %ecx                                    #153.5
        movl      %ebx, 392(%rsp)                               #153.5[spill]
        lea       (%rcx,%r10), %ebx                             #153.5
        addl      %ecx, %r10d                                   #153.5
        shll      $7, %ebx                                      #153.5
        shrl      $25, %r10d                                    #153.5
        orl       %r10d, %ebx                                   #153.5
        addl      %ebx, %edi                                    #153.5
        movl      256(%rsp), %r10d                              #153.5[spill]
        xorl      %edi, %r10d                                   #153.5
        addl      %r10d, %r8d                                   #153.5
        movl      %r8d, %r12d                                   #153.5
        shll      $19, %r12d                                    #153.5
        shrl      $13, %r8d                                     #153.5
        orl       %r8d, %r12d                                   #153.5
        addl      %r12d, %r13d                                  #153.5
        xorl      %r13d, %ebx                                   #153.5
        lea       (%rbx,%rdi), %r8d                             #153.5
        addl      %ebx, %edi                                    #153.5
        shll      $11, %r8d                                     #153.5
        shrl      $21, %edi                                     #153.5
        orl       %edi, %r8d                                    #153.5
        addl      %r8d, %r10d                                   #153.5
        xorl      %r10d, %r12d                                  #153.5
        addl      %r12d, %r13d                                  #153.5
        movl      %r13d, %edi                                   #153.5
        shll      $7, %edi                                      #153.5
        shrl      $25, %r13d                                    #153.5
        orl       %r13d, %edi                                   #153.5
        addl      %edi, %r8d                                    #153.5
        xorl      %r8d, %r9d                                    #153.5
        lea       (%r9,%r11), %r13d                             #153.5
        addl      %r9d, %r11d                                   #153.5
        shll      $19, %r13d                                    #153.5
        shrl      $13, %r11d                                    #153.5
        orl       %r11d, %r13d                                  #153.5
        addl      %r13d, %eax                                   #153.5
        xorl      %eax, %edi                                    #153.5
        addl      %edi, %r8d                                    #153.5
        movl      %r8d, %r11d                                   #153.5
        shll      $11, %r11d                                    #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %r11d                                   #153.5
        addl      %r11d, %r9d                                   #153.5
        xorl      %r9d, %r13d                                   #153.5
        movl      %r9d, 40(%rsp)                                #153.5
        movl      %r13d, 20(%rsp)                               #153.5
        movl      %r11d, 60(%rsp)                               #153.5
        lea       (%rax,%r13), %r9d                             #153.5
        addl      %eax, %r13d                                   #153.5
        shll      $7, %r9d                                      #153.5
        shrl      $25, %r13d                                    #153.5
        orl       %r13d, %r9d                                   #153.5
        addl      %r9d, %r15d                                   #153.5
        xorl      %r15d, %r10d                                  #153.5
        lea       (%r10,%rcx), %eax                             #153.5
        addl      %r10d, %ecx                                   #153.5
        shll      $19, %eax                                     #153.5
        shrl      $13, %ecx                                     #153.5
        orl       %ecx, %eax                                    #153.5
        addl      %eax, %esi                                    #153.5
        xorl      %esi, %r9d                                    #153.5
        movl      %r9d, (%rsp)                                  #153.5
        lea       (%r15,%r9), %ecx                              #153.5
        addl      %r15d, %r9d                                   #153.5
        shll      $11, %ecx                                     #153.5
        shrl      $21, %r9d                                     #153.5
        orl       %r9d, %ecx                                    #153.5
        addl      %ecx, %r10d                                   #153.5
        xorl      %r10d, %eax                                   #153.5
        movl      %eax, 24(%rsp)                                #153.5
        movl      %ecx, 48(%rsp)                                #153.5
        movl      272(%rsp), %ecx                               #153.5[spill]
        movl      %r10d, 44(%rsp)                               #153.5
        lea       (%rsi,%rax), %r8d                             #153.5
        addl      %esi, %eax                                    #153.5
        shll      $7, %r8d                                      #153.5
        shrl      $25, %eax                                     #153.5
        orl       %eax, %r8d                                    #153.5
        addl      %r8d, %edx                                    #153.5
        xorl      %edx, %r14d                                   #153.5
        lea       (%r14,%r12), %esi                             #153.5
        addl      %r14d, %r12d                                  #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r12d                                    #153.5
        orl       %r12d, %esi                                   #153.5
        addl      %esi, %ebx                                    #153.5
        xorl      %ebx, %r8d                                    #153.5
        movl      %r8d, 4(%rsp)                                 #153.5
        lea       (%rdx,%r8), %r12d                             #153.5
        addl      %edx, %r8d                                    #153.5
        shll      $11, %r12d                                    #153.5
        shrl      $21, %r8d                                     #153.5
        orl       %r8d, %r12d                                   #153.5
        addl      %r12d, %r14d                                  #153.5
        xorl      %r14d, %esi                                   #153.5
        movl      %esi, 28(%rsp)                                #153.5
        movl      %r14d, 32(%rsp)                               #153.5
        movl      384(%rsp), %r14d                              #153.5[spill]
        movl      %r12d, 52(%rsp)                               #153.5
        lea       (%rbx,%rsi), %eax                             #153.5
        addl      %ebx, %esi                                    #153.5
        shll      $7, %eax                                      #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %eax                                    #153.5
        movl      392(%rsp), %ebx                               #153.5[spill]
        addl      %eax, %ebx                                    #153.5
        xorl      %ebx, %ecx                                    #153.5
        lea       (%rcx,%r14), %esi                             #153.5
        addl      %ecx, %r14d                                   #153.5
        shll      $19, %esi                                     #153.5
        shrl      $13, %r14d                                    #153.5
        orl       %r14d, %esi                                   #153.5
        addl      %esi, %edi                                    #153.5
        xorl      %edi, %eax                                    #153.5
        movl      %eax, 8(%rsp)                                 #153.5
        lea       (%rbx,%rax), %edx                             #153.5
        addl      %ebx, %eax                                    #153.5
        shll      $11, %edx                                     #153.5
        shrl      $21, %eax                                     #153.5
        orl       %eax, %edx                                    #153.5
        addl      %edx, %ecx                                    #153.5
        xorl      %ecx, %esi                                    #153.5
        movl      %esi, 16(%rsp)                                #153.5
        movl      %edx, 56(%rsp)                                #153.5
        movl      %ecx, 36(%rsp)                                #153.5
        vpaddd    32(%rsp), %ymm0, %ymm0                        #153.5
        lea       (%rdi,%rsi), %r8d                             #153.5
        addl      %edi, %esi                                    #153.5
        movq      136(%rsp), %rdi                               #153.5[spill]
        shll      $7, %r8d                                      #153.5
        shrl      $25, %esi                                     #153.5
        orl       %esi, %r8d                                    #153.5
        movl      %r8d, 12(%rsp)                                #153.5
        vpaddd    (%rsp), %ymm1, %ymm1                          #153.5
        incl      16(%rdi)                                      #153.5
        jne       ..B5.6        # Prob 50%                      #153.5
                                # LOE rdi ymm0 ymm1
..B5.5:                         # Preds ..B5.41
                                # Execution count [1.80e+00]
        movq      %rdi, %rax                                    #153.5
        incl      20(%rax)                                      #153.5
                                # LOE ymm0 ymm1
..B5.6:                         # Preds ..B5.41 ..B5.5
                                # Execution count [3.60e+00]
        cmpl      $64, 152(%rsp)                                #153.5[spill]
        jbe       ..B5.14       # Prob 20%                      #153.5
                                # LOE ymm0 ymm1
..B5.7:                         # Preds ..B5.6
                                # Execution count [0.00e+00]
        movq      144(%rsp), %rbx                               #153.5[spill]
        shlq      $6, %rbx                                      #153.5
        movq      104(%rsp), %rcx                               #153.5[spill]
        movq      120(%rsp), %rdx                               #153.5[spill]
        lea       448(%rsp), %rax                               #153.5
        vmovdqu   %ymm0, (%rax)                                 #153.5
        vmovdqu   %ymm1, -32(%rax)                              #153.5
        movq      %rbx, 128(%rsp)                               #153.5[spill]
        lea       (%rcx,%rbx), %rax                             #153.5
        movq      %rax, 112(%rsp)                               #153.5[spill]
        lea       (%rdx,%rbx), %rax                             #153.5
        lea       -64(%rbx,%rdx), %rdx                          #153.5
        lea       -64(%rcx,%rbx), %rsi                          #153.5
        subq      %rsi, %rdx                                    #153.5
        cmpq      $64, %rdx                                     #153.5
        jge       ..B5.9        # Prob 50%                      #153.5
                                # LOE rax rdx
..B5.8:                         # Preds ..B5.7
                                # Execution count [0.00e+00]
        negq      %rdx                                          #153.5
        cmpq      $64, %rdx                                     #153.5
        jl        ..B5.10       # Prob 50%                      #153.5
                                # LOE rax
..B5.9:                         # Preds ..B5.7 ..B5.8
                                # Execution count [1.44e+00]
        movq      112(%rsp), %rdx                               #153.5[spill]
        vmovdqu   -64(%rdx), %ymm0                              #153.5
        vpxor     416(%rsp), %ymm0, %ymm1                       #153.5
        vmovdqu   %ymm1, -64(%rax)                              #153.5
        vmovdqu   -32(%rdx), %ymm2                              #153.5
        vpxor     448(%rsp), %ymm2, %ymm3                       #153.5
        vmovdqu   %ymm3, -32(%rax)                              #153.5
        jmp       ..B5.13       # Prob 100%                     #153.5
                                # LOE
..B5.10:                        # Preds ..B5.8
                                # Execution count [1.44e+00]
        movq      112(%rsp), %r8                                #153.5[spill]
        xorl      %edx, %edx                                    #153.5
                                # LOE rax r8 edx
..B5.11:                        # Preds ..B5.11 ..B5.10
                                # Execution count [4.61e+01]
        lea       (%rdx,%rdx), %ecx                             #153.5
        movb      -64(%rcx,%r8), %bl                            #153.5
        lea       1(%rdx,%rdx), %esi                            #153.5
        xorb      416(%rsp,%rcx), %bl                           #153.5
        incl      %edx                                          #153.5
        movb      %bl, -64(%rcx,%rax)                           #153.5
        movb      -64(%rsi,%r8), %dil                           #153.5
        xorb      416(%rsp,%rsi), %dil                          #153.5
        movb      %dil, -64(%rsi,%rax)                          #153.5
        cmpl      $32, %edx                                     #153.5
        jb        ..B5.11       # Prob 96%                      #153.5
                                # LOE rax r8 edx
..B5.13:                        # Preds ..B5.11 ..B5.9
                                # Execution count [2.88e+00]
        movq      128(%rsp), %rax                               #153.5[spill]
        addq      120(%rsp), %rax                               #153.5[spill]
        addl      $-64, 152(%rsp)                               #153.5[spill]
        movq      %rax, 128(%rsp)                               #153.5[spill]
        jmp       ..B5.4        # Prob 100%                     #153.5
                                # LOE
..B5.14:                        # Preds ..B5.6
                                # Execution count [7.20e-01]: Infreq
        movl      152(%rsp), %ecx                               #[spill]
        movq      128(%rsp), %rdi                               #[spill]
        movq      112(%rsp), %rsi                               #[spill]
        movq      96(%rsp), %r12                                #[spill]
	.cfi_restore 12
        movq      88(%rsp), %r13                                #[spill]
	.cfi_restore 13
        movq      80(%rsp), %r14                                #[spill]
	.cfi_restore 14
        movq      64(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movq      72(%rsp), %rbx                                #[spill]
	.cfi_restore 3
        testl     %ecx, %ecx                                    #153.5
        jbe       ..B5.2        # Prob 50%                      #153.5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x80, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x78, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x70, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
                                # LOE rbx rsi rdi r12 r13 r14 r15 ecx ymm0 ymm1
..B5.15:                        # Preds ..B5.14
                                # Execution count [0.00e+00]: Infreq
        lea       448(%rsp), %rax                               #153.5
        vmovdqu   %ymm0, (%rax)                                 #153.5
        vmovdqu   %ymm1, -32(%rax)                              #153.5
        cmpl      $6, %ecx                                      #153.5
        jbe       ..B5.31       # Prob 50%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 ecx
..B5.16:                        # Preds ..B5.15
                                # Execution count [0.00e+00]: Infreq
        movq      %rdi, %rax                                    #153.5
        movl      %ecx, %edx                                    #153.5
        subq      %rsi, %rax                                    #153.5
        cmpq      %rdx, %rax                                    #153.5
        jge       ..B5.18       # Prob 50%                      #153.5
                                # LOE rax rdx rbx rsi rdi r12 r13 r14 r15 ecx
..B5.17:                        # Preds ..B5.16
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #153.5
        cmpq      %rdx, %rax                                    #153.5
        jl        ..B5.31       # Prob 50%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 ecx
..B5.18:                        # Preds ..B5.16 ..B5.17
                                # Execution count [3.24e-01]: Infreq
        cmpl      $32, %ecx                                     #153.5
        jb        ..B5.37       # Prob 10%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 ecx
..B5.19:                        # Preds ..B5.18
                                # Execution count [3.24e-01]: Infreq
        movl      %ecx, %edx                                    #153.5
        xorl      %r8d, %r8d                                    #153.5
        andl      $-32, %edx                                    #153.5
        movslq    %edx, %rax                                    #153.5
                                # LOE rax rbx rsi rdi r8 r12 r13 r14 r15 edx ecx
..B5.20:                        # Preds ..B5.20 ..B5.19
                                # Execution count [1.80e+00]: Infreq
        vmovdqu   (%rsi,%r8), %ymm0                             #153.5
        vpxor     416(%rsp,%r8), %ymm0, %ymm1                   #153.5
        vmovdqu   %ymm1, (%r8,%rdi)                             #153.5
        addq      $32, %r8                                      #153.5
        cmpq      %rax, %r8                                     #153.5
        jb        ..B5.20       # Prob 82%                      #153.5
                                # LOE rax rbx rsi rdi r8 r12 r13 r14 r15 edx ecx
..B5.22:                        # Preds ..B5.20 ..B5.37
                                # Execution count [3.60e-01]: Infreq
        lea       1(%rdx), %eax                                 #153.5
        cmpl      %ecx, %eax                                    #153.5
        ja        ..B5.2        # Prob 50%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 edx ecx
..B5.23:                        # Preds ..B5.22
                                # Execution count [3.24e-01]: Infreq
        subl      %edx, %ecx                                    #153.5
        cmpl      $8, %ecx                                      #153.5
        jb        ..B5.38       # Prob 10%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 edx ecx
..B5.24:                        # Preds ..B5.23
                                # Execution count [3.24e-01]: Infreq
        movl      %ecx, %eax                                    #153.5
        xorl      %r8d, %r8d                                    #153.5
        andl      $-8, %eax                                     #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx r8d
..B5.25:                        # Preds ..B5.25 ..B5.24
                                # Execution count [1.80e+00]: Infreq
        lea       (%rdx,%r8), %r9d                              #153.5
        addl      $8, %r8d                                      #153.5
        movslq    %r9d, %r9                                     #153.5
        vmovq     (%rsi,%r9), %xmm0                             #153.5
        vmovq     416(%rsp,%r9), %xmm1                          #153.5
        vpxor     %xmm1, %xmm0, %xmm2                           #153.5
        vmovq     %xmm2, (%r9,%rdi)                             #153.5
        cmpl      %eax, %r8d                                    #153.5
        jb        ..B5.25       # Prob 82%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx r8d
..B5.27:                        # Preds ..B5.25 ..B5.38
                                # Execution count [3.60e-01]: Infreq
        cmpl      %ecx, %eax                                    #153.5
        jae       ..B5.2        # Prob 10%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx
..B5.29:                        # Preds ..B5.27 ..B5.29
                                # Execution count [1.80e+00]: Infreq
        lea       (%rdx,%rax), %r8d                             #153.5
        incl      %eax                                          #153.5
        movslq    %r8d, %r8                                     #153.5
        movb      (%rsi,%r8), %r9b                              #153.5
        xorb      416(%rsp,%r8), %r9b                           #153.5
        movb      %r9b, (%r8,%rdi)                              #153.5
        cmpl      %ecx, %eax                                    #153.5
        jb        ..B5.29       # Prob 82%                      #153.5
        jmp       ..B5.2        # Prob 100%                     #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx
..B5.31:                        # Preds ..B5.15 ..B5.17
                                # Execution count [3.60e-01]: Infreq
        movl      %ecx, %edx                                    #153.5
        movl      $1, %r8d                                      #153.5
        xorl      %eax, %eax                                    #153.5
        shrl      $1, %edx                                      #153.5
        je        ..B5.35       # Prob 10%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx r8d
..B5.33:                        # Preds ..B5.31 ..B5.33
                                # Execution count [9.00e-01]: Infreq
        lea       (%rax,%rax), %r8d                             #153.5
        movslq    %r8d, %r8                                     #153.5
        lea       1(%rax,%rax), %r10d                           #153.5
        movslq    %r10d, %r10                                   #153.5
        incl      %eax                                          #153.5
        movb      (%r8,%rsi), %r9b                              #153.5
        xorb      416(%rsp,%r8), %r9b                           #153.5
        movb      %r9b, (%r8,%rdi)                              #153.5
        movb      (%r10,%rsi), %r11b                            #153.5
        xorb      416(%rsp,%r10), %r11b                         #153.5
        movb      %r11b, (%r10,%rdi)                            #153.5
        cmpl      %edx, %eax                                    #153.5
        jb        ..B5.33       # Prob 64%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx
..B5.34:                        # Preds ..B5.33
                                # Execution count [3.24e-01]: Infreq
        lea       1(%rax,%rax), %r8d                            #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 ecx r8d
..B5.35:                        # Preds ..B5.34 ..B5.31
                                # Execution count [3.60e-01]: Infreq
        decl      %r8d                                          #153.5
        cmpl      %ecx, %r8d                                    #153.5
        jae       ..B5.2        # Prob 10%                      #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 r8d
..B5.36:                        # Preds ..B5.35
                                # Execution count [3.24e-01]: Infreq
        movslq    %r8d, %r8                                     #153.5
        movb      (%r8,%rsi), %sil                              #153.5
        xorb      416(%rsp,%r8), %sil                           #153.5
        movb      %sil, (%r8,%rdi)                              #153.5
        jmp       ..B5.2        # Prob 100%                     #153.5
                                # LOE rbx r12 r13 r14 r15
..B5.37:                        # Preds ..B5.18
                                # Execution count [3.24e-02]: Infreq
        xorl      %edx, %edx                                    #153.5
        jmp       ..B5.22       # Prob 100%                     #153.5
                                # LOE rbx rsi rdi r12 r13 r14 r15 edx ecx
..B5.38:                        # Preds ..B5.23
                                # Execution count [3.24e-02]: Infreq
        xorl      %eax, %eax                                    #153.5
        jmp       ..B5.27       # Prob 100%                     #153.5
        .align    16,0x90
                                # LOE rbx rsi rdi r12 r13 r14 r15 eax edx ecx
	.cfi_endproc
# mark_end;
	.type	forro_decrypt_bytes,@function
	.size	forro_decrypt_bytes,.-forro_decrypt_bytes
..LNforro_decrypt_bytes.4:
	.data
# -- End  forro_decrypt_bytes
	.text
.L_2__routine_start_forro_keystream_bytes_5:
# -- Begin  forro_keystream_bytes
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_keystream_bytes
# --- forro_keystream_bytes(stream_ctx *, uint8_t *, uint32_t)
forro_keystream_bytes:
# parameter 1: %rdi
# parameter 2: %rsi
# parameter 3: %edx
..B6.1:                         # Preds ..B6.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_keystream_bytes.375:
..L376:
                                                        #157.1
        pushq     %rbp                                          #157.1
	.cfi_def_cfa_offset 16
        movq      %rsp, %rbp                                    #157.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
        andq      $-32, %rsp                                    #157.1
        pushq     %r12                                          #157.1
        pushq     %r13                                          #157.1
        pushq     %r14                                          #157.1
        subq      $456, %rsp                                    #157.1
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
        movl      %edx, %r14d                                   #157.1
        movq      %rsi, %r12                                    #157.1
        movq      %rdi, %r13                                    #157.1
        testl     %r14d, %r14d                                  #159.21
        jbe       ..B6.4        # Prob 50%                      #159.21
                                # LOE rbx r12 r13 r14 r15
..B6.2:                         # Preds ..B6.1
                                # Execution count [5.00e-03]
        cmpl      $96, %r14d                                    #159.5
        jbe       ..B6.16       # Prob 0%                       #159.5
                                # LOE rbx r12 r13 r14 r15
..B6.3:                         # Preds ..B6.2
                                # Execution count [1.00e+00]
        movq      %r12, %rdi                                    #159.5
        xorl      %esi, %esi                                    #159.5
        movq      %r14, %rdx                                    #159.5
        call      _intel_fast_memset@PLT                        #159.5
        jmp       ..B6.6        # Prob 100%                     #159.5
                                # LOE rbx r12 r13 r15 r14d
..B6.4:                         # Preds ..B6.1
                                # Execution count [9.95e-01]
        jne       ..B6.6        # Prob 72%                      #161.5
                                # LOE rbx r12 r13 r14 r15
..B6.5:                         # Preds ..B6.47 ..B6.53 ..B6.4 ..B6.32 ..B6.40
                                #       ..B6.45 ..B6.54
                                # Execution count [1.00e+00]
        vzeroupper                                              #162.1
        addq      $456, %rsp                                    #162.1
	.cfi_restore 14
        popq      %r14                                          #162.1
	.cfi_restore 13
        popq      %r13                                          #162.1
	.cfi_restore 12
        popq      %r12                                          #162.1
        movq      %rbp, %rsp                                    #162.1
        popq      %rbp                                          #162.1
	.cfi_def_cfa 7, 8
	.cfi_restore 6
        ret                                                     #162.1
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	.cfi_escape 0x10, 0x0c, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf8, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0d, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xf0, 0xff, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0e, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0xe8, 0xff, 0xff, 0xff, 0x22
                                # LOE
..B6.6:                         # Preds ..B6.27 ..B6.3 ..B6.25 ..B6.20 ..B6.4
                                #      
                                # Execution count [7.20e-01]
        movq      %r12, %rcx                                    #161.5
        movq      %r12, %rdx                                    #161.5
        xorl      %eax, %eax                                    #161.5
        movl      %r14d, 120(%rsp)                              #161.5[spill]
        movq      %rax, 112(%rsp)                               #161.5[spill]
        movq      %rdx, 96(%rsp)                                #161.5[spill]
        movq      %rcx, 88(%rsp)                                #161.5[spill]
        movq      %r13, 104(%rsp)                               #161.5[spill]
        movq      %r12, 80(%rsp)                                #161.5[spill]
        movq      %r15, 72(%rsp)                                #161.5[spill]
        movq      %rbx, 64(%rsp)                                #161.5[spill]
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
                                # LOE
..B6.7:                         # Preds ..B6.15 ..B6.6
                                # Execution count [3.60e+00]
        movq      104(%rsp), %rsi                               #161.5[spill]
        incq      112(%rsp)                                     #161.5[spill]
        movl      28(%rsi), %r14d                               #161.5
        movl      12(%rsi), %r10d                               #161.5
        movl      48(%rsi), %ebx                                #161.5
        addl      %r10d, %ebx                                   #161.5
        movl      8(%rsi), %r9d                                 #161.5
        movl      %r14d, 216(%rsp)                              #161.5[spill]
        movl      32(%rsi), %r14d                               #161.5
        xorl      %ebx, %r14d                                   #161.5
        movl      %r9d, 208(%rsp)                               #161.5[spill]
        movl      16(%rsi), %r13d                               #161.5
        vmovdqu   (%rsi), %ymm1                                 #161.5
        addl      %r14d, %r13d                                  #161.5
        vmovdqu   32(%rsi), %ymm0                               #161.5
        vmovdqu   %ymm1, (%rsp)                                 #161.5
        vmovdqu   %ymm0, 32(%rsp)                               #161.5
        movl      (%rsi), %r8d                                  #161.5
        movl      20(%rsi), %r12d                               #161.5
        movl      4(%rsi), %edi                                 #161.5
        movl      24(%rsi), %edx                                #161.5
        movl      52(%rsi), %r15d                               #161.5
        movl      36(%rsi), %r11d                               #161.5
        movl      56(%rsi), %ecx                                #161.5
        movl      40(%rsi), %r9d                                #161.5
        movl      60(%rsi), %eax                                #161.5
        movl      44(%rsi), %esi                                #161.5
        movl      %esi, 224(%rsp)                               #161.5[spill]
        movl      %r13d, %esi                                   #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r13d                                    #161.5
        orl       %r13d, %esi                                   #161.5
        addl      %esi, %r8d                                    #161.5
        xorl      %r8d, %r10d                                   #161.5
        addl      %r10d, %ebx                                   #161.5
        movl      %ebx, %r13d                                   #161.5
        shll      $11, %r13d                                    #161.5
        shrl      $21, %ebx                                     #161.5
        orl       %ebx, %r13d                                   #161.5
        addl      %r13d, %r14d                                  #161.5
        xorl      %r14d, %esi                                   #161.5
        movl      %esi, 232(%rsp)                               #161.5[spill]
        lea       (%rsi,%r8), %ebx                              #161.5
        addl      %esi, %r8d                                    #161.5
        shll      $7, %ebx                                      #161.5
        shrl      $25, %r8d                                     #161.5
        orl       %r8d, %ebx                                    #161.5
        addl      %ebx, %r15d                                   #161.5
        xorl      %r15d, %r11d                                  #161.5
        addl      %r11d, %r12d                                  #161.5
        movl      %r12d, %esi                                   #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %esi                                   #161.5
        addl      %esi, %edi                                    #161.5
        xorl      %edi, %ebx                                    #161.5
        lea       (%rbx,%r15), %r8d                             #161.5
        addl      %ebx, %r15d                                   #161.5
        shll      $11, %r8d                                     #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %r8d                                   #161.5
        addl      %r8d, %r11d                                   #161.5
        xorl      %r11d, %esi                                   #161.5
        movl      %r11d, 240(%rsp)                              #161.5[spill]
        movl      216(%rsp), %r15d                              #161.5[spill]
        lea       (%rsi,%rdi), %r11d                            #161.5
        addl      %esi, %edi                                    #161.5
        shll      $7, %r11d                                     #161.5
        shrl      $25, %edi                                     #161.5
        orl       %edi, %r11d                                   #161.5
        addl      %r11d, %ecx                                   #161.5
        xorl      %ecx, %r9d                                    #161.5
        addl      %r9d, %edx                                    #161.5
        movl      %edx, %r12d                                   #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %r12d                                   #161.5
        movl      208(%rsp), %edx                               #161.5[spill]
        addl      %r12d, %edx                                   #161.5
        xorl      %edx, %r11d                                   #161.5
        lea       (%r11,%rcx), %edi                             #161.5
        addl      %r11d, %ecx                                   #161.5
        shll      $11, %edi                                     #161.5
        shrl      $21, %ecx                                     #161.5
        orl       %ecx, %edi                                    #161.5
        addl      %edi, %r9d                                    #161.5
        xorl      %r9d, %r12d                                   #161.5
        movl      %edi, 248(%rsp)                               #161.5[spill]
        movl      224(%rsp), %ecx                               #161.5[spill]
        lea       (%r12,%rdx), %edi                             #161.5
        addl      %r12d, %edx                                   #161.5
        shll      $7, %edi                                      #161.5
        shrl      $25, %edx                                     #161.5
        orl       %edx, %edi                                    #161.5
        addl      %edi, %eax                                    #161.5
        xorl      %eax, %ecx                                    #161.5
        addl      %ecx, %r15d                                   #161.5
        movl      %r15d, %edx                                   #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %r15d                                    #161.5
        orl       %r15d, %edx                                   #161.5
        addl      %edx, %r10d                                   #161.5
        xorl      %r10d, %edi                                   #161.5
        lea       (%rdi,%rax), %r15d                            #161.5
        addl      %edi, %eax                                    #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %eax                                     #161.5
        orl       %eax, %r15d                                   #161.5
        addl      %r15d, %ecx                                   #161.5
        xorl      %ecx, %edx                                    #161.5
        addl      %edx, %r10d                                   #161.5
        movl      %r10d, %eax                                   #161.5
        shll      $7, %eax                                      #161.5
        shrl      $25, %r10d                                    #161.5
        orl       %r10d, %eax                                   #161.5
        addl      %eax, %r15d                                   #161.5
        xorl      %r15d, %r9d                                   #161.5
        lea       (%r9,%rsi), %r10d                             #161.5
        addl      %r9d, %esi                                    #161.5
        shll      $19, %r10d                                    #161.5
        shrl      $13, %esi                                     #161.5
        orl       %esi, %r10d                                   #161.5
        addl      %r10d, %ebx                                   #161.5
        xorl      %ebx, %eax                                    #161.5
        addl      %eax, %r15d                                   #161.5
        movl      %r15d, %esi                                   #161.5
        shll      $11, %esi                                     #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %esi                                   #161.5
        addl      %esi, %r9d                                    #161.5
        xorl      %r9d, %r10d                                   #161.5
        movl      %esi, 256(%rsp)                               #161.5[spill]
        lea       (%rbx,%r10), %esi                             #161.5
        addl      %r10d, %ebx                                   #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %ebx                                     #161.5
        orl       %ebx, %esi                                    #161.5
        addl      %esi, %r13d                                   #161.5
        xorl      %r13d, %ecx                                   #161.5
        lea       (%rcx,%r12), %ebx                             #161.5
        addl      %ecx, %r12d                                   #161.5
        shll      $19, %ebx                                     #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %ebx                                   #161.5
        addl      %ebx, %r11d                                   #161.5
        xorl      %r11d, %esi                                   #161.5
        lea       (%r13,%rsi), %r12d                            #161.5
        addl      %esi, %r13d                                   #161.5
        shll      $11, %r12d                                    #161.5
        shrl      $21, %r13d                                    #161.5
        orl       %r13d, %r12d                                  #161.5
        addl      %r12d, %ecx                                   #161.5
        xorl      %ecx, %ebx                                    #161.5
        movl      %ecx, 224(%rsp)                               #161.5[spill]
        lea       (%r11,%rbx), %ecx                             #161.5
        addl      %ebx, %r11d                                   #161.5
        shll      $7, %ecx                                      #161.5
        shrl      $25, %r11d                                    #161.5
        orl       %r11d, %ecx                                   #161.5
        addl      %ecx, %r8d                                    #161.5
        xorl      %r8d, %r14d                                   #161.5
        lea       (%r14,%rdx), %r13d                            #161.5
        addl      %r14d, %edx                                   #161.5
        shll      $19, %r13d                                    #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %r13d                                   #161.5
        addl      %r13d, %edi                                   #161.5
        xorl      %edi, %ecx                                    #161.5
        movl      240(%rsp), %edx                               #161.5[spill]
        lea       (%r8,%rcx), %r11d                             #161.5
        addl      %ecx, %r8d                                    #161.5
        shll      $11, %r11d                                    #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %r11d                                   #161.5
        addl      %r11d, %r14d                                  #161.5
        xorl      %r14d, %r13d                                  #161.5
        movl      248(%rsp), %r8d                               #161.5[spill]
        movl      %r13d, 264(%rsp)                              #161.5[spill]
        lea       (%rdi,%r13), %r15d                            #161.5
        addl      %r13d, %edi                                   #161.5
        shll      $7, %r15d                                     #161.5
        shrl      $25, %edi                                     #161.5
        orl       %edi, %r15d                                   #161.5
        addl      %r15d, %r8d                                   #161.5
        xorl      %r8d, %edx                                    #161.5
        movl      232(%rsp), %r13d                              #161.5[spill]
        lea       (%rdx,%r13), %edi                             #161.5
        addl      %edx, %r13d                                   #161.5
        shll      $19, %edi                                     #161.5
        shrl      $13, %r13d                                    #161.5
        orl       %r13d, %edi                                   #161.5
        addl      %edi, %eax                                    #161.5
        xorl      %eax, %r15d                                   #161.5
        lea       (%r8,%r15), %r13d                             #161.5
        addl      %r15d, %r8d                                   #161.5
        shll      $11, %r13d                                    #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %r13d                                   #161.5
        addl      %r13d, %edx                                   #161.5
        xorl      %edx, %edi                                    #161.5
        lea       (%rax,%rdi), %r8d                             #161.5
        addl      %edi, %eax                                    #161.5
        shll      $7, %r8d                                      #161.5
        shrl      $25, %eax                                     #161.5
        orl       %eax, %r8d                                    #161.5
        addl      %r8d, %r12d                                   #161.5
        xorl      %r12d, %r14d                                  #161.5
        addl      %r14d, %edi                                   #161.5
        movl      %edi, %eax                                    #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %edi                                     #161.5
        orl       %edi, %eax                                    #161.5
        addl      %eax, %esi                                    #161.5
        xorl      %esi, %r8d                                    #161.5
        addl      %r8d, %r12d                                   #161.5
        movl      %r12d, %edi                                   #161.5
        shll      $11, %edi                                     #161.5
        shrl      $21, %r12d                                    #161.5
        orl       %r12d, %edi                                   #161.5
        addl      %edi, %r14d                                   #161.5
        xorl      %r14d, %eax                                   #161.5
        movl      %eax, 272(%rsp)                               #161.5[spill]
        lea       (%rax,%rsi), %r12d                            #161.5
        addl      %eax, %esi                                    #161.5
        shll      $7, %r12d                                     #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %r12d                                   #161.5
        addl      %r12d, %r11d                                  #161.5
        xorl      %r11d, %edx                                   #161.5
        addl      %edx, %r10d                                   #161.5
        movl      %r10d, %esi                                   #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r10d                                    #161.5
        orl       %r10d, %esi                                   #161.5
        addl      %esi, %ecx                                    #161.5
        xorl      %ecx, %r12d                                   #161.5
        movl      256(%rsp), %eax                               #161.5[spill]
        lea       (%r12,%r11), %r10d                            #161.5
        addl      %r12d, %r11d                                  #161.5
        shll      $11, %r10d                                    #161.5
        shrl      $21, %r11d                                    #161.5
        orl       %r11d, %r10d                                  #161.5
        addl      %r10d, %edx                                   #161.5
        xorl      %edx, %esi                                    #161.5
        movl      %edx, 240(%rsp)                               #161.5[spill]
        lea       (%rsi,%rcx), %r11d                            #161.5
        addl      %esi, %ecx                                    #161.5
        shll      $7, %r11d                                     #161.5
        shrl      $25, %ecx                                     #161.5
        orl       %ecx, %r11d                                   #161.5
        addl      %r11d, %r13d                                  #161.5
        xorl      %r13d, %r9d                                   #161.5
        addl      %r9d, %ebx                                    #161.5
        movl      %ebx, %edx                                    #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %ebx                                     #161.5
        orl       %ebx, %edx                                    #161.5
        addl      %edx, %r15d                                   #161.5
        xorl      %r15d, %r11d                                  #161.5
        lea       (%r11,%r13), %ecx                             #161.5
        addl      %r11d, %r13d                                  #161.5
        shll      $11, %ecx                                     #161.5
        shrl      $21, %r13d                                    #161.5
        orl       %r13d, %ecx                                   #161.5
        addl      %ecx, %r9d                                    #161.5
        xorl      %r9d, %edx                                    #161.5
        movl      %ecx, 280(%rsp)                               #161.5[spill]
        movl      224(%rsp), %ecx                               #161.5[spill]
        lea       (%rdx,%r15), %ebx                             #161.5
        addl      %edx, %r15d                                   #161.5
        shll      $7, %ebx                                      #161.5
        shrl      $25, %r15d                                    #161.5
        orl       %r15d, %ebx                                   #161.5
        addl      %ebx, %eax                                    #161.5
        xorl      %eax, %ecx                                    #161.5
        movl      264(%rsp), %r15d                              #161.5[spill]
        addl      %ecx, %r15d                                   #161.5
        movl      %r15d, %r13d                                  #161.5
        shll      $19, %r13d                                    #161.5
        shrl      $13, %r15d                                    #161.5
        orl       %r15d, %r13d                                  #161.5
        addl      %r13d, %r8d                                   #161.5
        xorl      %r8d, %ebx                                    #161.5
        lea       (%rbx,%rax), %r15d                            #161.5
        addl      %ebx, %eax                                    #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %eax                                     #161.5
        orl       %eax, %r15d                                   #161.5
        addl      %r15d, %ecx                                   #161.5
        xorl      %ecx, %r13d                                   #161.5
        addl      %r13d, %r8d                                   #161.5
        movl      %r8d, %eax                                    #161.5
        shll      $7, %eax                                      #161.5
        shrl      $25, %r8d                                     #161.5
        orl       %r8d, %eax                                    #161.5
        addl      %eax, %r15d                                   #161.5
        xorl      %r15d, %r9d                                   #161.5
        lea       (%r9,%rsi), %r8d                              #161.5
        addl      %r9d, %esi                                    #161.5
        shll      $19, %r8d                                     #161.5
        shrl      $13, %esi                                     #161.5
        orl       %esi, %r8d                                    #161.5
        addl      %r8d, %r12d                                   #161.5
        xorl      %r12d, %eax                                   #161.5
        addl      %eax, %r15d                                   #161.5
        movl      %r15d, %esi                                   #161.5
        shll      $11, %esi                                     #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %esi                                   #161.5
        addl      %esi, %r9d                                    #161.5
        xorl      %r9d, %r8d                                    #161.5
        movl      %esi, 136(%rsp)                               #161.5[spill]
        lea       (%r12,%r8), %esi                              #161.5
        addl      %r8d, %r12d                                   #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %r12d                                    #161.5
        orl       %r12d, %esi                                   #161.5
        addl      %esi, %edi                                    #161.5
        xorl      %edi, %ecx                                    #161.5
        lea       (%rcx,%rdx), %r12d                            #161.5
        addl      %ecx, %edx                                    #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %r12d                                   #161.5
        addl      %r12d, %r11d                                  #161.5
        xorl      %r11d, %esi                                   #161.5
        lea       (%rdi,%rsi), %r15d                            #161.5
        addl      %esi, %edi                                    #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %edi                                     #161.5
        orl       %edi, %r15d                                   #161.5
        addl      %r15d, %ecx                                   #161.5
        xorl      %ecx, %r12d                                   #161.5
        movl      %r12d, 200(%rsp)                              #161.5[spill]
        lea       (%r11,%r12), %edi                             #161.5
        addl      %r12d, %r11d                                  #161.5
        shll      $7, %edi                                      #161.5
        shrl      $25, %r11d                                    #161.5
        orl       %r11d, %edi                                   #161.5
        addl      %edi, %r10d                                   #161.5
        xorl      %r10d, %r14d                                  #161.5
        movl      280(%rsp), %r11d                              #161.5[spill]
        lea       (%r14,%r13), %r12d                            #161.5
        addl      %r14d, %r13d                                  #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %r13d                                    #161.5
        orl       %r13d, %r12d                                  #161.5
        addl      %r12d, %ebx                                   #161.5
        xorl      %ebx, %edi                                    #161.5
        lea       (%r10,%rdi), %r13d                            #161.5
        addl      %edi, %r10d                                   #161.5
        shll      $11, %r13d                                    #161.5
        shrl      $21, %r10d                                    #161.5
        orl       %r10d, %r13d                                  #161.5
        addl      %r13d, %r14d                                  #161.5
        xorl      %r14d, %r12d                                  #161.5
        movl      %r12d, 288(%rsp)                              #161.5[spill]
        lea       (%rbx,%r12), %r10d                            #161.5
        addl      %r12d, %ebx                                   #161.5
        shll      $7, %r10d                                     #161.5
        shrl      $25, %ebx                                     #161.5
        orl       %ebx, %r10d                                   #161.5
        addl      %r10d, %r11d                                  #161.5
        movl      240(%rsp), %ebx                               #161.5[spill]
        xorl      %r11d, %ebx                                   #161.5
        movl      272(%rsp), %r12d                              #161.5[spill]
        lea       (%rbx,%r12), %edx                             #161.5
        addl      %ebx, %r12d                                   #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %edx                                   #161.5
        addl      %edx, %eax                                    #161.5
        xorl      %eax, %r10d                                   #161.5
        lea       (%r11,%r10), %r12d                            #161.5
        addl      %r10d, %r11d                                  #161.5
        shll      $11, %r12d                                    #161.5
        shrl      $21, %r11d                                    #161.5
        orl       %r11d, %r12d                                  #161.5
        addl      %r12d, %ebx                                   #161.5
        xorl      %ebx, %edx                                    #161.5
        lea       (%rax,%rdx), %r11d                            #161.5
        addl      %edx, %eax                                    #161.5
        shll      $7, %r11d                                     #161.5
        shrl      $25, %eax                                     #161.5
        orl       %eax, %r11d                                   #161.5
        addl      %r11d, %r15d                                  #161.5
        xorl      %r15d, %r14d                                  #161.5
        addl      %r14d, %edx                                   #161.5
        movl      %edx, %eax                                    #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %eax                                    #161.5
        addl      %eax, %esi                                    #161.5
        xorl      %esi, %r11d                                   #161.5
        addl      %r11d, %r15d                                  #161.5
        movl      %r15d, %edx                                   #161.5
        shll      $11, %edx                                     #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %edx                                   #161.5
        addl      %edx, %r14d                                   #161.5
        xorl      %r14d, %eax                                   #161.5
        movl      %edx, 168(%rsp)                               #161.5[spill]
        movl      %eax, 152(%rsp)                               #161.5[spill]
        lea       (%rax,%rsi), %edx                             #161.5
        addl      %eax, %esi                                    #161.5
        shll      $7, %edx                                      #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %edx                                    #161.5
        addl      %edx, %r13d                                   #161.5
        xorl      %r13d, %ebx                                   #161.5
        addl      %ebx, %r8d                                    #161.5
        movl      %r8d, %esi                                    #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r8d                                     #161.5
        orl       %r8d, %esi                                    #161.5
        addl      %esi, %edi                                    #161.5
        xorl      %edi, %edx                                    #161.5
        movl      288(%rsp), %r8d                               #161.5[spill]
        lea       (%rdx,%r13), %eax                             #161.5
        addl      %edx, %r13d                                   #161.5
        shll      $11, %eax                                     #161.5
        shrl      $21, %r13d                                    #161.5
        orl       %r13d, %eax                                   #161.5
        addl      %eax, %ebx                                    #161.5
        xorl      %ebx, %esi                                    #161.5
        movl      %eax, 176(%rsp)                               #161.5[spill]
        lea       (%rsi,%rdi), %eax                             #161.5
        addl      %esi, %edi                                    #161.5
        shll      $7, %eax                                      #161.5
        shrl      $25, %edi                                     #161.5
                                # LOE eax edx ecx ebx esi edi r8d r9d r10d r11d r12d r14d ymm0 ymm1
..B6.60:                        # Preds ..B6.7
                                # Execution count [3.60e+00]
        orl       %edi, %eax                                    #161.5
        addl      %eax, %r12d                                   #161.5
        xorl      %r12d, %r9d                                   #161.5
        movl      200(%rsp), %edi                               #161.5[spill]
        addl      %r9d, %edi                                    #161.5
        movl      %edi, %r13d                                   #161.5
        shll      $19, %r13d                                    #161.5
        shrl      $13, %edi                                     #161.5
        orl       %edi, %r13d                                   #161.5
        addl      %r13d, %r10d                                  #161.5
        xorl      %r10d, %eax                                   #161.5
        lea       (%rax,%r12), %r15d                            #161.5
        addl      %eax, %r12d                                   #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %r12d                                    #161.5
        orl       %r12d, %r15d                                  #161.5
        addl      %r15d, %r9d                                   #161.5
        xorl      %r9d, %r13d                                   #161.5
        movl      136(%rsp), %r12d                              #161.5[spill]
        lea       (%r13,%r10), %edi                             #161.5
        addl      %r13d, %r10d                                  #161.5
        shll      $7, %edi                                      #161.5
        shrl      $25, %r10d                                    #161.5
        orl       %r10d, %edi                                   #161.5
        addl      %edi, %r12d                                   #161.5
        xorl      %r12d, %ecx                                   #161.5
        addl      %ecx, %r8d                                    #161.5
        movl      %r8d, %r10d                                   #161.5
        shll      $19, %r10d                                    #161.5
        shrl      $13, %r8d                                     #161.5
        orl       %r8d, %r10d                                   #161.5
        addl      %r10d, %r11d                                  #161.5
        xorl      %r11d, %edi                                   #161.5
        lea       (%rdi,%r12), %r8d                             #161.5
        addl      %edi, %r12d                                   #161.5
        shll      $11, %r8d                                     #161.5
        shrl      $21, %r12d                                    #161.5
        orl       %r12d, %r8d                                   #161.5
        addl      %r8d, %ecx                                    #161.5
        xorl      %ecx, %r10d                                   #161.5
        addl      %r10d, %r11d                                  #161.5
        movl      %r11d, %r12d                                  #161.5
        shll      $7, %r12d                                     #161.5
        shrl      $25, %r11d                                    #161.5
        orl       %r11d, %r12d                                  #161.5
        addl      %r12d, %r8d                                   #161.5
        xorl      %r8d, %r9d                                    #161.5
        lea       (%rsi,%r9), %r11d                             #161.5
        addl      %r9d, %esi                                    #161.5
        shll      $19, %r11d                                    #161.5
        shrl      $13, %esi                                     #161.5
        orl       %esi, %r11d                                   #161.5
        addl      %r11d, %edx                                   #161.5
        xorl      %edx, %r12d                                   #161.5
        addl      %r12d, %r8d                                   #161.5
        movl      %r8d, %esi                                    #161.5
        shll      $11, %esi                                     #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %esi                                    #161.5
        addl      %esi, %r9d                                    #161.5
        xorl      %r9d, %r11d                                   #161.5
        movl      %esi, 296(%rsp)                               #161.5[spill]
        movl      168(%rsp), %esi                               #161.5[spill]
        lea       (%rdx,%r11), %r8d                             #161.5
        addl      %r11d, %edx                                   #161.5
        shll      $7, %r8d                                      #161.5
        shrl      $25, %edx                                     #161.5
        orl       %edx, %r8d                                    #161.5
        addl      %r8d, %esi                                    #161.5
        xorl      %esi, %ecx                                    #161.5
        lea       (%rcx,%r13), %edx                             #161.5
        addl      %ecx, %r13d                                   #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %r13d                                    #161.5
        orl       %r13d, %edx                                   #161.5
        addl      %edx, %eax                                    #161.5
        xorl      %eax, %r8d                                    #161.5
        lea       (%rsi,%r8), %r13d                             #161.5
        addl      %r8d, %esi                                    #161.5
        shll      $11, %r13d                                    #161.5
        shrl      $21, %esi                                     #161.5
        orl       %esi, %r13d                                   #161.5
        addl      %r13d, %ecx                                   #161.5
        xorl      %ecx, %edx                                    #161.5
        movl      %ecx, 224(%rsp)                               #161.5[spill]
        movl      176(%rsp), %ecx                               #161.5[spill]
        lea       (%rax,%rdx), %esi                             #161.5
        addl      %edx, %eax                                    #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %eax                                     #161.5
        orl       %eax, %esi                                    #161.5
        addl      %esi, %ecx                                    #161.5
        xorl      %ecx, %r14d                                   #161.5
        lea       (%r14,%r10), %eax                             #161.5
        addl      %r14d, %r10d                                  #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %r10d                                    #161.5
        orl       %r10d, %eax                                   #161.5
        addl      %eax, %edi                                    #161.5
        xorl      %edi, %esi                                    #161.5
        lea       (%rcx,%rsi), %r10d                            #161.5
        addl      %esi, %ecx                                    #161.5
        shll      $11, %r10d                                    #161.5
        shrl      $21, %ecx                                     #161.5
        orl       %ecx, %r10d                                   #161.5
        addl      %r10d, %r14d                                  #161.5
        xorl      %r14d, %eax                                   #161.5
        movl      %eax, 304(%rsp)                               #161.5[spill]
        lea       (%rdi,%rax), %ecx                             #161.5
        addl      %eax, %edi                                    #161.5
        shll      $7, %ecx                                      #161.5
        shrl      $25, %edi                                     #161.5
        orl       %edi, %ecx                                    #161.5
        addl      %ecx, %r15d                                   #161.5
        xorl      %r15d, %ebx                                   #161.5
        movl      152(%rsp), %eax                               #161.5[spill]
        lea       (%rax,%rbx), %edi                             #161.5
        addl      %ebx, %eax                                    #161.5
        shll      $19, %edi                                     #161.5
        shrl      $13, %eax                                     #161.5
        orl       %eax, %edi                                    #161.5
        addl      %edi, %r12d                                   #161.5
        xorl      %r12d, %ecx                                   #161.5
        lea       (%r15,%rcx), %eax                             #161.5
        addl      %ecx, %r15d                                   #161.5
        shll      $11, %eax                                     #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %eax                                   #161.5
        addl      %eax, %ebx                                    #161.5
        xorl      %ebx, %edi                                    #161.5
        lea       (%r12,%rdi), %r15d                            #161.5
        addl      %edi, %r12d                                   #161.5
        shll      $7, %r15d                                     #161.5
        shrl      $25, %r12d                                    #161.5
        orl       %r12d, %r15d                                  #161.5
        addl      %r15d, %r13d                                  #161.5
        xorl      %r13d, %r14d                                  #161.5
        addl      %r14d, %edi                                   #161.5
        movl      %edi, %r12d                                   #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %edi                                     #161.5
        orl       %edi, %r12d                                   #161.5
        addl      %r12d, %r8d                                   #161.5
        xorl      %r8d, %r15d                                   #161.5
        addl      %r15d, %r13d                                  #161.5
        movl      %r13d, %edi                                   #161.5
        shll      $11, %edi                                     #161.5
        shrl      $21, %r13d                                    #161.5
        orl       %r13d, %edi                                   #161.5
        addl      %edi, %r14d                                   #161.5
        xorl      %r14d, %r12d                                  #161.5
        movl      %r12d, 312(%rsp)                              #161.5[spill]
        lea       (%r12,%r8), %r13d                             #161.5
        addl      %r12d, %r8d                                   #161.5
        shll      $7, %r13d                                     #161.5
        shrl      $25, %r8d                                     #161.5
        orl       %r8d, %r13d                                   #161.5
        addl      %r13d, %r10d                                  #161.5
        xorl      %r10d, %ebx                                   #161.5
        addl      %ebx, %r11d                                   #161.5
        movl      %r11d, %r12d                                  #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %r11d                                    #161.5
        orl       %r11d, %r12d                                  #161.5
        addl      %r12d, %esi                                   #161.5
        xorl      %esi, %r13d                                   #161.5
        lea       (%r13,%r10), %r11d                            #161.5
        addl      %r13d, %r10d                                  #161.5
        shll      $11, %r11d                                    #161.5
        shrl      $21, %r10d                                    #161.5
        orl       %r10d, %r11d                                  #161.5
        addl      %r11d, %ebx                                   #161.5
        xorl      %ebx, %r12d                                   #161.5
        movl      %ebx, 240(%rsp)                               #161.5[spill]
        lea       (%r12,%rsi), %r10d                            #161.5
        addl      %r12d, %esi                                   #161.5
        shll      $7, %r10d                                     #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %r10d                                   #161.5
        addl      %r10d, %eax                                   #161.5
        xorl      %eax, %r9d                                    #161.5
        addl      %r9d, %edx                                    #161.5
        movl      %edx, %r8d                                    #161.5
        shll      $19, %r8d                                     #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %r8d                                    #161.5
        addl      %r8d, %ecx                                    #161.5
        xorl      %ecx, %r10d                                   #161.5
        lea       (%r10,%rax), %ebx                             #161.5
        addl      %r10d, %eax                                   #161.5
        shll      $11, %ebx                                     #161.5
        shrl      $21, %eax                                     #161.5
        orl       %eax, %ebx                                    #161.5
        addl      %ebx, %r9d                                    #161.5
        xorl      %r9d, %r8d                                    #161.5
        movl      224(%rsp), %eax                               #161.5[spill]
        movl      %ebx, 320(%rsp)                               #161.5[spill]
        movl      304(%rsp), %ebx                               #161.5[spill]
        lea       (%r8,%rcx), %esi                              #161.5
        addl      %r8d, %ecx                                    #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %ecx                                     #161.5
        orl       %ecx, %esi                                    #161.5
        movl      296(%rsp), %ecx                               #161.5[spill]
        addl      %esi, %ecx                                    #161.5
        xorl      %ecx, %eax                                    #161.5
        addl      %eax, %ebx                                    #161.5
        movl      %ebx, %edx                                    #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %ebx                                     #161.5
        orl       %ebx, %edx                                    #161.5
        addl      %edx, %r15d                                   #161.5
        xorl      %r15d, %esi                                   #161.5
        lea       (%rsi,%rcx), %ebx                             #161.5
        addl      %esi, %ecx                                    #161.5
        shll      $11, %ebx                                     #161.5
        shrl      $21, %ecx                                     #161.5
        orl       %ecx, %ebx                                    #161.5
        addl      %ebx, %eax                                    #161.5
        xorl      %eax, %edx                                    #161.5
        addl      %edx, %r15d                                   #161.5
        movl      %r15d, %ecx                                   #161.5
        shll      $7, %ecx                                      #161.5
        shrl      $25, %r15d                                    #161.5
        orl       %r15d, %ecx                                   #161.5
        addl      %ecx, %ebx                                    #161.5
        xorl      %ebx, %r9d                                    #161.5
        lea       (%r9,%r12), %r15d                             #161.5
        addl      %r9d, %r12d                                   #161.5
        shll      $19, %r15d                                    #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %r15d                                  #161.5
        addl      %r15d, %r13d                                  #161.5
        xorl      %r13d, %ecx                                   #161.5
        addl      %ecx, %ebx                                    #161.5
        movl      %ebx, %r12d                                   #161.5
        shll      $11, %r12d                                    #161.5
        shrl      $21, %ebx                                     #161.5
        orl       %ebx, %r12d                                   #161.5
        addl      %r12d, %r9d                                   #161.5
        xorl      %r9d, %r15d                                   #161.5
        movl      %r12d, 328(%rsp)                              #161.5[spill]
        movl      240(%rsp), %ebx                               #161.5[spill]
        lea       (%r13,%r15), %r12d                            #161.5
        addl      %r15d, %r13d                                  #161.5
        shll      $7, %r12d                                     #161.5
        shrl      $25, %r13d                                    #161.5
        orl       %r13d, %r12d                                  #161.5
        addl      %r12d, %edi                                   #161.5
        xorl      %edi, %eax                                    #161.5
        lea       (%rax,%r8), %r13d                             #161.5
        addl      %eax, %r8d                                    #161.5
        shll      $19, %r13d                                    #161.5
        shrl      $13, %r8d                                     #161.5
        orl       %r8d, %r13d                                   #161.5
        addl      %r13d, %r10d                                  #161.5
        xorl      %r10d, %r12d                                  #161.5
        lea       (%rdi,%r12), %r8d                             #161.5
        addl      %r12d, %edi                                   #161.5
        shll      $11, %r8d                                     #161.5
        shrl      $21, %edi                                     #161.5
        orl       %edi, %r8d                                    #161.5
        addl      %r8d, %eax                                    #161.5
        xorl      %eax, %r13d                                   #161.5
        movl      %eax, 224(%rsp)                               #161.5[spill]
        lea       (%r10,%r13), %edi                             #161.5
        addl      %r13d, %r10d                                  #161.5
        shll      $7, %edi                                      #161.5
        shrl      $25, %r10d                                    #161.5
        orl       %r10d, %edi                                   #161.5
        addl      %edi, %r11d                                   #161.5
        xorl      %r11d, %r14d                                  #161.5
        lea       (%r14,%rdx), %eax                             #161.5
        addl      %r14d, %edx                                   #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %eax                                    #161.5
        addl      %eax, %esi                                    #161.5
        xorl      %esi, %edi                                    #161.5
        lea       (%r11,%rdi), %r10d                            #161.5
        addl      %edi, %r11d                                   #161.5
        shll      $11, %r10d                                    #161.5
        shrl      $21, %r11d                                    #161.5
        orl       %r11d, %r10d                                  #161.5
        addl      %r10d, %r14d                                  #161.5
        xorl      %r14d, %eax                                   #161.5
        movl      320(%rsp), %r11d                              #161.5[spill]
        movl      %eax, 336(%rsp)                               #161.5[spill]
        lea       (%rsi,%rax), %edx                             #161.5
        addl      %eax, %esi                                    #161.5
        shll      $7, %edx                                      #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %edx                                    #161.5
        addl      %edx, %r11d                                   #161.5
        xorl      %r11d, %ebx                                   #161.5
        movl      312(%rsp), %esi                               #161.5[spill]
        lea       (%rbx,%rsi), %eax                             #161.5
        addl      %ebx, %esi                                    #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %esi                                     #161.5
        orl       %esi, %eax                                    #161.5
        addl      %eax, %ecx                                    #161.5
        xorl      %ecx, %edx                                    #161.5
        lea       (%r11,%rdx), %esi                             #161.5
        addl      %edx, %r11d                                   #161.5
        shll      $11, %esi                                     #161.5
        shrl      $21, %r11d                                    #161.5
        orl       %r11d, %esi                                   #161.5
        addl      %esi, %ebx                                    #161.5
        xorl      %ebx, %eax                                    #161.5
        lea       (%rcx,%rax), %r11d                            #161.5
        addl      %eax, %ecx                                    #161.5
        shll      $7, %r11d                                     #161.5
        shrl      $25, %ecx                                     #161.5
        orl       %ecx, %r11d                                   #161.5
        addl      %r11d, %r8d                                   #161.5
        xorl      %r8d, %r14d                                   #161.5
        addl      %r14d, %eax                                   #161.5
        movl      %eax, %ecx                                    #161.5
        shll      $19, %ecx                                     #161.5
        shrl      $13, %eax                                     #161.5
        orl       %eax, %ecx                                    #161.5
        addl      %ecx, %r12d                                   #161.5
        xorl      %r12d, %r11d                                  #161.5
        addl      %r11d, %r8d                                   #161.5
        movl      %r8d, %eax                                    #161.5
        shll      $11, %eax                                     #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %eax                                    #161.5
        addl      %eax, %r14d                                   #161.5
        xorl      %r14d, %ecx                                   #161.5
        movl      %ecx, 144(%rsp)                               #161.5[spill]
        movl      %eax, 160(%rsp)                               #161.5[spill]
        lea       (%rcx,%r12), %r8d                             #161.5
        addl      %ecx, %r12d                                   #161.5
        shll      $7, %r8d                                      #161.5
        shrl      $25, %r12d                                    #161.5
        orl       %r12d, %r8d                                   #161.5
        addl      %r8d, %r10d                                   #161.5
        xorl      %r10d, %ebx                                   #161.5
        addl      %ebx, %r15d                                   #161.5
        movl      %r15d, %r12d                                  #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %r15d                                    #161.5
        orl       %r15d, %r12d                                  #161.5
        addl      %r12d, %edi                                   #161.5
        xorl      %edi, %r8d                                    #161.5
        lea       (%r8,%r10), %ecx                              #161.5
        addl      %r8d, %r10d                                   #161.5
        shll      $11, %ecx                                     #161.5
        shrl      $21, %r10d                                    #161.5
        orl       %r10d, %ecx                                   #161.5
        addl      %ecx, %ebx                                    #161.5
        xorl      %ebx, %r12d                                   #161.5
        movl      %ecx, 184(%rsp)                               #161.5[spill]
        movl      224(%rsp), %ecx                               #161.5[spill]
        lea       (%r12,%rdi), %r10d                            #161.5
        addl      %r12d, %edi                                   #161.5
        shll      $7, %r10d                                     #161.5
        shrl      $25, %edi                                     #161.5
        orl       %edi, %r10d                                   #161.5
        addl      %r10d, %esi                                   #161.5
        xorl      %esi, %r9d                                    #161.5
        addl      %r9d, %r13d                                   #161.5
        movl      %r13d, %eax                                   #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %r13d                                    #161.5
        orl       %r13d, %eax                                   #161.5
        addl      %eax, %edx                                    #161.5
        xorl      %edx, %r10d                                   #161.5
        lea       (%r10,%rsi), %r13d                            #161.5
        addl      %r10d, %esi                                   #161.5
        shll      $11, %r13d                                    #161.5
        shrl      $21, %esi                                     #161.5
        orl       %esi, %r13d                                   #161.5
        addl      %r13d, %r9d                                   #161.5
        xorl      %r9d, %eax                                    #161.5
        movl      %r13d, 192(%rsp)                              #161.5[spill]
        movl      328(%rsp), %esi                               #161.5[spill]
        lea       (%rax,%rdx), %r13d                            #161.5
        addl      %eax, %edx                                    #161.5
        shll      $7, %r13d                                     #161.5
        shrl      $25, %edx                                     #161.5
        orl       %edx, %r13d                                   #161.5
        addl      %r13d, %esi                                   #161.5
        xorl      %esi, %ecx                                    #161.5
        movl      336(%rsp), %edx                               #161.5[spill]
        addl      %ecx, %edx                                    #161.5
        movl      %edx, %edi                                    #161.5
        shll      $19, %edi                                     #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %edi                                    #161.5
        addl      %edi, %r11d                                   #161.5
        xorl      %r11d, %r13d                                  #161.5
        lea       (%r13,%rsi), %r15d                            #161.5
        addl      %r13d, %esi                                   #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %esi                                     #161.5
        orl       %esi, %r15d                                   #161.5
        addl      %r15d, %ecx                                   #161.5
        xorl      %ecx, %edi                                    #161.5
        addl      %edi, %r11d                                   #161.5
        movl      %r11d, %esi                                   #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %r11d                                    #161.5
        orl       %r11d, %esi                                   #161.5
        addl      %esi, %r15d                                   #161.5
        xorl      %r15d, %r9d                                   #161.5
        lea       (%r9,%r12), %edx                              #161.5
        addl      %r9d, %r12d                                   #161.5
        shll      $19, %edx                                     #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %edx                                   #161.5
        addl      %edx, %r8d                                    #161.5
        xorl      %r8d, %esi                                    #161.5
        addl      %esi, %r15d                                   #161.5
        movl      %r15d, %r11d                                  #161.5
        shll      $11, %r11d                                    #161.5
        shrl      $21, %r15d                                    #161.5
        orl       %r15d, %r11d                                  #161.5
        addl      %r11d, %r9d                                   #161.5
        xorl      %r9d, %edx                                    #161.5
        movl      %r11d, 128(%rsp)                              #161.5[spill]
        lea       (%r8,%rdx), %r11d                             #161.5
        addl      %edx, %r8d                                    #161.5
        shll      $7, %r11d                                     #161.5
        shrl      $25, %r8d                                     #161.5
        orl       %r8d, %r11d                                   #161.5
                                # LOE eax edx ecx ebx esi edi r9d r10d r11d r13d r14d ymm0 ymm1
..B6.59:                        # Preds ..B6.60
                                # Execution count [3.60e+00]
        movl      160(%rsp), %r12d                              #161.5[spill]
        addl      %r11d, %r12d                                  #161.5
        xorl      %r12d, %ecx                                   #161.5
        lea       (%rax,%rcx), %r8d                             #161.5
        addl      %ecx, %eax                                    #161.5
        shll      $19, %r8d                                     #161.5
        shrl      $13, %eax                                     #161.5
        orl       %eax, %r8d                                    #161.5
        addl      %r8d, %r10d                                   #161.5
        xorl      %r10d, %r11d                                  #161.5
        lea       (%r12,%r11), %eax                             #161.5
        addl      %r11d, %r12d                                  #161.5
        shll      $11, %eax                                     #161.5
        shrl      $21, %r12d                                    #161.5
        orl       %r12d, %eax                                   #161.5
        addl      %eax, %ecx                                    #161.5
        xorl      %ecx, %r8d                                    #161.5
        movl      %ecx, 224(%rsp)                               #161.5[spill]
        movl      144(%rsp), %r12d                              #161.5[spill]
        lea       (%r10,%r8), %ecx                              #161.5
        addl      %r8d, %r10d                                   #161.5
        shll      $7, %ecx                                      #161.5
        shrl      $25, %r10d                                    #161.5
        orl       %r10d, %ecx                                   #161.5
        movl      184(%rsp), %r10d                              #161.5[spill]
        addl      %ecx, %r10d                                   #161.5
        xorl      %r10d, %r14d                                  #161.5
        lea       (%rdi,%r14), %r15d                            #161.5
        addl      %r14d, %edi                                   #161.5
        shll      $19, %r15d                                    #161.5
        shrl      $13, %edi                                     #161.5
        orl       %edi, %r15d                                   #161.5
        addl      %r15d, %r13d                                  #161.5
        xorl      %r13d, %ecx                                   #161.5
        lea       (%r10,%rcx), %edi                             #161.5
        addl      %ecx, %r10d                                   #161.5
        shll      $11, %edi                                     #161.5
        shrl      $21, %r10d                                    #161.5
        orl       %r10d, %edi                                   #161.5
        addl      %edi, %r14d                                   #161.5
        xorl      %r14d, %r15d                                  #161.5
        movl      %r15d, 344(%rsp)                              #161.5[spill]
        lea       (%r13,%r15), %r10d                            #161.5
        addl      %r15d, %r13d                                  #161.5
        shll      $7, %r10d                                     #161.5
        shrl      $25, %r13d                                    #161.5
        orl       %r13d, %r10d                                  #161.5
        movl      192(%rsp), %r13d                              #161.5[spill]
        addl      %r10d, %r13d                                  #161.5
        xorl      %r13d, %ebx                                   #161.5
        lea       (%r12,%rbx), %r15d                            #161.5
        addl      %ebx, %r12d                                   #161.5
        shll      $19, %r15d                                    #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %r15d                                  #161.5
        addl      %r15d, %esi                                   #161.5
        xorl      %esi, %r10d                                   #161.5
        lea       (%r13,%r10), %r12d                            #161.5
        addl      %r10d, %r13d                                  #161.5
        shll      $11, %r12d                                    #161.5
        shrl      $21, %r13d                                    #161.5
        orl       %r13d, %r12d                                  #161.5
        addl      %r12d, %ebx                                   #161.5
        xorl      %ebx, %r15d                                   #161.5
        lea       (%rsi,%r15), %r13d                            #161.5
        addl      %r15d, %esi                                   #161.5
        shll      $7, %r13d                                     #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %r13d                                   #161.5
        addl      %r13d, %eax                                   #161.5
        xorl      %eax, %r14d                                   #161.5
        addl      %r14d, %r15d                                  #161.5
        movl      %r15d, %esi                                   #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r15d                                    #161.5
        orl       %r15d, %esi                                   #161.5
        addl      %esi, %r11d                                   #161.5
        xorl      %r11d, %r13d                                  #161.5
        addl      %r13d, %eax                                   #161.5
        movl      %eax, %r15d                                   #161.5
        shll      $11, %r15d                                    #161.5
        shrl      $21, %eax                                     #161.5
        orl       %eax, %r15d                                   #161.5
        addl      %r15d, %r14d                                  #161.5
        xorl      %r14d, %esi                                   #161.5
        movl      %esi, 352(%rsp)                               #161.5[spill]
        lea       (%rsi,%r11), %eax                             #161.5
        addl      %esi, %r11d                                   #161.5
        shll      $7, %eax                                      #161.5
        shrl      $25, %r11d                                    #161.5
        orl       %r11d, %eax                                   #161.5
        addl      %eax, %edi                                    #161.5
        xorl      %edi, %ebx                                    #161.5
        addl      %ebx, %edx                                    #161.5
        movl      %edx, %r11d                                   #161.5
        shll      $19, %r11d                                    #161.5
        shrl      $13, %edx                                     #161.5
        orl       %edx, %r11d                                   #161.5
        addl      %r11d, %ecx                                   #161.5
        xorl      %ecx, %eax                                    #161.5
        lea       (%rax,%rdi), %edx                             #161.5
        addl      %eax, %edi                                    #161.5
        shll      $11, %edx                                     #161.5
        shrl      $21, %edi                                     #161.5
        orl       %edi, %edx                                    #161.5
        addl      %edx, %ebx                                    #161.5
        xorl      %ebx, %r11d                                   #161.5
        movl      %ebx, 240(%rsp)                               #161.5[spill]
        movl      128(%rsp), %edi                               #161.5[spill]
        lea       (%r11,%rcx), %esi                             #161.5
        addl      %r11d, %ecx                                   #161.5
        shll      $7, %esi                                      #161.5
        shrl      $25, %ecx                                     #161.5
        orl       %ecx, %esi                                    #161.5
        addl      %esi, %r12d                                   #161.5
        xorl      %r12d, %r9d                                   #161.5
        addl      %r9d, %r8d                                    #161.5
        movl      %r8d, %ecx                                    #161.5
        shll      $19, %ecx                                     #161.5
        shrl      $13, %r8d                                     #161.5
        orl       %r8d, %ecx                                    #161.5
        addl      %ecx, %r10d                                   #161.5
        xorl      %r10d, %esi                                   #161.5
        movl      344(%rsp), %r8d                               #161.5[spill]
        lea       (%rsi,%r12), %ebx                             #161.5
        addl      %esi, %r12d                                   #161.5
        shll      $11, %ebx                                     #161.5
        shrl      $21, %r12d                                    #161.5
        orl       %r12d, %ebx                                   #161.5
        addl      %ebx, %r9d                                    #161.5
        xorl      %r9d, %ecx                                    #161.5
        movl      %ebx, 360(%rsp)                               #161.5[spill]
        lea       (%rcx,%r10), %ebx                             #161.5
        addl      %ecx, %r10d                                   #161.5
        shll      $7, %ebx                                      #161.5
        shrl      $25, %r10d                                    #161.5
        orl       %r10d, %ebx                                   #161.5
        addl      %ebx, %edi                                    #161.5
        movl      224(%rsp), %r10d                              #161.5[spill]
        xorl      %edi, %r10d                                   #161.5
        addl      %r10d, %r8d                                   #161.5
        movl      %r8d, %r12d                                   #161.5
        shll      $19, %r12d                                    #161.5
        shrl      $13, %r8d                                     #161.5
        orl       %r8d, %r12d                                   #161.5
        addl      %r12d, %r13d                                  #161.5
        xorl      %r13d, %ebx                                   #161.5
        lea       (%rbx,%rdi), %r8d                             #161.5
        addl      %ebx, %edi                                    #161.5
        shll      $11, %r8d                                     #161.5
        shrl      $21, %edi                                     #161.5
        orl       %edi, %r8d                                    #161.5
        addl      %r8d, %r10d                                   #161.5
        xorl      %r10d, %r12d                                  #161.5
        addl      %r12d, %r13d                                  #161.5
        movl      %r13d, %edi                                   #161.5
        shll      $7, %edi                                      #161.5
        shrl      $25, %r13d                                    #161.5
        orl       %r13d, %edi                                   #161.5
        addl      %edi, %r8d                                    #161.5
        xorl      %r8d, %r9d                                    #161.5
        lea       (%r9,%r11), %r13d                             #161.5
        addl      %r9d, %r11d                                   #161.5
        shll      $19, %r13d                                    #161.5
        shrl      $13, %r11d                                    #161.5
        orl       %r11d, %r13d                                  #161.5
        addl      %r13d, %eax                                   #161.5
        xorl      %eax, %edi                                    #161.5
        addl      %edi, %r8d                                    #161.5
        movl      %r8d, %r11d                                   #161.5
        shll      $11, %r11d                                    #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %r11d                                   #161.5
        addl      %r11d, %r9d                                   #161.5
        xorl      %r9d, %r13d                                   #161.5
        movl      %r9d, 40(%rsp)                                #161.5
        movl      %r13d, 20(%rsp)                               #161.5
        movl      %r11d, 60(%rsp)                               #161.5
        lea       (%rax,%r13), %r9d                             #161.5
        addl      %eax, %r13d                                   #161.5
        shll      $7, %r9d                                      #161.5
        shrl      $25, %r13d                                    #161.5
        orl       %r13d, %r9d                                   #161.5
        addl      %r9d, %r15d                                   #161.5
        xorl      %r15d, %r10d                                  #161.5
        lea       (%r10,%rcx), %eax                             #161.5
        addl      %r10d, %ecx                                   #161.5
        shll      $19, %eax                                     #161.5
        shrl      $13, %ecx                                     #161.5
        orl       %ecx, %eax                                    #161.5
        addl      %eax, %esi                                    #161.5
        xorl      %esi, %r9d                                    #161.5
        movl      %r9d, (%rsp)                                  #161.5
        lea       (%r15,%r9), %ecx                              #161.5
        addl      %r15d, %r9d                                   #161.5
        shll      $11, %ecx                                     #161.5
        shrl      $21, %r9d                                     #161.5
        orl       %r9d, %ecx                                    #161.5
        addl      %ecx, %r10d                                   #161.5
        xorl      %r10d, %eax                                   #161.5
        movl      %eax, 24(%rsp)                                #161.5
        movl      %ecx, 48(%rsp)                                #161.5
        movl      240(%rsp), %ecx                               #161.5[spill]
        movl      %r10d, 44(%rsp)                               #161.5
        lea       (%rsi,%rax), %r8d                             #161.5
        addl      %esi, %eax                                    #161.5
        shll      $7, %r8d                                      #161.5
        shrl      $25, %eax                                     #161.5
        orl       %eax, %r8d                                    #161.5
        addl      %r8d, %edx                                    #161.5
        xorl      %edx, %r14d                                   #161.5
        lea       (%r14,%r12), %esi                             #161.5
        addl      %r14d, %r12d                                  #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r12d                                    #161.5
        orl       %r12d, %esi                                   #161.5
        addl      %esi, %ebx                                    #161.5
        xorl      %ebx, %r8d                                    #161.5
        movl      %r8d, 4(%rsp)                                 #161.5
        lea       (%rdx,%r8), %r12d                             #161.5
        addl      %edx, %r8d                                    #161.5
        shll      $11, %r12d                                    #161.5
        shrl      $21, %r8d                                     #161.5
        orl       %r8d, %r12d                                   #161.5
        addl      %r12d, %r14d                                  #161.5
        xorl      %r14d, %esi                                   #161.5
        movl      %esi, 28(%rsp)                                #161.5
        movl      %r14d, 32(%rsp)                               #161.5
        movl      352(%rsp), %r14d                              #161.5[spill]
        movl      %r12d, 52(%rsp)                               #161.5
        lea       (%rbx,%rsi), %eax                             #161.5
        addl      %ebx, %esi                                    #161.5
        shll      $7, %eax                                      #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %eax                                    #161.5
        movl      360(%rsp), %ebx                               #161.5[spill]
        addl      %eax, %ebx                                    #161.5
        xorl      %ebx, %ecx                                    #161.5
        lea       (%rcx,%r14), %esi                             #161.5
        addl      %ecx, %r14d                                   #161.5
        shll      $19, %esi                                     #161.5
        shrl      $13, %r14d                                    #161.5
        orl       %r14d, %esi                                   #161.5
        addl      %esi, %edi                                    #161.5
        xorl      %edi, %eax                                    #161.5
        movl      %eax, 8(%rsp)                                 #161.5
        lea       (%rbx,%rax), %edx                             #161.5
        addl      %ebx, %eax                                    #161.5
        shll      $11, %edx                                     #161.5
        shrl      $21, %eax                                     #161.5
        orl       %eax, %edx                                    #161.5
        addl      %edx, %ecx                                    #161.5
        xorl      %ecx, %esi                                    #161.5
        movl      %esi, 16(%rsp)                                #161.5
        movl      %edx, 56(%rsp)                                #161.5
        movl      %ecx, 36(%rsp)                                #161.5
        vpaddd    32(%rsp), %ymm0, %ymm0                        #161.5
        lea       (%rdi,%rsi), %r8d                             #161.5
        addl      %edi, %esi                                    #161.5
        movq      104(%rsp), %rdi                               #161.5[spill]
        shll      $7, %r8d                                      #161.5
        shrl      $25, %esi                                     #161.5
        orl       %esi, %r8d                                    #161.5
        movl      %r8d, 12(%rsp)                                #161.5
        vpaddd    (%rsp), %ymm1, %ymm1                          #161.5
        incl      16(%rdi)                                      #161.5
        jne       ..B6.9        # Prob 50%                      #161.5
                                # LOE rdi ymm0 ymm1
..B6.8:                         # Preds ..B6.59
                                # Execution count [1.80e+00]
        movq      %rdi, %rax                                    #161.5
        incl      20(%rax)                                      #161.5
                                # LOE ymm0 ymm1
..B6.9:                         # Preds ..B6.59 ..B6.8
                                # Execution count [3.60e+00]
        cmpl      $64, 120(%rsp)                                #161.5[spill]
        jbe       ..B6.32       # Prob 20%                      #161.5
                                # LOE ymm0 ymm1
..B6.10:                        # Preds ..B6.9
                                # Execution count [0.00e+00]
        movq      112(%rsp), %rax                               #161.5[spill]
        shlq      $6, %rax                                      #161.5
        addq      80(%rsp), %rax                                #161.5[spill]
        lea       416(%rsp), %rdx                               #161.5
        vmovdqu   %ymm0, (%rdx)                                 #161.5
        vmovdqu   %ymm1, -32(%rdx)                              #161.5
        movq      %rax, 88(%rsp)                                #161.5[spill]
                                # LOE rax
..B6.12:                        # Preds ..B6.10
                                # Execution count [1.44e+00]
        movq      %rax, %rdi                                    #161.5
        xorl      %eax, %eax                                    #161.5
                                # LOE rdi eax
..B6.13:                        # Preds ..B6.13 ..B6.12
                                # Execution count [4.61e+01]
        lea       (%rax,%rax), %edx                             #161.5
        movb      384(%rsp,%rdx), %cl                           #161.5
        lea       1(%rax,%rax), %ebx                            #161.5
        xorb      %cl, -64(%rdx,%rdi)                           #161.5
        incl      %eax                                          #161.5
        movb      384(%rsp,%rbx), %sil                          #161.5
        xorb      %sil, -64(%rbx,%rdi)                          #161.5
        cmpl      $32, %eax                                     #161.5
        jb        ..B6.13       # Prob 96%                      #161.5
                                # LOE rdi eax
..B6.15:                        # Preds ..B6.13
                                # Execution count [2.88e+00]
        movq      88(%rsp), %rax                                #161.5[spill]
        addl      $-64, 120(%rsp)                               #161.5[spill]
        movq      %rax, 96(%rsp)                                #161.5[spill]
        jmp       ..B6.7        # Prob 100%                     #161.5
	.cfi_restore 3
	.cfi_restore 15
                                # LOE
..B6.16:                        # Preds ..B6.2
                                # Execution count [1.00e+00]: Infreq
        cmpl      $32, %r14d                                    #159.5
        jb        ..B6.30       # Prob 10%                      #159.5
                                # LOE rbx r12 r13 r14 r15
..B6.17:                        # Preds ..B6.16
                                # Execution count [1.00e+00]: Infreq
        movl      %r14d, %eax                                   #159.5
        xorl      %edx, %edx                                    #159.5
        vpxor     %ymm0, %ymm0, %ymm0                           #160.21
        andl      $-32, %eax                                    #159.5
                                # LOE rdx rbx r12 r13 r14 r15 eax ymm0
..B6.18:                        # Preds ..B6.18 ..B6.17
                                # Execution count [5.56e+00]: Infreq
        vmovdqu   %ymm0, (%rdx,%r12)                            #160.9
        addl      $32, %edx                                     #159.5
        cmpl      %eax, %edx                                    #159.5
        jb        ..B6.18       # Prob 82%                      #159.5
                                # LOE rdx rbx r12 r13 r14 r15 eax ymm0
..B6.20:                        # Preds ..B6.18 ..B6.30
                                # Execution count [1.11e+00]: Infreq
        lea       1(%rax), %edx                                 #159.5
        cmpl      %r14d, %edx                                   #159.5
        ja        ..B6.6        # Prob 50%                      #159.5
                                # LOE rbx r12 r13 r14 r15 eax
..B6.21:                        # Preds ..B6.20
                                # Execution count [1.00e+00]: Infreq
        movl      %r14d, %r8d                                   #159.5
        subl      %eax, %r8d                                    #159.5
        cmpl      $8, %r8d                                      #159.5
        jb        ..B6.29       # Prob 10%                      #159.5
                                # LOE rbx r12 r13 r14 r15 eax r8d
..B6.22:                        # Preds ..B6.21
                                # Execution count [1.00e+00]: Infreq
        movl      %r8d, %edx                                    #159.5
        xorl      %esi, %esi                                    #159.5
        andl      $-8, %edx                                     #159.5
        movl      %eax, %ecx                                    #159.5
        vpxor     %xmm0, %xmm0, %xmm0                           #160.21
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d xmm0
..B6.23:                        # Preds ..B6.23 ..B6.22
                                # Execution count [5.56e+00]: Infreq
        addl      $8, %esi                                      #159.5
        vmovq     %xmm0, (%rcx,%r12)                            #160.9
        addl      $8, %ecx                                      #159.5
        cmpl      %edx, %esi                                    #159.5
        jb        ..B6.23       # Prob 82%                      #159.5
                                # LOE rcx rbx r12 r13 r14 r15 eax edx esi r8d xmm0
..B6.25:                        # Preds ..B6.23 ..B6.29
                                # Execution count [1.11e+00]: Infreq
        addl      %edx, %eax                                    #159.5
        cmpl      %r8d, %edx                                    #159.5
        jae       ..B6.6        # Prob 10%                      #159.5
                                # LOE rax rbx r12 r13 r14 r15 edx r8d
..B6.27:                        # Preds ..B6.25 ..B6.27
                                # Execution count [5.56e+00]: Infreq
        incl      %edx                                          #159.5
        movb      $0, (%rax,%r12)                               #160.9
        incl      %eax                                          #159.5
        cmpl      %r8d, %edx                                    #159.5
        jb        ..B6.27       # Prob 82%                      #159.5
        jmp       ..B6.6        # Prob 100%                     #159.5
                                # LOE rax rbx r12 r13 r14 r15 edx r8d
..B6.29:                        # Preds ..B6.21
                                # Execution count [1.00e-01]: Infreq
        xorl      %edx, %edx                                    #159.5
        jmp       ..B6.25       # Prob 100%                     #159.5
                                # LOE rbx r12 r13 r14 r15 eax edx r8d
..B6.30:                        # Preds ..B6.16
                                # Execution count [1.00e-01]: Infreq
        xorl      %eax, %eax                                    #159.5
        jmp       ..B6.20       # Prob 100%                     #159.5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
                                # LOE rbx r12 r13 r14 r15 eax
..B6.32:                        # Preds ..B6.9
                                # Execution count [7.20e-01]: Infreq
        movl      120(%rsp), %r14d                              #[spill]
        movq      96(%rsp), %rdx                                #[spill]
        movq      88(%rsp), %rcx                                #[spill]
        movq      72(%rsp), %r15                                #[spill]
	.cfi_restore 15
        movq      64(%rsp), %rbx                                #[spill]
	.cfi_restore 3
        testl     %r14d, %r14d                                  #161.5
        jbe       ..B6.5        # Prob 50%                      #161.5
	.cfi_escape 0x10, 0x03, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x60, 0xfe, 0xff, 0xff, 0x22
	.cfi_escape 0x10, 0x0f, 0x0e, 0x38, 0x1c, 0x0d, 0xe0, 0xff, 0xff, 0xff, 0x1a, 0x0d, 0x68, 0xfe, 0xff, 0xff, 0x22
                                # LOE rdx rcx rbx r15 r14d ymm0 ymm1
..B6.33:                        # Preds ..B6.32
                                # Execution count [0.00e+00]: Infreq
        lea       416(%rsp), %rax                               #161.5
        vmovdqu   %ymm0, (%rax)                                 #161.5
        vmovdqu   %ymm1, -32(%rax)                              #161.5
        cmpl      $6, %r14d                                     #161.5
        jbe       ..B6.49       # Prob 50%                      #161.5
                                # LOE rdx rcx rbx r15 r14d
..B6.34:                        # Preds ..B6.33
                                # Execution count [0.00e+00]: Infreq
        movq      %rcx, %rax                                    #161.5
        movl      %r14d, %esi                                   #161.5
        subq      %rdx, %rax                                    #161.5
        cmpq      %rsi, %rax                                    #161.5
        jge       ..B6.36       # Prob 50%                      #161.5
                                # LOE rax rdx rcx rbx rsi r15 r14d
..B6.35:                        # Preds ..B6.34
                                # Execution count [0.00e+00]: Infreq
        negq      %rax                                          #161.5
        cmpq      %rsi, %rax                                    #161.5
        jl        ..B6.49       # Prob 50%                      #161.5
                                # LOE rdx rcx rbx r15 r14d
..B6.36:                        # Preds ..B6.34 ..B6.35
                                # Execution count [3.24e-01]: Infreq
        cmpl      $32, %r14d                                    #161.5
        jb        ..B6.55       # Prob 10%                      #161.5
                                # LOE rdx rcx rbx r15 r14d
..B6.37:                        # Preds ..B6.36
                                # Execution count [3.24e-01]: Infreq
        movl      %r14d, %eax                                   #161.5
        xorl      %edi, %edi                                    #161.5
        andl      $-32, %eax                                    #161.5
        movslq    %eax, %rsi                                    #161.5
                                # LOE rdx rcx rbx rsi rdi r15 eax r14d
..B6.38:                        # Preds ..B6.38 ..B6.37
                                # Execution count [1.80e+00]: Infreq
        vmovdqu   (%rdx,%rdi), %ymm0                            #161.5
        vpxor     384(%rsp,%rdi), %ymm0, %ymm1                  #161.5
        vmovdqu   %ymm1, (%rdi,%rcx)                            #161.5
        addq      $32, %rdi                                     #161.5
        cmpq      %rsi, %rdi                                    #161.5
        jb        ..B6.38       # Prob 82%                      #161.5
                                # LOE rdx rcx rbx rsi rdi r15 eax r14d
..B6.40:                        # Preds ..B6.38 ..B6.55
                                # Execution count [3.60e-01]: Infreq
        lea       1(%rax), %esi                                 #161.5
        cmpl      %r14d, %esi                                   #161.5
        ja        ..B6.5        # Prob 50%                      #161.5
                                # LOE rdx rcx rbx r15 eax r14d
..B6.41:                        # Preds ..B6.40
                                # Execution count [3.24e-01]: Infreq
        subl      %eax, %r14d                                   #161.5
        cmpl      $8, %r14d                                     #161.5
        jb        ..B6.56       # Prob 10%                      #161.5
                                # LOE rdx rcx rbx r15 eax r14d
..B6.42:                        # Preds ..B6.41
                                # Execution count [3.24e-01]: Infreq
        movl      %r14d, %edi                                   #161.5
        xorl      %esi, %esi                                    #161.5
        andl      $-8, %edi                                     #161.5
                                # LOE rdx rcx rbx r15 eax esi edi r14d
..B6.43:                        # Preds ..B6.43 ..B6.42
                                # Execution count [1.80e+00]: Infreq
        lea       (%rax,%rsi), %r8d                             #161.5
        addl      $8, %esi                                      #161.5
        movslq    %r8d, %r8                                     #161.5
        vmovq     (%rdx,%r8), %xmm0                             #161.5
        vmovq     384(%rsp,%r8), %xmm1                          #161.5
        vpxor     %xmm1, %xmm0, %xmm2                           #161.5
        vmovq     %xmm2, (%r8,%rcx)                             #161.5
        cmpl      %edi, %esi                                    #161.5
        jb        ..B6.43       # Prob 82%                      #161.5
                                # LOE rdx rcx rbx r15 eax esi edi r14d
..B6.45:                        # Preds ..B6.43 ..B6.56
                                # Execution count [3.60e-01]: Infreq
        cmpl      %r14d, %edi                                   #161.5
        jae       ..B6.5        # Prob 10%                      #161.5
                                # LOE rdx rcx rbx r15 eax edi r14d
..B6.47:                        # Preds ..B6.45 ..B6.47
                                # Execution count [1.80e+00]: Infreq
        lea       (%rax,%rdi), %esi                             #161.5
        incl      %edi                                          #161.5
        movslq    %esi, %rsi                                    #161.5
        movb      (%rdx,%rsi), %r8b                             #161.5
        xorb      384(%rsp,%rsi), %r8b                          #161.5
        movb      %r8b, (%rsi,%rcx)                             #161.5
        cmpl      %r14d, %edi                                   #161.5
        jb        ..B6.47       # Prob 82%                      #161.5
        jmp       ..B6.5        # Prob 100%                     #161.5
                                # LOE rdx rcx rbx r15 eax edi r14d
..B6.49:                        # Preds ..B6.33 ..B6.35
                                # Execution count [3.60e-01]: Infreq
        movl      %r14d, %eax                                   #161.5
        movl      $1, %edi                                      #161.5
        xorl      %esi, %esi                                    #161.5
        shrl      $1, %eax                                      #161.5
        je        ..B6.53       # Prob 10%                      #161.5
                                # LOE rdx rcx rbx r15 eax esi edi r14d
..B6.51:                        # Preds ..B6.49 ..B6.51
                                # Execution count [9.00e-01]: Infreq
        lea       (%rsi,%rsi), %edi                             #161.5
        movslq    %edi, %rdi                                    #161.5
        lea       1(%rsi,%rsi), %r9d                            #161.5
        movslq    %r9d, %r9                                     #161.5
        incl      %esi                                          #161.5
        movb      (%rdi,%rdx), %r8b                             #161.5
        xorb      384(%rsp,%rdi), %r8b                          #161.5
        movb      %r8b, (%rdi,%rcx)                             #161.5
        movb      (%r9,%rdx), %r10b                             #161.5
        xorb      384(%rsp,%r9), %r10b                          #161.5
        movb      %r10b, (%r9,%rcx)                             #161.5
        cmpl      %eax, %esi                                    #161.5
        jb        ..B6.51       # Prob 64%                      #161.5
                                # LOE rdx rcx rbx r15 eax esi r14d
..B6.52:                        # Preds ..B6.51
                                # Execution count [3.24e-01]: Infreq
        lea       1(%rsi,%rsi), %edi                            #161.5
                                # LOE rdx rcx rbx r15 edi r14d
..B6.53:                        # Preds ..B6.52 ..B6.49
                                # Execution count [3.60e-01]: Infreq
        decl      %edi                                          #161.5
        cmpl      %r14d, %edi                                   #161.5
        jae       ..B6.5        # Prob 10%                      #161.5
                                # LOE rdx rcx rbx r15 edi
..B6.54:                        # Preds ..B6.53
                                # Execution count [3.24e-01]: Infreq
        movslq    %edi, %rdi                                    #161.5
        movb      (%rdi,%rdx), %dl                              #161.5
        xorb      384(%rsp,%rdi), %dl                           #161.5
        movb      %dl, (%rdi,%rcx)                              #161.5
        jmp       ..B6.5        # Prob 100%                     #161.5
                                # LOE rbx r15
..B6.55:                        # Preds ..B6.36
                                # Execution count [3.24e-02]: Infreq
        xorl      %eax, %eax                                    #161.5
        jmp       ..B6.40       # Prob 100%                     #161.5
                                # LOE rdx rcx rbx r15 eax r14d
..B6.56:                        # Preds ..B6.41
                                # Execution count [3.24e-02]: Infreq
        xorl      %edi, %edi                                    #161.5
        jmp       ..B6.45       # Prob 100%                     #161.5
        .align    16,0x90
                                # LOE rdx rcx rbx r15 eax edi r14d
	.cfi_endproc
# mark_end;
	.type	forro_keystream_bytes,@function
	.size	forro_keystream_bytes,.-forro_keystream_bytes
..LNforro_keystream_bytes.5:
	.data
# -- End  forro_keystream_bytes
	.text
.L_2__routine_start_forro_init_6:
# -- Begin  forro_init
	.text
# mark_begin;
       .align    16,0x90
	.globl forro_init
# --- forro_init(void)
forro_init:
..B7.1:                         # Preds ..B7.0
                                # Execution count [1.00e+00]
	.cfi_startproc
..___tag_value_forro_init.501:
..L502:
                                                        #64.1
        ret                                                     #65.5
        .align    16,0x90
                                # LOE
	.cfi_endproc
# mark_end;
	.type	forro_init,@function
	.size	forro_init,.-forro_init
..LNforro_init.6:
	.data
# -- End  forro_init
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
