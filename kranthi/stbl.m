clc;
close all;
clear all;
num=input('enter numerator of z trm');
den=input('enter denomirator of z trm');
poles=roots(den);
zplane(num,den);
is_stable=all(abs(poles)<1);
if is_stable
    disp('system is stable');
else
    disp('system is unstable');
end