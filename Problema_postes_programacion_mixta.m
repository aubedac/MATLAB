%% 17/2/2016 Problema de programacion entera mixta
%   Problema de elección de qué tipo de postes contruimos.
%   Si se produce 1000 de un tipo de poste, o mejor no producir.
%%
M = 999999;
f =[ 2000 3000 4000 0 0 0];

A = [1.5  3   5   0   0   0
     30   25 40   0   0   0
     -1   0   0   M   0   0
      0  -1   0   0   M   0
      0   0  -1   0   0   M
      1   0   0  -M   0   0
      0   1   0   0  -M   0
      0   0   1   0   0  -M
      0   0   0   1   1   1];
      
b =[6000; 60000; -1000 + M; -1000 + M; -1000 + M; 0; 0; 0; 3];
lb = zeros(6,1);
ub = [inf inf inf 1 1 1];
intcon = [4,5,6];

[x,fval] = intlinprog(-f,intcon,A,b,[],[],lb,ub);
%% Solucion:
% x =
%    1.0e+03 *
% 
%          0
%     2.0000
%          0
%          0
%     0.0010
%          0
% fval =
% 
%   -6.0000e+06