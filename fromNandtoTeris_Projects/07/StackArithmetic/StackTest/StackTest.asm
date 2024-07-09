// push constant 17
@17
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A 
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@EQ0
D;JEQ
@SP
A=M
M=0
@EQ_END0
0;JMP
(EQ0)
@SP
A=M
M=-1
(EQ_END0)
@SP
M=M+1

// push constant 17
@17
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 16
@16
D=A 
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@EQ1
D;JEQ
@SP
A=M
M=0
@EQ_END1
0;JMP
(EQ1)
@SP
A=M
M=-1
(EQ_END1)
@SP
M=M+1

// push constant 16
@16
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 17
@17
D=A 
@SP
A=M
M=D
@SP
M=M+1

// eq
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@EQ2
D;JEQ
@SP
A=M
M=0
@EQ_END2
0;JMP
(EQ2)
@SP
A=M
M=-1
(EQ_END2)
@SP
M=M+1

// push constant 892
@892
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A 
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@LT0
D;JLT
@SP
A=M
M=0
@LT_END0
0;JMP
(LT0)
@SP
A=M
M=-1
(LT_END0)
@SP
M=M+1

// push constant 891
@891
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 892
@892
D=A 
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@LT1
D;JLT
@SP
A=M
M=0
@LT_END1
0;JMP
(LT1)
@SP
A=M
M=-1
(LT_END1)
@SP
M=M+1

// push constant 891
@891
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 891
@891
D=A 
@SP
A=M
M=D
@SP
M=M+1

// lt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@LT2
D;JLT
@SP
A=M
M=0
@LT_END2
0;JMP
(LT2)
@SP
A=M
M=-1
(LT_END2)
@SP
M=M+1

// push constant 32767
@32767
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A 
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@GT0
D;JGT
@SP
A=M
M=0
@GT_END0
0;JMP
(GT0)
@SP
A=M
M=-1
(GT_END0)
@SP
M=M+1

// push constant 32766
@32766
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 32767
@32767
D=A 
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@GT1
D;JGT
@SP
A=M
M=0
@GT_END1
0;JMP
(GT1)
@SP
A=M
M=-1
(GT_END1)
@SP
M=M+1

// push constant 32766
@32766
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 32766
@32766
D=A 
@SP
A=M
M=D
@SP
M=M+1

// gt
@SP
M=M-1
A=M
D=M
@y
M=D
@SP
M=M-1
A=M
D=M
@x
M=D
@y
D=D-M
@GT2
D;JGT
@SP
A=M
M=0
@GT_END2
0;JMP
(GT2)
@SP
A=M
M=-1
(GT_END2)
@SP
M=M+1

// push constant 57
@57
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 31
@31
D=A 
@SP
A=M
M=D
@SP
M=M+1

// push constant 53
@53
D=A 
@SP
A=M
M=D
@SP
M=M+1

// add
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M+D
@SP
M=M+1

// push constant 112
@112
D=A 
@SP
A=M
M=D
@SP
M=M+1

// sub
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M-D
@SP
M=M+1

// neg
@SP
M=M-1
A=M
M=-M
@SP
M=M+1

// and
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M&D
@SP
M=M+1

// push constant 82
@82
D=A 
@SP
A=M
M=D
@SP
M=M+1

// or
@SP
M=M-1
A=M
D=M
@SP
M=M-1
A=M
M=M|D
@SP
M=M+1

// not
@SP
M=M-1
A=M
M=!M
@SP
M=M+1

