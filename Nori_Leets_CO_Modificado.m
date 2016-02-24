%% 24/2/2016 Problema de la Nori & Leets.CO. modificado
% Modelización:
%   min Z = (8x1 + 2y1) + (10x2 + 2y2) + 7x3 + 11x5 + 10x2 + 6x4 + 9x6
% 12x1 + 9x2 + 25x3 + 20x4 + 17x5 + 13x6 >= 60
% 35x1 + 42x2 + 18x3 + 31x4 + 56x5 + 49x6 >= 150
% 37x1 + 53x2 + 28x3 + 24x4 + 29x5 + 20x6 >= 125
% x1 - My1 <= 0
% x2 - My2 <= 0
%% Resolución:
%x1 x2 x3 x4 x5 x6 y1 y2
M = 999;
f = [8 10 7 6 11 9 2 2];
A =[-12 -9 -25 -20 -17 -13   0  0
    -35 -42 -18 -31 -56 -49  0  0
    -37 -53 -28 -24 -29 -20  0  0
      1   0   0   0   0   0 -M  0
      0   1   0   0   0   0  0 -M];
  
b =[-60; -150; -125; 0; 0];

lb = zeros(8,1);
ub = ones(8,1);
intcon = [7,8];
[x,fval] = intlinprog (f,intcon, A, b,[],[],lb, ub);
%% Solucion:
%fval =
%   34.7223
%x =
%         0  x1
%    1.0000  x2
%    0.5049  x3
%    1.0000  x4
%    1.0000  x5
%    0.2431  x6
%         0  y1
%    1.0000  y2