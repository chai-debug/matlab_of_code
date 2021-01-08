x=0:0.1:2*pi;
y1=sin(x);
y2=exp(-x);
plot(x,y1,'--x',x,y2,':o');
xlabel('t=0 to 2\pi');
ylabel('values of sin(x) and e^{-x}');
title('function plots of sin(x) and e^{-x}');
legend ('sin(t)','e^{-x}');