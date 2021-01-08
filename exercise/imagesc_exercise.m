x=[1:10;3:12;5:14];
imagesc(x);
green=[0 0 0];
for i=0:0.001:1
    green=[green;[0 i 0]];
end;
% t=linspace(0,1,256);
% green=[zeros(length(t),1),t',zeros(length(t),1)];
colormap(green);
colorbar;