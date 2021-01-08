x=-3.5:0.2:3.5;
y=-3.5:0.2:3.5;
[X,Y]=meshgrid(x,y);
z=X.*exp(-X.^2-Y.^2);
figure,mesh(X,Y,z);axis square;
figure,contour(z,[-0.45:0.05:0.4]);axis square;
figure,surf(X,Y,z);axis square;
