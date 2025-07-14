clc;
clear all;
close all;

[n1,x1]=sinwav(1,1,5);
[n2,x2]=sinwav(1,1,1);
subplot(411)
plot(n1,x1);
subplot(412)
plot(n2,x2);
[n3,y1]=addsig(x1,x2,n1,n2);
[y2,n4]=dftseq(y1,n3);
[n5,y3]=magplot(n4,y2);
[n6,y4]=phaseplot(n5,y3);

y5=abs(y2);
y6=angle(y2);

subplot(413)
plot(n5,y5);
subplot(414)
plot(n6,y4);

