clc                 %clc���������ڵ����ݣ��Թ��������е�ȫ���������κ�Ӱ��
clear all;          %clear all����������ռ�����б�������������MEX�ļ�
close all;          %close all:�ر����е�Figure����

hn=figure('name','����ͼ','MenuBar','None');  %����һ������
set(hn,'color','w');                            %��������Ϊ��ɫ

for n=1:100          %ѭ��100��
    cla                    %�������ǰͼ���еĵ�ǰ��ᡣ�����᲻��Ӱ�졣

    t=num2str(n);%��nת��Ϊ�ַ���

    Lf1='(-x)^(2/3)+(0.9*(3.3-(-x)^2)^0.5)*sin(';

    Lf2='*pi*(-x))';

    Left=[Lf1,t,Lf2];           %���ĺ���

    ezplot(Left);               %һά��ͼ����
    hold on             	    %��������һ��ͼ��ʱ��������ͼ��
    Rf1='x^(2/3)+(0.9*(3.3-x^2)^0.5)*sin(';
    Rf2='*pi*x)';
    Right=[Rf1,t,Rf2];          %�����ֿ�����Ŀ����ͨ��t�ı仯��������Ч��
                                %�������ຯ����һ���ģ�ֻ�ǽ������Գ�
    ezplot(Right);               %�Ҳ�ĺ���
    hold off
    axis([-2 2 -1.5 2.5]);       %�����᷶Χ
    axis off                     %ȡ�����������һ������
    drawnow;                     %ˢ��һ��  ��������Ч�� 
    title('����ͼ')
    f=getframe(gcf);
    imind=frame2im(f);
    [imind,cm] = rgb2ind(imind,256);
    if n == 1
        imwrite(imind,cm,'AmModulation.gif','GIF', 'Loopcount',inf,'DelayTime',0.1);
    else
        imwrite(imind,cm,'AmModulation.gif','GIF','WriteMode','append','DelayTime',0.1);
    end

end
