p=[5 0 -2 0 1];
x=linspace(1,100)
F=polyval(polyint(p,3),x);
plot(x,F,'r');