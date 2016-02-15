.global start
.data

in_1:       .word 0x01
in_2:       .word 0x02


.bss
out:      .space 4


.text
start:
        LDR R3, =in_1   // Load in R3 the address of in_1
        LDR R4, =in_2   // Load in R4 the address of in_2
        LDR R5, =out    // Load in R5 the address of out

        LDR R1, [R3]    // R1 has [=in_1] (the value of in_1)
        LDR R2, [R4]    // R2 has [=in_2] (the value of in_2)

        ADD R6, R1, R2  // Saves in R6 the addition of the values of R1 and R2

        STR R6, [R5]    // Stores in the address pointed by R5 the value of R6

FIN:    B .             // End!
        .end

