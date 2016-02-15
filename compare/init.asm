.global start
.data

X:      .word 0x03
Y:      .word 0x0A


.bss
Mayor:  .space 4


.text
start:
        LDR R4, =X      // Load in R4 the address of X
        LDR R3, =Y      // Load in R3 the address of Y
        LDR R5, =Mayor  // Load in R5 the address of Mayor
        LDR R1, [R4]    // Load in R1 the value of the address pointed by R4 (X)
        LDR R2, [R3]    // Load in R2 the value of the address pointed by R3 (Y)
        CMP R1, R2      // Compare the values of R1 and R2
        BLE else        // Go to "else" if the last comparison was true for a "less or equal"
        STR R1, [R5]    // Store in R5 the value of R1 (R4 <- =X; R1 <- [R4]; [R5] <- R1;)
        B FIN           // Go to "FIN"
else:   STR R2, [R5]    // Store in R5 the value of R2 (R3 <- =Y; R2 <- [R3]; [R5] <- R2;)



FIN:    B .             // End!
        .end

