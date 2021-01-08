clc,clear
f=@(x) x(1)^3-x(2)^2+3*x(1)^2+3*x(2)^2-9*x(1);
g=@(x) -f(x)
[x,fval]=fminunc(f,rand(2,1));
[x2,fval2]=fminsearch(g,rand(2,1));
x,fval
x2,fval2