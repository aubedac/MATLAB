%% Problema asignación ordenadores 14/7/2016
%% Modelo:
%     min Z = 3x11 + 8x12 + 10x13 + 5x14 + 2x21 + Mx22 + 9x23 + 4x24
%             + 4x31 + 9x32 + 8x33 + 6x34
%             
%     x11 + x12 + x13 + x14 = 1       x11 + x21 + x31 <= 1
%     x21 + x22 + x23 + x23 = 1       x12 + x22 + x32 <= 1    
%     x31 + x32 + x33 + x34 = 1       x13 + x23 + x33 <= 1
%                                     x14 + x24 + x34 <= 1
%% Resolucion:
M = 0;  %Utilizamos el 0 por que no queremos asignar ningún proceso a ese ordenador. Por eso podemos maximizar.
f=[3 8 10 5 2 M 9 4 4 9 8 6];

Aeq =[1 1 1 1   0 0 0 0     0 0 0 0; 
      0 0 0 0   1 1 1 1     0 0 0 0;
      0 0 0 0   0 0 0 0     1 1 1 1];
  
beq =[1; 1; 1];

A=[1 0 0 0   1 0 0 0    1 0 0 0;
   0 1 0 0   0 1 0 0    0 1 0 0;
   0 0 1 0   0 0 1 0    0 0 1 0;
   0 0 0 1   0 0 0 1    0 0 0 1];

b=[1; 1; 1; 1];

intcon=[1,2,3,4,5,6,7,8,9,10,11,12];

ub = ones(12,1);

lb = zeros(12,1);
[x,fval] = intlinprog(-f,intcon,A,b,Aeq,beq,lb,ub)
%% Solución:
% x =
%      0
%      0
%      0
%      1
%      0
%      0
%      1
%      0
%      0
%      1
%      0
%      0
% fval =
%    -23