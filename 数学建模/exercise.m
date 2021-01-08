clc,clear
f=[1 2 3 4];
f=[f f]';
aeq=[1 -1 -1 1;1 -1 1 -3;1 -1 -2 3];
aeq=[aeq,-aeq];
beq=[0 1 -1/2]';
[x,y]=linprog(f,[],[],aeq,beq,zeros(8,1));
r=x(1:4)-x(5:end);