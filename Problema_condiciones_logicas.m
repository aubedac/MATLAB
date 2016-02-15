%% 15/2/2016 "Problema de la mochila" condiciones lógicas para cargar.
% Modelización:
% Z = 3x1 + 4x2 + 5x3 + 6x4 + 7x5 + 8x6 + 9x7 + 10x8 + 11x9 + 12x10
%   s.t:
% 13x1 + 14x2 + 15x3 + 16x4 + 17x5 + 18x6 + 19x7 + 20x8 + 21x9 + 22x10 <=101
%  x1 + x2 + x3 <= 1                x4 + x5 >= 1  
%  x10 <= x3                        x5 + x6 >= x2
%  x1 + x2 >= x6
%% Resolución:
f = [3 4 5 6 7 8 9 10 11 12];

A = [ 13  14  15  16  17  18 19 20 21 22
      1    1   1   0   0   0  0  0  0  0
      0    0  -1   0   0   0  0  0  0  1
     -1   -1   0   0   0   1  0  0  0  0
      0    0   0  -1  -1   0  0  0  0  0
      0    1   0   0  -1  -1  0  0  0  0];
b =[101; 1; 0; 0; -1; 0];
intcon = [1,2,3,4,5,6,7,8,9,10];
lb = zeros(10,1);
ub = ones(10,1);
[x,fval] = intlinprog(-f,intcon,A,b,[],[],lb,ub)
%% Solución:
%x =
%         0
%         0
%    1.0000
%         0
%    1.0000
%         0
%         0
%    1.0000
%    1.0000
%    1.0000
%fval =
%  -45.0000