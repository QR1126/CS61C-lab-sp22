.globl factorial

.data
n: .word 1

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
    # YOUR CODE HERE
    addi t0, x0, 1
    add  s0, x0, a0

loop:
    beq  s0, t0, finish
    addi s0, s0, -1
    mul  a0, a0, s0
    j loop

finish:
    jr ra
