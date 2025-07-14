clc;
clear all;
close all;

x1=input('enter the sequence :');
n1=input('enter the time range :');

x2=input('enter the sequence :');
n2=input('enter the time range :');

subplot(421);
stem(n1,x1);
title('1st signal');

subplot(422);
stem(n2,x2);
title('2nd signal');

[ny5,y5]=convoper(x1,x2,n1,n2);
subplot(427);
stem(y5);
title('conv');

[ny6,y6]=idftseq(y5,ny5);
subplot(428);
stem(ny6,y6);
title('dft of conv');

l1=length(x1);
l2=length(x2);
l=l1+l2-1;

[n1,x1]=rzerosp(n1,x1,l);
[n2,x2]=rzerosp(n2,x2,l);

[ny1,y1]=dftseq(x1,n1);
subplot(423);
stem(ny1,y1);
title('fft of x1');

[ny2,y2]=dftseq(x2,n2);
subplot(424);
stem(ny2,y2);
title('fft of x2');


[ny3,y3]=mulsig(y1,y2,ny1,ny2);
subplot(425);
stem(ny3,y3);
title('multi in frequency DOMAIN');

[ny4,y4]=idftseq(y3,ny3);
subplot(426);
stem(ny4,y4);
title('ifft');
