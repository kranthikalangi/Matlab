% linear convulation using circular convulation .
function[yn,y]=p13(x1,x2,n1,n2)

l1=length(n1);
l2=length(n2);
l=l1+l2-1;
lb=max(min(n1),min(n2));
ub=l-(abs(max(min(n1),min(n2)))+1);

yn=lb:ub
N=length(yn);

[n1,x1,n2,x2]=bothsidezp(n1,x1,n2,x2);
[n1,x1]=rzerosp(n1,x1,N)
[n2,x2]=rzerosp(n2,x2,N)

y=[];
for i=1:N
    
    a=0;
    for j=1:i
        a=a+x1(j)*x2((i-j+1));
    end
    y=[y a];
end

end