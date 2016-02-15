%% 15/2/2016 Problema de la Manufacturing Calofornia CO.
% Modelo:
%   Z = 9x1 + 5x2 + 6x3 + 4x4
%   st
%       6x1 + 3x2 + 5x3 + 2x4 <= 10
%       x3 + x4 <= 1
%       x3 - x1 >= 0
%       x4 - x2 >= 0
%% Resolucion:
f = [9 5 6 4];
A = [6  3  5  2 
    -1  0  1  0
     0 -1  0  1
     0  0  1  1];
b = [10 0 0 1];
lb = zeros(4,1);
ub = ones(4,1);
intcon = [1,2,3,4];
[x, fval] = intlinprog(-f,intcon,A,b,[],[],lb,ub)
%% Solución:
%x =
%     1
%     1
%     0
%     0
%fval =
%   -14