M=50000;
f=@(x) x(1)^2+x(2)^2+8-M*min(x(1),0)-M*min(x(2),0)-M*min(x(1)^2-x(2),0)+M*abs(-x(1)-x(2)^2+2);
[x,y]=fminunc(f,rand(2,1));
x,y