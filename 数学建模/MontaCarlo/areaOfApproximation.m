clear,clc
x=unifrnd(0,12,[1,10000000]);
y=unifrnd(0,9,[1,10000000]);
frequency=sum(y<x.^2 & x <= 3)+sum(y<12-x & x>=3);
area=12*9*frequency/10^7;
area,