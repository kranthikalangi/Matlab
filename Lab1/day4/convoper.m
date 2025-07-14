% linear convulation using circular convulation .
function[y]=convoper(x1,x2)

l1=length(x1);
l2=length(x2);
l=l1+l2-1;

yn=0:l-1;
N=length(yn);

y=zeros(1,l);
x1=[x1,zeros(1,l2-1)];
x2=[x2,zeros(1,l1-1)];

for n=1:N
    for k=1:n
        y(n)=y(n)+x1(k)*x2((n-k+1));
    end
end

end