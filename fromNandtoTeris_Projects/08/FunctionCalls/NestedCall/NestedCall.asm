// Init code
@256
D=A
@SP
M=D

// call Sys.init 0
@retAddrLabel0
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@addr
M=D
@SP
D=M
@addr
M=D-M
@0
D=A
@addr
M=M-D
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.init
0;JMP
(retAddrLabel0)

// function Sys.init 0
(Sys.init)
@0
D=A
@i
M=D
(FUNC.LOOP0)
@i
D=M
@FUNC.STOP0
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
@i
M=M-1
@FUNC.LOOP0
0;JMP
(FUNC.STOP0)

// push constant 4000
@4000
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5000
@5000
D=A 
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

// call Sys.main 0
@retAddrLabel1
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@addr
M=D
@SP
D=M
@addr
M=D-M
@0
D=A
@addr
M=M-D
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP
(retAddrLabel1)

// pop temp 1
@1
D=A
@addr
M=D
@5
D=A
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

// label LOOP
(LOOP)

// goto LOOP
@LOOP
0;JMP

// function Sys.main 5
(Sys.main)
@5
D=A
@i
M=D
(FUNC.LOOP1)
@i
D=M
@FUNC.STOP1
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
@i
M=M-1
@FUNC.LOOP1
0;JMP
(FUNC.STOP1)

// push constant 4001
@4001
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5001
@5001
D=A 
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

// push constant 200
@200
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop local 1
@1
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

// push constant 40
@40
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop local 2
@2
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

// push constant 6
@6
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop local 3
@3
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

// push constant 123
@123
D=A 
@SP
A=M
M=D
@SP
M=M+1

// call Sys.add12 1
@retAddrLabel2
D=A
@SP
A=M
M=D
@SP
M=M+1
@LCL
D=M
@SP
A=M
M=D
@SP
M=M+1
@ARG
D=M
@SP
A=M
M=D
@SP
M=M+1
@THIS
D=M
@SP
A=M
M=D
@SP
M=M+1
@THAT
D=M
@SP
A=M
M=D
@SP
M=M+1
@5
D=A
@addr
M=D
@SP
D=M
@addr
M=D-M
@1
D=A
@addr
M=M-D
D=M
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP
(retAddrLabel2)

// pop temp 0
@0
D=A
@addr
M=D
@5
D=A
@addr
M=M+D
@SP
M=M-1
A=M
D=M
@addr
A=M
M=D

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

// push local 1
@1
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

// push local 2
@2
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

// push local 3
@3
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

// push local 4
@4
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

// return
@LCL
D=M
@endFrame
M=D
@5
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@retAddr
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@endFrame
D=M
@addr
M=D-1
A=M
D=M
@THAT
M=D
@2
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@THIS
M=D
@3
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@ARG
M=D
@4
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@LCL
M=D
@retAddr
A=M
0;JMP

// function Sys.add12 0
(Sys.add12)
@0
D=A
@i
M=D
(FUNC.LOOP2)
@i
D=M
@FUNC.STOP2
D;JEQ
@SP
A=M
M=0
@SP
M=M+1
@i
M=M-1
@FUNC.LOOP2
0;JMP
(FUNC.STOP2)

// push constant 4002
@4002
D=A 
@SP
A=M
M=D
@SP
M=M+1

// pop pointer 0
@SP
M=M-1
A=M
D=M
@THIS
M=D

// push constant 5002
@5002
D=A 
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

// push constant 12
@12
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

// return
@LCL
D=M
@endFrame
M=D
@5
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@retAddr
M=D
@SP
M=M-1
A=M
D=M
@ARG
A=M
M=D
D=A+1
@SP
M=D
@endFrame
D=M
@addr
M=D-1
A=M
D=M
@THAT
M=D
@2
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@THIS
M=D
@3
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@ARG
M=D
@4
D=A
@addr
M=D 
@endFrame
D=M
@addr
M=D-M
A=M
D=M
@LCL
M=D
@retAddr
A=M
0;JMP

