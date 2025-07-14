n1=input('enter sequence:');
x1=input('etner sequence magnitude:');
n2=-max(n1):-min(n1);
d=length(x1);
x2=[];
for i=1:length(x1)
    x2=[x2 x1(d)];
    d=d-1;
end
if n1==n2 & x1==x2
    disp('given signal is even');
elseif n1==n2 & x1==-x2
     disp('given signal is odd');
else
    disp('given signal is neither even or odd');
end
