function[yn,y]=stepsig(xn,a)
yn=xn;
y=[];
%y=a(xn>=0)

%y=[zeros(1,abs(min(yn))),a*(ones(1,max(yn)+1))]; only for starting index is negative
 
for i=1:length(yn)
 if yn(i) >= 0
    y=[y a];
    
 else
    y=[y 0];

 end
end
