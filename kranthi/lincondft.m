clc;
close all;
clear all;
x=input('enter the sequence');
y=input('enter the sequence');
N1=length(x);
N2=length(y);
N=N1+N2-1;
a=[x,zeros(1,N-N1)];
b=[y,zeros(1,N-N2)];
X=zeros(1,N);
Y=zeros(1,N);
for k=1:N
    for n=1:N
        X(k)=X(k)+a(n).*exp((-1j*2*pi*(k-1)*(n-1))/N);
        Y(k)=Y(k)+b(n).*exp((-1j*2*pi*(k-1)*(n-1))/N);
    end
end
X3=X.*Y;

x3=ifft(X3);
disp(x3)

x1=conv(x,y);
disp(x1)


