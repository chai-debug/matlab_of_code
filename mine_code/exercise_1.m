clear,clc;
%每种货物的需求量，单位t
m=[18 15 23 12];
%每种货物的体积，单位100m^3/t
v=[4.8 6.5 5.8 3.9];
%利润,单位千元
s=[3.1 3.8 3.5 2.85];
%限重,单位t
lim_m=[10 16 8];
%限体,单位1000m^3
lim_v=[68 87 53];
f=[3.1 3.1 3.1 3.8 3.8 3.8 3.5 3.5 3.5 2.85 2.85 2.85];
%需求重量矩阵
A1=zeros(4,12);
%船舱限重
A2=zeros(3,12);
%船舱体积矩阵
A3=zeros(3,12);
for i=1:4
    A1(i,(i-1)*3+1:3*i)=1;
end
for i=1:3
    A2(i,i:3:12)=1;
    A3(i,(i-1)*4+1:4*i)=v(1,i);
end
A=[A1;A2;A3];
b=[m';lim_m';lim_v'];
Aeq=A3;
beq=[1 1 1]';
lb=zeros(1,12);
x=linprog(f,A,b,Aeq,beq,lb);