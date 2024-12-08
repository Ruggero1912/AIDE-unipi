%% Unconstrained optimization -- Exercise 3.2

clear; close all;  

%% data 


% min f(x(1),x(2))= 2*x(1)^4 + 3*x(2)^4 + 2*x(1)^2 + 4*x(2)^2 + x(1)*x(2) - 3*x(1) - 2*x(2)

alpha = 0.1;
gamma = 0.9;
tbar = 1;
x0 = [0;0];
tolerance = 10^(-3) ;

%% method

disp('Gradient method with Armijo inexact line search');



x = x0 ;

for ITER=1:100
    [v, g] = f(x);
    
    % stopping criterion
    if norm(g) < tolerance
        break
    end
    
    % search direction
    d = -g;
    
    % Armijo inexact line search
    t = tbar ;
    while (f(x+t*d) > v + alpha*g'*d*t)
        t = gamma*t ;
    end
        
    % new point
    x = x + t*d; 
    
end

x
v
norm(g)

function [v, g] = f(x) 

v = 2*x(1)^4 + 3*x(2)^4 + 2*x(1)^2 + 4*x(2)^2 + x(1)*x(2) - 3*x(1) - 2*x(2)  ;

g = [ 8*x(1)^3 + 4*x(1) + x(2) - 3;
      12*x(2)^3 + 8*x(2) + x(1) - 2];

end