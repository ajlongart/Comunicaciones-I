%% Codificaci�n de Fuentes Discretas. LAB4 EC2422 (Comunicaciones I) Universidad Sim�n Bolivar
%Armando Longart 10-10844
%Yurjelis Brice�o 11-11371
%% 

%Entrop�a run-length
%P0=0.85;
P0=0.75;
%P0=0.95;
H=-(28*P0*log2(P0)+3*(1-P0)*log2(1-P0)) %Depende de la secuencia de la fuente 
