clc
clear
%author:C
%date:2020-10-19
x=input('����������:');%��������
str=num2str(x);%ת���ַ���
for i=1:length(str)%�ַ�������
    r(i)=str2double(str(i));%��ת��Ϊ˫����
end
if length(r)==1 %�������Ϊ1��������Ϊ0
    disp('������Ϊ');
    disp(0);
else
     for j=2:length(r)
          s=find(r(1:j-1)>r(j))%�������������±�����
          u(j)=length(s)%����ÿ���±�����������ɵ�����u
         result=sum(u)%���
     end
     disp('������Ϊ');
     disp(result);
end