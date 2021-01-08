t=1:0.01:2;
f=t.^2;
g=sin(2*pi.*t);
title('Mini Assignment #1');
xlabel('Times(ms)');
ylabel('f(t) and g(t)');
hold on
plot(t,f,'-','LineWidth',2,'MarkerEdgeColor','k',...
'MarkerFaceColor','c','MarkerSize',1);
plot(t,g,'-md','LineWidth',2,'MarkerEdgeColor','k',...
'MarkerFaceColor','b','MarkerSize',1);
legend('t^{2}','sin(2\pit)');
hold off
