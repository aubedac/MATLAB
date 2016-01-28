%% 27/1/2016 Problema de la Wyndor-Glass.Co
%   Enunciado:
%   max Z 3x1 + 5x2
%   x1 <= 4
%   2x2 <= 12
%   3x1 + 2x2 <= 18
%   x1 >= 0
%   x2 >= 0
%% Modelo:
    f = [ -3 -5];
    A = [1 0
         0 2
         3 2];
    b = [4 12 18];
    lb = zeros(2,1);
    [x,fval] = linprog(f,A,b,[],[],lb)
%% Solución:
x =

    2.0000
    6.0000
fval =

   -36