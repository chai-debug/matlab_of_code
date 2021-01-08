p1=[20 -7 5 10];
p2=[4 12 -3];
p3=conv(p1,p2);
x=linspace(-2,1,300);
f1=polyval(p3,x);
f2=polyval(polyder(p3),x);
plot(x,f1,'b',x,f2,'r');
legend('f','f`');