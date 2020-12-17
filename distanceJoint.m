function [dist,px,py,pz]=distanceJoint(Mlist,Slist,thetalist,x_obstacle,y_obstacle,z_obstacle)
matS ={};
for i = 1:1:length(Mlist)
matS{i} = MatrixExp6(VecTose3(Slist(:,i))*thetalist(i));
end
T = {};
px = [];
py = [];
pz = [];

for i=length(Mlist):-1:1
    T{i} = Mlist{i};
    for j = i:-1:1
        T{i} = matS{j}*T{i};
    end
    temp = T{i}*[0,0,0,1]';
    px = [px,temp(1)];
    py = [py,temp(2)];
    pz = [pz,temp(3)];
end
plot3(px,py,pz,'g.');
for i=1:1:length(px)
    line([x_obstacle,px(i)],[y_obstacle,py(i)],[z_obstacle,pz(i)],'Color','green');
end

x_obstacle = x_obstacle*ones(1,length(Mlist));
y_obstacle = y_obstacle*ones(1,length(Mlist));
z_obstacle = z_obstacle*ones(1,length(Mlist));

dist = sqrt((px-x_obstacle).^2+(py-y_obstacle).^2+(pz-z_obstacle).^2);

end