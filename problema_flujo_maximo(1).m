%% Problema flujo máximo 13/04/2016
% Modelo:
% Podemos usar o intlinprog o linprog
% Max Z = x12 + x13 + x14
% s.t:
% -x12 + x23 + x25 = 0
% -x13 - x23 + x34 + x36 + x35 = 0
% - x14 - x34 + x46 = 0
% -x25 - x35 -x65 + x57 = 0
% -x36 -x46 + x65 + x67 = 0
%% Resolución:
%  x12  x13  x14  x23  x25  x34  x35  x36  x46  x57  x65  x67
f = [1   1    1    0    0    0    0    0    0    0    0    0];

Aeq=[-1  0    0    1    1    0    0    0    0    0    0    0 %2
      0 -1    0   -1    0    1    1    1    0    0    0    0 %3
      0  0   -1    0    0   -1    0    0    1    0    0    0 %4
      0  0    0    0   -1    0   -1    0    0    1   -1    0 %5
      0  0    0    0    0    0    0   -1   -1    0    1    1]; %6
 beq = [0;0;0;0;0];
 lb = zeros(12,1);
 ub =[5;7;4;1;3;2;4;5;4;9;1;6];
 intcon = [1:12];
 [x,fval] = intlinprog(-f,intcon,[],[],Aeq,beq,lb,ub) 
 %[x,fval] = linprog(-f,[],[],Aeq,beq,lb,ub)
 %% Solución:
%  x =
% 
%     3.9798
%     6.5588
%     3.4614
%     0.9798
%     3.0000
%     0.1299
%     4.0000
%     3.4087
%     3.5913
%     8.0000
%     1.0000
%     6.0000
% fval =
%   -14.0000