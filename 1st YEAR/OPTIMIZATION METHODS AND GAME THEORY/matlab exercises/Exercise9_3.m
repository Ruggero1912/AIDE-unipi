%% Exercise 3 - Multiobjective optimization

clear all;

Q1 = [2 0; 0 2] ;
Q2 = [2 0; 0 2] ;
c1=[2 -4]';
c2=[-6 -4]';

A =[ 0 -1; -2 1; 2 1 ];
b = [0 0 4]';

% solve the scalarized problem with  alfa1 in [0,1] 

MINIMA=[ ]; % First column: value of alfa1 

LAMBDA=[ ]; % First column: value of alfa1

for alfa1 = 0 : 0.01 : 1
[x,fval,exitflag,output,lambda] = quadprog(alfa1*Q1+(1-alfa1)*Q2,alfa1*c1+(1-alfa1)*c2,A,b) ; 
MINIMA=[MINIMA; alfa1 x'];
LAMBDA=[LAMBDA;alfa1,lambda.ineqlin'];
end

  plot(MINIMA(:,2),MINIMA(:,3), 'r*')