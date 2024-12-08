%% Exercise 4 - Multiobjective optimization - nonlinear constraints 

clear all;

% solve the scalarized problem with 0 =< alfa1 <= 1 

MINIMA=[ ]; % First column: value of alfa1 
LAMBDA=[ ];

for alfa1 = 0 : 0.01 : 1
    
    FUN=@(x) (2*alfa1-1)*x(1)+x(2);
    
    NONLINCON= @(x) const(x);

    [x,fval,exitflag,output,lambda] = fmincon(FUN,[0;0],[],[],[],[],[],[],NONLINCON) ; 
 
 MINIMA=[MINIMA; alfa1, x'];
 LAMBDA=[LAMBDA; alfa1, lambda.ineqnonlin]; 
end

plot(MINIMA(:,2),MINIMA(:,3))   

function [C,Ceq]=const(x)
C=x(1)^2 +x(2)^2 -1;
Ceq=[];
end

