%% 24/2/2016 Problema de maximización de coste fijo.
%   Modelo:
%   max Z = (50x1 - 45000y1) + (60x2 - 10000y2) + (55x3 - 8000y3) + (80x4
%   - 9000y4)
%   
%   10x1 + 15x2 + 5x3 + 14x4 <= 20000
%   x1 - My1 <= 0           x3 - My3 <= 0
%   x2 -  My2 <= 0          x4 - My4 <= 0
%   y3 + y4 >= y1
%% Resolución:
M = 9999;
%    x1   x2   x3   x4   y1   y2     y3     y4
f=[  50   60   55   80  -4500 -10000 -8000  -90000];

A =[ 10   15   5    14    0     0      0      0
     1     0   0     0   -M     0      0      0 
     0     1   0     0    0    -M      0      0
     0     0   1     0    0     0     -M      0
     0     0   0     1    0     0      0     -M
     0     0   0     0    0     1     -1     -1];
 b =[20000; 0; 0; 0; 0; 0];
 
 intcon = [5,6,7,8];
 lb = zeros(8,1);
 ub = [inf inf inf inf 1 1 1 1];
 
[x,fval] = intlinprog(-f,intcon,A,b,[],[],lb,ub)
%% Solucion:
% x =
%    1.0e+03 *
%          0
%          0
%      4.0000
%          0
%          0
%          0
%     0.0010
%          0
% fval =
%      -212000