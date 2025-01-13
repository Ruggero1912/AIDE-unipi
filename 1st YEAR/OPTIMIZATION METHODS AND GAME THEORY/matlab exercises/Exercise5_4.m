close all; clear; clc;

%% data 

A=[2.650 8.95
    3.44 5.33
    3.4  6.16
    5.2  8.2
    7.63 9.47
    1.50 3.33
    3.98 8.31
    1.85 5.00
    1.26 8.64
    3.89 4.90
    1.9  8.61
    1.25 6.45
    4.37 6.12
    0.42 8.35
    3.6  6.61
    7.8  9.87
    4.85 8.73
    6.77 7.93
    2.37 4.77
    0.87 3.08
    2.3  9.09
    2.55 9.04
    3.37 6.18
    0.86 3.75
    1.87 8.10
    0.94 5.14
    0.43  7.57
    2.269 7.13];

B=[7.7030  5.0965
   5.7670 2.8791
   3.6610 1.5002
   9.4633 6.5084
   9.8221  1.9383
   8.2874  4.9380
   5.9078  0.4489
   4.9810  0.5962
   5.1516 0.5319
   8.4363 5.9467
   8.4240 4.9696
   7.6240 1.798
   3.4473 0.2725
   9.1046 3.27
   6.9110 0.17
   7.5051 3.31
   6.328  4.15
   6.15   1.505
   8.38  7.26 
   5.28  2.75
   5.14  1.93
   5.88  1.00
   9.51  1.32
   6.51  1.46
   9.86  4.36
   6.00  8.00 ];


nA = size(A,1);
nB = size(B,1);

% training points
T = [A ; B]; 

%% Linear SVM - dual model (soft margin) - Exercise 5.4

% define the problem
C = 10 ;

y = [ones(nA,1) ; -ones(nB,1)]; % labels
l = length(y);
Q = zeros(l,l);
for i = 1 : l
    for j = 1 : l
        Q(i,j) = y(i)*y(j)*(T(i,:))*T(j,:)' ;
    end
end

% solve the problem
la = quadprog(Q,-ones(l,1),[],[],y',0,zeros(l,1),C*ones(l,1));

% compute vector w
wD = zeros(2,1);
for i = 1 : l
   wD = wD + la(i)*y(i)*T(i,:)'; 
end

% compute scalar b
indpos = find(la > 10^(-3));
ind = find(la(indpos) < C - 10^(-3));
i = indpos(ind(1));
bD = 1/y(i) - wD'*T(i,:)';

%% plot the solution 

xx = 0:0.1:10;
uuD = (-wD(1)/wD(2)).*xx - bD/wD(2);
vvD = (-wD(1)/wD(2)).*xx + (1-bD)/wD(2);
vvvD = (-wD(1)/wD(2)).*xx + (-1-bD)/wD(2);


plot(A(:,1),A(:,2),'bo',B(:,1),B(:,2),'r*',...
     xx,uuD,'k-',xx,vvD,'b-',xx,vvvD,'r-','Linewidth',1)
axis([0 10 0 10])
title('Optimal separating hyperplane with soft margin')

% Compute the support vectors

supp = find(la > 10^(-3));
suppA = supp(supp <= nA);
suppB = supp(supp > nA);

% Compute the errors xi
for i=1:l
    if (la(i) > C-0.001 & la(i)< C+0.001) 
        xi(i)= 1 - y(i)*(T(i,:)*wD +bD);
    else xi(i)=0;
    end
end