
        '''
                add
                
                SP--
                D=*SP
                SP--
                *SP=*SP+D
                SP++

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

                sub
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
                
                neg
                
                SP--
                *SP = -*SP
                SP++

                @SP
                M=M-1
                A=M
                M=-M 
                @SP
                M=M+!
    
                lt
                
                SP--
                D=*SP
                SP--
                if *SP-D < 0:
                    *SP = 1
                else 
                    *SP = 0
                SP++
                
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
                @LT
                D;JLT 
                @SP
                A=M
                M=0
                @LT_END
                0;JMP
                (LT)
                @SP
                A=M
                M=-1
                (LT_END)
                @SP
                M=M+1
                
                gt 
                
                SP--
                D=*SP
                SP--
                if *SP-D > 0:
                    *SP = 1
                else 
                    *SP = 0
                SP++
                
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
                @GT
                D;JGT
                @SP
                A=M
                M=0
                @GT_END
                0;JMP
                (GT)
                @SP
                A=M
                M=-1
                (GT_END)
                @SP
                M=M+1
                
                eq 
                
                SP--
                D=*SP
                SP--
                if *SP-D == 0:
                    *SP = 1
                else 
                    *SP = 0
                SP++
                
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
                @EQ
                D;JEQ
                @SP
                A=M
                M=0
                @EQ_END
                0;JMP
                (EQ)
                @SP
                A=M
                M=-1
                (EQ_END)
                @SP
                M=M+1
                
                and 
                
                SP--
                D=*SP
                SP--
                *SP=*SP&D
                SP++
                
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
        '''        
        '''
            push segment i 
            {local, argument, this, that}
            
            @arg2
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

            pop segment i 
            {local, argument, this, that}
            
            @arg2
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
            
            push constant i
            
            @arg2
            D=A 
            @SP
            A=M
            M=D
            @SP
            M=M+1

            push static i
        
            @{fileN}.arg2
            D=M
            @SP
            A=M
            M=D
            @SP
            M=M+1

            pop static i
        
            @SP
            M=M-1
            A=M
            D=M
            @{fileN}.arg2
            M=D

            push temp i 
            
            @arg2
            D=A
            @addr
            M=D
            @5
            D=A
            @addr
            M=M+D
            A=M
            D=M
            @SP
            A=M
            M=D
            @SP
            M=M+1

            pop temp i 
            
            @arg2
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
            
            push pointer 0
    
            @THIS
            D=M
            @SP
            A=M
            M=D
            @SP
            M=M+1
            
            push pointer 1
    
            @THAT
            D=M
            @SP
            A=M
            M=D
            @SP
            M=M+1

            pop pointer 0
    
            @SP
            M=M-1
            A=M
            D=M    
            @THIS
            M=D

            pop pointer 1
    
            @SP
            M=M-1
            A=M
            D=M    
            @THAT
            M=D
        '''
