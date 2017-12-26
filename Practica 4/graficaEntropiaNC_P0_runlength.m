%% Codificación de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 

%NC(Promedio de bits codificados) y Entropía vs. Po

%%
%m=3
figure
H = [10.2157 6.8119 2.6167];
NC3 = [1.0841 0.85728 0.61491];
P0 = [.75 .85 .95];

plot(P0,NC3,'b-+');
axis([0.7 1 0 15]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 3)');
xlabel('Po');
ylabel('NC y Entropía');
hold on
plot(P0,H,'r -*');
legend('NC','Entropía');
%%
%m=2
figure
H = [10.2157 6.8119 2.6167];
NC2 = [1.0762 0.95224 0.81751];
P0 = [.75 .85 .95];

plot(P0,NC2,'b-+');
axis([0.7 1 0 15]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 2)');
xlabel('Po');
ylabel('NC y Entropia');
hold on
plot(P0,H,'r -*');
%%
%m=4
figure
H = [10.2157 6.8119 2.6167];
NC4 = [1.1956 0.84724 0.47602];
P0 = [.75 .85 .95];

plot(P0,NC4,'b-+');
axis([0.7 1 0 15]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 4)');
xlabel('Po');
ylabel('NC y Entropia');
hold on
plot(P0,H,'r -*');
%%
%m=5
figure
H = [10.2157 6.8119 2.6167];
NC5 = [1.3751 0.92182 0.40581];
P0 = [.75 .85 .95];

plot(P0,NC5,'b-+');
axis([0.7 1 0 15]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 5)');
xlabel('Po');
ylabel('NC y Entropia');
hold on
plot(P0,H,'r -*');
%%
%m=6
figure
H = [10.2157 6.8119 2.6167];
NC6 = [1.5626 1.0522 0.40131];
P0 = [.75 .85 .95];

plot(P0,NC6,'b-+');
axis([0.7 1 0 15]); %axis[x2 x1 y2 y1];
title('Grafica NC y Entropía vs Po. (NBIT=5000 y longitud 6)');
xlabel('Po');
ylabel('NC y Entropia');
hold on
plot(P0,H,'r -*');