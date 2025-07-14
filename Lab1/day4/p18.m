%high pass FIR FILTER 

clc;
clear all;
close all;

f1=input('enter the frequency1: ');
a1=input('enter the amp of signal1: ');
f2=input('enter the frequency2: ');
a2=input('enter the amp of signal2: ');
fs=input('enter the sampling frequency: ');
ts=1/fs;
[n1,x1]=sinwave(a1,f1,ts);
[n2,x2]=sinwave(a2,f2,ts);

[n3,x3]=addsig(x1,x2,n1,n2,fs);

fcl=input('enter the lower cut off frequency: ');
wcl=2*pi*(fcl/fs);
fch=input('enter the higher cut off frequency: ');
wch=2*pi*(fch/fs)-pi;
wc0=(wcl+wch)/2;


l=input('enter the length of fir filter: ');
h=zeros(1,l);
c=(l+1)/2;
for n=1:c-1
    h(n)=sin(wch*(n-c))/(pi*(n-c));
end
h(c)=wcl/pi;
for k=1:c-1
    h(c+k)=h(c-k);
end
n=0:l-1;
h=2*cos(wc0*(n-c+1)).*h;
n=log2(l);
n=ceil(n);
N=max(256,power(2,n));
H=fft(h,N);
f=0:fs/N:fs-(fs/N);
figure(1)
plot(f,abs(H));

Ns=length(n3);
y1=conv(x1,h);
y2=conv(x2,h);
y3=conv(x3,h);

figure(2)
subplot(321)
plot(x1(l:l+250));
subplot(323)
plot(x2(l:l+250));
subplot(325)
plot(x3(l:l+250));

subplot(322)
plot(y1(l:l+250));
subplot(324)
plot(y2(l:l+250));
subplot(326)
plot(y3(l:l+250));
