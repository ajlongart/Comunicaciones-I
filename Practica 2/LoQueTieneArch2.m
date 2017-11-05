%% Modulacion FM y Receptor Superheterodino. LAB2 EC2422 (Comunicaciones I) Universidad Sim�n Bolivar
%Armando Longart 10-10844
%Yurjelis Brice�o 11-11371

%% 
% Una vez seleccionado arch2.mat, se grafica el mensaje en el
% tiempo y su espectro de magnitud.

%Constantes
fs=110250;
fc=30000;
N=825000;
t =-fs/2:fs/(length(msg)-1):fs/2;
%=0:1/fs:N/(fs-1);

%Gr�ficas del mensaje arch2 en Tiempo
plot(t,msg);
title('Mensaje arch2 en el Dominio Temporal');
xlabel('Tiempo[s]');
ylabel('Amplitud[V]');

%Gr�ficas del mensaje Tono en Frecuencia
MSG=fftplot(msg,fs);    %Transf Fourier y gr�fica de arch1
title('Espectro de arch2');
xlabel('Frecuencia[Hz]');
ylabel('Amplitud[V]');

msgRF=msg;