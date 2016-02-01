%% 1/2/2016 Problema de la Union Airways
% Optimización de personal en determinadas franjas horarias. Minimización
% de coste.
% Modelización:
%   min Z = 170x1 + 160x2 + 175x3 + 180x4 + 195x5
% x1 >= 48
% x1 + x2 >= 79
% x1 + x2 >= 65
% x1 + x2 + x3 >= 87
% x2 + x3 >= 64
% x3 + x4 >= 73
% x3 +x4 >= 82
% x4 >= 43
% x4 + x5 >= 52
% x5 >= 15
%% Resolución:
f = [170 160 175 180 195];

A = [1  0  0  0  0
     1  1  0  0  0
     1  1  0  0  0
     1  1  1  0  0
     0  1  1  0  0
     0  0  1  1  0
     0  0  1  1  0
     0  0  0  1  0
     0  0  0  1  1
     0  0  0  0  1];
b = [48; 79; 65; 87; 64; 73; 82; 43; 52; 15];
lb = zeros(6,1);

[x,fval] = linprog (f,-A,-b,[],[],lb)

%% Solución
%x =
%   48.0000
%   31.0000
%   39.0000
%   43.0000
%   15.0000
%fval =
%   3.0610e+04