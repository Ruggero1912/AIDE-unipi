
%% Constrained optimization -- Exercise 8.3

clear; close all; clc;

%% data 

global Q c A b eps;

Q = [ 1 0 ; 0 2 ] ;
c = [ -3 ; -4 ] ;
A = [-2 1 ; 1 1 ; 0 -1 ];
b = [ 0 ; 4 ; 0 ];

delta = 1e-3 ;
tau = 0.5 ;
eps1 = 1 ;
x0 = [ 1 ; 1 ];

%% barrier method


x = x0;
eps = eps1 ;
m = size(A,1) ;

SOL=[]

while true
    [x,pval] = fminunc(@logbar,x);
    gap = m*eps;
    SOL=[SOL;eps,x',gap,pval];
    if gap < delta
        break
    else
        eps = eps*tau;
    end
end

fprintf('\t eps \t x(1) \t x(2) \t gap \t  pval \n\n');
SOL
%% logarithmic barrier function

function v = logbar(x)

    global Q c A b eps

    v = 0.5*x'*Q*x + c'*x ;
    

    for i = 1 : length(b)
        v = v - eps*log(b(i)-A(i,:)*x) ;
    end

end