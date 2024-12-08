%Example 5b - Multiobjective optimization - Minima

clear all

c=[0, 0, 0, -1, -1, -1]

A=[1 2 -3 1 0 0 ; -1 -1 -1 0 1 0 ; 
    -4 -2 1 0 0 1 ; 1 1 1 0 0 0; 0 0 1 0 0 0]
b= [-10; -10;-15;10;5]
Aeq=[ ];
beq=[ ];
lb= zeros(6,1)
ub= [ ];

[x,FvalMin]=linprog(c, A, b,[ ],[ ],lb,ub)