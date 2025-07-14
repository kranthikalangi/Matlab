function [ny,y]=addsig(a1,b1,n1,n2,fs)
ts=1/fs;
lb=min(min(n1),min(n2));
ub=max(max(n1),max(n2));

xn=lb:ts:ub;

ny=xn;

a1=[zeros(1,(min(n1)-lb)*fs),a1,zeros(1,(ub-max(n1))*fs)];
b1=[zeros(1,(min(n2)-lb)*fs),b1,zeros(1,(ub-max(n2))*fs)];

y=a1+b1;
end