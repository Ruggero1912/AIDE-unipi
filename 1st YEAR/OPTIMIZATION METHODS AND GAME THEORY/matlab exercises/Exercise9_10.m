%% Example 10 (Goal method)

clear all

 C = [1 -1; 1 1] ;
 
 A =[ -2 1; -1 -1; 5 -1 ]; 
 
 b = [0 0 6]';
 
 % find the ideal point z
 z=[0,0]';
for i = 1:2 
    [a,z(i)]=linprog(C(i,:)',A,b); 
end

fprintf('Ideal point')

z

% solve the quadratic problem with norm q=2

X=quadprog(C'*C,-C'*z,A,b)

 

