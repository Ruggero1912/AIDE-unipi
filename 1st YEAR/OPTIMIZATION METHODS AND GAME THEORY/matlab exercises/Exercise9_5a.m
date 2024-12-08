% EXAMPLE 5 (a) - Multiobjective optimization - Weak Minima

clear all

c=[0, 0, 0, 0, 0, 0, -1];

A=[ 0 0 0 -1 0 0 1; 0 0 0 0 -1 0 1 ;
    0 0 0 0 0 -1 1; 1 2 -3 1 0 0 0 ; 
    -1 -1 -1 0 1 0 0; -4 -2 1 0 0 1 0; 
    1 1 1 0 0 0 0; 0 0 1 0 0 0 0]
b= [0;0;0;-10; -10;-15;10;5]
Aeq=[ ];
beq=[ ];
lb= [zeros(6,1); -Inf]

[X,FVALWEAK]=linprog(c,A,b,[],[],lb,[])