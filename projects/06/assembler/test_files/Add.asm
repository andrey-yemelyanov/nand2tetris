// Computes 1+...+RAM[0]
// And stores the sum in RAM[1].
    @i
    M=1 // i = 1
    

@sum
    M=0 // sum = 0


(LOOP    )

    @i // if i>RAM[0] goto WRITE
    D=M
    @0
    D = D - M


    @WRITE

    D;       JGT
    @i // sum += i

    D=M

    @sum
    M=D+M
    @i // i++
    M=M+1
    @LOOP // goto LOOP
    0;JMP


(WRITE)
    @sum

    D=M
    @1
    M=D // RAM[1] = the sum

(END)
    @END
    0;JMP
