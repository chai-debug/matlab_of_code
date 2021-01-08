x=[1 2 5 4 8];
y=[x;1:5];
subplot(3,1,1);bar(x);title('A bargraph of vector X');
subplot(3,1,2);bar(y);title('A bargraph of vector y');
subplot(3,1,3);bar3(y);title('A 3Dbargraph');
colormap(subplot(3,1,3),summer);