%% Codificaci�n de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Sim�n Bolivar
%Armando Longart 10-10844
%Yurjelis Brice�o 11-11371
%% 

%NC y Entrop�a vs. NC(Promedio de bits codificados)
H = [2.4338 1.8295 0.8591];
NC = [0.89602 0.69446 0.4761];
P0 = [.75 .85 .95];

plot(P0,NC,'b-+');
axis([0.7 1 0 2.5]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entrop�a vs Po. (NBIT=5000 y longitud 3)');
xlabel('Po');
ylabel('NC y Entrop�a');
hold on
plot(P0,H,'g-*');
legend('NC','Entrop�a');
