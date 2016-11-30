%% Ejercicio practica Estadística.
% Practica estadistica referente a probabilidad condicionada y teorema de Bayes.
% Modelización de una baraja de cartas, con el correspondiente número de extracciones.
%% 1) Escoger maximo realizaciones:
numero_realizaciones = input('Ingrese numero maximo de realizaciones: ');
%% 2) Procesado de datos:
extraccion =[];
k = 1;
for i = 20:50:numero_realizaciones;
    for j = 1:1:i;
        extraccion(j) = randi([1,40]);
    end;
    
    tabla_Frec = tabulate(extraccion);
    frecuencia_Carta(k,1) = tabla_Frec(3,3);
    acumulado_pct3 = 0;
    acumulado_pctEspadas = 0;
    h = 1;
    l = 1;
    
    while h <= 40; % Bucle para los números múltiplos de 3. Contamos con una baraja de numeros consecutivos.
        if h == 1 || h == 3 || h == 6 || h == 9 || h == 12 || h == 15 || h == 18 || h == 21 || h == 24 || h == 27 || h == 30 || h == 33 || h == 36 || h == 39;
            acumulado_pct3 = acumulado_pct3 + tabla_Frec(h,3);
        end;
    h = h + 1;
    end;
    
    while l <= 40; % Bucle para los números correspondientes al palo espadas, consideramos de 1-10.
        if l == 1 || l == 2 || l == 3 || l == 4 || l == 5 || l == 6 || l == 7 || l == 8 || l == 9 || l == 10;
            acumulado_pctEspadas = acumulado_pctEspadas + tabla_Frec(l,3);
        end;
    l = l + 1;
    end;
    
    frecuencia_mult3(k,1) = acumulado_pct3;
    frecuencia_espadas(k,1) = acumulado_pctEspadas;
    condicionada1(k,1) = (acumulado_pctEspadas) / (acumulado_pct3); % Espadas dado que el múltiplo es 3
    condicionada2(k,1) = (acumulado_pct3) / (acumulado_pctEspadas);
    k = k + 1;
end;
%% 3) Gráficas separadas por sucesos:
%% Gráfica para el suceso para una carta aleatoria, en nuestro casa número 3.
figure(1);
% suplot(3,2,1)
realizaciones = [20:50:numero_realizaciones];
plot(realizaciones, frecuencia_Carta, 'b--o');
xlabel('Realizaciones');
ylabel('Frecuencia relativa (%)')
title('Suceso C');
grid on;
axis tight;
%% Gráfica para el suceso sacar una carta múltiplo de 3.
figure(2);
% suplot(3,2,2)
realizaciones = [20:50:numero_realizaciones];
plot(realizaciones, frecuencia_mult3, 'b--o');
xlabel('Realizaciones');
ylabel('Frecuencia relativa (%)')
title('Suceso A');
grid on;
axis tight;
%% Gráfica para el suceso carta extraída del palo de espadas.
figure(3);
% suplot(3,2,3)
realizaciones = [20:50:numero_realizaciones];
plot(realizaciones, frecuencia_espadas, 'b--o');
xlabel('Realizaciones');
ylabel('Frecuencia relativa (%)')
title('Suceso B');
grid on;
axis tight;
%% Gráfica para el suceso sacar espadas sabiendo que es 3.
figure(4);
% suplot(3,2,4)
realizaciones = [20:50:numero_realizaciones];
plot(realizaciones, condicionada1, 'b--o');
xlabel('Realizaciones');
ylabel('Frecuencia relativa (%)')
title('Suceso B/A');
grid on;
axis tight;
%% Gráfica para el suceso sacar 3 sabiendo que son espadas.
figure(5);
% suplot(3,2,5)
realizaciones = [20:50:numero_realizaciones];
plot(realizaciones, condicionada2, 'b--o');
xlabel('Realizaciones');
ylabel('Frecuencia relativa (%)')
title('Suceso A/B');
grid on;
axis tight;
