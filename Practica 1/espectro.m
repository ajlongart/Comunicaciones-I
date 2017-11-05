%% Función que calcula la transformada de Fourier de las señales continuas.

%Consiste en:
% calcular la TF
% valor absoluto de TF
% centrar la TF

function [MX, f] = espectro(x, t, Fs)

    %X = fftshift(fft(x))/length(x);
    %L = length(t);
    %f = (-L/2:L/2 - 1) * Fs/L;
    
    X=fftshift(fft(x));
    MX=abs(X); 
    N=length(MX);
    MX=MX/N; 
    f=-Fs/2:Fs/N:Fs/2-Fs/N; 

end