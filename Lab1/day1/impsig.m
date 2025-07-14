function [yn,y]=impsig(xn,a)
yn=xn;
y=[];

%y=[zeros(1,abs(min(yn))),a,(zeros(1,abs(max(yn))))];  only for starting index is negative 

%y=a(xn==0) 

for i=1:length(yn)
 if yn(i) == 0
    y=[y a];
    
 else
    y=[y 0];

 end

end

