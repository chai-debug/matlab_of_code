clear;
clc;
x0=pi/2;
ans=0;
for i=1:7
    h=1/(i*10);
    x=[x0 x0+h];
    y=[sin(x0) sin(x0+h)];
    m=diff(y)./diff(x);
    a=cos(x0)-m;
    ans=[ans m];
end
disp(ans);
