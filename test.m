syms L1
syms L2
syms L3
syms L4
syms L5
syms L6
syms L7
syms L8
syms th1
syms th2
syms th3
syms th4
syms th5
syms th6
syms th7
syms th8
assume(th1,'real')
assume(th2,'real')
assume(th3,'real')
assume(th4,'real')
assume(th5,'real')
assume(th6,'real')
assume(th7,'real')
assume(th8,'real')
assume(L1,'real')
assume(L2,'real')
assume(L3,'real')
assume(L4,'real')
assume(L5,'real')
assume(L6,'real')
assume(L7,'real')
assume(L8,'real')



S1 = [0 0 1 0 0 0]';
S2 = [0 0 1 0 -L1 0]';
S3 = [0 0 1 0 -L1-L2 0]';
S4 = [0 0 1 0 -L1-L2-L3 0]';
S5 = [0 0 1 0 -L1-L2-L3-L4 0]';
S6 = [0 0 1 0 -L1-L2-L3-L4-L5 0]';
S7 = [0 0 1 0 -L1-L2-L3-L4-L5-L6 0]';
S8 = [0 0 1 0 -L1-L2-L3-L4-L5-L6-L7 0]';

M = [1 0 0 L1+L2+L3+L4+L5+L6+L7+L8;...
    0 1 0 0;...
    0 0 1 0;...
    0 0 0 1];

M09 = [1 0 0 L1+L2+L3+L4+L5+L6+L7+L8;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M08 = [1 0 0 L1+L2+L3+L4+L5+L6+L7;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M07 = [1 0 0 L1+L2+L3+L4+L5+L6;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M06 = [1 0 0 L1+L2+L3+L4+L5;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M05 = [1 0 0 L1+L2+L3+L4;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M04 = [1 0 0 L1+L2+L3;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M03 = [1 0 0 L1+L2;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];


M02 = [1 0 0 L1;...
    0 1 0 0 ;...
    0 0 1 0;...
    0 0 0 1 ];

M01 = eye(4);
Slist = [S1,S2,S3,S4,S5,S6,S7,S8];
thetastart = [th1,th2,th3,th4,th5,th6,th7,th8]';

matS1 = MatrixExp6(VecTose3(S1)*thetastart(1));
matS2 = MatrixExp6(VecTose3(S2)*thetastart(2));
matS3 = MatrixExp6(VecTose3(S3)*thetastart(3));
matS4 = MatrixExp6(VecTose3(S4)*thetastart(4));
matS5 = MatrixExp6(VecTose3(S5)*thetastart(5));
matS6 = MatrixExp6(VecTose3(S6)*thetastart(6));
matS7 = MatrixExp6(VecTose3(S7)*thetastart(7));
matS8 = MatrixExp6(VecTose3(S8)*thetastart(8));

Js = JacobianSpace(Slist, thetastart');