.globl factorial
.data
n: .word 8

# implement the factorial function by iterative
# 
.text
main:
    la t0, n
    lw a0, 0(t0)  # load the n value from t0
    jal ra, factorial # enter function

    addi a1, a0, 0 # a1 = result(a0)
    addi a0, x0, 1 # a0 as the return value
    ecall # Print Result

    addi a1, x0, '\n' 
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit
factorial:
    add t1 a0 x0 # result = n
    addi a0 a0 -1 # n = 7
    addi t2 t2 1
    j Loop
finish:
    add a0 x0 t1 # return = result
    ret
Loop:
    beq a0 t2 finish  # cnt == 1
    mul t1 a0 t1
    addi a0 a0 -1
    j Loop



    
