%% Codificación de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 

% Gráficas de NC vs. P0 en códigos run-length y Huffman para 3 bits

P0 = [0.75 0.85 0.95];
NC_H = [0.89602 0.69446 0.4761];
NC_RL = [1.0841 0.85728 0.61491];
H_H = [2.4338 1.8295 0.8591];
H_RL = [10.2157 6.8119 2.6167];

figure, 
plot(P0,NC_H), hold on;
axis([0.7 1 0 15]);
title('Grafica NC (Huffman y run-length) y entropía vs Po. Longitud 3');
xlabel('Po');
ylabel('NC y entropía');
plot(P0,NC_RL,'r'), hold on;
plot(P0,H_H,'g'), hold on;
plot(P0,H_RL,'y'), hold on;
legend('Huffman','Run-Length', 'Entropía Huffman', 'Entropía Run Lenght');