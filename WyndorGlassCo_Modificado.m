%% 22/2/2016 problema de la Wyndor Glass Modificado
% funciones con N posibles valores resultado
% Enunciado:
%   max Z 3x1 + 5x2
%   x1 <= 4
%   2x2 <= 12
%   3x1 + 2x2 <= 6y1 + 12y2 +18y3
%   x1 >= 0
%   x2 >= 0
%% Modelo:
f = [ -3 -5 0 0 0];
    A = [1 0  0   0    0 
         0 2  0   0    0
         3 2 -6  -12  -18];
    b = [4 12 0];
    Aeq = [0 0 1 1 1];
    beq = [1];
    lb = zeros(5,1);
    ub = [inf inf 1 1 1];
    [x,fval,exitflag,output,lambda] = linprog(f,A,b,Aeq,beq,lb,ub)
%% Solución
% x =
%     2.0000
%     6.0000
%     0.0000
%     0.0000
%     1.0000
% fval =
%   -36.0000