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


(mainloop)

    @0
    D=A

    M[1]=D

    @24576
    D=M

    @nokey
    D;JEQ

    @0
    D=A

    M[1]=!D

(nokey)

    @16384
    D=A

    M[0]=D

(loop)

    D=M[0]

    @24576
    D=D-A

    @end
    D;JEQ

    D=M[1]
    A=M[0]
    M=D

    D=M[0]
    D=D+1
    M[0]=D
    @loop
    0;JMP
(end)
    @mainloop
    0;JMP
