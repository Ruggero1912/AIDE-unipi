%% Exercise 1 - Multiobjective optimization

close all; clear; clc;


%% Problem data

% min Cx
% Ax <= b

C = [ 1  -1
       1  1] ;
  
 A =[ -2    1
    -1     -1
     5    -1];
 b = [ 0
       0
       6] ;
 
% % solve the scalarized problem with 0 < alfa < 1

MINIMA=[ ];

LAMBDA=[ ];

 for alfa = 0.01 : 0.01 : 0.99
     [x,fval,exitflag,output,lambda] = linprog(alfa*C(1,:)+(1-alfa)*C(2,:),A,b) ;
     plot(x(1),x(2),'g*');
     MINIMA=[MINIMA;alfa, x'];
     LAMBDA=[LAMBDA;alfa,lambda.ineqlin'];
     hold on
     grid on
 end
% 
% % solve the scalarized problem with alfa = 0
%
figure;
 alfa = 0;
 [xalfa0,f0,exitflag,output,lambda0] = linprog(alfa*C(1,:)+(1-alfa)*C(2,:),A,b) ;
 plot(xalfa0(1),xalfa0(2),'r*');
 hold on
 grid on
% 
% % solve the scalarized problem with alfa = 1
% 
 alfa = 1;
 [xalfa1,f1,exitflag,output,lambda1] = linprog(alfa*C(1,:)+(1-alfa)*C(2,:),A,b) ;
 plot(xalfa1(1),xalfa1(2),'r*');
 hold on
 grid on
% 
 





