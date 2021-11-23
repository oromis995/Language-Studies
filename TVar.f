C Test Data types and variables 
C 6 Data Types:  
C   INTEGER: 32 bits 
C   REAL:    32 bits (Single precision) 
C   DOUBLE PRECISION: 64 bits 
C   COMPLEX: a + bi (a and b single precision) 
C   LOGICAL: .TRUE. or .FALSE.  
C   CHARACTER: a char like 'A' or a string like 'BCD' 
C Program-ID:   TVar.f 
C Author:       Kuo-pao Yang 
C OS:           Ubuntu 20 
C Compiler:     GNU Fortran 
C Note: 
C The following instructions are used to 
C       edit, compile, and run this program 
C    $ nano     TVar.f 
C    $ gfortran TVar.f 
C    $ ./a.out 
 
C The first 6 character positions on each line 
C   are reserved for statement labels 
      PROGRAM TVar 
      INTEGER m 
      REAL    n 
      DOUBLE PRECISION o 
      COMPLEX p 
      LOGICAL q 
      CHARACTER r 
      CHARACTER s*3 
      m = 1 
      n = 2 
      o = 3 
      p = (4, 5) 
      q = .FALSE. 
      r = 'A' 
      s = 'BCD' 
      WRITE(*,*) 'm = ', m 
      WRITE(*,*) 'n = ', n 
      WRITE(*,*) 'o = ', o 
      WRITE(*,*) 'p = ', p 
      WRITE(*,*) 'q = ', q 
      WRITE(*,*) 'r = ', r 
      WRITE(*,*) 's = ', s 
      END 
C Input:  No 
C Output: 
C     m =            1 
C     n =    2.0000000 
C     o =    3.0000000000000000 
C     p =  (  4.0000000    ,  5.0000000    ) 
C     q =  F 
C     r = A 
C     s = BCD
