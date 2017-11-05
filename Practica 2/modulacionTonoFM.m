%% Modulacion FM y Receptor Superheterodino. LAB2 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371
%% 
% Gráfica del mensaje tono en el tiempo y su espectro de magnitud.

%Constantes
fs=110250;
fm=500;
fc=30000;
N=825000;
Am=2;
%t =-fs/2:fs/(length(msg)-1):fs/2;
%t=0:1/fs:N/(fs-1);
t=0:1/fs:(N-1)/fs;

%Gráficas del mensaje Tono en Tiempo
plot(t,msg);
title('Mensaje Tono en el Dominio Temporal');
xlabel('Tiempo[s]');
ylabel('Amplitud[V]');

%Gráficas del mensaje Tono en Frecuencia
MSG=fftplot(msg,fs);    %Transf Fourier y gráfica del tono
title('Espectro del Tono');
xlabel('Frecuencia[Hz]');
ylabel('Amplitud[V]');

%%
%Modulación FM con fmmod. La frecuencia del tono usado como
%mensaje es constante. En consecuencia se varía la amplitud.

varAm1=0.125;  %beta=1. Las variaciones de Am se despejaron de
               %beta = Am*fdelta/fm con beta el indice de mod FM
               %que queremos
varAm2=0.25;   %beta=2 
varAm3=0.625;  %beta=5
fdelta=4000;    %Se asume este valor

%Señales con la variación de amplitud de beta
xAM1=varAm1*cos(2*pi*fm*t);
xAM2=varAm2*cos(2*pi*fm*t); 
xAM3=varAm3*cos(2*pi*fm*t); 

%Modulación con beta=1
XvarAM1=fmmod(xAM1,fc,fs,fdelta);    %Comando modulacionFM MATLAB 
fftplot(XvarAM1,fs);
title('Modulación FM del Tono para beta=1 y Amplitud varAm1=0.125');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


XvarAM2=fmmod(xAM2,fc,fs,fdelta);    %Comando modulacionFM MATLAB 
fftplot(XvarAM2,fs);
title('Modulación FM del Tono para beta=2 y Amplitud varAm1=0.625');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


XvarAM3=fmmod(xAM3,fc,fs,fdelta);    %Comando modulacionFM MATLAB
fftplot(XvarAM3,fs);
title('Modulación FM del Tono para beta=5 y Amplitud varAm1=0.8');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');
    
    
    
%%
%Modulación FM con fmmod. La amplitud del tono usado como
%mensaje es constante. En consecuencia se varía la frecuencia.

varfm1=8000;   %beta=1;  Las variaciones de fm se despejaron de
               %beta = Am*fdelta/fm con beta el indice de mod FM
               %que queremos
varfm2=4000;    %beta=2; 
varfm3=1600;    %beta=5;
fdelta=4000;    %Se asume este valor. El valor de beta =Am*fdelta/fm

%Señales con la variación de frecuencia de beta
xfAM1=Am*cos(2*pi*varfm1*t);
xfAM2=Am*cos(2*pi*varfm2*t); 
xfAM3=Am*cos(2*pi*varfm3*t); 

%Modulación con beta=1
XvarfAM1=fmmod(xfAM1,fc,fs,fdelta);    %Comando modulacionFM MATLAB 
fftplot(XvarfAM1,fs);
title('Modulación FM del Tono para beta=1 y Frecuencia varfm1=8000');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


XvarfAM2=fmmod(xfAM2,fc,fs,fdelta);    %Comando modulacionFM MATLAB 
fftplot(XvarfAM2,fs);
title('Modulación FM del Tono para beta=2 y Frecuencia varfm1=4000');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');


XvarfAM3=fmmod(xfAM3,fc,fs,fdelta);    %Comando modulacionFM MATLAB
fftplot(XvarfAM3,fs);
title('Modulación FM del Tono para beta=5 y Frecuencia varfm1=1600');
xlabel('frecuencia [Hz]');
ylabel('Amplitud [V]');
