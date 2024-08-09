// push constant 0
@0
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop local 0
@0
D=A
@addr
M=D
@LCL
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// label LOOP_START
(LOOP_START)

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push local 0
@0
D=A
@addr
M=D
@LCL
D=M
@addr
M=M+D
A=M
D=M
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

// pop local 0
@0
D=A
@addr
M=D
@LCL
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto LOOP_START
@SP
M=M-1
A=M
D=M
@LOOP_START
D;JNE

// push local 0
@0
D=A
@addr
M=D
@LCL
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push argument 1
@1
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push constant 0
@0
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop that 0
@0
D=A
@addr
M=D
@THAT
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// push constant 1
@1
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop that 1
@1
D=A
@addr
M=D
@THAT
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 2
@2
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

// pop argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// label MAIN_LOOP_START
(MAIN_LOOP_START)

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// if-goto COMPUTE_ELEMENT
@SP
M=M-1
A=M
D=M
@COMPUTE_ELEMENT
D;JNE

// goto END_PROGRAM
@END_PROGRAM
0;JMP

// label COMPUTE_ELEMENT
(COMPUTE_ELEMENT)

// push that 0
@0
D=A
@addr
M=D
@THAT
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push that 1
@1
D=A
@addr
M=D
@THAT
D=M
@addr
M=M+D
A=M
D=M
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

// pop that 2
@2
D=A
@addr
M=D
@THAT
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// push pointer 1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop pointer 1
@SP
M=M-1
A=M
D=M
@THAT
M=D

// push argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
A=M
D=M
@SP
A=M
M=D
@SP
M=M+1

// push constant 1
@1
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

// pop argument 0
@0
D=A
@addr
M=D
@ARG
D=M
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// goto MAIN_LOOP_START
@MAIN_LOOP_START
0;JMP

// label END_PROGRAM
(END_PROGRAM)

