%% Codificación de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 

%Desempeño de NC de run-length en función de P0

P0 = [0.75 0.85 0.95];
NC2 = [1.0762 0.95224 0.81751];
NC3 = [1.0841 0.85728 0.61491];
NC4 = [1.1956 0.84724 0.47602];
NC5 = [1.3751 0.92182 0.40581];
NC6 = [1.5626 1.0522 0.40131];

plot(P0,NC2,'b-*'), hold on;
axis([0.7 1 0 2]);
title('Grafica NC vs Po de código run-length para distintos valores de m');
xlabel('Po');
ylabel('NC');
plot(P0,NC3,'g-*'), hold on;
plot(P0,NC4,'r-*'), hold on;
plot(P0,NC5,'c-*'), hold on;
plot(P0,NC6,'m-*'), hold on;

legend('m=2','m=3','m=4','m=5','m=6');