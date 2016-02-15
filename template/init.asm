.global start
.data

in:       .word 0x01


.bss
out:      .space 4


.text
start:
        LDR R3, =in     // Load in R3 the address of in
        LDR R4, =out    // Load in R4 the address of out

        LDR R1, [R3]    // Load in R1 the value of the address pointed by R3 (the value of in)

        // Do things...
        MOV R5, #1      // Load in R5 the value 1 (R5 represents the final result of some code....)

        STR R5, [R4]    // Stores in the address pointed by R4 the value of R5

FIN:    B .             // End!
        .end

