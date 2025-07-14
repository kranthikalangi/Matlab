function [yn,y]=evenfun(x,xn)

[xn1,x1]=trevsig(x,xn);
x1=fliplr(x1);
[xn2,x2]=addsig(x,x1,xn,xn1);

y=0.5*x2;

yn=xn2;

end