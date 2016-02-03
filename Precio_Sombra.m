%% 3/2/2016 Ejemplo precio sombra
% Determinar sensibilidad con b1 = 4 | b2 = 20 | b3 = 10
% Comprobar el resultado con Matlab y el resultado geométrico
% min Z = 2x1 + 3x2
% 0.5x1 + 0.25x2 <= 4
% x1 + 3x2 >= 20
% x1 + x2 = 10
%% Modelo:
f = [2 3];

A = [0.5 0.25
    -1 -3];
b = [4 -20];

Aeq = [1 1];
beq = [10];
lb = zeros(2,1);

[x,fval,exitflag, output, lambda] = linprog(f,A,b,Aeq,beq,lb)
%% Resultado:
%lambda.ineqlin
%ans =
%    0.0000
%    0.5000
%lambda.eqlin = -1.5 Correspondiente a las igualdades. Si varíamos este
%valor de beq cambiamos la estructura del problema, por eso, mejor subirla
%de poco en poco. 0.1
% El precio sombra correspondiente a la segunda restricción es 0.5. Por
% tanto variando la restriccón b2 mejoraremos la función Z en 0.5.