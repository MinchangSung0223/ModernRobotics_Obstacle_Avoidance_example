function draswobstacle(x,y,z,r)
% t = 0:0.1:2*pi;
% plot3(r*cos(t)+x,r*sin(t)+y,z*ones(size(t)),'r-');

[X,Y,Z] = sphere;
X2 = X * r+x;
Y2 = Y * r+y;
Z2 = Z * r+z;
surf(X2,Y2,Z2)
pbaspect([1,1,1])
drawnow;
end