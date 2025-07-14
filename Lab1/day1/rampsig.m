function [yn,y]=rampsig(xn)
yn=xn;
y=[];

%y=yn(xn>=0)

for i=1:length(yn)
 if yn(i) >= 0
    y=[y yn(i)];
    
 else
    y=[y 0];

 end
end
end