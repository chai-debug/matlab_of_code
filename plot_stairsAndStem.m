x=linspace(0,10);
t=linspace(0,10,50);
y1=sin(pi*x.^2/2);
y2=sin(pi*t.^2/2);
hold on
plot(x,y1);
stem(t,y2);
set(gca,'YTick',[-1:1]);
hold off;