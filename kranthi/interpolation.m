n1=input('etner your signal sequence range:');
x1=input('enter your signal magnitude:');
a=input('enter your interpolate value:');
b=a-1;
x2=[];
for i=1:length(x1)
    x2=[x2 x1(i) zeros(1,b)];
end
display(x2(1:length(x2)-b))
