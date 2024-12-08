clear; close all; 


%% Problema definition

 
Q=[6 0 -4 0;0 6 0 -4;-4 0  6 0;0 -4 0 6]

c = [1 -1 2 -3]';

disp('eigenvalues of  Q:')
eig(Q)

%% Parameters

x0 = [0 0 0 0]';
Tolerance = 10^(-6);

%% Gradient method with exact line search


% starting point
x = x0 ;


X=[];
for ITER=1:1000
    v = 0.5*x'*Q*x + c'*x;
    g = Q*x + c ;
    X=[X;ITER,x',v,norm(g)];

    % stopping criterion
    if norm(g) < Tolerance
        break
    end
    
    %   search direction
    d = -g;
    
    %   exact line search
    t = norm(g)^2/(d'*Q*d) ;
        
    %   new point
    x = x + t*d ;
end
disp('optimal solution')
x
disp('optimal value')
v
disp('gradient norm at the solution')

norm(g)



