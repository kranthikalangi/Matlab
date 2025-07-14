function [yn,y]=subsig(a1,b1,n1,n2)

lb=min(min(n1),min(n2));
ub=max(max(n1),max(n2));

xn=lb:ub;

yn=xn;
a1=[zeros(1,min(n1)-lb),a1,zeros(1,ub-max(n1))];
b1=[zeros(1,min(n2)-lb),b1,zeros(1,ub-max(n2))];

%{
a=[];
b=[];
y=[];

if(min(n1)>min(n2))
    a1=[zeros(1,abs(min(n1)-min(n2))) a1];
else
    b1=[zeros(1,abs(min(n2)-min(n1))) b1];
end

if(max(n1)<max(n2))
    a1=[a1 zeros(1,abs(max(n2)-max(n1)))];
else
    b1=[b1 zeros(1,abs(max(n1)-max(n2)))];
end
%}

y=a1-b1;
end