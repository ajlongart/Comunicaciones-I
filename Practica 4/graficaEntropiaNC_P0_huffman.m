%% Codificación de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 

%NC y Entropía vs. NC(Promedio de bits codificados)
H = [2.4338 1.8295 0.8591];
NC = [0.89602 0.69446 0.4761];
P0 = [.75 .85 .95];

plot(P0,NC,'b-+');
axis([0.7 1 0 2.5]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 3)');
xlabel('Po');
ylabel('NC y Entropía');
hold on
plot(P0,H,'g-*');
legend('NC','Entropía');
