%% Modulacion Lineal SSB. LAB1 EC2422 (Comunicaciones I) Universidad Simón Bolivar
%Armando Longart 10-10844
%Yurjelis Briceño 11-11371

%% Generacion del mensaje m(t)
Fs = 2000;      % 2000Hz frecuencia de muestreo.
Fc = 500;       % 500Hz frecuencia de la portadora.
Ac = 5;         % 5V amplitud de la portadora.
Fm = 16;        % 16Hz de frecuencia del mensaje.
Am = 2;         % 2V amplitud del mensaje.
t = 0:1/Fs:10/Fm - 1/Fs; %-Fs/10:1/Fs:10/Fm - 1/Fs;   
BW = 48;         %Ancho de banda del mensaje

m = Am*sawtooth(2*pi*Fm*t, .5);          %Mensaje

[M, f] = espectro(m, t, Fs);		     %Funcion que calcula la Trans. Fourier de m

subplot(2,2,1);
plot(t, m);
xlabel('t');
ylabel('x(t)');
title('Mensaje m(t)');

subplot(2,2,2);
plot(f, M);
xlabel('f [Hz]');
ylabel('M(f)');
title('Espectro del mensaje M(f)');

potencia=mean(m.*m)			    %Potencia del mensaje

%% Modulación USSB: Upper Single Side Band

xssb = (Ac/2)*m.*cos(2*pi*Fc*t)-(Ac/2)*imag(hilbert(m)).*sin(2*pi*Fc*t);	%Definición modulación USSB
																			%Si se quiere LSSB cambiar el
																			%signo a +

[Xssb, fssb] = espectro(xssb, t, Fs);

subplot(2,2,3);
plot(t, xssb);
xlabel('t');
ylabel('x_{USSB}(t)');
title('Mensaje modulado en USSB');

subplot(2,2,4);
plot(fssb, Xssb);
xlabel('f [Hz]');
ylabel('X_{USSB}(f)');
title('Espectro del mensaje modulado en USSB');
Pssb=(Ac/4)*potencia

%% Demodulación usando Detector Síncrono

%Ruido Blanco Gaussiano. Canal con Ruido
relacion_db = 10;               %Valor dado en la práctica
msg_n=awgn(Xssb,relacion_db);   %Ruido blanco gaussiano

%Filtro Pasa Banda. Estos comandos crean el filtro pasabanda
f3dB1 = Fc-BW;
f3dB2 = Fc+BW;
BPF = fdesign.bandpass('N,F3dB1,F3dB2', 10, f3dB1, f3dB2,Fs);
BPF = design(BPF, 'butter');
fvtool(BPF);
msg_n_fil = filter(BPF, msg_n);

[MSG_n, Fn] = espectro(msg_n, t, Fs);
[MSG_n_fil, Fnf] = espectro(msg_n_fil, t, Fs);

subplot(2,1,1);
plot(Fn, abs(MSG_n));
xlabel('f[Hz]');
ylabel('N(f)');
title ('Espectro del ruido sin filtrar');

subplot(2,1,2);
plot(Fnf, abs(MSG_n_fil));
xlabel('f [Hz]');
ylabel('N(f)');
title ('Espectro del ruido filtrado');

md = (xssb+msg_n_fil).*cos(2*pi*Fc*t);  %Expresión del detector síncrono. Esta expresión es lo que extrae el detector

LPF = fdesign.lowpass('N,F3dB', 4, BW, Fs);
LPF = design(LPF, 'butter');
fvtool(LPF);

K = 1;          %Ganancia (unitaria) del dectector. Se puede amplificar o atenuar dicha ganancia
mdf = filter(LPF, md)*K;  %Mensaje detectado

[Md, Fd] = espectro(md, t, Fs);
[Mdf, Fdf] = espectro(mdf, t, Fs);

subplot(2,1,1);
plot(Fd, abs(Md));
xlabel('f [Hz]');
ylabel('X_{D}(f)');
title ('Espectro del mensaje detectado antes LPF');

subplot(2,1,2);
plot(Fdf, abs(Mdf));
xlabel('f [Hz]');
ylabel('X_{D}(f)');
title ('Espectro del mensaje detectado después LPF');

%% Comparacion del mensaje original y el detectado.

figure;
subplot(2,2,1);
plot(t,m,'r-',t,mdf,'g--');
xlabel('t');
ylabel('m(t)');
title('Mensaje');

subplot(2,2,2);
plot(f, abs(M));
xlabel('f [Hz]');
ylabel('M(f)');
title('Espectro del mensaje');

subplot(2,2,3);
plot(t, mdf);
xlabel('t');
ylabel('x_{D}(t)');
title('Mensaje detectado');

subplot(2,2,4);
plot(Fdf, abs(Mdf));
xlabel('f [Hz]');
ylabel('X_{D}(f)');
title('Espectro del mensaje detectado');
