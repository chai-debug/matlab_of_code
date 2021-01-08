% load carsmall; boxplot(MPG,Origin);
x=0:pi/10:pi;
y=sin(x);
e=std(y)*ones(size(x));
% stdÊÇ±ê×¼²î
errorbar(x,y,e);