% load carsmall; boxplot(MPG,Origin);
x=0:pi/10:pi;
y=sin(x);
e=std(y)*ones(size(x));
% std�Ǳ�׼��
errorbar(x,y,e);