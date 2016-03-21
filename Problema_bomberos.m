%% Problema asignación parques de bomberos. 16/3/2016
%  Modelo:
%  Min Z = 300x1 + 450x2 + 600x3 + 150x4 + 700x5 + 100x6
%  
%  x1 + x2 >= 1           x3 + x4 + x5 >= 1
%  x1 + x2 + x6 >= 1      x4 + x5 + x6 >= 1
%  x3 + x4 >= 1           x2 + x5 + x6 >= 1
%% Resolución:   
f = [300 450 600 150 700 100];

A=[ -1  -1  0  0  0  0  
    -1  -1  0  0  0 -1
     0   0 -1 -1  0  0
     0   0 -1 -1 -1  0
     0   0  0 -1 -1 -1
     0  -1  0  0 -1 -1];
 
 b = [-1 -1 -1 -1 -1 -1];
 
 lb = zeros(6,1);
 ub = ones(6,1);
 intcon = [1,2,3,4,5,6];
 
 [x,fval] = intlinprog(f,intcon,A,b,[],[],lb,ub)
 %% Solución:
%  x =
%      1
%      0
%      0
%      1
%      0
%      1
% fval =
%    550