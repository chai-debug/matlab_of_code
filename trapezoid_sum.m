clc;
clear;
h=0.005;
x=0:h:2;
y=4*x.^3;
s=h*trapz(y);