% a-�ڽӾ���a(i,j)-i��j֮��ľ��룬�����������
% sb-�ߵ�ı�ţ�db-�յ�ı��
% �����mydstance-���·���ľ��룬mypath-���·��
function [mydistance,mypath]=mydijkstra(a,sb,db);
n=size(a,1);visited(1:n)=0;
% ��㵽���������ĳ�ʼ��
distance(1:n)=inf;distance(sb)=0;
%uΪ���µ�p��Ŷ���
visited(sb)=1;u=sb;
%ǰ������ĳ�ʼhua
for i=1:n-1
    %����Ϊ��ŵĶ���
    id=find(visited==0);
    %�����ҵ����·��
    for v=id
        if a(u,v)+distance(u)<distance(v)
            %�޸ı��ֵ
            distance(v)=distance(u)+a(u,v);
            parent(v)=u;
        end
    end
    temp=distance;
    %�ѱ�ŵ�ľ���ת��������
    temp(visited==1)=inf;
    %�ұ��ֵ��С�Ķ���
    [t,u]=min(temp);
    %����Ѿ���ŵĶ���
    visited(u)=1;
end
mypath=[];
%�������·
if parent(db)~=0
    t=db;mypath=[db];
    while t~=sb
        p=parent(t);
        mypath=[p,mypath];
        t=p;
    end
end
mydistance=distance(db);
     

