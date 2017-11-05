%% Modulacion FM y Receptor Superheterodino. LAB2 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 
% Una vez seleccionado arch1.mat, se grafica el mensaje en el
% tiempo y su espectro de magnitud.

%Constantes
fs=110250;
fc=30000;
N=825000;
%t =-fs/2:fs/(length(msg)-1):fs/2;
%t=0:1/fs:N/(fs-1);
t=0:1/fs:(N-1)/fs;

%Gráficas del mensaje arch1 en Tiempo
plot(t,msg);
title('Mensaje arch1 en el Dominio Temporal');
xlabel('Tiempo[s]');
ylabel('Amplitud[V]');

%Gráficas del mensaje Tono en Frecuencia
MSG=fftplot(msg,fs);    %Transf Fourier y gráfica de arch1
title('Espectro de arch1');
xlabel('Frecuencia[Hz]');
ylabel('Amplitud[V]');

%%
%Modulando mensaje usando comando fmmod

W=1000; %Ancho de banda del mensaje arch1.mat
D1=1;   %Coeficiente de desviación
fdelta1=D1*W;	%Desviación frecuencial

XD1=fmmod(msg,fc,fs,fdelta1);
fftplot(XD1,fs);
title('Modulación FM de arch1 para D=1');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


D2=5;   %Coeficiente de desviación
fdelta2=D2*W;

XD2=fmmod(msg,fc,fs,fdelta2); 
fftplot(XD2,fs);
title('Modulación FM de arch1 para D=5');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


D3=10;  %Coeficiente de desviación
fdelta3=D3*W;

XD3=fmmod(msg,fc,fs,fdelta3);  
fftplot(XD3,fs);
title('Modulación FM de arch1 para D=10');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');