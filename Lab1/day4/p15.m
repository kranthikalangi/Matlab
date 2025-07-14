%low pass FIR FILTER

clc;
clear all;
close all;

f1=input('enter the frequency1: ');
a1=input('enter the amp of signal1: ');

f2=input('enter the frequency2: ');
a2=input('enter the amp of signal2: ');
f3=input('enter the frequency3: ');
a3=input('enter the amp of signal3: ');
fs=input('enter the sampling frequency: ');
ts=1/fs;

[n1,x1]=sinwave(a1,f1,ts);
[n2,x2]=sinwave(a2,f2,ts);
[n4,x4]=sinwave(a3,f3,ts);

[n3,x3]=addsig(x1,x2,n1,n2,fs);
[n5,x5]=addsig(x3,x4,n3,n4,fs);

fc=input('enter the cut off frequency: ');
wcl=2*pi*(fc/fs);
%wch=pi-wcl;
l=input('enter the length of fir filter: ');
h=zeros(1,l);
c=(l+1)/2;
for n=1:c-1
    h(n)=sin(wcl*(n-c))/(pi*(n-c));
end
h(c)=wcl/pi;
for k=1:c-1
    h(c+k)=h(c-k);
end

%n=0:l-1;
%h=(-1).^(n-c+1).*h;

n=log2(l);
n=ceil(n);
N=max(256,power(2,n));
H=fft(h,N);

f=0:fs/N:fs-(fs/N);
figure(1)
plot(f,abs(H));

y1=conv(x1,h);
y2=conv(x2,h);
%y3=conv(x3,h);
y4=conv(x4,h);
y5=conv(x5,h);

figure(2)
subplot(331)
plot(x1(l:l+100));
subplot(333)
plot(x2(l:l+100));
subplot(335)
plot(x4(l:l+100));
subplot(337)
plot(x5(l:l+100));

subplot(332)
plot(y1(l:l+100));
subplot(334)
plot(y2(l:l+100));
subplot(336)
plot(y4(l:l+100));
subplot(338)
plot(y5(l:l+100));

subplot(339)
plot(x3(l:l+100));


