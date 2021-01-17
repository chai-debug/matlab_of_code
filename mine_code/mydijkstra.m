% a-邻接矩阵；a(i,j)-i到j之间的距离，可以是有向的
% sb-七点的标号，db-终点的标号
% 输出：mydstance-最短路径的距离，mypath-最短路径
function [mydistance,mypath]=mydijkstra(a,sb,db);
n=size(a,1);visited(1:n)=0;
% 起点到个顶点距离的初始化
distance(1:n)=inf;distance(sb)=0;
%u为最新的p标号顶点
visited(sb)=1;u=sb;
%前驱顶点的初始hua
for i=1:n-1
    %查找为标号的顶点
    id=find(visited==0);
    %历遍找到最短路径
    for v=id
        if a(u,v)+distance(u)<distance(v)
            %修改标号值
            distance(v)=distance(u)+a(u,v);
            parent(v)=u;
        end
    end
    temp=distance;
    %已标号点的距离转换成无穷
    temp(visited==1)=inf;
    %找标号值最小的顶点
    [t,u]=min(temp);
    %标记已经标号的顶点
    visited(u)=1;
end
mypath=[];
%如果存在路
if parent(db)~=0
    t=db;mypath=[db];
    while t~=sb
        p=parent(t);
        mypath=[p,mypath];
        t=p;
    end
end
mydistance=distance(db);
     

