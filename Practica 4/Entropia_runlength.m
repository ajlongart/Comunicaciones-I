%% Codificación de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 

%Entropía run-length
%P0=0.85;
P0=0.75;
%P0=0.95;
H=-(28*P0*log2(P0)+3*(1-P0)*log2(1-P0)) %Depende de la secuencia de la fuente 
