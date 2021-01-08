v=[0 0 0;1 0 0;1 1 0;0 1 0;0.25 0.25 1;0.75 0.25 1;0.75 0.75 1;0.25 0.75 1];
f=[1 2 3 4;5 6 7 8;1 2 6 5;2 3 7 6;3 4 8 7;4 1 5 8];
subplot(1,2,1);
patch('Vertices',v,'Faces',f,'FacevertexCData',hsv(6),'FaceColor','flat');
view(3);
axis square tight;grid on;
subplot(1,2,2);
patch('Vertices',v,'Faces',f,'FaceVertexCData',hsv(8),'FaceColor','interp');
view(3);axis square tight;grid on;