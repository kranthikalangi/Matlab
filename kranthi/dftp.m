clc;
close all;
clear all;
x=input('enter the sequence');
N=length(x);
X=zeros(1,N);
for k=1:N
    for n=1:N
        X(k)=X(k)+x(n).*exp((-1j*2*pi*(k-1)*(n-1))/N);
    end
end
disp(X);
disp(fft(x));