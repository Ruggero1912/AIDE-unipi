%% Unconstrained optimization -- Exercise 3.3

clear; close all; clc; 


%% The problem: min f(x(1),x(2))= x(1)^4 + x(2)^4 - 2*x(1)^2 + 4*x(1)*x(2)-2*x(2)^2

%% Data

alpha = 0.1;
gamma = 0.9;
tbar = 1;
x0 = [ 10 ; -10];
tolerance = 10^(-3) ;

%% Method: gradient method with inexact line search


X=[ ];

ITER = 1 ;
x = x0 ;

while true
    [v, g] = f(x);
    
    X=[X;ITER,x(1),x(2),v,norm(g)];
    
    % stopping criterion
    if norm(g) < tolerance
        break
    end
    
    % search direction
    d = -g;
    
    % Armijo inexact line search
    t = tbar ;
    while f(x+t*d) > v + alpha*g'*d*t
        t = gamma*t ;
    end
        
    % new point
    x = x + t*d ;
    ITER = ITER + 1 ;
    
end
disp('optimal solution')
x
v
norm(g)
function [v, g] = f(x) 

v = x(1)^4 + x(2)^4 - 2*x(1)^2 + 4*x(1)*x(2)-2*x(2)^2 ;

g = [4*x(1)^3-4*x(1)+4*x(2); 
      4*x(2)^3+4*x(1)-4*x(2)];

end