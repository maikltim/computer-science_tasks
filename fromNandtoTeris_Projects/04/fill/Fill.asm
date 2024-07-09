// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(LOOP)
    @0
    D=A
    @val
    M=D
    @KBD
    D=M
    @key
    M=D
    @WHITE
    D;JEQ
    @BLACK
    0;JMP

(BLACK)
    @val
    M=-1 
    @FILL
    0;JMP

(WHITE)
    @val
    M=0 
    @FILL
    0;JMP

(FILL)
    @SCREEN 
    D=A
    @addr
    M=D 
    @0
    D=A
    @i
    M=D
    @R0
    D=M
    @n
    M=D 

(FLOOP)
    @i
    D=M
    @n
    D=D-M
    @LOOP
    D;JGT
    @val
    D=M
    @addr
    A=M
    M=D
    @4
    D=A
    @addr
    M=D+M
    @4
    D=A
    @i
    M=M+D
    @FLOOP
    0;JMP
